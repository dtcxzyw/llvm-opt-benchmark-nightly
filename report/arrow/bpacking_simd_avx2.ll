inline.NumInlined: 12609
inline.NumDeleted: 445
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5arrow8internal11unpack_avx2ItEEvPKhPT_iii:bb.a
.lr.ph.i28.i161.i:                                ; preds = %._crit_edge.i157.i, %.lr.ph.i28.i161.i
  %.024.i.i162.i = phi ptr [ %i.xs, %.lr.ph.i28.i161.i ], [ %.026.lcssa.i158.i, %._crit_edge.i157.i ] ; 2 uses
  %.02223.i.i163.i = phi i32 [ %i.xe, %.lr.ph.i28.i161.i ], [ 0, %._crit_edge.i157.i ] ; 4 uses
  %i.xd = lshr i32 %.02223.i.i163.i, 3            ; 2 uses
  %i.xe = add nuw nsw i32 %.02223.i.i163.i, 7     ; 2 uses
  %i.xf = add nuw nsw i32 %.02223.i.i163.i, 6
  %i.xg = lshr i32 %i.xf, 3
  %i.xh = sub nsw i32 %i.xg, %i.xd                ; 2 uses
  %i.xi = add nsw i32 %i.xh, 1
  %i.xj = icmp slt i32 %i.xh, 2
  tail call void @llvm.assume(i1 %i.xj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.xk = zext nneg i32 %i.xd to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i159.i, i64 %i.xk
  %i.xm = sext i32 %i.xi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.xl, i64 %i.xm, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i164.i = load i64, ptr %i.q, align 8, !tbaa !19
  %i.xn = and i32 %.02223.i.i163.i, 7
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i164.i, %i.xo
  %i.xq = trunc i64 %i.xp to i16
  %i.xr = and i16 %i.xq, 127
  store i16 %i.xr, ptr %.024.i.i162.i, align 2, !tbaa !41
  %i.xs = getelementptr inbounds nuw i8, ptr %.024.i.i162.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.xt = icmp samesign ult i32 %i.xe, %i.xc
  br i1 %i.xt, label %.lr.ph.i28.i161.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !62

.lr.ph.i165.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i165.i
  %.032.i166.i = phi i32 [ %i.aah, %.lr.ph.i165.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i167.i = phi ptr [ %i.aaf, %.lr.ph.i165.i ], [ %i.wu, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 8 uses
  %.02630.i168.i = phi ptr [ %i.aag, %.lr.ph.i165.i ], [ %i.ww, %_ZN5arrow8internal12unpack_exactILi7ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.xu = load i32, ptr %.02531.i167.i, align 1   ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 4
  %i.xw = load i32, ptr %i.xv, align 1            ; 6 uses
  %i.xx = tail call i32 @llvm.fshl.i32(i32 %i.xw, i32 %i.xu, i32 4)
  %i.xy = insertelement <4 x i32> poison, i32 %i.xu, i64 0
  %i.xz = shufflevector <4 x i32> %i.xy, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ya = insertelement <8 x i32> %i.xz, i32 %i.xx, i64 4
  %i.yb = insertelement <8 x i32> %i.ya, i32 %i.xw, i64 5
  %i.yc = insertelement <8 x i32> %i.yb, i32 %i.xw, i64 6
  %i.yd = insertelement <8 x i32> %i.yc, i32 %i.xw, i64 7
  %i.ye = lshr <8 x i32> %i.yd, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17>
  %i.yf = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 8
  %i.yg = load i32, ptr %i.yf, align 1            ; 5 uses
  %i.yh = tail call i32 @llvm.fshl.i32(i32 %i.yg, i32 %i.xw, i32 1)
  %i.yi = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 12
  %i.yj = load i32, ptr %i.yi, align 1            ; 6 uses
  %i.yk = tail call i32 @llvm.fshl.i32(i32 %i.yj, i32 %i.yg, i32 5)
  %i.yl = insertelement <8 x i32> poison, i32 %i.xw, i64 0
  %i.ym = insertelement <8 x i32> %i.yl, i32 %i.yh, i64 1
  %i.yn = insertelement <8 x i32> %i.ym, i32 %i.yg, i64 2
  %i.yo = insertelement <8 x i32> %i.yn, i32 %i.yg, i64 3
  %i.yp = insertelement <8 x i32> %i.yo, i32 %i.yg, i64 4
  %i.yq = insertelement <8 x i32> %i.yp, i32 %i.yk, i64 5
  %i.yr = insertelement <8 x i32> %i.yq, i32 %i.yj, i64 6
  %i.ys = insertelement <8 x i32> %i.yr, i32 %i.yj, i64 7
  %i.yt = lshr <8 x i32> %i.ys, <i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %i.yu = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 16
  %i.yv = load i32, ptr %i.yu, align 1            ; 5 uses
  %i.yw = tail call i32 @llvm.fshl.i32(i32 %i.yv, i32 %i.yj, i32 2)
  %i.yx = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 20
  %i.yy = load i32, ptr %i.yx, align 1            ; 6 uses
  %i.yz = tail call i32 @llvm.fshl.i32(i32 %i.yy, i32 %i.yv, i32 6)
  %i.za = insertelement <8 x i32> poison, i32 %i.yj, i64 0
  %i.zb = insertelement <8 x i32> %i.za, i32 %i.yj, i64 1
  %i.zc = insertelement <8 x i32> %i.zb, i32 %i.yw, i64 2
  %i.zd = insertelement <8 x i32> %i.zc, i32 %i.yv, i64 3
  %i.ze = insertelement <8 x i32> %i.zd, i32 %i.yv, i64 4
  %i.zf = insertelement <8 x i32> %i.ze, i32 %i.yv, i64 5
  %i.zg = insertelement <8 x i32> %i.zf, i32 %i.yz, i64 6
  %i.zh = insertelement <8 x i32> %i.zg, i32 %i.yy, i64 7
  %i.zi = lshr <8 x i32> %i.zh, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1>
  %i.zj = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 24
  %i.zk = load i32, ptr %i.zj, align 1            ; 2 uses
  %i.zl = tail call i32 @llvm.fshl.i32(i32 %i.zk, i32 %i.yy, i32 3)
  %i.zm = insertelement <8 x i32> poison, i32 %i.yy, i64 0
  %i.zn = insertelement <8 x i32> %i.zm, i32 %i.yy, i64 1
  %i.zo = insertelement <8 x i32> %i.zn, i32 %i.yy, i64 2
  %i.zp = insertelement <8 x i32> %i.zo, i32 %i.zl, i64 3
  %i.zq = insertelement <4 x i32> poison, i32 %i.zk, i64 0
  %i.zr = shufflevector <4 x i32> %i.zq, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zs = shufflevector <8 x i32> %i.zp, <8 x i32> %i.zr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.zt = lshr <8 x i32> %i.zs, <i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.zu = bitcast <8 x i32> %i.ye to <16 x i16>
  %i.zv = and <16 x i16> %i.zu, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.zw = bitcast <8 x i32> %i.yt to <16 x i16>
  %i.zx = and <16 x i16> %i.zw, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.zy = shufflevector <16 x i16> %i.zv, <16 x i16> %i.zx, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.zy, ptr %.02630.i168.i, align 2, !tbaa !41
  %i.zz = bitcast <8 x i32> %i.zi to <16 x i16>
  %i.aaa = and <16 x i16> %i.zz, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.aab = getelementptr inbounds nuw i8, ptr %.02630.i168.i, i64 32
  %i.aac = bitcast <8 x i32> %i.zt to <16 x i16>
  %i.aad = and <16 x i16> %i.aac, <i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison, i16 127, i16 poison>
  %i.aae = shufflevector <16 x i16> %i.aaa, <16 x i16> %i.aad, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.aae, ptr %i.aab, align 2, !tbaa !41
  %i.aaf = getelementptr inbounds nuw i8, ptr %.02531.i167.i, i64 28 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.02630.i168.i, i64 64 ; 2 uses
  %i.aah = add nuw nsw i32 %.032.i166.i, 1        ; 2 uses
  %exitcond.not.i169.i = icmp eq i32 %i.aah, %i.wx
  br i1 %exitcond.not.i169.i, label %._crit_edge.i157.i, label %.lr.ph.i165.i, !llvm.loop !63

bb.q:                                             ; preds = %bb.a
  %i.aai = shl nsw i32 %2, 3
  %i.aaj = add nsw i32 %4, %i.aai
  %i.aak = icmp sgt i32 %2, 0
  br i1 %i.aak, label %.lr.ph.i.i187.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i187.i:                                  ; preds = %bb.q, %bb.r
  %.026.i.i188.i = phi ptr [ %i.aba, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i189.i = phi i32 [ %i.aan, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.aal = srem i32 %.02325.i.i189.i, 8           ; 2 uses
  %i.aam = sdiv i32 %.02325.i.i189.i, 8           ; 2 uses
  %.not.i.i190.i = icmp eq i32 %i.aal, 0
  br i1 %.not.i.i190.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i187.i
  %i.aan = add nsw i32 %.02325.i.i189.i, 8        ; 3 uses
  %i.aao = add nsw i32 %.02325.i.i189.i, 7
  %i.aap = sdiv i32 %i.aao, 8
  %i.aaq = sub nsw i32 %i.aap, %i.aam             ; 2 uses
  %i.aar = add nsw i32 %i.aaq, 1
  %i.aas = icmp slt i32 %i.aaq, 2
  tail call void @llvm.assume(i1 %i.aas)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !19
  %i.aat = sext i32 %i.aam to i64
  %i.aau = getelementptr inbounds i8, ptr %0, i64 %i.aat
  %i.aav = sext i32 %i.aar to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.aau, i64 %i.aav, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i191.i = load i64, ptr %i.p, align 8, !tbaa !19
  %i.aaw = zext nneg i32 %i.aal to i64
  %i.aax = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i191.i, %i.aaw
  %i.aay = trunc i64 %i.aax to i16
  %i.aaz = and i16 %i.aay, 255
  store i16 %i.aaz, ptr %.026.i.i188.i, align 2, !tbaa !41
  %i.aba = getelementptr inbounds nuw i8, ptr %.026.i.i188.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.abb = icmp slt i32 %i.aan, %i.aaj
  br i1 %i.abb, label %.lr.ph.i.i187.i, label %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !64

_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.r, %.lr.ph.i.i187.i, %bb.q
  %.023.lcssa.i.i175.i = phi i32 [ %4, %bb.q ], [ %.02325.i.i189.i, %.lr.ph.i.i187.i ], [ %i.aan, %bb.r ]
  %i.abc = sub nsw i32 %.023.lcssa.i.i175.i, %4
  %i.abd = sdiv i32 %i.abc, 8                     ; 3 uses
  %i.abe = shl nsw i32 %i.abd, 3
  %i.abf = add nsw i32 %i.abe, %4
  %i.abg = sub nsw i32 %2, %i.abd                 ; 4 uses
  %i.abh = sdiv i32 %i.abf, 8
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds i8, ptr %0, i64 %i.abi ; 2 uses
  %i.abk = sext i32 %i.abd to i64
  %i.abl = getelementptr inbounds [2 x i8], ptr %1, i64 %i.abk ; 2 uses
  %i.abm = sdiv i32 %i.abg, 32                    ; 2 uses
  %i.abn = icmp sgt i32 %i.abg, 31
  br i1 %i.abn, label %.lr.ph.i182.i, label %._crit_edge.i176.i

._crit_edge.i176.i:                               ; preds = %.lr.ph.i182.i, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i177.i = phi ptr [ %i.abl, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.adp, %.lr.ph.i182.i ] ; 6 uses
  %.025.lcssa.i178.i = phi ptr [ %i.abj, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.ado, %.lr.ph.i182.i ] ; 4 uses
  %i.abo = shl nsw i32 %i.abm, 5                  ; 2 uses
  %i.abp = sub nsw i32 %i.abg, %i.abo             ; 2 uses
  %i.abq = icmp samesign ult i32 %i.abp, 32
  tail call void @llvm.assume(i1 %i.abq)
  %.not.i179.i = icmp eq i32 %i.abg, %i.abo
  br i1 %.not.i179.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i176.i
  %i.abr = shl nuw nsw i32 %i.abp, 3
  %i.abs = zext nneg i32 %i.abr to i64            ; 3 uses
  %i.abt = tail call i64 @llvm.usub.sat.i64(i64 %i.abs, i64 8) ; 2 uses
  %i.abu = lshr exact i64 %i.abt, 3
  %i.abv = add nuw nsw i64 %i.abu, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.abt, 56
  br i1 %min.iters.check, label %.lr.ph.i28.i180.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.abw = tail call i64 @llvm.usub.sat.i64(i64 %i.abs, i64 8) ; 2 uses
  %i.abx = lshr exact i64 %i.abw, 3
  %i.aby = lshr exact i64 %i.abw, 2
  %i.abz = getelementptr i8, ptr %.026.lcssa.i177.i, i64 %i.aby
  %scevgep = getelementptr i8, ptr %i.abz, i64 2
  %i.aca = getelementptr i8, ptr %.025.lcssa.i178.i, i64 %i.abx
  %scevgep222 = getelementptr i8, ptr %i.aca, i64 1
  %bound0 = icmp ult ptr %.026.lcssa.i177.i, %scevgep222
  %bound1 = icmp ult ptr %.025.lcssa.i178.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i180.i.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec230 = and i64 %i.abv, 536870904           ; 4 uses
  %i.acb = shl nuw nsw i64 %n.vec230, 3
  %i.acc = shl nuw nsw i64 %n.vec230, 1
  %i.acd = getelementptr i8, ptr %.026.lcssa.i177.i, i64 %i.acc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next234, %vec.epilog.vector.body ] ; 3 uses
  %i.ace = shl i64 %index231, 1
  %next.gep232 = getelementptr i8, ptr %.026.lcssa.i177.i, i64 %i.ace
  %i.acf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i178.i, i64 %index231
  %wide.load233 = load <8 x i8>, ptr %i.acf, align 1, !alias.scope !65
  %i.acg = zext <8 x i8> %wide.load233 to <8 x i16>
  store <8 x i16> %i.acg, ptr %next.gep232, align 2, !tbaa !41, !alias.scope !68, !noalias !65
  %index.next234 = add nuw i64 %index231, 8       ; 2 uses
  %i.ach = icmp eq i64 %index.next234, %n.vec230
  br i1 %i.ach, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n235 = icmp eq i64 %i.abv, %n.vec230
  br i1 %cmp.n235, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i180.i.preheader

.lr.ph.i28.i180.i.preheader:                      ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %i.acb, %vec.epilog.middle.block ]
  %.024.i.i181.i.ph = phi ptr [ %.026.lcssa.i177.i, %vector.memcheck ], [ %.026.lcssa.i177.i, %iter.check ], [ %i.acd, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i180.i

.lr.ph.i28.i180.i:                                ; preds = %.lr.ph.i28.i180.i.preheader, %.lr.ph.i28.i180.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i28.i180.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i28.i180.i.preheader ] ; 2 uses
  %.024.i.i181.i = phi ptr [ %i.acm, %.lr.ph.i28.i180.i ], [ %.024.i.i181.i.ph, %.lr.ph.i28.i180.i.preheader ] ; 2 uses
  %i.aci = lshr exact i64 %indvars.iv.i.i, 3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i178.i, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1
  %i.acl = zext i8 %i.ack to i16
  store i16 %i.acl, ptr %.024.i.i181.i, align 2, !tbaa !41
  %i.acm = getelementptr inbounds nuw i8, ptr %.024.i.i181.i, i64 2
  %i.acn = icmp samesign ult i64 %indvars.iv.next.i.i, %i.abs
  br i1 %i.acn, label %.lr.ph.i28.i180.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !73

.lr.ph.i182.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i182.i
  %.032.i183.i = phi i32 [ %i.adq, %.lr.ph.i182.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i184.i = phi ptr [ %i.ado, %.lr.ph.i182.i ], [ %i.abj, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 5 uses
  %.02630.i185.i = phi ptr [ %i.adp, %.lr.ph.i182.i ], [ %i.abl, %_ZN5arrow8internal12unpack_exactILi8ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.aco = load <2 x i32>, ptr %.02531.i184.i, align 1
  %i.acp = shufflevector <2 x i32> %i.aco, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.acq = lshr <8 x i32> %i.acp, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.acr = getelementptr inbounds nuw i8, ptr %.02531.i184.i, i64 8
  %i.acs = load <2 x i32>, ptr %i.acr, align 1
  %i.act = shufflevector <2 x i32> %i.acs, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.acu = lshr <8 x i32> %i.act, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.acv = getelementptr inbounds nuw i8, ptr %.02531.i184.i, i64 16
  %i.acw = load <2 x i32>, ptr %i.acv, align 1
  %i.acx = shufflevector <2 x i32> %i.acw, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.acy = lshr <8 x i32> %i.acx, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.acz = getelementptr inbounds nuw i8, ptr %.02531.i184.i, i64 24
  %i.ada = load <2 x i32>, ptr %i.acz, align 1
  %i.adb = shufflevector <2 x i32> %i.ada, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.adc = lshr <8 x i32> %i.adb, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.add = bitcast <8 x i32> %i.acq to <16 x i16>
  %i.ade = and <16 x i16> %i.add, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.adf = bitcast <8 x i32> %i.acu to <16 x i16>
  %i.adg = and <16 x i16> %i.adf, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.adh = shufflevector <16 x i16> %i.ade, <16 x i16> %i.adg, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.adh, ptr %.02630.i185.i, align 2, !tbaa !41
  %i.adi = bitcast <8 x i32> %i.acy to <16 x i16>
  %i.adj = and <16 x i16> %i.adi, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.adk = getelementptr inbounds nuw i8, ptr %.02630.i185.i, i64 32
  %i.adl = bitcast <8 x i32> %i.adc to <16 x i16>
  %i.adm = and <16 x i16> %i.adl, <i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison, i16 255, i16 poison>
  %i.adn = shufflevector <16 x i16> %i.adj, <16 x i16> %i.adm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  store <16 x i16> %i.adn, ptr %i.adk, align 2, !tbaa !41
  %i.ado = getelementptr inbounds nuw i8, ptr %.02531.i184.i, i64 32 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.02630.i185.i, i64 64 ; 2 uses
  %i.adq = add nuw nsw i32 %.032.i183.i, 1        ; 2 uses
  %exitcond.not.i186.i = icmp eq i32 %i.adq, %i.abm
  br i1 %exitcond.not.i186.i, label %._crit_edge.i176.i, label %.lr.ph.i182.i, !llvm.loop !74

bb.s:                                             ; preds = %bb.a
  %i.adr = mul nsw i32 %2, 9
  %i.ads = add nsw i32 %4, %i.adr
  %i.adt = icmp sgt i32 %2, 0
  br i1 %i.adt, label %.lr.ph.i.i206.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i

.lr.ph.i.i206.i:                                  ; preds = %bb.s, %bb.t
  %.026.i.i207.i = phi ptr [ %i.aej, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i208.i = phi i32 [ %i.adw, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.adu = srem i32 %.02325.i.i208.i, 8           ; 2 uses
  %i.adv = sdiv i32 %.02325.i.i208.i, 8           ; 2 uses
  %.not.i.i209.i = icmp eq i32 %i.adu, 0
  br i1 %.not.i.i209.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i206.i
  %i.adw = add nsw i32 %.02325.i.i208.i, 9        ; 3 uses
  %i.adx = add nsw i32 %.02325.i.i208.i, 8
  %i.ady = sdiv i32 %i.adx, 8
  %i.adz = sub nsw i32 %i.ady, %i.adv             ; 2 uses
  %i.aea = add nsw i32 %i.adz, 1
  %i.aeb = icmp slt i32 %i.adz, 2
  tail call void @llvm.assume(i1 %i.aeb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !19
  %i.aec = sext i32 %i.adv to i64
  %i.aed = getelementptr inbounds i8, ptr %0, i64 %i.aec
  %i.aee = sext i32 %i.aea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.aed, i64 %i.aee, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i.i210.i = load i64, ptr %i.o, align 8, !tbaa !19
  %i.aef = zext nneg i32 %i.adu to i64
  %i.aeg = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i.i210.i, %i.aef
  %i.aeh = trunc i64 %i.aeg to i16
  %i.aei = and i16 %i.aeh, 511
  store i16 %i.aei, ptr %.026.i.i207.i, align 2, !tbaa !41
  %i.aej = getelementptr inbounds nuw i8, ptr %.026.i.i207.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aek = icmp slt i32 %i.adw, %i.ads
  br i1 %i.aek, label %.lr.ph.i.i206.i, label %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, !llvm.loop !75

_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i: ; preds = %bb.t, %.lr.ph.i.i206.i, %bb.s
  %.023.lcssa.i.i192.i = phi i32 [ %4, %bb.s ], [ %.02325.i.i208.i, %.lr.ph.i.i206.i ], [ %i.adw, %bb.t ]
  %i.ael = sub nsw i32 %.023.lcssa.i.i192.i, %4
  %i.aem = sdiv i32 %i.ael, 9                     ; 3 uses
  %i.aen = mul nsw i32 %i.aem, 9
  %i.aeo = add nsw i32 %i.aen, %4
  %i.aep = sub nsw i32 %2, %i.aem                 ; 4 uses
  %i.aeq = sdiv i32 %i.aeo, 8
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = getelementptr inbounds i8, ptr %0, i64 %i.aer ; 2 uses
  %i.aet = sext i32 %i.aem to i64
  %i.aeu = getelementptr inbounds [2 x i8], ptr %1, i64 %i.aet ; 2 uses
  %i.aev = sdiv i32 %i.aep, 32                    ; 2 uses
  %i.aew = icmp sgt i32 %i.aep, 31
  br i1 %i.aew, label %.lr.ph.i201.i, label %._crit_edge.i193.i

._crit_edge.i193.i:                               ; preds = %.lr.ph.i201.i, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i
  %.026.lcssa.i194.i = phi ptr [ %i.aeu, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.ain, %.lr.ph.i201.i ]
  %.025.lcssa.i195.i = phi ptr [ %i.aes, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ], [ %i.aim, %.lr.ph.i201.i ]
  %i.aex = shl nsw i32 %i.aev, 5                  ; 2 uses
  %i.aey = sub nsw i32 %i.aep, %i.aex             ; 2 uses
  %i.aez = icmp samesign ult i32 %i.aey, 32
  tail call void @llvm.assume(i1 %i.aez)
  %i.afa = mul nuw nsw i32 %i.aey, 9
  %.not.i196.i = icmp eq i32 %i.aep, %i.aex
  br i1 %.not.i196.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, label %.lr.ph.i28.i197.i

.lr.ph.i28.i197.i:                                ; preds = %._crit_edge.i193.i, %.lr.ph.i28.i197.i
  %.024.i.i198.i = phi ptr [ %i.afq, %.lr.ph.i28.i197.i ], [ %.026.lcssa.i194.i, %._crit_edge.i193.i ] ; 2 uses
  %.02223.i.i199.i = phi i32 [ %i.afc, %.lr.ph.i28.i197.i ], [ 0, %._crit_edge.i193.i ] ; 4 uses
  %i.afb = lshr i32 %.02223.i.i199.i, 3           ; 2 uses
  %i.afc = add nuw nsw i32 %.02223.i.i199.i, 9    ; 2 uses
  %i.afd = add nuw nsw i32 %.02223.i.i199.i, 8
  %i.afe = lshr i32 %i.afd, 3
  %i.aff = sub nsw i32 %i.afe, %i.afb             ; 2 uses
  %i.afg = add nsw i32 %i.aff, 1
  %i.afh = icmp slt i32 %i.aff, 2
  tail call void @llvm.assume(i1 %i.afh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !tbaa !19
  %i.afi = zext nneg i32 %i.afb to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i195.i, i64 %i.afi
  %i.afk = sext i32 %i.afg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.afj, i64 %i.afk, i1 false)
  %.0..0..0..0..0..0..0..0..0..0..i29.i200.i = load i64, ptr %i.n, align 8, !tbaa !19
  %i.afl = and i32 %.02223.i.i199.i, 7
  %i.afm = zext nneg i32 %i.afl to i64
  %i.afn = lshr i64 %.0..0..0..0..0..0..0..0..0..0..i29.i200.i, %i.afm
  %i.afo = trunc i64 %i.afn to i16
  %i.afp = and i16 %i.afo, 511
  store i16 %i.afp, ptr %.024.i.i198.i, align 2, !tbaa !41
  %i.afq = getelementptr inbounds nuw i8, ptr %.024.i.i198.i, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.afr = icmp samesign ult i32 %i.afc, %i.afa
  br i1 %i.afr, label %.lr.ph.i28.i197.i, label %_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEtEEvPKhPT0_iii.exit, !llvm.loop !76

.lr.ph.i201.i:                                    ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i, %.lr.ph.i201.i
  %.032.i202.i = phi i32 [ %i.aio, %.lr.ph.i201.i ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ]
  %.02531.i203.i = phi ptr [ %i.aim, %.lr.ph.i201.i ], [ %i.aes, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 10 uses
  %.02630.i204.i = phi ptr [ %i.ain, %.lr.ph.i201.i ], [ %i.aeu, %_ZN5arrow8internal12unpack_exactILi9ELb1EtEEiPKhPT1_ii.exit.i.i ] ; 3 uses
  %i.afs = load i32, ptr %.02531.i203.i, align 1  ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 4
  %i.afu = load i32, ptr %i.aft, align 1          ; 5 uses
  %i.afv = tail call i32 @llvm.fshl.i32(i32 %i.afu, i32 %i.afs, i32 5)
  %i.afw = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 8
  %i.afx = load i32, ptr %i.afw, align 1          ; 4 uses
  %i.afy = tail call i32 @llvm.fshl.i32(i32 %i.afx, i32 %i.afu, i32 1)
  %i.afz = insertelement <8 x i32> poison, i32 %i.afs, i64 0
  %i.aga = insertelement <8 x i32> %i.afz, i32 %i.afs, i64 1
  %i.agb = insertelement <8 x i32> %i.aga, i32 %i.afs, i64 2
  %i.agc = insertelement <8 x i32> %i.agb, i32 %i.afv, i64 3
  %i.agd = insertelement <8 x i32> %i.agc, i32 %i.afu, i64 4
  %i.age = insertelement <8 x i32> %i.agd, i32 %i.afu, i64 5
  %i.agf = insertelement <8 x i32> %i.age, i32 %i.afu, i64 6
  %i.agg = insertelement <8 x i32> %i.agf, i32 %i.afy, i64 7
  %i.agh = lshr <8 x i32> %i.agg, <i32 0, i32 9, i32 18, i32 0, i32 4, i32 13, i32 22, i32 0>
  %i.agi = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 12
  %i.agj = load i32, ptr %i.agi, align 1          ; 5 uses
  %i.agk = tail call i32 @llvm.fshl.i32(i32 %i.agj, i32 %i.afx, i32 6)
  %i.agl = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 16
  %i.agm = load i32, ptr %i.agl, align 1          ; 4 uses
  %i.agn = tail call i32 @llvm.fshl.i32(i32 %i.agm, i32 %i.agj, i32 2)
  %i.ago = insertelement <8 x i32> poison, i32 %i.afx, i64 0
  %i.agp = insertelement <8 x i32> %i.ago, i32 %i.afx, i64 1
  %i.agq = insertelement <8 x i32> %i.agp, i32 %i.agk, i64 2
  %i.agr = insertelement <8 x i32> %i.agq, i32 %i.agj, i64 3
  %i.ags = insertelement <8 x i32> %i.agr, i32 %i.agj, i64 4
  %i.agt = insertelement <8 x i32> %i.ags, i32 %i.agj, i64 5
  %i.agu = insertelement <8 x i32> %i.agt, i32 %i.agn, i64 6
  %i.agv = insertelement <8 x i32> %i.agu, i32 %i.agm, i64 7
  %i.agw = lshr <8 x i32> %i.agv, <i32 8, i32 17, i32 0, i32 3, i32 12, i32 21, i32 0, i32 7>
  %i.agx = getelementptr inbounds nuw i8, ptr %.02531.i203.i, i64 20
  %i.agy = load i32, ptr %i.agx, align 1          ; 5 uses
  %i.agz = tail call i32 @llvm.fshl.i32(i32 %i.agy, i32 %i.agm, i32 7)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %.02223.i.i227 = phi i32 [ %i.age, %.lr.ph.i28.i225 ], [ 0, %._crit_edge.i221 ] ; 4 uses
  %i.agd = lshr i32 %.02223.i.i227, 3             ; 2 uses
  %i.age = add nuw nsw i32 %.02223.i.i227, 7      ; 2 uses
  %i.agf = add nuw nsw i32 %.02223.i.i227, 6
  %i.agg = lshr i32 %i.agf, 3
  %i.agh = sub nsw i32 %i.agg, %i.agd             ; 2 uses
  %i.agi = add nsw i32 %i.agh, 1
  %i.agj = icmp slt i32 %i.agh, 2
  tail call void @llvm.assume(i1 %i.agj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 0, ptr %i.au, align 8, !tbaa !19
  %i.agk = zext nneg i32 %i.agd to i64
  %i.agl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i223, i64 %i.agk
  %i.agm = sext i32 %i.agi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 1 %i.agl, i64 %i.agm, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i228 = load i64, ptr %i.au, align 8, !tbaa !19
  %i.agn = and i32 %.02223.i.i227, 7
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = lshr i64 %.0..0..0..0..0..0..0..0..i29.i228, %i.ago
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = and i32 %i.agq, 127
  store i32 %i.agr, ptr %.024.i.i226, align 4, !tbaa !3
  %i.ags = getelementptr inbounds nuw i8, ptr %.024.i.i226, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.agt = icmp samesign ult i32 %i.age, %i.agc
  br i1 %i.agt, label %.lr.ph.i28.i225, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !117

.lr.ph.i229:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i229
  %.032.i230 = phi i32 [ %i.ajk, %.lr.ph.i229 ], [ 0, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i231 = phi ptr [ %i.aji, %.lr.ph.i229 ], [ %i.afu, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 8 uses
  %.02630.i232 = phi ptr [ %i.ajj, %.lr.ph.i229 ], [ %i.afw, %_ZN5arrow8internal12unpack_exactILi7ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.agu = load i32, ptr %.02531.i231, align 1    ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 4 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 1          ; 4 uses
  %i.agx = tail call i32 @llvm.fshl.i32(i32 %i.agw, i32 %i.agu, i32 4)
  %i.agy = insertelement <4 x i32> poison, i32 %i.agu, i64 0
  %i.agz = shufflevector <4 x i32> %i.agy, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aha = insertelement <8 x i32> %i.agz, i32 %i.agx, i64 4
  %i.ahb = insertelement <8 x i32> %i.aha, i32 %i.agw, i64 5
  %i.ahc = insertelement <8 x i32> %i.ahb, i32 %i.agw, i64 6
  %i.ahd = insertelement <8 x i32> %i.ahc, i32 %i.agw, i64 7
  %i.ahe = lshr <8 x i32> %i.ahd, <i32 0, i32 7, i32 14, i32 21, i32 0, i32 3, i32 10, i32 17>
  %i.ahf = bitcast <8 x i32> %i.ahe to <4 x i64>
  %i.ahg = and <4 x i64> %i.ahf, splat (i64 545460846719)
  store <4 x i64> %i.ahg, ptr %.02630.i232, align 1, !tbaa !15
  %i.ahh = getelementptr inbounds nuw i8, ptr %.02630.i232, i64 32
  %i.ahi = load i32, ptr %i.agv, align 1          ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 8
  %i.ahk = load i32, ptr %i.ahj, align 1          ; 5 uses
  %i.ahl = tail call i32 @llvm.fshl.i32(i32 %i.ahk, i32 %i.ahi, i32 1)
  %i.ahm = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 12 ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 1          ; 3 uses
  %i.aho = tail call i32 @llvm.fshl.i32(i32 %i.ahn, i32 %i.ahk, i32 5)
  %i.ahp = insertelement <8 x i32> poison, i32 %i.ahi, i64 0
  %i.ahq = insertelement <8 x i32> %i.ahp, i32 %i.ahl, i64 1
  %i.ahr = insertelement <8 x i32> %i.ahq, i32 %i.ahk, i64 2
  %i.ahs = insertelement <8 x i32> %i.ahr, i32 %i.ahk, i64 3
  %i.aht = insertelement <8 x i32> %i.ahs, i32 %i.ahk, i64 4
  %i.ahu = insertelement <8 x i32> %i.aht, i32 %i.aho, i64 5
  %i.ahv = insertelement <8 x i32> %i.ahu, i32 %i.ahn, i64 6
  %i.ahw = insertelement <8 x i32> %i.ahv, i32 %i.ahn, i64 7
  %i.ahx = lshr <8 x i32> %i.ahw, <i32 24, i32 0, i32 6, i32 13, i32 20, i32 0, i32 2, i32 9>
  %i.ahy = bitcast <8 x i32> %i.ahx to <4 x i64>
  %i.ahz = and <4 x i64> %i.ahy, splat (i64 545460846719)
  store <4 x i64> %i.ahz, ptr %i.ahh, align 1, !tbaa !15
  %i.aia = getelementptr inbounds nuw i8, ptr %.02630.i232, i64 64
  %i.aib = load i32, ptr %i.ahm, align 1          ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 16
  %i.aid = load i32, ptr %i.aic, align 1          ; 5 uses
  %i.aie = tail call i32 @llvm.fshl.i32(i32 %i.aid, i32 %i.aib, i32 2)
  %i.aif = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 20 ; 2 uses
  %i.aig = load i32, ptr %i.aif, align 1          ; 2 uses
  %i.aih = tail call i32 @llvm.fshl.i32(i32 %i.aig, i32 %i.aid, i32 6)
  %i.aii = insertelement <8 x i32> poison, i32 %i.aib, i64 0
  %i.aij = insertelement <8 x i32> %i.aii, i32 %i.aib, i64 1
  %i.aik = insertelement <8 x i32> %i.aij, i32 %i.aie, i64 2
  %i.ail = insertelement <8 x i32> %i.aik, i32 %i.aid, i64 3
  %i.aim = insertelement <8 x i32> %i.ail, i32 %i.aid, i64 4
  %i.ain = insertelement <8 x i32> %i.aim, i32 %i.aid, i64 5
  %i.aio = insertelement <8 x i32> %i.ain, i32 %i.aih, i64 6
  %i.aip = insertelement <8 x i32> %i.aio, i32 %i.aig, i64 7
  %i.aiq = lshr <8 x i32> %i.aip, <i32 16, i32 23, i32 0, i32 5, i32 12, i32 19, i32 0, i32 1>
  %i.air = bitcast <8 x i32> %i.aiq to <4 x i64>
  %i.ais = and <4 x i64> %i.air, splat (i64 545460846719)
  store <4 x i64> %i.ais, ptr %i.aia, align 1, !tbaa !15
  %i.ait = getelementptr inbounds nuw i8, ptr %.02630.i232, i64 96
  %i.aiu = load i32, ptr %i.aif, align 1          ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 24
  %i.aiw = load i32, ptr %i.aiv, align 1          ; 2 uses
  %i.aix = tail call i32 @llvm.fshl.i32(i32 %i.aiw, i32 %i.aiu, i32 3)
  %i.aiy = insertelement <8 x i32> poison, i32 %i.aiu, i64 0
  %i.aiz = insertelement <8 x i32> %i.aiy, i32 %i.aiu, i64 1
  %i.aja = insertelement <8 x i32> %i.aiz, i32 %i.aiu, i64 2
  %i.ajb = insertelement <8 x i32> %i.aja, i32 %i.aix, i64 3
  %i.ajc = insertelement <4 x i32> poison, i32 %i.aiw, i64 0
  %i.ajd = shufflevector <4 x i32> %i.ajc, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aje = shufflevector <8 x i32> %i.ajb, <8 x i32> %i.ajd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajf = lshr <8 x i32> %i.aje, <i32 8, i32 15, i32 22, i32 0, i32 4, i32 11, i32 18, i32 25>
  %i.ajg = bitcast <8 x i32> %i.ajf to <4 x i64>
  %i.ajh = and <4 x i64> %i.ajg, splat (i64 545460846719)
  store <4 x i64> %i.ajh, ptr %i.ait, align 1, !tbaa !15
  %i.aji = getelementptr inbounds nuw i8, ptr %.02531.i231, i64 28 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.02630.i232, i64 128 ; 2 uses
  %i.ajk = add nuw nsw i32 %.032.i230, 1          ; 2 uses
  %exitcond.not.i233 = icmp eq i32 %i.ajk, %i.afx
  br i1 %exitcond.not.i233, label %._crit_edge.i221, label %.lr.ph.i229, !llvm.loop !118

bb.q:                                             ; preds = %bb.a
  %i.ajl = shl nsw i32 %2, 3
  %i.ajm = add nsw i32 %4, %i.ajl
  %i.ajn = icmp sgt i32 %2, 0
  br i1 %i.ajn, label %.lr.ph.i.i251, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i251:                                    ; preds = %bb.q, %bb.r
  %.026.i.i252 = phi ptr [ %i.akd, %bb.r ], [ %1, %bb.q ] ; 2 uses
  %.02325.i.i253 = phi i32 [ %i.ajq, %bb.r ], [ %4, %bb.q ] ; 5 uses
  %i.ajo = srem i32 %.02325.i.i253, 8             ; 2 uses
  %i.ajp = sdiv i32 %.02325.i.i253, 8             ; 2 uses
  %.not.i.i254 = icmp eq i32 %i.ajo, 0
  br i1 %.not.i.i254, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i251
  %i.ajq = add nsw i32 %.02325.i.i253, 8          ; 3 uses
  %i.ajr = add nsw i32 %.02325.i.i253, 7
  %i.ajs = sdiv i32 %i.ajr, 8
  %i.ajt = sub nsw i32 %i.ajs, %i.ajp             ; 2 uses
  %i.aju = add nsw i32 %i.ajt, 1
  %i.ajv = icmp slt i32 %i.ajt, 2
  tail call void @llvm.assume(i1 %i.ajv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8, !tbaa !19
  %i.ajw = sext i32 %i.ajp to i64
  %i.ajx = getelementptr inbounds i8, ptr %0, i64 %i.ajw
  %i.ajy = sext i32 %i.aju to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr readonly align 1 %i.ajx, i64 %i.ajy, i1 false)
  %.0..0..0..0..0..0..0..0..i.i255 = load i64, ptr %i.at, align 8, !tbaa !19
  %i.ajz = zext nneg i32 %i.ajo to i64
  %i.aka = lshr i64 %.0..0..0..0..0..0..0..0..i.i255, %i.ajz
  %i.akb = trunc i64 %i.aka to i32
  %i.akc = and i32 %i.akb, 255
  store i32 %i.akc, ptr %.026.i.i252, align 4, !tbaa !3
  %i.akd = getelementptr inbounds nuw i8, ptr %.026.i.i252, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.ake = icmp slt i32 %i.ajq, %i.ajm
  br i1 %i.ake, label %.lr.ph.i.i251, label %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !119

_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.r, %.lr.ph.i.i251, %bb.q
  %.023.lcssa.i.i239 = phi i32 [ %4, %bb.q ], [ %i.ajq, %bb.r ], [ %.02325.i.i253, %.lr.ph.i.i251 ]
  %i.akf = sub nsw i32 %.023.lcssa.i.i239, %4
  %i.akg = sdiv i32 %i.akf, 8                     ; 3 uses
  %i.akh = shl nsw i32 %i.akg, 3
  %i.aki = add nsw i32 %i.akh, %4
  %i.akj = sub nsw i32 %2, %i.akg                 ; 4 uses
  %i.akk = sdiv i32 %i.aki, 8
  %i.akl = sext i32 %i.akk to i64
  %i.akm = getelementptr inbounds i8, ptr %0, i64 %i.akl ; 2 uses
  %i.akn = sext i32 %i.akg to i64
  %i.ako = getelementptr inbounds [4 x i8], ptr %1, i64 %i.akn ; 2 uses
  %i.akp = sdiv i32 %i.akj, 32                    ; 2 uses
  %i.akq = icmp sgt i32 %i.akj, 31
  br i1 %i.akq, label %.lr.ph.i246, label %._crit_edge.i240

._crit_edge.i240:                                 ; preds = %.lr.ph.i246, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i241 = phi ptr [ %i.ako, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.anf, %.lr.ph.i246 ] ; 7 uses
  %.025.lcssa.i242 = phi ptr [ %i.akm, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ane, %.lr.ph.i246 ] ; 5 uses
  %i.akr = shl nsw i32 %i.akp, 5                  ; 2 uses
  %i.aks = sub nsw i32 %i.akj, %i.akr             ; 2 uses
  %i.akt = icmp samesign ult i32 %i.aks, 32
  tail call void @llvm.assume(i1 %i.akt)
  %.not.i243 = icmp eq i32 %i.akj, %i.akr
  br i1 %.not.i243, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check1225

iter.check1225:                                   ; preds = %._crit_edge.i240
  %i.aku = shl nuw nsw i32 %i.aks, 3
  %i.akv = zext nneg i32 %i.aku to i64            ; 3 uses
  %i.akw = tail call i64 @llvm.usub.sat.i64(i64 %i.akv, i64 8) ; 3 uses
  %i.akx = lshr exact i64 %i.akw, 3
  %i.aky = add nuw nsw i64 %i.akx, 1              ; 3 uses
  %min.iters.check1206 = icmp samesign ult i64 %i.akw, 56
  br i1 %min.iters.check1206, label %.lr.ph.i28.i244.preheader, label %vector.memcheck1197

vector.memcheck1197:                              ; preds = %iter.check1225
  %i.akz = tail call i64 @llvm.usub.sat.i64(i64 %i.akv, i64 8) ; 2 uses
  %i.ala = lshr exact i64 %i.akz, 3
  %i.alb = lshr exact i64 %i.akz, 1
  %i.alc = getelementptr i8, ptr %.026.lcssa.i241, i64 %i.alb
  %scevgep1199 = getelementptr i8, ptr %i.alc, i64 4
  %i.ald = getelementptr i8, ptr %.025.lcssa.i242, i64 %i.ala
  %scevgep1200 = getelementptr i8, ptr %i.ald, i64 1
  %bound01201 = icmp ult ptr %.026.lcssa.i241, %scevgep1200
  %bound11202 = icmp ult ptr %.025.lcssa.i242, %scevgep1199
  %found.conflict1203 = and i1 %bound01201, %bound11202
  br i1 %found.conflict1203, label %.lr.ph.i28.i244.preheader, label %vector.main.loop.iter.check1207

vector.main.loop.iter.check1207:                  ; preds = %vector.memcheck1197
  %min.iters.check1208.not = icmp eq i64 %i.akw, 248
  br i1 %min.iters.check1208.not, label %vector.body1212, label %vec.epilog.ph1229

vector.body1212:                                  ; preds = %vector.main.loop.iter.check1207, %vector.body1212
  %index1213 = phi i64 [ %index.next1219, %vector.body1212 ], [ 0, %vector.main.loop.iter.check1207 ] ; 3 uses
  %i.ale = shl i64 %index1213, 2
  %next.gep1214 = getelementptr i8, ptr %.026.lcssa.i241, i64 %i.ale ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i242, i64 %index1213 ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  %wide.load1215 = load <8 x i8>, ptr %i.alf, align 1, !alias.scope !120
  %wide.load1216 = load <8 x i8>, ptr %i.alg, align 1, !alias.scope !120
  %wide.load1217 = load <8 x i8>, ptr %i.alh, align 1, !alias.scope !120
  %wide.load1218 = load <8 x i8>, ptr %i.ali, align 1, !alias.scope !120
  %i.alj = zext <8 x i8> %wide.load1215 to <8 x i32>
  %i.alk = zext <8 x i8> %wide.load1216 to <8 x i32>
  %i.all = zext <8 x i8> %wide.load1217 to <8 x i32>
  %i.alm = zext <8 x i8> %wide.load1218 to <8 x i32>
  %i.aln = getelementptr i8, ptr %next.gep1214, i64 32
  %i.alo = getelementptr i8, ptr %next.gep1214, i64 64
  %i.alp = getelementptr i8, ptr %next.gep1214, i64 96
  store <8 x i32> %i.alj, ptr %next.gep1214, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.alk, ptr %i.aln, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.all, ptr %i.alo, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  store <8 x i32> %i.alm, ptr %i.alp, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  %index.next1219 = add nuw i64 %index1213, 32    ; 2 uses
  %i.alq = icmp eq i64 %index.next1219, %i.aky
  br i1 %i.alq, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vector.body1212, !llvm.loop !125

vec.epilog.ph1229:                                ; preds = %vector.main.loop.iter.check1207
  %n.vec1231 = and i64 %i.aky, 536870904          ; 4 uses
  %i.alr = shl nuw nsw i64 %n.vec1231, 3
  %i.als = shl nuw nsw i64 %n.vec1231, 2
  %i.alt = getelementptr i8, ptr %.026.lcssa.i241, i64 %i.als
  br label %vec.epilog.vector.body1232

vec.epilog.vector.body1232:                       ; preds = %vec.epilog.vector.body1232, %vec.epilog.ph1229
  %index1233 = phi i64 [ 0, %vec.epilog.ph1229 ], [ %index.next1236, %vec.epilog.vector.body1232 ] ; 3 uses
  %i.alu = shl i64 %index1233, 2
  %next.gep1234 = getelementptr i8, ptr %.026.lcssa.i241, i64 %i.alu
  %i.alv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i242, i64 %index1233
  %wide.load1235 = load <8 x i8>, ptr %i.alv, align 1, !alias.scope !120
  %i.alw = zext <8 x i8> %wide.load1235 to <8 x i32>
  store <8 x i32> %i.alw, ptr %next.gep1234, align 4, !tbaa !3, !alias.scope !123, !noalias !120
  %index.next1236 = add nuw i64 %index1233, 8     ; 2 uses
  %i.alx = icmp eq i64 %index.next1236, %n.vec1231
  br i1 %i.alx, label %vec.epilog.middle.block1237, label %vec.epilog.vector.body1232, !llvm.loop !126

vec.epilog.middle.block1237:                      ; preds = %vec.epilog.vector.body1232
  %cmp.n1238 = icmp eq i64 %i.aky, %n.vec1231
  br i1 %cmp.n1238, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i244.preheader

.lr.ph.i28.i244.preheader:                        ; preds = %vector.memcheck1197, %iter.check1225, %vec.epilog.middle.block1237
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck1197 ], [ 0, %iter.check1225 ], [ %i.alr, %vec.epilog.middle.block1237 ]
  %.024.i.i245.ph = phi ptr [ %.026.lcssa.i241, %vector.memcheck1197 ], [ %.026.lcssa.i241, %iter.check1225 ], [ %i.alt, %vec.epilog.middle.block1237 ]
  br label %.lr.ph.i28.i244

.lr.ph.i28.i244:                                  ; preds = %.lr.ph.i28.i244.preheader, %.lr.ph.i28.i244
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i28.i244 ], [ %indvars.iv.i.ph, %.lr.ph.i28.i244.preheader ] ; 2 uses
  %.024.i.i245 = phi ptr [ %i.amc, %.lr.ph.i28.i244 ], [ %.024.i.i245.ph, %.lr.ph.i28.i244.preheader ] ; 2 uses
  %i.aly = lshr exact i64 %indvars.iv.i, 3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i242, i64 %i.aly
  %i.ama = load i8, ptr %i.alz, align 1
  %i.amb = zext i8 %i.ama to i32
  store i32 %i.amb, ptr %.024.i.i245, align 4, !tbaa !3
  %i.amc = getelementptr inbounds nuw i8, ptr %.024.i.i245, i64 4
  %i.amd = icmp samesign ult i64 %indvars.iv.next.i, %i.akv
  br i1 %i.amd, label %.lr.ph.i28.i244, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !127

.lr.ph.i246:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i246
  %.032.i247 = phi i32 [ %i.ang, %.lr.ph.i246 ], [ 0, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i248 = phi ptr [ %i.ane, %.lr.ph.i246 ], [ %i.akm, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i249 = phi ptr [ %i.anf, %.lr.ph.i246 ], [ %i.ako, %_ZN5arrow8internal12unpack_exactILi8ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.ame = load <2 x i32>, ptr %.02531.i248, align 1
  %i.amf = shufflevector <2 x i32> %i.ame, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.amg = lshr <8 x i32> %i.amf, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.amh = bitcast <8 x i32> %i.amg to <4 x i64>
  %i.ami = and <4 x i64> %i.amh, splat (i64 1095216660735)
  store <4 x i64> %i.ami, ptr %.02630.i249, align 1, !tbaa !15
  %i.amj = getelementptr inbounds nuw i8, ptr %.02630.i249, i64 32
  %i.amk = getelementptr inbounds nuw i8, ptr %.02531.i248, i64 8
  %i.aml = load <2 x i32>, ptr %i.amk, align 1
  %i.amm = shufflevector <2 x i32> %i.aml, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.amn = lshr <8 x i32> %i.amm, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.amo = bitcast <8 x i32> %i.amn to <4 x i64>
  %i.amp = and <4 x i64> %i.amo, splat (i64 1095216660735)
  store <4 x i64> %i.amp, ptr %i.amj, align 1, !tbaa !15
  %i.amq = getelementptr inbounds nuw i8, ptr %.02630.i249, i64 64
  %i.amr = getelementptr inbounds nuw i8, ptr %.02531.i248, i64 16
  %i.ams = load <2 x i32>, ptr %i.amr, align 1
  %i.amt = shufflevector <2 x i32> %i.ams, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.amu = lshr <8 x i32> %i.amt, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.amv = bitcast <8 x i32> %i.amu to <4 x i64>
  %i.amw = and <4 x i64> %i.amv, splat (i64 1095216660735)
  store <4 x i64> %i.amw, ptr %i.amq, align 1, !tbaa !15
  %i.amx = getelementptr inbounds nuw i8, ptr %.02630.i249, i64 96
  %i.amy = getelementptr inbounds nuw i8, ptr %.02531.i248, i64 24
  %i.amz = load <2 x i32>, ptr %i.amy, align 1
  %i.ana = shufflevector <2 x i32> %i.amz, <2 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.anb = lshr <8 x i32> %i.ana, <i32 0, i32 8, i32 16, i32 24, i32 0, i32 8, i32 16, i32 24>
  %i.anc = bitcast <8 x i32> %i.anb to <4 x i64>
  %i.and = and <4 x i64> %i.anc, splat (i64 1095216660735)
  store <4 x i64> %i.and, ptr %i.amx, align 1, !tbaa !15
  %i.ane = getelementptr inbounds nuw i8, ptr %.02531.i248, i64 32 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %.02630.i249, i64 128 ; 2 uses
  %i.ang = add nuw nsw i32 %.032.i247, 1          ; 2 uses
  %exitcond.not.i250 = icmp eq i32 %i.ang, %i.akp
  br i1 %exitcond.not.i250, label %._crit_edge.i240, label %.lr.ph.i246, !llvm.loop !128

bb.s:                                             ; preds = %bb.a
  %i.anh = mul nsw i32 %2, 9
  %i.ani = add nsw i32 %4, %i.anh
  %i.anj = icmp sgt i32 %2, 0
  br i1 %i.anj, label %.lr.ph.i.i270, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i270:                                    ; preds = %bb.s, %bb.t
  %.026.i.i271 = phi ptr [ %i.anz, %bb.t ], [ %1, %bb.s ] ; 2 uses
  %.02325.i.i272 = phi i32 [ %i.anm, %bb.t ], [ %4, %bb.s ] ; 5 uses
  %i.ank = srem i32 %.02325.i.i272, 8             ; 2 uses
  %i.anl = sdiv i32 %.02325.i.i272, 8             ; 2 uses
  %.not.i.i273 = icmp eq i32 %i.ank, 0
  br i1 %.not.i.i273, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i270
  %i.anm = add nsw i32 %.02325.i.i272, 9          ; 3 uses
  %i.ann = add nsw i32 %.02325.i.i272, 8
  %i.ano = sdiv i32 %i.ann, 8
  %i.anp = sub nsw i32 %i.ano, %i.anl             ; 2 uses
  %i.anq = add nsw i32 %i.anp, 1
  %i.anr = icmp slt i32 %i.anp, 2
  tail call void @llvm.assume(i1 %i.anr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store i64 0, ptr %i.as, align 8, !tbaa !19
  %i.ans = sext i32 %i.anl to i64
  %i.ant = getelementptr inbounds i8, ptr %0, i64 %i.ans
  %i.anu = sext i32 %i.anq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr readonly align 1 %i.ant, i64 %i.anu, i1 false)
  %.0..0..0..0..0..0..0..0..i.i274 = load i64, ptr %i.as, align 8, !tbaa !19
  %i.anv = zext nneg i32 %i.ank to i64
  %i.anw = lshr i64 %.0..0..0..0..0..0..0..0..i.i274, %i.anv
  %i.anx = trunc i64 %i.anw to i32
  %i.any = and i32 %i.anx, 511
  store i32 %i.any, ptr %.026.i.i271, align 4, !tbaa !3
  %i.anz = getelementptr inbounds nuw i8, ptr %.026.i.i271, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.aoa = icmp slt i32 %i.anm, %i.ani
  br i1 %i.aoa, label %.lr.ph.i.i270, label %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !129

_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.t, %.lr.ph.i.i270, %bb.s
  %.023.lcssa.i.i256 = phi i32 [ %4, %bb.s ], [ %i.anm, %bb.t ], [ %.02325.i.i272, %.lr.ph.i.i270 ]
  %i.aob = sub nsw i32 %.023.lcssa.i.i256, %4
  %i.aoc = sdiv i32 %i.aob, 9                     ; 3 uses
  %i.aod = mul nsw i32 %i.aoc, 9
  %i.aoe = add nsw i32 %i.aod, %4
  %i.aof = sub nsw i32 %2, %i.aoc                 ; 4 uses
  %i.aog = sdiv i32 %i.aoe, 8
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds i8, ptr %0, i64 %i.aoh ; 2 uses
  %i.aoj = sext i32 %i.aoc to i64
  %i.aok = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aoj ; 2 uses
  %i.aol = sdiv i32 %i.aof, 32                    ; 2 uses
  %i.aom = icmp sgt i32 %i.aof, 31
  br i1 %i.aom, label %.lr.ph.i265, label %._crit_edge.i257

._crit_edge.i257:                                 ; preds = %.lr.ph.i265, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i258 = phi ptr [ %i.aok, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.asg, %.lr.ph.i265 ]
  %.025.lcssa.i259 = phi ptr [ %i.aoi, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.asf, %.lr.ph.i265 ]
  %i.aon = shl nsw i32 %i.aol, 5                  ; 2 uses
  %i.aoo = sub nsw i32 %i.aof, %i.aon             ; 2 uses
  %i.aop = icmp samesign ult i32 %i.aoo, 32
  tail call void @llvm.assume(i1 %i.aop)
  %i.aoq = mul nuw nsw i32 %i.aoo, 9
  %.not.i260 = icmp eq i32 %i.aof, %i.aon
  br i1 %.not.i260, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i261

.lr.ph.i28.i261:                                  ; preds = %._crit_edge.i257, %.lr.ph.i28.i261
  %.024.i.i262 = phi ptr [ %i.apg, %.lr.ph.i28.i261 ], [ %.026.lcssa.i258, %._crit_edge.i257 ] ; 2 uses
  %.02223.i.i263 = phi i32 [ %i.aos, %.lr.ph.i28.i261 ], [ 0, %._crit_edge.i257 ] ; 4 uses
  %i.aor = lshr i32 %.02223.i.i263, 3             ; 2 uses
  %i.aos = add nuw nsw i32 %.02223.i.i263, 9      ; 2 uses
  %i.aot = add nuw nsw i32 %.02223.i.i263, 8
  %i.aou = lshr i32 %i.aot, 3
  %i.aov = sub nsw i32 %i.aou, %i.aor             ; 2 uses
  %i.aow = add nsw i32 %i.aov, 1
  %i.aox = icmp slt i32 %i.aov, 2
  tail call void @llvm.assume(i1 %i.aox)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 0, ptr %i.ar, align 8, !tbaa !19
  %i.aoy = zext nneg i32 %i.aor to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %.025.lcssa.i259, i64 %i.aoy
  %i.apa = sext i32 %i.aow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 1 %i.aoz, i64 %i.apa, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i264 = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.apb = and i32 %.02223.i.i263, 7
  %i.apc = zext nneg i32 %i.apb to i64
  %i.apd = lshr i64 %.0..0..0..0..0..0..0..0..i29.i264, %i.apc
  %i.ape = trunc i64 %i.apd to i32
  %i.apf = and i32 %i.ape, 511
  store i32 %i.apf, ptr %.024.i.i262, align 4, !tbaa !3
  %i.apg = getelementptr inbounds nuw i8, ptr %.024.i.i262, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.aph = icmp samesign ult i32 %i.aos, %i.aoq
  br i1 %i.aph, label %.lr.ph.i28.i261, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !130

.lr.ph.i265:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i265
  %.032.i266 = phi i32 [ %i.ash, %.lr.ph.i265 ], [ 0, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i267 = phi ptr [ %i.asf, %.lr.ph.i265 ], [ %i.aoi, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 10 uses
  %.02630.i268 = phi ptr [ %i.asg, %.lr.ph.i265 ], [ %i.aok, %_ZN5arrow8internal12unpack_exactILi9ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.api = load i32, ptr %.02531.i267, align 1    ; 4 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 4
  %i.apk = load i32, ptr %i.apj, align 1          ; 5 uses
  %i.apl = tail call i32 @llvm.fshl.i32(i32 %i.apk, i32 %i.api, i32 5)
  %i.apm = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 8 ; 2 uses
  %i.apn = load i32, ptr %i.apm, align 1
  %i.apo = tail call i32 @llvm.fshl.i32(i32 %i.apn, i32 %i.apk, i32 1)
  %i.app = insertelement <8 x i32> poison, i32 %i.api, i64 0
  %i.apq = insertelement <8 x i32> %i.app, i32 %i.api, i64 1
  %i.apr = insertelement <8 x i32> %i.apq, i32 %i.api, i64 2
  %i.aps = insertelement <8 x i32> %i.apr, i32 %i.apl, i64 3
  %i.apt = insertelement <8 x i32> %i.aps, i32 %i.apk, i64 4
  %i.apu = insertelement <8 x i32> %i.apt, i32 %i.apk, i64 5
  %i.apv = insertelement <8 x i32> %i.apu, i32 %i.apk, i64 6
  %i.apw = insertelement <8 x i32> %i.apv, i32 %i.apo, i64 7
  %i.apx = lshr <8 x i32> %i.apw, <i32 0, i32 9, i32 18, i32 0, i32 4, i32 13, i32 22, i32 0>
  %i.apy = bitcast <8 x i32> %i.apx to <4 x i64>
  %i.apz = and <4 x i64> %i.apy, splat (i64 2194728288767)
  store <4 x i64> %i.apz, ptr %.02630.i268, align 1, !tbaa !15
  %i.aqa = getelementptr inbounds nuw i8, ptr %.02630.i268, i64 32
  %i.aqb = load i32, ptr %i.apm, align 1          ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 12
  %i.aqd = load i32, ptr %i.aqc, align 1          ; 5 uses
  %i.aqe = tail call i32 @llvm.fshl.i32(i32 %i.aqd, i32 %i.aqb, i32 6)
  %i.aqf = getelementptr inbounds nuw i8, ptr %.02531.i267, i64 16 ; 2 uses
  %i.aqg = load i32, ptr %i.aqf, align 1          ; 2 uses
  %i.aqh = tail call i32 @llvm.fshl.i32(i32 %i.aqg, i32 %i.aqd, i32 2)
  %i.aqi = insertelement <8 x i32> poison, i32 %i.aqb, i64 0
  %i.aqj = insertelement <8 x i32> %i.aqi, i32 %i.aqb, i64 1
  %i.aqk = insertelement <8 x i32> %i.aqj, i32 %i.aqe, i64 2
  %i.aql = insertelement <8 x i32> %i.aqk, i32 %i.aqd, i64 3
  %i.aqm = insertelement <8 x i32> %i.aql, i32 %i.aqd, i64 4
end_hunk_1
begin_hunk_2_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %.024.i.i376 = phi ptr [ %i.buv, %.lr.ph.i28.i375 ], [ %.026.lcssa.i372, %._crit_edge.i371 ] ; 2 uses
  %.02223.i.i377 = phi i32 [ %i.buh, %.lr.ph.i28.i375 ], [ 0, %._crit_edge.i371 ] ; 4 uses
  %i.bug = lshr i32 %.02223.i.i377, 3             ; 2 uses
  %i.buh = add nuw nsw i32 %.02223.i.i377, 15     ; 2 uses
  %i.bui = add nuw nsw i32 %.02223.i.i377, 14
  %i.buj = lshr i32 %i.bui, 3
  %i.buk = sub nsw i32 %i.buj, %i.bug             ; 2 uses
  %i.bul = add nsw i32 %i.buk, 1
  %i.bum = icmp slt i32 %i.buk, 3
  tail call void @llvm.assume(i1 %i.bum)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 0, ptr %i.af, align 8, !tbaa !19
  %i.bun = zext nneg i32 %i.bug to i64
  %i.buo = getelementptr inbounds nuw i8, ptr %.025.lcssa.i373, i64 %i.bun
  %i.bup = sext i32 %i.bul to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 1 %i.buo, i64 %i.bup, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i378 = load i64, ptr %i.af, align 8, !tbaa !19
  %i.buq = and i32 %.02223.i.i377, 7
  %i.bur = zext nneg i32 %i.buq to i64
  %i.bus = lshr i64 %.0..0..0..0..0..0..0..0..i29.i378, %i.bur
  %i.but = trunc i64 %i.bus to i32
  %i.buu = and i32 %i.but, 32767
  store i32 %i.buu, ptr %.024.i.i376, align 4, !tbaa !3
  %i.buv = getelementptr inbounds nuw i8, ptr %.024.i.i376, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.buw = icmp samesign ult i32 %i.buh, %i.buf
  br i1 %i.buw, label %.lr.ph.i28.i375, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !148

.lr.ph.i379:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i379
  %.032.i380 = phi i32 [ %i.bxk, %.lr.ph.i379 ], [ 0, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i381 = phi ptr [ %i.bxi, %.lr.ph.i379 ], [ %i.btx, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 12 uses
  %.02630.i382 = phi ptr [ %i.bxj, %.lr.ph.i379 ], [ %i.btz, %_ZN5arrow8internal12unpack_exactILi15ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.bux = load i32, ptr %.02531.i381, align 1    ; 3 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 4
  %i.buz = load i32, ptr %i.buy, align 1          ; 3 uses
  %i.bva = tail call i32 @llvm.fshl.i32(i32 %i.buz, i32 %i.bux, i32 2)
  %i.bvb = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 8
  %i.bvc = load i32, ptr %i.bvb, align 1          ; 3 uses
  %i.bvd = tail call i32 @llvm.fshl.i32(i32 %i.bvc, i32 %i.buz, i32 4)
  %i.bve = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 12 ; 2 uses
  %i.bvf = load i32, ptr %i.bve, align 1          ; 2 uses
  %i.bvg = tail call i32 @llvm.fshl.i32(i32 %i.bvf, i32 %i.bvc, i32 6)
  %i.bvh = insertelement <8 x i32> poison, i32 %i.bux, i64 0
  %i.bvi = insertelement <8 x i32> %i.bvh, i32 %i.bux, i64 1
  %i.bvj = insertelement <8 x i32> %i.bvi, i32 %i.bva, i64 2
  %i.bvk = insertelement <8 x i32> %i.bvj, i32 %i.buz, i64 3
  %i.bvl = insertelement <8 x i32> %i.bvk, i32 %i.bvd, i64 4
  %i.bvm = insertelement <8 x i32> %i.bvl, i32 %i.bvc, i64 5
  %i.bvn = insertelement <8 x i32> %i.bvm, i32 %i.bvg, i64 6
  %i.bvo = insertelement <8 x i32> %i.bvn, i32 %i.bvf, i64 7
  %i.bvp = lshr <8 x i32> %i.bvo, <i32 0, i32 15, i32 0, i32 13, i32 0, i32 11, i32 0, i32 9>
  %i.bvq = bitcast <8 x i32> %i.bvp to <4 x i64>
  %i.bvr = and <4 x i64> %i.bvq, splat (i64 140733193420799)
  store <4 x i64> %i.bvr, ptr %.02630.i382, align 1, !tbaa !15
  %i.bvs = getelementptr inbounds nuw i8, ptr %.02630.i382, i64 32
  %i.bvt = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 16
  %i.bvu = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 28
  %i.bvv = load <4 x i32>, ptr %i.bve, align 1
  %i.bvw = load <4 x i32>, ptr %i.bvt, align 1    ; 2 uses
  %i.bvx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bvw, <4 x i32> %i.bvv, <4 x i32> <i32 8, i32 10, i32 12, i32 14>)
  %i.bvy = shufflevector <4 x i32> %i.bvx, <4 x i32> %i.bvw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bvz = lshr <8 x i32> %i.bvy, <i32 0, i32 7, i32 0, i32 5, i32 0, i32 3, i32 0, i32 1>
  %i.bwa = bitcast <8 x i32> %i.bvz to <4 x i64>
  %i.bwb = and <4 x i64> %i.bwa, splat (i64 140733193420799)
  store <4 x i64> %i.bwb, ptr %i.bvs, align 1, !tbaa !15
  %i.bwc = getelementptr inbounds nuw i8, ptr %.02630.i382, i64 64
  %i.bwd = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 32
  %i.bwe = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 44
  %i.bwf = load <4 x i32>, ptr %i.bvu, align 1    ; 2 uses
  %i.bwg = load <4 x i32>, ptr %i.bwd, align 1
  %i.bwh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bwg, <4 x i32> %i.bwf, <4 x i32> <i32 1, i32 3, i32 5, i32 7>)
  %i.bwi = shufflevector <4 x i32> %i.bwf, <4 x i32> %i.bwh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bwj = lshr <8 x i32> %i.bwi, <i32 16, i32 0, i32 14, i32 0, i32 12, i32 0, i32 10, i32 0>
  %i.bwk = bitcast <8 x i32> %i.bwj to <4 x i64>
  %i.bwl = and <4 x i64> %i.bwk, splat (i64 140733193420799)
  store <4 x i64> %i.bwl, ptr %i.bwc, align 1, !tbaa !15
  %i.bwm = getelementptr inbounds nuw i8, ptr %.02630.i382, i64 96
  %i.bwn = load i32, ptr %i.bwe, align 1          ; 2 uses
  %i.bwo = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 48
  %i.bwp = load i32, ptr %i.bwo, align 1          ; 3 uses
  %i.bwq = tail call i32 @llvm.fshl.i32(i32 %i.bwp, i32 %i.bwn, i32 9)
  %i.bwr = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 52
  %i.bws = load i32, ptr %i.bwr, align 1          ; 3 uses
  %i.bwt = tail call i32 @llvm.fshl.i32(i32 %i.bws, i32 %i.bwp, i32 11)
  %i.bwu = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 56
  %i.bwv = load i32, ptr %i.bwu, align 1          ; 3 uses
  %i.bww = tail call i32 @llvm.fshl.i32(i32 %i.bwv, i32 %i.bws, i32 13)
  %i.bwx = insertelement <8 x i32> poison, i32 %i.bwn, i64 0
  %i.bwy = insertelement <8 x i32> %i.bwx, i32 %i.bwq, i64 1
  %i.bwz = insertelement <8 x i32> %i.bwy, i32 %i.bwp, i64 2
  %i.bxa = insertelement <8 x i32> %i.bwz, i32 %i.bwt, i64 3
  %i.bxb = insertelement <8 x i32> %i.bxa, i32 %i.bws, i64 4
  %i.bxc = insertelement <8 x i32> %i.bxb, i32 %i.bww, i64 5
  %i.bxd = insertelement <8 x i32> %i.bxc, i32 %i.bwv, i64 6
  %i.bxe = insertelement <8 x i32> %i.bxd, i32 %i.bwv, i64 7
  %i.bxf = lshr <8 x i32> %i.bxe, <i32 8, i32 0, i32 6, i32 0, i32 4, i32 0, i32 2, i32 17>
  %i.bxg = bitcast <8 x i32> %i.bxf to <4 x i64>
  %i.bxh = and <4 x i64> %i.bxg, splat (i64 140733193420799)
  store <4 x i64> %i.bxh, ptr %i.bwm, align 1, !tbaa !15
  %i.bxi = getelementptr inbounds nuw i8, ptr %.02531.i381, i64 60 ; 2 uses
  %i.bxj = getelementptr inbounds nuw i8, ptr %.02630.i382, i64 128 ; 2 uses
  %i.bxk = add nuw nsw i32 %.032.i380, 1          ; 2 uses
  %exitcond.not.i383 = icmp eq i32 %i.bxk, %i.bua
  br i1 %exitcond.not.i383, label %._crit_edge.i371, label %.lr.ph.i379, !llvm.loop !149

bb.ag:                                            ; preds = %bb.a
  %i.bxl = shl nsw i32 %2, 4
  %i.bxm = add nsw i32 %4, %i.bxl
  %i.bxn = icmp sgt i32 %2, 0
  br i1 %i.bxn, label %.lr.ph.i.i405, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i405:                                    ; preds = %bb.ag, %bb.ah
  %.026.i.i406 = phi ptr [ %i.byd, %bb.ah ], [ %1, %bb.ag ] ; 2 uses
  %.02325.i.i407 = phi i32 [ %i.bxq, %bb.ah ], [ %4, %bb.ag ] ; 5 uses
  %i.bxo = srem i32 %.02325.i.i407, 8             ; 2 uses
  %i.bxp = sdiv i32 %.02325.i.i407, 8             ; 2 uses
  %.not.i.i408 = icmp eq i32 %i.bxo, 0
  br i1 %.not.i.i408, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i405
  %i.bxq = add nsw i32 %.02325.i.i407, 16         ; 3 uses
  %i.bxr = add nsw i32 %.02325.i.i407, 15
  %i.bxs = sdiv i32 %i.bxr, 8
  %i.bxt = sub nsw i32 %i.bxs, %i.bxp             ; 2 uses
  %i.bxu = add nsw i32 %i.bxt, 1
  %i.bxv = icmp slt i32 %i.bxt, 3
  tail call void @llvm.assume(i1 %i.bxv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8, !tbaa !19
  %i.bxw = sext i32 %i.bxp to i64
  %i.bxx = getelementptr inbounds i8, ptr %0, i64 %i.bxw
  %i.bxy = sext i32 %i.bxu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %i.bxx, i64 %i.bxy, i1 false)
  %.0..0..0..0..0..0..0..0..i.i409 = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.bxz = zext nneg i32 %i.bxo to i64
  %i.bya = lshr i64 %.0..0..0..0..0..0..0..0..i.i409, %i.bxz
  %i.byb = trunc i64 %i.bya to i32
  %i.byc = and i32 %i.byb, 65535
  store i32 %i.byc, ptr %.026.i.i406, align 4, !tbaa !3
  %i.byd = getelementptr inbounds nuw i8, ptr %.026.i.i406, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.bye = icmp slt i32 %i.bxq, %i.bxm
  br i1 %i.bye, label %.lr.ph.i.i405, label %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !150

_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ah, %.lr.ph.i.i405, %bb.ag
  %.023.lcssa.i.i389 = phi i32 [ %4, %bb.ag ], [ %i.bxq, %bb.ah ], [ %.02325.i.i407, %.lr.ph.i.i405 ]
  %i.byf = sub nsw i32 %.023.lcssa.i.i389, %4
  %i.byg = sdiv i32 %i.byf, 16                    ; 3 uses
  %i.byh = shl nsw i32 %i.byg, 4
  %i.byi = add nsw i32 %i.byh, %4
  %i.byj = sub nsw i32 %2, %i.byg                 ; 4 uses
  %i.byk = sdiv i32 %i.byi, 8
  %i.byl = sext i32 %i.byk to i64
  %i.bym = getelementptr inbounds i8, ptr %0, i64 %i.byl ; 2 uses
  %i.byn = sext i32 %i.byg to i64
  %i.byo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.byn ; 2 uses
  %i.byp = sdiv i32 %i.byj, 32                    ; 2 uses
  %i.byq = icmp sgt i32 %i.byj, 31
  br i1 %i.byq, label %.lr.ph.i400, label %._crit_edge.i390

._crit_edge.i390:                                 ; preds = %.lr.ph.i400, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i391 = phi ptr [ %i.byo, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cbh, %.lr.ph.i400 ] ; 7 uses
  %.025.lcssa.i392 = phi ptr [ %i.bym, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cbg, %.lr.ph.i400 ] ; 5 uses
  %i.byr = shl nsw i32 %i.byp, 5                  ; 2 uses
  %i.bys = sub nsw i32 %i.byj, %i.byr             ; 2 uses
  %i.byt = icmp samesign ult i32 %i.bys, 32
  tail call void @llvm.assume(i1 %i.byt)
  %.not.i393 = icmp eq i32 %i.byj, %i.byr
  br i1 %.not.i393, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i390
  %i.byu = shl nuw nsw i32 %i.bys, 4
  %i.byv = zext nneg i32 %i.byu to i64            ; 3 uses
  %i.byw = tail call i64 @llvm.usub.sat.i64(i64 %i.byv, i64 16) ; 3 uses
  %i.byx = lshr exact i64 %i.byw, 4
  %i.byy = add nuw nsw i64 %i.byx, 1              ; 3 uses
  %min.iters.check1172 = icmp samesign ult i64 %i.byw, 112
  br i1 %min.iters.check1172, label %.lr.ph.i28.i395.preheader, label %vector.memcheck1163

vector.memcheck1163:                              ; preds = %iter.check
  %i.byz = tail call i64 @llvm.usub.sat.i64(i64 %i.byv, i64 16) ; 2 uses
  %i.bza = lshr exact i64 %i.byz, 3
  %i.bzb = lshr exact i64 %i.byz, 2
  %i.bzc = getelementptr i8, ptr %.026.lcssa.i391, i64 %i.bzb
  %scevgep1165 = getelementptr i8, ptr %i.bzc, i64 4
  %i.bzd = getelementptr i8, ptr %.025.lcssa.i392, i64 %i.bza
  %scevgep1166 = getelementptr i8, ptr %i.bzd, i64 2
  %bound01167 = icmp ult ptr %.026.lcssa.i391, %scevgep1166
  %bound11168 = icmp ult ptr %.025.lcssa.i392, %scevgep1165
  %found.conflict1169 = and i1 %bound01167, %bound11168
  br i1 %found.conflict1169, label %.lr.ph.i28.i395.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1163
  %min.iters.check1173.not = icmp eq i64 %i.byw, 496
  br i1 %min.iters.check1173.not, label %vector.body1177, label %vec.epilog.ph

vector.body1177:                                  ; preds = %vector.main.loop.iter.check, %vector.body1177
  %index1178 = phi i64 [ %index.next1183, %vector.body1177 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bze = shl i64 %index1178, 2
  %next.gep1179 = getelementptr i8, ptr %.026.lcssa.i391, i64 %i.bze ; 4 uses
  %i.bzf = shl nuw nsw i64 %index1178, 1
  %i.bzg = getelementptr inbounds nuw i8, ptr %.025.lcssa.i392, i64 %i.bzf ; 4 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bzg, i64 16
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzg, i64 32
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzg, i64 48
  %wide.load = load <8 x i16>, ptr %i.bzg, align 1, !alias.scope !151
  %wide.load1180 = load <8 x i16>, ptr %i.bzh, align 1, !alias.scope !151
  %wide.load1181 = load <8 x i16>, ptr %i.bzi, align 1, !alias.scope !151
  %wide.load1182 = load <8 x i16>, ptr %i.bzj, align 1, !alias.scope !151
  %i.bzk = zext <8 x i16> %wide.load to <8 x i32>
  %i.bzl = zext <8 x i16> %wide.load1180 to <8 x i32>
  %i.bzm = zext <8 x i16> %wide.load1181 to <8 x i32>
  %i.bzn = zext <8 x i16> %wide.load1182 to <8 x i32>
  %i.bzo = getelementptr i8, ptr %next.gep1179, i64 32
  %i.bzp = getelementptr i8, ptr %next.gep1179, i64 64
  %i.bzq = getelementptr i8, ptr %next.gep1179, i64 96
  store <8 x i32> %i.bzk, ptr %next.gep1179, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bzl, ptr %i.bzo, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bzm, ptr %i.bzp, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  store <8 x i32> %i.bzn, ptr %i.bzq, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1183 = add nuw i64 %index1178, 32    ; 2 uses
  %i.bzr = icmp eq i64 %index.next1183, %i.byy
  br i1 %i.bzr, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %vector.body1177, !llvm.loop !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec1189 = and i64 %i.byy, 268435448          ; 4 uses
  %i.bzs = shl nuw nsw i64 %n.vec1189, 4
  %i.bzt = shl nuw nsw i64 %n.vec1189, 2
  %i.bzu = getelementptr i8, ptr %.026.lcssa.i391, i64 %i.bzt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1190 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next1193, %vec.epilog.vector.body ] ; 3 uses
  %i.bzv = shl i64 %index1190, 2
  %next.gep1191 = getelementptr i8, ptr %.026.lcssa.i391, i64 %i.bzv
  %i.bzw = shl nuw nsw i64 %index1190, 1
  %i.bzx = getelementptr inbounds nuw i8, ptr %.025.lcssa.i392, i64 %i.bzw
  %wide.load1192 = load <8 x i16>, ptr %i.bzx, align 1, !alias.scope !151
  %i.bzy = zext <8 x i16> %wide.load1192 to <8 x i32>
  store <8 x i32> %i.bzy, ptr %next.gep1191, align 4, !tbaa !3, !alias.scope !154, !noalias !151
  %index.next1193 = add nuw i64 %index1190, 8     ; 2 uses
  %i.bzz = icmp eq i64 %index.next1193, %n.vec1189
  br i1 %i.bzz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1194 = icmp eq i64 %i.byy, %n.vec1189
  br i1 %cmp.n1194, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i395.preheader

.lr.ph.i28.i395.preheader:                        ; preds = %vector.memcheck1163, %iter.check, %vec.epilog.middle.block
  %indvars.iv.i396.ph = phi i64 [ 0, %vector.memcheck1163 ], [ 0, %iter.check ], [ %i.bzs, %vec.epilog.middle.block ]
  %.024.i.i397.ph = phi ptr [ %.026.lcssa.i391, %vector.memcheck1163 ], [ %.026.lcssa.i391, %iter.check ], [ %i.bzu, %vec.epilog.middle.block ]
  br label %.lr.ph.i28.i395

.lr.ph.i28.i395:                                  ; preds = %.lr.ph.i28.i395.preheader, %.lr.ph.i28.i395
  %indvars.iv.i396 = phi i64 [ %indvars.iv.next.i398, %.lr.ph.i28.i395 ], [ %indvars.iv.i396.ph, %.lr.ph.i28.i395.preheader ] ; 2 uses
  %.024.i.i397 = phi ptr [ %i.cae, %.lr.ph.i28.i395 ], [ %.024.i.i397.ph, %.lr.ph.i28.i395.preheader ] ; 2 uses
  %i.caa = lshr exact i64 %indvars.iv.i396, 3
  %indvars.iv.next.i398 = add nuw nsw i64 %indvars.iv.i396, 16 ; 2 uses
  %i.cab = getelementptr inbounds nuw i8, ptr %.025.lcssa.i392, i64 %i.caa
  %i.cac = load i16, ptr %i.cab, align 1
  %i.cad = zext i16 %i.cac to i32
  store i32 %i.cad, ptr %.024.i.i397, align 4, !tbaa !3
  %i.cae = getelementptr inbounds nuw i8, ptr %.024.i.i397, i64 4
  %i.caf = icmp samesign ult i64 %indvars.iv.next.i398, %i.byv
  br i1 %i.caf, label %.lr.ph.i28.i395, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !158

.lr.ph.i400:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i400
  %.032.i401 = phi i32 [ %i.cbi, %.lr.ph.i400 ], [ 0, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i402 = phi ptr [ %i.cbg, %.lr.ph.i400 ], [ %i.bym, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %.02630.i403 = phi ptr [ %i.cbh, %.lr.ph.i400 ], [ %i.byo, %_ZN5arrow8internal12unpack_exactILi16ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.cag = load <4 x i32>, ptr %.02531.i402, align 1
  %i.cah = shufflevector <4 x i32> %i.cag, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cai = lshr <8 x i32> %i.cah, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.caj = bitcast <8 x i32> %i.cai to <4 x i64>
  %i.cak = and <4 x i64> %i.caj, splat (i64 281470681808895)
  store <4 x i64> %i.cak, ptr %.02630.i403, align 1, !tbaa !15
  %i.cal = getelementptr inbounds nuw i8, ptr %.02630.i403, i64 32
  %i.cam = getelementptr inbounds nuw i8, ptr %.02531.i402, i64 16
  %i.can = load <4 x i32>, ptr %i.cam, align 1
  %i.cao = shufflevector <4 x i32> %i.can, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cap = lshr <8 x i32> %i.cao, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.caq = bitcast <8 x i32> %i.cap to <4 x i64>
  %i.car = and <4 x i64> %i.caq, splat (i64 281470681808895)
  store <4 x i64> %i.car, ptr %i.cal, align 1, !tbaa !15
  %i.cas = getelementptr inbounds nuw i8, ptr %.02630.i403, i64 64
  %i.cat = getelementptr inbounds nuw i8, ptr %.02531.i402, i64 32
  %i.cau = load <4 x i32>, ptr %i.cat, align 1
  %i.cav = shufflevector <4 x i32> %i.cau, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.caw = lshr <8 x i32> %i.cav, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.cax = bitcast <8 x i32> %i.caw to <4 x i64>
  %i.cay = and <4 x i64> %i.cax, splat (i64 281470681808895)
  store <4 x i64> %i.cay, ptr %i.cas, align 1, !tbaa !15
  %i.caz = getelementptr inbounds nuw i8, ptr %.02630.i403, i64 96
  %i.cba = getelementptr inbounds nuw i8, ptr %.02531.i402, i64 48
  %i.cbb = load <4 x i32>, ptr %i.cba, align 1
  %i.cbc = shufflevector <4 x i32> %i.cbb, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.cbd = lshr <8 x i32> %i.cbc, <i32 0, i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 16>
  %i.cbe = bitcast <8 x i32> %i.cbd to <4 x i64>
  %i.cbf = and <4 x i64> %i.cbe, splat (i64 281470681808895)
  store <4 x i64> %i.cbf, ptr %i.caz, align 1, !tbaa !15
  %i.cbg = getelementptr inbounds nuw i8, ptr %.02531.i402, i64 64 ; 2 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %.02630.i403, i64 128 ; 2 uses
  %i.cbi = add nuw nsw i32 %.032.i401, 1          ; 2 uses
  %exitcond.not.i404 = icmp eq i32 %i.cbi, %i.byp
  br i1 %exitcond.not.i404, label %._crit_edge.i390, label %.lr.ph.i400, !llvm.loop !159

bb.ai:                                            ; preds = %bb.a
  %i.cbj = mul nsw i32 %2, 17
  %i.cbk = add nsw i32 %4, %i.cbj
  %i.cbl = icmp sgt i32 %2, 0
  br i1 %i.cbl, label %.lr.ph.i.i424, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i424:                                    ; preds = %bb.ai, %bb.aj
  %.026.i.i425 = phi ptr [ %i.ccb, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  %.02325.i.i426 = phi i32 [ %i.cbo, %bb.aj ], [ %4, %bb.ai ] ; 5 uses
  %i.cbm = srem i32 %.02325.i.i426, 8             ; 2 uses
  %i.cbn = sdiv i32 %.02325.i.i426, 8             ; 2 uses
  %.not.i.i427 = icmp eq i32 %i.cbm, 0
  br i1 %.not.i.i427, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i424
  %i.cbo = add nsw i32 %.02325.i.i426, 17         ; 3 uses
  %i.cbp = add nsw i32 %.02325.i.i426, 16
  %i.cbq = sdiv i32 %i.cbp, 8
  %i.cbr = sub nsw i32 %i.cbq, %i.cbn             ; 2 uses
  %i.cbs = add nsw i32 %i.cbr, 1
  %i.cbt = icmp slt i32 %i.cbr, 3
  tail call void @llvm.assume(i1 %i.cbt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 0, ptr %i.ad, align 8, !tbaa !19
  %i.cbu = sext i32 %i.cbn to i64
  %i.cbv = getelementptr inbounds i8, ptr %0, i64 %i.cbu
  %i.cbw = sext i32 %i.cbs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr readonly align 1 %i.cbv, i64 %i.cbw, i1 false)
  %.0..0..0..0..0..0..0..0..i.i428 = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.cbx = zext nneg i32 %i.cbm to i64
  %i.cby = lshr i64 %.0..0..0..0..0..0..0..0..i.i428, %i.cbx
  %i.cbz = trunc i64 %i.cby to i32
  %i.cca = and i32 %i.cbz, 131071
  store i32 %i.cca, ptr %.026.i.i425, align 4, !tbaa !3
  %i.ccb = getelementptr inbounds nuw i8, ptr %.026.i.i425, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ccc = icmp slt i32 %i.cbo, %i.cbk
  br i1 %i.ccc, label %.lr.ph.i.i424, label %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !160

_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.aj, %.lr.ph.i.i424, %bb.ai
  %.023.lcssa.i.i410 = phi i32 [ %4, %bb.ai ], [ %i.cbo, %bb.aj ], [ %.02325.i.i426, %.lr.ph.i.i424 ]
  %i.ccd = sub nsw i32 %.023.lcssa.i.i410, %4
  %i.cce = sdiv i32 %i.ccd, 17                    ; 3 uses
  %i.ccf = mul nsw i32 %i.cce, 17
  %i.ccg = add nsw i32 %i.ccf, %4
  %i.cch = sub nsw i32 %2, %i.cce                 ; 4 uses
  %i.cci = sdiv i32 %i.ccg, 8
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds i8, ptr %0, i64 %i.ccj ; 2 uses
  %i.ccl = sext i32 %i.cce to i64
  %i.ccm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ccl ; 2 uses
  %i.ccn = sdiv i32 %i.cch, 32                    ; 2 uses
  %i.cco = icmp sgt i32 %i.cch, 31
  br i1 %i.cco, label %.lr.ph.i419, label %._crit_edge.i411

._crit_edge.i411:                                 ; preds = %.lr.ph.i419, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i412 = phi ptr [ %i.ccm, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cex, %.lr.ph.i419 ]
  %.025.lcssa.i413 = phi ptr [ %i.cck, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.cew, %.lr.ph.i419 ]
  %i.ccp = shl nsw i32 %i.ccn, 5                  ; 2 uses
  %i.ccq = sub nsw i32 %i.cch, %i.ccp             ; 2 uses
  %i.ccr = icmp samesign ult i32 %i.ccq, 32
  tail call void @llvm.assume(i1 %i.ccr)
  %i.ccs = mul nuw nsw i32 %i.ccq, 17
  %.not.i414 = icmp eq i32 %i.cch, %i.ccp
  br i1 %.not.i414, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i415

.lr.ph.i28.i415:                                  ; preds = %._crit_edge.i411, %.lr.ph.i28.i415
  %.024.i.i416 = phi ptr [ %i.cdi, %.lr.ph.i28.i415 ], [ %.026.lcssa.i412, %._crit_edge.i411 ] ; 2 uses
  %.02223.i.i417 = phi i32 [ %i.ccu, %.lr.ph.i28.i415 ], [ 0, %._crit_edge.i411 ] ; 4 uses
  %i.cct = lshr i32 %.02223.i.i417, 3             ; 2 uses
  %i.ccu = add nuw nsw i32 %.02223.i.i417, 17     ; 2 uses
  %i.ccv = add nuw nsw i32 %.02223.i.i417, 16
  %i.ccw = lshr i32 %i.ccv, 3
  %i.ccx = sub nsw i32 %i.ccw, %i.cct             ; 2 uses
  %i.ccy = add nsw i32 %i.ccx, 1
  %i.ccz = icmp slt i32 %i.ccx, 3
  tail call void @llvm.assume(i1 %i.ccz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  %i.cda = zext nneg i32 %i.cct to i64
  %i.cdb = getelementptr inbounds nuw i8, ptr %.025.lcssa.i413, i64 %i.cda
  %i.cdc = sext i32 %i.ccy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 1 %i.cdb, i64 %i.cdc, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i418 = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.cdd = and i32 %.02223.i.i417, 7
  %i.cde = zext nneg i32 %i.cdd to i64
  %i.cdf = lshr i64 %.0..0..0..0..0..0..0..0..i29.i418, %i.cde
  %i.cdg = trunc i64 %i.cdf to i32
  %i.cdh = and i32 %i.cdg, 131071
  store i32 %i.cdh, ptr %.024.i.i416, align 4, !tbaa !3
  %i.cdi = getelementptr inbounds nuw i8, ptr %.024.i.i416, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.cdj = icmp samesign ult i32 %i.ccu, %i.ccs
  br i1 %i.cdj, label %.lr.ph.i28.i415, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !161

.lr.ph.i419:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i419
  %.032.i420 = phi i32 [ %i.cey, %.lr.ph.i419 ], [ 0, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i421 = phi ptr [ %i.cew, %.lr.ph.i419 ], [ %i.cck, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %.02630.i422 = phi ptr [ %i.cex, %.lr.ph.i419 ], [ %i.ccm, %_ZN5arrow8internal12unpack_exactILi17ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 4
  %i.cdl = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 16
  %i.cdm = load <4 x i32>, ptr %.02531.i421, align 1 ; 2 uses
  %i.cdn = load <4 x i32>, ptr %i.cdk, align 1
  %i.cdo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cdn, <4 x i32> %i.cdm, <4 x i32> <i32 15, i32 13, i32 11, i32 9>)
  %i.cdp = shufflevector <4 x i32> %i.cdm, <4 x i32> %i.cdo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cdq = lshr <8 x i32> %i.cdp, <i32 0, i32 0, i32 2, i32 0, i32 4, i32 0, i32 6, i32 0>
  %i.cdr = bitcast <8 x i32> %i.cdq to <4 x i64>
  %i.cds = and <4 x i64> %i.cdr, splat (i64 562945658585087)
  store <4 x i64> %i.cds, ptr %.02630.i422, align 1, !tbaa !15
  %i.cdt = getelementptr inbounds nuw i8, ptr %.02630.i422, i64 32
  %i.cdu = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 20
  %i.cdv = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 32
  %i.cdw = load <4 x i32>, ptr %i.cdl, align 1    ; 2 uses
  %i.cdx = load <4 x i32>, ptr %i.cdu, align 1
  %i.cdy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cdx, <4 x i32> %i.cdw, <4 x i32> <i32 7, i32 5, i32 3, i32 1>)
  %i.cdz = shufflevector <4 x i32> %i.cdw, <4 x i32> %i.cdy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cea = lshr <8 x i32> %i.cdz, <i32 8, i32 0, i32 10, i32 0, i32 12, i32 0, i32 14, i32 0>
  %i.ceb = bitcast <8 x i32> %i.cea to <4 x i64>
  %i.cec = and <4 x i64> %i.ceb, splat (i64 562945658585087)
  store <4 x i64> %i.cec, ptr %i.cdt, align 1, !tbaa !15
  %i.ced = getelementptr inbounds nuw i8, ptr %.02630.i422, i64 64
  %i.cee = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 36
  %i.cef = getelementptr inbounds nuw i8, ptr %.02531.i421, i64 48
  %i.ceg = load <4 x i32>, ptr %i.cdv, align 1
  %i.ceh = load <4 x i32>, ptr %i.cee, align 1    ; 2 uses
  %i.cei = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ceh, <4 x i32> %i.ceg, <4 x i32> <i32 16, i32 14, i32 12, i32 10>)
  %i.cej = shufflevector <4 x i32> %i.cei, <4 x i32> %i.ceh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cek = lshr <8 x i32> %i.cej, <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.cel = bitcast <8 x i32> %i.cek to <4 x i64>
  %i.cem = and <4 x i64> %i.cel, splat (i64 562945658585087)
  store <4 x i64> %i.cem, ptr %i.ced, align 1, !tbaa !15
end_hunk_2
begin_hunk_3_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.dhj = bitcast <8 x i32> %i.dhi to <4 x i64>
  %i.dhk = and <4 x i64> %i.dhj, splat (i64 36028792732385279)
  store <4 x i64> %i.dhk, ptr %.02630.i536, align 1, !tbaa !15
  %i.dhl = getelementptr inbounds nuw i8, ptr %.02630.i536, i64 32
  %i.dhm = load i32, ptr %i.dgw, align 1
  %i.dhn = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 24
  %i.dho = load i32, ptr %i.dhn, align 1          ; 2 uses
  %i.dhp = tail call i32 @llvm.fshl.i32(i32 %i.dho, i32 %i.dhm, i32 8)
  %i.dhq = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 28
  %i.dhr = load i32, ptr %i.dhq, align 1          ; 3 uses
  %i.dhs = tail call i32 @llvm.fshl.i32(i32 %i.dhr, i32 %i.dho, i32 17)
  %i.dht = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 32 ; 2 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 36
  %i.dhv = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 40
  %i.dhw = load i32, ptr %i.dht, align 1
  %i.dhx = load <2 x i32>, ptr %i.dht, align 1
  %i.dhy = tail call i32 @llvm.fshl.i32(i32 %i.dhw, i32 %i.dhr, i32 3)
  %i.dhz = load i32, ptr %i.dhv, align 1
  %i.dia = load <2 x i32>, ptr %i.dhu, align 1    ; 2 uses
  %i.dib = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dia, <2 x i32> %i.dhx, <2 x i32> <i32 12, i32 21>)
  %i.dic = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 44 ; 2 uses
  %i.did = load i32, ptr %i.dic, align 1
  %i.die = tail call i32 @llvm.fshl.i32(i32 %i.did, i32 %i.dhz, i32 7)
  %i.dif = insertelement <8 x i32> poison, i32 %i.dhp, i64 0
  %i.dig = insertelement <8 x i32> %i.dif, i32 %i.dhs, i64 1
  %i.dih = insertelement <8 x i32> %i.dig, i32 %i.dhr, i64 2
  %i.dii = insertelement <8 x i32> %i.dih, i32 %i.dhy, i64 3
  %i.dij = shufflevector <2 x i32> %i.dib, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dik = shufflevector <8 x i32> %i.dii, <8 x i32> %i.dij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dil = shufflevector <2 x i32> %i.dia, <2 x i32> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dim = shufflevector <8 x i32> %i.dik, <8 x i32> %i.dil, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.din = insertelement <8 x i32> %i.dim, i32 %i.die, i64 7
  %i.dio = lshr <8 x i32> %i.din, <i32 0, i32 0, i32 6, i32 0, i32 0, i32 0, i32 2, i32 0>
  %i.dip = bitcast <8 x i32> %i.dio to <4 x i64>
  %i.diq = and <4 x i64> %i.dip, splat (i64 36028792732385279)
  store <4 x i64> %i.diq, ptr %i.dhl, align 1, !tbaa !15
  %i.dir = getelementptr inbounds nuw i8, ptr %.02630.i536, i64 64
  %i.dis = load i32, ptr %i.dic, align 1
  %i.dit = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 48
  %i.diu = load i32, ptr %i.dit, align 1          ; 3 uses
  %i.div = tail call i32 @llvm.fshl.i32(i32 %i.diu, i32 %i.dis, i32 16)
  %i.diw = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 52
  %i.dix = load i32, ptr %i.diw, align 1          ; 2 uses
  %i.diy = tail call i32 @llvm.fshl.i32(i32 %i.dix, i32 %i.diu, i32 2)
  %i.diz = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 56
  %i.dja = load i32, ptr %i.diz, align 1          ; 2 uses
  %i.djb = tail call i32 @llvm.fshl.i32(i32 %i.dja, i32 %i.dix, i32 11)
  %i.djc = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 60
  %i.djd = load i32, ptr %i.djc, align 1          ; 3 uses
  %i.dje = tail call i32 @llvm.fshl.i32(i32 %i.djd, i32 %i.dja, i32 20)
  %i.djf = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 64
  %i.djg = load i32, ptr %i.djf, align 1          ; 2 uses
  %i.djh = tail call i32 @llvm.fshl.i32(i32 %i.djg, i32 %i.djd, i32 6)
  %i.dji = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 68 ; 2 uses
  %i.djj = load i32, ptr %i.dji, align 1
  %i.djk = tail call i32 @llvm.fshl.i32(i32 %i.djj, i32 %i.djg, i32 15)
  %i.djl = insertelement <8 x i32> poison, i32 %i.div, i64 0
  %i.djm = insertelement <8 x i32> %i.djl, i32 %i.diu, i64 1
  %i.djn = insertelement <8 x i32> %i.djm, i32 %i.diy, i64 2
  %i.djo = insertelement <8 x i32> %i.djn, i32 %i.djb, i64 3
  %i.djp = insertelement <8 x i32> %i.djo, i32 %i.dje, i64 4
  %i.djq = insertelement <8 x i32> %i.djp, i32 %i.djd, i64 5
  %i.djr = insertelement <8 x i32> %i.djq, i32 %i.djh, i64 6
  %i.djs = insertelement <8 x i32> %i.djr, i32 %i.djk, i64 7
  %i.djt = lshr <8 x i32> %i.djs, <i32 0, i32 7, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0>
  %i.dju = bitcast <8 x i32> %i.djt to <4 x i64>
  %i.djv = and <4 x i64> %i.dju, splat (i64 36028792732385279)
  store <4 x i64> %i.djv, ptr %i.dir, align 1, !tbaa !15
  %i.djw = getelementptr inbounds nuw i8, ptr %.02630.i536, i64 96
  %i.djx = load i32, ptr %i.dji, align 1          ; 2 uses
  %i.djy = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 72
  %i.djz = load i32, ptr %i.djy, align 1          ; 2 uses
  %i.dka = tail call i32 @llvm.fshl.i32(i32 %i.djz, i32 %i.djx, i32 1)
  %i.dkb = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 76
  %i.dkc = load i32, ptr %i.dkb, align 1          ; 2 uses
  %i.dkd = tail call i32 @llvm.fshl.i32(i32 %i.dkc, i32 %i.djz, i32 10)
  %i.dke = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 80
  %i.dkf = load i32, ptr %i.dke, align 1          ; 3 uses
  %i.dkg = tail call i32 @llvm.fshl.i32(i32 %i.dkf, i32 %i.dkc, i32 19)
  %i.dkh = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 84
  %i.dki = load i32, ptr %i.dkh, align 1          ; 2 uses
  %i.dkj = tail call i32 @llvm.fshl.i32(i32 %i.dki, i32 %i.dkf, i32 5)
  %i.dkk = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 88
  %i.dkl = load i32, ptr %i.dkk, align 1          ; 2 uses
  %i.dkm = tail call i32 @llvm.fshl.i32(i32 %i.dkl, i32 %i.dki, i32 14)
  %i.dkn = insertelement <8 x i32> poison, i32 %i.djx, i64 0
  %i.dko = insertelement <8 x i32> %i.dkn, i32 %i.dka, i64 1
  %i.dkp = insertelement <8 x i32> %i.dko, i32 %i.dkd, i64 2
  %i.dkq = insertelement <8 x i32> %i.dkp, i32 %i.dkg, i64 3
  %i.dkr = insertelement <8 x i32> %i.dkq, i32 %i.dkf, i64 4
  %i.dks = insertelement <8 x i32> %i.dkr, i32 %i.dkj, i64 5
  %i.dkt = insertelement <8 x i32> %i.dks, i32 %i.dkm, i64 6
  %i.dku = insertelement <8 x i32> %i.dkt, i32 %i.dkl, i64 7
  %i.dkv = lshr <8 x i32> %i.dku, <i32 8, i32 0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 9>
  %i.dkw = bitcast <8 x i32> %i.dkv to <4 x i64>
  %i.dkx = and <4 x i64> %i.dkw, splat (i64 36028792732385279)
  store <4 x i64> %i.dkx, ptr %i.djw, align 1, !tbaa !15
  %i.dky = getelementptr inbounds nuw i8, ptr %.02531.i535, i64 92 ; 2 uses
  %i.dkz = getelementptr inbounds nuw i8, ptr %.02630.i536, i64 128 ; 2 uses
  %i.dla = add nuw nsw i32 %.032.i534, 1          ; 2 uses
  %exitcond.not.i537 = icmp eq i32 %i.dla, %i.dfm
  br i1 %exitcond.not.i537, label %._crit_edge.i525, label %.lr.ph.i533, !llvm.loop !180

bb.aw:                                            ; preds = %bb.a
  %i.dlb = mul nsw i32 %2, 24
  %i.dlc = add nsw i32 %4, %i.dlb
  %i.dld = icmp sgt i32 %2, 0
  br i1 %i.dld, label %.lr.ph.i.i559, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i559:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i560 = phi ptr [ %i.dlt, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i561 = phi i32 [ %i.dlg, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.dle = srem i32 %.02325.i.i561, 8             ; 2 uses
  %i.dlf = sdiv i32 %.02325.i.i561, 8             ; 2 uses
  %.not.i.i562 = icmp eq i32 %i.dle, 0
  br i1 %.not.i.i562, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i559
  %i.dlg = add nsw i32 %.02325.i.i561, 24         ; 3 uses
  %i.dlh = add nsw i32 %.02325.i.i561, 23
  %i.dli = sdiv i32 %i.dlh, 8
  %i.dlj = sub nsw i32 %i.dli, %i.dlf             ; 2 uses
  %i.dlk = add nsw i32 %i.dlj, 1
  %i.dll = icmp slt i32 %i.dlj, 4
  tail call void @llvm.assume(i1 %i.dll)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !19
  %i.dlm = sext i32 %i.dlf to i64
  %i.dln = getelementptr inbounds i8, ptr %0, i64 %i.dlm
  %i.dlo = sext i32 %i.dlk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.dln, i64 %i.dlo, i1 false)
  %.0..0..0..0..0..0..0..0..i.i563 = load i64, ptr %i.p, align 8, !tbaa !19
  %i.dlp = zext nneg i32 %i.dle to i64
  %i.dlq = lshr i64 %.0..0..0..0..0..0..0..0..i.i563, %i.dlp
  %i.dlr = trunc i64 %i.dlq to i32
  %i.dls = and i32 %i.dlr, 16777215
  store i32 %i.dls, ptr %.026.i.i560, align 4, !tbaa !3
  %i.dlt = getelementptr inbounds nuw i8, ptr %.026.i.i560, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dlu = icmp slt i32 %i.dlg, %i.dlc
  br i1 %i.dlu, label %.lr.ph.i.i559, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !181

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i559, %bb.aw
  %.023.lcssa.i.i543 = phi i32 [ %4, %bb.aw ], [ %i.dlg, %bb.ax ], [ %.02325.i.i561, %.lr.ph.i.i559 ]
  %i.dlv = sub nsw i32 %.023.lcssa.i.i543, %4
  %i.dlw = sdiv i32 %i.dlv, 24                    ; 3 uses
  %i.dlx = mul nsw i32 %i.dlw, 24
  %i.dly = add nsw i32 %i.dlx, %4
  %i.dlz = sub nsw i32 %2, %i.dlw                 ; 4 uses
  %i.dma = sdiv i32 %i.dly, 8
  %i.dmb = sext i32 %i.dma to i64
  %i.dmc = getelementptr inbounds i8, ptr %0, i64 %i.dmb ; 2 uses
  %i.dmd = sext i32 %i.dlw to i64
  %i.dme = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dmd ; 2 uses
  %i.dmf = sdiv i32 %i.dlz, 32                    ; 2 uses
  %i.dmg = icmp sgt i32 %i.dlz, 31
  br i1 %i.dmg, label %.lr.ph.i554, label %._crit_edge.i544

._crit_edge.i544:                                 ; preds = %.lr.ph.i554, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i545 = phi ptr [ %i.dme, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dqx, %.lr.ph.i554 ] ; 6 uses
  %.025.lcssa.i546 = phi ptr [ %i.dmc, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dqw, %.lr.ph.i554 ] ; 11 uses
  %i.dmh = shl nsw i32 %i.dmf, 5                  ; 2 uses
  %i.dmi = sub nsw i32 %i.dlz, %i.dmh             ; 2 uses
  %i.dmj = icmp samesign ult i32 %i.dmi, 32
  tail call void @llvm.assume(i1 %i.dmj)
  %.not.i547 = icmp eq i32 %i.dlz, %i.dmh
  br i1 %.not.i547, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i548

.lr.ph.i28.preheader.i548:                        ; preds = %._crit_edge.i544
  %i.dmk = mul nuw nsw i32 %i.dmi, 24
  %i.dml = zext nneg i32 %i.dmk to i64            ; 3 uses
  %i.dmm = add nsw i64 %i.dml, -8                 ; 2 uses
  %i.dmn = udiv i64 %i.dmm, 24
  %i.dmo = add nuw nsw i64 %i.dmn, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.dmm, 552
  br i1 %min.iters.check, label %.lr.ph.i28.i549.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader.i548
  %i.dmp = add nsw i64 %i.dml, -8
  %i.dmq = udiv i64 %i.dmp, 24                    ; 2 uses
  %i.dmr = shl nuw nsw i64 %i.dmq, 2
  %i.dms = getelementptr i8, ptr %.026.lcssa.i545, i64 %i.dmr
  %scevgep = getelementptr i8, ptr %i.dms, i64 4
  %i.dmt = mul nuw nsw i64 %i.dmq, 3
  %i.dmu = getelementptr i8, ptr %.025.lcssa.i546, i64 %i.dmt
  %scevgep1161 = getelementptr i8, ptr %i.dmu, i64 3
  %bound0 = icmp ult ptr %.026.lcssa.i545, %scevgep1161
  %bound1 = icmp ult ptr %.025.lcssa.i546, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i549.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dmo, 2305843009213693944    ; 4 uses
  %i.dmv = mul i64 %n.vec, 24
  %i.dmw = shl nuw nsw i64 %n.vec, 2
  %i.dmx = getelementptr i8, ptr %.026.lcssa.i545, i64 %i.dmw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dmy = mul nuw i64 %index, 24                 ; 8 uses
  %i.dmz = add i64 %i.dmy, 72
  %i.dna = add i64 %i.dmy, 96
  %i.dnb = add i64 %i.dmy, 120
  %i.dnc = add i64 %i.dmy, 144
  %i.dnd = add i64 %i.dmy, 168
  %i.dne = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.026.lcssa.i545, i64 %i.dne
  %i.dnf = lshr exact i64 %i.dmy, 3
  %i.dng = lshr exact i64 %i.dmy, 3
  %i.dnh = lshr exact i64 %i.dmy, 3
  %i.dni = lshr exact i64 %i.dmz, 3
  %i.dnj = lshr exact i64 %i.dna, 3
  %i.dnk = lshr exact i64 %i.dnb, 3
  %i.dnl = lshr exact i64 %i.dnc, 3
  %i.dnm = lshr exact i64 %i.dnd, 3
  %i.dnn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnf
  %i.dno = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dng
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dno, i64 3
  %i.dnq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnh
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 6
  %i.dns = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dni
  %i.dnt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnj
  %i.dnu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnk
  %i.dnv = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnl
  %i.dnw = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dnm
  %i.dnx = load i24, ptr %i.dnn, align 1, !alias.scope !182
  %i.dny = load i24, ptr %i.dnp, align 1, !alias.scope !182
  %i.dnz = load i24, ptr %i.dnr, align 1, !alias.scope !182
  %i.doa = load i24, ptr %i.dns, align 1, !alias.scope !182
  %i.dob = load i24, ptr %i.dnt, align 1, !alias.scope !182
  %i.doc = load i24, ptr %i.dnu, align 1, !alias.scope !182
  %i.dod = load i24, ptr %i.dnv, align 1, !alias.scope !182
  %i.doe = load i24, ptr %i.dnw, align 1, !alias.scope !182
  %i.dof = insertelement <8 x i24> poison, i24 %i.dnx, i64 0
  %i.dog = insertelement <8 x i24> %i.dof, i24 %i.dny, i64 1
  %i.doh = insertelement <8 x i24> %i.dog, i24 %i.dnz, i64 2
  %i.doi = insertelement <8 x i24> %i.doh, i24 %i.doa, i64 3
  %i.doj = insertelement <8 x i24> %i.doi, i24 %i.dob, i64 4
  %i.dok = insertelement <8 x i24> %i.doj, i24 %i.doc, i64 5
  %i.dol = insertelement <8 x i24> %i.dok, i24 %i.dod, i64 6
  %i.dom = insertelement <8 x i24> %i.dol, i24 %i.doe, i64 7
  %i.don = zext <8 x i24> %i.dom to <8 x i32>
  store <8 x i32> %i.don, ptr %next.gep, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.doo = icmp eq i64 %index.next, %n.vec
  br i1 %i.doo, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dmo, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i549.preheader

.lr.ph.i28.i549.preheader:                        ; preds = %vector.memcheck, %.lr.ph.i28.preheader.i548, %middle.block
  %indvars.iv.i550.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader.i548 ], [ %i.dmv, %middle.block ]
  %.024.i.i551.ph = phi ptr [ %.026.lcssa.i545, %vector.memcheck ], [ %.026.lcssa.i545, %.lr.ph.i28.preheader.i548 ], [ %i.dmx, %middle.block ]
  br label %.lr.ph.i28.i549

.lr.ph.i28.i549:                                  ; preds = %.lr.ph.i28.i549.preheader, %.lr.ph.i28.i549
  %indvars.iv.i550 = phi i64 [ %indvars.iv.next.i552, %.lr.ph.i28.i549 ], [ %indvars.iv.i550.ph, %.lr.ph.i28.i549.preheader ] ; 2 uses
  %.024.i.i551 = phi ptr [ %i.dos, %.lr.ph.i28.i549 ], [ %.024.i.i551.ph, %.lr.ph.i28.i549.preheader ] ; 2 uses
  %i.dop = lshr exact i64 %indvars.iv.i550, 3
  %indvars.iv.next.i552 = add nuw nsw i64 %indvars.iv.i550, 24 ; 2 uses
  %i.doq = getelementptr inbounds nuw i8, ptr %.025.lcssa.i546, i64 %i.dop
  %.0.copyload = load i24, ptr %i.doq, align 1
  %i.dor = zext i24 %.0.copyload to i32
  store i32 %i.dor, ptr %.024.i.i551, align 4, !tbaa !3
  %i.dos = getelementptr inbounds nuw i8, ptr %.024.i.i551, i64 4
  %i.dot = icmp samesign ult i64 %indvars.iv.next.i552, %i.dml
  br i1 %i.dot, label %.lr.ph.i28.i549, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd256UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !188

.lr.ph.i554:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i554
  %.032.i555 = phi i32 [ %i.dqy, %.lr.ph.i554 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i556 = phi ptr [ %i.dqw, %.lr.ph.i554 ], [ %i.dmc, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 9 uses
  %.02630.i557 = phi ptr [ %i.dqx, %.lr.ph.i554 ], [ %i.dme, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 5 uses
  %i.dou = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 4
  %i.dov = load <4 x i32>, ptr %.02531.i556, align 1 ; 2 uses
  %i.dow = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.dou, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.dox = shufflevector <5 x i32> %i.dow, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.doy = shufflevector <4 x i32> %i.dov, <4 x i32> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison>
  %i.doz = shufflevector <5 x i32> %i.dow, <5 x i32> %i.doy, <4 x i32> <i32 5, i32 0, i32 8, i32 3>
  %i.dpa = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dox, <4 x i32> %i.doz, <4 x i32> <i32 8, i32 16, i32 8, i32 16>)
  %i.dpb = shufflevector <4 x i32> %i.dov, <4 x i32> %i.dox, <8 x i32> <i32 0, i32 2, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpc = shufflevector <4 x i32> %i.dpa, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpd = shufflevector <8 x i32> %i.dpb, <8 x i32> %i.dpc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dpe = lshr <8 x i32> %i.dpd, <i32 0, i32 8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0>
  %i.dpf = and <8 x i32> %i.dpe, splat (i32 16777215)
  %.inner1332 = shufflevector <8 x i32> %i.dpf, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 5, i32 1, i32 2, i32 6, i32 7, i32 3>
  store <8 x i32> %.inner1332, ptr %.02630.i557, align 1, !tbaa !15
  %i.dpg = getelementptr inbounds nuw i8, ptr %.02630.i557, i64 32
  %i.dph = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 24
  %i.dpi = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 28
  %i.dpj = load <4 x i32>, ptr %i.dph, align 1    ; 2 uses
  %i.dpk = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.dpi, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.dpl = shufflevector <5 x i32> %i.dpk, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.dpm = shufflevector <4 x i32> %i.dpj, <4 x i32> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison>
  %i.dpn = shufflevector <5 x i32> %i.dpk, <5 x i32> %i.dpm, <4 x i32> <i32 5, i32 0, i32 8, i32 3>
  %i.dpo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dpl, <4 x i32> %i.dpn, <4 x i32> <i32 8, i32 16, i32 8, i32 16>)
  %i.dpp = shufflevector <4 x i32> %i.dpj, <4 x i32> %i.dpl, <8 x i32> <i32 0, i32 2, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpq = shufflevector <4 x i32> %i.dpo, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dpr = shufflevector <8 x i32> %i.dpp, <8 x i32> %i.dpq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dps = lshr <8 x i32> %i.dpr, <i32 0, i32 8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0>
  %i.dpt = and <8 x i32> %i.dps, splat (i32 16777215)
  %.inner1333 = shufflevector <8 x i32> %i.dpt, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 5, i32 1, i32 2, i32 6, i32 7, i32 3>
  store <8 x i32> %.inner1333, ptr %i.dpg, align 1, !tbaa !15
  %i.dpu = getelementptr inbounds nuw i8, ptr %.02630.i557, i64 64
  %i.dpv = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 48
  %i.dpw = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 52
  %i.dpx = load <4 x i32>, ptr %i.dpv, align 1    ; 2 uses
  %i.dpy = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.dpw, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.dpz = shufflevector <5 x i32> %i.dpy, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.dqa = shufflevector <4 x i32> %i.dpx, <4 x i32> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison>
  %i.dqb = shufflevector <5 x i32> %i.dpy, <5 x i32> %i.dqa, <4 x i32> <i32 5, i32 0, i32 8, i32 3>
  %i.dqc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dpz, <4 x i32> %i.dqb, <4 x i32> <i32 8, i32 16, i32 8, i32 16>)
  %i.dqd = shufflevector <4 x i32> %i.dpx, <4 x i32> %i.dpz, <8 x i32> <i32 0, i32 2, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqe = shufflevector <4 x i32> %i.dqc, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqf = shufflevector <8 x i32> %i.dqd, <8 x i32> %i.dqe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dqg = lshr <8 x i32> %i.dqf, <i32 0, i32 8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0>
  %i.dqh = and <8 x i32> %i.dqg, splat (i32 16777215)
  %.inner1334 = shufflevector <8 x i32> %i.dqh, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 5, i32 1, i32 2, i32 6, i32 7, i32 3>
  store <8 x i32> %.inner1334, ptr %i.dpu, align 1, !tbaa !15
  %i.dqi = getelementptr inbounds nuw i8, ptr %.02630.i557, i64 96
  %i.dqj = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 72
  %i.dqk = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 76
  %i.dql = load <4 x i32>, ptr %i.dqj, align 1    ; 2 uses
  %i.dqm = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.dqk, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.dqn = shufflevector <5 x i32> %i.dqm, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4> ; 2 uses
  %i.dqo = shufflevector <4 x i32> %i.dql, <4 x i32> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison>
  %i.dqp = shufflevector <5 x i32> %i.dqm, <5 x i32> %i.dqo, <4 x i32> <i32 5, i32 0, i32 8, i32 3>
  %i.dqq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dqn, <4 x i32> %i.dqp, <4 x i32> <i32 8, i32 16, i32 8, i32 16>)
  %i.dqr = shufflevector <4 x i32> %i.dql, <4 x i32> %i.dqn, <8 x i32> <i32 0, i32 2, i32 3, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqs = shufflevector <4 x i32> %i.dqq, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dqt = shufflevector <8 x i32> %i.dqr, <8 x i32> %i.dqs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dqu = lshr <8 x i32> %i.dqt, <i32 0, i32 8, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0>
  %i.dqv = and <8 x i32> %i.dqu, splat (i32 16777215)
  %.inner1335 = shufflevector <8 x i32> %i.dqv, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 5, i32 1, i32 2, i32 6, i32 7, i32 3>
  store <8 x i32> %.inner1335, ptr %i.dqi, align 1, !tbaa !15
  %i.dqw = getelementptr inbounds nuw i8, ptr %.02531.i556, i64 96 ; 2 uses
  %i.dqx = getelementptr inbounds nuw i8, ptr %.02630.i557, i64 128 ; 2 uses
  %i.dqy = add nuw nsw i32 %.032.i555, 1          ; 2 uses
  %exitcond.not.i558 = icmp eq i32 %i.dqy, %i.dmf
  br i1 %exitcond.not.i558, label %._crit_edge.i544, label %.lr.ph.i554, !llvm.loop !189

bb.ay:                                            ; preds = %bb.a
  %i.dqz = mul nsw i32 %2, 25
  %i.dra = add nsw i32 %4, %i.dqz
  %i.drb = icmp sgt i32 %2, 0
  br i1 %i.drb, label %.lr.ph.i.i578, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i578:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i579 = phi ptr [ %i.drr, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i580 = phi i32 [ %i.dre, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.drc = srem i32 %.02325.i.i580, 8             ; 2 uses
  %i.drd = sdiv i32 %.02325.i.i580, 8             ; 2 uses
  %.not.i.i581 = icmp eq i32 %i.drc, 0
  br i1 %.not.i.i581, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i578
  %i.dre = add nsw i32 %.02325.i.i580, 25         ; 3 uses
  %i.drf = add nsw i32 %.02325.i.i580, 24
  %i.drg = sdiv i32 %i.drf, 8
  %i.drh = sub nsw i32 %i.drg, %i.drd             ; 2 uses
  %i.dri = add nsw i32 %i.drh, 1
  %i.drj = icmp slt i32 %i.drh, 4
  tail call void @llvm.assume(i1 %i.drj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !19
  %i.drk = sext i32 %i.drd to i64
  %i.drl = getelementptr inbounds i8, ptr %0, i64 %i.drk
  %i.drm = sext i32 %i.dri to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.drl, i64 %i.drm, i1 false)
  %.0..0..0..0..0..0..0..0..i.i582 = load i64, ptr %i.o, align 8, !tbaa !19
  %i.drn = zext nneg i32 %i.drc to i64
  %i.dro = lshr i64 %.0..0..0..0..0..0..0..0..i.i582, %i.drn
  %i.drp = trunc i64 %i.dro to i32
  %i.drq = and i32 %i.drp, 33554431
  store i32 %i.drq, ptr %.026.i.i579, align 4, !tbaa !3
  %i.drr = getelementptr inbounds nuw i8, ptr %.026.i.i579, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.drs = icmp slt i32 %i.dre, %i.dra
  br i1 %i.drs, label %.lr.ph.i.i578, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !190

_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.az, %.lr.ph.i.i578, %bb.ay
  %.023.lcssa.i.i564 = phi i32 [ %4, %bb.ay ], [ %i.dre, %bb.az ], [ %.02325.i.i580, %.lr.ph.i.i578 ]
  %i.drt = sub nsw i32 %.023.lcssa.i.i564, %4
  %i.dru = sdiv i32 %i.drt, 25                    ; 3 uses
  %i.drv = mul nsw i32 %i.dru, 25
  %i.drw = add nsw i32 %i.drv, %4
  %i.drx = sub nsw i32 %2, %i.dru                 ; 4 uses
  %i.dry = sdiv i32 %i.drw, 8
  %i.drz = sext i32 %i.dry to i64
  %i.dsa = getelementptr inbounds i8, ptr %0, i64 %i.drz ; 2 uses
  %i.dsb = sext i32 %i.dru to i64
  %i.dsc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dsb ; 2 uses
  %i.dsd = sdiv i32 %i.drx, 32                    ; 2 uses
  %i.dse = icmp sgt i32 %i.drx, 31
  br i1 %i.dse, label %.lr.ph.i573, label %._crit_edge.i565

._crit_edge.i565:                                 ; preds = %.lr.ph.i573, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i566 = phi ptr [ %i.dsc, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dxt, %.lr.ph.i573 ]
  %.025.lcssa.i567 = phi ptr [ %i.dsa, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dxs, %.lr.ph.i573 ]
  %i.dsf = shl nsw i32 %i.dsd, 5                  ; 2 uses
end_hunk_3
