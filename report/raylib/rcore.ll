Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sdefl_compr:.preheader213
  %i.vo = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.vp = icmp sgt i32 %i.vm, 15
  br i1 %i.vp, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

sdefl_put.exit132.i:                              ; preds = %.lr.ph.i130.i, %sdefl_put.exit.i
  %i.vq = phi i32 [ %i.ve, %sdefl_put.exit.i ], [ %i.vl, %.lr.ph.i130.i ]
  %.4 = phi ptr [ %.3200, %sdefl_put.exit.i ], [ %i.vo, %.lr.ph.i130.i ] ; 2 uses
  %i.vr = phi i32 [ %i.vg, %sdefl_put.exit.i ], [ %i.vn, %.lr.ph.i130.i ]
  %.not123.i = icmp eq i32 %i.vr, 0
  br i1 %.not123.i, label %sdefl_put.exit138.i, label %.lr.ph.preheader.i134.i

.lr.ph.preheader.i134.i:                          ; preds = %sdefl_put.exit132.i
  store i32 8, ptr %i.dp, align 4
  br label %.lr.ph.i136.i

.lr.ph.i136.i:                                    ; preds = %.lr.ph.i136.i, %.lr.ph.preheader.i134.i
  %i.vs = phi i32 [ %i.vq, %.lr.ph.preheader.i134.i ], [ %i.vv, %.lr.ph.i136.i ]
  %.5 = phi ptr [ %.4, %.lr.ph.preheader.i134.i ], [ %i.vy, %.lr.ph.i136.i ] ; 2 uses
  %i.vt = trunc i32 %i.vs to i8
  store i8 %i.vt, ptr %.5, align 1
  %i.vu = load i32, ptr %0, align 4
  %i.vv = ashr i32 %i.vu, 8                       ; 2 uses
  store i32 %i.vv, ptr %0, align 4
  %i.vw = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.vx = add nsw i32 %i.vw, -8
  store i32 %i.vx, ptr %i.dp, align 4
  %i.vy = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.vz = icmp sgt i32 %i.vw, 15
  br i1 %i.vz, label %.lr.ph.i136.i, label %sdefl_put.exit138.i

sdefl_put.exit138.i:                              ; preds = %.lr.ph.i136.i, %sdefl_put.exit132.i
  %i.wa = phi ptr [ %.4, %sdefl_put.exit132.i ], [ %i.vy, %.lr.ph.i136.i ] ; 3 uses
  %i.wb = trunc nuw i32 %i.up to i16              ; 2 uses
  store i16 %i.wb, ptr %i.wa, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 2
  %i.wd = xor i16 %i.wb, -1
  store i16 %i.wd, ptr %i.wc, align 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 4 ; 2 uses
  %i.wf = mul nuw nsw i64 %indvars.iv.i159, 65535
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.wf
  %i.wh = zext nneg i32 %i.up to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.we, ptr readonly align 1 %i.wg, i64 %i.wh, i1 false)
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wh ; 2 uses
  %i.wj = sub nsw i32 %.0228.i, %i.up
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i158
  br i1 %exitcond.not.i161, label %sdefl_flush.exit, label %bb.cv

bb.cw:                                            ; preds = %sdefl_blk_type.exit.i
  %i.wk = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.wl = shl nuw i32 %i.jz, %i.wk
  %i.wm = load i32, ptr %0, align 4
  %i.wn = or i32 %i.wm, %i.wl                     ; 3 uses
  store i32 %i.wn, ptr %0, align 4
  %i.wo = add nsw i32 %i.wk, 1                    ; 2 uses
  store i32 %i.wo, ptr %i.dp, align 4
  %i.wp = icmp sgt i32 %i.wk, 6
  br i1 %i.wp, label %.lr.ph.i142.i, label %sdefl_put.exit144.i

.lr.ph.i142.i:                                    ; preds = %bb.cw, %.lr.ph.i142.i
  %i.wq = phi i32 [ %i.wt, %.lr.ph.i142.i ], [ %i.wn, %bb.cw ]
  %.42 = phi ptr [ %i.ww, %.lr.ph.i142.i ], [ %.0198, %bb.cw ] ; 2 uses
  %i.wr = trunc i32 %i.wq to i8
  store i8 %i.wr, ptr %.42, align 1
  %i.ws = load i32, ptr %0, align 4
  %i.wt = ashr i32 %i.ws, 8                       ; 3 uses
  store i32 %i.wt, ptr %0, align 4
  %i.wu = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.wv = add nsw i32 %i.wu, -8                   ; 2 uses
  store i32 %i.wv, ptr %i.dp, align 4
  %i.ww = getelementptr inbounds nuw i8, ptr %.42, i64 1 ; 2 uses
  %i.wx = icmp sgt i32 %i.wu, 15
  br i1 %i.wx, label %.lr.ph.i142.i, label %sdefl_put.exit144.i

sdefl_put.exit144.i:                              ; preds = %.lr.ph.i142.i, %bb.cw
  %.8 = phi ptr [ %.0198, %bb.cw ], [ %i.ww, %.lr.ph.i142.i ] ; 2 uses
  %i.wy = phi i32 [ %i.wn, %bb.cw ], [ %i.wt, %.lr.ph.i142.i ]
  %i.wz = phi i32 [ %i.wo, %bb.cw ], [ %i.wv, %.lr.ph.i142.i ] ; 3 uses
  %i.xa = shl nuw nsw i32 2, %i.wz
  %i.xb = or i32 %i.xa, %i.wy                     ; 3 uses
  store i32 %i.xb, ptr %0, align 4
  %i.xc = add nsw i32 %i.wz, 2                    ; 2 uses
  store i32 %i.xc, ptr %i.dp, align 4
  %i.xd = icmp sgt i32 %i.wz, 5
  br i1 %i.xd, label %.lr.ph.i148.i, label %sdefl_put.exit150.i

.lr.ph.i148.i:                                    ; preds = %sdefl_put.exit144.i, %.lr.ph.i148.i
  %i.xe = phi i32 [ %i.xh, %.lr.ph.i148.i ], [ %i.xb, %sdefl_put.exit144.i ]
  %.41 = phi ptr [ %i.xk, %.lr.ph.i148.i ], [ %.8, %sdefl_put.exit144.i ] ; 2 uses
  %i.xf = trunc i32 %i.xe to i8
  store i8 %i.xf, ptr %.41, align 1
  %i.xg = load i32, ptr %0, align 4
  %i.xh = ashr i32 %i.xg, 8                       ; 3 uses
  store i32 %i.xh, ptr %0, align 4
  %i.xi = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.xj = add nsw i32 %i.xi, -8                   ; 2 uses
  store i32 %i.xj, ptr %i.dp, align 4
  %i.xk = getelementptr inbounds nuw i8, ptr %.41, i64 1 ; 2 uses
  %i.xl = icmp sgt i32 %i.xi, 15
  br i1 %i.xl, label %.lr.ph.i148.i, label %sdefl_put.exit150.i

sdefl_put.exit150.i:                              ; preds = %.lr.ph.i148.i, %sdefl_put.exit144.i
  %.9 = phi ptr [ %.8, %sdefl_put.exit144.i ], [ %i.xk, %.lr.ph.i148.i ] ; 2 uses
  %i.xm = phi i32 [ %i.xb, %sdefl_put.exit144.i ], [ %i.xh, %.lr.ph.i148.i ]
  %i.xn = phi i32 [ %i.xc, %sdefl_put.exit144.i ], [ %i.xj, %.lr.ph.i148.i ] ; 3 uses
  %i.xo = add nsw i32 %.sroa.5.0.i, -257
  %i.xp = shl i32 %i.xo, %i.xn
  %i.xq = or i32 %i.xp, %i.xm                     ; 3 uses
  store i32 %i.xq, ptr %0, align 4
  %i.xr = add nsw i32 %i.xn, 5                    ; 2 uses
  store i32 %i.xr, ptr %i.dp, align 4
  %i.xs = icmp sgt i32 %i.xn, 2
  br i1 %i.xs, label %.lr.ph.i154.i, label %sdefl_put.exit156.i

.lr.ph.i154.i:                                    ; preds = %sdefl_put.exit150.i, %.lr.ph.i154.i
  %i.xt = phi i32 [ %i.xw, %.lr.ph.i154.i ], [ %i.xq, %sdefl_put.exit150.i ]
  %.40 = phi ptr [ %i.xz, %.lr.ph.i154.i ], [ %.9, %sdefl_put.exit150.i ] ; 2 uses
  %i.xu = trunc i32 %i.xt to i8
  store i8 %i.xu, ptr %.40, align 1
  %i.xv = load i32, ptr %0, align 4
  %i.xw = ashr i32 %i.xv, 8                       ; 3 uses
  store i32 %i.xw, ptr %0, align 4
  %i.xx = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.xy = add nsw i32 %i.xx, -8                   ; 2 uses
  store i32 %i.xy, ptr %i.dp, align 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.40, i64 1 ; 2 uses
  %i.ya = icmp sgt i32 %i.xx, 15
  br i1 %i.ya, label %.lr.ph.i154.i, label %sdefl_put.exit156.i

sdefl_put.exit156.i:                              ; preds = %.lr.ph.i154.i, %sdefl_put.exit150.i
  %.10 = phi ptr [ %.9, %sdefl_put.exit150.i ], [ %i.xz, %.lr.ph.i154.i ] ; 2 uses
  %i.yb = phi i32 [ %i.xq, %sdefl_put.exit150.i ], [ %i.xw, %.lr.ph.i154.i ]
  %i.yc = phi i32 [ %i.xr, %sdefl_put.exit150.i ], [ %i.xy, %.lr.ph.i154.i ] ; 3 uses
  %i.yd = add nsw i32 %.sroa.38.0.i, -1
  %i.ye = shl i32 %i.yd, %i.yc
  %i.yf = or i32 %i.ye, %i.yb                     ; 3 uses
  store i32 %i.yf, ptr %0, align 4
  %i.yg = add nsw i32 %i.yc, 5                    ; 2 uses
  store i32 %i.yg, ptr %i.dp, align 4
  %i.yh = icmp sgt i32 %i.yc, 2
  br i1 %i.yh, label %.lr.ph.i160.i, label %sdefl_put.exit162.i

.lr.ph.i160.i:                                    ; preds = %sdefl_put.exit156.i, %.lr.ph.i160.i
  %i.yi = phi i32 [ %i.yl, %.lr.ph.i160.i ], [ %i.yf, %sdefl_put.exit156.i ]
  %.39 = phi ptr [ %i.yo, %.lr.ph.i160.i ], [ %.10, %sdefl_put.exit156.i ] ; 2 uses
  %i.yj = trunc i32 %i.yi to i8
  store i8 %i.yj, ptr %.39, align 1
  %i.yk = load i32, ptr %0, align 4
  %i.yl = ashr i32 %i.yk, 8                       ; 3 uses
  store i32 %i.yl, ptr %0, align 4
  %i.ym = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.yn = add nsw i32 %i.ym, -8                   ; 2 uses
  store i32 %i.yn, ptr %i.dp, align 4
  %i.yo = getelementptr inbounds nuw i8, ptr %.39, i64 1 ; 2 uses
  %i.yp = icmp sgt i32 %i.ym, 15
  br i1 %i.yp, label %.lr.ph.i160.i, label %sdefl_put.exit162.i

sdefl_put.exit162.i:                              ; preds = %.lr.ph.i160.i, %sdefl_put.exit156.i
  %.11 = phi ptr [ %.10, %sdefl_put.exit156.i ], [ %i.yo, %.lr.ph.i160.i ] ; 2 uses
  %i.yq = phi i32 [ %i.yf, %sdefl_put.exit156.i ], [ %i.yl, %.lr.ph.i160.i ]
  %i.yr = phi i32 [ %i.yg, %sdefl_put.exit156.i ], [ %i.yn, %.lr.ph.i160.i ] ; 3 uses
  %i.ys = add nsw i32 %.0116.lcssa.i, -4
  %i.yt = shl nuw nsw i32 %i.ys, %i.yr
  %i.yu = or i32 %i.yt, %i.yq                     ; 3 uses
  store i32 %i.yu, ptr %0, align 4
  %i.yv = add nsw i32 %i.yr, 4                    ; 2 uses
  store i32 %i.yv, ptr %i.dp, align 4
  %i.yw = icmp sgt i32 %i.yr, 3
  br i1 %i.yw, label %.lr.ph.i166.i, label %.lr.ph230.preheader.i

.lr.ph.i166.i:                                    ; preds = %sdefl_put.exit162.i, %.lr.ph.i166.i
  %i.yx = phi i32 [ %i.za, %.lr.ph.i166.i ], [ %i.yu, %sdefl_put.exit162.i ]
  %.38 = phi ptr [ %i.zd, %.lr.ph.i166.i ], [ %.11, %sdefl_put.exit162.i ] ; 2 uses
  %i.yy = trunc i32 %i.yx to i8
  store i8 %i.yy, ptr %.38, align 1
  %i.yz = load i32, ptr %0, align 4
  %i.za = ashr i32 %i.yz, 8                       ; 3 uses
  store i32 %i.za, ptr %0, align 4
  %i.zb = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.zc = add nsw i32 %i.zb, -8                   ; 2 uses
  store i32 %i.zc, ptr %i.dp, align 4
  %i.zd = getelementptr inbounds nuw i8, ptr %.38, i64 1 ; 2 uses
  %i.ze = icmp sgt i32 %i.zb, 15
  br i1 %i.ze, label %.lr.ph.i166.i, label %.lr.ph230.preheader.i

.lr.ph230.preheader.i:                            ; preds = %.lr.ph.i166.i, %sdefl_put.exit162.i
  %i.zf = phi i32 [ %i.yu, %sdefl_put.exit162.i ], [ %i.za, %.lr.ph.i166.i ]
  %.12 = phi ptr [ %.11, %sdefl_put.exit162.i ], [ %i.zd, %.lr.ph.i166.i ]
  %i.zg = phi i32 [ %i.yv, %sdefl_put.exit162.i ], [ %i.zc, %.lr.ph.i166.i ]
  %wide.trip.count251.i = zext nneg i32 %.0116.lcssa.i to i64
  br label %.lr.ph230.i

.preheader217.i:                                  ; preds = %sdefl_put.exit174.i
  %i.zh = icmp sgt i32 %i.ps, 0
  br i1 %i.zh, label %.lr.ph232.preheader.i, label %.preheader214.i

.lr.ph232.preheader.i:                            ; preds = %.preheader217.i
  %wide.trip.count256.i = and i64 %i.pr, 2147483647
  br label %.lr.ph232.i

.lr.ph230.i:                                      ; preds = %sdefl_put.exit174.i, %.lr.ph230.preheader.i
  %.13 = phi ptr [ %.12, %.lr.ph230.preheader.i ], [ %.14, %sdefl_put.exit174.i ] ; 2 uses
  %5 = phi i32 [ %i.zf, %.lr.ph230.preheader.i ], [ %6, %sdefl_put.exit174.i ]
  %i.zi = phi i32 [ %i.zg, %.lr.ph230.preheader.i ], [ %i.aab, %sdefl_put.exit174.i ] ; 3 uses
  %indvars.iv248.i = phi i64 [ 0, %.lr.ph230.preheader.i ], [ %indvars.iv.next249.i, %sdefl_put.exit174.i ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr @sdefl_flush.perm, i64 %indvars.iv248.i
  %i.zk = load i8, ptr %i.zj, align 1
  %i.zl = zext i8 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zl
  %i.zn = load i8, ptr %i.zm, align 1
  %i.zo = zext i8 %i.zn to i32
  %i.zp = shl i32 %i.zo, %i.zi
  %i.zq = or i32 %i.zp, %5                        ; 3 uses
  store i32 %i.zq, ptr %0, align 4
  %i.zr = add nsw i32 %i.zi, 3                    ; 2 uses
  store i32 %i.zr, ptr %i.dp, align 4
  %i.zs = icmp sgt i32 %i.zi, 4
  br i1 %i.zs, label %.lr.ph.i172.i, label %sdefl_put.exit174.i

.lr.ph.i172.i:                                    ; preds = %.lr.ph230.i, %.lr.ph.i172.i
  %i.zt = phi i32 [ %i.zw, %.lr.ph.i172.i ], [ %i.zq, %.lr.ph230.i ]
  %.37 = phi ptr [ %i.zz, %.lr.ph.i172.i ], [ %.13, %.lr.ph230.i ] ; 2 uses
  %i.zu = trunc i32 %i.zt to i8
  store i8 %i.zu, ptr %.37, align 1
  %i.zv = load i32, ptr %0, align 4
  %i.zw = ashr i32 %i.zv, 8                       ; 3 uses
  store i32 %i.zw, ptr %0, align 4
  %i.zx = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.zy = add nsw i32 %i.zx, -8                   ; 2 uses
  store i32 %i.zy, ptr %i.dp, align 4
  %i.zz = getelementptr inbounds nuw i8, ptr %.37, i64 1 ; 2 uses
  %i.aaa = icmp sgt i32 %i.zx, 15
  br i1 %i.aaa, label %.lr.ph.i172.i, label %sdefl_put.exit174.i

sdefl_put.exit174.i:                              ; preds = %.lr.ph.i172.i, %.lr.ph230.i
  %.14 = phi ptr [ %.13, %.lr.ph230.i ], [ %i.zz, %.lr.ph.i172.i ] ; 3 uses
  %6 = phi i32 [ %i.zq, %.lr.ph230.i ], [ %i.zw, %.lr.ph.i172.i ] ; 3 uses
  %i.aab = phi i32 [ %i.zr, %.lr.ph230.i ], [ %i.zy, %.lr.ph.i172.i ] ; 3 uses
  %indvars.iv.next249.i = add nuw nsw i64 %indvars.iv248.i, 1 ; 2 uses
  %exitcond252.not.i = icmp eq i64 %indvars.iv.next249.i, %wide.trip.count251.i
  br i1 %exitcond252.not.i, label %.preheader217.i, label %.lr.ph230.i

.preheader214.i:                                  ; preds = %sdefl_put.exit186.i, %.preheader217.i
  %i.aac = phi i32 [ %6, %.preheader217.i ], [ %i.aco, %sdefl_put.exit186.i ] ; 2 uses
  %.15 = phi ptr [ %.14, %.preheader217.i ], [ %.32, %sdefl_put.exit186.i ] ; 2 uses
  %i.aad = phi i32 [ %i.aab, %.preheader217.i ], [ %i.acp, %sdefl_put.exit186.i ] ; 2 uses
  %i.aae = load i32, ptr %i.t, align 4
  %i.aaf = icmp sgt i32 %i.aae, 0
  br i1 %i.aaf, label %.lr.ph236.i, label %._crit_edge.i

.lr.ph232.i:                                      ; preds = %sdefl_put.exit186.i, %.lr.ph232.preheader.i
  %i.aag = phi i32 [ %6, %.lr.ph232.preheader.i ], [ %i.aco, %sdefl_put.exit186.i ]
  %.30 = phi ptr [ %.14, %.lr.ph232.preheader.i ], [ %.32, %sdefl_put.exit186.i ] ; 2 uses
  %i.aah = phi i32 [ %i.aab, %.lr.ph232.preheader.i ], [ %i.acp, %sdefl_put.exit186.i ] ; 2 uses
  %indvars.iv253.i = phi i64 [ 0, %.lr.ph232.preheader.i ], [ %indvars.iv.next254.i, %sdefl_put.exit186.i ] ; 2 uses
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv253.i ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4
  %i.aak = and i32 %i.aaj, 31                     ; 3 uses
  %i.aal = zext nneg i32 %i.aak to i64            ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aal
  %i.aan = load i32, ptr %i.aam, align 4
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aal
  %i.aap = load i8, ptr %i.aao, align 1
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = shl i32 %i.aan, %i.aah
  %i.aas = or i32 %i.aag, %i.aar                  ; 3 uses
  store i32 %i.aas, ptr %0, align 4
  %i.aat = add nsw i32 %i.aah, %i.aaq             ; 3 uses
  store i32 %i.aat, ptr %i.dp, align 4
  %i.aau = icmp sgt i32 %i.aat, 7
  br i1 %i.aau, label %.lr.ph.i178.i, label %sdefl_put.exit180.i

.lr.ph.i178.i:                                    ; preds = %.lr.ph232.i, %.lr.ph.i178.i
  %i.aav = phi i32 [ %i.aay, %.lr.ph.i178.i ], [ %i.aas, %.lr.ph232.i ]
  %.36 = phi ptr [ %i.abb, %.lr.ph.i178.i ], [ %.30, %.lr.ph232.i ] ; 2 uses
  %i.aaw = trunc i32 %i.aav to i8
  store i8 %i.aaw, ptr %.36, align 1
  %i.aax = load i32, ptr %0, align 4
  %i.aay = ashr i32 %i.aax, 8                     ; 3 uses
  store i32 %i.aay, ptr %0, align 4
  %i.aaz = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.aba = add nsw i32 %i.aaz, -8                 ; 2 uses
  store i32 %i.aba, ptr %i.dp, align 4
  %i.abb = getelementptr inbounds nuw i8, ptr %.36, i64 1 ; 2 uses
  %i.abc = icmp sgt i32 %i.aaz, 15
  br i1 %i.abc, label %.lr.ph.i178.i, label %sdefl_put.exit180.i

sdefl_put.exit180.i:                              ; preds = %.lr.ph.i178.i, %.lr.ph232.i
  %i.abd = phi i32 [ %i.aas, %.lr.ph232.i ], [ %i.aay, %.lr.ph.i178.i ] ; 2 uses
  %.31 = phi ptr [ %.30, %.lr.ph232.i ], [ %i.abb, %.lr.ph.i178.i ] ; 7 uses
  %i.abe = phi i32 [ %i.aat, %.lr.ph232.i ], [ %i.aba, %.lr.ph.i178.i ] ; 8 uses
  %i.abf = icmp samesign ult i32 %i.aak, 16
  br i1 %i.abf, label %sdefl_put.exit186.i, label %bb.cx

bb.cx:                                            ; preds = %sdefl_put.exit180.i
  %i.abg = load i32, ptr %i.aai, align 4
  %i.abh = lshr i32 %i.abg, 5
  %i.abi = shl i32 %i.abh, %i.abe
  %i.abj = or i32 %i.abi, %i.abd                  ; 7 uses
  store i32 %i.abj, ptr %0, align 4
  switch i32 %i.aak, label %bb.da [
    i32 16, label %bb.cy
    i32 17, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.abk = add nsw i32 %i.abe, 2                  ; 2 uses
  store i32 %i.abk, ptr %i.dp, align 4
  %i.abl = icmp sgt i32 %i.abe, 5
  br i1 %i.abl, label %.lr.ph.i184.i, label %sdefl_put.exit186.i

.lr.ph.i184.i:                                    ; preds = %bb.cy, %.lr.ph.i184.i
  %i.abm = phi i32 [ %i.abp, %.lr.ph.i184.i ], [ %i.abj, %bb.cy ]
  %.34 = phi ptr [ %i.abs, %.lr.ph.i184.i ], [ %.31, %bb.cy ] ; 2 uses
  %i.abn = trunc i32 %i.abm to i8
  store i8 %i.abn, ptr %.34, align 1
  %i.abo = load i32, ptr %0, align 4
  %i.abp = ashr i32 %i.abo, 8                     ; 3 uses
  store i32 %i.abp, ptr %0, align 4
  %i.abq = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.abr = add nsw i32 %i.abq, -8                 ; 2 uses
  store i32 %i.abr, ptr %i.dp, align 4
  %i.abs = getelementptr inbounds nuw i8, ptr %.34, i64 1 ; 2 uses
  %i.abt = icmp sgt i32 %i.abq, 15
  br i1 %i.abt, label %.lr.ph.i184.i, label %sdefl_put.exit186.i

bb.cz:                                            ; preds = %bb.cx
  %i.abu = add nsw i32 %i.abe, 3                  ; 2 uses
  store i32 %i.abu, ptr %i.dp, align 4
  %i.abv = icmp sgt i32 %i.abe, 4
  br i1 %i.abv, label %.lr.ph.i190.i, label %sdefl_put.exit186.i

.lr.ph.i190.i:                                    ; preds = %bb.cz, %.lr.ph.i190.i
  %i.abw = phi i32 [ %i.abz, %.lr.ph.i190.i ], [ %i.abj, %bb.cz ]
  %.33 = phi ptr [ %i.acc, %.lr.ph.i190.i ], [ %.31, %bb.cz ] ; 2 uses
  %i.abx = trunc i32 %i.abw to i8
  store i8 %i.abx, ptr %.33, align 1
  %i.aby = load i32, ptr %0, align 4
  %i.abz = ashr i32 %i.aby, 8                     ; 3 uses
  store i32 %i.abz, ptr %0, align 4
  %i.aca = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.acb = add nsw i32 %i.aca, -8                 ; 2 uses
  store i32 %i.acb, ptr %i.dp, align 4
  %i.acc = getelementptr inbounds nuw i8, ptr %.33, i64 1 ; 2 uses
  %i.acd = icmp sgt i32 %i.aca, 15
  br i1 %i.acd, label %.lr.ph.i190.i, label %sdefl_put.exit186.i

bb.da:                                            ; preds = %bb.cx
  %i.ace = add nsw i32 %i.abe, 7                  ; 2 uses
  store i32 %i.ace, ptr %i.dp, align 4
  %i.acf = icmp sgt i32 %i.abe, 0
  br i1 %i.acf, label %.lr.ph.i196.i, label %sdefl_put.exit186.i

.lr.ph.i196.i:                                    ; preds = %bb.da, %.lr.ph.i196.i
  %i.acg = phi i32 [ %i.acj, %.lr.ph.i196.i ], [ %i.abj, %bb.da ]
  %.35 = phi ptr [ %i.acm, %.lr.ph.i196.i ], [ %.31, %bb.da ] ; 2 uses
  %i.ach = trunc i32 %i.acg to i8
  store i8 %i.ach, ptr %.35, align 1
  %i.aci = load i32, ptr %0, align 4
  %i.acj = ashr i32 %i.aci, 8                     ; 3 uses
  store i32 %i.acj, ptr %0, align 4
  %i.ack = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.acl = add nsw i32 %i.ack, -8                 ; 2 uses
  store i32 %i.acl, ptr %i.dp, align 4
  %i.acm = getelementptr inbounds nuw i8, ptr %.35, i64 1 ; 2 uses
  %i.acn = icmp sgt i32 %i.ack, 15
  br i1 %i.acn, label %.lr.ph.i196.i, label %sdefl_put.exit186.i

sdefl_put.exit186.i:                              ; preds = %.lr.ph.i190.i, %.lr.ph.i184.i, %.lr.ph.i196.i, %bb.da, %bb.cz, %bb.cy, %sdefl_put.exit180.i
  %i.aco = phi i32 [ %i.abd, %sdefl_put.exit180.i ], [ %i.abj, %bb.cz ], [ %i.abj, %bb.da ], [ %i.abp, %.lr.ph.i184.i ], [ %i.abj, %bb.cy ], [ %i.acj, %.lr.ph.i196.i ], [ %i.abz, %.lr.ph.i190.i ] ; 2 uses
  %.32 = phi ptr [ %.31, %sdefl_put.exit180.i ], [ %.31, %bb.cz ], [ %.31, %bb.da ], [ %i.abs, %.lr.ph.i184.i ], [ %.31, %bb.cy ], [ %i.acm, %.lr.ph.i196.i ], [ %i.acc, %.lr.ph.i190.i ] ; 2 uses
  %i.acp = phi i32 [ %i.abe, %sdefl_put.exit180.i ], [ %i.abu, %bb.cz ], [ %i.ace, %bb.da ], [ %i.abr, %.lr.ph.i184.i ], [ %i.abk, %bb.cy ], [ %i.acl, %.lr.ph.i196.i ], [ %i.acb, %.lr.ph.i190.i ] ; 2 uses
  %indvars.iv.next254.i = add nuw nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next254.i, %wide.trip.count256.i
  br i1 %exitcond257.not.i, label %.preheader214.i, label %.lr.ph232.i

.lr.ph236.i:                                      ; preds = %.preheader214.i, %sdefl_match.exit.i
  %i.acq = phi i32 [ %i.aic, %sdefl_match.exit.i ], [ %i.aac, %.preheader214.i ] ; 3 uses
  %.18 = phi ptr [ %.22, %sdefl_match.exit.i ], [ %.15, %.preheader214.i ] ; 4 uses
  %i.acr = phi i32 [ %i.aid, %sdefl_match.exit.i ], [ %i.aad, %.preheader214.i ] ; 4 uses
  %indvars.iv258.i = phi i64 [ %indvars.iv.next259.i, %sdefl_match.exit.i ], [ 0, %.preheader214.i ] ; 2 uses
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv258.i ; 4 uses
  %i.act = load i32, ptr %i.acs, align 4          ; 5 uses
  %i.acu = icmp sgt i32 %i.act, -1
  br i1 %i.acu, label %.preheader.i, label %bb.db

.preheader.i:                                     ; preds = %.lr.ph236.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 4 ; 2 uses
  %i.acw = load i32, ptr %i.acv, align 4          ; 2 uses
  %i.acx = icmp sgt i32 %i.acw, 0
  br i1 %i.acx, label %.lr.ph234.i, label %sdefl_match.exit.i

.lr.ph234.i:                                      ; preds = %.preheader.i, %sdefl_put.exit204.i
  %i.acy = phi i32 [ %7, %sdefl_put.exit204.i ], [ %i.act, %.preheader.i ] ; 2 uses
  %.27 = phi ptr [ %.28, %sdefl_put.exit204.i ], [ %.18, %.preheader.i ] ; 2 uses
  %i.acz = phi i32 [ %i.ady, %sdefl_put.exit204.i ], [ %i.acw, %.preheader.i ]
  %i.ada = phi i32 [ %i.adx, %sdefl_put.exit204.i ], [ %i.acq, %.preheader.i ]
  %.0118233.i.a = phi i32 [ %i.adz, %sdefl_put.exit204.i ], [ %i.acr, %.preheader.i ] ; 2 uses
  %.0118233.i = phi i32 [ %i.aea, %sdefl_put.exit204.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.adb = add nsw i32 %i.acy, %.0118233.i
  %i.adc = sext i32 %i.adb to i64
  %i.add = getelementptr inbounds i8, ptr %2, i64 %i.adc
  %i.ade = load i8, ptr %i.add, align 1
  %i.adf = zext i8 %i.ade to i64                  ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4
  %i.adi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.adf
  %i.adj = load i8, ptr %i.adi, align 1
  %i.adk = zext i8 %i.adj to i32
  %i.adl = shl i32 %i.adh, %.0118233.i.a
  %i.adm = or i32 %i.adl, %i.ada                  ; 3 uses
  store i32 %i.adm, ptr %0, align 4
  %i.adn = add nsw i32 %.0118233.i.a, %i.adk      ; 3 uses
  store i32 %i.adn, ptr %i.dp, align 4
  %i.ado = icmp sgt i32 %i.adn, 7
  br i1 %i.ado, label %.lr.ph.i202.i, label %sdefl_put.exit204.i

.lr.ph.i202.i:                                    ; preds = %.lr.ph234.i, %.lr.ph.i202.i
  %i.adp = phi i32 [ %i.ads, %.lr.ph.i202.i ], [ %i.adm, %.lr.ph234.i ]
  %.29 = phi ptr [ %i.adv, %.lr.ph.i202.i ], [ %.27, %.lr.ph234.i ] ; 2 uses
  %i.adq = trunc i32 %i.adp to i8
  store i8 %i.adq, ptr %.29, align 1
  %i.adr = load i32, ptr %0, align 4
  %i.ads = ashr i32 %i.adr, 8                     ; 3 uses
  store i32 %i.ads, ptr %0, align 4
  %i.adt = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.adu = add nsw i32 %i.adt, -8                 ; 2 uses
  store i32 %i.adu, ptr %i.dp, align 4
  %i.adv = getelementptr inbounds nuw i8, ptr %.29, i64 1 ; 2 uses
  %i.adw = icmp sgt i32 %i.adt, 15
  br i1 %i.adw, label %.lr.ph.i202.i, label %sdefl_put.exit204.loopexit.i

sdefl_put.exit204.loopexit.i:                     ; preds = %.lr.ph.i202.i
  %.pre266.i = load i32, ptr %i.acv, align 4
  %.pre354 = load i32, ptr %i.acs, align 4
  br label %sdefl_put.exit204.i

sdefl_put.exit204.i:                              ; preds = %sdefl_put.exit204.loopexit.i, %.lr.ph234.i
  %7 = phi i32 [ %.pre354, %sdefl_put.exit204.loopexit.i ], [ %i.acy, %.lr.ph234.i ]
  %i.adx = phi i32 [ %i.ads, %sdefl_put.exit204.loopexit.i ], [ %i.adm, %.lr.ph234.i ] ; 2 uses
  %.28 = phi ptr [ %i.adv, %sdefl_put.exit204.loopexit.i ], [ %.27, %.lr.ph234.i ] ; 2 uses
  %i.ady = phi i32 [ %.pre266.i, %sdefl_put.exit204.loopexit.i ], [ %i.acz, %.lr.ph234.i ] ; 2 uses
  %i.adz = phi i32 [ %i.adu, %sdefl_put.exit204.loopexit.i ], [ %i.adn, %.lr.ph234.i ] ; 2 uses
  %i.aea = add nuw nsw i32 %.0118233.i, 1         ; 2 uses
  %i.aeb = icmp slt i32 %i.aea, %i.ady
  br i1 %i.aeb, label %.lr.ph234.i, label %sdefl_match.exit.i

bb.db:                                            ; preds = %.lr.ph236.i
  %i.aec = sub nsw i32 0, %i.act                  ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %i.aee = load i32, ptr %i.aed, align 4          ; 2 uses
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = getelementptr inbounds i8, ptr @sdefl_match_codes.lslot, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1
  %i.aei = zext i8 %i.aeh to i64                  ; 3 uses
  %i.aej = add nuw nsw i64 %i.aei, 257            ; 2 uses
  %i.aek = xor i32 %i.act, -1                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.act, -1
  %i.ael = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aek, i1 true)
  %i.aem = xor i32 %i.ael, 31
  %i.aen = shl nuw i32 2, %i.aem
  %i.aeo = ashr i32 %i.aen, 2
  %i.aep = select i1 %.not.i.i.i.i, i32 0, i32 %i.aeo ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %i.aep, 0
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aeq, i1 true)
  %i.aes = trunc nuw nsw i64 %i.aer to i32
  %i.aet = xor i32 %i.aes, 63
  %.0.i12.i.i.i = select i1 %.not.i11.i.i.i, i32 0, i32 %i.aet ; 4 uses
  %.not.i.i.i162 = icmp eq i32 %.0.i12.i.i.i, 0
  br i1 %.not.i.i.i162, label %sdefl_match_codes.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aeu = shl nuw nsw i32 %.0.i12.i.i.i, 1
  %i.aev = add nuw nsw i32 %i.aeu, 2
  %i.aew = zext nneg i32 %.0.i12.i.i.i to i64
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match_codes.dxmax, i64 %i.aew
  %i.aey = load i16, ptr %i.aex, align 2
  %i.aez = sext i16 %i.aey to i32
  %i.afa = icmp sgt i32 %i.aec, %i.aez
  %i.afb = zext i1 %i.afa to i32
  %i.afc = or disjoint i32 %i.aev, %i.afb
  br label %sdefl_match_codes.exit.i.i

sdefl_match_codes.exit.i.i:                       ; preds = %bb.dc, %bb.db
  %i.afd = phi i32 [ %i.afc, %bb.dc ], [ %i.aek, %bb.db ]
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aej
  %i.aff = load i32, ptr %i.afe, align 4
  %i.afg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aej
  %i.afh = load i8, ptr %i.afg, align 1
  %i.afi = zext i8 %i.afh to i32
  %i.afj = shl i32 %i.aff, %i.acr
  %i.afk = or i32 %i.acq, %i.afj                  ; 3 uses
  store i32 %i.afk, ptr %0, align 4
  %i.afl = add nsw i32 %i.acr, %i.afi             ; 3 uses
  store i32 %i.afl, ptr %i.dp, align 4
  %i.afm = icmp sgt i32 %i.afl, 7
  br i1 %i.afm, label %.lr.ph.i.i.i, label %sdefl_put.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_match_codes.exit.i.i, %.lr.ph.i.i.i
  %i.afn = phi i32 [ %i.afq, %.lr.ph.i.i.i ], [ %i.afk, %sdefl_match_codes.exit.i.i ]
  %.26 = phi ptr [ %i.aft, %.lr.ph.i.i.i ], [ %.18, %sdefl_match_codes.exit.i.i ] ; 2 uses
  %i.afo = trunc i32 %i.afn to i8
  store i8 %i.afo, ptr %.26, align 1
  %i.afp = load i32, ptr %0, align 4
  %i.afq = ashr i32 %i.afp, 8                     ; 3 uses
  store i32 %i.afq, ptr %0, align 4
  %i.afr = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.afs = add nsw i32 %i.afr, -8                 ; 2 uses
  store i32 %i.afs, ptr %i.dp, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %.26, i64 1 ; 2 uses
  %i.afu = icmp sgt i32 %i.afr, 15
  br i1 %i.afu, label %.lr.ph.i.i.i, label %sdefl_put.exit.i.i

sdefl_put.exit.i.i:                               ; preds = %.lr.ph.i.i.i, %sdefl_match_codes.exit.i.i
  %.19 = phi ptr [ %.18, %sdefl_match_codes.exit.i.i ], [ %i.aft, %.lr.ph.i.i.i ] ; 2 uses
  %i.afv = phi i32 [ %i.afk, %sdefl_match_codes.exit.i.i ], [ %i.afq, %.lr.ph.i.i.i ]
  %i.afw = phi i32 [ %i.afl, %sdefl_match_codes.exit.i.i ], [ %i.afs, %.lr.ph.i.i.i ] ; 2 uses
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match.lmin, i64 %i.aei
  %i.afy = load i16, ptr %i.afx, align 2
  %i.afz = sext i16 %i.afy to i32
  %i.aga = sub nsw i32 %i.aee, %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr @sdefl_match.lxn, i64 %i.aei
  %i.agc = load i8, ptr %i.agb, align 1
  %i.agd = sext i8 %i.agc to i32
  %i.age = shl i32 %i.aga, %i.afw
  %i.agf = or i32 %i.age, %i.afv                  ; 3 uses
  store i32 %i.agf, ptr %0, align 4
  %i.agg = add nsw i32 %i.afw, %i.agd             ; 3 uses
  store i32 %i.agg, ptr %i.dp, align 4
  %i.agh = icmp sgt i32 %i.agg, 7
  br i1 %i.agh, label %.lr.ph.i17.i.i, label %sdefl_put.exit19.i.i

.lr.ph.i17.i.i:                                   ; preds = %sdefl_put.exit.i.i, %.lr.ph.i17.i.i
  %i.agi = phi i32 [ %i.agl, %.lr.ph.i17.i.i ], [ %i.agf, %sdefl_put.exit.i.i ]
  %.25 = phi ptr [ %i.ago, %.lr.ph.i17.i.i ], [ %.19, %sdefl_put.exit.i.i ] ; 2 uses
  %i.agj = trunc i32 %i.agi to i8
  store i8 %i.agj, ptr %.25, align 1
  %i.agk = load i32, ptr %0, align 4
  %i.agl = ashr i32 %i.agk, 8                     ; 3 uses
  store i32 %i.agl, ptr %0, align 4
  %i.agm = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.agn = add nsw i32 %i.agm, -8                 ; 2 uses
  store i32 %i.agn, ptr %i.dp, align 4
  %i.ago = getelementptr inbounds nuw i8, ptr %.25, i64 1 ; 2 uses
  %i.agp = icmp sgt i32 %i.agm, 15
  br i1 %i.agp, label %.lr.ph.i17.i.i, label %sdefl_put.exit19.i.i

sdefl_put.exit19.i.i:                             ; preds = %.lr.ph.i17.i.i, %sdefl_put.exit.i.i
  %.20 = phi ptr [ %.19, %sdefl_put.exit.i.i ], [ %i.ago, %.lr.ph.i17.i.i ] ; 2 uses
  %i.agq = phi i32 [ %i.agf, %sdefl_put.exit.i.i ], [ %i.agl, %.lr.ph.i17.i.i ]
  %i.agr = phi i32 [ %i.agg, %sdefl_put.exit.i.i ], [ %i.agn, %.lr.ph.i17.i.i ] ; 2 uses
  %i.ags = zext nneg i32 %i.afd to i64            ; 3 uses
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ags
  %i.agu = load i32, ptr %i.agt, align 4
  %i.agv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ags
  %i.agw = load i8, ptr %i.agv, align 1
  %i.agx = zext i8 %i.agw to i32
  %i.agy = shl i32 %i.agu, %i.agr
  %i.agz = or i32 %i.agy, %i.agq                  ; 3 uses
  store i32 %i.agz, ptr %0, align 4
  %i.aha = add nsw i32 %i.agr, %i.agx             ; 3 uses
  store i32 %i.aha, ptr %i.dp, align 4
  %i.ahb = icmp sgt i32 %i.aha, 7
  br i1 %i.ahb, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

.lr.ph.i22.i.i:                                   ; preds = %sdefl_put.exit19.i.i, %.lr.ph.i22.i.i
  %i.ahc = phi i32 [ %i.ahf, %.lr.ph.i22.i.i ], [ %i.agz, %sdefl_put.exit19.i.i ]
  %.24 = phi ptr [ %i.ahi, %.lr.ph.i22.i.i ], [ %.20, %sdefl_put.exit19.i.i ] ; 2 uses
  %i.ahd = trunc i32 %i.ahc to i8
  store i8 %i.ahd, ptr %.24, align 1
  %i.ahe = load i32, ptr %0, align 4
  %i.ahf = ashr i32 %i.ahe, 8                     ; 3 uses
  store i32 %i.ahf, ptr %0, align 4
  %i.ahg = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ahh = add nsw i32 %i.ahg, -8                 ; 2 uses
  store i32 %i.ahh, ptr %i.dp, align 4
  %i.ahi = getelementptr inbounds nuw i8, ptr %.24, i64 1 ; 2 uses
  %i.ahj = icmp sgt i32 %i.ahg, 15
  br i1 %i.ahj, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

sdefl_put.exit24.i.i:                             ; preds = %.lr.ph.i22.i.i, %sdefl_put.exit19.i.i
  %.21 = phi ptr [ %.20, %sdefl_put.exit19.i.i ], [ %i.ahi, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahk = phi i32 [ %i.agz, %sdefl_put.exit19.i.i ], [ %i.ahf, %.lr.ph.i22.i.i ]
  %i.ahl = phi i32 [ %i.aha, %sdefl_put.exit19.i.i ], [ %i.ahh, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahm = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match.dmin, i64 %i.ags
  %i.ahn = load i16, ptr %i.ahm, align 2
  %i.aho = sext i16 %i.ahn to i32
  %i.ahp = sub nsw i32 %i.aec, %i.aho
  %i.ahq = shl i32 %i.ahp, %i.ahl
  %i.ahr = or i32 %i.ahq, %i.ahk                  ; 3 uses
  store i32 %i.ahr, ptr %0, align 4
  %i.ahs = add nsw i32 %i.ahl, %.0.i12.i.i.i      ; 3 uses
  store i32 %i.ahs, ptr %i.dp, align 4
  %i.aht = icmp sgt i32 %i.ahs, 7
  br i1 %i.aht, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

.lr.ph.i27.i.i:                                   ; preds = %sdefl_put.exit24.i.i, %.lr.ph.i27.i.i
  %i.ahu = phi i32 [ %i.ahx, %.lr.ph.i27.i.i ], [ %i.ahr, %sdefl_put.exit24.i.i ]
  %.23 = phi ptr [ %i.aia, %.lr.ph.i27.i.i ], [ %.21, %sdefl_put.exit24.i.i ] ; 2 uses
  %i.ahv = trunc i32 %i.ahu to i8
  store i8 %i.ahv, ptr %.23, align 1
  %i.ahw = load i32, ptr %0, align 4
  %i.ahx = ashr i32 %i.ahw, 8                     ; 3 uses
  store i32 %i.ahx, ptr %0, align 4
  %i.ahy = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ahz = add nsw i32 %i.ahy, -8                 ; 2 uses
  store i32 %i.ahz, ptr %i.dp, align 4
  %i.aia = getelementptr inbounds nuw i8, ptr %.23, i64 1 ; 2 uses
  %i.aib = icmp sgt i32 %i.ahy, 15
  br i1 %i.aib, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

sdefl_match.exit.i:                               ; preds = %.lr.ph.i27.i.i, %sdefl_put.exit204.i, %sdefl_put.exit24.i.i, %.preheader.i
  %i.aic = phi i32 [ %i.ahr, %sdefl_put.exit24.i.i ], [ %i.acq, %.preheader.i ], [ %i.adx, %sdefl_put.exit204.i ], [ %i.ahx, %.lr.ph.i27.i.i ] ; 2 uses
  %.22 = phi ptr [ %.21, %sdefl_put.exit24.i.i ], [ %.18, %.preheader.i ], [ %.28, %sdefl_put.exit204.i ], [ %i.aia, %.lr.ph.i27.i.i ] ; 2 uses
  %i.aid = phi i32 [ %i.ahs, %sdefl_put.exit24.i.i ], [ %i.acr, %.preheader.i ], [ %i.adz, %sdefl_put.exit204.i ], [ %i.ahz, %.lr.ph.i27.i.i ] ; 2 uses
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %i.aie = load i32, ptr %i.t, align 4
  %i.aif = sext i32 %i.aie to i64
  %i.aig = icmp slt i64 %indvars.iv.next259.i, %i.aif
  br i1 %i.aig, label %.lr.ph236.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %sdefl_match.exit.i, %.preheader214.i
  %i.aih = phi i32 [ %i.aac, %.preheader214.i ], [ %i.aic, %sdefl_match.exit.i ]
  %.16 = phi ptr [ %.15, %.preheader214.i ], [ %.22, %sdefl_match.exit.i ] ; 2 uses
  %i.aii = phi i32 [ %i.aad, %.preheader214.i ], [ %i.aid, %sdefl_match.exit.i ] ; 2 uses
  %i.aij = load i32, ptr %i.dq, align 4
  %i.aik = load i8, ptr %i.dk, align 4
  %i.ail = zext i8 %i.aik to i32
  %i.aim = shl i32 %i.aij, %i.aii
  %i.ain = or i32 %i.aih, %i.aim                  ; 2 uses
  store i32 %i.ain, ptr %0, align 4
  %i.aio = add nsw i32 %i.aii, %i.ail             ; 2 uses
  store i32 %i.aio, ptr %i.dp, align 4
  %i.aip = icmp sgt i32 %i.aio, 7
  br i1 %i.aip, label %.lr.ph.i209.i, label %sdefl_flush.exit

.lr.ph.i209.i:                                    ; preds = %._crit_edge.i, %.lr.ph.i209.i
  %i.aiq = phi i32 [ %i.ait, %.lr.ph.i209.i ], [ %i.ain, %._crit_edge.i ]
  %.17 = phi ptr [ %i.aiw, %.lr.ph.i209.i ], [ %.16, %._crit_edge.i ] ; 2 uses
  %i.air = trunc i32 %i.aiq to i8
  store i8 %i.air, ptr %.17, align 1
  %i.ais = load i32, ptr %0, align 4
  %i.ait = ashr i32 %i.ais, 8                     ; 2 uses
end_hunk_0
