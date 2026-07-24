inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 598
begin_hunk_0_@_ZN5arrow8internal13unpack_avx512ItEEvPKhPT_iii:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr readonly align 1 %i.wf, i64 %i.wg, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i210.i = load i64, ptr %i.r, align 8, !tbaa !19
  %i.wh = zext nneg i32 %i.vw to i64
  %i.wi = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i210.i, %i.wh
  %i.wj = trunc i64 %i.wi to i16
  %i.wk = and i16 %i.wj, 127
  store i16 %i.wk, ptr %.026.i.i207.i, align 2, !tbaa !41
  %i.wl = getelementptr inbounds nuw i8, ptr %.026.i.i207.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.wm = icmp slt i32 %i.vy, %i.vu
  br i1 %i.wm, label %.lr.ph.i.i206.i, label %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !61

_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.p, %.lr.ph.i.i206.i, %bb.o
  %.023.lcssa.i.i192.i = phi i32 [ %4, %bb.o ], [ %.02325.i.i208.i, %.lr.ph.i.i206.i ], [ %i.vy, %bb.p ]
  %i.wn = sub nsw i32 %.023.lcssa.i.i192.i, %4
  %i.wo = sdiv i32 %i.wn, 7                       ; 3 uses
  %i.wp = mul nsw i32 %i.wo, 7
  %i.wq = add nsw i32 %i.wp, %4
  %i.wr = sub nsw i32 %2, %i.wo                   ; 4 uses
  %i.ws = sdiv i32 %i.wq, 8
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds i8, ptr %0, i64 %i.wt ; 2 uses
  %i.wv = sext i32 %i.wo to i64
  %i.ww = getelementptr inbounds [2 x i8], ptr %1, i64 %i.wv ; 2 uses
  %i.wx = sdiv i32 %i.wr, 32                      ; 2 uses
  %i.wy = icmp sgt i32 %i.wr, 31
  br i1 %i.wy, label %.lr.ph.i201.i, label %._crit_edge.i193.i

._crit_edge.i193.i:                               ; preds = %.lr.ph.i201.i, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i194.i = phi ptr [ %i.ww, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.yt, %.lr.ph.i201.i ]
  %.025.lcssa.i195.i = phi ptr [ %i.wu, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.ys, %.lr.ph.i201.i ]
  %i.wz = shl nsw i32 %i.wx, 5                    ; 2 uses
  %i.xa = sub nsw i32 %i.wr, %i.wz                ; 2 uses
  %i.xb = icmp samesign ult i32 %i.xa, 32
  tail call void @llvm.assume(i1 %i.xb)
  %i.xc = mul nuw nsw i32 %i.xa, 7
  %.not.i196.i = icmp eq i32 %i.wr, %i.wz
  br i1 %.not.i196.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i197.i

.lr.ph.i28.i197.i:                                ; preds = %._crit_edge.i193.i, %.lr.ph.i28.i197.i
  %.024.i.i198.i = phi ptr [ %i.xs, %.lr.ph.i28.i197.i ], [ %.026.lcssa.i194.i, %._crit_edge.i193.i ] ; 2 uses
  %.02223.i.i199.i = phi i32 [ %i.xe, %.lr.ph.i28.i197.i ], [ 0, %._crit_edge.i193.i ] ; 4 uses
  %i.xd = lshr i32 %.02223.i.i199.i, 3            ; 2 uses
  %i.xe = add nuw nsw i32 %.02223.i.i199.i, 7     ; 2 uses
  %i.xf = add nuw nsw i32 %.02223.i.i199.i, 6
  %i.xg = lshr i32 %i.xf, 3
  %i.xh = sub nsw i32 %i.xg, %i.xd                ; 2 uses
  %i.xi = add nsw i32 %i.xh, 1
  %i.xj = icmp slt i32 %i.xh, 2
  tail call void @llvm.assume(i1 %i.xj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.xk = zext nneg i32 %i.xd to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i195.i, i64 %i.xk
  %i.xm = sext i32 %i.xi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.xl, i64 %i.xm, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i200.i = load i64, ptr %i.q, align 8, !tbaa !19
  %i.xn = and i32 %.02223.i.i199.i, 7
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i200.i, %i.xo
  %i.xq = trunc i64 %i.xp to i16
  %i.xr = and i16 %i.xq, 127
  store i16 %i.xr, ptr %.024.i.i198.i, align 2, !tbaa !41
  %i.xs = getelementptr inbounds nuw i8, ptr %.024.i.i198.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.xt = icmp samesign ult i32 %i.xe, %i.xc
  br i1 %i.xt, label %.lr.ph.i28.i197.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !62

.lr.ph.i201.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i201.i
  %.032.i202.i = phi i32 [ %i.yu, %.lr.ph.i201.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i203.i = phi ptr [ %i.ys, %.lr.ph.i201.i ], [ %i.wu, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %.02630.i204.i = phi ptr [ %i.yt, %.lr.ph.i201.i ], [ %i.ww, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 12
  %i.xv = load <4 x i32>, ptr %i.xu, align 1      ; 3 uses
  %i.xw = load <4 x i32>, ptr %.02531.i203.i, align 1 ; 3 uses
  %i.xx = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.xy = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.xz = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.xx, <3 x i32> %i.xy, <3 x i32> <i32 4, i32 1, i32 5>)
  %i.ya = shufflevector <4 x i32> %i.xw, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.yb = shufflevector <3 x i32> %i.xz, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yc = shufflevector <7 x i32> %i.ya, <7 x i32> %i.yb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3>
  %i.yd = lshr <16 x i32> %i.yc, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17, i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %i.ye = shufflevector <4 x i32> %i.xv, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.yf = shufflevector <4 x i32> %i.xv, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.yg = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.ye, <3 x i32> %i.yf, <3 x i32> <i32 2, i32 6, i32 3>)
  %i.yh = shufflevector <4 x i32> %i.xv, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.yi = shufflevector <3 x i32> %i.yg, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yj = shufflevector <7 x i32> %i.yh, <7 x i32> %i.yi, <16 x i32> <i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3, i32 3, i32 3>
  %i.yk = lshr <16 x i32> %i.yj, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1, i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.yl = bitcast <16 x i32> %i.yd to <32 x i16>
  %i.ym = and <32 x i16> %i.yl, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.yn = shufflevector <32 x i16> %i.ym, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.yn, ptr %.02630.i204.i, align 2, !tbaa !41
  %i.yo = bitcast <16 x i32> %i.yk to <32 x i16>
  %i.yp = and <32 x i16> %i.yo, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.yq = getelementptr inbounds nuw i8, ptr %.02630.i204.i, i64 32
  %i.yr = shufflevector <32 x i16> %i.yp, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.yr, ptr %i.yq, align 2, !tbaa !41
  %i.ys = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 28 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.02630.i204.i, i64 64 ; 2 uses
  %i.yu = add nuw nsw i32 %.032.i202.i, 1         ; 2 uses
  %exitcond.not.i205.i = icmp eq i32 %i.yu, %i.wx
  br i1 %exitcond.not.i205.i, label %._crit_edge.i193.i, label %.lr.ph.i201.i, !llvm.loop !63

bb.q:                                             ; preds = %bb.a
  %i.yv = shl nsw i32 %2, 3
  %i.yw = add nsw i32 %4, %i.yv
  %i.yx = icmp sgt i32 %2, 0
  br i1 %i.yx, label %.lr.ph.i.i225.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i225.i:                                  ; preds = %bb.q, %bb.r
  %.026.i.i226.i = phi ptr [ %i.zn, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i227.i = phi i32 [ %i.za, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.yy = srem i32 %.02325.i.i227.i, 8            ; 2 uses
  %i.yz = sdiv i32 %.02325.i.i227.i, 8            ; 2 uses
  %.not.i.i228.i = icmp eq i32 %i.yy, 0
  br i1 %.not.i.i228.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i225.i
  %i.za = add nsw i32 %.02325.i.i227.i, 8         ; 3 uses
  %i.zb = add nsw i32 %.02325.i.i227.i, 7
  %i.zc = sdiv i32 %i.zb, 8
  %i.zd = sub nsw i32 %i.zc, %i.yz                ; 2 uses
  %i.ze = add nsw i32 %i.zd, 1
  %i.zf = icmp slt i32 %i.zd, 2
  tail call void @llvm.assume(i1 %i.zf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !19
  %i.zg = sext i32 %i.yz to i64
  %i.zh = getelementptr inbounds i8, ptr %0, i64 %i.zg
  %i.zi = sext i32 %i.ze to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.zh, i64 %i.zi, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i229.i = load i64, ptr %i.p, align 8, !tbaa !19
  %i.zj = zext nneg i32 %i.yy to i64
  %i.zk = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i229.i, %i.zj
  %i.zl = trunc i64 %i.zk to i16
  %i.zm = and i16 %i.zl, 255
  store i16 %i.zm, ptr %.026.i.i226.i, align 2, !tbaa !41
  %i.zn = getelementptr inbounds nuw i8, ptr %.026.i.i226.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.zo = icmp slt i32 %i.za, %i.yw
  br i1 %i.zo, label %.lr.ph.i.i225.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !64

_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.r, %.lr.ph.i.i225.i, %bb.q
  %.023.lcssa.i.i211.i = phi i32 [ %4, %bb.q ], [ %.02325.i.i227.i, %.lr.ph.i.i225.i ], [ %i.za, %bb.r ]
  %i.zp = sub nsw i32 %.023.lcssa.i.i211.i, %4
  %i.zq = sdiv i32 %i.zp, 8                       ; 3 uses
  %i.zr = shl nsw i32 %i.zq, 3
  %i.zs = add nsw i32 %i.zr, %4
  %i.zt = sub nsw i32 %2, %i.zq                   ; 4 uses
  %i.zu = sdiv i32 %i.zs, 8
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds i8, ptr %0, i64 %i.zv ; 2 uses
  %i.zx = sext i32 %i.zq to i64
  %i.zy = getelementptr inbounds [2 x i8], ptr %1, i64 %i.zx ; 2 uses
  %i.zz = sdiv i32 %i.zt, 32                      ; 2 uses
  %i.aaa = icmp sgt i32 %i.zt, 31
  br i1 %i.aaa, label %.lr.ph.i218.i, label %._crit_edge.i212.i

._crit_edge.i212.i:                               ; preds = %.lr.ph.i218.i, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i213.i = phi ptr [ %i.zy, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.abz, %.lr.ph.i218.i ] ; 6 uses
  %.025.lcssa.i214.i = phi ptr [ %i.zw, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.aby, %.lr.ph.i218.i ] ; 4 uses
  %i.aab = shl nsw i32 %i.zz, 5                   ; 2 uses
  %i.aac = sub nsw i32 %i.zt, %i.aab              ; 2 uses
  %i.aad = icmp samesign ult i32 %i.aac, 32
  tail call void @llvm.assume(i1 %i.aad)
  %.not.i215.i = icmp eq i32 %i.zt, %i.aab
  br i1 %.not.i215.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i212.i
  %i.aae = shl nuw nsw i32 %i.aac, 3
  %i.aaf = zext nneg i32 %i.aae to i64            ; 3 uses
  %i.aag = tail call i64 @llvm.usub.sat.i64(i64 %i.aaf, i64 8) ; 2 uses
  %i.aah = lshr exact i64 %i.aag, 3
  %i.aai = add nuw nsw i64 %i.aah, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aag, 56
  br i1 %min.iters.check, label %.lr.ph.i28.i216.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aaj = tail call i64 @llvm.usub.sat.i64(i64 %i.aaf, i64 8) ; 2 uses
  %i.aak = lshr exact i64 %i.aaj, 3
  %i.aal = lshr exact i64 %i.aaj, 2
  %i.aam = getelementptr i8, ptr %.026.lcssa.i213.i, i64 %i.aal
  %scevgep = getelementptr i8, ptr %i.aam, i64 2
  %i.aan = getelementptr i8, ptr %.025.lcssa.i214.i, i64 %i.aak
  %scevgep222 = getelementptr i8, ptr %i.aan, i64 1
  %bound0 = icmp ult ptr %.026.lcssa.i213.i, %scevgep222
  %bound1 = icmp ult ptr %.025.lcssa.i214.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i216.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec230 = and i64 %i.aai, 536870904           ; 4 uses
  %i.aao = shl nuw nsw i64 %n.vec230, 3
  %i.aap = shl nuw nsw i64 %n.vec230, 1
  %i.aaq = getelementptr i8, ptr %.026.lcssa.i213.i, i64 %i.aap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next234, %vec.epilog.vector.body ] ; 3 uses
  %i.aar = shl i64 %index231, 1
  %next.gep232 = getelementptr i8, ptr %.026.lcssa.i213.i, i64 %i.aar
  %i.aas = getelementptr inbounds nuw i8, ptr %.025.lcssa.i214.i, i64 %index231
  %wide.load233 = load <8 x i8>, ptr %i.aas, align 1, !alias.scope !65
  %i.aat = zext <8 x i8> %wide.load233 to <8 x i16>
  store <8 x i16> %i.aat, ptr %next.gep232, align 2, !tbaa !41, !alias.scope !68, !noalias !65
  %index.next234 = add nuw i64 %index231, 8       ; 2 uses
  %i.aau = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.aau, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n235 = icmp eq i64 %i.aai, %n.vec230
  br i1 %cmp.n235, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i216.i.preheader

.lr.ph.i28.i216.i.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %i.aao, %vec.epilog.middle.block ]
  %.024.i.i217.i.ph = phi ptr [ %.026.lcssa.i213.i, %vector.memcheck ], [ %.026.lcssa.i213.i, %iter.check ], [ %i.aaq, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i216.i

.lr.ph.i28.i216.i:                                ; preds = %.lr.ph.i28.i216.i.preheader, %.lr.ph.i28.i216.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i28.i216.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i28.i216.i.preheader ] ; 2 uses
  %.024.i.i217.i = phi ptr [ %i.aaz, %.lr.ph.i28.i216.i ], [ %.024.i.i217.i.ph, %.lr.ph.i28.i216.i.preheader ] ; 2 uses
  %i.aav = lshr exact i64 %indvars.iv.i.i, 3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i214.i, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1
  %i.aay = zext i8 %i.aax to i16
  store i16 %i.aay, ptr %.024.i.i217.i, align 2, !tbaa !41
  %i.aaz = getelementptr inbounds nuw i8, ptr %.024.i.i217.i, i64 2
  %i.aba = icmp samesign ult i64 %indvars.iv.next.i.i, %i.aaf
  br i1 %i.aba, label %.lr.ph.i28.i216.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !73

.lr.ph.i218.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i218.i
  %.032.i219.i = phi i32 [ %i.aca, %.lr.ph.i218.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i220.i = phi ptr [ %i.aby, %.lr.ph.i218.i ], [ %i.zw, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i221.i = phi ptr [ %i.abz, %.lr.ph.i218.i ], [ %i.zy, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.02531.i220.i, i64 4
  %i.abc = getelementptr inbounds nuw i8, ptr %.02531.i220.i, i64 12
  %i.abd = load i32, ptr %.02531.i220.i, align 1
  %i.abe = insertelement <4 x i32> poison, i32 %i.abd, i64 0
  %i.abf = shufflevector <4 x i32> %i.abe, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abg = load <2 x i32>, ptr %i.abb, align 1
  %i.abh = shufflevector <2 x i32> %i.abg, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abi = shufflevector <16 x i32> %i.abf, <16 x i32> %i.abh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abj = load i32, ptr %i.abc, align 1
  %i.abk = insertelement <4 x i32> poison, i32 %i.abj, i64 0
  %i.abl = shufflevector <4 x i32> %i.abk, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abm = shufflevector <16 x i32> %i.abi, <16 x i32> %i.abl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %.sroa.0111.60.vec.insert.i.i.i222.i248 = lshr <16 x i32> %i.abm, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.abn = getelementptr inbounds nuw i8, ptr %.02531.i220.i, i64 16
  %i.abo = load <4 x i32>, ptr %i.abn, align 1
  %i.abp = shufflevector <4 x i32> %i.abo, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.abq = lshr <16 x i32> %i.abp, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.abr = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i.i222.i248 to <32 x i16>
  %i.abs = and <32 x i16> %i.abr, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.abt = shufflevector <32 x i16> %i.abs, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.abt, ptr %.02630.i221.i, align 2, !tbaa !41
  %i.abu = bitcast <16 x i32> %i.abq to <32 x i16>
  %i.abv = and <32 x i16> %i.abu, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.abw = getelementptr inbounds nuw i8, ptr %.02630.i221.i, i64 32
  %i.abx = shufflevector <32 x i16> %i.abv, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.abx, ptr %i.abw, align 2, !tbaa !41
  %i.aby = getelementptr inbounds nuw i8, ptr %.02531.i220.i, i64 32 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.02630.i221.i, i64 64 ; 2 uses
  %i.aca = add nuw nsw i32 %.032.i219.i, 1        ; 2 uses
  %exitcond.not.i224.i = icmp eq i32 %i.aca, %i.zz
  br i1 %exitcond.not.i224.i, label %._crit_edge.i212.i, label %.lr.ph.i218.i, !llvm.loop !74

bb.s:                                             ; preds = %bb.a
  %i.acb = mul nsw i32 %2, 9
  %i.acc = add nsw i32 %4, %i.acb
  %i.acd = icmp sgt i32 %2, 0
  br i1 %i.acd, label %.lr.ph.i.i244.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i244.i:                                  ; preds = %bb.s, %bb.t
  %.026.i.i245.i = phi ptr [ %i.act, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i246.i = phi i32 [ %i.acg, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.ace = srem i32 %.02325.i.i246.i, 8           ; 2 uses
  %i.acf = sdiv i32 %.02325.i.i246.i, 8           ; 2 uses
  %.not.i.i247.i = icmp eq i32 %i.ace, 0
  br i1 %.not.i.i247.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i244.i
  %i.acg = add nsw i32 %.02325.i.i246.i, 9        ; 3 uses
  %i.ach = add nsw i32 %.02325.i.i246.i, 8
  %i.aci = sdiv i32 %i.ach, 8
  %i.acj = sub nsw i32 %i.aci, %i.acf             ; 2 uses
  %i.ack = add nsw i32 %i.acj, 1
  %i.acl = icmp slt i32 %i.acj, 2
  tail call void @llvm.assume(i1 %i.acl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !19
  %i.acm = sext i32 %i.acf to i64
  %i.acn = getelementptr inbounds i8, ptr %0, i64 %i.acm
  %i.aco = sext i32 %i.ack to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.acn, i64 %i.aco, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i248.i = load i64, ptr %i.o, align 8, !tbaa !19
  %i.acp = zext nneg i32 %i.ace to i64
  %i.acq = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i248.i, %i.acp
  %i.acr = trunc i64 %i.acq to i16
  %i.acs = and i16 %i.acr, 511
  store i16 %i.acs, ptr %.026.i.i245.i, align 2, !tbaa !41
  %i.act = getelementptr inbounds nuw i8, ptr %.026.i.i245.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.acu = icmp slt i32 %i.acg, %i.acc
  br i1 %i.acu, label %.lr.ph.i.i244.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !75

_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.t, %.lr.ph.i.i244.i, %bb.s
  %.023.lcssa.i.i230.i = phi i32 [ %4, %bb.s ], [ %.02325.i.i246.i, %.lr.ph.i.i244.i ], [ %i.acg, %bb.t ]
  %i.acv = sub nsw i32 %.023.lcssa.i.i230.i, %4
  %i.acw = sdiv i32 %i.acv, 9                     ; 3 uses
  %i.acx = mul nsw i32 %i.acw, 9
  %i.acy = add nsw i32 %i.acx, %4
  %i.acz = sub nsw i32 %2, %i.acw                 ; 4 uses
  %i.ada = sdiv i32 %i.acy, 8
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds i8, ptr %0, i64 %i.adb ; 2 uses
  %i.add = sext i32 %i.acw to i64
  %i.ade = getelementptr inbounds [2 x i8], ptr %1, i64 %i.add ; 2 uses
  %i.adf = sdiv i32 %i.acz, 32                    ; 2 uses
  %i.adg = icmp sgt i32 %i.acz, 31
  br i1 %i.adg, label %.lr.ph.i239.i, label %._crit_edge.i231.i

._crit_edge.i231.i:                               ; preds = %.lr.ph.i239.i, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i232.i = phi ptr [ %i.ade, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.afk, %.lr.ph.i239.i ]
  %.025.lcssa.i233.i = phi ptr [ %i.adc, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.afj, %.lr.ph.i239.i ]
  %i.adh = shl nsw i32 %i.adf, 5                  ; 2 uses
  %i.adi = sub nsw i32 %i.acz, %i.adh             ; 2 uses
  %i.adj = icmp samesign ult i32 %i.adi, 32
  tail call void @llvm.assume(i1 %i.adj)
  %i.adk = mul nuw nsw i32 %i.adi, 9
  %.not.i234.i = icmp eq i32 %i.acz, %i.adh
  br i1 %.not.i234.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i235.i

.lr.ph.i28.i235.i:                                ; preds = %._crit_edge.i231.i, %.lr.ph.i28.i235.i
  %.024.i.i236.i = phi ptr [ %i.aea, %.lr.ph.i28.i235.i ], [ %.026.lcssa.i232.i, %._crit_edge.i231.i ] ; 2 uses
  %.02223.i.i237.i = phi i32 [ %i.adm, %.lr.ph.i28.i235.i ], [ 0, %._crit_edge.i231.i ] ; 4 uses
  %i.adl = lshr i32 %.02223.i.i237.i, 3           ; 2 uses
  %i.adm = add nuw nsw i32 %.02223.i.i237.i, 9    ; 2 uses
  %i.adn = add nuw nsw i32 %.02223.i.i237.i, 8
  %i.ado = lshr i32 %i.adn, 3
  %i.adp = sub nsw i32 %i.ado, %i.adl             ; 2 uses
  %i.adq = add nsw i32 %i.adp, 1
  %i.adr = icmp slt i32 %i.adp, 2
  tail call void @llvm.assume(i1 %i.adr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !tbaa !19
  %i.ads = zext nneg i32 %i.adl to i64
  %i.adt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i233.i, i64 %i.ads
  %i.adu = sext i32 %i.adq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.adt, i64 %i.adu, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i238.i = load i64, ptr %i.n, align 8, !tbaa !19
  %i.adv = and i32 %.02223.i.i237.i, 7
  %i.adw = zext nneg i32 %i.adv to i64
  %i.adx = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i238.i, %i.adw
  %i.ady = trunc i64 %i.adx to i16
  %i.adz = and i16 %i.ady, 511
  store i16 %i.adz, ptr %.024.i.i236.i, align 2, !tbaa !41
  %i.aea = getelementptr inbounds nuw i8, ptr %.024.i.i236.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.aeb = icmp samesign ult i32 %i.adm, %i.adk
  br i1 %i.aeb, label %.lr.ph.i28.i235.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !76

.lr.ph.i239.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i239.i
  %.032.i240.i = phi i32 [ %i.afl, %.lr.ph.i239.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i241.i = phi ptr [ %i.afj, %.lr.ph.i239.i ], [ %i.adc, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i242.i = phi ptr [ %i.afk, %.lr.ph.i239.i ], [ %i.ade, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 4
  %i.aed = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 12
  %i.aee = getelementptr inbounds nuw i8, ptr %.02531.i241.i, i64 20
  %i.aef = load <4 x i32>, ptr %.02531.i241.i, align 1 ; 2 uses
  %i.aeg = load <2 x i32>, ptr %i.aed, align 1    ; 3 uses
  %i.aeh = shufflevector <2 x i32> %i.aeg, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aei = load <4 x i32>, ptr %i.aec, align 1    ; 2 uses
  %i.aej = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aei, <4 x i32> %i.aef, <4 x i32> <i32 5, i32 1, i32 6, i32 2>)
  %i.aek = shufflevector <4 x i32> %i.aef, <4 x i32> %i.aei, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 5, i32 5>
  %i.ael = shufflevector <4 x i32> %i.aeh, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aem = shufflevector <8 x i32> %i.aek, <8 x i32> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aen = shufflevector <4 x i32> %i.aej, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeo = shufflevector <16 x i32> %i.aem, <16 x i32> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.aep = lshr <16 x i32> %i.aeo, <i32 0, i32 9, i32 18, i32 4, i32 13, i32 22, i32 8, i32 17, i32 3, i32 12, i32 21, i32 7, i32 0, i32 0, i32 0, i32 0>
  %i.aeq = load <4 x i32>, ptr %i.aee, align 1    ; 4 uses
  %i.aer = shufflevector <4 x i32> %i.aeq, <4 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.aes = shufflevector <2 x i32> %i.aeg, <2 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aet = shufflevector <4 x i32> %i.aes, <4 x i32> %i.aer, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.aeu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aeq, <4 x i32> %i.aet, <4 x i32> <i32 7, i32 3, i32 8, i32 4>)
  %i.aev = shufflevector <2 x i32> %i.aeg, <2 x i32> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aew = shufflevector <4 x i32> %i.aeq, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aex = shufflevector <8 x i32> %i.aev, <8 x i32> %i.aew, <8 x i32> <i32 0, i32 8, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10>
  %i.aey = shufflevector <4 x i32> %i.aeq, <4 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 3, i32 3, i32 3>
  %i.aez = shufflevector <4 x i32> %i.aeu, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afa = shufflevector <8 x i32> %i.aex, <8 x i32> %i.aez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.afb = shufflevector <16 x i32> %i.afa, <16 x i32> %i.aey, <16 x i32> <i32 0, i32 12, i32 1, i32 2, i32 3, i32 13, i32 4, i32 5, i32 14, i32 6, i32 7, i32 27, i32 15, i32 29, i32 30, i32 31>
  %i.afc = lshr <16 x i32> %i.afb, <i32 16, i32 0, i32 2, i32 11, i32 20, i32 0, i32 6, i32 15, i32 0, i32 1, i32 10, i32 19, i32 0, i32 5, i32 14, i32 23>
  %i.afd = and <16 x i32> %i.aep, splat (i32 511)
  %.inner265 = shufflevector <16 x i32> %i.afd, <16 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 12, i32 3, i32 4, i32 5, i32 13, i32 6, i32 7, i32 14, i32 8, i32 9, i32 10, i32 15, i32 11>
  %i.afe = trunc nuw nsw <16 x i32> %.inner265 to <16 x i16>
  store <16 x i16> %i.afe, ptr %.02630.i242.i, align 2, !tbaa !41
  %i.aff = bitcast <16 x i32> %i.afc to <32 x i16>
  %i.afg = and <32 x i16> %i.aff, <i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison, i16 511, i16 poison>
  %i.afh = getelementptr inbounds nuw i8, ptr %.02630.i242.i, i64 32
  %i.afi = shufflevector <32 x i16> %i.afg, <32 x i16> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.afi, ptr %i.afh, align 2, !tbaa !41
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.we = lshr i32 %.02223.i.i263, 3              ; 2 uses
  %i.wf = add nuw nsw i32 %.02223.i.i263, 7       ; 2 uses
  %i.wg = add nuw nsw i32 %.02223.i.i263, 6
  %i.wh = lshr i32 %i.wg, 3
  %i.wi = sub nsw i32 %i.wh, %i.we                ; 2 uses
  %i.wj = add nsw i32 %i.wi, 1
  %i.wk = icmp slt i32 %i.wi, 2
  tail call void @llvm.assume(i1 %i.wk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8, !tbaa !19
  %i.wl = zext nneg i32 %i.we to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %.025.lcssa.i259, i64 %i.wl
  %i.wn = sext i32 %i.wj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.wm, i64 %i.wn, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i264 = load i64, ptr %i.au, align 8, !tbaa !19
  %i.wo = and i32 %.02223.i.i263, 7
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = lshr i64 %.0..0..0..0..0..0..0..0..i29.i264, %i.wp
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = and i32 %i.wr, 127
  store i32 %i.ws, ptr %.024.i.i262, align 4, !tbaa !3
  %i.wt = getelementptr inbounds nuw i8, ptr %.024.i.i262, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.wu = icmp samesign ult i32 %i.wf, %i.wd
  br i1 %i.wu, label %.lr.ph.i28.i261, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !117

.lr.ph.i265:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i265
  %.032.i266 = phi i32 [ %i.xt, %.lr.ph.i265 ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i267 = phi ptr [ %i.xr, %.lr.ph.i265 ], [ %i.vv, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %.02630.i268 = phi ptr [ %i.xs, %.lr.ph.i265 ], [ %i.vx, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 12
  %i.ww = load <4 x i32>, ptr %.02531.i267, align 1 ; 3 uses
  %i.wx = shufflevector <4 x i32> %i.ww, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.wy = shufflevector <4 x i32> %i.ww, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.wz = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.wx, <3 x i32> %i.wy, <3 x i32> <i32 4, i32 1, i32 5>)
  %i.xa = shufflevector <4 x i32> %i.ww, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.xb = shufflevector <3 x i32> %i.wz, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xc = shufflevector <7 x i32> %i.xa, <7 x i32> %i.xb, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3>
  %i.xd = lshr <16 x i32> %i.xc, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17, i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %i.xe = bitcast <16 x i32> %i.xd to <8 x i64>
  %i.xf = and <8 x i64> %i.xe, splat (i64 545460846719)
  store <8 x i64> %i.xf, ptr %.02630.i268, align 1, !tbaa !15
  %i.xg = load <4 x i32>, ptr %i.wv, align 1      ; 3 uses
  %i.xh = shufflevector <4 x i32> %i.xg, <4 x i32> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.xi = shufflevector <4 x i32> %i.xg, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.xj = tail call <3 x i32> @llvm.fshl.v3i32(<3 x i32> %i.xh, <3 x i32> %i.xi, <3 x i32> <i32 2, i32 6, i32 3>)
  %i.xk = shufflevector <4 x i32> %i.xg, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.xl = shufflevector <3 x i32> %i.xj, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xm = shufflevector <7 x i32> %i.xk, <7 x i32> %i.xl, <16 x i32> <i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3, i32 3, i32 3>
  %i.xn = lshr <16 x i32> %i.xm, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1, i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.xo = getelementptr inbounds nuw i8, ptr %.02630.i268, i64 64
  %i.xp = bitcast <16 x i32> %i.xn to <8 x i64>
  %i.xq = and <8 x i64> %i.xp, splat (i64 545460846719)
  store <8 x i64> %i.xq, ptr %i.xo, align 1, !tbaa !15
  %i.xr = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 28 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.02630.i268, i64 128 ; 2 uses
  %i.xt = add nuw nsw i32 %.032.i266, 1           ; 2 uses
  %exitcond.not.i269 = icmp eq i32 %i.xt, %i.vy
  br i1 %exitcond.not.i269, label %._crit_edge.i257, label %.lr.ph.i265, !llvm.loop !118

bb.q:                                             ; preds = %bb.a
  %i.xu = shl nsw i32 %2, 3
  %i.xv = add nsw i32 %4, %i.xu
  %i.xw = icmp sgt i32 %2, 0
  br i1 %i.xw, label %.lr.ph.i.i289, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i289:                                    ; preds = %bb.q, %bb.r
  %.026.i.i290 = phi ptr [ %i.ym, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i291 = phi i32 [ %i.xz, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.xx = srem i32 %.02325.i.i291, 8              ; 2 uses
  %i.xy = sdiv i32 %.02325.i.i291, 8              ; 2 uses
  %.not.i.i292 = icmp eq i32 %i.xx, 0
  br i1 %.not.i.i292, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i289
  %i.xz = add nsw i32 %.02325.i.i291, 8           ; 3 uses
  %i.ya = add nsw i32 %.02325.i.i291, 7
  %i.yb = sdiv i32 %i.ya, 8
  %i.yc = sub nsw i32 %i.yb, %i.xy                ; 2 uses
  %i.yd = add nsw i32 %i.yc, 1
  %i.ye = icmp slt i32 %i.yc, 2
  tail call void @llvm.assume(i1 %i.ye)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8, !tbaa !19
  %i.yf = sext i32 %i.xy to i64
  %i.yg = getelementptr inbounds i8, ptr %0, i64 %i.yf
  %i.yh = sext i32 %i.yd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr readonly align 1 %i.yg, i64 %i.yh, i1 false)
  %.0..0..0..0..0..0..0..0..i.i293 = load i64, ptr %i.at, align 8, !tbaa !19
  %i.yi = zext nneg i32 %i.xx to i64
  %i.yj = lshr i64 %.0..0..0..0..0..0..0..0..i.i293, %i.yi
  %i.yk = trunc i64 %i.yj to i32
  %i.yl = and i32 %i.yk, 255
  store i32 %i.yl, ptr %.026.i.i290, align 4, !tbaa !3
  %i.ym = getelementptr inbounds nuw i8, ptr %.026.i.i290, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.yn = icmp slt i32 %i.xz, %i.xv
  br i1 %i.yn, label %.lr.ph.i.i289, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !119

_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.r, %.lr.ph.i.i289, %bb.q
  %.023.lcssa.i.i275 = phi i32 [ %4, %bb.q ], [ %i.xz, %bb.r ], [ %.02325.i.i291, %.lr.ph.i.i289 ]
  %i.yo = sub nsw i32 %.023.lcssa.i.i275, %4
  %i.yp = sdiv i32 %i.yo, 8                       ; 3 uses
  %i.yq = shl nsw i32 %i.yp, 3
  %i.yr = add nsw i32 %i.yq, %4
  %i.ys = sub nsw i32 %2, %i.yp                   ; 5 uses
  %i.yt = sdiv i32 %i.yr, 8
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds i8, ptr %0, i64 %i.yu ; 3 uses
  %i.yw = sext i32 %i.yp to i64
  %i.yx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yw ; 3 uses
  %i.yy = sdiv i32 %i.ys, 32                      ; 4 uses
  %i.yz = icmp sgt i32 %i.ys, 31
  br i1 %i.yz, label %.lr.ph.i282.preheader, label %._crit_edge.i276

.lr.ph.i282.preheader:                            ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %xtraiter = and i32 %i.yy, 1
  %i.za = and i32 %i.ys, 2147483616
  %i.zb = icmp eq i32 %i.za, 32
  br i1 %i.zb, label %.lr.ph.i282.epil.preheader, label %.lr.ph.i282.preheader.new

.lr.ph.i282.preheader.new:                        ; preds = %.lr.ph.i282.preheader
  %unroll_iter = and i32 %i.yy, 67108862
  br label %.lr.ph.i282

._crit_edge.i276.loopexit.unr-lcssa:              ; preds = %.lr.ph.i282
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i276, label %.lr.ph.i282.epil.preheader

.lr.ph.i282.epil.preheader:                       ; preds = %._crit_edge.i276.loopexit.unr-lcssa, %.lr.ph.i282.preheader
  %.02531.i284.epil.init = phi ptr [ %i.yv, %.lr.ph.i282.preheader ], [ %i.ade, %._crit_edge.i276.loopexit.unr-lcssa ] ; 5 uses
  %.02630.i285.epil.init = phi ptr [ %i.yx, %.lr.ph.i282.preheader ], [ %i.adf, %._crit_edge.i276.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1478 = trunc i32 %i.yy to i1
  tail call void @llvm.assume(i1 %lcmp.mod1478)
  %i.zc = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 4
  %i.zd = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 12
  %i.ze = load i32, ptr %.02531.i284.epil.init, align 1
  %i.zf = insertelement <4 x i32> poison, i32 %i.ze, i64 0
  %i.zg = shufflevector <4 x i32> %i.zf, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zh = load <2 x i32>, ptr %i.zc, align 1
  %i.zi = shufflevector <2 x i32> %i.zh, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zj = shufflevector <16 x i32> %i.zg, <16 x i32> %i.zi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zk = load i32, ptr %i.zd, align 1
  %i.zl = insertelement <4 x i32> poison, i32 %i.zk, i64 0
  %i.zm = shufflevector <4 x i32> %i.zl, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zn = shufflevector <16 x i32> %i.zj, <16 x i32> %i.zm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %.sroa.0111.60.vec.insert.i.i2861317.epil = lshr <16 x i32> %i.zn, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.zo = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2861317.epil to <8 x i64>
  %i.zp = and <8 x i64> %i.zo, splat (i64 1095216660735)
  store <8 x i64> %i.zp, ptr %.02630.i285.epil.init, align 1, !tbaa !15
  %i.zq = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 16
  %i.zr = load <4 x i32>, ptr %i.zq, align 1
  %i.zs = shufflevector <4 x i32> %i.zr, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.zt = lshr <16 x i32> %i.zs, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.zu = getelementptr inbounds nuw i8, ptr %.02630.i285.epil.init, i64 64
  %i.zv = bitcast <16 x i32> %i.zt to <8 x i64>
  %i.zw = and <8 x i64> %i.zv, splat (i64 1095216660735)
  store <8 x i64> %i.zw, ptr %i.zu, align 1, !tbaa !15
  %i.zx = getelementptr inbounds nuw i8, ptr %.02531.i284.epil.init, i64 32
  %i.zy = getelementptr inbounds nuw i8, ptr %.02630.i285.epil.init, i64 128
  br label %._crit_edge.i276

._crit_edge.i276:                                 ; preds = %.lr.ph.i282.epil.preheader, %._crit_edge.i276.loopexit.unr-lcssa, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i277 = phi ptr [ %i.yx, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.adf, %._crit_edge.i276.loopexit.unr-lcssa ], [ %i.zy, %.lr.ph.i282.epil.preheader ] ; 7 uses
  %.025.lcssa.i278 = phi ptr [ %i.yv, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ade, %._crit_edge.i276.loopexit.unr-lcssa ], [ %i.zx, %.lr.ph.i282.epil.preheader ] ; 5 uses
  %i.zz = shl nsw i32 %i.yy, 5                    ; 2 uses
  %i.aaa = sub nsw i32 %i.ys, %i.zz               ; 2 uses
  %i.aab = icmp samesign ult i32 %i.aaa, 32
  tail call void @llvm.assume(i1 %i.aab)
  %.not.i279 = icmp eq i32 %i.ys, %i.zz
  br i1 %.not.i279, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check1291

iter.check1291:                                   ; preds = %._crit_edge.i276
  %i.aac = shl nuw nsw i32 %i.aaa, 3
  %i.aad = zext nneg i32 %i.aac to i64            ; 3 uses
  %i.aae = tail call i64 @llvm.usub.sat.i64(i64 %i.aad, i64 8) ; 3 uses
  %i.aaf = lshr exact i64 %i.aae, 3
  %i.aag = add nuw nsw i64 %i.aaf, 1              ; 3 uses
  %min.iters.check1272 = icmp samesign ult i64 %i.aae, 56
  br i1 %min.iters.check1272, label %.lr.ph.i28.i280.preheader, label %vector.memcheck1263

vector.memcheck1263:                              ; preds = %iter.check1291
  %i.aah = tail call i64 @llvm.usub.sat.i64(i64 %i.aad, i64 8) ; 2 uses
  %i.aai = lshr exact i64 %i.aah, 3
  %i.aaj = lshr exact i64 %i.aah, 1
  %i.aak = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.aaj
  %scevgep1265 = getelementptr i8, ptr %i.aak, i64 4
  %i.aal = getelementptr i8, ptr %.025.lcssa.i278, i64 %i.aai
  %scevgep1266 = getelementptr i8, ptr %i.aal, i64 1
  %bound01267 = icmp ult ptr %.026.lcssa.i277, %scevgep1266
  %bound11268 = icmp ult ptr %.025.lcssa.i278, %scevgep1265
  %found.conflict1269 = and i1 %bound01267, %bound11268
  br i1 %found.conflict1269, label %.lr.ph.i28.i280.preheader, label %vector.main.loop.iter.check1273

vector.main.loop.iter.check1273:                  ; preds = %vector.memcheck1263
  %min.iters.check1274.not = icmp eq i64 %i.aae, 248
  br i1 %min.iters.check1274.not, label %vector.body1278, label %vec.epilog.ph1295

vector.body1278:                                  ; preds = %vector.main.loop.iter.check1273, %vector.body1278
  %index1279 = phi i64 [ %index.next1285, %vector.body1278 ], [ 0, %vector.main.loop.iter.check1273 ] ; 3 uses
  %i.aam = shl i64 %index1279, 2
  %next.gep1280 = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.aam ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.025.lcssa.i278, i64 %index1279 ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %wide.load1281 = load <8 x i8>, ptr %i.aan, align 1, !alias.scope !120
  %wide.load1282 = load <8 x i8>, ptr %i.aao, align 1, !alias.scope !120
  %wide.load1283 = load <8 x i8>, ptr %i.aap, align 1, !alias.scope !120
  %wide.load1284 = load <8 x i8>, ptr %i.aaq, align 1, !alias.scope !120
  %i.aar = zext <8 x i8> %wide.load1281 to <8 x i32>
  %i.aas = zext <8 x i8> %wide.load1282 to <8 x i32>
  %i.aat = zext <8 x i8> %wide.load1283 to <8 x i32>
  %i.aau = zext <8 x i8> %wide.load1284 to <8 x i32>
  %i.aav = getelementptr i8, ptr %next.gep1280, i64 32
  %i.aaw = getelementptr i8, ptr %next.gep1280, i64 64
  %i.aax = getelementptr i8, ptr %next.gep1280, i64 96
  store <8 x i32> %i.aar, ptr %next.gep1280, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.aas, ptr %i.aav, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.aat, ptr %i.aaw, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.aau, ptr %i.aax, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  %index.next1285 = add nuw i64 %index1279, 32    ; 2 uses
  %i.aay = icmp eq i64 %index.next1285, %i.aag
  br i1 %i.aay, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vector.body1278, !llvm.loop !125

vec.epilog.ph1295:                                ; preds = %vector.main.loop.iter.check1273
  %n.vec1297 = and i64 %i.aag, 536870904          ; 4 uses
  %i.aaz = shl nuw nsw i64 %n.vec1297, 3
  %i.aba = shl nuw nsw i64 %n.vec1297, 2
  %i.abb = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.aba
  br label %vec.epilog.vector.body1298

vec.epilog.vector.body1298:                       ; preds = %vec.epilog.vector.body1298, %vec.epilog.ph1295
  %index1299 = phi i64 [ 0, %vec.epilog.ph1295 ], [ %index.next1302, %vec.epilog.vector.body1298 ] ; 3 uses
  %i.abc = shl i64 %index1299, 2
  %next.gep1300 = getelementptr i8, ptr %.026.lcssa.i277, i64 %i.abc
  %i.abd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i278, i64 %index1299
  %wide.load1301 = load <8 x i8>, ptr %i.abd, align 1, !alias.scope !120
  %i.abe = zext <8 x i8> %wide.load1301 to <8 x i32>
  store <8 x i32> %i.abe, ptr %next.gep1300, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  %index.next1302 = add nuw i64 %index1299, 8     ; 2 uses
  %i.abf = icmp eq i64 %index.next1302, %n.vec1297
  br i1 %i.abf, label %vec.epilog.middle.block1303, label %vec.epilog.vector.body1298, !llvm.loop !126

vec.epilog.middle.block1303:                      ; preds = %vec.epilog.vector.body1298
  %cmp.n1304 = icmp eq i64 %i.aag, %n.vec1297
  br i1 %cmp.n1304, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i280.preheader

.lr.ph.i28.i280.preheader:                        ; preds = %vector.memcheck1263, %iter.check1291, %vec.epilog.middle.block1303
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck1263 ], [ 0, %iter.check1291 ], [ %i.aaz, %vec.epilog.middle.block1303 ]
  %.024.i.i281.ph = phi ptr [ %.026.lcssa.i277, %vector.memcheck1263 ], [ %.026.lcssa.i277, %iter.check1291 ], [ %i.abb, %vec.epilog.middle.block1303 ]
  br label %.lr.ph.i28.i280

.lr.ph.i28.i280:                                  ; preds = %.lr.ph.i28.i280.preheader, %.lr.ph.i28.i280
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i28.i280 ], [ %indvars.iv.i.ph, %.lr.ph.i28.i280.preheader ] ; 2 uses
  %.024.i.i281 = phi ptr [ %i.abk, %.lr.ph.i28.i280 ], [ %.024.i.i281.ph, %.lr.ph.i28.i280.preheader ] ; 2 uses
  %i.abg = lshr exact i64 %indvars.iv.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i278, i64 %i.abg
  %i.abi = load i8, ptr %i.abh, align 1
  %i.abj = zext i8 %i.abi to i32
  store i32 %i.abj, ptr %.024.i.i281, align 4, !tbaa !3
  %i.abk = getelementptr inbounds nuw i8, ptr %.024.i.i281, i64 4
  %i.abl = icmp samesign ult i64 %indvars.iv.next.i, %i.aad
  br i1 %i.abl, label %.lr.ph.i28.i280, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !127

.lr.ph.i282:                                      ; preds = %.lr.ph.i282, %.lr.ph.i282.preheader.new
  %.02531.i284 = phi ptr [ %i.yv, %.lr.ph.i282.preheader.new ], [ %i.ade, %.lr.ph.i282 ] ; 9 uses
  %.02630.i285 = phi ptr [ %i.yx, %.lr.ph.i282.preheader.new ], [ %i.adf, %.lr.ph.i282 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i282.preheader.new ], [ %niter.next.1, %.lr.ph.i282 ]
  %i.abm = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 4
  %i.abn = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 12
  %i.abo = load i32, ptr %.02531.i284, align 1
  %i.abp = insertelement <4 x i32> poison, i32 %i.abo, i64 0
  %i.abq = shufflevector <4 x i32> %i.abp, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abr = load <2 x i32>, ptr %i.abm, align 1
  %i.abs = shufflevector <2 x i32> %i.abr, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abt = shufflevector <16 x i32> %i.abq, <16 x i32> %i.abs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abu = load i32, ptr %i.abn, align 1
  %i.abv = insertelement <4 x i32> poison, i32 %i.abu, i64 0
  %i.abw = shufflevector <4 x i32> %i.abv, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.abx = shufflevector <16 x i32> %i.abt, <16 x i32> %i.abw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %.sroa.0111.60.vec.insert.i.i2861317 = lshr <16 x i32> %i.abx, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.aby = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2861317 to <8 x i64>
  %i.abz = and <8 x i64> %i.aby, splat (i64 1095216660735)
  store <8 x i64> %i.abz, ptr %.02630.i285, align 1, !tbaa !15
  %i.aca = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 16
  %i.acb = load <4 x i32>, ptr %i.aca, align 1
  %i.acc = shufflevector <4 x i32> %i.acb, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.acd = lshr <16 x i32> %i.acc, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.ace = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 64
  %i.acf = bitcast <16 x i32> %i.acd to <8 x i64>
  %i.acg = and <8 x i64> %i.acf, splat (i64 1095216660735)
  store <8 x i64> %i.acg, ptr %i.ace, align 1, !tbaa !15
  %i.ach = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 32
  %i.aci = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 128
  %i.acj = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 36
  %i.ack = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 44
  %i.acl = load i32, ptr %i.ach, align 1
  %i.acm = insertelement <4 x i32> poison, i32 %i.acl, i64 0
  %i.acn = shufflevector <4 x i32> %i.acm, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aco = load <2 x i32>, ptr %i.acj, align 1
  %i.acp = shufflevector <2 x i32> %i.aco, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acq = shufflevector <16 x i32> %i.acn, <16 x i32> %i.acp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acr = load i32, ptr %i.ack, align 1
  %i.acs = insertelement <4 x i32> poison, i32 %i.acr, i64 0
  %i.act = shufflevector <4 x i32> %i.acs, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.acu = shufflevector <16 x i32> %i.acq, <16 x i32> %i.act, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %.sroa.0111.60.vec.insert.i.i2861317.1 = lshr <16 x i32> %i.acu, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.acv = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i2861317.1 to <8 x i64>
  %i.acw = and <8 x i64> %i.acv, splat (i64 1095216660735)
  store <8 x i64> %i.acw, ptr %i.aci, align 1, !tbaa !15
  %i.acx = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 48
  %i.acy = load <4 x i32>, ptr %i.acx, align 1
  %i.acz = shufflevector <4 x i32> %i.acy, <4 x i32> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3>
  %i.ada = lshr <16 x i32> %i.acz, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.adb = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 192
  %i.adc = bitcast <16 x i32> %i.ada to <8 x i64>
  %i.add = and <8 x i64> %i.adc, splat (i64 1095216660735)
  store <8 x i64> %i.add, ptr %i.adb, align 1, !tbaa !15
  %i.ade = getelementptr inbounds nuw i8, ptr %.02531.i284, i64 64 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.02630.i285, i64 256 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i276.loopexit.unr-lcssa, label %.lr.ph.i282, !llvm.loop !128

bb.s:                                             ; preds = %bb.a
  %i.adg = mul nsw i32 %2, 9
  %i.adh = add nsw i32 %4, %i.adg
  %i.adi = icmp sgt i32 %2, 0
  br i1 %i.adi, label %.lr.ph.i.i308, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i308:                                    ; preds = %bb.s, %bb.t
  %.026.i.i309 = phi ptr [ %i.ady, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i310 = phi i32 [ %i.adl, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.adj = srem i32 %.02325.i.i310, 8             ; 2 uses
  %i.adk = sdiv i32 %.02325.i.i310, 8             ; 2 uses
  %.not.i.i311 = icmp eq i32 %i.adj, 0
  br i1 %.not.i.i311, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i308
  %i.adl = add nsw i32 %.02325.i.i310, 9          ; 3 uses
  %i.adm = add nsw i32 %.02325.i.i310, 8
  %i.adn = sdiv i32 %i.adm, 8
  %i.ado = sub nsw i32 %i.adn, %i.adk             ; 2 uses
  %i.adp = add nsw i32 %i.ado, 1
  %i.adq = icmp slt i32 %i.ado, 2
  tail call void @llvm.assume(i1 %i.adq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8, !tbaa !19
  %i.adr = sext i32 %i.adk to i64
  %i.ads = getelementptr inbounds i8, ptr %0, i64 %i.adr
  %i.adt = sext i32 %i.adp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr readonly align 1 %i.ads, i64 %i.adt, i1 false)
  %.0..0..0..0..0..0..0..0..i.i312 = load i64, ptr %i.as, align 8, !tbaa !19
  %i.adu = zext nneg i32 %i.adj to i64
  %i.adv = lshr i64 %.0..0..0..0..0..0..0..0..i.i312, %i.adu
  %i.adw = trunc i64 %i.adv to i32
  %i.adx = and i32 %i.adw, 511
  store i32 %i.adx, ptr %.026.i.i309, align 4, !tbaa !3
  %i.ady = getelementptr inbounds nuw i8, ptr %.026.i.i309, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.adz = icmp slt i32 %i.adl, %i.adh
  br i1 %i.adz, label %.lr.ph.i.i308, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !129

_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.t, %.lr.ph.i.i308, %bb.s
  %.023.lcssa.i.i294 = phi i32 [ %4, %bb.s ], [ %i.adl, %bb.t ], [ %.02325.i.i310, %.lr.ph.i.i308 ]
  %i.aea = sub nsw i32 %.023.lcssa.i.i294, %4
  %i.aeb = sdiv i32 %i.aea, 9                     ; 3 uses
  %i.aec = mul nsw i32 %i.aeb, 9
  %i.aed = add nsw i32 %i.aec, %4
  %i.aee = sub nsw i32 %2, %i.aeb                 ; 4 uses
  %i.aef = sdiv i32 %i.aed, 8
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds i8, ptr %0, i64 %i.aeg ; 2 uses
  %i.aei = sext i32 %i.aeb to i64
  %i.aej = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aei ; 2 uses
  %i.aek = sdiv i32 %i.aee, 32                    ; 2 uses
  %i.ael = icmp sgt i32 %i.aee, 31
  br i1 %i.ael, label %.lr.ph.i303, label %._crit_edge.i295

._crit_edge.i295:                                 ; preds = %.lr.ph.i303, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i296 = phi ptr [ %i.aej, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ago, %.lr.ph.i303 ]
  %.025.lcssa.i297 = phi ptr [ %i.aeh, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.agn, %.lr.ph.i303 ]
  %i.aem = shl nsw i32 %i.aek, 5                  ; 2 uses
  %i.aen = sub nsw i32 %i.aee, %i.aem             ; 2 uses
  %i.aeo = icmp samesign ult i32 %i.aen, 32
  tail call void @llvm.assume(i1 %i.aeo)
  %i.aep = mul nuw nsw i32 %i.aen, 9
  %.not.i298 = icmp eq i32 %i.aee, %i.aem
  br i1 %.not.i298, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i299

.lr.ph.i28.i299:                                  ; preds = %._crit_edge.i295, %.lr.ph.i28.i299
  %.024.i.i300 = phi ptr [ %i.aff, %.lr.ph.i28.i299 ], [ %.026.lcssa.i296, %._crit_edge.i295 ] ; 2 uses
  %.02223.i.i301 = phi i32 [ %i.aer, %.lr.ph.i28.i299 ], [ 0, %._crit_edge.i295 ] ; 4 uses
  %i.aeq = lshr i32 %.02223.i.i301, 3             ; 2 uses
  %i.aer = add nuw nsw i32 %.02223.i.i301, 9      ; 2 uses
  %i.aes = add nuw nsw i32 %.02223.i.i301, 8
  %i.aet = lshr i32 %i.aes, 3
  %i.aeu = sub nsw i32 %i.aet, %i.aeq             ; 2 uses
  %i.aev = add nsw i32 %i.aeu, 1
  %i.aew = icmp slt i32 %i.aeu, 2
  tail call void @llvm.assume(i1 %i.aew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8, !tbaa !19
  %i.aex = zext nneg i32 %i.aeq to i64
  %i.aey = getelementptr inbounds nuw i8, ptr %.025.lcssa.i297, i64 %i.aex
  %i.aez = sext i32 %i.aev to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 1 %i.aey, i64 %i.aez, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i302 = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.afa = and i32 %.02223.i.i301, 7
  %i.afb = zext nneg i32 %i.afa to i64
  %i.afc = lshr i64 %.0..0..0..0..0..0..0..0..i29.i302, %i.afb
  %i.afd = trunc i64 %i.afc to i32
  %i.afe = and i32 %i.afd, 511
  store i32 %i.afe, ptr %.024.i.i300, align 4, !tbaa !3
  %i.aff = getelementptr inbounds nuw i8, ptr %.024.i.i300, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.afg = icmp samesign ult i32 %i.aer, %i.aep
  br i1 %i.afg, label %.lr.ph.i28.i299, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !130

.lr.ph.i303:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i303
  %.032.i304 = phi i32 [ %i.agp, %.lr.ph.i303 ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i305 = phi ptr [ %i.agn, %.lr.ph.i303 ], [ %i.aeh, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i306 = phi ptr [ %i.ago, %.lr.ph.i303 ], [ %i.aej, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 4
  %i.afi = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 12
  %i.afj = getelementptr inbounds nuw i8, ptr %.02531.i305, i64 16
  %i.afk = load <4 x i32>, ptr %.02531.i305, align 1 ; 2 uses
  %i.afl = load <2 x i32>, ptr %i.afi, align 1
  %i.afm = shufflevector <2 x i32> %i.afl, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.afn = load <4 x i32>, ptr %i.afh, align 1    ; 2 uses
  %i.afo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.afn, <4 x i32> %i.afk, <4 x i32> <i32 5, i32 1, i32 6, i32 2>)
  %i.afp = shufflevector <4 x i32> %i.afk, <4 x i32> %i.afn, <8 x i32> <i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 5, i32 5>
  %i.afq = shufflevector <4 x i32> %i.afm, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afr = shufflevector <8 x i32> %i.afp, <8 x i32> %i.afq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afs = shufflevector <4 x i32> %i.afo, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_1
begin_hunk_2_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
.lr.ph.i28.i419:                                  ; preds = %._crit_edge.i415, %.lr.ph.i28.i419
  %.024.i.i420 = phi ptr [ %i.bai, %.lr.ph.i28.i419 ], [ %.026.lcssa.i416, %._crit_edge.i415 ] ; 2 uses
  %.02223.i.i421 = phi i32 [ %i.azu, %.lr.ph.i28.i419 ], [ 0, %._crit_edge.i415 ] ; 4 uses
  %i.azt = lshr i32 %.02223.i.i421, 3             ; 2 uses
  %i.azu = add nuw nsw i32 %.02223.i.i421, 15     ; 2 uses
  %i.azv = add nuw nsw i32 %.02223.i.i421, 14
  %i.azw = lshr i32 %i.azv, 3
  %i.azx = sub nsw i32 %i.azw, %i.azt             ; 2 uses
  %i.azy = add nsw i32 %i.azx, 1
  %i.azz = icmp slt i32 %i.azx, 3
  tail call void @llvm.assume(i1 %i.azz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 0, ptr %i.af, align 8, !tbaa !19
  %i.baa = zext nneg i32 %i.azt to i64
  %i.bab = getelementptr inbounds nuw i8, ptr %.025.lcssa.i417, i64 %i.baa
  %i.bac = sext i32 %i.azy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.bab, i64 %i.bac, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i422 = load i64, ptr %i.af, align 8, !tbaa !19
  %i.bad = and i32 %.02223.i.i421, 7
  %i.bae = zext nneg i32 %i.bad to i64
  %i.baf = lshr i64 %.0..0..0..0..0..0..0..0..i29.i422, %i.bae
  %i.bag = trunc i64 %i.baf to i32
  %i.bah = and i32 %i.bag, 32767
  store i32 %i.bah, ptr %.024.i.i420, align 4, !tbaa !3
  %i.bai = getelementptr inbounds nuw i8, ptr %.024.i.i420, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.baj = icmp samesign ult i32 %i.azu, %i.azs
  br i1 %i.baj, label %.lr.ph.i28.i419, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !148

.lr.ph.i423:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i423
  %.032.i424 = phi i32 [ %i.bcx, %.lr.ph.i423 ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i425 = phi ptr [ %i.bcv, %.lr.ph.i423 ], [ %i.azk, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 6 uses
  %.02630.i426 = phi ptr [ %i.bcw, %.lr.ph.i423 ], [ %i.azm, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 4
  %i.bal = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 8
  %i.bam = load <4 x i32>, ptr %i.bak, align 1    ; 2 uses
  %i.ban = load <4 x i32>, ptr %i.bal, align 1    ; 5 uses
  %i.bao = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ban, <4 x i32> %i.bam, <4 x i32> <i32 4, i32 6, i32 8, i32 10>)
  %i.bap = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 24
  %i.baq = load i32, ptr %i.bap, align 1          ; 3 uses
  %i.bar = extractelement <4 x i32> %i.ban, i64 3 ; 2 uses
  %i.bas = tail call i32 @llvm.fshl.i32(i32 %i.baq, i32 %i.bar, i32 12)
  %i.bat = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 28 ; 2 uses
  %i.bau = load i32, ptr %i.bat, align 1          ; 2 uses
  %i.bav = tail call i32 @llvm.fshl.i32(i32 %i.bau, i32 %i.baq, i32 14)
  %i.baw = load i32, ptr %.02531.i425, align 1    ; 2 uses
  %i.bax = extractelement <4 x i32> %i.bam, i64 0 ; 2 uses
  %i.bay = tail call i32 @llvm.fshl.i32(i32 %i.bax, i32 %i.baw, i32 2)
  %i.baz = insertelement <2 x i32> poison, i32 %i.baw, i64 0
  %i.bba = shufflevector <2 x i32> %i.baz, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbb = lshr <16 x i32> %i.bba, <i32 0, i32 15, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %i.bbc = insertelement <16 x i32> %i.bbb, i32 %i.bay, i64 2
  %i.bbd = lshr i32 %i.bax, 13
  %i.bbe = insertelement <16 x i32> %i.bbc, i32 %i.bbd, i64 3
  %i.bbf = extractelement <4 x i32> %i.ban, i64 0
  %i.bbg = lshr i32 %i.bbf, 11
  %i.bbh = extractelement <4 x i32> %i.ban, i64 1
  %i.bbi = lshr i32 %i.bbh, 9
  %i.bbj = extractelement <4 x i32> %i.ban, i64 2
  %i.bbk = lshr i32 %i.bbj, 7
  %i.bbl = shufflevector <4 x i32> %i.bao, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbm = shufflevector <16 x i32> %i.bbe, <16 x i32> %i.bbl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 17, i32 poison, i32 18, i32 poison, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bbn = insertelement <16 x i32> %i.bbm, i32 %i.bbg, i64 5
  %i.bbo = insertelement <16 x i32> %i.bbn, i32 %i.bbi, i64 7
  %i.bbp = insertelement <16 x i32> %i.bbo, i32 %i.bbk, i64 9
  %i.bbq = lshr i32 %i.bar, 5
  %i.bbr = insertelement <16 x i32> %i.bbp, i32 %i.bbq, i64 11
  %i.bbs = insertelement <16 x i32> %i.bbr, i32 %i.bas, i64 12
  %i.bbt = lshr i32 %i.baq, 3
  %i.bbu = insertelement <16 x i32> %i.bbs, i32 %i.bbt, i64 13
  %i.bbv = insertelement <16 x i32> %i.bbu, i32 %i.bav, i64 14
  %i.bbw = lshr i32 %i.bau, 1
  %.sroa.0125.60.vec.insert.i.i = insertelement <16 x i32> %i.bbv, i32 %i.bbw, i64 15
  %i.bbx = bitcast <16 x i32> %.sroa.0125.60.vec.insert.i.i to <8 x i64>
  %i.bby = and <8 x i64> %i.bbx, splat (i64 140733193420799)
  store <8 x i64> %i.bby, ptr %.02630.i426, align 1, !tbaa !15
  %i.bbz = load <8 x i32>, ptr %i.bat, align 1    ; 8 uses
  %i.bca = extractelement <8 x i32> %i.bbz, i64 0
  %i.bcb = extractelement <8 x i32> %i.bbz, i64 1
  %i.bcc = tail call i32 @llvm.fshl.i32(i32 %i.bcb, i32 %i.bca, i32 1)
  %i.bcd = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.bce = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.bcf = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.bcd, <2 x i32> %i.bce, <2 x i32> <i32 3, i32 5>)
  %i.bcg = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bch = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bcg, <4 x i32> %i.bch, <4 x i32> <i32 7, i32 9, i32 11, i32 13>)
  %i.bcj = insertelement <16 x i32> poison, i32 %i.bcc, i64 1
  %i.bck = shufflevector <8 x i32> %i.bbz, <8 x i32> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcl = shufflevector <16 x i32> %i.bcj, <16 x i32> %i.bck, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 23>
  %i.bcm = shufflevector <4 x i32> %i.bci, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcn = shufflevector <8 x i32> %i.bbz, <8 x i32> %i.bcm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.bco = shufflevector <2 x i32> %i.bcf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcp = shufflevector <16 x i32> %i.bcn, <16 x i32> %i.bco, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.bcq = shufflevector <16 x i32> %i.bcp, <16 x i32> %i.bcl, <16 x i32> <i32 0, i32 17, i32 1, i32 10, i32 2, i32 11, i32 3, i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7, i32 31>
  %i.bcr = lshr <16 x i32> %i.bcq, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0, i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bcs = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 64
  %i.bct = bitcast <16 x i32> %i.bcr to <8 x i64>
  %i.bcu = and <8 x i64> %i.bct, splat (i64 140733193420799)
  store <8 x i64> %i.bcu, ptr %i.bcs, align 1, !tbaa !15
  %i.bcv = getelementptr inbounds nuw i8, ptr %.02531.i425, i64 60 ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %.02630.i426, i64 128 ; 2 uses
  %i.bcx = add nuw nsw i32 %.032.i424, 1          ; 2 uses
  %exitcond.not.i427 = icmp eq i32 %i.bcx, %i.azn
  br i1 %exitcond.not.i427, label %._crit_edge.i415, label %.lr.ph.i423, !llvm.loop !149

bb.ag:                                            ; preds = %bb.a
  %i.bcy = shl nsw i32 %2, 4
  %i.bcz = add nsw i32 %4, %i.bcy
  %i.bda = icmp sgt i32 %2, 0
  br i1 %i.bda, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i451:                                    ; preds = %bb.ag, %bb.ah
  %.026.i.i452 = phi ptr [ %i.bdq, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i453 = phi i32 [ %i.bdd, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.bdb = srem i32 %.02325.i.i453, 8             ; 2 uses
  %i.bdc = sdiv i32 %.02325.i.i453, 8             ; 2 uses
  %.not.i.i454 = icmp eq i32 %i.bdb, 0
  br i1 %.not.i.i454, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i451
  %i.bdd = add nsw i32 %.02325.i.i453, 16         ; 3 uses
  %i.bde = add nsw i32 %.02325.i.i453, 15
  %i.bdf = sdiv i32 %i.bde, 8
  %i.bdg = sub nsw i32 %i.bdf, %i.bdc             ; 2 uses
  %i.bdh = add nsw i32 %i.bdg, 1
  %i.bdi = icmp slt i32 %i.bdg, 3
  tail call void @llvm.assume(i1 %i.bdi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !tbaa !19
  %i.bdj = sext i32 %i.bdc to i64
  %i.bdk = getelementptr inbounds i8, ptr %0, i64 %i.bdj
  %i.bdl = sext i32 %i.bdh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %i.bdk, i64 %i.bdl, i1 false)
  %.0..0..0..0..0..0..0..0..i.i455 = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bdm = zext nneg i32 %i.bdb to i64
  %i.bdn = lshr i64 %.0..0..0..0..0..0..0..0..i.i455, %i.bdm
  %i.bdo = trunc i64 %i.bdn to i32
  %i.bdp = and i32 %i.bdo, 65535
  store i32 %i.bdp, ptr %.026.i.i452, align 4, !tbaa !3
  %i.bdq = getelementptr inbounds nuw i8, ptr %.026.i.i452, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.bdr = icmp slt i32 %i.bdd, %i.bcz
  br i1 %i.bdr, label %.lr.ph.i.i451, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !150

_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i451, %bb.ag
  %.023.lcssa.i.i433 = phi i32 [ %4, %bb.ag ], [ %i.bdd, %bb.ah ], [ %.02325.i.i453, %.lr.ph.i.i451 ]
  %i.bds = sub nsw i32 %.023.lcssa.i.i433, %4
  %i.bdt = sdiv i32 %i.bds, 16                    ; 3 uses
  %i.bdu = shl nsw i32 %i.bdt, 4
  %i.bdv = add nsw i32 %i.bdu, %4
  %i.bdw = sub nsw i32 %2, %i.bdt                 ; 4 uses
  %i.bdx = sdiv i32 %i.bdv, 8
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds i8, ptr %0, i64 %i.bdy ; 2 uses
  %i.bea = sext i32 %i.bdt to i64
  %i.beb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bea ; 2 uses
  %i.bec = sdiv i32 %i.bdw, 32                    ; 2 uses
  %i.bed = icmp sgt i32 %i.bdw, 31
  br i1 %i.bed, label %.lr.ph.i444, label %._crit_edge.i434

._crit_edge.i434:                                 ; preds = %.lr.ph.i444, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i435 = phi ptr [ %i.beb, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bgt, %.lr.ph.i444 ] ; 7 uses
  %.025.lcssa.i436 = phi ptr [ %i.bdz, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bgs, %.lr.ph.i444 ] ; 5 uses
  %i.bee = shl nsw i32 %i.bec, 5                  ; 2 uses
  %i.bef = sub nsw i32 %i.bdw, %i.bee             ; 2 uses
  %i.beg = icmp samesign ult i32 %i.bef, 32
  tail call void @llvm.assume(i1 %i.beg)
  %.not.i437 = icmp eq i32 %i.bdw, %i.bee
  br i1 %.not.i437, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i434
  %i.beh = shl nuw nsw i32 %i.bef, 4
  %i.bei = zext nneg i32 %i.beh to i64            ; 3 uses
  %i.bej = tail call i64 @llvm.usub.sat.i64(i64 %i.bei, i64 16) ; 3 uses
  %i.bek = lshr exact i64 %i.bej, 4
  %i.bel = add nuw nsw i64 %i.bek, 1              ; 3 uses
  %min.iters.check1238 = icmp samesign ult i64 %i.bej, 112
  br i1 %min.iters.check1238, label %.lr.ph.i28.i439.preheader, label %vector.memcheck1229

vector.memcheck1229:                              ; preds = %iter.check
  %i.bem = tail call i64 @llvm.usub.sat.i64(i64 %i.bei, i64 16) ; 2 uses
  %i.ben = lshr exact i64 %i.bem, 3
  %i.beo = lshr exact i64 %i.bem, 2
  %i.bep = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.beo
  %scevgep1231 = getelementptr i8, ptr %i.bep, i64 4
  %i.beq = getelementptr i8, ptr %.025.lcssa.i436, i64 %i.ben
  %scevgep1232 = getelementptr i8, ptr %i.beq, i64 2
  %bound01233 = icmp ult ptr %.026.lcssa.i435, %scevgep1232
  %bound11234 = icmp ult ptr %.025.lcssa.i436, %scevgep1231
  %found.conflict1235 = and i1 %bound01233, %bound11234
  br i1 %found.conflict1235, label %.lr.ph.i28.i439.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1229
  %min.iters.check1239.not = icmp eq i64 %i.bej, 496
  br i1 %min.iters.check1239.not, label %vector.body1243, label %vec.epilog.ph

vector.body1243:                                  ; preds = %vector.main.loop.iter.check, %vector.body1243
  %index1244 = phi i64 [ %index.next1249, %vector.body1243 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ber = shl i64 %index1244, 2
  %next.gep1245 = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.ber ; 4 uses
  %i.bes = shl nuw nsw i64 %index1244, 1
  %i.bet = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bes ; 4 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 16
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 32
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bet, i64 48
  %wide.load = load <8 x i16>, ptr %i.bet, align 1, !alias.scope !151
  %wide.load1246 = load <8 x i16>, ptr %i.beu, align 1, !alias.scope !151
  %wide.load1247 = load <8 x i16>, ptr %i.bev, align 1, !alias.scope !151
  %wide.load1248 = load <8 x i16>, ptr %i.bew, align 1, !alias.scope !151
  %i.bex = zext <8 x i16> %wide.load to <8 x i32>
  %i.bey = zext <8 x i16> %wide.load1246 to <8 x i32>
  %i.bez = zext <8 x i16> %wide.load1247 to <8 x i32>
  %i.bfa = zext <8 x i16> %wide.load1248 to <8 x i32>
  %i.bfb = getelementptr i8, ptr %next.gep1245, i64 32
  %i.bfc = getelementptr i8, ptr %next.gep1245, i64 64
  %i.bfd = getelementptr i8, ptr %next.gep1245, i64 96
  store <8 x i32> %i.bex, ptr %next.gep1245, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bey, ptr %i.bfb, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bez, ptr %i.bfc, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bfa, ptr %i.bfd, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1249 = add nuw i64 %index1244, 32    ; 2 uses
  %i.bfe = icmp eq i64 %index.next1249, %i.bel
  br i1 %i.bfe, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vector.body1243, !llvm.loop !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec1255 = and i64 %i.bel, 268435448          ; 4 uses
  %i.bff = shl nuw nsw i64 %n.vec1255, 4
  %i.bfg = shl nuw nsw i64 %n.vec1255, 2
  %i.bfh = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bfg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1256 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next1259, %vec.epilog.vector.body ] ; 3 uses
  %i.bfi = shl i64 %index1256, 2
  %next.gep1257 = getelementptr i8, ptr %.026.lcssa.i435, i64 %i.bfi
  %i.bfj = shl nuw nsw i64 %index1256, 1
  %i.bfk = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bfj
  %wide.load1258 = load <8 x i16>, ptr %i.bfk, align 1, !alias.scope !151
  %i.bfl = zext <8 x i16> %wide.load1258 to <8 x i32>
  store <8 x i32> %i.bfl, ptr %next.gep1257, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1259 = add nuw i64 %index1256, 8     ; 2 uses
  %i.bfm = icmp eq i64 %index.next1259, %n.vec1255
  br i1 %i.bfm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1260 = icmp eq i64 %i.bel, %n.vec1255
  br i1 %cmp.n1260, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i439.preheader

.lr.ph.i28.i439.preheader:                        ; preds = %vector.memcheck1229, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i440.ph = phi i64 [ 0, %vector.memcheck1229 ], [ 0, %iter.check ], [ %i.bff, %vec.epilog.middle.block ]
  %.024.i.i441.ph = phi ptr [ %.026.lcssa.i435, %vector.memcheck1229 ], [ %.026.lcssa.i435, %iter.check ], [ %i.bfh, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i439

.lr.ph.i28.i439:                                  ; preds = %.lr.ph.i28.i439.preheader, %.lr.ph.i28.i439
  %indvars.iv.i440 = phi i64 [ %indvars.iv.next.i442, %.lr.ph.i28.i439 ], [ %indvars.iv.i440.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %.024.i.i441 = phi ptr [ %i.bfr, %.lr.ph.i28.i439 ], [ %.024.i.i441.ph, %.lr.ph.i28.i439.preheader ] ; 2 uses
  %i.bfn = lshr exact i64 %indvars.iv.i440, 3
  %indvars.iv.next.i442 = add nuw nsw i64 %indvars.iv.i440, 16 ; 2 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %.025.lcssa.i436, i64 %i.bfn
  %i.bfp = load i16, ptr %i.bfo, align 1
  %i.bfq = zext i16 %i.bfp to i32
  store i32 %i.bfq, ptr %.024.i.i441, align 4, !tbaa !3
  %i.bfr = getelementptr inbounds nuw i8, ptr %.024.i.i441, i64 4
  %i.bfs = icmp samesign ult i64 %indvars.iv.next.i442, %i.bei
  br i1 %i.bfs, label %.lr.ph.i28.i439, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !158

.lr.ph.i444:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i444
  %.032.i445 = phi i32 [ %i.bgu, %.lr.ph.i444 ], [ 0, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i446 = phi ptr [ %i.bgs, %.lr.ph.i444 ], [ %i.bdz, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 4 uses
  %.02630.i447 = phi ptr [ %i.bgt, %.lr.ph.i444 ], [ %i.beb, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 20
  %i.bfu = load <5 x i32>, ptr %.02531.i446, align 1 ; 2 uses
  %i.bfv = shufflevector <5 x i32> %i.bfu, <5 x i32> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4> ; 2 uses
  %i.bfw = lshr <8 x i32> %i.bfv, <i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0>
  %i.bfx = shufflevector <8 x i32> %i.bfv, <8 x i32> %i.bfw, <16 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfy = extractelement <5 x i32> %i.bfu, i64 4
  %i.bfz = lshr i32 %i.bfy, 16
  %i.bga = insertelement <16 x i32> %i.bfx, i32 %i.bfz, i64 9
  %i.bgb = load <3 x i32>, ptr %i.bft, align 1    ; 3 uses
  %i.bgc = shufflevector <3 x i32> %i.bgb, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 2>
  %i.bgd = shufflevector <3 x i32> %i.bgb, <3 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bge = shufflevector <16 x i32> %i.bga, <16 x i32> %i.bgd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgf = lshr <4 x i32> %i.bgc, <i32 16, i32 0, i32 16, i32 0>
  %i.bgg = shufflevector <4 x i32> %i.bgf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgh = shufflevector <16 x i32> %i.bge, <16 x i32> %i.bgg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 18, i32 19, i32 poison>
  %i.bgi = extractelement <3 x i32> %i.bgb, i64 2
  %i.bgj = lshr i32 %i.bgi, 16
  %.sroa.0111.60.vec.insert.i.i448 = insertelement <16 x i32> %i.bgh, i32 %i.bgj, i64 15
  %i.bgk = bitcast <16 x i32> %.sroa.0111.60.vec.insert.i.i448 to <8 x i64>
  %i.bgl = and <8 x i64> %i.bgk, splat (i64 281470681808895)
  store <8 x i64> %i.bgl, ptr %.02630.i447, align 1, !tbaa !15
  %i.bgm = getelementptr inbounds nuw i8, ptr %.02531.i446, <16 x i64> <i64 32, i64 32, i64 36, i64 36, i64 40, i64 40, i64 44, i64 44, i64 48, i64 48, i64 52, i64 52, i64 56, i64 56, i64 60, i64 60>
  %i.bgn = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 1 %i.bgm, <16 x i1> splat (i1 true), <16 x i32> poison)
  %i.bgo = lshr <16 x i32> %i.bgn, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.bgp = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 64
  %i.bgq = bitcast <16 x i32> %i.bgo to <8 x i64>
  %i.bgr = and <8 x i64> %i.bgq, splat (i64 281470681808895)
  store <8 x i64> %i.bgr, ptr %i.bgp, align 1, !tbaa !15
  %i.bgs = getelementptr inbounds nuw i8, ptr %.02531.i446, i64 64 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.02630.i447, i64 128 ; 2 uses
  %i.bgu = add nuw nsw i32 %.032.i445, 1          ; 2 uses
  %exitcond.not.i450 = icmp eq i32 %i.bgu, %i.bec
  br i1 %exitcond.not.i450, label %._crit_edge.i434, label %.lr.ph.i444, !llvm.loop !159

bb.ai:                                            ; preds = %bb.a
  %i.bgv = mul nsw i32 %2, 17
  %i.bgw = add nsw i32 %4, %i.bgv
  %i.bgx = icmp sgt i32 %2, 0
  br i1 %i.bgx, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i470:                                    ; preds = %bb.ai, %bb.aj
  %.026.i.i471 = phi ptr [ %i.bhn, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  %.02325.i.i472 = phi i32 [ %i.bha, %bb.aj ], [ %4, %bb.ai ] ; 5 uses
  %i.bgy = srem i32 %.02325.i.i472, 8             ; 2 uses
  %i.bgz = sdiv i32 %.02325.i.i472, 8             ; 2 uses
  %.not.i.i473 = icmp eq i32 %i.bgy, 0
  br i1 %.not.i.i473, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i470
  %i.bha = add nsw i32 %.02325.i.i472, 17         ; 3 uses
  %i.bhb = add nsw i32 %.02325.i.i472, 16
  %i.bhc = sdiv i32 %i.bhb, 8
  %i.bhd = sub nsw i32 %i.bhc, %i.bgz             ; 2 uses
  %i.bhe = add nsw i32 %i.bhd, 1
  %i.bhf = icmp slt i32 %i.bhd, 3
  tail call void @llvm.assume(i1 %i.bhf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8, !tbaa !19
  %i.bhg = sext i32 %i.bgz to i64
  %i.bhh = getelementptr inbounds i8, ptr %0, i64 %i.bhg
  %i.bhi = sext i32 %i.bhe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr readonly align 1 %i.bhh, i64 %i.bhi, i1 false)
  %.0..0..0..0..0..0..0..0..i.i474 = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.bhj = zext nneg i32 %i.bgy to i64
  %i.bhk = lshr i64 %.0..0..0..0..0..0..0..0..i.i474, %i.bhj
  %i.bhl = trunc i64 %i.bhk to i32
  %i.bhm = and i32 %i.bhl, 131071
  store i32 %i.bhm, ptr %.026.i.i471, align 4, !tbaa !3
  %i.bhn = getelementptr inbounds nuw i8, ptr %.026.i.i471, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.bho = icmp slt i32 %i.bha, %i.bgw
  br i1 %i.bho, label %.lr.ph.i.i470, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !160

_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.aj, %.lr.ph.i.i470, %bb.ai
  %.023.lcssa.i.i456 = phi i32 [ %4, %bb.ai ], [ %i.bha, %bb.aj ], [ %.02325.i.i472, %.lr.ph.i.i470 ]
  %i.bhp = sub nsw i32 %.023.lcssa.i.i456, %4
  %i.bhq = sdiv i32 %i.bhp, 17                    ; 3 uses
  %i.bhr = mul nsw i32 %i.bhq, 17
  %i.bhs = add nsw i32 %i.bhr, %4
  %i.bht = sub nsw i32 %2, %i.bhq                 ; 4 uses
  %i.bhu = sdiv i32 %i.bhs, 8
  %i.bhv = sext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds i8, ptr %0, i64 %i.bhv ; 2 uses
  %i.bhx = sext i32 %i.bhq to i64
  %i.bhy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bhx ; 2 uses
  %i.bhz = sdiv i32 %i.bht, 32                    ; 2 uses
  %i.bia = icmp sgt i32 %i.bht, 31
  br i1 %i.bia, label %.lr.ph.i465, label %._crit_edge.i457

._crit_edge.i457:                                 ; preds = %.lr.ph.i465, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i458 = phi ptr [ %i.bhy, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bkl, %.lr.ph.i465 ]
  %.025.lcssa.i459 = phi ptr [ %i.bhw, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.bkk, %.lr.ph.i465 ]
  %i.bib = shl nsw i32 %i.bhz, 5                  ; 2 uses
  %i.bic = sub nsw i32 %i.bht, %i.bib             ; 2 uses
  %i.bid = icmp samesign ult i32 %i.bic, 32
  tail call void @llvm.assume(i1 %i.bid)
  %i.bie = mul nuw nsw i32 %i.bic, 17
  %.not.i460 = icmp eq i32 %i.bht, %i.bib
  br i1 %.not.i460, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i461

.lr.ph.i28.i461:                                  ; preds = %._crit_edge.i457, %.lr.ph.i28.i461
  %.024.i.i462 = phi ptr [ %i.biu, %.lr.ph.i28.i461 ], [ %.026.lcssa.i458, %._crit_edge.i457 ] ; 2 uses
  %.02223.i.i463 = phi i32 [ %i.big, %.lr.ph.i28.i461 ], [ 0, %._crit_edge.i457 ] ; 4 uses
  %i.bif = lshr i32 %.02223.i.i463, 3             ; 2 uses
  %i.big = add nuw nsw i32 %.02223.i.i463, 17     ; 2 uses
  %i.bih = add nuw nsw i32 %.02223.i.i463, 16
  %i.bii = lshr i32 %i.bih, 3
  %i.bij = sub nsw i32 %i.bii, %i.bif             ; 2 uses
  %i.bik = add nsw i32 %i.bij, 1
  %i.bil = icmp slt i32 %i.bij, 3
  tail call void @llvm.assume(i1 %i.bil)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  %i.bim = zext nneg i32 %i.bif to i64
  %i.bin = getelementptr inbounds nuw i8, ptr %.025.lcssa.i459, i64 %i.bim
  %i.bio = sext i32 %i.bik to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %i.bin, i64 %i.bio, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i464 = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.bip = and i32 %.02223.i.i463, 7
  %i.biq = zext nneg i32 %i.bip to i64
  %i.bir = lshr i64 %.0..0..0..0..0..0..0..0..i29.i464, %i.biq
  %i.bis = trunc i64 %i.bir to i32
  %i.bit = and i32 %i.bis, 131071
  store i32 %i.bit, ptr %.024.i.i462, align 4, !tbaa !3
  %i.biu = getelementptr inbounds nuw i8, ptr %.024.i.i462, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.biv = icmp samesign ult i32 %i.big, %i.bie
  br i1 %i.biv, label %.lr.ph.i28.i461, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !161

.lr.ph.i465:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i465
  %.032.i466 = phi i32 [ %i.bkm, %.lr.ph.i465 ], [ 0, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i467 = phi ptr [ %i.bkk, %.lr.ph.i465 ], [ %i.bhw, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 7 uses
  %.02630.i468 = phi ptr [ %i.bkl, %.lr.ph.i465 ], [ %i.bhy, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 4 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 8
  %i.biy = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 12
  %i.biz = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 32
  %i.bja = load <8 x i32>, ptr %.02531.i467, align 1 ; 2 uses
  %i.bjb = load <8 x i32>, ptr %i.biw, align 1    ; 5 uses
  %i.bjc = load i32, ptr %i.biy, align 1
  %i.bjd = load i32, ptr %i.bix, align 1
  %i.bje = load i32, ptr %i.biw, align 1
  %i.bjf = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bjb, <8 x i32> %i.bja, <8 x i32> <i32 15, i32 13, i32 11, i32 9, i32 7, i32 5, i32 3, i32 1>)
  %i.bjg = lshr i32 %i.bje, 2
  %i.bjh = lshr i32 %i.bjd, 4
  %i.bji = lshr i32 %i.bjc, 6
  %i.bjj = extractelement <8 x i32> %i.bjb, i64 3
  %i.bjk = lshr i32 %i.bjj, 8
  %i.bjl = extractelement <8 x i32> %i.bjb, i64 4
  %i.bjm = lshr i32 %i.bjl, 10
  %i.bjn = extractelement <8 x i32> %i.bjb, i64 5
  %i.bjo = lshr i32 %i.bjn, 12
  %i.bjp = extractelement <8 x i32> %i.bjb, i64 6
  %i.bjq = lshr i32 %i.bjp, 14
  %i.bjr = shufflevector <8 x i32> %i.bjf, <8 x i32> %i.bja, <16 x i32> <i32 8, i32 0, i32 poison, i32 1, i32 poison, i32 2, i32 poison, i32 3, i32 poison, i32 4, i32 poison, i32 5, i32 poison, i32 6, i32 poison, i32 7>
  %i.bjs = insertelement <16 x i32> %i.bjr, i32 %i.bjg, i64 2
  %i.bjt = insertelement <16 x i32> %i.bjs, i32 %i.bjh, i64 4
  %i.bju = insertelement <16 x i32> %i.bjt, i32 %i.bji, i64 6
  %i.bjv = insertelement <16 x i32> %i.bju, i32 %i.bjk, i64 8
  %i.bjw = insertelement <16 x i32> %i.bjv, i32 %i.bjm, i64 10
  %i.bjx = insertelement <16 x i32> %i.bjw, i32 %i.bjo, i64 12
  %i.bjy = insertelement <16 x i32> %i.bjx, i32 %i.bjq, i64 14
  %i.bjz = bitcast <16 x i32> %i.bjy to <8 x i64>
  %i.bka = and <8 x i64> %i.bjz, splat (i64 562945658585087)
  store <8 x i64> %i.bka, ptr %.02630.i468, align 1, !tbaa !15
  %i.bkb = getelementptr inbounds nuw i8, ptr %.02531.i467, i64 36
  %i.bkc = load <8 x i32>, ptr %i.biz, align 1
end_hunk_2
