Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1927
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@sdefl_compr:.preheader213
  %i.vp = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.vq = icmp sgt i32 %i.vn, 15
  br i1 %i.vq, label %.lr.ph.i130.i, label %sdefl_put.exit132.i

sdefl_put.exit132.i:                              ; preds = %.lr.ph.i130.i, %sdefl_put.exit.i
  %i.vr = phi i32 [ %i.vf, %sdefl_put.exit.i ], [ %i.vm, %.lr.ph.i130.i ]
  %.4 = phi ptr [ %.3200, %sdefl_put.exit.i ], [ %i.vp, %.lr.ph.i130.i ] ; 2 uses
  %i.vs = phi i32 [ %i.vh, %sdefl_put.exit.i ], [ %i.vo, %.lr.ph.i130.i ]
  %.not123.i = icmp eq i32 %i.vs, 0
  br i1 %.not123.i, label %sdefl_put.exit138.i, label %.lr.ph.preheader.i134.i

.lr.ph.preheader.i134.i:                          ; preds = %sdefl_put.exit132.i
  store i32 8, ptr %i.dp, align 4
  br label %.lr.ph.i136.i

.lr.ph.i136.i:                                    ; preds = %.lr.ph.i136.i, %.lr.ph.preheader.i134.i
  %i.vt = phi i32 [ %i.vr, %.lr.ph.preheader.i134.i ], [ %i.vw, %.lr.ph.i136.i ]
  %.5 = phi ptr [ %.4, %.lr.ph.preheader.i134.i ], [ %i.vz, %.lr.ph.i136.i ] ; 2 uses
  %i.vu = trunc i32 %i.vt to i8
  store i8 %i.vu, ptr %.5, align 1
  %i.vv = load i32, ptr %0, align 4
  %i.vw = ashr i32 %i.vv, 8                       ; 2 uses
  store i32 %i.vw, ptr %0, align 4
  %i.vx = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.vy = add nsw i32 %i.vx, -8
  store i32 %i.vy, ptr %i.dp, align 4
  %i.vz = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.wa = icmp sgt i32 %i.vx, 15
  br i1 %i.wa, label %.lr.ph.i136.i, label %sdefl_put.exit138.i

sdefl_put.exit138.i:                              ; preds = %.lr.ph.i136.i, %sdefl_put.exit132.i
  %i.wb = phi ptr [ %.4, %sdefl_put.exit132.i ], [ %i.vz, %.lr.ph.i136.i ] ; 3 uses
  %i.wc = trunc nuw i32 %i.uq to i16              ; 2 uses
  store i16 %i.wc, ptr %i.wb, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  %i.we = xor i16 %i.wc, -1
  store i16 %i.we, ptr %i.wd, align 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wb, i64 4 ; 2 uses
  %i.wg = mul nuw nsw i64 %indvars.iv.i159, 65535
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.wg
  %i.wi = zext nneg i32 %i.uq to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wf, ptr readonly align 1 %i.wh, i64 %i.wi, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.wi ; 2 uses
  %i.wk = sub nsw i32 %.0228.i, %i.uq
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next.i160, %wide.trip.count.i158
  br i1 %exitcond.not.i161, label %sdefl_flush.exit, label %bb.cv

bb.cw:                                            ; preds = %sdefl_blk_type.exit.i
  %i.wl = load i32, ptr %i.dp, align 4            ; 3 uses
  %i.wm = shl nuw i32 %i.jz, %i.wl
  %i.wn = load i32, ptr %0, align 4
  %i.wo = or i32 %i.wn, %i.wm                     ; 3 uses
  store i32 %i.wo, ptr %0, align 4
  %i.wp = add nsw i32 %i.wl, 1                    ; 2 uses
  store i32 %i.wp, ptr %i.dp, align 4
  %i.wq = icmp sgt i32 %i.wl, 6
  br i1 %i.wq, label %.lr.ph.i142.i, label %sdefl_put.exit144.i

.lr.ph.i142.i:                                    ; preds = %bb.cw, %.lr.ph.i142.i
  %i.wr = phi i32 [ %i.wu, %.lr.ph.i142.i ], [ %i.wo, %bb.cw ]
  %.42 = phi ptr [ %i.wx, %.lr.ph.i142.i ], [ %.0198, %bb.cw ] ; 2 uses
  %i.ws = trunc i32 %i.wr to i8
  store i8 %i.ws, ptr %.42, align 1
  %i.wt = load i32, ptr %0, align 4
  %i.wu = ashr i32 %i.wt, 8                       ; 3 uses
  store i32 %i.wu, ptr %0, align 4
  %i.wv = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.ww = add nsw i32 %i.wv, -8                   ; 2 uses
  store i32 %i.ww, ptr %i.dp, align 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.42, i64 1 ; 2 uses
  %i.wy = icmp sgt i32 %i.wv, 15
  br i1 %i.wy, label %.lr.ph.i142.i, label %sdefl_put.exit144.i

sdefl_put.exit144.i:                              ; preds = %.lr.ph.i142.i, %bb.cw
  %.8 = phi ptr [ %.0198, %bb.cw ], [ %i.wx, %.lr.ph.i142.i ] ; 2 uses
  %i.wz = phi i32 [ %i.wo, %bb.cw ], [ %i.wu, %.lr.ph.i142.i ]
  %i.xa = phi i32 [ %i.wp, %bb.cw ], [ %i.ww, %.lr.ph.i142.i ] ; 3 uses
  %i.xb = shl nuw nsw i32 2, %i.xa
  %i.xc = or i32 %i.xb, %i.wz                     ; 3 uses
  store i32 %i.xc, ptr %0, align 4
  %i.xd = add nsw i32 %i.xa, 2                    ; 2 uses
  store i32 %i.xd, ptr %i.dp, align 4
  %i.xe = icmp sgt i32 %i.xa, 5
  br i1 %i.xe, label %.lr.ph.i148.i, label %sdefl_put.exit150.i

.lr.ph.i148.i:                                    ; preds = %sdefl_put.exit144.i, %.lr.ph.i148.i
  %i.xf = phi i32 [ %i.xi, %.lr.ph.i148.i ], [ %i.xc, %sdefl_put.exit144.i ]
  %.41 = phi ptr [ %i.xl, %.lr.ph.i148.i ], [ %.8, %sdefl_put.exit144.i ] ; 2 uses
  %i.xg = trunc i32 %i.xf to i8
  store i8 %i.xg, ptr %.41, align 1
  %i.xh = load i32, ptr %0, align 4
  %i.xi = ashr i32 %i.xh, 8                       ; 3 uses
  store i32 %i.xi, ptr %0, align 4
  %i.xj = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.xk = add nsw i32 %i.xj, -8                   ; 2 uses
  store i32 %i.xk, ptr %i.dp, align 4
  %i.xl = getelementptr inbounds nuw i8, ptr %.41, i64 1 ; 2 uses
  %i.xm = icmp sgt i32 %i.xj, 15
  br i1 %i.xm, label %.lr.ph.i148.i, label %sdefl_put.exit150.i

sdefl_put.exit150.i:                              ; preds = %.lr.ph.i148.i, %sdefl_put.exit144.i
  %.9 = phi ptr [ %.8, %sdefl_put.exit144.i ], [ %i.xl, %.lr.ph.i148.i ] ; 2 uses
  %i.xn = phi i32 [ %i.xc, %sdefl_put.exit144.i ], [ %i.xi, %.lr.ph.i148.i ]
  %i.xo = phi i32 [ %i.xd, %sdefl_put.exit144.i ], [ %i.xk, %.lr.ph.i148.i ] ; 3 uses
  %i.xp = add nsw i32 %.sroa.5.0.i, -257
  %i.xq = shl i32 %i.xp, %i.xo
  %i.xr = or i32 %i.xq, %i.xn                     ; 3 uses
  store i32 %i.xr, ptr %0, align 4
  %i.xs = add nsw i32 %i.xo, 5                    ; 2 uses
  store i32 %i.xs, ptr %i.dp, align 4
  %i.xt = icmp sgt i32 %i.xo, 2
  br i1 %i.xt, label %.lr.ph.i154.i, label %sdefl_put.exit156.i

.lr.ph.i154.i:                                    ; preds = %sdefl_put.exit150.i, %.lr.ph.i154.i
  %i.xu = phi i32 [ %i.xx, %.lr.ph.i154.i ], [ %i.xr, %sdefl_put.exit150.i ]
  %.40 = phi ptr [ %i.ya, %.lr.ph.i154.i ], [ %.9, %sdefl_put.exit150.i ] ; 2 uses
  %i.xv = trunc i32 %i.xu to i8
  store i8 %i.xv, ptr %.40, align 1
  %i.xw = load i32, ptr %0, align 4
  %i.xx = ashr i32 %i.xw, 8                       ; 3 uses
  store i32 %i.xx, ptr %0, align 4
  %i.xy = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.xz = add nsw i32 %i.xy, -8                   ; 2 uses
  store i32 %i.xz, ptr %i.dp, align 4
  %i.ya = getelementptr inbounds nuw i8, ptr %.40, i64 1 ; 2 uses
  %i.yb = icmp sgt i32 %i.xy, 15
  br i1 %i.yb, label %.lr.ph.i154.i, label %sdefl_put.exit156.i

sdefl_put.exit156.i:                              ; preds = %.lr.ph.i154.i, %sdefl_put.exit150.i
  %.10 = phi ptr [ %.9, %sdefl_put.exit150.i ], [ %i.ya, %.lr.ph.i154.i ] ; 2 uses
  %i.yc = phi i32 [ %i.xr, %sdefl_put.exit150.i ], [ %i.xx, %.lr.ph.i154.i ]
  %i.yd = phi i32 [ %i.xs, %sdefl_put.exit150.i ], [ %i.xz, %.lr.ph.i154.i ] ; 3 uses
  %i.ye = add nsw i32 %.sroa.38.0.i, -1
  %i.yf = shl i32 %i.ye, %i.yd
  %i.yg = or i32 %i.yf, %i.yc                     ; 3 uses
  store i32 %i.yg, ptr %0, align 4
  %i.yh = add nsw i32 %i.yd, 5                    ; 2 uses
  store i32 %i.yh, ptr %i.dp, align 4
  %i.yi = icmp sgt i32 %i.yd, 2
  br i1 %i.yi, label %.lr.ph.i160.i, label %sdefl_put.exit162.i

.lr.ph.i160.i:                                    ; preds = %sdefl_put.exit156.i, %.lr.ph.i160.i
  %i.yj = phi i32 [ %i.ym, %.lr.ph.i160.i ], [ %i.yg, %sdefl_put.exit156.i ]
  %.39 = phi ptr [ %i.yp, %.lr.ph.i160.i ], [ %.10, %sdefl_put.exit156.i ] ; 2 uses
  %i.yk = trunc i32 %i.yj to i8
  store i8 %i.yk, ptr %.39, align 1
  %i.yl = load i32, ptr %0, align 4
  %i.ym = ashr i32 %i.yl, 8                       ; 3 uses
  store i32 %i.ym, ptr %0, align 4
  %i.yn = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.yo = add nsw i32 %i.yn, -8                   ; 2 uses
  store i32 %i.yo, ptr %i.dp, align 4
  %i.yp = getelementptr inbounds nuw i8, ptr %.39, i64 1 ; 2 uses
  %i.yq = icmp sgt i32 %i.yn, 15
  br i1 %i.yq, label %.lr.ph.i160.i, label %sdefl_put.exit162.i

sdefl_put.exit162.i:                              ; preds = %.lr.ph.i160.i, %sdefl_put.exit156.i
  %.11 = phi ptr [ %.10, %sdefl_put.exit156.i ], [ %i.yp, %.lr.ph.i160.i ] ; 2 uses
  %i.yr = phi i32 [ %i.yg, %sdefl_put.exit156.i ], [ %i.ym, %.lr.ph.i160.i ]
  %i.ys = phi i32 [ %i.yh, %sdefl_put.exit156.i ], [ %i.yo, %.lr.ph.i160.i ] ; 3 uses
  %i.yt = add nsw i32 %.0116.lcssa.i, -4
  %i.yu = shl nuw nsw i32 %i.yt, %i.ys
  %i.yv = or i32 %i.yu, %i.yr                     ; 3 uses
  store i32 %i.yv, ptr %0, align 4
  %i.yw = add nsw i32 %i.ys, 4                    ; 2 uses
  store i32 %i.yw, ptr %i.dp, align 4
  %i.yx = icmp sgt i32 %i.ys, 3
  br i1 %i.yx, label %.lr.ph.i166.i, label %.lr.ph230.preheader.i

.lr.ph.i166.i:                                    ; preds = %sdefl_put.exit162.i, %.lr.ph.i166.i
  %i.yy = phi i32 [ %i.zb, %.lr.ph.i166.i ], [ %i.yv, %sdefl_put.exit162.i ]
  %.38 = phi ptr [ %i.ze, %.lr.ph.i166.i ], [ %.11, %sdefl_put.exit162.i ] ; 2 uses
  %i.yz = trunc i32 %i.yy to i8
  store i8 %i.yz, ptr %.38, align 1
  %i.za = load i32, ptr %0, align 4
  %i.zb = ashr i32 %i.za, 8                       ; 3 uses
  store i32 %i.zb, ptr %0, align 4
  %i.zc = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.zd = add nsw i32 %i.zc, -8                   ; 2 uses
  store i32 %i.zd, ptr %i.dp, align 4
  %i.ze = getelementptr inbounds nuw i8, ptr %.38, i64 1 ; 2 uses
  %i.zf = icmp sgt i32 %i.zc, 15
  br i1 %i.zf, label %.lr.ph.i166.i, label %.lr.ph230.preheader.i

.lr.ph230.preheader.i:                            ; preds = %.lr.ph.i166.i, %sdefl_put.exit162.i
  %i.zg = phi i32 [ %i.yv, %sdefl_put.exit162.i ], [ %i.zb, %.lr.ph.i166.i ]
  %.12 = phi ptr [ %.11, %sdefl_put.exit162.i ], [ %i.ze, %.lr.ph.i166.i ]
  %i.zh = phi i32 [ %i.yw, %sdefl_put.exit162.i ], [ %i.zd, %.lr.ph.i166.i ]
  %wide.trip.count251.i = zext nneg i32 %.0116.lcssa.i to i64
  br label %.lr.ph230.i

.preheader217.i:                                  ; preds = %sdefl_put.exit174.i
  %i.zi = icmp sgt i32 %i.ps, 0
  br i1 %i.zi, label %.lr.ph232.preheader.i, label %.preheader214.i

.lr.ph232.preheader.i:                            ; preds = %.preheader217.i
  %wide.trip.count256.i = and i64 %i.pr, 2147483647
  br label %.lr.ph232.i

.lr.ph230.i:                                      ; preds = %sdefl_put.exit174.i, %.lr.ph230.preheader.i
  %5 = phi i32 [ %i.zg, %.lr.ph230.preheader.i ], [ %6, %sdefl_put.exit174.i ]
  %.13 = phi ptr [ %.12, %.lr.ph230.preheader.i ], [ %.14, %sdefl_put.exit174.i ] ; 2 uses
  %i.zj = phi i32 [ %i.zh, %.lr.ph230.preheader.i ], [ %i.aac, %sdefl_put.exit174.i ] ; 3 uses
  %indvars.iv248.i = phi i64 [ 0, %.lr.ph230.preheader.i ], [ %indvars.iv.next249.i, %sdefl_put.exit174.i ] ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr @sdefl_flush.perm, i64 %indvars.iv248.i
  %i.zl = load i8, ptr %i.zk, align 1
  %i.zm = zext i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.zm
  %i.zo = load i8, ptr %i.zn, align 1
  %i.zp = zext i8 %i.zo to i32
  %i.zq = shl i32 %i.zp, %i.zj
  %i.zr = or i32 %i.zq, %5                        ; 3 uses
  store i32 %i.zr, ptr %0, align 4
  %i.zs = add nsw i32 %i.zj, 3                    ; 2 uses
  store i32 %i.zs, ptr %i.dp, align 4
  %i.zt = icmp sgt i32 %i.zj, 4
  br i1 %i.zt, label %.lr.ph.i172.i, label %sdefl_put.exit174.i

.lr.ph.i172.i:                                    ; preds = %.lr.ph230.i, %.lr.ph.i172.i
  %i.zu = phi i32 [ %i.zx, %.lr.ph.i172.i ], [ %i.zr, %.lr.ph230.i ]
  %.37 = phi ptr [ %i.aaa, %.lr.ph.i172.i ], [ %.13, %.lr.ph230.i ] ; 2 uses
  %i.zv = trunc i32 %i.zu to i8
  store i8 %i.zv, ptr %.37, align 1
  %i.zw = load i32, ptr %0, align 4
  %i.zx = ashr i32 %i.zw, 8                       ; 3 uses
  store i32 %i.zx, ptr %0, align 4
  %i.zy = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.zz = add nsw i32 %i.zy, -8                   ; 2 uses
  store i32 %i.zz, ptr %i.dp, align 4
  %i.aaa = getelementptr inbounds nuw i8, ptr %.37, i64 1 ; 2 uses
  %i.aab = icmp sgt i32 %i.zy, 15
  br i1 %i.aab, label %.lr.ph.i172.i, label %sdefl_put.exit174.i

sdefl_put.exit174.i:                              ; preds = %.lr.ph.i172.i, %.lr.ph230.i
  %6 = phi i32 [ %i.zr, %.lr.ph230.i ], [ %i.zx, %.lr.ph.i172.i ] ; 3 uses
  %.14 = phi ptr [ %.13, %.lr.ph230.i ], [ %i.aaa, %.lr.ph.i172.i ] ; 3 uses
  %i.aac = phi i32 [ %i.zs, %.lr.ph230.i ], [ %i.zz, %.lr.ph.i172.i ] ; 3 uses
  %indvars.iv.next249.i = add nuw nsw i64 %indvars.iv248.i, 1 ; 2 uses
  %exitcond252.not.i = icmp eq i64 %indvars.iv.next249.i, %wide.trip.count251.i
  br i1 %exitcond252.not.i, label %.preheader217.i, label %.lr.ph230.i

.preheader214.i:                                  ; preds = %sdefl_put.exit186.i, %.preheader217.i
  %i.aad = phi i32 [ %6, %.preheader217.i ], [ %i.acp, %sdefl_put.exit186.i ] ; 2 uses
  %.15 = phi ptr [ %.14, %.preheader217.i ], [ %.32, %sdefl_put.exit186.i ] ; 2 uses
  %i.aae = phi i32 [ %i.aac, %.preheader217.i ], [ %i.acq, %sdefl_put.exit186.i ] ; 2 uses
  %i.aaf = load i32, ptr %i.t, align 4
  %i.aag = icmp sgt i32 %i.aaf, 0
  br i1 %i.aag, label %.lr.ph236.i, label %._crit_edge.i

.lr.ph232.i:                                      ; preds = %sdefl_put.exit186.i, %.lr.ph232.preheader.i
  %i.aah = phi i32 [ %6, %.lr.ph232.preheader.i ], [ %i.acp, %sdefl_put.exit186.i ]
  %.30 = phi ptr [ %.14, %.lr.ph232.preheader.i ], [ %.32, %sdefl_put.exit186.i ] ; 2 uses
  %i.aai = phi i32 [ %i.aac, %.lr.ph232.preheader.i ], [ %i.acq, %sdefl_put.exit186.i ] ; 2 uses
  %indvars.iv253.i = phi i64 [ 0, %.lr.ph232.preheader.i ], [ %indvars.iv.next254.i, %sdefl_put.exit186.i ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv253.i ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4
  %i.aal = and i32 %i.aak, 31                     ; 3 uses
  %i.aam = zext nneg i32 %i.aal to i64            ; 2 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aam
  %i.aao = load i32, ptr %i.aan, align 4
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aam
  %i.aaq = load i8, ptr %i.aap, align 1
  %i.aar = zext i8 %i.aaq to i32
  %i.aas = shl i32 %i.aao, %i.aai
  %i.aat = or i32 %i.aah, %i.aas                  ; 3 uses
  store i32 %i.aat, ptr %0, align 4
  %i.aau = add nsw i32 %i.aai, %i.aar             ; 3 uses
  store i32 %i.aau, ptr %i.dp, align 4
  %i.aav = icmp sgt i32 %i.aau, 7
  br i1 %i.aav, label %.lr.ph.i178.i, label %sdefl_put.exit180.i

.lr.ph.i178.i:                                    ; preds = %.lr.ph232.i, %.lr.ph.i178.i
  %i.aaw = phi i32 [ %i.aaz, %.lr.ph.i178.i ], [ %i.aat, %.lr.ph232.i ]
  %.36 = phi ptr [ %i.abc, %.lr.ph.i178.i ], [ %.30, %.lr.ph232.i ] ; 2 uses
  %i.aax = trunc i32 %i.aaw to i8
  store i8 %i.aax, ptr %.36, align 1
  %i.aay = load i32, ptr %0, align 4
  %i.aaz = ashr i32 %i.aay, 8                     ; 3 uses
  store i32 %i.aaz, ptr %0, align 4
  %i.aba = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.abb = add nsw i32 %i.aba, -8                 ; 2 uses
  store i32 %i.abb, ptr %i.dp, align 4
  %i.abc = getelementptr inbounds nuw i8, ptr %.36, i64 1 ; 2 uses
  %i.abd = icmp sgt i32 %i.aba, 15
  br i1 %i.abd, label %.lr.ph.i178.i, label %sdefl_put.exit180.i

sdefl_put.exit180.i:                              ; preds = %.lr.ph.i178.i, %.lr.ph232.i
  %i.abe = phi i32 [ %i.aat, %.lr.ph232.i ], [ %i.aaz, %.lr.ph.i178.i ] ; 2 uses
  %.31 = phi ptr [ %.30, %.lr.ph232.i ], [ %i.abc, %.lr.ph.i178.i ] ; 7 uses
  %i.abf = phi i32 [ %i.aau, %.lr.ph232.i ], [ %i.abb, %.lr.ph.i178.i ] ; 8 uses
  %i.abg = icmp samesign ult i32 %i.aal, 16
  br i1 %i.abg, label %sdefl_put.exit186.i, label %bb.cx

bb.cx:                                            ; preds = %sdefl_put.exit180.i
  %i.abh = load i32, ptr %i.aaj, align 4
  %i.abi = lshr i32 %i.abh, 5
  %i.abj = shl i32 %i.abi, %i.abf
  %i.abk = or i32 %i.abj, %i.abe                  ; 7 uses
  store i32 %i.abk, ptr %0, align 4
  switch i32 %i.aal, label %bb.da [
    i32 16, label %bb.cy
    i32 17, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.abl = add nsw i32 %i.abf, 2                  ; 2 uses
  store i32 %i.abl, ptr %i.dp, align 4
  %i.abm = icmp sgt i32 %i.abf, 5
  br i1 %i.abm, label %.lr.ph.i184.i, label %sdefl_put.exit186.i

.lr.ph.i184.i:                                    ; preds = %bb.cy, %.lr.ph.i184.i
  %i.abn = phi i32 [ %i.abq, %.lr.ph.i184.i ], [ %i.abk, %bb.cy ]
  %.34 = phi ptr [ %i.abt, %.lr.ph.i184.i ], [ %.31, %bb.cy ] ; 2 uses
  %i.abo = trunc i32 %i.abn to i8
  store i8 %i.abo, ptr %.34, align 1
  %i.abp = load i32, ptr %0, align 4
  %i.abq = ashr i32 %i.abp, 8                     ; 3 uses
  store i32 %i.abq, ptr %0, align 4
  %i.abr = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.abs = add nsw i32 %i.abr, -8                 ; 2 uses
  store i32 %i.abs, ptr %i.dp, align 4
  %i.abt = getelementptr inbounds nuw i8, ptr %.34, i64 1 ; 2 uses
  %i.abu = icmp sgt i32 %i.abr, 15
  br i1 %i.abu, label %.lr.ph.i184.i, label %sdefl_put.exit186.i

bb.cz:                                            ; preds = %bb.cx
  %i.abv = add nsw i32 %i.abf, 3                  ; 2 uses
  store i32 %i.abv, ptr %i.dp, align 4
  %i.abw = icmp sgt i32 %i.abf, 4
  br i1 %i.abw, label %.lr.ph.i190.i, label %sdefl_put.exit186.i

.lr.ph.i190.i:                                    ; preds = %bb.cz, %.lr.ph.i190.i
  %i.abx = phi i32 [ %i.aca, %.lr.ph.i190.i ], [ %i.abk, %bb.cz ]
  %.33 = phi ptr [ %i.acd, %.lr.ph.i190.i ], [ %.31, %bb.cz ] ; 2 uses
  %i.aby = trunc i32 %i.abx to i8
  store i8 %i.aby, ptr %.33, align 1
  %i.abz = load i32, ptr %0, align 4
  %i.aca = ashr i32 %i.abz, 8                     ; 3 uses
  store i32 %i.aca, ptr %0, align 4
  %i.acb = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.acc = add nsw i32 %i.acb, -8                 ; 2 uses
  store i32 %i.acc, ptr %i.dp, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %.33, i64 1 ; 2 uses
  %i.ace = icmp sgt i32 %i.acb, 15
  br i1 %i.ace, label %.lr.ph.i190.i, label %sdefl_put.exit186.i

bb.da:                                            ; preds = %bb.cx
  %i.acf = add nsw i32 %i.abf, 7                  ; 2 uses
  store i32 %i.acf, ptr %i.dp, align 4
  %i.acg = icmp sgt i32 %i.abf, 0
  br i1 %i.acg, label %.lr.ph.i196.i, label %sdefl_put.exit186.i

.lr.ph.i196.i:                                    ; preds = %bb.da, %.lr.ph.i196.i
  %i.ach = phi i32 [ %i.ack, %.lr.ph.i196.i ], [ %i.abk, %bb.da ]
  %.35 = phi ptr [ %i.acn, %.lr.ph.i196.i ], [ %.31, %bb.da ] ; 2 uses
  %i.aci = trunc i32 %i.ach to i8
  store i8 %i.aci, ptr %.35, align 1
  %i.acj = load i32, ptr %0, align 4
  %i.ack = ashr i32 %i.acj, 8                     ; 3 uses
  store i32 %i.ack, ptr %0, align 4
  %i.acl = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.acm = add nsw i32 %i.acl, -8                 ; 2 uses
  store i32 %i.acm, ptr %i.dp, align 4
  %i.acn = getelementptr inbounds nuw i8, ptr %.35, i64 1 ; 2 uses
  %i.aco = icmp sgt i32 %i.acl, 15
  br i1 %i.aco, label %.lr.ph.i196.i, label %sdefl_put.exit186.i

sdefl_put.exit186.i:                              ; preds = %.lr.ph.i190.i, %.lr.ph.i184.i, %.lr.ph.i196.i, %bb.da, %bb.cz, %bb.cy, %sdefl_put.exit180.i
  %i.acp = phi i32 [ %i.abe, %sdefl_put.exit180.i ], [ %i.abk, %bb.cz ], [ %i.abk, %bb.da ], [ %i.abq, %.lr.ph.i184.i ], [ %i.abk, %bb.cy ], [ %i.ack, %.lr.ph.i196.i ], [ %i.aca, %.lr.ph.i190.i ] ; 2 uses
  %.32 = phi ptr [ %.31, %sdefl_put.exit180.i ], [ %.31, %bb.cz ], [ %.31, %bb.da ], [ %i.abt, %.lr.ph.i184.i ], [ %.31, %bb.cy ], [ %i.acn, %.lr.ph.i196.i ], [ %i.acd, %.lr.ph.i190.i ] ; 2 uses
  %i.acq = phi i32 [ %i.abf, %sdefl_put.exit180.i ], [ %i.abv, %bb.cz ], [ %i.acf, %bb.da ], [ %i.abs, %.lr.ph.i184.i ], [ %i.abl, %bb.cy ], [ %i.acm, %.lr.ph.i196.i ], [ %i.acc, %.lr.ph.i190.i ] ; 2 uses
  %indvars.iv.next254.i = add nuw nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %exitcond257.not.i = icmp eq i64 %indvars.iv.next254.i, %wide.trip.count256.i
  br i1 %exitcond257.not.i, label %.preheader214.i, label %.lr.ph232.i

.lr.ph236.i:                                      ; preds = %.preheader214.i, %sdefl_match.exit.i
  %i.acr = phi i32 [ %i.aid, %sdefl_match.exit.i ], [ %i.aad, %.preheader214.i ] ; 3 uses
  %.18 = phi ptr [ %.22, %sdefl_match.exit.i ], [ %.15, %.preheader214.i ] ; 4 uses
  %i.acs = phi i32 [ %i.aie, %sdefl_match.exit.i ], [ %i.aae, %.preheader214.i ] ; 4 uses
  %indvars.iv258.i = phi i64 [ %indvars.iv.next259.i, %sdefl_match.exit.i ], [ 0, %.preheader214.i ] ; 2 uses
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv258.i ; 4 uses
  %i.acu = load i32, ptr %i.act, align 4          ; 4 uses
  %i.acv = icmp sgt i32 %i.acu, -1
  br i1 %i.acv, label %.preheader.i, label %bb.db

.preheader.i:                                     ; preds = %.lr.ph236.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 4 ; 2 uses
  %i.acx = load i32, ptr %i.acw, align 4          ; 2 uses
  %i.acy = icmp sgt i32 %i.acx, 0
  br i1 %i.acy, label %.lr.ph234.i, label %sdefl_match.exit.i

.lr.ph234.i:                                      ; preds = %.preheader.i, %sdefl_put.exit204.i
  %i.acz = phi i32 [ %i.ady, %sdefl_put.exit204.i ], [ %i.acr, %.preheader.i ]
  %.27 = phi ptr [ %.28, %sdefl_put.exit204.i ], [ %.18, %.preheader.i ] ; 2 uses
  %i.ada = phi i32 [ %i.adz, %sdefl_put.exit204.i ], [ %i.acx, %.preheader.i ]
  %i.adb = phi i32 [ %i.aea, %sdefl_put.exit204.i ], [ %i.acs, %.preheader.i ] ; 2 uses
  %.0118233.i.a = phi i32 [ %i.aeb, %sdefl_put.exit204.i ], [ 0, %.preheader.i ] ; 2 uses
  %7 = load i32, ptr %i.act, align 4
  %i.adc = add nsw i32 %7, %.0118233.i.a
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds i8, ptr %2, i64 %i.add
  %i.adf = load i8, ptr %i.ade, align 1
  %i.adg = zext i8 %i.adf to i64                  ; 2 uses
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.adg
  %i.adi = load i32, ptr %i.adh, align 4
  %i.adj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.adg
  %i.adk = load i8, ptr %i.adj, align 1
  %i.adl = zext i8 %i.adk to i32
  %i.adm = shl i32 %i.adi, %i.adb
  %i.adn = or i32 %i.acz, %i.adm                  ; 3 uses
  store i32 %i.adn, ptr %0, align 4
  %i.ado = add nsw i32 %i.adb, %i.adl             ; 3 uses
  store i32 %i.ado, ptr %i.dp, align 4
  %i.adp = icmp sgt i32 %i.ado, 7
  br i1 %i.adp, label %.lr.ph.i202.i, label %sdefl_put.exit204.i

.lr.ph.i202.i:                                    ; preds = %.lr.ph234.i, %.lr.ph.i202.i
  %i.adq = phi i32 [ %i.adt, %.lr.ph.i202.i ], [ %i.adn, %.lr.ph234.i ]
  %.29 = phi ptr [ %i.adw, %.lr.ph.i202.i ], [ %.27, %.lr.ph234.i ] ; 2 uses
  %i.adr = trunc i32 %i.adq to i8
  store i8 %i.adr, ptr %.29, align 1
  %i.ads = load i32, ptr %0, align 4
  %i.adt = ashr i32 %i.ads, 8                     ; 3 uses
  store i32 %i.adt, ptr %0, align 4
  %i.adu = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.adv = add nsw i32 %i.adu, -8                 ; 2 uses
  store i32 %i.adv, ptr %i.dp, align 4
  %i.adw = getelementptr inbounds nuw i8, ptr %.29, i64 1 ; 2 uses
  %i.adx = icmp sgt i32 %i.adu, 15
  br i1 %i.adx, label %.lr.ph.i202.i, label %sdefl_put.exit204.loopexit.i

sdefl_put.exit204.loopexit.i:                     ; preds = %.lr.ph.i202.i
  %.pre266.i = load i32, ptr %i.acw, align 4
  br label %sdefl_put.exit204.i

sdefl_put.exit204.i:                              ; preds = %sdefl_put.exit204.loopexit.i, %.lr.ph234.i
  %i.ady = phi i32 [ %i.adt, %sdefl_put.exit204.loopexit.i ], [ %i.adn, %.lr.ph234.i ] ; 2 uses
  %.28 = phi ptr [ %i.adw, %sdefl_put.exit204.loopexit.i ], [ %.27, %.lr.ph234.i ] ; 2 uses
  %i.adz = phi i32 [ %.pre266.i, %sdefl_put.exit204.loopexit.i ], [ %i.ada, %.lr.ph234.i ] ; 2 uses
  %i.aea = phi i32 [ %i.adv, %sdefl_put.exit204.loopexit.i ], [ %i.ado, %.lr.ph234.i ] ; 2 uses
  %i.aeb = add nuw nsw i32 %.0118233.i.a, 1       ; 2 uses
  %i.aec = icmp slt i32 %i.aeb, %i.adz
  br i1 %i.aec, label %.lr.ph234.i, label %sdefl_match.exit.i

bb.db:                                            ; preds = %.lr.ph236.i
  %i.aed = sub nsw i32 0, %i.acu                  ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.act, i64 4
  %i.aef = load i32, ptr %i.aee, align 4          ; 2 uses
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds i8, ptr @sdefl_match_codes.lslot, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1
  %i.aej = zext i8 %i.aei to i64                  ; 3 uses
  %i.aek = add nuw nsw i64 %i.aej, 257            ; 2 uses
  %i.ael = xor i32 %i.acu, -1                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.acu, -1
  %i.aem = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ael, i1 true)
  %i.aen = xor i32 %i.aem, 31
  %i.aeo = shl nuw i32 2, %i.aen
  %i.aep = ashr i32 %i.aeo, 2
  %i.aeq = select i1 %.not.i.i.i.i, i32 0, i32 %i.aep ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %i.aeq, 0
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aer, i1 true)
  %i.aet = trunc nuw nsw i64 %i.aes to i32
  %i.aeu = xor i32 %i.aet, 63
  %.0.i12.i.i.i = select i1 %.not.i11.i.i.i, i32 0, i32 %i.aeu ; 4 uses
  %.not.i.i.i162 = icmp eq i32 %.0.i12.i.i.i, 0
  br i1 %.not.i.i.i162, label %sdefl_match_codes.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aev = shl nuw nsw i32 %.0.i12.i.i.i, 1
  %i.aew = add nuw nsw i32 %i.aev, 2
  %i.aex = zext nneg i32 %.0.i12.i.i.i to i64
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match_codes.dxmax, i64 %i.aex
  %i.aez = load i16, ptr %i.aey, align 2
  %i.afa = sext i16 %i.aez to i32
  %i.afb = icmp sgt i32 %i.aed, %i.afa
  %i.afc = zext i1 %i.afb to i32
  %i.afd = or disjoint i32 %i.aew, %i.afc
  br label %sdefl_match_codes.exit.i.i

sdefl_match_codes.exit.i.i:                       ; preds = %bb.dc, %bb.db
  %i.afe = phi i32 [ %i.afd, %bb.dc ], [ %i.ael, %bb.db ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aek
  %i.afg = load i32, ptr %i.aff, align 4
  %i.afh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aek
  %i.afi = load i8, ptr %i.afh, align 1
  %i.afj = zext i8 %i.afi to i32
  %i.afk = shl i32 %i.afg, %i.acs
  %i.afl = or i32 %i.acr, %i.afk                  ; 3 uses
  store i32 %i.afl, ptr %0, align 4
  %i.afm = add nsw i32 %i.acs, %i.afj             ; 3 uses
  store i32 %i.afm, ptr %i.dp, align 4
  %i.afn = icmp sgt i32 %i.afm, 7
  br i1 %i.afn, label %.lr.ph.i.i.i, label %sdefl_put.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %sdefl_match_codes.exit.i.i, %.lr.ph.i.i.i
  %i.afo = phi i32 [ %i.afr, %.lr.ph.i.i.i ], [ %i.afl, %sdefl_match_codes.exit.i.i ]
  %.26 = phi ptr [ %i.afu, %.lr.ph.i.i.i ], [ %.18, %sdefl_match_codes.exit.i.i ] ; 2 uses
  %i.afp = trunc i32 %i.afo to i8
  store i8 %i.afp, ptr %.26, align 1
  %i.afq = load i32, ptr %0, align 4
  %i.afr = ashr i32 %i.afq, 8                     ; 3 uses
  store i32 %i.afr, ptr %0, align 4
  %i.afs = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.aft = add nsw i32 %i.afs, -8                 ; 2 uses
  store i32 %i.aft, ptr %i.dp, align 4
  %i.afu = getelementptr inbounds nuw i8, ptr %.26, i64 1 ; 2 uses
  %i.afv = icmp sgt i32 %i.afs, 15
  br i1 %i.afv, label %.lr.ph.i.i.i, label %sdefl_put.exit.i.i

sdefl_put.exit.i.i:                               ; preds = %.lr.ph.i.i.i, %sdefl_match_codes.exit.i.i
  %.19 = phi ptr [ %.18, %sdefl_match_codes.exit.i.i ], [ %i.afu, %.lr.ph.i.i.i ] ; 2 uses
  %i.afw = phi i32 [ %i.afl, %sdefl_match_codes.exit.i.i ], [ %i.afr, %.lr.ph.i.i.i ]
  %i.afx = phi i32 [ %i.afm, %sdefl_match_codes.exit.i.i ], [ %i.aft, %.lr.ph.i.i.i ] ; 2 uses
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match.lmin, i64 %i.aej
  %i.afz = load i16, ptr %i.afy, align 2
  %i.aga = sext i16 %i.afz to i32
  %i.agb = sub nsw i32 %i.aef, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr @sdefl_match.lxn, i64 %i.aej
  %i.agd = load i8, ptr %i.agc, align 1
  %i.age = sext i8 %i.agd to i32
  %i.agf = shl i32 %i.agb, %i.afx
  %i.agg = or i32 %i.agf, %i.afw                  ; 3 uses
  store i32 %i.agg, ptr %0, align 4
  %i.agh = add nsw i32 %i.afx, %i.age             ; 3 uses
  store i32 %i.agh, ptr %i.dp, align 4
  %i.agi = icmp sgt i32 %i.agh, 7
  br i1 %i.agi, label %.lr.ph.i17.i.i, label %sdefl_put.exit19.i.i

.lr.ph.i17.i.i:                                   ; preds = %sdefl_put.exit.i.i, %.lr.ph.i17.i.i
  %i.agj = phi i32 [ %i.agm, %.lr.ph.i17.i.i ], [ %i.agg, %sdefl_put.exit.i.i ]
  %.25 = phi ptr [ %i.agp, %.lr.ph.i17.i.i ], [ %.19, %sdefl_put.exit.i.i ] ; 2 uses
  %i.agk = trunc i32 %i.agj to i8
  store i8 %i.agk, ptr %.25, align 1
  %i.agl = load i32, ptr %0, align 4
  %i.agm = ashr i32 %i.agl, 8                     ; 3 uses
  store i32 %i.agm, ptr %0, align 4
  %i.agn = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ago = add nsw i32 %i.agn, -8                 ; 2 uses
  store i32 %i.ago, ptr %i.dp, align 4
  %i.agp = getelementptr inbounds nuw i8, ptr %.25, i64 1 ; 2 uses
  %i.agq = icmp sgt i32 %i.agn, 15
  br i1 %i.agq, label %.lr.ph.i17.i.i, label %sdefl_put.exit19.i.i

sdefl_put.exit19.i.i:                             ; preds = %.lr.ph.i17.i.i, %sdefl_put.exit.i.i
  %.20 = phi ptr [ %.19, %sdefl_put.exit.i.i ], [ %i.agp, %.lr.ph.i17.i.i ] ; 2 uses
  %i.agr = phi i32 [ %i.agg, %sdefl_put.exit.i.i ], [ %i.agm, %.lr.ph.i17.i.i ]
  %i.ags = phi i32 [ %i.agh, %sdefl_put.exit.i.i ], [ %i.ago, %.lr.ph.i17.i.i ] ; 2 uses
  %i.agt = zext nneg i32 %i.afe to i64            ; 3 uses
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.agt
  %i.agv = load i32, ptr %i.agu, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.agt
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = zext i8 %i.agx to i32
  %i.agz = shl i32 %i.agv, %i.ags
  %i.aha = or i32 %i.agz, %i.agr                  ; 3 uses
  store i32 %i.aha, ptr %0, align 4
  %i.ahb = add nsw i32 %i.ags, %i.agy             ; 3 uses
  store i32 %i.ahb, ptr %i.dp, align 4
  %i.ahc = icmp sgt i32 %i.ahb, 7
  br i1 %i.ahc, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

.lr.ph.i22.i.i:                                   ; preds = %sdefl_put.exit19.i.i, %.lr.ph.i22.i.i
  %i.ahd = phi i32 [ %i.ahg, %.lr.ph.i22.i.i ], [ %i.aha, %sdefl_put.exit19.i.i ]
  %.24 = phi ptr [ %i.ahj, %.lr.ph.i22.i.i ], [ %.20, %sdefl_put.exit19.i.i ] ; 2 uses
  %i.ahe = trunc i32 %i.ahd to i8
  store i8 %i.ahe, ptr %.24, align 1
  %i.ahf = load i32, ptr %0, align 4
  %i.ahg = ashr i32 %i.ahf, 8                     ; 3 uses
  store i32 %i.ahg, ptr %0, align 4
  %i.ahh = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.ahi = add nsw i32 %i.ahh, -8                 ; 2 uses
  store i32 %i.ahi, ptr %i.dp, align 4
  %i.ahj = getelementptr inbounds nuw i8, ptr %.24, i64 1 ; 2 uses
  %i.ahk = icmp sgt i32 %i.ahh, 15
  br i1 %i.ahk, label %.lr.ph.i22.i.i, label %sdefl_put.exit24.i.i

sdefl_put.exit24.i.i:                             ; preds = %.lr.ph.i22.i.i, %sdefl_put.exit19.i.i
  %.21 = phi ptr [ %.20, %sdefl_put.exit19.i.i ], [ %i.ahj, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahl = phi i32 [ %i.aha, %sdefl_put.exit19.i.i ], [ %i.ahg, %.lr.ph.i22.i.i ]
  %i.ahm = phi i32 [ %i.ahb, %sdefl_put.exit19.i.i ], [ %i.ahi, %.lr.ph.i22.i.i ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw [2 x i8], ptr @sdefl_match.dmin, i64 %i.agt
  %i.aho = load i16, ptr %i.ahn, align 2
  %i.ahp = sext i16 %i.aho to i32
  %i.ahq = sub nsw i32 %i.aed, %i.ahp
  %i.ahr = shl i32 %i.ahq, %i.ahm
  %i.ahs = or i32 %i.ahr, %i.ahl                  ; 3 uses
  store i32 %i.ahs, ptr %0, align 4
  %i.aht = add nsw i32 %i.ahm, %.0.i12.i.i.i      ; 3 uses
  store i32 %i.aht, ptr %i.dp, align 4
  %i.ahu = icmp sgt i32 %i.aht, 7
  br i1 %i.ahu, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

.lr.ph.i27.i.i:                                   ; preds = %sdefl_put.exit24.i.i, %.lr.ph.i27.i.i
  %i.ahv = phi i32 [ %i.ahy, %.lr.ph.i27.i.i ], [ %i.ahs, %sdefl_put.exit24.i.i ]
  %.23 = phi ptr [ %i.aib, %.lr.ph.i27.i.i ], [ %.21, %sdefl_put.exit24.i.i ] ; 2 uses
  %i.ahw = trunc i32 %i.ahv to i8
  store i8 %i.ahw, ptr %.23, align 1
  %i.ahx = load i32, ptr %0, align 4
  %i.ahy = ashr i32 %i.ahx, 8                     ; 3 uses
  store i32 %i.ahy, ptr %0, align 4
  %i.ahz = load i32, ptr %i.dp, align 4           ; 2 uses
  %i.aia = add nsw i32 %i.ahz, -8                 ; 2 uses
  store i32 %i.aia, ptr %i.dp, align 4
  %i.aib = getelementptr inbounds nuw i8, ptr %.23, i64 1 ; 2 uses
  %i.aic = icmp sgt i32 %i.ahz, 15
  br i1 %i.aic, label %.lr.ph.i27.i.i, label %sdefl_match.exit.i

sdefl_match.exit.i:                               ; preds = %.lr.ph.i27.i.i, %sdefl_put.exit204.i, %sdefl_put.exit24.i.i, %.preheader.i
  %i.aid = phi i32 [ %i.ahs, %sdefl_put.exit24.i.i ], [ %i.acr, %.preheader.i ], [ %i.ady, %sdefl_put.exit204.i ], [ %i.ahy, %.lr.ph.i27.i.i ] ; 2 uses
  %.22 = phi ptr [ %.21, %sdefl_put.exit24.i.i ], [ %.18, %.preheader.i ], [ %.28, %sdefl_put.exit204.i ], [ %i.aib, %.lr.ph.i27.i.i ] ; 2 uses
  %i.aie = phi i32 [ %i.aht, %sdefl_put.exit24.i.i ], [ %i.acs, %.preheader.i ], [ %i.aea, %sdefl_put.exit204.i ], [ %i.aia, %.lr.ph.i27.i.i ] ; 2 uses
  %indvars.iv.next259.i = add nuw nsw i64 %indvars.iv258.i, 1 ; 2 uses
  %i.aif = load i32, ptr %i.t, align 4
  %i.aig = sext i32 %i.aif to i64
  %i.aih = icmp slt i64 %indvars.iv.next259.i, %i.aig
  br i1 %i.aih, label %.lr.ph236.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %sdefl_match.exit.i, %.preheader214.i
  %i.aii = phi i32 [ %i.aad, %.preheader214.i ], [ %i.aid, %sdefl_match.exit.i ]
  %.16 = phi ptr [ %.15, %.preheader214.i ], [ %.22, %sdefl_match.exit.i ] ; 2 uses
  %i.aij = phi i32 [ %i.aae, %.preheader214.i ], [ %i.aie, %sdefl_match.exit.i ] ; 2 uses
  %i.aik = load i32, ptr %i.dq, align 4
  %i.ail = load i8, ptr %i.dk, align 4
  %i.aim = zext i8 %i.ail to i32
  %i.ain = shl i32 %i.aik, %i.aij
  %i.aio = or i32 %i.aii, %i.ain                  ; 2 uses
  store i32 %i.aio, ptr %0, align 4
  %i.aip = add nsw i32 %i.aij, %i.aim             ; 2 uses
  store i32 %i.aip, ptr %i.dp, align 4
  %i.aiq = icmp sgt i32 %i.aip, 7
  br i1 %i.aiq, label %.lr.ph.i209.i, label %sdefl_flush.exit

.lr.ph.i209.i:                                    ; preds = %._crit_edge.i, %.lr.ph.i209.i
  %i.air = phi i32 [ %i.aiu, %.lr.ph.i209.i ], [ %i.aio, %._crit_edge.i ]
  %.17 = phi ptr [ %i.aix, %.lr.ph.i209.i ], [ %.16, %._crit_edge.i ] ; 2 uses
  %i.ais = trunc i32 %i.air to i8
  store i8 %i.ais, ptr %.17, align 1
  %i.ait = load i32, ptr %0, align 4
  %i.aiu = ashr i32 %i.ait, 8                     ; 2 uses
end_hunk_0
