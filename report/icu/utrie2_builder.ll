Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utrie2_builder?download=true
inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@utrie2_freeze_78:bb.a
  %i.wx = trunc <4 x i32> %i.wv to <4 x i16>
  %i.wy = trunc <4 x i32> %i.ww to <4 x i16>
  %i.wz = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.wx, ptr %next.gep, align 2, !tbaa !50
  store <4 x i16> %i.wy, ptr %i.wz, align 2, !tbaa !50
  %index.next1693 = add nuw i64 %index1689, 8     ; 2 uses
  %i.xa = icmp eq i64 %index.next1693, 2080
  br i1 %i.xa, label %.preheader153, label %vector.body1688, !llvm.loop !91

.preheader153:                                    ; preds = %vector.body1688
  %i.xb = trunc i32 %.0127.151 to i16
  %i.xc = add i16 %i.xb, 128                      ; 2 uses
  %i.xd = getelementptr i8, ptr %i.vi, i64 4178
  store i16 %i.xc, ptr %i.wp, align 4, !tbaa !50
  %i.xe = getelementptr i8, ptr %i.vi, i64 4180
  store i16 %i.xc, ptr %i.xd, align 2, !tbaa !50
  %i.xf = getelementptr inbounds nuw i8, ptr %i.f, i64 2192
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !28
  %i.xh = add nsw i32 %i.xg, %.0127.151
  %i.xi = trunc i32 %i.xh to i16
  %i.xj = getelementptr i8, ptr %i.vi, i64 4182
  store i16 %i.xi, ptr %i.xe, align 4, !tbaa !50
  %i.xk = getelementptr inbounds nuw i8, ptr %i.f, i64 2200
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !28
  %i.xm = add nsw i32 %i.xl, %.0127.151
  %i.xn = trunc i32 %i.xm to i16
  %i.xo = getelementptr i8, ptr %i.vi, i64 4184
  store i16 %i.xn, ptr %i.xj, align 2, !tbaa !50
  %i.xp = getelementptr inbounds nuw i8, ptr %i.f, i64 2208
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !28
  %i.xr = add nsw i32 %i.xq, %.0127.151
  %i.xs = trunc i32 %i.xr to i16
  %i.xt = getelementptr i8, ptr %i.vi, i64 4186
  store i16 %i.xs, ptr %i.xo, align 4, !tbaa !50
  %i.xu = getelementptr inbounds nuw i8, ptr %i.f, i64 2216
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !28
  %i.xw = add nsw i32 %i.xv, %.0127.151
  %i.xx = trunc i32 %i.xw to i16
  %i.xy = getelementptr i8, ptr %i.vi, i64 4188
  store i16 %i.xx, ptr %i.xt, align 2, !tbaa !50
  %i.xz = getelementptr inbounds nuw i8, ptr %i.f, i64 2224
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !28
  %i.yb = add nsw i32 %i.ya, %.0127.151
  %i.yc = trunc i32 %i.yb to i16
  %i.yd = getelementptr i8, ptr %i.vi, i64 4190
  store i16 %i.yc, ptr %i.xy, align 4, !tbaa !50
  %i.ye = getelementptr inbounds nuw i8, ptr %i.f, i64 2232
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !28
  %i.yg = add nsw i32 %i.yf, %.0127.151
  %i.yh = trunc i32 %i.yg to i16
  %i.yi = getelementptr i8, ptr %i.vi, i64 4192
  store i16 %i.yh, ptr %i.yd, align 2, !tbaa !50
  %i.yj = getelementptr inbounds nuw i8, ptr %i.f, i64 2240
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !28
  %i.yl = add nsw i32 %i.yk, %.0127.151
  %i.ym = trunc i32 %i.yl to i16
  %i.yn = getelementptr i8, ptr %i.vi, i64 4194
  store i16 %i.ym, ptr %i.yi, align 4, !tbaa !50
  %i.yo = getelementptr inbounds nuw i8, ptr %i.f, i64 2248
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !28
  %i.yq = add nsw i32 %i.yp, %.0127.151
  %i.yr = trunc i32 %i.yq to i16
  %i.ys = getelementptr i8, ptr %i.vi, i64 4196
  store i16 %i.yr, ptr %i.yn, align 2, !tbaa !50
  %i.yt = getelementptr inbounds nuw i8, ptr %i.f, i64 2256
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !28
  %i.yv = add nsw i32 %i.yu, %.0127.151
  %i.yw = trunc i32 %i.yv to i16
  %i.yx = getelementptr i8, ptr %i.vi, i64 4198
  store i16 %i.yw, ptr %i.ys, align 4, !tbaa !50
  %i.yy = getelementptr inbounds nuw i8, ptr %i.f, i64 2264
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !28
  %i.za = add nsw i32 %i.yz, %.0127.151
  %i.zb = trunc i32 %i.za to i16
  %i.zc = getelementptr i8, ptr %i.vi, i64 4200
  store i16 %i.zb, ptr %i.yx, align 2, !tbaa !50
  %i.zd = getelementptr inbounds nuw i8, ptr %i.f, i64 2272
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !28
  %i.zf = add nsw i32 %i.ze, %.0127.151
  %i.zg = trunc i32 %i.zf to i16
  %i.zh = getelementptr i8, ptr %i.vi, i64 4202
  store i16 %i.zg, ptr %i.zc, align 4, !tbaa !50
  %i.zi = getelementptr inbounds nuw i8, ptr %i.f, i64 2280
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !28
  %i.zk = add nsw i32 %i.zj, %.0127.151
  %i.zl = trunc i32 %i.zk to i16
  %i.zm = getelementptr i8, ptr %i.vi, i64 4204
  store i16 %i.zl, ptr %i.zh, align 2, !tbaa !50
  %i.zn = getelementptr inbounds nuw i8, ptr %i.f, i64 2288
  %i.zo = load i32, ptr %i.zn, align 8, !tbaa !28
  %i.zp = add nsw i32 %i.zo, %.0127.151
  %i.zq = trunc i32 %i.zp to i16
  %i.zr = getelementptr i8, ptr %i.vi, i64 4206
  store i16 %i.zq, ptr %i.zm, align 4, !tbaa !50
  %i.zs = getelementptr inbounds nuw i8, ptr %i.f, i64 2296
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !28
  %i.zu = add nsw i32 %i.zt, %.0127.151
  %i.zv = trunc i32 %i.zu to i16
  %i.zw = getelementptr i8, ptr %i.vi, i64 4208
  store i16 %i.zv, ptr %i.zr, align 2, !tbaa !50
  %i.zx = getelementptr inbounds nuw i8, ptr %i.f, i64 2304
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !28
  %i.zz = add nsw i32 %i.zy, %.0127.151
  %i.aaa = trunc i32 %i.zz to i16
  %i.aab = getelementptr i8, ptr %i.vi, i64 4210
  store i16 %i.aaa, ptr %i.zw, align 4, !tbaa !50
  %i.aac = getelementptr inbounds nuw i8, ptr %i.f, i64 2312
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !28
  %i.aae = add nsw i32 %i.aad, %.0127.151
  %i.aaf = trunc i32 %i.aae to i16
  %i.aag = getelementptr i8, ptr %i.vi, i64 4212
  store i16 %i.aaf, ptr %i.aab, align 2, !tbaa !50
  %i.aah = getelementptr inbounds nuw i8, ptr %i.f, i64 2320
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !28
  %i.aaj = add nsw i32 %i.aai, %.0127.151
  %i.aak = trunc i32 %i.aaj to i16
  %i.aal = getelementptr i8, ptr %i.vi, i64 4214
  store i16 %i.aak, ptr %i.aag, align 4, !tbaa !50
  %i.aam = getelementptr inbounds nuw i8, ptr %i.f, i64 2328
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !28
  %i.aao = add nsw i32 %i.aan, %.0127.151
  %i.aap = trunc i32 %i.aao to i16
  %i.aaq = getelementptr i8, ptr %i.vi, i64 4216
  store i16 %i.aap, ptr %i.aal, align 2, !tbaa !50
  %i.aar = getelementptr inbounds nuw i8, ptr %i.f, i64 2336
  %i.aas = load i32, ptr %i.aar, align 8, !tbaa !28
  %i.aat = add nsw i32 %i.aas, %.0127.151
  %i.aau = trunc i32 %i.aat to i16
  %i.aav = getelementptr i8, ptr %i.vi, i64 4218
  store i16 %i.aau, ptr %i.aaq, align 4, !tbaa !50
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.f, i64 2344
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !28
  %i.aay = add nsw i32 %i.aax, %.0127.151
  %i.aaz = trunc i32 %i.aay to i16
  %i.aba = getelementptr i8, ptr %i.vi, i64 4220
  store i16 %i.aaz, ptr %i.aav, align 2, !tbaa !50
  %i.abb = getelementptr inbounds nuw i8, ptr %i.f, i64 2352
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !28
  %i.abd = add nsw i32 %i.abc, %.0127.151
  %i.abe = trunc i32 %i.abd to i16
  %i.abf = getelementptr i8, ptr %i.vi, i64 4222
  store i16 %i.abe, ptr %i.aba, align 4, !tbaa !50
  %i.abg = getelementptr inbounds nuw i8, ptr %i.f, i64 2360
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !28
  %i.abi = add nsw i32 %i.abh, %.0127.151
  %i.abj = trunc i32 %i.abi to i16
  %i.abk = getelementptr i8, ptr %i.vi, i64 4224
  store i16 %i.abj, ptr %i.abf, align 2, !tbaa !50
  %i.abl = getelementptr inbounds nuw i8, ptr %i.f, i64 2368
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !28
  %i.abn = add nsw i32 %i.abm, %.0127.151
  %i.abo = trunc i32 %i.abn to i16
  %i.abp = getelementptr i8, ptr %i.vi, i64 4226
  store i16 %i.abo, ptr %i.abk, align 4, !tbaa !50
  %i.abq = getelementptr inbounds nuw i8, ptr %i.f, i64 2376
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !28
  %i.abs = add nsw i32 %i.abr, %.0127.151
  %i.abt = trunc i32 %i.abs to i16
  %i.abu = getelementptr i8, ptr %i.vi, i64 4228
  store i16 %i.abt, ptr %i.abp, align 2, !tbaa !50
  %i.abv = getelementptr inbounds nuw i8, ptr %i.f, i64 2384
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !28
  %i.abx = add nsw i32 %i.abw, %.0127.151
  %i.aby = trunc i32 %i.abx to i16
  %i.abz = getelementptr i8, ptr %i.vi, i64 4230
  store i16 %i.aby, ptr %i.abu, align 4, !tbaa !50
  %i.aca = getelementptr inbounds nuw i8, ptr %i.f, i64 2392
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !28
  %i.acc = add nsw i32 %i.acb, %.0127.151
  %i.acd = trunc i32 %i.acc to i16
  %i.ace = getelementptr i8, ptr %i.vi, i64 4232
  store i16 %i.acd, ptr %i.abz, align 2, !tbaa !50
  %i.acf = getelementptr inbounds nuw i8, ptr %i.f, i64 2400
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !28
  %i.ach = add nsw i32 %i.acg, %.0127.151
  %i.aci = trunc i32 %i.ach to i16
  %i.acj = getelementptr i8, ptr %i.vi, i64 4234
  store i16 %i.aci, ptr %i.ace, align 4, !tbaa !50
  %i.ack = getelementptr inbounds nuw i8, ptr %i.f, i64 2408
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !28
  %i.acm = add nsw i32 %i.acl, %.0127.151
  %i.acn = trunc i32 %i.acm to i16
  %i.aco = getelementptr i8, ptr %i.vi, i64 4236
  store i16 %i.acn, ptr %i.acj, align 2, !tbaa !50
  %i.acp = getelementptr inbounds nuw i8, ptr %i.f, i64 2416
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !28
  %i.acr = add nsw i32 %i.acq, %.0127.151
  %i.acs = trunc i32 %i.acr to i16
  %i.act = getelementptr i8, ptr %i.vi, i64 4238
  store i16 %i.acs, ptr %i.aco, align 4, !tbaa !50
  %i.acu = getelementptr inbounds nuw i8, ptr %i.f, i64 2424
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !28
  %i.acw = add nsw i32 %i.acv, %.0127.151
  %i.acx = trunc i32 %i.acw to i16
  %i.acy = getelementptr i8, ptr %i.vi, i64 4240  ; 5 uses
  store i16 %i.acx, ptr %i.act, align 2, !tbaa !50
  %i.acz = icmp sgt i32 %i.uo, 65536
  br i1 %i.acz, label %bb.br, label %.loopexit152

bb.br:                                            ; preds = %.preheader153
  %i.ada = add nsw i32 %i.uo, -65536              ; 3 uses
  %i.adb = lshr i32 %i.ada, 11                    ; 4 uses
  %i.adc = add nuw nsw i32 %i.adb, 2112           ; 2 uses
  %.not = icmp eq i32 %i.adb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.br
  %i.add = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %3 = lshr i32 %i.ada, 11
  %i.ade = zext nneg i32 %3 to i64                ; 2 uses
  %min.iters.check1696 = icmp ult i32 %i.ada, 16384
  br i1 %min.iters.check1696, label %.lr.ph.preheader1747, label %vector.ph1697

vector.ph1697:                                    ; preds = %.lr.ph.preheader
  %n.vec1698 = and i64 %i.ade, 2097144            ; 5 uses
  %i.adf = trunc nuw nsw i64 %n.vec1698 to i32
  %i.adg = sub nsw i32 %i.adb, %i.adf
  %i.adh = shl nuw nsw i64 %n.vec1698, 1
  %i.adi = getelementptr i8, ptr %i.acy, i64 %i.adh ; 2 uses
  %i.adj = shl nuw nsw i64 %n.vec1698, 2
  %i.adk = getelementptr i8, ptr %i.add, i64 %i.adj
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1697
  %index1700 = phi i64 [ 0, %vector.ph1697 ], [ %index.next1705, %vector.body1699 ] ; 3 uses
  %i.adl = shl i64 %index1700, 1
  %next.gep1701 = getelementptr i8, ptr %i.acy, i64 %i.adl ; 2 uses
  %i.adm = shl i64 %index1700, 2
  %next.gep1702 = getelementptr i8, ptr %i.add, i64 %i.adm ; 2 uses
  %i.adn = getelementptr i8, ptr %next.gep1702, i64 16
  %wide.load1703 = load <4 x i32>, ptr %next.gep1702, align 4, !tbaa !28
  %wide.load1704 = load <4 x i32>, ptr %i.adn, align 4, !tbaa !28
  %i.ado = trunc <4 x i32> %wide.load1703 to <4 x i16>
  %i.adp = trunc <4 x i32> %wide.load1704 to <4 x i16>
  %i.adq = getelementptr i8, ptr %next.gep1701, i64 8
  store <4 x i16> %i.ado, ptr %next.gep1701, align 2, !tbaa !50
  store <4 x i16> %i.adp, ptr %i.adq, align 2, !tbaa !50
  %index.next1705 = add nuw i64 %index1700, 8     ; 2 uses
  %i.adr = icmp eq i64 %index.next1705, %n.vec1698
  br i1 %i.adr, label %middle.block1706, label %vector.body1699, !llvm.loop !92

middle.block1706:                                 ; preds = %vector.body1699
  %cmp.n1707 = icmp eq i64 %n.vec1698, %i.ade
  br i1 %cmp.n1707, label %._crit_edge, label %.lr.ph.preheader1747

.lr.ph.preheader1747:                             ; preds = %.lr.ph.preheader, %middle.block1706
  %.3515.ph = phi i32 [ %i.adb, %.lr.ph.preheader ], [ %i.adg, %middle.block1706 ]
  %.3133514.ph = phi ptr [ %i.acy, %.lr.ph.preheader ], [ %i.adi, %middle.block1706 ]
  %.1137513.ph = phi ptr [ %i.add, %.lr.ph.preheader ], [ %i.adk, %middle.block1706 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader1747, %.lr.ph
  %.3515 = phi i32 [ %i.adw, %.lr.ph ], [ %.3515.ph, %.lr.ph.preheader1747 ] ; 2 uses
  %.3133514 = phi ptr [ %i.adv, %.lr.ph ], [ %.3133514.ph, %.lr.ph.preheader1747 ] ; 2 uses
  %.1137513 = phi ptr [ %i.ads, %.lr.ph ], [ %.1137513.ph, %.lr.ph.preheader1747 ] ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.1137513, i64 4
  %i.adt = load i32, ptr %.1137513, align 4, !tbaa !28
  %i.adu = trunc i32 %i.adt to i16
  %i.adv = getelementptr inbounds nuw i8, ptr %.3133514, i64 2 ; 2 uses
  store i16 %i.adu, ptr %.3133514, align 2, !tbaa !50
  %i.adw = add nsw i32 %.3515, -1
  %i.adx = icmp samesign ugt i32 %.3515, 1
  br i1 %i.adx, label %.lr.ph, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %middle.block1706, %bb.br
  %.3133.lcssa = phi ptr [ %i.acy, %bb.br ], [ %i.adi, %middle.block1706 ], [ %i.adv, %.lr.ph ] ; 4 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.f, i64 144144
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !36
  %i.aea = sub nsw i32 %i.adz, %i.adc             ; 5 uses
  %i.aeb = icmp sgt i32 %i.aea, 0
  br i1 %i.aeb, label %.lr.ph520.preheader, label %.loopexit152

.lr.ph520.preheader:                              ; preds = %._crit_edge
  %i.aec = zext nneg i32 %i.adc to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.aec ; 3 uses
  %i.aee = zext nneg i32 %i.aea to i64            ; 2 uses
  %min.iters.check1712 = icmp ult i32 %i.aea, 8
  br i1 %min.iters.check1712, label %.lr.ph520.preheader1746, label %vector.ph1713

vector.ph1713:                                    ; preds = %.lr.ph520.preheader
  %n.vec1714 = and i64 %i.aee, 2147483640         ; 5 uses
  %i.aef = trunc nuw nsw i64 %n.vec1714 to i32
  %i.aeg = sub nsw i32 %i.aea, %i.aef
  %i.aeh = shl nuw nsw i64 %n.vec1714, 1
  %i.aei = getelementptr i8, ptr %.3133.lcssa, i64 %i.aeh ; 2 uses
  %i.aej = shl nuw nsw i64 %n.vec1714, 2
  %i.aek = getelementptr i8, ptr %i.aed, i64 %i.aej
  %broadcast.splatinsert1715 = insertelement <4 x i32> poison, i32 %.0127.151, i64 0
  %broadcast.splat1716 = shufflevector <4 x i32> %broadcast.splatinsert1715, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1717

vector.body1717:                                  ; preds = %vector.body1717, %vector.ph1713
  %index1718 = phi i64 [ 0, %vector.ph1713 ], [ %index.next1723, %vector.body1717 ] ; 3 uses
  %i.ael = shl i64 %index1718, 1
  %next.gep1719 = getelementptr i8, ptr %.3133.lcssa, i64 %i.ael ; 2 uses
  %i.aem = shl i64 %index1718, 2
  %next.gep1720 = getelementptr i8, ptr %i.aed, i64 %i.aem ; 2 uses
  %i.aen = getelementptr i8, ptr %next.gep1720, i64 16
  %wide.load1721 = load <4 x i32>, ptr %next.gep1720, align 4, !tbaa !28
  %wide.load1722 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !28
  %i.aeo = add <4 x i32> %wide.load1721, %broadcast.splat1716
  %i.aep = add <4 x i32> %wide.load1722, %broadcast.splat1716
  %i.aeq = lshr <4 x i32> %i.aeo, splat (i32 2)
  %i.aer = lshr <4 x i32> %i.aep, splat (i32 2)
  %i.aes = trunc <4 x i32> %i.aeq to <4 x i16>
  %i.aet = trunc <4 x i32> %i.aer to <4 x i16>
  %i.aeu = getelementptr i8, ptr %next.gep1719, i64 8
  store <4 x i16> %i.aes, ptr %next.gep1719, align 2, !tbaa !50
  store <4 x i16> %i.aet, ptr %i.aeu, align 2, !tbaa !50
  %index.next1723 = add nuw i64 %index1718, 8     ; 2 uses
  %i.aev = icmp eq i64 %index.next1723, %n.vec1714
  br i1 %i.aev, label %middle.block1724, label %vector.body1717, !llvm.loop !94

middle.block1724:                                 ; preds = %vector.body1717
  %cmp.n1725 = icmp eq i64 %n.vec1714, %i.aee
  br i1 %cmp.n1725, label %.loopexit152, label %.lr.ph520.preheader1746

.lr.ph520.preheader1746:                          ; preds = %.lr.ph520.preheader, %middle.block1724
  %.4518.ph = phi i32 [ %i.aea, %.lr.ph520.preheader ], [ %i.aeg, %middle.block1724 ]
  %.4134517.ph = phi ptr [ %.3133.lcssa, %.lr.ph520.preheader ], [ %i.aei, %middle.block1724 ]
  %.2138516.ph = phi ptr [ %i.aed, %.lr.ph520.preheader ], [ %i.aek, %middle.block1724 ]
  br label %.lr.ph520

.lr.ph520:                                        ; preds = %.lr.ph520.preheader1746, %.lr.ph520
  %.4518 = phi i32 [ %i.afc, %.lr.ph520 ], [ %.4518.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %.4134517 = phi ptr [ %i.afb, %.lr.ph520 ], [ %.4134517.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %.2138516 = phi ptr [ %i.aew, %.lr.ph520 ], [ %.2138516.ph, %.lr.ph520.preheader1746 ] ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %.2138516, i64 4
  %i.aex = load i32, ptr %.2138516, align 4, !tbaa !28
  %i.aey = add i32 %i.aex, %.0127.151
  %i.aez = lshr i32 %i.aey, 2
  %i.afa = trunc i32 %i.aez to i16
  %i.afb = getelementptr inbounds nuw i8, ptr %.4134517, i64 2 ; 2 uses
  store i16 %i.afa, ptr %.4134517, align 2, !tbaa !50
  %i.afc = add nsw i32 %.4518, -1
  %i.afd = icmp samesign ugt i32 %.4518, 1
  br i1 %i.afd, label %.lr.ph520, label %.loopexit152, !llvm.loop !95

.loopexit152:                                     ; preds = %.lr.ph520, %middle.block1724, %._crit_edge, %.preheader153
  %.5135 = phi ptr [ %i.acy, %.preheader153 ], [ %.3133.lcssa, %._crit_edge ], [ %i.aei, %middle.block1724 ], [ %i.afb, %.lr.ph520 ] ; 6 uses
  %trunc = trunc nuw i32 %1 to i1
  %i.afe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.f, i64 144128 ; 3 uses
  br i1 %trunc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit152
  store ptr %.5135, ptr %i.afe, align 8, !tbaa !43
  store ptr null, ptr %i.aff, align 8, !tbaa !44
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !20 ; 6 uses
  %i.afi = icmp sgt i32 %i.vo, 0
  br i1 %i.afi, label %.lr.ph526.preheader, label %.loopexit

.lr.ph526.preheader:                              ; preds = %bb.bs
  %i.afj = zext nneg i32 %i.vo to i64             ; 2 uses
  %min.iters.check1730 = icmp ult i32 %i.vo, 8
  br i1 %min.iters.check1730, label %.lr.ph526.preheader1745, label %vector.ph1731

vector.ph1731:                                    ; preds = %.lr.ph526.preheader
  %n.vec1732 = and i64 %i.afj, 2147483640         ; 5 uses
  %i.afk = trunc nuw nsw i64 %n.vec1732 to i32
  %i.afl = sub nsw i32 %i.vo, %i.afk
  %i.afm = shl nuw nsw i64 %n.vec1732, 1
  %i.afn = getelementptr i8, ptr %.5135, i64 %i.afm
  %i.afo = shl nuw nsw i64 %n.vec1732, 2
  %i.afp = getelementptr i8, ptr %i.afh, i64 %i.afo
  br label %vector.body1733

vector.body1733:                                  ; preds = %vector.body1733, %vector.ph1731
  %index1734 = phi i64 [ 0, %vector.ph1731 ], [ %index.next1739, %vector.body1733 ] ; 3 uses
  %i.afq = shl i64 %index1734, 1
  %next.gep1735 = getelementptr i8, ptr %.5135, i64 %i.afq ; 2 uses
  %i.afr = shl i64 %index1734, 2
  %next.gep1736 = getelementptr i8, ptr %i.afh, i64 %i.afr ; 2 uses
  %i.afs = getelementptr i8, ptr %next.gep1736, i64 16
  %wide.load1737 = load <4 x i32>, ptr %next.gep1736, align 4, !tbaa !28
  %wide.load1738 = load <4 x i32>, ptr %i.afs, align 4, !tbaa !28
  %i.aft = trunc <4 x i32> %wide.load1737 to <4 x i16>
  %i.afu = trunc <4 x i32> %wide.load1738 to <4 x i16>
  %i.afv = getelementptr i8, ptr %next.gep1735, i64 8
  store <4 x i16> %i.aft, ptr %next.gep1735, align 2, !tbaa !50
  store <4 x i16> %i.afu, ptr %i.afv, align 2, !tbaa !50
  %index.next1739 = add nuw i64 %index1734, 8     ; 2 uses
  %i.afw = icmp eq i64 %index.next1739, %n.vec1732
  br i1 %i.afw, label %middle.block1740, label %vector.body1733, !llvm.loop !96

middle.block1740:                                 ; preds = %vector.body1733
  %cmp.n1741 = icmp eq i64 %n.vec1732, %i.afj
  br i1 %cmp.n1741, label %.loopexit, label %.lr.ph526.preheader1745

.lr.ph526.preheader1745:                          ; preds = %.lr.ph526.preheader, %middle.block1740
  %.5524.ph = phi i32 [ %i.vo, %.lr.ph526.preheader ], [ %i.afl, %middle.block1740 ]
  %.6523.ph = phi ptr [ %.5135, %.lr.ph526.preheader ], [ %i.afn, %middle.block1740 ]
  %.3139522.ph = phi ptr [ %i.afh, %.lr.ph526.preheader ], [ %i.afp, %middle.block1740 ]
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %.lr.ph526.preheader1745, %.lr.ph526
  %.5524 = phi i32 [ %i.agb, %.lr.ph526 ], [ %.5524.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %.6523 = phi ptr [ %i.aga, %.lr.ph526 ], [ %.6523.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %.3139522 = phi ptr [ %i.afx, %.lr.ph526 ], [ %.3139522.ph, %.lr.ph526.preheader1745 ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.3139522, i64 4
  %i.afy = load i32, ptr %.3139522, align 4, !tbaa !28
  %i.afz = trunc i32 %i.afy to i16
  %i.aga = getelementptr inbounds nuw i8, ptr %.6523, i64 2
  store i16 %i.afz, ptr %.6523, align 2, !tbaa !50
  %i.agb = add nsw i32 %.5524, -1
  %i.agc = icmp samesign ugt i32 %.5524, 1
  br i1 %i.agc, label %.lr.ph526, label %.loopexit, !llvm.loop !97

bb.bt:                                            ; preds = %.loopexit152
end_hunk_0
