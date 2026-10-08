Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/xtrans_demosaic?download=true
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6LibRaw18xtrans_interpolateEi:bb.a
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !117
  %i.wg = sext i16 %i.wf to i32                   ; 2 uses
  %i.wh = icmp slt i32 %i.kg, %i.wg
  %i.wi = icmp sgt i32 %i.kj, %i.wg
  %or.cond1769.a = select i1 %i.wh, i1 true, i1 %i.wi
  br i1 %or.cond1769.a, label %bb.ay, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ql, i64 60
  %i.wk = load i16, ptr %i.wj, align 4, !tbaa !117
  %i.wl = sext i16 %i.wk to i32                   ; 2 uses
  %i.wm = icmp slt i32 %i.kg, %i.wl
  %i.wn = icmp sgt i32 %i.kj, %i.wl
  %or.cond1770.a = select i1 %i.wm, i1 true, i1 %i.wn
  br i1 %or.cond1770.a, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ql, i64 62
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !117
  %i.wq = sext i16 %i.wp to i32                   ; 2 uses
  %i.wr = icmp slt i32 %i.kg, %i.wq
  %i.ws = icmp sgt i32 %i.kj, %i.wq
  %or.cond1771.a = select i1 %i.wr, i1 true, i1 %i.ws
  br i1 %or.cond1771.a, label %bb.ay, label %.preheader1149.2

.preheader1149.2:                                 ; preds = %bb.ai
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ql, i64 64
  %i.wu = load i16, ptr %i.wt, align 16, !tbaa !117
  %i.wv = sext i16 %i.wu to i32                   ; 2 uses
  %i.ww = icmp slt i32 %i.kg, %i.wv
  %i.wx = icmp sgt i32 %i.kj, %i.wv
  %or.cond1772.a = select i1 %i.ww, i1 true, i1 %i.wx
  br i1 %or.cond1772.a, label %bb.ay, label %bb.aj

bb.aj:                                            ; preds = %.preheader1149.2
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ql, i64 66
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !117
  %i.xa = sext i16 %i.wz to i32                   ; 2 uses
  %i.xb = icmp slt i32 %i.kg, %i.xa
  %i.xc = icmp sgt i32 %i.kj, %i.xa
  %or.cond1773.a = select i1 %i.xb, i1 true, i1 %i.xc
  br i1 %or.cond1773.a, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ql, i64 68
  %i.xe = load i16, ptr %i.xd, align 4, !tbaa !117
  %i.xf = sext i16 %i.xe to i32                   ; 2 uses
  %i.xg = icmp slt i32 %i.kg, %i.xf
  %i.xh = icmp sgt i32 %i.kj, %i.xf
  %or.cond1774.a = select i1 %i.xg, i1 true, i1 %i.xh
  br i1 %or.cond1774.a, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ql, i64 70
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !117
  %i.xk = sext i16 %i.xj to i32                   ; 2 uses
  %i.xl = icmp slt i32 %i.kg, %i.xk
  %i.xm = icmp sgt i32 %i.kj, %i.xk
  %or.cond1775.a = select i1 %i.xl, i1 true, i1 %i.xm
  br i1 %or.cond1775.a, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ql, i64 72
  %i.xo = load i16, ptr %i.xn, align 8, !tbaa !117
  %i.xp = sext i16 %i.xo to i32                   ; 2 uses
  %i.xq = icmp slt i32 %i.kg, %i.xp
  %i.xr = icmp sgt i32 %i.kj, %i.xp
  %or.cond1776.a = select i1 %i.xq, i1 true, i1 %i.xr
  br i1 %or.cond1776.a, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ql, i64 74
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !117
  %i.xu = sext i16 %i.xt to i32                   ; 2 uses
  %i.xv = icmp slt i32 %i.kg, %i.xu
  %i.xw = icmp sgt i32 %i.kj, %i.xu
  %or.cond1777.a = select i1 %i.xv, i1 true, i1 %i.xw
  br i1 %or.cond1777.a, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ql, i64 76
  %i.xy = load i16, ptr %i.xx, align 4, !tbaa !117
  %i.xz = sext i16 %i.xy to i32                   ; 2 uses
  %i.ya = icmp slt i32 %i.kg, %i.xz
  %i.yb = icmp sgt i32 %i.kj, %i.xz
  %or.cond1778.a = select i1 %i.ya, i1 true, i1 %i.yb
  br i1 %or.cond1778.a, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ql, i64 78
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !117
  %i.ye = sext i16 %i.yd to i32                   ; 2 uses
  %i.yf = icmp slt i32 %i.kg, %i.ye
  %i.yg = icmp sgt i32 %i.kj, %i.ye
  %or.cond1779.a = select i1 %i.yf, i1 true, i1 %i.yg
  br i1 %or.cond1779.a, label %bb.ay, label %.preheader1148.1.2

.preheader1148.1.2:                               ; preds = %bb.ap
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ql, i64 80
  %i.yi = load i16, ptr %i.yh, align 16, !tbaa !117
  %i.yj = sext i16 %i.yi to i32                   ; 2 uses
  %i.yk = icmp slt i32 %i.kg, %i.yj
  %i.yl = icmp sgt i32 %i.kj, %i.yj
  %or.cond1780.a = select i1 %i.yk, i1 true, i1 %i.yl
  br i1 %or.cond1780.a, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.preheader1148.1.2
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ql, i64 82
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !117
  %i.yo = sext i16 %i.yn to i32                   ; 2 uses
  %i.yp = icmp slt i32 %i.kg, %i.yo
  %i.yq = icmp sgt i32 %i.kj, %i.yo
  %or.cond1781.a = select i1 %i.yp, i1 true, i1 %i.yq
  br i1 %or.cond1781.a, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ql, i64 84
  %i.ys = load i16, ptr %i.yr, align 4, !tbaa !117
  %i.yt = sext i16 %i.ys to i32                   ; 2 uses
  %i.yu = icmp slt i32 %i.kg, %i.yt
  %i.yv = icmp sgt i32 %i.kj, %i.yt
  %or.cond1782.a = select i1 %i.yu, i1 true, i1 %i.yv
  br i1 %or.cond1782.a, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ql, i64 86
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !117
  %i.yy = sext i16 %i.yx to i32                   ; 2 uses
  %i.yz = icmp slt i32 %i.kg, %i.yy
  %i.za = icmp sgt i32 %i.kj, %i.yy
  %or.cond1783.a = select i1 %i.yz, i1 true, i1 %i.za
  br i1 %or.cond1783.a, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.zb = getelementptr inbounds nuw i8, ptr %i.ql, i64 88
  %i.zc = load i16, ptr %i.zb, align 8, !tbaa !117
  %i.zd = sext i16 %i.zc to i32                   ; 2 uses
  %i.ze = icmp slt i32 %i.kg, %i.zd
  %i.zf = icmp sgt i32 %i.kj, %i.zd
  %or.cond1784.a = select i1 %i.ze, i1 true, i1 %i.zf
  br i1 %or.cond1784.a, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ql, i64 90
  %i.zh = load i16, ptr %i.zg, align 2, !tbaa !117
  %i.zi = sext i16 %i.zh to i32                   ; 2 uses
  %i.zj = icmp slt i32 %i.kg, %i.zi
  %i.zk = icmp sgt i32 %i.kj, %i.zi
  %or.cond1785.a = select i1 %i.zj, i1 true, i1 %i.zk
  br i1 %or.cond1785.a, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ql, i64 92
  %i.zm = load i16, ptr %i.zl, align 4, !tbaa !117
  %i.zn = sext i16 %i.zm to i32                   ; 2 uses
  %i.zo = icmp slt i32 %i.kg, %i.zn
  %i.zp = icmp sgt i32 %i.kj, %i.zn
  %or.cond1786.a = select i1 %i.zo, i1 true, i1 %i.zp
  br i1 %or.cond1786.a, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ql, i64 94
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !117
  %i.zs = sext i16 %i.zr to i32                   ; 2 uses
  %i.zt = icmp slt i32 %i.kg, %i.zs
  %i.zu = icmp sgt i32 %i.kj, %i.zs
  %or.cond1787 = select i1 %i.zt, i1 true, i1 %i.zu
  br i1 %or.cond1787, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next1408 = add nuw nsw i64 %indvars.iv1407, 1 ; 2 uses
  %exitcond1410.not = icmp eq i64 %indvars.iv.next1408, 3
  br i1 %exitcond1410.not, label %.preheader1147, label %.preheader1150, !llvm.loop !14

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %.preheader1148.1.2, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.preheader1149.2, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.preheader1148.1.1, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader1149.1, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.preheader1148.1, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.preheader1150
  %i.zv = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.zv, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.zv, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

.preheader1146:                                   ; preds = %.preheader1146.lr.ph, %._crit_edge
  %i.zw = phi i16 [ %i.qq, %.preheader1146.lr.ph ], [ %i.adp, %._crit_edge ]
  %i.zx = phi i16 [ %i.kc, %.preheader1146.lr.ph ], [ %i.adq, %._crit_edge ] ; 3 uses
  %.09281213 = phi i32 [ 2, %.preheader1146.lr.ph ], [ %i.adr, %._crit_edge ] ; 2 uses
  %.09321212 = phi i32 [ 0, %.preheader1146.lr.ph ], [ %.1933.lcssa, %._crit_edge ] ; 2 uses
  %i.zy = icmp ugt i16 %i.zx, 4
  br i1 %i.zy, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1146
  %i.zz = zext i16 %i.zx to i32
  br label %.lr.ph

.preheader1143:                                   ; preds = %._crit_edge, %.preheader1147
  %i.aaa = phi i16 [ %i.kc, %.preheader1147 ], [ %i.adq, %._crit_edge ]
  %.lcssa1164 = phi i32 [ %i.qr, %.preheader1147 ], [ %i.ads, %._crit_edge ]
  %.lcssa1164.fr = freeze i32 %.lcssa1164         ; 3 uses
  %or.cond10661217 = icmp samesign ugt i32 %.lcssa1164.fr, 6
  br i1 %or.cond10661217, label %.preheader1142.lr.ph, label %.critedge

.preheader1142.lr.ph:                             ; preds = %.preheader1143
  %i.aab = zext i16 %i.aaa to i32                 ; 3 uses
  %i.aac = mul nuw nsw i32 %.lcssa1164.fr, %i.aab ; 24 uses
  %i.aad = tail call i32 @llvm.umax.i32(i32 %i.aab, i32 6)
  %smax = add nsw i32 %i.aad, -3                  ; 6 uses
  %2 = tail call i32 @llvm.smin.i32(i32 %.lcssa1164.fr, i32 12)
  %exitcond1417.not = icmp eq i32 %smax, 3
  %exitcond1417.1.not = icmp eq i32 %smax, 4
  %exitcond1417.2.not = icmp eq i32 %smax, 5
  %exitcond1417.3.not = icmp eq i32 %smax, 6
  %exitcond1417.4.not = icmp eq i32 %smax, 7
  %exitcond1417.5.not = icmp eq i32 %smax, 8
  %i.aae = add nsw i32 %2, -4
  br label %.preheader1142

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bf
  %i.aaf = phi i32 [ %i.adm, %bb.bf ], [ %i.zz, %.lr.ph.preheader ]
  %.09131210 = phi i16 [ %.5918, %bb.bf ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.09191209 = phi i16 [ %.5924, %bb.bf ], [ -1, %.lr.ph.preheader ] ; 2 uses
  %.09251208 = phi i32 [ %i.adk, %bb.bf ], [ 2, %.lr.ph.preheader ] ; 8 uses
  %.19291207 = phi i32 [ %.3931, %bb.bf ], [ %.09281213, %.lr.ph.preheader ] ; 12 uses
  %.19331206 = phi i32 [ %.3935, %bb.bf ], [ %.09321212, %.lr.ph.preheader ] ; 7 uses
  %i.aag = insertelement <2 x i32> poison, i32 %.09251208, i64 0
  %i.aah = insertelement <2 x i32> %i.aag, i32 %.19291207, i64 1
  %i.aai = add nsw <2 x i32> %i.aah, splat (i32 6)
  %i.aaj = srem <2 x i32> %i.aai, splat (i32 6)   ; 2 uses
  %i.aak = extractelement <2 x i32> %i.aaj, i64 1
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [6 x i8], ptr %i.n, i64 %i.aal
  %i.aan = extractelement <2 x i32> %i.aaj, i64 0
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds i8, ptr %i.aam, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !113
  %i.aar = icmp eq i8 %i.aaq, 1
  br i1 %i.aar, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  %i.aas = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.aat = mul nsw i32 %i.aaf, %.19291207
  %i.aau = sext i32 %i.aat to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aas, i64 %i.aau
  %i.aaw = sext i32 %.09251208 to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %i.aaw ; 8 uses
  %.not1037 = icmp eq i16 %.09131210, 0
  br i1 %.not1037, label %.preheader1144.preheader, label %.loopexit1145

.preheader1144.preheader:                         ; preds = %bb.az
  %i.aay = srem i32 %.19291207, 3
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = getelementptr inbounds [96 x i8], ptr %i.b, i64 %i.aaz
  %i.abb = srem i32 %.09251208, 3
  %i.abc = sext i32 %i.abb to i64
  %i.abd = getelementptr inbounds [32 x i8], ptr %i.aba, i64 %i.abc ; 6 uses
  %i.abe = load i16, ptr %i.abd, align 16, !tbaa !117
  %i.abf = sext i16 %i.abe to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 2
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !117 ; 2 uses
  %spec.select = tail call i16 @llvm.umin.i16(i16 %.09191209, i16 %i.abi)
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abd, i64 2
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !117
  %i.abl = sext i16 %i.abk to i64
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abl
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 2
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !117 ; 2 uses
  %spec.select.1 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %i.abo)
  %.2915.1 = tail call i16 @llvm.umax.i16(i16 %i.abi, i16 %i.abo)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  %i.abq = load i16, ptr %i.abp, align 4, !tbaa !117
  %i.abr = sext i16 %i.abq to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abr
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 2
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !117 ; 2 uses
  %spec.select.2 = tail call i16 @llvm.umin.i16(i16 %spec.select.1, i16 %i.abu)
  %.2915.2 = tail call i16 @llvm.umax.i16(i16 %.2915.1, i16 %i.abu)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abd, i64 6
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !117
  %i.abx = sext i16 %i.abw to i64
  %i.aby = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.abx
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !117 ; 2 uses
  %spec.select.3 = tail call i16 @llvm.umin.i16(i16 %spec.select.2, i16 %i.aca)
  %.2915.3 = tail call i16 @llvm.umax.i16(i16 %.2915.2, i16 %i.aca)
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.acc = load i16, ptr %i.acb, align 8, !tbaa !117
  %i.acd = sext i16 %i.acc to i64
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 2
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !117 ; 2 uses
  %spec.select.4 = tail call i16 @llvm.umin.i16(i16 %spec.select.3, i16 %i.acg)
  %.2915.4 = tail call i16 @llvm.umax.i16(i16 %.2915.3, i16 %i.acg)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abd, i64 10
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !117
  %i.acj = sext i16 %i.aci to i64
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 2
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !117 ; 2 uses
  %spec.select.5 = tail call i16 @llvm.umin.i16(i16 %spec.select.4, i16 %i.acm)
  %.2915.5 = tail call i16 @llvm.umax.i16(i16 %.2915.4, i16 %i.acm)
  br label %.loopexit1145

.loopexit1145:                                    ; preds = %.preheader1144.preheader, %bb.az
  %.3922 = phi i16 [ %.09191209, %bb.az ], [ %spec.select.5, %.preheader1144.preheader ] ; 4 uses
  %.3916 = phi i16 [ %.09131210, %bb.az ], [ %.2915.5, %.preheader1144.preheader ] ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aax, i64 2
  store i16 %.3922, ptr %i.acn, align 2, !tbaa !117
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aax, i64 6
  store i16 %.3916, ptr %i.aco, align 2, !tbaa !117
  %i.acp = sub nsw i32 %.19291207, %i.qt
  %i.acq = srem i32 %i.acp, 3
  switch i32 %i.acq, label %bb.bf [
    i32 1, label %bb.ba
    i32 2, label %bb.bc
  ]

bb.ba:                                            ; preds = %.loopexit1145
  %i.acr = load i16, ptr %i.i, align 4, !tbaa !112
  %i.acs = zext i16 %i.acr to i32
  %i.act = add nsw i32 %i.acs, -3
  %i.acu = icmp slt i32 %.19291207, %i.act
  br i1 %i.acu, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.acv = add nsw i32 %.19291207, 1
  %i.acw = add nsw i32 %.09251208, -1
  br label %bb.bf

bb.bc:                                            ; preds = %.loopexit1145
  %i.acx = add nsw i32 %.09251208, 2              ; 3 uses
  %i.acy = load i16, ptr %i.f, align 2, !tbaa !111
  %i.acz = zext i16 %i.acy to i32                 ; 2 uses
  %i.ada = add nsw i32 %i.acz, -3
  %i.adb = icmp slt i32 %i.acx, %i.ada
  %i.adc = icmp sgt i32 %.19291207, 2
  %or.cond19 = and i1 %i.adb, %i.adc
  br i1 %or.cond19, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.add = add nsw i32 %.19291207, -1
  %i.ade = add nsw i32 %.19331206, 1
  %i.adf = load i16, ptr %i.i, align 4, !tbaa !112
  %i.adg = zext i16 %i.adf to i32
  %i.adh = mul nuw nsw i32 %i.adg, %i.acz
  %i.adi = icmp sgt i32 %.19331206, %i.adh
  br i1 %i.adi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.adj = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.adj, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.adj, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bf:                                            ; preds = %.loopexit1145, %bb.bb, %bb.ba, %bb.bd, %bb.bc, %.lr.ph
  %.3935 = phi i32 [ %.19331206, %.lr.ph ], [ %.19331206, %.loopexit1145 ], [ %.19331206, %bb.bb ], [ %.19331206, %bb.ba ], [ %i.ade, %bb.bd ], [ %.19331206, %bb.bc ] ; 2 uses
  %.3931 = phi i32 [ %.19291207, %.lr.ph ], [ %.19291207, %.loopexit1145 ], [ %i.acv, %bb.bb ], [ %.19291207, %bb.ba ], [ %i.add, %bb.bd ], [ %.19291207, %bb.bc ] ; 2 uses
  %.2927 = phi i32 [ %.09251208, %.lr.ph ], [ %.09251208, %.loopexit1145 ], [ %i.acw, %bb.bb ], [ %.09251208, %bb.ba ], [ %i.acx, %bb.bd ], [ %i.acx, %bb.bc ]
  %.5924 = phi i16 [ -1, %.lr.ph ], [ %.3922, %.loopexit1145 ], [ %.3922, %bb.bb ], [ %.3922, %bb.ba ], [ -1, %bb.bd ], [ -1, %bb.bc ]
  %.5918 = phi i16 [ 0, %.lr.ph ], [ %.3916, %.loopexit1145 ], [ %.3916, %bb.bb ], [ %.3916, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %i.adk = add nsw i32 %.2927, 1                  ; 2 uses
  %i.adl = load i16, ptr %i.f, align 2, !tbaa !111 ; 2 uses
  %i.adm = zext i16 %i.adl to i32                 ; 2 uses
  %i.adn = add nsw i32 %i.adm, -2
  %i.ado = icmp slt i32 %i.adk, %i.adn
  br i1 %i.ado, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %bb.bf
  %.pre = load i16, ptr %i.i, align 4, !tbaa !112
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1146
  %i.adp = phi i16 [ %i.zw, %.preheader1146 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.adq = phi i16 [ %i.zx, %.preheader1146 ], [ %i.adl, %._crit_edge.loopexit ] ; 2 uses
  %.1933.lcssa = phi i32 [ %.09321212, %.preheader1146 ], [ %.3935, %._crit_edge.loopexit ]
  %.1929.lcssa = phi i32 [ %.09281213, %.preheader1146 ], [ %.3931, %._crit_edge.loopexit ]
  %i.adr = add nsw i32 %.1929.lcssa, 1            ; 2 uses
  %i.ads = zext i16 %i.adp to i32                 ; 2 uses
  %i.adt = add nsw i32 %i.ads, -2
  %i.adu = icmp slt i32 %i.adr, %i.adt
  br i1 %i.adu, label %.preheader1146, label %.preheader1143, !llvm.loop !16

.preheader1142:                                   ; preds = %.preheader1142.lr.ph, %.critedge21
  %.09111218 = phi i32 [ 3, %.preheader1142.lr.ph ], [ %i.afk, %.critedge21 ] ; 5 uses
  %i.adv = add nuw nsw i32 %.09111218, 6
  %i.adw = urem i32 %i.adv, 6
  %i.adx = zext nneg i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.adx ; 6 uses
  %i.adz = urem i32 %.09111218, 3
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.aea ; 12 uses
  %i.aec = mul nuw nsw i32 %.09111218, %i.aab     ; 6 uses
  br i1 %exitcond1417.not, label %.critedge21, label %bb.bg

.critedge:                                        ; preds = %.critedge21, %.preheader1143
  %i.aed = select i1 %i.jz, i64 24641536, i64 13107200
  %i.aee = tail call noundef ptr @_ZN6LibRaw18malloc_omp_buffersEim(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 1, i64 noundef %i.aed) ; 2 uses
  %i.aef = load i16, ptr %i.i, align 4, !tbaa !112 ; 2 uses
  %i.aeg = icmp ugt i16 %i.aef, 22
  br i1 %i.aeg, label %.lr.ph1356, label %._crit_edge1357

.lr.ph1356:                                       ; preds = %.critedge
  %i.aeh = select i1 %i.jz, i64 12582912, i64 6291456
  %i.aei = select i1 %i.jz, i64 22544384, i64 12058624
  %i.aej = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.ael = zext nneg i16 %.3943 to i32
  %i.aem = icmp sgt i32 %1, 0
  %i.aen = zext nneg i16 %.3947 to i32
  %i.aeo = shl nuw nsw i32 1048576, %i.ka
  %i.aep = zext nneg i32 %i.aeo to i64
  %i.aeq = zext i16 %.3943 to i64                 ; 4 uses
  %i.aer = zext i16 %.3947 to i64
  %i.aes = tail call i32 @llvm.smax.i32(i32 %i.kb, i32 5)
  %smax1565 = add nsw i32 %i.aes, -4
  %i.aet = zext i16 %.3947 to i64
  %i.aeu = zext i16 %.3943 to i64
  %.pre1600 = load i16, ptr %i.f, align 2, !tbaa !111
  %i.aev = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.kb to i64   ; 7 uses
  %wide.trip.count1566 = zext i32 %smax1565 to i64 ; 2 uses
  %i.aex = add nuw nsw i64 %wide.trip.count, 7
  %gep1254.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %invariant.gep1248.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %gep1254.1.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %invariant.gep1248.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %invariant.gep1248.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %gep1254.1.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %invariant.gep1248.4 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %invariant.gep1248.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 4 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.afc = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.afd = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %gep1254.1.5 = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %xtraiter = and i64 %wide.trip.count, 4         ; 2 uses
  %unroll_iter = and i64 %wide.trip.count, 8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1877 = icmp ne i64 %xtraiter, 0
  %trip.count.minus.1 = add nsw i64 %wide.trip.count1566, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %wide.trip.count1566, 3
  %n.vec = and i64 %n.rnd.up, 8589934588
  %i.afe = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afg = icmp eq i64 %n.vec, 4
  %i.afh = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6> ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %xtraiter1880 = and i64 %i.aex, 7
  br label %bb.cm

.critedge21:                                      ; preds = %bb.ch, %bb.cl, %.loopexit1141.4, %.loopexit1141.3, %.loopexit1141.2, %.loopexit1141.1, %.loopexit1141, %.preheader1142
  %i.afk = add nuw nsw i32 %.09111218, 1
  %exitcond1424.not = icmp eq i32 %.09111218, %i.aae
  br i1 %exitcond1424.not, label %.critedge, label %.preheader1142, !llvm.loop !17

bb.bg:                                            ; preds = %.preheader1142
  %i.afl = getelementptr inbounds nuw i8, ptr %i.ady, i64 3
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !113
  %i.afn = icmp eq i8 %i.afm, 1
  br i1 %i.afn, label %.loopexit1141, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.afo = add nuw i32 %i.aec, 3                  ; 4 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.afq = load i16, ptr %i.afp, align 8, !tbaa !117
  %i.afr = sext i16 %i.afq to i32                 ; 2 uses
  %i.afs = mul nsw i32 %i.afr, 3
  %i.aft = add i32 %i.afo, %i.afs                 ; 2 uses
  %i.afu = icmp sgt i32 %i.aft, -1
  %.not1035 = icmp slt i32 %i.aft, %i.aac
  %or.cond1040 = select i1 %i.afu, i1 %.not1035, i1 false
  br i1 %or.cond1040, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.bl
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aeb, i64 10
  %i.afw = load i16, ptr %i.afv, align 2, !tbaa !117
  %i.afx = sext i16 %i.afw to i32                 ; 2 uses
  %i.afy = mul nsw i32 %i.afx, 3
  %i.afz = add i32 %i.afo, %i.afy                 ; 2 uses
  %i.aga = icmp sgt i32 %i.afz, -1
  %.not1035.1 = icmp slt i32 %i.afz, %i.aac
  %or.cond1040.1 = select i1 %i.aga, i1 %.not1035.1, i1 false
  br i1 %or.cond1040.1, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.agb = mul nsw i32 %i.afx, -3
  %i.agc = add i32 %i.afo, %i.agb                 ; 2 uses
  %i.agd = icmp sgt i32 %i.agc, -1
  %.not1036.1 = icmp slt i32 %i.agc, %i.aac
  %or.cond1041.1 = select i1 %i.agd, i1 %.not1036.1, i1 false
  br i1 %or.cond1041.1, label %.loopexit1141, label %bb.bm

bb.bk:                                            ; preds = %bb.ck, %bb.ci, %bb.cf, %bb.cd, %bb.ca, %bb.by, %bb.bv, %bb.bt, %bb.bq, %bb.bo, %bb.bi, %bb.bh
  %i.age = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.age, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.age, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

bb.bl:                                            ; preds = %bb.bh
  %i.agf = mul nsw i32 %i.afr, -3
  %i.agg = add i32 %i.afo, %i.agf                 ; 2 uses
  %i.agh = icmp sgt i32 %i.agg, -1
  %.not1036 = icmp slt i32 %i.agg, %i.aac
  %or.cond1041 = select i1 %i.agh, i1 %.not1036, i1 false
  br i1 %or.cond1041, label %bb.bi, label %bb.bm

bb.bm:                                            ; preds = %bb.cl, %bb.cj, %bb.cg, %bb.ce, %bb.cb, %bb.bz, %bb.bw, %bb.bu, %bb.br, %bb.bp, %bb.bj, %bb.bl
  %i.agi = tail call ptr @__cxa_allocate_exception(i64 4) #9 ; 2 uses
  store i32 5, ptr %i.agi, align 16, !tbaa !116
  tail call void @__cxa_throw(ptr nonnull %i.agi, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #10
  unreachable

.loopexit1141:                                    ; preds = %bb.bj, %bb.bg
  br i1 %exitcond1417.1.not, label %.critedge21, label %bb.bn

bb.bn:                                            ; preds = %.loopexit1141
  %i.agj = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.agk = load i8, ptr %i.agj, align 2, !tbaa !113
  %i.agl = icmp eq i8 %i.agk, 1
  br i1 %i.agl, label %.loopexit1141.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.agm = add nuw i32 %i.aec, 4                  ; 4 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.ago = load i16, ptr %i.agn, align 8, !tbaa !117
  %i.agp = sext i16 %i.ago to i32                 ; 2 uses
  %i.agq = mul nsw i32 %i.agp, 3
  %i.agr = add i32 %i.agm, %i.agq                 ; 2 uses
  %i.ags = icmp sgt i32 %i.agr, -1
  %.not1035.11419 = icmp slt i32 %i.agr, %i.aac
  %or.cond1040.11420 = select i1 %i.ags, i1 %.not1035.11419, i1 false
  br i1 %or.cond1040.11420, label %bb.bp, label %bb.bk

bb.bp:                                            ; preds = %bb.bo
  %i.agt = mul nsw i32 %i.agp, -3
  %i.agu = add i32 %i.agm, %i.agt                 ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, -1
  %.not1036.11421 = icmp slt i32 %i.agu, %i.aac
  %or.cond1041.11422 = select i1 %i.agv, i1 %.not1036.11421, i1 false
  br i1 %or.cond1041.11422, label %bb.bq, label %bb.bm

bb.bq:                                            ; preds = %bb.bp
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aeb, i64 42
  %i.agx = load i16, ptr %i.agw, align 2, !tbaa !117
  %i.agy = sext i16 %i.agx to i32                 ; 2 uses
  %i.agz = mul nsw i32 %i.agy, 3
  %i.aha = add i32 %i.agm, %i.agz                 ; 2 uses
  %i.ahb = icmp sgt i32 %i.aha, -1
  %.not1035.1.1 = icmp slt i32 %i.aha, %i.aac
  %or.cond1040.1.1 = select i1 %i.ahb, i1 %.not1035.1.1, i1 false
  br i1 %or.cond1040.1.1, label %bb.br, label %bb.bk

bb.br:                                            ; preds = %bb.bq
  %i.ahc = mul nsw i32 %i.agy, -3
  %i.ahd = add i32 %i.agm, %i.ahc                 ; 2 uses
  %i.ahe = icmp sgt i32 %i.ahd, -1
  %.not1036.1.1 = icmp slt i32 %i.ahd, %i.aac
  %or.cond1041.1.1 = select i1 %i.ahe, i1 %.not1036.1.1, i1 false
  br i1 %or.cond1041.1.1, label %.loopexit1141.1, label %bb.bm

.loopexit1141.1:                                  ; preds = %bb.br, %bb.bn
  br i1 %exitcond1417.2.not, label %.critedge21, label %bb.bs

bb.bs:                                            ; preds = %.loopexit1141.1
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ady, i64 5
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !113
  %i.ahh = icmp eq i8 %i.ahg, 1
  br i1 %i.ahh, label %.loopexit1141.2, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ahi = add nuw i32 %i.aec, 5                  ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aeb, i64 72
  %i.ahk = load i16, ptr %i.ahj, align 8, !tbaa !117
  %i.ahl = sext i16 %i.ahk to i32                 ; 2 uses
  %i.ahm = mul nsw i32 %i.ahl, 3
  %i.ahn = add i32 %i.ahi, %i.ahm                 ; 2 uses
  %i.aho = icmp sgt i32 %i.ahn, -1
  %.not1035.2 = icmp slt i32 %i.ahn, %i.aac
  %or.cond1040.2 = select i1 %i.aho, i1 %.not1035.2, i1 false
  br i1 %or.cond1040.2, label %bb.bu, label %bb.bk

bb.bu:                                            ; preds = %bb.bt
  %i.ahp = mul nsw i32 %i.ahl, -3
  %i.ahq = add i32 %i.ahi, %i.ahp                 ; 2 uses
  %i.ahr = icmp sgt i32 %i.ahq, -1
  %.not1036.2 = icmp slt i32 %i.ahq, %i.aac
  %or.cond1041.2 = select i1 %i.ahr, i1 %.not1036.2, i1 false
  br i1 %or.cond1041.2, label %bb.bv, label %bb.bm

bb.bv:                                            ; preds = %bb.bu
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aeb, i64 74
  %i.aht = load i16, ptr %i.ahs, align 2, !tbaa !117
  %i.ahu = sext i16 %i.aht to i32                 ; 2 uses
  %i.ahv = mul nsw i32 %i.ahu, 3
  %i.ahw = add i32 %i.ahi, %i.ahv                 ; 2 uses
  %i.ahx = icmp sgt i32 %i.ahw, -1
  %.not1035.1.2 = icmp slt i32 %i.ahw, %i.aac
  %or.cond1040.1.2 = select i1 %i.ahx, i1 %.not1035.1.2, i1 false
  br i1 %or.cond1040.1.2, label %bb.bw, label %bb.bk

bb.bw:                                            ; preds = %bb.bv
  %i.ahy = mul nsw i32 %i.ahu, -3
  %i.ahz = add i32 %i.ahi, %i.ahy                 ; 2 uses
  %i.aia = icmp sgt i32 %i.ahz, -1
  %.not1036.1.2 = icmp slt i32 %i.ahz, %i.aac
  %or.cond1041.1.2 = select i1 %i.aia, i1 %.not1036.1.2, i1 false
  br i1 %or.cond1041.1.2, label %.loopexit1141.2, label %bb.bm

.loopexit1141.2:                                  ; preds = %bb.bw, %bb.bs
  br i1 %exitcond1417.3.not, label %.critedge21, label %bb.bx

bb.bx:                                            ; preds = %.loopexit1141.2
  %i.aib = load i8, ptr %i.ady, align 2, !tbaa !113
  %i.aic = icmp eq i8 %i.aib, 1
  br i1 %i.aic, label %.loopexit1141.3, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aid = add nuw i32 %i.aec, 6                  ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aif = load i16, ptr %i.aie, align 8, !tbaa !117
  %i.aig = sext i16 %i.aif to i32                 ; 2 uses
  %i.aih = mul nsw i32 %i.aig, 3
  %i.aii = add i32 %i.aid, %i.aih                 ; 2 uses
  %i.aij = icmp sgt i32 %i.aii, -1
  %.not1035.3 = icmp slt i32 %i.aii, %i.aac
  %or.cond1040.3 = select i1 %i.aij, i1 %.not1035.3, i1 false
  br i1 %or.cond1040.3, label %bb.bz, label %bb.bk

bb.bz:                                            ; preds = %bb.by
  %i.aik = mul nsw i32 %i.aig, -3
  %i.ail = add i32 %i.aid, %i.aik                 ; 2 uses
  %i.aim = icmp sgt i32 %i.ail, -1
  %.not1036.3 = icmp slt i32 %i.ail, %i.aac
  %or.cond1041.3 = select i1 %i.aim, i1 %.not1036.3, i1 false
  br i1 %or.cond1041.3, label %bb.ca, label %bb.bm

bb.ca:                                            ; preds = %bb.bz
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aeb, i64 10
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !117
  %i.aip = sext i16 %i.aio to i32                 ; 2 uses
  %i.aiq = mul nsw i32 %i.aip, 3
  %i.air = add i32 %i.aid, %i.aiq                 ; 2 uses
  %i.ais = icmp sgt i32 %i.air, -1
  %.not1035.1.3 = icmp slt i32 %i.air, %i.aac
  %or.cond1040.1.3 = select i1 %i.ais, i1 %.not1035.1.3, i1 false
  br i1 %or.cond1040.1.3, label %bb.cb, label %bb.bk

bb.cb:                                            ; preds = %bb.ca
  %i.ait = mul nsw i32 %i.aip, -3
  %i.aiu = add i32 %i.aid, %i.ait                 ; 2 uses
  %i.aiv = icmp sgt i32 %i.aiu, -1
  %.not1036.1.3 = icmp slt i32 %i.aiu, %i.aac
  %or.cond1041.1.3 = select i1 %i.aiv, i1 %.not1036.1.3, i1 false
  br i1 %or.cond1041.1.3, label %.loopexit1141.3, label %bb.bm

.loopexit1141.3:                                  ; preds = %bb.cb, %bb.bx
  br i1 %exitcond1417.4.not, label %.critedge21, label %bb.cc

bb.cc:                                            ; preds = %.loopexit1141.3
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ady, i64 1
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !113
  %i.aiy = icmp eq i8 %i.aix, 1
  br i1 %i.aiy, label %.loopexit1141.4, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aiz = add nuw i32 %i.aec, 7                  ; 4 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aeb, i64 40
  %i.ajb = load i16, ptr %i.aja, align 8, !tbaa !117
  %i.ajc = sext i16 %i.ajb to i32                 ; 2 uses
  %i.ajd = mul nsw i32 %i.ajc, 3
  %i.aje = add i32 %i.aiz, %i.ajd                 ; 2 uses
  %i.ajf = icmp sgt i32 %i.aje, -1
  %.not1035.4 = icmp slt i32 %i.aje, %i.aac
  %or.cond1040.4 = select i1 %i.ajf, i1 %.not1035.4, i1 false
  br i1 %or.cond1040.4, label %bb.ce, label %bb.bk

bb.ce:                                            ; preds = %bb.cd
  %i.ajg = mul nsw i32 %i.ajc, -3
  %i.ajh = add i32 %i.aiz, %i.ajg                 ; 2 uses
  %i.aji = icmp sgt i32 %i.ajh, -1
  %.not1036.4 = icmp slt i32 %i.ajh, %i.aac
  %or.cond1041.4 = select i1 %i.aji, i1 %.not1036.4, i1 false
  br i1 %or.cond1041.4, label %bb.cf, label %bb.bm

bb.cf:                                            ; preds = %bb.ce
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aeb, i64 42
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !117
  %i.ajl = sext i16 %i.ajk to i32                 ; 2 uses
  %i.ajm = mul nsw i32 %i.ajl, 3
  %i.ajn = add i32 %i.aiz, %i.ajm                 ; 2 uses
  %i.ajo = icmp sgt i32 %i.ajn, -1
  %.not1035.1.4 = icmp slt i32 %i.ajn, %i.aac
  %or.cond1040.1.4 = select i1 %i.ajo, i1 %.not1035.1.4, i1 false
  br i1 %or.cond1040.1.4, label %bb.cg, label %bb.bk

bb.cg:                                            ; preds = %bb.cf
  %i.ajp = mul nsw i32 %i.ajl, -3
  %i.ajq = add i32 %i.aiz, %i.ajp                 ; 2 uses
  %i.ajr = icmp sgt i32 %i.ajq, -1
  %.not1036.1.4 = icmp slt i32 %i.ajq, %i.aac
  %or.cond1041.1.4 = select i1 %i.ajr, i1 %.not1036.1.4, i1 false
  br i1 %or.cond1041.1.4, label %.loopexit1141.4, label %bb.bm

.loopexit1141.4:                                  ; preds = %bb.cg, %bb.cc
  br i1 %exitcond1417.5.not, label %.critedge21, label %bb.ch

bb.ch:                                            ; preds = %.loopexit1141.4
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ady, i64 2
  %i.ajt = load i8, ptr %i.ajs, align 2, !tbaa !113
  %i.aju = icmp eq i8 %i.ajt, 1
  br i1 %i.aju, label %.critedge21, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ajv = add nuw i32 %i.aec, 8                  ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aeb, i64 72
  %i.ajx = load i16, ptr %i.ajw, align 8, !tbaa !117
  %i.ajy = sext i16 %i.ajx to i32                 ; 2 uses
  %i.ajz = mul nsw i32 %i.ajy, 3
  %i.aka = add i32 %i.ajv, %i.ajz                 ; 2 uses
  %i.akb = icmp sgt i32 %i.aka, -1
  %.not1035.5 = icmp slt i32 %i.aka, %i.aac
  %or.cond1040.5 = select i1 %i.akb, i1 %.not1035.5, i1 false
  br i1 %or.cond1040.5, label %bb.cj, label %bb.bk

bb.cj:                                            ; preds = %bb.ci
  %i.akc = mul nsw i32 %i.ajy, -3
  %i.akd = add i32 %i.ajv, %i.akc                 ; 2 uses
  %i.ake = icmp sgt i32 %i.akd, -1
  %.not1036.5 = icmp slt i32 %i.akd, %i.aac
  %or.cond1041.5 = select i1 %i.ake, i1 %.not1036.5, i1 false
  br i1 %or.cond1041.5, label %bb.ck, label %bb.bm

bb.ck:                                            ; preds = %bb.cj
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aeb, i64 74
  %i.akg = load i16, ptr %i.akf, align 2, !tbaa !117
  %i.akh = sext i16 %i.akg to i32                 ; 2 uses
  %i.aki = mul nsw i32 %i.akh, 3
  %i.akj = add i32 %i.ajv, %i.aki                 ; 2 uses
  %i.akk = icmp sgt i32 %i.akj, -1
  %.not1035.1.5 = icmp slt i32 %i.akj, %i.aac
  %or.cond1040.1.5 = select i1 %i.akk, i1 %.not1035.1.5, i1 false
  br i1 %or.cond1040.1.5, label %bb.cl, label %bb.bk

bb.cl:                                            ; preds = %bb.ck
  %i.akl = mul nsw i32 %i.akh, -3
  %i.akm = add i32 %i.ajv, %i.akl                 ; 2 uses
  %i.akn = icmp sgt i32 %i.akm, -1
  %.not1036.1.5 = icmp slt i32 %i.akm, %i.aac
  %or.cond1041.1.5 = select i1 %i.akn, i1 %.not1036.1.5, i1 false
  br i1 %or.cond1041.1.5, label %.critedge21, label %bb.bm

._crit_edge1357:                                  ; preds = %._crit_edge1354, %.critedge
  tail call void @_ZN6LibRaw16free_omp_buffersEPPci(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.aee, i32 noundef 1)
  tail call void @_ZN6LibRaw18border_interpolateEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void

bb.cm:                                            ; preds = %.lr.ph1356, %._crit_edge1354
  %i.ako = phi i16 [ %i.aef, %.lr.ph1356 ], [ %i.alp, %._crit_edge1354 ]
  %i.akp = phi i16 [ %.pre1600, %.lr.ph1356 ], [ %i.alq, %._crit_edge1354 ] ; 3 uses
  %indvars.iv1488 = phi i64 [ 6, %.lr.ph1356 ], [ %indvars.iv.next1489, %._crit_edge1354 ] ; 2 uses
  %indvars.iv1461 = phi i64 [ 5, %.lr.ph1356 ], [ %indvars.iv.next1462, %._crit_edge1354 ] ; 3 uses
  %indvars.iv1430 = phi i64 [ 3, %.lr.ph1356 ], [ %indvars.iv.next1431, %._crit_edge1354 ] ; 17 uses
  %umin1588 = tail call i64 @llvm.umin.i64(i64 %indvars.iv1430, i64 8)
  %i.akq = load ptr, ptr %i.aee, align 8, !tbaa !120 ; 20 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.aeh ; 3 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 1572864 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.aei ; 3 uses
  %i.aku = icmp ugt i16 %i.akp, 22
  br i1 %i.aku, label %.lr.ph1353, label %._crit_edge1354

.lr.ph1353:                                       ; preds = %bb.cm
  %i.akv = zext i16 %i.akp to i32
  %i.akw = add nuw nsw i64 %indvars.iv1430, 2
  %i.akx = sub nsw i64 %indvars.iv1430, %i.aeu
  %.fr = freeze i64 %i.akx
  %i.aky = trunc i64 %.fr to i32
  %i.akz = add i32 %i.aky, 4                      ; 2 uses
  %i.ala = srem i32 %i.akz, 3
  %i.alb = add i32 %i.akz, %i.ael
  %i.alc = sub i32 %i.alb, %i.ala                 ; 2 uses
  %i.ald = add nuw nsw i64 %indvars.iv1430, 3
  %i.ale = trunc nuw nsw i64 %indvars.iv1430 to i32 ; 3 uses
  %i.alf = tail call i32 @llvm.umin.i32(i32 %i.ale, i32 8)
  %i.alg = sext i32 %i.alc to i64
  %i.alh = trunc i64 %indvars.iv1430 to i32
  %i.ali = add i32 %i.alh, 512
  %i.alj = getelementptr inbounds nuw i8, ptr %i.akq, i64 1572864
  %i.alk = getelementptr inbounds nuw i8, ptr %i.akq, i64 3145728
  %i.all = getelementptr inbounds nuw i8, ptr %i.akq, i64 4718592
  %i.alm = getelementptr inbounds nuw i8, ptr %i.akq, i64 1572864
  %i.aln = getelementptr inbounds nuw i8, ptr %i.akq, i64 3145728
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akq, i64 4718592
  br label %bb.cn

._crit_edge1354.loopexit:                         ; preds = %._crit_edge1348.split
  %.pre1626.a = load i16, ptr %i.i, align 4, !tbaa !112
  br label %._crit_edge1354

._crit_edge1354:                                  ; preds = %._crit_edge1354.loopexit, %bb.cm
  %i.alp = phi i16 [ %.pre1626.a, %._crit_edge1354.loopexit ], [ %i.ako, %bb.cm ] ; 2 uses
  %i.alq = phi i16 [ %i.cvb, %._crit_edge1354.loopexit ], [ %i.akp, %bb.cm ]
  %indvars.iv.next1431 = add nuw nsw i64 %indvars.iv1430, 496 ; 2 uses
  %i.alr = zext i16 %i.alp to i64
  %i.als = add nsw i64 %i.alr, -19
  %i.alt = icmp slt i64 %indvars.iv.next1431, %i.als
  %indvars.iv.next1462 = add nuw nsw i64 %indvars.iv1461, 496
  %indvars.iv.next1489 = add nuw nsw i64 %indvars.iv1488, 496
  br i1 %i.alt, label %bb.cm, label %._crit_edge1357, !llvm.loop !18

bb.cn:                                            ; preds = %.lr.ph1353, %._crit_edge1348.split
  %indvars.iv1483 = phi i64 [ 6, %.lr.ph1353 ], [ %indvars.iv.next1484, %._crit_edge1348.split ] ; 2 uses
  %indvars.iv1456 = phi i64 [ 5, %.lr.ph1353 ], [ %indvars.iv.next1457, %._crit_edge1348.split ] ; 3 uses
  %indvars.iv1425 = phi i64 [ 3, %.lr.ph1353 ], [ %indvars.iv.next1426, %._crit_edge1348.split ] ; 17 uses
  %i.alu = phi i32 [ %i.akv, %.lr.ph1353 ], [ %i.cvc, %._crit_edge1348.split ]
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv1425, i64 8)
  %i.alv = load i16, ptr %i.i, align 4, !tbaa !112
  %i.alw = zext i16 %i.alv to i32
  %i.alx = add nsw i32 %i.alw, -3                 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ali, i32 %i.alx) ; 5 uses
  %i.aly = add nsw i32 %i.alu, -3                 ; 2 uses
  %i.alz = trunc i64 %indvars.iv1425 to i32
  %i.ama = add i32 %i.alz, 512
  %i.amb = tail call i32 @llvm.smin.i32(i32 %i.ama, i32 %i.aly) ; 5 uses
  %i.amc = sext i32 %i.alx to i64
  %i.amd = icmp slt i64 %indvars.iv1430, %i.amc
  %i.ame = sext i32 %i.aly to i64
  %i.amf = icmp slt i64 %indvars.iv1425, %i.ame
  %or.cond1358 = select i1 %i.amd, i1 %i.amf, i1 false
  br i1 %or.cond1358, label %.preheader1138.preheader, label %.preheader1140.thread

.preheader1140.thread:                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alj, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alk, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.all, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  br label %.preheader1139

.preheader1138.preheader:                         ; preds = %bb.cn
  %i.amg = sext i32 %i.amb to i64
  %i.amh = sext i32 %. to i64
  br label %.preheader1138

.preheader1140:                                   ; preds = %._crit_edge1221
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alm, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.aln, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1572864) %i.alo, ptr noundef nonnull align 2 dereferenceable(1572864) %i.akq, i64 1572864, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ami = sext i32 %i.amb to i64
  %i.amj = sext i32 %. to i64
  %.promoted1734 = load i32, ptr %i.aej, align 16
  %.promoted = load i32, ptr %i.aek, align 4
  %.promoted1737 = load i32, ptr %i.aev, align 8
  %.promoted1739 = load i32, ptr %i.aew, align 4
  br label %.preheader1137

.preheader1138:                                   ; preds = %.preheader1138.preheader, %._crit_edge1221
  %indvars.iv1432 = phi i64 [ %indvars.iv1430, %.preheader1138.preheader ], [ %indvars.iv.next1433, %._crit_edge1221 ] ; 3 uses
  %i.amk = sub nuw nsw i64 %indvars.iv1432, %indvars.iv1430
  %i.aml = getelementptr inbounds nuw [3072 x i8], ptr %i.akq, i64 %i.amk
  br label %bb.co

._crit_edge1221:                                  ; preds = %bb.co
  %indvars.iv.next1433 = add nuw nsw i64 %indvars.iv1432, 1 ; 2 uses
  %i.amm = icmp slt i64 %indvars.iv.next1433, %i.amh
  br i1 %i.amm, label %.preheader1138, label %.preheader1140, !llvm.loop !19

bb.co:                                            ; preds = %.preheader1138, %bb.co
  %indvars.iv1427 = phi i64 [ %indvars.iv1425, %.preheader1138 ], [ %indvars.iv.next1428, %bb.co ] ; 3 uses
  %i.amn = sub nuw nsw i64 %indvars.iv1427, %indvars.iv1425
  %i.amo = getelementptr inbounds nuw [6 x i8], ptr %i.aml, i64 %i.amn
  %i.amp = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.amq = load i16, ptr %i.f, align 2, !tbaa !111
  %i.amr = zext i16 %i.amq to i64
  %i.ams = mul nuw nsw i64 %indvars.iv1432, %i.amr
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.amp, i64 %i.ams
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %indvars.iv1427
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.amo, ptr noundef nonnull align 2 dereferenceable(6) %i.amu, i64 6, i1 false)
  %indvars.iv.next1428 = add nuw nsw i64 %indvars.iv1427, 1 ; 2 uses
  %i.amv = icmp slt i64 %indvars.iv.next1428, %i.amg
  br i1 %i.amv, label %bb.co, label %._crit_edge1221, !llvm.loop !20

.preheader1139.loopexit:                          ; preds = %._crit_edge1234
  store i32 %i.avl, ptr %i.aej, align 16
  store i32 %i.avk, ptr %i.aek, align 4
  store i32 %i.avj, ptr %i.aev, align 8
  store i32 %i.avi, ptr %i.aew, align 4
  br label %.preheader1139

.preheader1139:                                   ; preds = %.preheader1139.loopexit, %.preheader1140.thread
  br i1 %i.aem, label %.lr.ph1293, label %._crit_edge1294

.lr.ph1293:                                       ; preds = %.preheader1139
  %i.amw = add nsw i32 %., -2                     ; 2 uses
  %i.amx = sext i32 %i.amw to i64                 ; 4 uses
  %i.amy = icmp sge i64 %i.akw, %i.amx            ; 2 uses
  %i.amz = add nuw nsw i64 %indvars.iv1425, 2
  %i.ana = add nsw i32 %i.amb, -2                 ; 2 uses
  %i.anb = sext i32 %i.ana to i64                 ; 4 uses
  %i.anc = icmp sge i64 %i.amz, %i.anb            ; 2 uses
  %i.and = icmp sge i32 %i.alc, %i.amw
  %i.ane = sub nsw i64 %indvars.iv1425, %i.aet
  %.fr1710 = freeze i64 %i.ane
  %i.anf = trunc i64 %.fr1710 to i32
  %i.ang = add i32 %i.anf, 4                      ; 2 uses
  %i.anh = srem i32 %i.ang, 3
  %i.ani = add i32 %i.ang, %i.aen
  %i.anj = sub i32 %i.ani, %i.anh                 ; 2 uses
  %i.ank = icmp sge i32 %i.anj, %i.ana
  %i.anl = add nsw i32 %., -3
  %i.anm = sext i32 %i.anl to i64                 ; 2 uses
  %i.ann = icmp sge i64 %i.ald, %i.anm
  %i.ano = add nuw nsw i64 %indvars.iv1425, 3
end_hunk_0
