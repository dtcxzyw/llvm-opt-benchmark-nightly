Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@w2c_hermes_hermes0x3A0x3ADominanceInfo0x3A0x3ADominanceInfo0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  %.val6605 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wc = getelementptr inbounds nuw i8, ptr %.val6605, i64 %i.ki
  %.0.copyload.i7010 = load i32, ptr %i.wc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7010) #16, !srcloc !22
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ch
  %.sink = phi i32 [ %i.wb, %bb.cr ], [ %i.tw, %bb.ch ]
  %.0.copyload.i7010.sink = phi i32 [ %.0.copyload.i7010, %bb.cr ], [ %.25873, %bb.ch ]
  %.pre-phi = phi i64 [ %i.vr, %bb.cr ], [ %i.tl, %bb.ch ] ; 2 uses
  %i.wd = zext i32 %.sink to i64
  %.val6796 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.we = getelementptr inbounds nuw i8, ptr %.val6796, i64 %i.wd
  store i32 %.0.copyload.i7010.sink, ptr %i.we, align 1
  %.val6604 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wf = getelementptr inbounds nuw i8, ptr %.val6604, i64 %.pre-phi
  %.0.copyload.i7011 = load i32, ptr %i.wf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7011) #16, !srcloc !22
  %i.wg = add i32 %.0.copyload.i7011, 1
  %.val6795 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wh = getelementptr inbounds nuw i8, ptr %.val6795, i64 %.pre-phi
  store i32 %i.wg, ptr %i.wh, align 1
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ci, %bb.ce, %bb.cs
  %i.wi = add i32 %.76000, 4                      ; 2 uses
  %.not6272 = icmp eq i32 %i.sb, %i.wi
  br i1 %.not6272, label %bb.cw, label %bb.ca

bb.cu:                                            ; preds = %bb.az
  tail call void @w2c_hermes_std0x3A0x3A_0x5F20x3A0x3A_0x5Fthrow_out_of_range0x5Babi0x3Av150070x5D0x28char0x20const0x2A0x29(ptr noundef nonnull %0) #16
  tail call void @wasm_rt_trap(i32 noundef 5) #17
  unreachable

bb.cv:                                            ; preds = %bb.ax
  tail call void @w2c_hermes_abort(ptr noundef nonnull %0)
  unreachable

bb.cw:                                            ; preds = %bb.ct
  %.val6603 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wj = getelementptr inbounds nuw i8, ptr %.val6603, i64 %i.kq
  %.0.copyload.i7012 = load i32, ptr %i.wj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7012) #16, !srcloc !22
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit7286, %bb.cw
  %.1 = phi i32 [ %.0.copyload.i6980, %.loopexit7286 ], [ %.0.copyload.i7012, %bb.cw ] ; 2 uses
  %i.wk = icmp eq i32 %i.kh, %.1
  br i1 %i.wk, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %.loopexit7292, %bb.cy
  %.15859 = phi i32 [ %.05858, %.loopexit7292 ], [ %i.mg, %bb.cx ], [ %i.mg, %bb.cy ]
  %.val6602 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wl = getelementptr inbounds nuw i8, ptr %.val6602, i64 %i.im
  %.0.copyload.i7013 = load i32, ptr %i.wl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7013) #16, !srcloc !22
  %.not6273 = icmp eq i32 %.0.copyload.i7013, 0
  br i1 %.not6273, label %.loopexit7293, label %bb.aq

.loopexit7293:                                    ; preds = %bb.cz, %bb.ap
  %.val6601 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wm = getelementptr inbounds nuw i8, ptr %.val6601, i64 %i.ik
  %.0.copyload.i7014 = load i32, ptr %i.wm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7014) #16, !srcloc !22
  %.not6274 = icmp eq i32 %i.ij, %.0.copyload.i7014
  br i1 %.not6274, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.loopexit7293
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7014)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.loopexit7293
  %i.wn = add i32 %i.ic, -16                      ; 4 uses
  store i32 %i.wn, ptr %i.q, align 8, !tbaa !19
  %i.wo = add nuw nsw i64 %i.iq, 4                ; 2 uses
  %.val6600 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wp = getelementptr inbounds nuw i8, ptr %.val6600, i64 %i.wo
  %.0.copyload.i7015 = load i32, ptr %i.wp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7015) #16, !srcloc !22
  %.val6599 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.wq = getelementptr inbounds nuw i8, ptr %.val6599, i64 %i.iq
  %.0.copyload.i7016 = load i32, ptr %i.wq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7016) #16, !srcloc !22
  %i.wr = sub i32 %.0.copyload.i7015, %.0.copyload.i7016 ; 3 uses
  %i.ws = ashr i32 %i.wr, 2                       ; 4 uses
  %i.wt = icmp ugt i32 %i.wr, 4
  br i1 %i.wt, label %bb.dc, label %.loopexit7276

bb.dc:                                            ; preds = %bb.db
  %i.wu = tail call i32 @llvm.umax.i32(i32 %i.ws, i32 2)
  %i.wv = zext i32 %i.wn to i64
  %i.ww = add i32 %i.ic, -4
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit7275, %bb.dc
  %.86001 = phi i32 [ 1, %bb.dc ], [ %i.ym, %.loopexit7275 ] ; 2 uses
  %.45886 = phi i32 [ %.0.copyload.i7016, %bb.dc ], [ %.55887, %.loopexit7275 ] ; 3 uses
  %i.wx = shl i32 %.86001, 2
  %i.wy = add i32 %.45886, %i.wx
  %i.wz = zext i32 %i.wy to i64
  %.val6598 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.xa = getelementptr inbounds nuw i8, ptr %.val6598, i64 %i.wz
  %.0.copyload.i7017 = load i32, ptr %i.xa, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7017) #16, !srcloc !22
  %.val6794 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.xb = getelementptr inbounds nuw i8, ptr %.val6794, i64 %i.wv
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 12
  store i32 %.0.copyload.i7017, ptr %i.xc, align 1
  %.val6597 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.xd = getelementptr inbounds nuw i8, ptr %.val6597, i64 %i.ir
  %.0.copyload.i7018 = load i32, ptr %i.xd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7018) #16, !srcloc !22
  %.not6275 = icmp eq i32 %.0.copyload.i7018, 0
  br i1 %.not6275, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.val6596 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.xe = getelementptr inbounds nuw i8, ptr %.val6596, i64 %i.iq
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %.0.copyload.i7019 = load i32, ptr %i.xf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7019) #16, !srcloc !22
  %i.xg = add i32 %.0.copyload.i7018, -1          ; 2 uses
  %i.xh = lshr i32 %.0.copyload.i7017, 4
  %i.xi = lshr i32 %.0.copyload.i7017, 9
  %i.xj = xor i32 %i.xh, %i.xi
  %i.xk = and i32 %i.xg, %i.xj                    ; 2 uses
  %i.xl = mul i32 %i.xk, 44
  %i.xm = add i32 %.0.copyload.i7019, %i.xl       ; 2 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %.val6595 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.xo = getelementptr inbounds nuw i8, ptr %.val6595, i64 %i.xn
  %.0.copyload.i7020 = load i32, ptr %i.xo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7020) #16, !srcloc !22
  %i.xp = icmp eq i32 %.0.copyload.i7017, %.0.copyload.i7020
  br i1 %i.xp, label %.loopexit7275, label %.preheader7274

.preheader7274:                                   ; preds = %bb.de, %bb.dg
  %.226058 = phi i32 [ %i.xu, %bb.dg ], [ 0, %bb.de ] ; 3 uses
  %.45959 = phi i32 [ %i.xz, %bb.dg ], [ %i.xm, %bb.de ] ; 2 uses
  %.125946 = phi i32 [ %i.xw, %bb.dg ], [ 1, %bb.de ] ; 2 uses
  %.65902 = phi i32 [ %.0.copyload.i7021, %bb.dg ], [ %.0.copyload.i7020, %bb.de ] ; 2 uses
  %.25860 = phi i32 [ %i.xx, %bb.dg ], [ %i.xk, %bb.de ]
  %i.xq = icmp eq i32 %.65902, -4
  %.not6278 = icmp eq i32 %.226058, 0             ; 2 uses
  br i1 %i.xq, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.preheader7274
  %i.xr = select i1 %.not6278, i32 %.45959, i32 %.226058
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader7274
  %i.xs = icmp eq i32 %.65902, -8
  %i.xt = select i1 %i.xs, i1 %.not6278, i1 false
  %i.xu = select i1 %i.xt, i32 %.45959, i32 %.226058
  %i.xv = add i32 %.25860, %.125946
  %i.xw = add i32 %.125946, 1
  %i.xx = and i32 %i.xv, %i.xg                    ; 2 uses
  %i.xy = mul i32 %i.xx, 44
  %i.xz = add i32 %i.xy, %.0.copyload.i7019       ; 2 uses
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %.val6594 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yb = getelementptr inbounds nuw i8, ptr %.val6594, i64 %i.ya
  %.0.copyload.i7021 = load i32, ptr %i.yb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7021) #16, !srcloc !22
  %.not6277 = icmp eq i32 %.0.copyload.i7017, %.0.copyload.i7021
  br i1 %.not6277, label %.loopexit7275, label %.preheader7274

bb.dh:                                            ; preds = %bb.dd, %bb.df
  %.55960 = phi i32 [ %i.xr, %bb.df ], [ 0, %bb.dd ]
  %i.yc = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.55960, i32 noundef %i.ww) #16
  %.val6593 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yd = getelementptr inbounds nuw i8, ptr %.val6593, i64 %i.iq
  %.0.copyload.i7022 = load i32, ptr %i.yd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7022) #16, !srcloc !22
  %.pre7458 = zext i32 %i.yc to i64
  br label %.loopexit7275

.loopexit7275:                                    ; preds = %bb.dg, %bb.de, %bb.dh
  %.pre-phi7459 = phi i64 [ %.pre7458, %bb.dh ], [ %i.xn, %bb.de ], [ %i.ya, %bb.dg ] ; 2 uses
  %.55887 = phi i32 [ %.0.copyload.i7022, %bb.dh ], [ %.45886, %bb.de ], [ %.45886, %bb.dg ] ; 2 uses
  %.val6592 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ye = getelementptr inbounds nuw i8, ptr %.val6592, i64 %.pre-phi7459
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %.0.copyload.i7023 = load i32, ptr %i.yf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7023) #16, !srcloc !22
  %i.yg = shl i32 %.0.copyload.i7023, 2
  %i.yh = add i32 %i.yg, %.55887
  %i.yi = zext i32 %i.yh to i64
  %.val6591 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yj = getelementptr inbounds nuw i8, ptr %.val6591, i64 %i.yi
  %.0.copyload.i7024 = load i32, ptr %i.yj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7024) #16, !srcloc !22
  %.val6793 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yk = getelementptr inbounds nuw i8, ptr %.val6793, i64 %.pre-phi7459
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 20
  store i32 %.0.copyload.i7024, ptr %i.yl, align 1
  %i.ym = add nuw nsw i32 %.86001, 1              ; 2 uses
  %.not6279 = icmp eq i32 %i.ym, %i.wu
  br i1 %.not6279, label %.loopexit7276, label %bb.dd

.loopexit7276:                                    ; preds = %.loopexit7275, %bb.db
  %i.yn = add nsw i32 %i.ws, -1                   ; 2 uses
  %i.yo = icmp ugt i32 %i.yn, 1
  br i1 %i.yo, label %.preheader7272, label %.loopexit7273

.preheader7272:                                   ; preds = %.loopexit7276
  %i.yp = zext i32 %i.wn to i64
  %i.yq = add i32 %i.ic, -8
  %i.yr = zext i32 %i.ip to i64
  %i.ys = add nuw nsw i64 %i.iq, 12               ; 3 uses
  %i.yt = add nuw nsw i64 %i.iq, 16               ; 4 uses
  %i.yu = add nuw nsw i64 %i.iq, 20               ; 2 uses
  br label %bb.di

bb.di:                                            ; preds = %.preheader7272, %.loopexit7269
  %.236059 = phi i32 [ %.96002, %.loopexit7269 ], [ %i.ws, %.preheader7272 ] ; 4 uses
  %.96002 = phi i32 [ %i.arz, %.loopexit7269 ], [ %i.yn, %.preheader7272 ] ; 3 uses
  %.val6590 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yv = getelementptr inbounds nuw i8, ptr %.val6590, i64 %i.iq
  %.0.copyload.i7025 = load i32, ptr %i.yv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7025) #16, !srcloc !22
  %i.yw = shl i32 %.96002, 2
  %i.yx = add i32 %.0.copyload.i7025, %i.yw
  %i.yy = zext i32 %i.yx to i64
  %.val6589 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.yz = getelementptr inbounds nuw i8, ptr %.val6589, i64 %i.yy
  %.0.copyload.i7026 = load i32, ptr %i.yz, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7026) #16, !srcloc !22
  %.val6792 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.za = getelementptr inbounds nuw i8, ptr %.val6792, i64 %i.yp
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store i32 %.0.copyload.i7026, ptr %i.zb, align 1
  %.val6588 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.zc = getelementptr inbounds nuw i8, ptr %.val6588, i64 %i.ir
  %.0.copyload.i7027 = load i32, ptr %i.zc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7027) #16, !srcloc !22
  %.not6280 = icmp eq i32 %.0.copyload.i7027, 0
  br i1 %.not6280, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %.val6587 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.zd = getelementptr inbounds nuw i8, ptr %.val6587, i64 %i.iq
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  %.0.copyload.i7028 = load i32, ptr %i.ze, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7028) #16, !srcloc !22
  %i.zf = add i32 %.0.copyload.i7027, -1          ; 2 uses
  %i.zg = lshr i32 %.0.copyload.i7026, 4
  %i.zh = lshr i32 %.0.copyload.i7026, 9
  %i.zi = xor i32 %i.zg, %i.zh
  %i.zj = and i32 %i.zf, %i.zi                    ; 2 uses
  %i.zk = mul i32 %i.zj, 44
  %i.zl = add i32 %.0.copyload.i7028, %i.zk       ; 2 uses
  %i.zm = zext i32 %i.zl to i64                   ; 2 uses
  %.val6586 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.zn = getelementptr inbounds nuw i8, ptr %.val6586, i64 %i.zm
  %.0.copyload.i7029 = load i32, ptr %i.zn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7029) #16, !srcloc !22
  %i.zo = icmp eq i32 %.0.copyload.i7026, %.0.copyload.i7029
  br i1 %i.zo, label %.loopexit7271, label %.preheader7270

.preheader7270:                                   ; preds = %bb.dj, %bb.dl
  %.106003 = phi i32 [ %i.zw, %bb.dl ], [ %i.zj, %bb.dj ]
  %.75962 = phi i32 [ %.0.copyload.i7030, %bb.dl ], [ %.0.copyload.i7029, %bb.dj ] ; 2 uses
  %.35918 = phi i32 [ %i.zv, %bb.dl ], [ 1, %bb.dj ] ; 2 uses
  %.75903 = phi i32 [ %i.zy, %bb.dl ], [ %i.zl, %bb.dj ] ; 2 uses
  %.35861 = phi i32 [ %i.zt, %bb.dl ], [ 0, %bb.dj ] ; 3 uses
  %i.zp = icmp eq i32 %.75962, -4
  %.not6283 = icmp eq i32 %.35861, 0              ; 2 uses
  br i1 %i.zp, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.preheader7270
  %i.zq = select i1 %.not6283, i32 %.75903, i32 %.35861
  br label %bb.dm

bb.dl:                                            ; preds = %.preheader7270
  %i.zr = icmp eq i32 %.75962, -8
  %i.zs = select i1 %i.zr, i1 %.not6283, i1 false
  %i.zt = select i1 %i.zs, i32 %.75903, i32 %.35861
  %i.zu = add i32 %.35918, %.106003
  %i.zv = add i32 %.35918, 1
  %i.zw = and i32 %i.zu, %i.zf                    ; 2 uses
  %i.zx = mul i32 %i.zw, 44
  %i.zy = add i32 %i.zx, %.0.copyload.i7028       ; 2 uses
  %i.zz = zext i32 %i.zy to i64                   ; 2 uses
  %.val6585 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val6585, i64 %i.zz
  %.0.copyload.i7030 = load i32, ptr %i.aaa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7030) #16, !srcloc !22
  %.not6282 = icmp eq i32 %.0.copyload.i7026, %.0.copyload.i7030
  br i1 %.not6282, label %.loopexit7271, label %.preheader7270

bb.dm:                                            ; preds = %bb.di, %bb.dk
  %.116004 = phi i32 [ %i.zq, %bb.dk ], [ 0, %bb.di ]
  %i.aab = tail call i32 @w2c_hermes_llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x20llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AInsertIntoBucket0x3Chermes0x3A0x3ABasicBlock0x2A0x20const0x260x3E0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x20const0x260x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.116004, i32 noundef %i.yq) #16
  %.pre7460 = zext i32 %i.aab to i64
  br label %.loopexit7271

.loopexit7271:                                    ; preds = %bb.dl, %bb.dj, %bb.dm
  %.pre-phi7461 = phi i64 [ %.pre7460, %bb.dm ], [ %i.zm, %bb.dj ], [ %i.zz, %bb.dl ] ; 4 uses
  %.val6584 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aac = getelementptr inbounds nuw i8, ptr %.val6584, i64 %.pre-phi7461
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %.0.copyload.i7031 = load i32, ptr %i.aad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7031) #16, !srcloc !22
  %i.aae = add nuw nsw i64 %.pre-phi7461, 12      ; 3 uses
  %.val6791 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val6791, i64 %i.aae
  store i32 %.0.copyload.i7031, ptr %i.aaf, align 1
  %.val6583 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aag = getelementptr inbounds nuw i8, ptr %.val6583, i64 %.pre-phi7461
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 28
  %.0.copyload.i7032 = load i32, ptr %i.aah, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7032) #16, !srcloc !22
  %.not6284 = icmp eq i32 %.0.copyload.i7032, 0
  br i1 %.not6284, label %.loopexit7269, label %bb.dn

bb.dn:                                            ; preds = %.loopexit7271
  %.val6582 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aai = getelementptr inbounds nuw i8, ptr %.val6582, i64 %i.ir
  %.0.copyload.i7033 = load i32, ptr %i.aai, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7033) #16, !srcloc !22
  %.not6285 = icmp eq i32 %.0.copyload.i7033, 0
  br i1 %.not6285, label %.loopexit7269, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.val6581 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aaj = getelementptr inbounds nuw i8, ptr %.val6581, i64 %.pre-phi7461
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %.0.copyload.i7034 = load i32, ptr %i.aak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7034) #16, !srcloc !22
  %i.aal = shl i32 %.0.copyload.i7032, 2
  %i.aam = add i32 %.0.copyload.i7034, %i.aal
  br label %bb.dp

bb.dp:                                            ; preds = %bb.gd, %bb.do
  %.126005 = phi i32 [ %.0.copyload.i7033, %bb.do ], [ %.0.copyload.i7117, %bb.gd ] ; 2 uses
  %.85963 = phi i32 [ %.0.copyload.i7034, %bb.do ], [ %i.arw, %bb.gd ] ; 2 uses
  %.not6286 = icmp eq i32 %.126005, 0
  br i1 %.not6286, label %.loopexit7267, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.val6580 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aan = getelementptr inbounds nuw i8, ptr %.val6580, i64 %i.yr
  %.0.copyload.i7035 = load i32, ptr %i.aan, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7035) #16, !srcloc !22
  %i.aao = add i32 %.126005, -1                   ; 2 uses
  %i.aap = zext i32 %.85963 to i64
  %.val6579 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val6579, i64 %i.aap
  %.0.copyload.i7036 = load i32, ptr %i.aaq, align 1 ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7036) #16, !srcloc !22
  %i.aar = lshr i32 %.0.copyload.i7036, 4
  %i.aas = lshr i32 %.0.copyload.i7036, 9
  %i.aat = xor i32 %i.aar, %i.aas                 ; 3 uses
  %i.aau = and i32 %i.aat, %i.aao                 ; 2 uses
  %i.aav = mul i32 %i.aau, 44
  %i.aaw = add i32 %i.aav, %.0.copyload.i7035
  %i.aax = zext i32 %i.aaw to i64
  %.val6578 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aay = getelementptr inbounds nuw i8, ptr %.val6578, i64 %i.aax
  %.0.copyload.i7037 = load i32, ptr %i.aay, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7037) #16, !srcloc !22
  %.not6287 = icmp eq i32 %.0.copyload.i7037, %.0.copyload.i7036
  br i1 %.not6287, label %.loopexit7268, label %.preheader7266

.preheader7266:                                   ; preds = %bb.dq, %bb.dr
  %.136006 = phi i32 [ %.0.copyload.i7038, %bb.dr ], [ %.0.copyload.i7037, %bb.dq ]
  %.135947 = phi i32 [ %i.abb, %bb.dr ], [ 1, %bb.dq ] ; 2 uses
  %.65888 = phi i32 [ %i.abc, %bb.dr ], [ %i.aau, %bb.dq ]
  %i.aaz = icmp eq i32 %.136006, -4
  br i1 %i.aaz, label %.loopexit7267, label %bb.dr

bb.dr:                                            ; preds = %.preheader7266
  %i.aba = add i32 %.65888, %.135947
  %i.abb = add i32 %.135947, 1
  %i.abc = and i32 %i.aba, %i.aao                 ; 2 uses
  %i.abd = mul i32 %i.abc, 44
  %i.abe = add i32 %i.abd, %.0.copyload.i7035
  %i.abf = zext i32 %i.abe to i64
  %.val6577 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.abg = getelementptr inbounds nuw i8, ptr %.val6577, i64 %i.abf
  %.0.copyload.i7038 = load i32, ptr %i.abg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7038) #16, !srcloc !22
  %.not6288 = icmp eq i32 %.0.copyload.i7038, %.0.copyload.i7036
  br i1 %.not6288, label %.loopexit7268, label %.preheader7266

.loopexit7268:                                    ; preds = %bb.dr, %bb.dq
  %.val6576 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.abh = getelementptr inbounds nuw i8, ptr %.val6576, i64 %i.c
  %.0.copyload.i7039 = load i32, ptr %i.abh, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7039) #16, !srcloc !22
  %.val6575 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.abi = getelementptr inbounds nuw i8, ptr %.val6575, i64 %i.b
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 28
  %.0.copyload.i7040 = load i32, ptr %i.abj, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7040) #16, !srcloc !22
  %.not6289 = icmp eq i32 %.0.copyload.i7040, 0
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3ADominanceInfo0x3A0x3ADominanceInfo0x28hermes0x3A0x3AFunction0x2A0x29:bb.a
  br label %.loopexit7236

.loopexit7236:                                    ; preds = %bb.gy, %.loopexit7238, %bb.gz
  %.276063 = phi i32 [ %i.axg, %.loopexit7238 ], [ %.0.copyload.i7141, %bb.gz ], [ %i.axg, %bb.gy ] ; 2 uses
  %.135909 = phi i32 [ %.0.copyload.i7140, %.loopexit7238 ], [ %.0.copyload.i7142, %bb.gz ], [ %.0.copyload.i7140, %bb.gy ]
  %i.azh = add i32 %.135909, -1                   ; 2 uses
  %i.azi = lshr i32 %.0.copyload.i7134, 4
  %i.azj = lshr i32 %.0.copyload.i7134, 9
  %i.azk = xor i32 %i.azi, %i.azj
  %i.azl = and i32 %i.azh, %i.azk                 ; 2 uses
  %i.azm = mul i32 %i.azl, 44
  %i.azn = add i32 %i.azm, %.276063               ; 3 uses
  %i.azo = zext i32 %i.azn to i64
  %.val6473 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.azp = getelementptr inbounds nuw i8, ptr %.val6473, i64 %i.azo
  %.0.copyload.i7143 = load i32, ptr %i.azp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7143) #16, !srcloc !22
  %.not6350 = icmp eq i32 %.0.copyload.i7143, %.0.copyload.i7134
  br i1 %.not6350, label %.loopexit7235, label %.preheader7234

.preheader7234:                                   ; preds = %.loopexit7236, %bb.hb
  %.326025 = phi i32 [ %.0.copyload.i7144, %bb.hb ], [ %.0.copyload.i7143, %.loopexit7236 ] ; 2 uses
  %.185973 = phi i32 [ %i.azz, %bb.hb ], [ %i.azn, %.loopexit7236 ] ; 2 uses
  %.34 = phi i32 [ %i.azw, %bb.hb ], [ 1, %.loopexit7236 ] ; 2 uses
  %.18 = phi i32 [ %i.azx, %bb.hb ], [ %i.azl, %.loopexit7236 ]
  %.115869 = phi i32 [ %i.azu, %bb.hb ], [ 0, %.loopexit7236 ] ; 3 uses
  %i.azq = icmp eq i32 %.326025, -4
  %.not6353 = icmp eq i32 %.115869, 0             ; 2 uses
  br i1 %i.azq, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %.preheader7234
  %i.azr = select i1 %.not6353, i32 %.185973, i32 %.115869
  br label %bb.hc

bb.hb:                                            ; preds = %.preheader7234
  %i.azs = icmp eq i32 %.326025, -8
  %i.azt = select i1 %i.azs, i1 %.not6353, i1 false
  %i.azu = select i1 %i.azt, i32 %.185973, i32 %.115869
  %i.azv = add i32 %.18, %.34
  %i.azw = add i32 %.34, 1
  %i.azx = and i32 %i.azv, %i.azh                 ; 2 uses
  %i.azy = mul i32 %i.azx, 44
  %i.azz = add i32 %i.azy, %.276063               ; 3 uses
  %i.baa = zext i32 %i.azz to i64
  %.val6472 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bab = getelementptr inbounds nuw i8, ptr %.val6472, i64 %i.baa
  %.0.copyload.i7144 = load i32, ptr %i.bab, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7144) #16, !srcloc !22
  %.not6352 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7144
  br i1 %.not6352, label %.loopexit7235, label %.preheader7234

bb.hc:                                            ; preds = %bb.gu, %bb.ha
  %.205975 = phi i32 [ %i.azr, %bb.ha ], [ %.145969, %bb.gu ] ; 2 uses
  %i.bac = zext i32 %.205975 to i64
  %.val6471 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bad = getelementptr inbounds nuw i8, ptr %.val6471, i64 %i.bac
  %.0.copyload.i7145 = load i32, ptr %i.bad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7145) #16, !srcloc !22
  br label %.loopexit7235

.loopexit7235:                                    ; preds = %bb.hb, %.loopexit7236, %bb.hc
  %.215976 = phi i32 [ %.205975, %bb.hc ], [ %i.azn, %.loopexit7236 ], [ %i.azz, %bb.hb ] ; 2 uses
  %.25826 = phi i32 [ %.0.copyload.i7145, %bb.hc ], [ %.0.copyload.i7134, %.loopexit7236 ], [ %.0.copyload.i7134, %bb.hb ]
  %.val6470 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bae = getelementptr inbounds nuw i8, ptr %.val6470, i64 %i.asg
  %.0.copyload.i7146 = load i32, ptr %i.bae, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7146) #16, !srcloc !22
  %i.baf = add i32 %.0.copyload.i7146, 1
  %.val6743 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bag = getelementptr inbounds nuw i8, ptr %.val6743, i64 %i.asg
  store i32 %i.baf, ptr %i.bag, align 1
  %.not6354 = icmp eq i32 %.25826, -4
  br i1 %.not6354, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.loopexit7235
  %.val6469 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bah = getelementptr inbounds nuw i8, ptr %.val6469, i64 %i.ash
  %.0.copyload.i7147 = load i32, ptr %i.bah, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7147) #16, !srcloc !22
  %i.bai = add i32 %.0.copyload.i7147, -1
  %.val6742 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baj = getelementptr inbounds nuw i8, ptr %.val6742, i64 %i.ash
  store i32 %i.bai, ptr %i.baj, align 1
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %.loopexit7235
  %i.bak = zext i32 %.215976 to i64               ; 8 uses
  %.val6883 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bal = getelementptr inbounds nuw i8, ptr %.val6883, i64 %i.bak
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 28
  store i64 0, ptr %i.bam, align 1
  %.val6882 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ban = getelementptr inbounds nuw i8, ptr %.val6882, i64 %i.bak
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 20
  store i64 0, ptr %i.bao, align 1
  %.val6881 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bap = getelementptr inbounds nuw i8, ptr %.val6881, i64 %i.bak
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 4
  store i64 0, ptr %i.baq, align 1
  %.val6741 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bar = getelementptr inbounds nuw i8, ptr %.val6741, i64 %i.bak
  store i32 %.0.copyload.i7134, ptr %i.bar, align 1
  %.val6880 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bas = getelementptr inbounds nuw i8, ptr %.val6880, i64 %i.bak
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 12
  store i64 0, ptr %i.bat, align 1
  %i.bau = add i32 %.215976, 36                   ; 2 uses
  %i.bav = zext i32 %i.bau to i64
  %.val6879 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baw = getelementptr inbounds nuw i8, ptr %.val6879, i64 %i.bav
  store i64 0, ptr %i.baw, align 1
  %.val6740 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bax = getelementptr inbounds nuw i8, ptr %.val6740, i64 %i.bak
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 32
  store i32 2, ptr %i.bay, align 1
  %.val6739 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.baz = getelementptr inbounds nuw i8, ptr %.val6739, i64 %i.bak
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 24
  store i32 %i.bau, ptr %i.bba, align 1
  br label %.loopexit7240

.loopexit7240:                                    ; preds = %bb.gr, %bb.gp, %bb.he
  %.pre-phi7474 = phi i64 [ %i.bak, %bb.he ], [ %i.avn, %bb.gp ], [ %i.awa, %bb.gr ]
  %.val6468 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbb = getelementptr inbounds nuw i8, ptr %.val6468, i64 %.pre-phi7474
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 4
  %.0.copyload.i7148 = load i32, ptr %i.bbc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7148) #16, !srcloc !22
  %i.bbd = icmp ult i32 %.0.copyload.i7132, %.0.copyload.i7148
  br i1 %i.bbd, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %.loopexit7240
  %.val6467 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbe = getelementptr inbounds nuw i8, ptr %.val6467, i64 %i.asf
  %.0.copyload.i7149 = load i32, ptr %i.bbe, align 1 ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7149) #16, !srcloc !22
  %.val6466 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbf = getelementptr inbounds nuw i8, ptr %.val6466, i64 %i.ir
  %.0.copyload.i7150 = load i32, ptr %i.bbf, align 1 ; 9 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7150) #16, !srcloc !22
  %.not6356 = icmp eq i32 %.0.copyload.i7150, 0
  br i1 %.not6356, label %bb.hk, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bbg = add i32 %.0.copyload.i7150, -1         ; 2 uses
  %i.bbh = lshr i32 %.0.copyload.i7134, 4
  %i.bbi = lshr i32 %.0.copyload.i7134, 9
  %i.bbj = xor i32 %i.bbh, %i.bbi
  %i.bbk = and i32 %i.bbg, %i.bbj                 ; 2 uses
  %i.bbl = mul i32 %i.bbk, 44
  %i.bbm = add i32 %i.bbl, %.0.copyload.i7149     ; 3 uses
  %i.bbn = zext i32 %i.bbm to i64
  %.val6465 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bbo = getelementptr inbounds nuw i8, ptr %.val6465, i64 %i.bbn
  %.0.copyload.i7151 = load i32, ptr %i.bbo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7151) #16, !srcloc !22
  %i.bbp = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7151
  br i1 %i.bbp, label %.loopexit7233.backedge, label %.preheader7232

.loopexit7233.backedge:                           ; preds = %bb.hi, %bb.hg, %bb.hw
  %.296022.in.be = phi i32 [ %.315986, %bb.hw ], [ %i.bbm, %bb.hg ], [ %i.bbz, %bb.hi ]
  br label %.loopexit7233

.preheader7232:                                   ; preds = %bb.hg, %bb.hi
  %.286064 = phi i32 [ %.0.copyload.i7152, %bb.hi ], [ %.0.copyload.i7151, %bb.hg ] ; 2 uses
  %.336026 = phi i32 [ %i.bbw, %bb.hi ], [ 1, %bb.hg ] ; 2 uses
  %.235978 = phi i32 [ %i.bbz, %bb.hi ], [ %i.bbm, %bb.hg ] ; 2 uses
  %.35 = phi i32 [ %i.bbu, %bb.hi ], [ 0, %bb.hg ] ; 3 uses
  %.145910 = phi i32 [ %i.bbx, %bb.hi ], [ %i.bbk, %bb.hg ]
  %i.bbq = icmp eq i32 %.286064, -4
  %.not6359 = icmp eq i32 %.35, 0                 ; 2 uses
  br i1 %i.bbq, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %.preheader7232
  %i.bbr = select i1 %.not6359, i32 %.235978, i32 %.35
  br label %bb.hk

bb.hi:                                            ; preds = %.preheader7232
  %i.bbs = icmp eq i32 %.286064, -8
  %i.bbt = select i1 %i.bbs, i1 %.not6359, i1 false
  %i.bbu = select i1 %i.bbt, i32 %.235978, i32 %.35
  %i.bbv = add i32 %.145910, %.336026
  %i.bbw = add i32 %.336026, 1
  %i.bbx = and i32 %i.bbv, %i.bbg                 ; 2 uses
  %i.bby = mul i32 %i.bbx, 44
  %i.bbz = add i32 %i.bby, %.0.copyload.i7149     ; 3 uses
  %i.bca = zext i32 %i.bbz to i64
  %.val6464 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcb = getelementptr inbounds nuw i8, ptr %.val6464, i64 %i.bca
  %.0.copyload.i7152 = load i32, ptr %i.bcb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7152) #16, !srcloc !22
  %.not6358 = icmp eq i32 %.0.copyload.i7134, %.0.copyload.i7152
  br i1 %.not6358, label %.loopexit7233.backedge, label %.preheader7232

bb.hj:                                            ; preds = %.loopexit7240
  %i.bcc = zext i32 %.125967 to i64
  %.val6738 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcd = getelementptr inbounds nuw i8, ptr %.val6738, i64 %i.bcc
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 20
  store i32 %.0.copyload.i7134, ptr %i.bce, align 1
  %i.bcf = add nuw nsw i32 %.35847, 1             ; 2 uses
  %.not6355 = icmp eq i32 %i.bcf, %i.asc
  br i1 %.not6355, label %.loopexit7245, label %bb.gf

bb.hk:                                            ; preds = %bb.hf, %bb.hh
  %.245979 = phi i32 [ %i.bbr, %bb.hh ], [ 0, %bb.hf ]
  %.val6463 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcg = getelementptr inbounds nuw i8, ptr %.val6463, i64 %i.asg
  %.0.copyload.i7153 = load i32, ptr %i.bcg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7153) #16, !srcloc !22
  %i.bch = shl i32 %.0.copyload.i7153, 2
  %i.bci = add i32 %i.bch, 4
  %i.bcj = mul i32 %.0.copyload.i7150, 3
  %.not6360 = icmp ult i32 %i.bci, %i.bcj
  br i1 %.not6360, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bck = shl i32 %.0.copyload.i7150, 1
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hk
  %i.bcl = xor i32 %.0.copyload.i7153, -1
  %i.bcm = add i32 %.0.copyload.i7150, %i.bcl
  %.val6462 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bcn = getelementptr inbounds nuw i8, ptr %.val6462, i64 %i.iq
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 20
  %.0.copyload.i7154 = load i32, ptr %i.bco, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7154) #16, !srcloc !22
  %i.bcp = sub i32 %i.bcm, %.0.copyload.i7154
  %i.bcq = lshr i32 %.0.copyload.i7150, 3
  %i.bcr = icmp ugt i32 %i.bcp, %i.bcq
  br i1 %i.bcr, label %bb.hu, label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.155911 = phi i32 [ %i.bck, %bb.hl ], [ %.0.copyload.i7150, %bb.hm ]
  %i.bcs = add i32 %.155911, -1
  %i.bct = zext i32 %i.bcs to i64                 ; 2 uses
  %i.bcu = lshr i64 %i.bct, 1
  %i.bcv = or i64 %i.bcu, %i.bct                  ; 2 uses
  %i.bcw = lshr i64 %i.bcv, 2
  %i.bcx = or i64 %i.bcw, %i.bcv                  ; 2 uses
  %i.bcy = lshr i64 %i.bcx, 4
  %i.bcz = or i64 %i.bcy, %i.bcx                  ; 2 uses
  %i.bda = lshr i64 %i.bcz, 8
  %i.bdb = or i64 %i.bda, %i.bcz                  ; 2 uses
  %i.bdc = lshr i64 %i.bdb, 16
  %i.bdd = or i64 %i.bdc, %i.bdb
  %i.bde = trunc nuw i64 %i.bdd to i32
  %i.bdf = add i32 %i.bde, 1                      ; 2 uses
  %i.bdg = icmp ult i32 %i.bdf, 65
  %i.bdh = select i1 %i.bdg, i32 64, i32 %i.bdf   ; 2 uses
  %.val6737 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdi = getelementptr inbounds nuw i8, ptr %.val6737, i64 %i.ir
  store i32 %i.bdh, ptr %i.bdi, align 1
  %i.bdj = mul i32 %i.bdh, 44
  %i.bdk = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.bdj) #16 ; 13 uses
  %.val6736 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdl = getelementptr inbounds nuw i8, ptr %.val6736, i64 %i.asf
  store i32 %i.bdk, ptr %i.bdl, align 1
  %.not6361 = icmp eq i32 %.0.copyload.i7149, 0
  br i1 %.not6361, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %.val6878 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdm = getelementptr inbounds nuw i8, ptr %.val6878, i64 %i.asg
  store i64 0, ptr %i.bdm, align 1
  %.val6461 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdn = getelementptr inbounds nuw i8, ptr %.val6461, i64 %i.ir
  %.0.copyload.i7155 = load i32, ptr %i.bdn, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7155) #16, !srcloc !22
  %i.bdo = mul i32 %.0.copyload.i7155, 44         ; 2 uses
  %i.bdp = add i32 %i.bdo, -44                    ; 2 uses
  %i.bdq = udiv i32 %i.bdp, 44
  %i.bdr = add nuw nsw i32 %i.bdq, 1
  %i.bds = and i32 %i.bdr, 7                      ; 7 uses
  %.not6362 = icmp eq i32 %i.bds, 0
  br i1 %.not6362, label %.loopexit7231, label %.preheader7230

.preheader7230:                                   ; preds = %bb.ho
  %i.bdt = zext i32 %i.bdk to i64
  %.val6735 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdu = getelementptr inbounds nuw i8, ptr %.val6735, i64 %i.bdt
  store i32 -4, ptr %i.bdu, align 1
  %i.bdv = add i32 %i.bdk, 44                     ; 2 uses
  %.not6363 = icmp eq i32 %i.bds, 1
  br i1 %.not6363, label %.loopexit7231, label %.preheader7230.1

.preheader7230.1:                                 ; preds = %.preheader7230
  %i.bdw = zext i32 %i.bdv to i64
  %.val6735.1 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bdx = getelementptr inbounds nuw i8, ptr %.val6735.1, i64 %i.bdw
  store i32 -4, ptr %i.bdx, align 1
  %i.bdy = add i32 %i.bdk, 88                     ; 2 uses
  %.not6363.1 = icmp eq i32 %i.bds, 2
  br i1 %.not6363.1, label %.loopexit7231, label %.preheader7230.2

.preheader7230.2:                                 ; preds = %.preheader7230.1
  %i.bdz = zext i32 %i.bdy to i64
  %.val6735.2 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bea = getelementptr inbounds nuw i8, ptr %.val6735.2, i64 %i.bdz
  store i32 -4, ptr %i.bea, align 1
  %i.beb = add i32 %i.bdk, 132                    ; 2 uses
  %.not6363.2 = icmp eq i32 %i.bds, 3
  br i1 %.not6363.2, label %.loopexit7231, label %.preheader7230.3

.preheader7230.3:                                 ; preds = %.preheader7230.2
  %i.bec = zext i32 %i.beb to i64
  %.val6735.3 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bed = getelementptr inbounds nuw i8, ptr %.val6735.3, i64 %i.bec
  store i32 -4, ptr %i.bed, align 1
  %i.bee = add i32 %i.bdk, 176                    ; 2 uses
  %.not6363.3 = icmp eq i32 %i.bds, 4
  br i1 %.not6363.3, label %.loopexit7231, label %.preheader7230.4

.preheader7230.4:                                 ; preds = %.preheader7230.3
  %i.bef = zext i32 %i.bee to i64
  %.val6735.4 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.beg = getelementptr inbounds nuw i8, ptr %.val6735.4, i64 %i.bef
  store i32 -4, ptr %i.beg, align 1
  %i.beh = add i32 %i.bdk, 220                    ; 2 uses
  %.not6363.4 = icmp eq i32 %i.bds, 5
  br i1 %.not6363.4, label %.loopexit7231, label %.preheader7230.5

.preheader7230.5:                                 ; preds = %.preheader7230.4
  %i.bei = zext i32 %i.beh to i64
  %.val6735.5 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bej = getelementptr inbounds nuw i8, ptr %.val6735.5, i64 %i.bei
  store i32 -4, ptr %i.bej, align 1
  %i.bek = add i32 %i.bdk, 264                    ; 2 uses
  %.not6363.5 = icmp eq i32 %i.bds, 6
  br i1 %.not6363.5, label %.loopexit7231, label %.preheader7230.6

.preheader7230.6:                                 ; preds = %.preheader7230.5
  %i.bel = zext i32 %i.bek to i64
  %.val6735.6 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bem = getelementptr inbounds nuw i8, ptr %.val6735.6, i64 %i.bel
  store i32 -4, ptr %i.bem, align 1
  %i.ben = add i32 %i.bdk, 308
  br label %.loopexit7231

.loopexit7231:                                    ; preds = %.preheader7230, %.preheader7230.1, %.preheader7230.2, %.preheader7230.3, %.preheader7230.4, %.preheader7230.5, %.preheader7230.6, %bb.ho
  %.265981 = phi i32 [ %i.bdk, %bb.ho ], [ %i.bdv, %.preheader7230 ], [ %i.bdy, %.preheader7230.1 ], [ %i.beb, %.preheader7230.2 ], [ %i.bee, %.preheader7230.3 ], [ %i.beh, %.preheader7230.4 ], [ %i.bek, %.preheader7230.5 ], [ %i.ben, %.preheader7230.6 ]
  %i.beo = icmp ult i32 %i.bdp, 308
  br i1 %i.beo, label %.loopexit7229, label %bb.hp

bb.hp:                                            ; preds = %.loopexit7231
  %i.bep = add i32 %i.bdo, %i.bdk
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hq, %bb.hp
  %.275982 = phi i32 [ %.265981, %bb.hp ], [ %i.bfg, %bb.hq ] ; 2 uses
  %i.beq = zext i32 %.275982 to i64               ; 8 uses
  %.val6734 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ber = getelementptr inbounds nuw i8, ptr %.val6734, i64 %i.beq
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 308
  store i32 -4, ptr %i.bes, align 1
  %.val6733 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bet = getelementptr inbounds nuw i8, ptr %.val6733, i64 %i.beq
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 264
  store i32 -4, ptr %i.beu, align 1
  %.val6732 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bev = getelementptr inbounds nuw i8, ptr %.val6732, i64 %i.beq
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bev, i64 220
  store i32 -4, ptr %i.bew, align 1
  %.val6731 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bex = getelementptr inbounds nuw i8, ptr %.val6731, i64 %i.beq
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 176
  store i32 -4, ptr %i.bey, align 1
  %.val6730 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bez = getelementptr inbounds nuw i8, ptr %.val6730, i64 %i.beq
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 132
  store i32 -4, ptr %i.bfa, align 1
  %.val6729 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfb = getelementptr inbounds nuw i8, ptr %.val6729, i64 %i.beq
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bfb, i64 88
  store i32 -4, ptr %i.bfc, align 1
  %.val6728 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfd = getelementptr inbounds nuw i8, ptr %.val6728, i64 %i.beq
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 44
  store i32 -4, ptr %i.bfe, align 1
  %.val6727 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bff = getelementptr inbounds nuw i8, ptr %.val6727, i64 %i.beq
  store i32 -4, ptr %i.bff, align 1
  %i.bfg = add i32 %.275982, 352                  ; 2 uses
  %.not6364 = icmp eq i32 %i.bfg, %i.bep
  br i1 %.not6364, label %.loopexit7229, label %bb.hq

bb.hr:                                            ; preds = %bb.hn
  %i.bfh = mul i32 %.0.copyload.i7150, 44
  %i.bfi = add i32 %i.bfh, %.0.copyload.i7149
  tail call void @w2c_hermes_llvh0x3A0x3ADenseMapBase0x3Cllvh0x3A0x3ADenseMap0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x2C0x20hermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x2C0x20llvh0x3A0x3ADenseMapInfo0x3Chermes0x3A0x3ABasicBlock0x2A0x3E0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x3E0x3A0x3AmoveFromOldBuckets0x28llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x2C0x20llvh0x3A0x3Adetail0x3A0x3ADenseMapPair0x3Chermes0x3A0x3ABasicBlock0x2A0x2C0x20llvh0x3A0x3ADomTreeBuilder0x3A0x3ASemiNCAInfo0x3Cllvh0x3A0x3ADominatorTreeBase0x3Chermes0x3A0x3ABasicBlock0x2C0x20false0x3E0x3E0x3A0x3AInfoRec0x3E0x2A0x29(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %.0.copyload.i7149, i32 noundef %i.bfi) #16
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i7149)
  %.val6460 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfj = getelementptr inbounds nuw i8, ptr %.val6460, i64 %i.asf
  %.0.copyload.i7156 = load i32, ptr %i.bfj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7156) #16, !srcloc !22
  %.val6459 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bfk = getelementptr inbounds nuw i8, ptr %.val6459, i64 %i.ir
  %.0.copyload.i7157 = load i32, ptr %i.bfk, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i7157) #16, !srcloc !22
  br label %.loopexit7229
end_hunk_1
begin_hunk_2_@w2c_hermes_dtoa_fixedpoint:bb.a
  %i.ux = zext i32 %.123064 to i64
  %.val3280 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uy = getelementptr inbounds nuw i8, ptr %.val3280, i64 %i.ux
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %.0.copyload.i3495 = load i32, ptr %i.uz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3495) #16, !srcloc !22
  %i.va = icmp eq i32 %.0.copyload.i3494, %.0.copyload.i3495
  br i1 %i.va, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.vb = add i32 %.32957, 20                     ; 2 uses
  %i.vc = shl i32 %.0.copyload.i3494, 2           ; 2 uses
  %i.vd = add i32 %i.vc, %i.vb
  %i.ve = add i32 %.123064, 20
  %i.vf = add i32 %i.ve, %i.vc
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fa, %bb.ex
  %.23 = phi i32 [ %i.vd, %bb.ex ], [ %i.vg, %bb.fa ]
  %.103000 = phi i32 [ %i.vf, %bb.ex ], [ %i.vj, %bb.fa ]
  %i.vg = add i32 %.23, -4                        ; 3 uses
  %i.vh = zext i32 %i.vg to i64
  %.val3279 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vi = getelementptr inbounds nuw i8, ptr %.val3279, i64 %i.vh
  %.0.copyload.i3496 = load i32, ptr %i.vi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3496) #16, !srcloc !22
  %i.vj = add i32 %.103000, -4                    ; 2 uses
  %i.vk = zext i32 %i.vj to i64
  %.val3278 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vl = getelementptr inbounds nuw i8, ptr %.val3278, i64 %i.vk
  %.0.copyload.i3497 = load i32, ptr %i.vl, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3497) #16, !srcloc !22
  %.not3187 = icmp eq i32 %.0.copyload.i3496, %.0.copyload.i3497
  br i1 %.not3187, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not3188 = icmp ugt i32 %.0.copyload.i3497, %.0.copyload.i3496
  br i1 %.not3188, label %bb.fc, label %.loopexit3553

bb.fa:                                            ; preds = %bb.ey
  %i.vm = icmp ugt i32 %i.vg, %i.vb
  br i1 %i.vm, label %bb.ey, label %.loopexit3553

bb.fb:                                            ; preds = %bb.ew
  %.not3186 = icmp sgt i32 %.0.copyload.i3495, %.0.copyload.i3494
  br i1 %.not3186, label %bb.fc, label %.loopexit3553

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %i.vn = add i32 %.02958, -1                     ; 2 uses
  %i.vo = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.32957, i32 noundef 10, i32 noundef 0) #16 ; 2 uses
  br i1 %.not3176, label %.loopexit3553, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vp = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.52980, i32 noundef 10, i32 noundef 0) #16
  br label %.loopexit3553

bb.fe:                                            ; preds = %bb.dj
  %.val3406 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vq = getelementptr inbounds nuw i8, ptr %.val3406, i64 %i.e
  %.0.copyload.i3498 = load double, ptr %i.vq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i3498) #16, !srcloc !48
  %i.vr = fmul double %.0.copyload.i3475, 5.000000e+00
  %i.vs = fcmp ugt double %.0.copyload.i3498, %i.vr
  br i1 %i.vs, label %.loopexit3552, label %bb.fn

.loopexit3553:                                    ; preds = %bb.fa, %bb.ev, %bb.ez, %bb.fb, %bb.fc, %bb.fd
  %.03033 = phi i32 [ %i.vo, %bb.fd ], [ %i.vo, %bb.fc ], [ %.32957, %bb.fb ], [ %.32957, %bb.ev ], [ %.32957, %bb.ez ], [ %.32957, %bb.fa ] ; 10 uses
  %.62981 = phi i32 [ %i.vp, %bb.fd ], [ %.52980, %bb.fc ], [ %.52980, %bb.fb ], [ %.52980, %bb.ev ], [ %.52980, %bb.ez ], [ %.52980, %bb.fa ] ; 10 uses
  %.52969 = phi i32 [ %.42968, %bb.fd ], [ %.42968, %bb.fc ], [ %.32948, %bb.fb ], [ %.32948, %bb.ev ], [ %.32948, %bb.ez ], [ %.32948, %bb.fa ] ; 4 uses
  %.12959 = phi i32 [ %i.vn, %bb.fd ], [ %i.vn, %bb.fc ], [ %.02958, %bb.fb ], [ %.02958, %bb.ev ], [ %.02958, %bb.ez ], [ %.02958, %bb.fa ] ; 9 uses
  %i.vt = icmp sgt i32 %.52969, 0
  br i1 %i.vt, label %bb.fo, label %bb.ff

bb.ff:                                            ; preds = %.loopexit3553
  switch i32 %i.ft, label %bb.fo [
    i32 3, label %bb.fg
    i32 5, label %bb.fg
  ]

bb.fg:                                            ; preds = %bb.ff, %bb.ff
  %i.vu = icmp slt i32 %.52969, 0
  br i1 %i.vu, label %bb.fn, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.vv = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.123064, i32 noundef 5, i32 noundef 0) #16 ; 7 uses
  %i.vw = zext i32 %.03033 to i64
  %.val3277 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vx = getelementptr inbounds nuw i8, ptr %.val3277, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %.0.copyload.i3499 = load i32, ptr %i.vy, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3499) #16, !srcloc !22
  %i.vz = zext i32 %i.vv to i64
  %.val3276 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.val3276, i64 %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %.0.copyload.i3500 = load i32, ptr %i.wb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3500) #16, !srcloc !22
  %i.wc = icmp eq i32 %.0.copyload.i3499, %.0.copyload.i3500
  br i1 %i.wc, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %bb.fh
  %i.wd = add i32 %.03033, 20                     ; 2 uses
  %i.we = shl i32 %.0.copyload.i3499, 2           ; 2 uses
  %i.wf = add i32 %i.we, %i.wd
  %i.wg = add i32 %i.vv, 20
  %i.wh = add i32 %i.wg, %i.we
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fl, %bb.fi
  %.24 = phi i32 [ %i.wf, %bb.fi ], [ %i.wi, %bb.fl ]
  %.113001 = phi i32 [ %i.wh, %bb.fi ], [ %i.wl, %bb.fl ]
  %i.wi = add i32 %.24, -4                        ; 3 uses
  %i.wj = zext i32 %i.wi to i64
  %.val3275 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wk = getelementptr inbounds nuw i8, ptr %.val3275, i64 %i.wj
  %.0.copyload.i3501 = load i32, ptr %i.wk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3501) #16, !srcloc !22
  %i.wl = add i32 %.113001, -4                    ; 2 uses
  %i.wm = zext i32 %i.wl to i64
  %.val3274 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wn = getelementptr inbounds nuw i8, ptr %.val3274, i64 %i.wm
  %.0.copyload.i3502 = load i32, ptr %i.wn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3502) #16, !srcloc !22
  %.not3190 = icmp eq i32 %.0.copyload.i3501, %.0.copyload.i3502
  br i1 %.not3190, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wo = icmp ugt i32 %.0.copyload.i3502, %.0.copyload.i3501
  br i1 %i.wo, label %bb.fn, label %.loopexit3552

bb.fl:                                            ; preds = %bb.fj
  %i.wp = icmp ugt i32 %i.wi, %i.wd
  br i1 %i.wp, label %bb.fj, label %.loopexit3552

bb.fm:                                            ; preds = %bb.fh
  %.not3189 = icmp slt i32 %.0.copyload.i3499, %.0.copyload.i3500
  br i1 %.not3189, label %bb.fn, label %.loopexit3552

bb.fn:                                            ; preds = %bb.dj, %bb.bw, %bb.fm, %bb.fk, %bb.fg, %bb.fe
  %.133065 = phi i32 [ %.123064, %bb.fg ], [ %i.vv, %bb.fk ], [ %i.vv, %bb.fm ], [ 0, %bb.fe ], [ 0, %bb.bw ], [ 0, %bb.dj ]
  %.13034 = phi i32 [ %.03033, %bb.fg ], [ %.03033, %bb.fk ], [ %.03033, %bb.fm ], [ %i.da, %bb.fe ], [ %i.da, %bb.bw ], [ %i.da, %bb.dj ]
  %.72982 = phi i32 [ %.62981, %bb.fg ], [ %.62981, %bb.fk ], [ %.62981, %bb.fm ], [ 0, %bb.fe ], [ 0, %bb.bw ], [ 0, %bb.dj ]
  %i.wq = xor i32 %.32930, -1
  br label %.loopexit

.loopexit3552:                                    ; preds = %bb.fl, %bb.bv, %bb.fm, %bb.fk, %bb.fe
  %.143066 = phi i32 [ %i.vv, %bb.fk ], [ 0, %bb.bv ], [ %i.vv, %bb.fm ], [ 0, %bb.fe ], [ %i.vv, %bb.fl ]
  %.23035 = phi i32 [ %.03033, %bb.fk ], [ %i.da, %bb.bv ], [ %.03033, %bb.fm ], [ %i.da, %bb.fe ], [ %.03033, %bb.fl ]
  %.82983 = phi i32 [ %.62981, %bb.fk ], [ 0, %bb.bv ], [ %.62981, %bb.fm ], [ 0, %bb.fe ], [ %.62981, %bb.fl ]
  %.22960 = phi i32 [ %.12959, %bb.fk ], [ %.5, %bb.bv ], [ %.12959, %bb.fm ], [ %.02958, %bb.fe ], [ %.12959, %bb.fl ]
  %.val3398 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wr = getelementptr inbounds nuw i8, ptr %.val3398, i64 %.pre-phi3705
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  store i8 49, ptr %i.ws, align 1
  %i.wt = add i32 %.22960, 1
  %i.wu = add i32 %.22953, 5
  br label %.loopexit

bb.fo:                                            ; preds = %bb.ff, %.loopexit3553
  br i1 %.not3176, label %bb.fp, label %bb.fu

bb.fp:                                            ; preds = %bb.fo
  %i.wv = tail call i32 @llvm.smax.i32(i32 %.52969, i32 1)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.ft, %bb.fp
  %.33036 = phi i32 [ %.03033, %bb.fp ], [ %i.xk, %bb.ft ] ; 5 uses
  %.25 = phi i32 [ 1, %bb.fp ], [ %i.xj, %bb.ft ] ; 2 uses
  %.23008 = phi i32 [ %i.hq, %bb.fp ], [ %i.xb, %bb.ft ] ; 2 uses
  %i.ww = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %.33036, i32 noundef %.123064) #16
  %i.wx = zext i32 %.23008 to i64
  %.val3397 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wy = trunc i32 %i.ww to i8
  %i.wz = add i8 %i.wy, 48
  %i.xa = getelementptr inbounds nuw i8, ptr %.val3397, i64 %i.wx
  store i8 %i.wz, ptr %i.xa, align 1
  %i.xb = add i32 %.23008, 1                      ; 3 uses
  %i.xc = zext i32 %.33036 to i64                 ; 2 uses
  %.val3273 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xd = getelementptr inbounds nuw i8, ptr %.val3273, i64 %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 20
  %.0.copyload.i3503 = load i32, ptr %i.xe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3503) #16, !srcloc !22
  %.not3210 = icmp eq i32 %.0.copyload.i3503, 0
  br i1 %.not3210, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %.val3272 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xf = getelementptr inbounds nuw i8, ptr %.val3272, i64 %i.xc
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %.0.copyload.i3504 = load i32, ptr %i.xg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3504) #16, !srcloc !22
  %i.xh = icmp sgt i32 %.0.copyload.i3504, 1
  br i1 %i.xh, label %bb.fs, label %.loopexit

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.xi = icmp eq i32 %.25, %i.wv
  br i1 %i.xi, label %.loopexit3547, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xj = add nuw nsw i32 %.25, 1
  %i.xk = tail call i32 @w2c_hermes_multadd(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.33036, i32 noundef 10, i32 noundef 0) #16
  br label %bb.fq

bb.fu:                                            ; preds = %bb.fo
  %i.xl = add i32 %i.um, %.12937                  ; 2 uses
  %i.xm = icmp slt i32 %i.xl, 1
  br i1 %i.xm, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xn = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.62981, i32 noundef %i.xl) #16
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.02970 = phi i32 [ %i.xn, %bb.fv ], [ %.62981, %bb.fu ] ; 4 uses
  br i1 %.not3191, label %bb.fx, label %bb.gg

bb.fx:                                            ; preds = %bb.fw
  %i.xo = zext i32 %.02970 to i64                 ; 2 uses
  %.val3271 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xp = getelementptr inbounds nuw i8, ptr %.val3271, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4
  %.0.copyload.i3505 = load i32, ptr %i.xq, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3505) #16, !srcloc !22
  %i.xr = icmp slt i32 %.0.copyload.i3505, 8
  br i1 %i.xr, label %bb.fy, label %bb.gc

bb.fy:                                            ; preds = %bb.fx
  %i.xs = shl i32 %.0.copyload.i3505, 2
  %i.xt = add i32 %i.xs, %1                       ; 2 uses
  %i.xu = add i32 %i.xt, 12
  %i.xv = zext i32 %i.xu to i64
  %.val3270 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xw = getelementptr inbounds nuw i8, ptr %.val3270, i64 %i.xv
  %.0.copyload.i3506 = load i32, ptr %i.xw, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3506) #16, !srcloc !22
  %.not3192 = icmp eq i32 %.0.copyload.i3506, 0
  br i1 %.not3192, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.xx = zext i32 %.0.copyload.i3506 to i64      ; 2 uses
  %.val3269 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xy = getelementptr inbounds nuw i8, ptr %.val3269, i64 %i.xx
  %.0.copyload.i3507 = load i32, ptr %i.xy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3507) #16, !srcloc !22
  %i.xz = zext i32 %i.xt to i64
  br label %bb.gf

bb.ga:                                            ; preds = %bb.fy
  %i.ya = and i32 %.0.copyload.i3505, 31          ; 2 uses
  %i.yb = shl nuw i32 1, %i.ya                    ; 2 uses
  %.val3268 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yc = getelementptr inbounds nuw i8, ptr %.val3268, i64 %i.rz
  %.0.copyload.i3508 = load i32, ptr %i.yc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3508) #16, !srcloc !22
  %i.yd = shl i32 4, %i.ya
  %i.ye = add nuw i32 %i.yd, 27                   ; 3 uses
  %i.yf = lshr i32 %i.ye, 3
  %i.yg = add nuw nsw i64 %i.rz, 8                ; 2 uses
  %.val3267 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yh = getelementptr inbounds nuw i8, ptr %.val3267, i64 %i.yg
  %.0.copyload.i3509 = load i32, ptr %i.yh, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3509) #16, !srcloc !22
  %reass.sub3628 = sub i32 %.0.copyload.i3509, %1
  %i.yi = add i32 %reass.sub3628, -48
  %i.yj = ashr i32 %i.yi, 3
  %i.yk = add nsw i32 %i.yj, %i.yf
  %i.yl = icmp ult i32 %.0.copyload.i3508, %i.yk
  br i1 %i.yl, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ym = and i32 %i.ye, -8
  %i.yn = add i32 %.0.copyload.i3509, %i.ym
  %.val3335 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yo = getelementptr inbounds nuw i8, ptr %.val3335, i64 %i.yg
  store i32 %i.yn, ptr %i.yo, align 1
  br label %bb.ge

bb.gc:                                            ; preds = %bb.fx
  %i.yp = and i32 %.0.copyload.i3505, 31          ; 2 uses
  %i.yq = shl i32 4, %i.yp
  %i.yr = add nuw i32 %i.yq, 27
  %i.ys = shl nuw i32 1, %i.yp
  br label %bb.gd

bb.gd:                                            ; preds = %bb.ga, %bb.gc
  %.42949 = phi i32 [ %i.ye, %bb.ga ], [ %i.yr, %bb.gc ]
  %.12 = phi i32 [ %i.yb, %bb.ga ], [ %i.ys, %bb.gc ]
  %i.yt = and i32 %.42949, -8
  %i.yu = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef %i.yt)
  %.val3334 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yv = getelementptr inbounds nuw i8, ptr %.val3334, i64 %i.rz
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  store i32 1, ptr %i.yw, align 1
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.26 = phi i32 [ %i.yu, %bb.gd ], [ %.0.copyload.i3509, %bb.gb ] ; 2 uses
  %.33009 = phi i32 [ %.12, %bb.gd ], [ %i.yb, %bb.gb ]
  %i.yx = zext i32 %.26 to i64                    ; 3 uses
  %.val3333 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.yy = getelementptr inbounds nuw i8, ptr %.val3333, i64 %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i32 %.33009, ptr %i.yz, align 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.fz
  %.sink3810 = phi i64 [ %i.yx, %bb.ge ], [ %i.xz, %bb.fz ]
  %.sink3809 = phi i64 [ 4, %bb.ge ], [ 12, %bb.fz ]
  %.0.copyload.i3505.sink = phi i32 [ %.0.copyload.i3505, %bb.ge ], [ %.0.copyload.i3507, %bb.fz ]
  %.pre-phi3707 = phi i64 [ %i.yx, %bb.ge ], [ %i.xx, %bb.fz ]
  %.27 = phi i32 [ %.26, %bb.ge ], [ %.0.copyload.i3506, %bb.fz ] ; 2 uses
  %.val3332 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.za = getelementptr inbounds nuw i8, ptr %.val3332, i64 %.sink3810
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %.sink3809
  store i32 %.0.copyload.i3505.sink, ptr %i.zb, align 1
  %.val3368 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zc = getelementptr inbounds nuw i8, ptr %.val3368, i64 %.pre-phi3707
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 12
  store i64 0, ptr %i.zd, align 1
  %i.ze = add i32 %.27, 12
  %i.zf = add i32 %.02970, 12
  %.val3266 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zg = getelementptr inbounds nuw i8, ptr %.val3266, i64 %i.xo
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %.0.copyload.i3510 = load i32, ptr %i.zh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3510) #16, !srcloc !22
  %i.zi = shl i32 %.0.copyload.i3510, 2
  %i.zj = add i32 %i.zi, 8
  %i.zk = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.ze, i32 noundef %i.zf, i32 noundef %i.zj) ; 0 uses
  %i.zl = tail call i32 @w2c_hermes_lshift(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.27, i32 noundef 1) #16
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.fw
  %.102985 = phi i32 [ %i.zl, %bb.gf ], [ %.02970, %bb.fw ]
  %i.zm = icmp ne i32 %i.ft, 1
  br label %bb.gh

bb.gh:                                            ; preds = %.backedge, %bb.gg
  %.43037 = phi i32 [ %.03033, %bb.gg ], [ %i.ade, %.backedge ] ; 12 uses
  %.43010 = phi i32 [ %i.hq, %bb.gg ], [ %i.adb, %.backedge ] ; 8 uses
  %.112986 = phi i32 [ %.102985, %bb.gg ], [ %.112986.be, %.backedge ] ; 7 uses
  %.12971 = phi i32 [ %.02970, %bb.gg ], [ %i.adf, %.backedge ] ; 8 uses
  %.22938 = phi i32 [ 1, %bb.gg ], [ %i.adg, %.backedge ] ; 2 uses
  %i.zn = tail call i32 @w2c_hermes_quorem(ptr noundef nonnull %0, i32 noundef %.43037, i32 noundef %.123064) #16 ; 3 uses
  %i.zo = zext i32 %.43037 to i64                 ; 2 uses
  %i.zp = add nuw nsw i64 %i.zo, 16               ; 3 uses
  %.val3265 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zq = getelementptr inbounds nuw i8, ptr %.val3265, i64 %i.zp
  %.0.copyload.i3511 = load i32, ptr %i.zq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3511) #16, !srcloc !22
  %i.zr = zext i32 %.12971 to i64
  %.val3264 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.zs = getelementptr inbounds nuw i8, ptr %.val3264, i64 %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %.0.copyload.i3512 = load i32, ptr %i.zt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3512) #16, !srcloc !22
  %i.zu = sub i32 %.0.copyload.i3511, %.0.copyload.i3512 ; 2 uses
  %.not3193 = icmp eq i32 %i.zu, 0
  br i1 %.not3193, label %bb.gi, label %.loopexit3550

bb.gi:                                            ; preds = %bb.gh
  %i.zv = add i32 %.43037, 20                     ; 2 uses
  %i.zw = shl i32 %.0.copyload.i3512, 2           ; 2 uses
  %i.zx = add i32 %i.zw, %i.zv
  %i.zy = add i32 %.12971, 20
  %i.zz = add i32 %i.zy, %i.zw
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gl, %bb.gi
  %.28 = phi i32 [ %i.zx, %bb.gi ], [ %i.aaa, %bb.gl ]
  %.123002 = phi i32 [ %i.zz, %bb.gi ], [ %i.aad, %bb.gl ]
  %i.aaa = add i32 %.28, -4                       ; 3 uses
  %i.aab = zext i32 %i.aaa to i64
  %.val3263 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aac = getelementptr inbounds nuw i8, ptr %.val3263, i64 %i.aab
  %.0.copyload.i3513 = load i32, ptr %i.aac, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3513) #16, !srcloc !22
  %i.aad = add i32 %.123002, -4                   ; 2 uses
  %i.aae = zext i32 %i.aad to i64
  %.val3262 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val3262, i64 %i.aae
  %.0.copyload.i3514 = load i32, ptr %i.aaf, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3514) #16, !srcloc !22
  %.not3194 = icmp eq i32 %.0.copyload.i3513, %.0.copyload.i3514
  br i1 %.not3194, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.aag = icmp ugt i32 %.0.copyload.i3514, %.0.copyload.i3513
  %i.aah = select i1 %i.aag, i32 -1, i32 1
  br label %.loopexit3550

bb.gl:                                            ; preds = %bb.gj
  %i.aai = icmp ugt i32 %i.aaa, %i.zv
  br i1 %i.aai, label %bb.gj, label %.loopexit3550

.loopexit3550:                                    ; preds = %bb.gl, %bb.gh, %bb.gk
  %.42944 = phi i32 [ %i.zu, %bb.gh ], [ %i.aah, %bb.gk ], [ 0, %bb.gl ] ; 2 uses
  %i.aaj = tail call i32 @w2c_hermes_diff(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.123064, i32 noundef %.112986) ; 5 uses
  %i.aak = zext i32 %i.aaj to i64                 ; 4 uses
  %.val3261 = load ptr, ptr %i.d, align 8, !tbaa !21
end_hunk_2
begin_hunk_3_@w2c_hermes_getenv:bb.a
  %i.ai = zext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader154, %.loopexit._crit_edge
  %.0119 = phi i32 [ %.0.copyload.i153, %.loopexit._crit_edge ], [ %.0.copyload.i146, %.preheader154 ] ; 2 uses
  %.0118 = phi i32 [ %i.bd, %.loopexit._crit_edge ], [ %.0.copyload.i145, %.preheader154 ] ; 2 uses
  %.val143 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val143, i64 %i.ai
  %.0.copyload.i147 = load i8, ptr %i.aj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i147) #16, !srcloc !33
  %.not129 = icmp eq i8 %.0.copyload.i147, 0
  br i1 %.not129, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.j
  %.0121 = phi i32 [ %i.ar, %bb.j ], [ %1, %bb.h ] ; 2 uses
  %.1120 = phi i32 [ %i.an, %bb.j ], [ %.0119, %bb.h ] ; 4 uses
  %.0117.in = phi i8 [ %.0.copyload.i149, %bb.j ], [ %.0.copyload.i147, %bb.h ] ; 3 uses
  %.0115 = phi i32 [ %i.am, %bb.j ], [ %i.ab, %bb.h ]
  %i.ak = zext i32 %.1120 to i64
  %.val142 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val142, i64 %i.ak
  %.0.copyload.i148 = load i8, ptr %i.al, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i148) #16, !srcloc !33
  %.not130.not = icmp eq i8 %.0117.in, %.0.copyload.i148
  br i1 %.not130.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.preheader
  %i.am = add i32 %.0115, -1                      ; 2 uses
  %.not132 = icmp eq i32 %i.am, 0
  br i1 %.not132, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %.1120, 1                       ; 2 uses
  %i.ao = zext i32 %.0121 to i64
  %.val141 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.val141, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.0.copyload.i149 = load i8, ptr %i.aq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i149) #16, !srcloc !33
  %i.ar = add i32 %.0121, 1
  %.not133 = icmp eq i8 %.0.copyload.i149, 0
  br i1 %.not133, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.i, %bb.j, %bb.h
  %.2 = phi i32 [ %.0119, %bb.h ], [ %.1120, %.preheader ], [ %.1120, %bb.i ], [ %i.an, %bb.j ]
  %.0116.shrunk = phi i8 [ 0, %bb.h ], [ %.0117.in, %.preheader ], [ %.0117.in, %bb.i ], [ 0, %bb.j ]
  %i.as = zext i32 %.2 to i64
  %.val140 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.val140, i64 %i.as
  %.0.copyload.i150 = load i8, ptr %i.at, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i150) #16, !srcloc !33
  %i.au = icmp eq i8 %.0116.shrunk, %.0.copyload.i150
  %i.av = zext i32 %.0118 to i64                  ; 2 uses
  br i1 %i.au, label %bb.k, label %.loopexit._crit_edge

bb.k:                                             ; preds = %.loopexit
  %.val136 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val136, i64 %i.av
  %.0.copyload.i151 = load i32, ptr %i.aw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i151) #16, !srcloc !22
  %i.ax = add i32 %.0.copyload.i151, %i.ab        ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.val139 = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val139, i64 %i.ay
  %.0.copyload.i152 = load i8, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i152) #16, !srcloc !33
  %i.ba = icmp eq i8 %.0.copyload.i152, 61
  br i1 %i.ba, label %bb.l, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit, %bb.k
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 %i.av
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %.0.copyload.i153 = load i32, ptr %i.bc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i153) #16, !srcloc !22
  %i.bd = add i32 %.0118, 4
  %.not135 = icmp eq i32 %.0.copyload.i153, 0
  br i1 %.not135, label %.loopexit155, label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.be = add i32 %i.ax, 1
  br label %.loopexit155

.loopexit155:                                     ; preds = %.loopexit._crit_edge, %bb.l, %bb.e, %bb.f, %bb.g, %w2c_hermes_0x5F_strchrnul.exit
  %.1 = phi i32 [ 0, %w2c_hermes_0x5F_strchrnul.exit ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ %i.be, %bb.l ], [ 0, %.loopexit._crit_edge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_0x5F_strchrnul(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 255                          ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 3
  %.not111 = icmp eq i32 %i.b, 0
  br i1 %.not111, label %.loopexit128, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = trunc i32 %2 to i8
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.0108 = phi i32 [ %i.h, %bb.d ], [ %1, %.preheader ] ; 3 uses
  %i.e = zext i32 %.0108 to i64
  %.val122 = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val122, i64 %i.e
  %.0.copyload.i = load i8, ptr %i.f, align 1     ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #16, !srcloc !33
  %.not112 = icmp eq i8 %.0.copyload.i, 0
  %i.g = icmp eq i8 %.0.copyload.i, %i.d
  %or.cond = or i1 %.not112, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %.0108, 1                        ; 3 uses
  %i.i = and i32 %i.h, 3
  %.not113 = icmp eq i32 %i.i, 0
  br i1 %.not113, label %.loopexit128, label %bb.c

.loopexit128:                                     ; preds = %bb.d, %bb.b
  %.1 = phi i32 [ %1, %bb.b ], [ %i.h, %bb.d ]    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = zext i32 %.1 to i64
  %.val120 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val120, i64 %i.k
  %.0.copyload.i123 = load i32, ptr %i.l, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i123) #16, !srcloc !22
  %i.m = sub i32 16843008, %.0.copyload.i123
  %i.n = or i32 %i.m, %.0.copyload.i123
  %i.o = and i32 %i.n, -2139062144
  %.not114 = icmp eq i32 %i.o, -2139062144
  br i1 %.not114, label %bb.e, label %.loopexit126

bb.e:                                             ; preds = %.loopexit128
  %i.p = mul nuw i32 %i.a, 16843009
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.2 = phi i32 [ %.1, %bb.e ], [ %i.x, %bb.g ]   ; 3 uses
  %.0107 = phi i32 [ %.0.copyload.i123, %bb.e ], [ %.0.copyload.i124, %bb.g ]
  %i.q = xor i32 %.0107, %i.p                     ; 2 uses
  %i.r = sub i32 16843008, %i.q
  %i.s = or i32 %i.r, %i.q
  %i.t = and i32 %i.s, -2139062144
  %.not115 = icmp eq i32 %i.t, -2139062144
  br i1 %.not115, label %bb.g, label %.loopexit126

bb.g:                                             ; preds = %bb.f
  %i.u = zext i32 %.2 to i64
  %.val = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i124 = load i32, ptr %i.w, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i124) #16, !srcloc !22
  %i.x = add i32 %.2, 4                           ; 2 uses
  %i.y = sub i32 16843008, %.0.copyload.i124
  %i.z = or i32 %i.y, %.0.copyload.i124
  %i.aa = and i32 %i.z, -2139062144
  %.not116 = icmp eq i32 %i.aa, -2139062144
  br i1 %.not116, label %bb.f, label %.loopexit126

.loopexit126:                                     ; preds = %bb.g, %bb.f, %.loopexit128
  %.3 = phi i32 [ %.1, %.loopexit128 ], [ %i.x, %bb.g ], [ %.2, %bb.f ]
  %i.ab = trunc i32 %2 to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.loopexit126
  %.4 = phi i32 [ %.3, %.loopexit126 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ac = zext i32 %.4 to i64
  %.val121 = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.val121, i64 %i.ac
  %.0.copyload.i125 = load i8, ptr %i.ad, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i125) #16, !srcloc !33
  %.not117 = icmp eq i8 %.0.copyload.i125, 0
  %i.ae = add i32 %.4, 1
  %.not118 = icmp eq i8 %.0.copyload.i125, %i.ab
  %or.cond119 = or i1 %.not117, %.not118
  br i1 %or.cond119, label %.loopexit, label %bb.h

bb.i:                                             ; preds = %bb.a
  %i.af = tail call i32 @w2c_hermes_strlen(ptr noundef %0, i32 noundef %1) #16
  %i.ag = add i32 %i.af, %1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.h, %bb.i
  %.0 = phi i32 [ %.4, %bb.h ], [ %i.ag, %bb.i ], [ %.0108, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @w2c_hermes_g_dtoa(ptr noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = add i32 %i.b, -16                        ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 164 uses
  %i.e = zext i32 %i.c to i64                     ; 20 uses
  %.val2417 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val2417, i64 %i.e
  store double %2, ptr %i.f, align 1
  %i.g = bitcast double %2 to i64                 ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32                ; 2 uses
  %i.j = icmp slt i64 %i.g, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.i, 2147483647                 ; 2 uses
  %.val2372 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %.val2372, i64 %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.k, ptr %i.m, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.02092 = phi i32 [ %i.k, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.n = zext i32 %4 to i64
  %.val2371 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val2371, i64 %i.n
  store i32 %.0, ptr %i.o, align 1
  %i.p = and i32 %.02092, 2146435072
  %i.q = icmp eq i32 %i.p, 2146435072
  br i1 %i.q, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.r = zext i32 %3 to i64
  %.val2370 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.val2370, i64 %i.r
  store i32 9999, ptr %i.s, align 1
  %i.t = zext i32 %1 to i64                       ; 7 uses
  %i.u = add nuw nsw i64 %i.t, 12                 ; 3 uses
  %.val2324 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.val2324, i64 %i.u
  %.0.copyload.i = load i32, ptr %i.v, align 1    ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %.val2323 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.val2323, i64 %i.e
  %.0.copyload.i2418 = load i32, ptr %i.w, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2418) #16, !srcloc !22
  %i.x = and i32 %.02092, 1048575
  %i.y = or i32 %.0.copyload.i2418, %i.x
  %.not2238 = icmp eq i32 %i.y, 0
  %.not2242 = icmp eq i32 %.0.copyload.i, 0       ; 2 uses
  br i1 %.not2238, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %.not2242, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = zext i32 %.0.copyload.i to i64           ; 2 uses
  %.val2322 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2322, i64 %i.z
  %.0.copyload.i2419 = load i32, ptr %i.aa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2419) #16, !srcloc !22
  %.val2369 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.val2369, i64 %i.u
  store i32 %.0.copyload.i2419, ptr %i.ab, align 1
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %.val2321 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2321, i64 %i.t
  %.0.copyload.i2420 = load i32, ptr %i.ac, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2420) #16, !srcloc !22
  %i.ad = add nuw nsw i64 %i.t, 8                 ; 2 uses
  %.val2320 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.val2320, i64 %i.ad
  %.0.copyload.i2421 = load i32, ptr %i.ae, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2421) #16, !srcloc !22
  %reass.sub2587 = sub i32 %.0.copyload.i2421, %1
  %i.af = add i32 %reass.sub2587, -48
  %i.ag = ashr i32 %i.af, 3
  %i.ah = add nsw i32 %i.ag, 3
  %.not2243 = icmp ult i32 %.0.copyload.i2420, %i.ah
  br i1 %.not2243, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i32 %.0.copyload.i2421, 24
  %.val2368 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2368, i64 %i.ad
  store i32 %i.ai, ptr %i.aj, align 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 24)
  %.val2367 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.val2367, i64 %i.t
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 1, ptr %i.am, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.02100 = phi i32 [ %.0.copyload.i2421, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %i.an = zext i32 %.02100 to i64                 ; 2 uses
  %.val2386 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2386, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 4294967296, ptr %i.ap, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pre-phi = phi i64 [ %i.an, %bb.j ], [ %i.z, %bb.f ] ; 3 uses
  %.12101 = phi i32 [ %.02100, %bb.j ], [ %.0.copyload.i, %bb.f ] ; 2 uses
  %.val2385 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2385, i64 %.pre-phi
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i64 0, ptr %i.ar, align 1
  %.val2384 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val2384, i64 %.pre-phi
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i64 8751735898823355977, ptr %i.at, align 1
  %.val2366 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.val2366, i64 %.pre-phi
  store i32 0, ptr %i.au, align 1
  %i.av = add i32 %.12101, 4                      ; 2 uses
  %.not2244 = icmp eq i32 %5, 0
  br i1 %.not2244, label %bb.fw, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add i32 %.12101, 12
  br label %bb.fv

bb.m:                                             ; preds = %bb.d
  br i1 %.not2242, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = zext i32 %.0.copyload.i to i64          ; 2 uses
  %.val2319 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2319, i64 %i.ax
  %.0.copyload.i2422 = load i32, ptr %i.ay, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2422) #16, !srcloc !22
  %.val2365 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %.val2365, i64 %i.u
  store i32 %.0.copyload.i2422, ptr %i.az, align 1
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %.val2318 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2318, i64 %i.t
  %.0.copyload.i2423 = load i32, ptr %i.ba, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2423) #16, !srcloc !22
  %i.bb = add nuw nsw i64 %i.t, 8                 ; 2 uses
  %.val2317 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val2317, i64 %i.bb
  %.0.copyload.i2424 = load i32, ptr %i.bc, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2424) #16, !srcloc !22
  %reass.sub2586 = sub i32 %.0.copyload.i2424, %1
  %i.bd = add i32 %reass.sub2586, -48
  %i.be = ashr i32 %i.bd, 3
  %i.bf = add nsw i32 %i.be, 3
  %.not2240 = icmp ult i32 %.0.copyload.i2423, %i.bf
  br i1 %.not2240, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = add i32 %.0.copyload.i2424, 24
  %.val2364 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %.val2364, i64 %i.bb
  store i32 %i.bg, ptr %i.bh, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bi = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 24)
  %.val2363 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2363, i64 %i.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bk, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.22102 = phi i32 [ %.0.copyload.i2424, %bb.p ], [ %i.bi, %bb.q ] ; 2 uses
  %i.bl = zext i32 %.22102 to i64                 ; 2 uses
  %.val2383 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2383, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i64 4294967296, ptr %i.bn, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.pre-phi2655 = phi i64 [ %i.bl, %bb.r ], [ %i.ax, %bb.n ] ; 2 uses
  %.32103 = phi i32 [ %.22102, %bb.r ], [ %.0.copyload.i, %bb.n ] ; 2 uses
  %.val2382 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2382, i64 %.pre-phi2655
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i64 0, ptr %i.bp, align 1
  %.val2381 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2381, i64 %.pre-phi2655
  store i64 22062035818774528, ptr %i.bq, align 1
  %i.br = add i32 %.32103, 4                      ; 2 uses
  %.not2241 = icmp eq i32 %5, 0
  br i1 %.not2241, label %bb.fw, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add i32 %.32103, 7
  br label %bb.fv

bb.u:                                             ; preds = %bb.c
  %.val2413 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2413, i64 %i.e
  %.0.copyload.i2425 = load double, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2425) #16, !srcloc !48
  %i.bu = fcmp oeq double %.0.copyload.i2425, 0.000000e+00
  br i1 %i.bu, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bv = zext i32 %3 to i64
  %.val2362 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.val2362, i64 %i.bv
  store i32 1, ptr %i.bw, align 1
  %i.bx = zext i32 %1 to i64                      ; 4 uses
  %i.by = add nuw nsw i64 %i.bx, 12               ; 2 uses
  %.val2316 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.val2316, i64 %i.by
  %.0.copyload.i2426 = load i32, ptr %i.bz, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2426) #16, !srcloc !22
  %.not2235 = icmp eq i32 %.0.copyload.i2426, 0
  br i1 %.not2235, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = zext i32 %.0.copyload.i2426 to i64      ; 2 uses
  %.val2315 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %.val2315, i64 %i.ca
  %.0.copyload.i2427 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2427) #16, !srcloc !22
  %.val2361 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.val2361, i64 %i.by
  store i32 %.0.copyload.i2427, ptr %i.cc, align 1
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %.val2314 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %.val2314, i64 %i.bx
  %.0.copyload.i2428 = load i32, ptr %i.cd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2428) #16, !srcloc !22
  %i.ce = add nuw nsw i64 %i.bx, 8                ; 2 uses
  %.val2313 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.val2313, i64 %i.ce
  %.0.copyload.i2429 = load i32, ptr %i.cf, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2429) #16, !srcloc !22
  %reass.sub2585 = sub i32 %.0.copyload.i2429, %1
  %i.cg = add i32 %reass.sub2585, -48
  %i.ch = ashr i32 %i.cg, 3
  %i.ci = add nsw i32 %i.ch, 3
  %.not2236 = icmp ult i32 %.0.copyload.i2428, %i.ci
  br i1 %.not2236, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = add i32 %.0.copyload.i2429, 24
  %.val2360 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %.val2360, i64 %i.ce
  store i32 %i.cj, ptr %i.ck, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cl = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 24)
  %.val2359 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.val2359, i64 %i.bx
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 1, ptr %i.cn, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.42104 = phi i32 [ %.0.copyload.i2429, %bb.y ], [ %i.cl, %bb.z ] ; 2 uses
  %i.co = zext i32 %.42104 to i64                 ; 2 uses
  %.val2380 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %.val2380, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i64 4294967296, ptr %i.cq, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %.pre-phi2656 = phi i64 [ %i.co, %bb.aa ], [ %i.ca, %bb.w ] ; 3 uses
  %.52105 = phi i32 [ %.42104, %bb.aa ], [ %.0.copyload.i2426, %bb.w ] ; 2 uses
  %.val2379 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2379, i64 %.pre-phi2656
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i64 0, ptr %i.cs, align 1
  %.val2406 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.val2406, i64 %.pre-phi2656
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i16 48, ptr %i.cu, align 1
  %.val2358 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %.val2358, i64 %.pre-phi2656
  store i32 0, ptr %i.cv, align 1
  %i.cw = add i32 %.52105, 4                      ; 2 uses
  %.not2237 = icmp eq i32 %5, 0
  br i1 %.not2237, label %bb.fw, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = add i32 %.52105, 5
  br label %bb.fv

bb.ad:                                            ; preds = %bb.u
  %i.cy = add i32 %i.b, -8
  %i.cz = add i32 %i.b, -4
  %i.da = tail call i32 @w2c_hermes_d2b(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.c, i32 noundef %i.cy, i32 noundef %i.cz) ; 8 uses
  %i.db = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %.val2312 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %.val2312, i64 %i.db
  %.0.copyload.i2430 = load i32, ptr %i.dc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2430) #16, !srcloc !22
  %i.dd = lshr i32 %.0.copyload.i2430, 20
  %i.de = and i32 %i.dd, 2047                     ; 2 uses
  %.not = icmp eq i32 %i.de, 0                    ; 2 uses
  %.val2311 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val2311, i64 %i.e ; 2 uses
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.i2431 = load i64, ptr %i.df, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i2431) #16, !srcloc !45
  %i.dg = and i64 %.0.copyload.i2431, 4503599627370495
  %i.dh = or disjoint i64 %i.dg, 4607182418800017408
  %i.di = add nsw i32 %i.de, -1023
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.0.copyload.i2432 = load i32, ptr %i.dj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2432) #16, !srcloc !22
  %.val2310 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %.val2310, i64 %i.e
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %.0.copyload.i2433 = load i32, ptr %i.dl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2433) #16, !srcloc !22
  %i.dm = add i32 %.0.copyload.i2433, %.0.copyload.i2432 ; 5 uses
  %i.dn = icmp sgt i32 %i.dm, -1042
  br i1 %i.dn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.do = sub nsw i32 14, %i.dm
  %i.dp = and i32 %i.do, 31
  %i.dq = shl i32 %.0.copyload.i2430, %i.dp
  %.val2309 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dr = getelementptr inbounds nuw i8, ptr %.val2309, i64 %i.e
  %.0.copyload.i2434 = load i32, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2434) #16, !srcloc !22
  %i.ds = add i32 %i.dm, 18
  %i.dt = and i32 %i.ds, 31
  %i.du = lshr i32 %.0.copyload.i2434, %i.dt
  %i.dv = or i32 %i.du, %i.dq
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %.val2308 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2308, i64 %i.e
  %.0.copyload.i2435 = load i32, ptr %i.dw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2435) #16, !srcloc !22
  %i.dx = sub i32 14, %i.dm
  %i.dy = and i32 %i.dx, 31
  %i.dz = shl i32 %.0.copyload.i2435, %i.dy
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.02048 = phi i32 [ %i.dv, %bb.ag ], [ %i.dz, %bb.ah ]
  %i.ea = uitofp i32 %.02048 to double
  %i.eb = bitcast double %i.ea to i64
  %i.ec = add nsw i64 %i.eb, -139611588448485376
  %i.ed = add i32 %i.dm, -1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %.02050 = phi i64 [ %i.dh, %bb.ae ], [ %i.ec, %bb.ai ]
  %.1 = phi i32 [ %i.di, %bb.ae ], [ %i.ed, %bb.ai ] ; 2 uses
  %i.ee = sitofp i32 %.1 to double
  %i.ef = fmul nnan double %i.ee, f0x3FD34413509F79FB
  %i.eg = bitcast i64 %.02050 to double
  %i.eh = fadd double %i.eg, -1.500000e+00
  %i.ei = fmul double %i.eh, f0x3FD287A7636F4361
  %i.ej = fadd double %i.ei, f0x3FC68A288B60C8B3
  %i.ek = fadd double %i.ef, %i.ej                ; 6 uses
  %i.el = tail call noundef double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp olt double %i.el, f0x41E0000000000000
  br i1 %i.em, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.en = fcmp ule double %i.ek, f0xC1E0000000200000
  %i.eo = fcmp uge double %i.ek, f0x41E0000000000000
  %.not2182 = or i1 %i.en, %i.eo
  br i1 %.not2182, label %bb.al, label %bb.am, !prof !28

bb.al:                                            ; preds = %bb.ak
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ep = fptosi double %i.ek to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am
  %.2 = phi i32 [ %i.ep, %bb.am ], [ -2147483648, %bb.aj ] ; 2 uses
  %i.eq = sitofp i32 %.2 to double
  %i.er = fcmp une double %i.ek, %i.eq
  %i.es = fcmp olt double %i.ek, 0.000000e+00
  %i.et = and i1 %i.es, %i.er
  %.neg = sext i1 %i.et to i32
  %i.eu = add i32 %.2, %.neg                      ; 6 uses
  %i.ev = icmp ugt i32 %i.eu, 22
  br i1 %i.ev, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val2412 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %.val2412, i64 %i.e
  %.0.copyload.i2436 = load double, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2436) #16, !srcloc !48
  %i.ex = shl nuw nsw i32 %i.eu, 3
  %.val2411 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %.val2411, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 70960
  %.0.copyload.i2437 = load double, ptr %i.fa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2437) #16, !srcloc !48
  %i.fb = fcmp uge double %.0.copyload.i2436, %.0.copyload.i2437
  br i1 %i.fb, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = add nsw i32 %i.eu, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.ap
  %.02068 = phi i32 [ %i.eu, %bb.an ], [ %i.eu, %bb.ao ], [ %i.fc, %bb.ap ] ; 14 uses
  %i.fd = add nuw nsw i64 %i.e, 12                ; 2 uses
  %.val2307 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %.val2307, i64 %i.fd
  %.0.copyload.i2438 = load i32, ptr %i.fe, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2438) #16, !srcloc !22
  %i.ff = xor i32 %.1, -1
  %i.fg = add i32 %.0.copyload.i2438, %i.ff       ; 3 uses
  %i.fh = sub i32 0, %i.fg
  %i.fi = icmp sgt i32 %i.fg, -1                  ; 2 uses
  %i.fj = select i1 %i.fi, i32 0, i32 %i.fh       ; 2 uses
  %i.fk = select i1 %i.fi, i32 %i.fg, i32 0       ; 2 uses
  %i.fl = icmp sgt i32 %.02068, -1
  br i1 %i.fl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fm = add i32 %i.fk, %.02068
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.fn = sub i32 %i.fj, %.02068
  %i.fo = sub i32 0, %.02068
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.02064 = phi i32 [ %i.fj, %bb.ar ], [ %i.fn, %bb.as ] ; 5 uses
  %.02056 = phi i32 [ %i.fm, %bb.ar ], [ %i.fk, %bb.as ]
  %.02051 = phi i32 [ %.02068, %bb.ar ], [ 0, %bb.as ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.ar ], [ %i.fo, %bb.as ]  ; 2 uses
  %i.fp = zext i32 %1 to i64                      ; 14 uses
  %i.fq = add nuw nsw i64 %i.fp, 12               ; 2 uses
  %.val2306 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %.val2306, i64 %i.fq
  %.0.copyload.i2439 = load i32, ptr %i.fr, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2439) #16, !srcloc !22
  %.not2183 = icmp eq i32 %.0.copyload.i2439, 0
  br i1 %.not2183, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fs = zext i32 %.0.copyload.i2439 to i64      ; 2 uses
  %.val2305 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw i8, ptr %.val2305, i64 %i.fs
  %.0.copyload.i2440 = load i32, ptr %i.ft, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2440) #16, !srcloc !22
  %.val2357 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %.val2357, i64 %i.fq
  store i32 %.0.copyload.i2440, ptr %i.fu, align 1
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  %.val2304 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2304, i64 %i.fp
  %.0.copyload.i2441 = load i32, ptr %i.fv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2441) #16, !srcloc !22
  %i.fw = add nuw nsw i64 %i.fp, 8                ; 2 uses
  %.val2303 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %.val2303, i64 %i.fw
  %.0.copyload.i2442 = load i32, ptr %i.fx, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2442) #16, !srcloc !22
  %reass.sub = sub i32 %.0.copyload.i2442, %1
  %i.fy = add i32 %reass.sub, -48
  %i.fz = ashr i32 %i.fy, 3
  %i.ga = add nsw i32 %i.fz, 3
  %i.gb = icmp ult i32 %.0.copyload.i2441, %i.ga
  br i1 %i.gb, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add i32 %.0.copyload.i2442, 24
  %.val2356 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gd = getelementptr inbounds nuw i8, ptr %.val2356, i64 %i.fw
  store i32 %i.gc, ptr %i.gd, align 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ge = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 24)
  %.val2355 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %.val2355, i64 %i.fp
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 1, ptr %i.gg, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.02062 = phi i32 [ %i.ge, %bb.ax ], [ %.0.copyload.i2442, %bb.aw ] ; 2 uses
  %i.gh = zext i32 %.02062 to i64                 ; 3 uses
  %.val2354 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %.val2354, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 1, ptr %i.gj, align 1
  %.val2353 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %.val2353, i64 %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 0, ptr %i.gl, align 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.au
  %.pre-phi2657 = phi i64 [ %i.gh, %bb.ay ], [ %i.fs, %bb.au ] ; 4 uses
  %.12063 = phi i32 [ %.02062, %bb.ay ], [ %.0.copyload.i2439, %bb.au ] ; 3 uses
  %.val2378 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gm = getelementptr inbounds nuw i8, ptr %.val2378, i64 %.pre-phi2657
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i64 0, ptr %i.gn, align 1
  %.val2352 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.go = getelementptr inbounds nuw i8, ptr %.val2352, i64 %.pre-phi2657
  store i32 0, ptr %i.go, align 1
  %i.gp = add i32 %.12063, 4                      ; 4 uses
  %.val2302 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %.val2302, i64 %i.e
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %.0.copyload.i2443 = load i32, ptr %i.gr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2443) #16, !srcloc !22
  %i.gs = icmp sgt i32 %.02068, 14
  %i.gt = icmp slt i32 %.0.copyload.i2443, 0
  %or.cond = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %or.cond, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = shl i32 %.02068, 3
  %i.gv = add i32 %i.gu, 70960
  %i.gw = zext i32 %i.gv to i64
  %.val2410 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gx = getelementptr inbounds nuw i8, ptr %.val2410, i64 %i.gw
  %.0.copyload.i2444 = load double, ptr %i.gx, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2444) #16, !srcloc !48
  %.val2409 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %.val2409, i64 %i.e
  %.0.copyload.i2445 = load double, ptr %i.gy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2445) #16, !srcloc !48
  %i.gz = fdiv double %.0.copyload.i2445, %.0.copyload.i2444 ; 4 uses
  %i.ha = tail call noundef double @llvm.fabs.f64(double %i.gz)
  %i.hb = fcmp olt double %i.ha, f0x41E0000000000000
  br i1 %i.hb, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hc = fcmp ule double %i.gz, f0xC1E0000000200000
  %i.hd = fcmp uge double %i.gz, f0x41E0000000000000
  %.not2186 = or i1 %i.hc, %i.hd
  br i1 %.not2186, label %bb.bc, label %bb.bd, !prof !28

bb.bc:                                            ; preds = %bb.bb
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.he = fptosi double %i.gz to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.ba, %bb.bd
  %.4 = phi i32 [ %i.he, %bb.bd ], [ -2147483648, %bb.ba ] ; 2 uses
  %i.hf = sitofp i32 %.4 to double
  %i.hg = fmul double %.0.copyload.i2444, %i.hf
  %i.hh = fsub double %.0.copyload.i2445, %i.hg
  %.val2416 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %.val2416, i64 %i.e
  store double %i.hh, ptr %i.hi, align 1
  %.val2405 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hj = trunc i32 %.4 to i8
  %i.hk = add i8 %i.hj, 48
  %6 = getelementptr inbounds nuw i8, ptr %.val2405, i64 %.pre-phi2657
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 %i.hk, ptr %i.hl, align 1
  %i.hm = add i32 %.12063, 5                      ; 2 uses
  %.val2408 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %.val2408, i64 %i.e
  %.0.copyload.i2446 = load double, ptr %i.hn, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2446) #16, !srcloc !48
  %i.ho = fcmp oeq double %.0.copyload.i2446, 0.000000e+00
  br i1 %i.ho, label %.loopexit2513, label %.preheader

.preheader:                                       ; preds = %bb.be, %bb.bi
  %.02084 = phi i32 [ %i.ie, %bb.bi ], [ %i.hm, %bb.be ] ; 2 uses
  %.02049 = phi double [ %.0.copyload.i2447, %bb.bi ], [ %.0.copyload.i2446, %bb.be ]
  %i.hp = fmul double %.02049, 1.000000e+01       ; 2 uses
  %i.hq = fdiv double %i.hp, %.0.copyload.i2444   ; 4 uses
  %i.hr = tail call noundef double @llvm.fabs.f64(double %i.hq)
  %i.hs = fcmp olt double %i.hr, f0x41E0000000000000
  br i1 %i.hs, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %.preheader
  %i.ht = fcmp ule double %i.hq, f0xC1E0000000200000
  %i.hu = fcmp uge double %i.hq, f0x41E0000000000000
  %.not2189 = or i1 %i.ht, %i.hu
  br i1 %.not2189, label %bb.bg, label %bb.bh, !prof !28

bb.bg:                                            ; preds = %bb.bf
  tail call void @wasm_rt_trap(i32 noundef 2) #17
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.hv = fptosi double %i.hq to i32
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader, %bb.bh
  %.5 = phi i32 [ %i.hv, %bb.bh ], [ -2147483648, %.preheader ] ; 2 uses
  %i.hw = sitofp i32 %.5 to double
  %i.hx = fmul double %.0.copyload.i2444, %i.hw
  %i.hy = fsub double %i.hp, %i.hx
  %.val2415 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.hz = getelementptr inbounds nuw i8, ptr %.val2415, i64 %i.e
  store double %i.hy, ptr %i.hz, align 1
  %i.ia = zext i32 %.02084 to i64
  %.val2404 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ib = trunc i32 %.5 to i8
  %i.ic = add i8 %i.ib, 48
  %i.id = getelementptr inbounds nuw i8, ptr %.val2404, i64 %i.ia
  store i8 %i.ic, ptr %i.id, align 1
  %i.ie = add i32 %.02084, 1                      ; 2 uses
  %.val2407 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.if = getelementptr inbounds nuw i8, ptr %.val2407, i64 %i.e
  %.0.copyload.i2447 = load double, ptr %i.if, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(double %.0.copyload.i2447) #16, !srcloc !48
  %i.ig = fcmp oeq double %.0.copyload.i2447, 0.000000e+00
  br i1 %i.ig, label %.loopexit2513, label %.preheader

bb.bj:                                            ; preds = %bb.az
  %.val2301 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ih = getelementptr inbounds nuw i8, ptr %.val2301, i64 %i.fd
  %.0.copyload.i2448 = load i32, ptr %i.ih, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2448) #16, !srcloc !22
  %i.ii = sub i32 54, %.0.copyload.i2448
  %i.ij = add i32 %.0.copyload.i2443, 1075
  %i.ik = select i1 %.not, i32 %i.ij, i32 %i.ii   ; 2 uses
  %i.il = add nuw nsw i64 %i.fp, 16               ; 4 uses
  %.val2300 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %.val2300, i64 %i.il
  %.0.copyload.i2449 = load i32, ptr %i.im, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2449) #16, !srcloc !22
  %.not2194 = icmp eq i32 %.0.copyload.i2449, 0
  br i1 %.not2194, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.in = zext i32 %.0.copyload.i2449 to i64      ; 2 uses
  %.val2299 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.io = getelementptr inbounds nuw i8, ptr %.val2299, i64 %i.in
  %.0.copyload.i2450 = load i32, ptr %i.io, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2450) #16, !srcloc !22
  %.val2351 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ip = getelementptr inbounds nuw i8, ptr %.val2351, i64 %i.il
  store i32 %.0.copyload.i2450, ptr %i.ip, align 1
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %.val2298 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.iq = getelementptr inbounds nuw i8, ptr %.val2298, i64 %i.fp
  %.0.copyload.i2451 = load i32, ptr %i.iq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2451) #16, !srcloc !22
  %i.ir = add nuw nsw i64 %i.fp, 8                ; 2 uses
  %.val2297 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.is = getelementptr inbounds nuw i8, ptr %.val2297, i64 %i.ir
  %.0.copyload.i2452 = load i32, ptr %i.is, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2452) #16, !srcloc !22
  %reass.sub2581 = sub i32 %.0.copyload.i2452, %1
  %i.it = add i32 %reass.sub2581, -48
  %i.iu = ashr i32 %i.it, 3
  %i.iv = add nsw i32 %i.iu, 4
  %.not2195 = icmp ult i32 %.0.copyload.i2451, %i.iv
  br i1 %.not2195, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = add i32 %.0.copyload.i2452, 32
  %.val2350 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ix = getelementptr inbounds nuw i8, ptr %.val2350, i64 %i.ir
  store i32 %i.iw, ptr %i.ix, align 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.iy = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 32)
  %.val2349 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.iz = getelementptr inbounds nuw i8, ptr %.val2349, i64 %i.fp
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store i32 1, ptr %i.ja, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.02072 = phi i32 [ %.0.copyload.i2452, %bb.bm ], [ %i.iy, %bb.bn ] ; 2 uses
  %i.jb = zext i32 %.02072 to i64                 ; 2 uses
  %.val2377 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.jc = getelementptr inbounds nuw i8, ptr %.val2377, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i64 8589934593, ptr %i.jd, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bk
  %.pre-phi2658 = phi i64 [ %i.jb, %bb.bo ], [ %i.in, %bb.bk ] ; 2 uses
  %.12073 = phi i32 [ %.02072, %bb.bo ], [ %.0.copyload.i2449, %bb.bk ] ; 2 uses
  %i.je = add i32 %i.ik, %.02056                  ; 4 uses
  %.val2348 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.jf = getelementptr inbounds nuw i8, ptr %.val2348, i64 %.pre-phi2658
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  store i32 1, ptr %i.jg, align 1
  %.val2376 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.jh = getelementptr inbounds nuw i8, ptr %.val2376, i64 %.pre-phi2658
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i64 4294967296, ptr %i.ji, align 1
  %i.jj = add i32 %i.ik, %.02064                  ; 2 uses
  %i.jk = icmp slt i32 %.02064, 1
  %i.jl = icmp slt i32 %i.je, 1
  %or.cond2245 = select i1 %i.jk, i1 true, i1 %i.jl
  br i1 %or.cond2245, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jm = tail call i32 @llvm.umin.i32(i32 %.02064, i32 %i.je) ; 3 uses
  %i.jn = sub nsw i32 %i.je, %i.jm
  %i.jo = sub nsw i32 %.02064, %i.jm
  %i.jp = sub i32 %i.jj, %i.jm
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.72107 = phi i32 [ %i.jj, %bb.bp ], [ %i.jp, %bb.bq ] ; 3 uses
  %.12065 = phi i32 [ %.02064, %bb.bp ], [ %i.jo, %bb.bq ]
  %.12057 = phi i32 [ %i.je, %bb.bp ], [ %i.jn, %bb.bq ] ; 3 uses
  %i.jq = icmp slt i32 %.3, 1
  br i1 %i.jq, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jr = tail call i32 @w2c_hermes_pow5mult(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %.12073, i32 noundef %.3) #16 ; 4 uses
  %i.js = tail call i32 @w2c_hermes_mult(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.jr, i32 noundef %i.da) #16 ; 3 uses
  %.not2196 = icmp eq i32 %i.da, 0
  br i1 %.not2196, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jt = zext i32 %i.da to i64                   ; 2 uses
  %.val2296 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %.val2296, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.0.copyload.i2453 = load i32, ptr %i.jv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2453) #16, !srcloc !22
  %i.jw = icmp sgt i32 %.0.copyload.i2453, 7
  br i1 %i.jw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.da)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jx = shl i32 %.0.copyload.i2453, 2
  %i.jy = add i32 %i.jx, %1
  %i.jz = zext i32 %i.jy to i64
  %i.ka = add nuw nsw i64 %i.jz, 12               ; 2 uses
  %.val2295 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kb = getelementptr inbounds nuw i8, ptr %.val2295, i64 %i.ka
  %.0.copyload.i2454 = load i32, ptr %i.kb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2454) #16, !srcloc !22
  %.val2347 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kc = getelementptr inbounds nuw i8, ptr %.val2347, i64 %i.jt
  store i32 %.0.copyload.i2454, ptr %i.kc, align 1
  %.val2346 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kd = getelementptr inbounds nuw i8, ptr %.val2346, i64 %i.ka
  store i32 %i.da, ptr %i.kd, align 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.br, %bb.bs, %bb.bv, %bb.bu
  %.12085 = phi i32 [ %i.js, %bb.bv ], [ %i.js, %bb.bs ], [ %i.js, %bb.bu ], [ %i.da, %bb.br ] ; 2 uses
  %.22074 = phi i32 [ %i.jr, %bb.bv ], [ %i.jr, %bb.bs ], [ %i.jr, %bb.bu ], [ %.12073, %bb.br ] ; 5 uses
  %.val2294 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ke = getelementptr inbounds nuw i8, ptr %.val2294, i64 %i.il
  %.0.copyload.i2455 = load i32, ptr %i.ke, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2455) #16, !srcloc !22
  %.not2197 = icmp eq i32 %.0.copyload.i2455, 0
  br i1 %.not2197, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kf = zext i32 %.0.copyload.i2455 to i64      ; 2 uses
  %.val2293 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kg = getelementptr inbounds nuw i8, ptr %.val2293, i64 %i.kf
  %.0.copyload.i2456 = load i32, ptr %i.kg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2456) #16, !srcloc !22
  %.val2345 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kh = getelementptr inbounds nuw i8, ptr %.val2345, i64 %i.il
  store i32 %.0.copyload.i2456, ptr %i.kh, align 1
  br label %bb.cc

bb.by:                                            ; preds = %bb.bw
  %.val2292 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ki = getelementptr inbounds nuw i8, ptr %.val2292, i64 %i.fp
  %.0.copyload.i2457 = load i32, ptr %i.ki, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2457) #16, !srcloc !22
  %i.kj = add nuw nsw i64 %i.fp, 8                ; 2 uses
  %.val2291 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kk = getelementptr inbounds nuw i8, ptr %.val2291, i64 %i.kj
  %.0.copyload.i2458 = load i32, ptr %i.kk, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2458) #16, !srcloc !22
  %reass.sub2582 = sub i32 %.0.copyload.i2458, %1
  %i.kl = add i32 %reass.sub2582, -48
  %i.km = ashr i32 %i.kl, 3
  %i.kn = add nsw i32 %i.km, 4
  %.not2198 = icmp ult i32 %.0.copyload.i2457, %i.kn
  br i1 %.not2198, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ko = add i32 %.0.copyload.i2458, 32
  %.val2344 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kp = getelementptr inbounds nuw i8, ptr %.val2344, i64 %i.kj
  store i32 %i.ko, ptr %i.kp, align 1
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.kq = tail call i32 @w2c_hermes_dlmalloc(ptr noundef nonnull %0, i32 noundef 32)
  %.val2343 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.kr = getelementptr inbounds nuw i8, ptr %.val2343, i64 %i.fp
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 1, ptr %i.ks, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.02080 = phi i32 [ %.0.copyload.i2458, %bb.bz ], [ %i.kq, %bb.ca ] ; 2 uses
  %i.kt = zext i32 %.02080 to i64                 ; 2 uses
  %.val2375 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ku = getelementptr inbounds nuw i8, ptr %.val2375, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  store i64 8589934593, ptr %i.kv, align 1
  br label %bb.cc

end_hunk_3
begin_hunk_4_@w2c_hermes_g_dtoa:bb.a
bb.et:                                            ; preds = %bb.es
  %i.ur = and i32 %i.pr, 1
  %.not2226 = icmp eq i32 %i.ur, 0
  br i1 %.not2226, label %.preheader2825, label %bb.fb

bb.eu:                                            ; preds = %bb.eo
  %.not2224 = icmp slt i32 %.0.copyload.i2493, %.0.copyload.i2492
  br i1 %.not2224, label %bb.fb, label %.preheader2825

.preheader2825:                                   ; preds = %bb.eu, %bb.et, %bb.er
  br label %bb.ev

bb.ev:                                            ; preds = %.preheader2825, %bb.ev
  %.42096 = phi i32 [ %i.us, %bb.ev ], [ %i.tq, %.preheader2825 ] ; 2 uses
  %i.us = add i32 %.42096, -1                     ; 2 uses
  %i.ut = zext i32 %i.us to i64
  %.val2389 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uu = getelementptr inbounds nuw i8, ptr %.val2389, i64 %i.ut
  %.0.copyload.i2496 = load i8, ptr %i.uu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2496) #16, !srcloc !33
  %i.uv = icmp eq i8 %.0.copyload.i2496, 48
  br i1 %i.uv, label %bb.ev, label %.loopexit

bb.ew:                                            ; preds = %bb.ec
  %.not2223 = icmp slt i32 %.0.copyload.i2489, %.0.copyload.i2488
  br i1 %.not2223, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew, %bb.eh, %bb.ef
  %i.uw = icmp eq i32 %i.rt, 57
  br i1 %i.uw, label %bb.fa, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ux = add i32 %i.pr, 49
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ew, %bb.eh, %bb.ef, %bb.eb, %bb.ea, %bb.dz, %bb.ey
  %.22113 = phi i32 [ %.12112, %bb.dz ], [ %i.sm, %bb.ew ], [ %i.sm, %bb.ey ], [ %i.sm, %bb.ef ], [ %i.sm, %bb.eh ], [ %.12112, %bb.ea ], [ %.12112, %bb.eb ]
  %.62090 = phi i32 [ %i.rt, %bb.dz ], [ %i.rt, %bb.ew ], [ %i.ux, %bb.ey ], [ %i.rt, %bb.ef ], [ %i.rt, %bb.eh ], [ %i.rt, %bb.ea ], [ %i.rt, %bb.eb ]
  %i.uy = zext i32 %.32095 to i64
  %.val2400 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.uz = trunc i32 %.62090 to i8
  %i.va = getelementptr inbounds nuw i8, ptr %.val2400, i64 %i.uy
  store i8 %i.uz, ptr %i.va, align 1
  %i.vb = add i32 %.32095, 1
  br label %.loopexit

bb.fa:                                            ; preds = %bb.ex, %bb.ej, %bb.dt
  %.32114 = phi i32 [ %.12112, %bb.ej ], [ %i.sm, %bb.ex ], [ %.12112, %bb.dt ]
  %i.vc = zext i32 %.32095 to i64
  %.val2399 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vd = getelementptr inbounds nuw i8, ptr %.val2399, i64 %i.vc
  store i8 57, ptr %i.vd, align 1
  %i.ve = add i32 %.32095, 1
  br label %bb.fb

bb.fb:                                            ; preds = %bb.er, %bb.et, %bb.eu, %bb.fa
  %.42115 = phi i32 [ %.32114, %bb.fa ], [ %i.tx, %bb.eu ], [ %i.tx, %bb.et ], [ %i.tx, %bb.er ] ; 2 uses
  %.10 = phi i32 [ %i.ve, %bb.fa ], [ %i.tq, %bb.eu ], [ %i.tq, %bb.et ], [ %i.tq, %bb.er ]
  %i.vf = add i32 %.12063, 5
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fd, %bb.fb
  %.72091 = phi i32 [ %.10, %bb.fb ], [ %i.vg, %bb.fd ] ; 2 uses
  %i.vg = add i32 %.72091, -1                     ; 3 uses
  %i.vh = zext i32 %i.vg to i64                   ; 2 uses
  %.val2388 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vi = getelementptr inbounds nuw i8, ptr %.val2388, i64 %i.vh
  %.0.copyload.i2497 = load i8, ptr %i.vi, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2497) #16, !srcloc !33
  %.not2228 = icmp eq i8 %.0.copyload.i2497, 57
  br i1 %.not2228, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %.not2229 = icmp eq i32 %i.vg, %i.gp
  br i1 %.not2229, label %bb.fe, label %bb.fc

bb.fe:                                            ; preds = %bb.fd
  %.val2398 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vj = getelementptr inbounds nuw i8, ptr %.val2398, i64 %.pre-phi2657
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  store i8 49, ptr %i.vk, align 1
  %i.vl = add i32 %.12069, 1
  br label %.loopexit

bb.ff:                                            ; preds = %bb.fc
  %i.vm = add i8 %.0.copyload.i2497, 1
  %.val2397 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vn = getelementptr inbounds nuw i8, ptr %.val2397, i64 %i.vh
  store i8 %i.vm, ptr %i.vn, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ev, %bb.ff, %bb.fe, %bb.ez, %bb.ek, %bb.du
  %.52116 = phi i32 [ %.42115, %bb.ff ], [ %.42115, %bb.fe ], [ %.12112, %bb.ek ], [ %.12112, %bb.du ], [ %.22113, %bb.ez ], [ %i.tx, %bb.ev ] ; 3 uses
  %.52097 = phi i32 [ %.72091, %bb.ff ], [ %i.vf, %bb.fe ], [ %i.tm, %bb.ek ], [ %i.sd, %bb.du ], [ %i.vb, %bb.ez ], [ %.42096, %bb.ev ] ; 3 uses
  %.22070 = phi i32 [ %.12069, %bb.ff ], [ %i.vl, %bb.fe ], [ %.12069, %bb.ek ], [ %.12069, %bb.du ], [ %.12069, %bb.ez ], [ %.12069, %bb.ev ] ; 3 uses
  %.not2230 = icmp eq i32 %.32083, 0
  br i1 %.not2230, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %.loopexit
  %i.vo = zext i32 %.32083 to i64                 ; 2 uses
  %.val2255 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vp = getelementptr inbounds nuw i8, ptr %.val2255, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %.0.copyload.i2498 = load i32, ptr %i.vq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2498) #16, !srcloc !22
  %i.vr = icmp sgt i32 %.0.copyload.i2498, 7
  br i1 %i.vr, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.32083)
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.vs = shl i32 %.0.copyload.i2498, 2
  %i.vt = add i32 %i.vs, %1
  %i.vu = zext i32 %i.vt to i64
  %i.vv = add nuw nsw i64 %i.vu, 12               ; 2 uses
  %.val2254 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vw = getelementptr inbounds nuw i8, ptr %.val2254, i64 %i.vv
  %.0.copyload.i2499 = load i32, ptr %i.vw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2499) #16, !srcloc !22
  %.val2334 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vx = getelementptr inbounds nuw i8, ptr %.val2334, i64 %i.vo
  store i32 %.0.copyload.i2499, ptr %i.vx, align 1
  %.val2333 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.vy = getelementptr inbounds nuw i8, ptr %.val2333, i64 %i.vv
  store i32 %.32083, ptr %i.vy, align 1
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit, %bb.fi, %bb.fh
  %.not2231 = icmp eq i32 %.72079, 0
  br i1 %.not2231, label %.loopexit2513, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not2232 = icmp eq i32 %.32067, 0
  %i.vz = icmp eq i32 %.72079, %.32067
  %or.cond2247 = select i1 %.not2232, i1 true, i1 %i.vz
  br i1 %or.cond2247, label %bb.fo, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %.val2253 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wa = getelementptr inbounds nuw i8, ptr %.val2253, i64 %i.pv
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %.0.copyload.i2500 = load i32, ptr %i.wb, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2500) #16, !srcloc !22
  %i.wc = icmp sgt i32 %.0.copyload.i2500, 7
  br i1 %i.wc, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.32067)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %i.wd = shl i32 %.0.copyload.i2500, 2
  %i.we = add i32 %i.wd, %1
  %i.wf = zext i32 %i.we to i64
  %i.wg = add nuw nsw i64 %i.wf, 12               ; 2 uses
  %.val2252 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wh = getelementptr inbounds nuw i8, ptr %.val2252, i64 %i.wg
  %.0.copyload.i2501 = load i32, ptr %i.wh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2501) #16, !srcloc !22
  %.val2332 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wi = getelementptr inbounds nuw i8, ptr %.val2332, i64 %i.pv
  store i32 %.0.copyload.i2501, ptr %i.wi, align 1
  %.val2331 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wj = getelementptr inbounds nuw i8, ptr %.val2331, i64 %i.wg
  store i32 %.32067, ptr %i.wj, align 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fk, %bb.fn, %bb.fm
  %i.wk = zext i32 %.72079 to i64                 ; 2 uses
  %.val2251 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wl = getelementptr inbounds nuw i8, ptr %.val2251, i64 %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %.0.copyload.i2502 = load i32, ptr %i.wm, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2502) #16, !srcloc !22
  %i.wn = icmp sgt i32 %.0.copyload.i2502, 7
  br i1 %i.wn, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.72079)
  br label %.loopexit2513

bb.fq:                                            ; preds = %bb.fo
  %i.wo = shl i32 %.0.copyload.i2502, 2
  %i.wp = add i32 %i.wo, %1
  %i.wq = zext i32 %i.wp to i64
  %i.wr = add nuw nsw i64 %i.wq, 12               ; 2 uses
  %.val2250 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ws = getelementptr inbounds nuw i8, ptr %.val2250, i64 %i.wr
  %.0.copyload.i2503 = load i32, ptr %i.ws, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2503) #16, !srcloc !22
  %.val2330 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wt = getelementptr inbounds nuw i8, ptr %.val2330, i64 %i.wk
  store i32 %.0.copyload.i2503, ptr %i.wt, align 1
  %.val2329 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.wu = getelementptr inbounds nuw i8, ptr %.val2329, i64 %i.wr
  store i32 %.72079, ptr %i.wu, align 1
  br label %.loopexit2513

.loopexit2513:                                    ; preds = %bb.bi, %bb.be, %bb.fj, %bb.fq, %bb.fp
  %.62117 = phi i32 [ %.52116, %bb.fj ], [ %.52116, %bb.fp ], [ %.52116, %bb.fq ], [ %i.da, %bb.be ], [ %i.da, %bb.bi ] ; 4 uses
  %.62098 = phi i32 [ %.52097, %bb.fj ], [ %.52097, %bb.fp ], [ %.52097, %bb.fq ], [ %i.hm, %bb.be ], [ %i.ie, %bb.bi ] ; 2 uses
  %.32071 = phi i32 [ %.22070, %bb.fj ], [ %.22070, %bb.fp ], [ %.22070, %bb.fq ], [ %.02068, %bb.be ], [ %.02068, %bb.bi ]
  %.not2233 = icmp eq i32 %.62117, 0
  br i1 %.not2233, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %.loopexit2513
  %i.wv = zext i32 %.62117 to i64                 ; 2 uses
  %.val2249 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.ww = getelementptr inbounds nuw i8, ptr %.val2249, i64 %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %.0.copyload.i2505 = load i32, ptr %i.wx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2505) #16, !srcloc !22
  %i.wy = icmp sgt i32 %.0.copyload.i2505, 7
  br i1 %i.wy, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.62117)
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fr
  %i.wz = shl i32 %.0.copyload.i2505, 2
  %i.xa = add i32 %i.wz, %1
  %i.xb = zext i32 %i.xa to i64
  %i.xc = add nuw nsw i64 %i.xb, 12               ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.xc
  %.0.copyload.i2506 = load i32, ptr %i.xd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2506) #16, !srcloc !22
  %.val2328 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xe = getelementptr inbounds nuw i8, ptr %.val2328, i64 %i.wv
  store i32 %.0.copyload.i2506, ptr %i.xe, align 1
  %.val2327 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xf = getelementptr inbounds nuw i8, ptr %.val2327, i64 %i.xc
  store i32 %.62117, ptr %i.xf, align 1
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit2513, %bb.ft, %bb.fs
  %i.xg = zext i32 %.62098 to i64
  %.val2393 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xh = getelementptr inbounds nuw i8, ptr %.val2393, i64 %i.xg
  store i8 0, ptr %i.xh, align 1
  %i.xi = add i32 %.32071, 1
  %i.xj = zext i32 %3 to i64
  %.val2326 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xk = getelementptr inbounds nuw i8, ptr %.val2326, i64 %i.xj
  store i32 %i.xi, ptr %i.xk, align 1
  %.not2234 = icmp eq i32 %5, 0
  br i1 %.not2234, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ac, %bb.t, %bb.l
  %.72099 = phi i32 [ %i.aw, %bb.l ], [ %i.bs, %bb.t ], [ %i.cx, %bb.ac ], [ %.62098, %bb.fu ]
  %.02052 = phi i32 [ %i.av, %bb.l ], [ %i.br, %bb.t ], [ %i.cw, %bb.ac ], [ %i.gp, %bb.fu ]
  %i.xl = zext i32 %5 to i64
  %.val2325 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.xm = getelementptr inbounds nuw i8, ptr %.val2325, i64 %i.xl
  store i32 %.72099, ptr %i.xm, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.ab, %bb.s, %bb.k, %bb.fv
  %.12053 = phi i32 [ %i.av, %bb.k ], [ %.02052, %bb.fv ], [ %i.br, %bb.s ], [ %i.cw, %bb.ab ], [ %i.gp, %bb.fu ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 %.12053
}

declare i32 @w2c_hermes_strcmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_0x5F_map_file(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = add i32 %i.b, -112
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call i32 @w2c_hermes_strcmp(ptr noundef %0, i32 noundef %1, i32 noundef 42685) #16
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @w2c_hermes_strcmp(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 18883) #16
  %.not19.i = icmp eq i32 %i.e, 0
  br i1 %.not19.i, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @w2c_hermes_strcmp(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 35589) #16
  %.not20.i = icmp eq i32 %i.f, 0
  br i1 %.not20.i, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val38 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val38, i64 272032
  store i32 63, ptr %i.h, align 1
  br label %bb.e

select.unfold:                                    ; preds = %bb.c, %bb.a, %bb.b
  %.0.i.ph = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 272032
  store i32 52, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call i32 @w2c_wasi__snapshot__preview1_fd_close(ptr noundef %i.l, i32 noundef %.0.i.ph) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %select.unfold
  store i32 %i.b, ptr %i.a, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 3) i32 @w2c_hermes_checkint(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i64 %1, 52
  %i.b = trunc nuw nsw i64 %i.a to i32
  %i.c = and i32 %i.b, 2047                       ; 3 uses
  %i.d = icmp samesign ult i32 %i.c, 1023
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %i.c, 1075
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw nsw i32 1075, %i.c
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 1, %i.g                  ; 2 uses
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, %1
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.h, %1
  %.not39 = icmp eq i64 %i.k, 0
  %i.l = select i1 %.not39, i32 2, i32 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 2, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_char0x2A0x20llvh0x3A0x3Ahashing0x3A0x3Adetail0x3A0x3Ahash_combine_recursive_helper0x3A0x3Acombine_data0x3Cunsigned0x20int0x3E0x28unsigned0x20long0x260x2C0x20char0x2A0x2C0x20char0x2A0x2C0x20unsigned0x20int0x29(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = add i32 %i.b, -16                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 42 uses
  %i.e = zext i32 %i.c to i64
  %.val536 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %.val536, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %5, ptr %i.g, align 1
  %i.h = add i32 %3, 4                            ; 2 uses
  %.not = icmp ult i32 %4, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %3 to i64
  %.val535 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %.val535, i64 %i.i
  store i32 %5, ptr %i.j, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = add i32 %i.b, -4                         ; 2 uses
  %i.l = sub i32 %4, %3                           ; 3 uses
  %i.m = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %i.k, i32 noundef %i.l) ; 0 uses
  %i.n = zext i32 %2 to i64                       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 %i.n
  %.0.copyload.i = load i32, ptr %i.o, align 1    ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #16, !srcloc !22
  %.not533 = icmp eq i32 %.0.copyload.i, 0
  %i.p = zext i32 %1 to i64                       ; 31 uses
  br i1 %.not533, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val574 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.val574, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.0.copyload.i575 = load i64, ptr %i.r, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i575) #16, !srcloc !45
  %.val573 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.val573, i64 %i.p
  %.0.copyload.i576 = load i64, ptr %i.s, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i576) #16, !srcloc !45
  %.val572 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val572, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %.0.copyload.i577 = load i64, ptr %i.u, align 1 ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i577) #16, !srcloc !45
  %i.v = mul i64 %.0.copyload.i577, -7894485801551159383
  %i.w = add i64 %i.v, %.0.copyload.i576          ; 3 uses
  %.val571 = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.val571, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.0.copyload.i578 = load i64, ptr %i.y, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i578) #16, !srcloc !45
end_hunk_4
