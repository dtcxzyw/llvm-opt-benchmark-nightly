inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@pagerWalFrames:bb.a
  store i32 %i.bo, ptr %i.gs, align 8, !tbaa !1938
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.bl, ptr %i.gt, align 4, !tbaa !1939
  %i.gu = zext i32 %i.da to i64
  %i.gv = shl i64 %i.bk, 32
  %sext = add i64 %i.gv, 103079215104
  %i.gw = ashr exact i64 %sext, 32                ; 5 uses
  %i.gx = mul nsw i64 %i.gw, %i.gu
  %i.gy = add nsw i64 %i.gx, 32
  %.not223.i.i = icmp eq i32 %.0153.i.i, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bi, i64 124 ; 7 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.ab, %.lr.ph.i.i
  %.0154336.i.i = phi i64 [ %i.gy, %.lr.ph.i.i ], [ %.1155275.i.i, %bb.ab ] ; 3 uses
  %.0162335.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1163274.i.i, %bb.ab ]
  %.0164334.i.i = phi ptr [ %.0..12355, %.lr.ph.i.i ], [ %i.ij, %bb.ab ] ; 10 uses
  %.0166333.i.i = phi i32 [ %i.da, %.lr.ph.i.i ], [ %.1167273.i.i, %bb.ab ] ; 2 uses
  br i1 %.not223.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !534
  %i.hc = icmp ne ptr %i.hb, null
  %or.cond.i.i = or i1 %.not, %i.hc
  br i1 %or.cond.i.i, label %bb.u, label %.thread252.i.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  store i32 0, ptr %i.f, align 4, !tbaa !27
  %i.hd = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 48
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !536
  %i.hf = call fastcc i32 @walFindFrame(ptr noundef %i.bi, i32 noundef %i.he, ptr noundef %i.f), !inline_history !1924 ; 0 uses
  %i.hg = load i32, ptr %i.f, align 4, !tbaa !27  ; 4 uses
  %.not224.i.i = icmp ult i32 %i.hg, %.0153.i.i
  br i1 %.not224.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hh = add i32 %i.hg, -1
  %i.hi = zext i32 %i.hh to i64
  %i.hj = mul nsw i64 %i.gw, %i.hi
  %i.hk = add nsw i64 %i.hj, 56
  %i.hl = load i32, ptr %i.gz, align 4, !tbaa !1645
  %i.hm = add i32 %i.hl, -1
  %or.cond228.not.i.i = icmp ult i32 %i.hm, %i.hg
  br i1 %or.cond228.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.hg, ptr %i.gz, align 4, !tbaa !1645
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hn = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !527
  %i.hp = load ptr, ptr %i.go, align 8, !tbaa !1811 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !483
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !689
  %i.ht = call i32 %i.hs(ptr noundef nonnull %i.hp, ptr noundef %i.ho, i32 noundef %i.bl, i64 noundef %i.hk) #58, !inline_history !1931 ; 2 uses
  %.not225.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not225.i.i, label %bb.aa, label %.thread276.i.i

.thread276.i.i:                                   ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  br label %sqlite3WalFrames.exit.thread

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s
  br i1 %.not, label %.thread252.i.i, label %._crit_edge371.i.i

._crit_edge371.i.i:                               ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !534
  %i.hu = icmp eq ptr %.pre.i.i, null
  %i.hv = select i1 %i.hu, i32 %2, i32 0
  br label %.thread252.i.i

.thread252.i.i:                                   ; preds = %._crit_edge371.i.i, %bb.z, %bb.t
  %i.hw = phi i32 [ 0, %bb.z ], [ %i.hv, %._crit_edge371.i.i ], [ %2, %bb.t ]
  %i.hx = getelementptr i8, ptr %.0164334.i.i, i64 8
  %.0164.val.i.i = load ptr, ptr %i.hx, align 8, !tbaa !527
  %i.hy = getelementptr i8, ptr %.0164334.i.i, i64 48
  %.0164.val231.i.i = load i32, ptr %i.hy, align 8, !tbaa !536
  %i.hz = call fastcc i32 @walWriteOneFrame(ptr noundef %4, ptr %.0164.val.i.i, i32 %.0164.val231.i.i, i32 noundef %i.hw, i64 noundef %.0154336.i.i), !inline_history !1924 ; 2 uses
  %.not227.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not227.i.i, label %.thread264.i.i, label %sqlite3WalFrames.exit.thread

.thread264.i.i:                                   ; preds = %.thread252.i.i
  %i.ia = add i32 %.0166333.i.i, 1
  %i.ib = add nsw i64 %.0154336.i.i, %i.gw
  %i.ic = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 52 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 4, !tbaa !530
  %i.ie = or i16 %i.id, 64
  store i16 %i.ie, ptr %i.ic, align 4, !tbaa !530
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.if = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 52 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 4, !tbaa !530
  %i.ih = and i16 %i.ig, -65
  store i16 %i.ih, ptr %i.if, align 4, !tbaa !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread264.i.i
  %.1155275.i.i = phi i64 [ %i.ib, %.thread264.i.i ], [ %.0154336.i.i, %bb.aa ] ; 5 uses
  %.1163274.i.i = phi ptr [ %.0164334.i.i, %.thread264.i.i ], [ %.0162335.i.i, %bb.aa ] ; 4 uses
  %.1167273.i.i = phi i32 [ %i.ia, %.thread264.i.i ], [ %.0166333.i.i, %bb.aa ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0164334.i.i, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !534 ; 2 uses
  %.not212.i.i = icmp eq ptr %i.ij, null
  br i1 %.not212.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !1940

._crit_edge.i.i:                                  ; preds = %bb.ab
  br i1 %.not, label %.thread303.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.ik = load i32, ptr %i.gz, align 4, !tbaa !1645
  %.not214.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not214.i.i, label %.thread283.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.il = load i32, ptr %i.gm, align 8, !tbaa !1841 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.im = add nsw i32 %i.il, 24                   ; 2 uses
  %i.in = call i32 @sqlite3_initialize(), !inline_history !1941
  %.not.i.i234.i.i = icmp ne i32 %i.in, 0
  %i.io = icmp slt i32 %i.il, -23
  %or.cond.i.i.i.i = or i1 %i.io, %.not.i.i234.i.i
  br i1 %or.cond.i.i.i.i, label %walRewriteChecksums.exit.thread.i.i, label %sqlite3_malloc.exit.i.i.i

sqlite3_malloc.exit.i.i.i:                        ; preds = %bb.ad
  %i.ip = zext nneg i32 %i.im to i64              ; 3 uses
  %i.iq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ip), !inline_history !1941 ; 16 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %walRewriteChecksums.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %sqlite3_malloc.exit.i.i.i
  %i.is = load i32, ptr %i.gz, align 4, !tbaa !1645 ; 2 uses
  %i.it = icmp eq i32 %i.is, 1
  %i.iu = add i32 %i.is, -2
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul nuw nsw i64 %i.iv, %i.ip
  %i.ix = add nuw nsw i64 %i.iw, 48
  %.036.i.i.i = select i1 %i.it, i64 24, i64 %i.ix
  %i.iy = load ptr, ptr %i.go, align 8, !tbaa !1811 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !483
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1634
  %i.jc = call i32 %i.jb(ptr noundef nonnull %i.iy, ptr noundef nonnull %i.iq, i32 noundef 8, i64 noundef %.036.i.i.i) #58, !inline_history !1942 ; 2 uses
  %i.jd = load i8, ptr %i.iq, align 1, !tbaa !231
  %i.je = zext i8 %i.jd to i32
  %i.jf = shl nuw i32 %i.je, 24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !231
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 16
  %i.jk = or disjoint i32 %i.jj, %i.jf
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !231
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 8
  %i.jp = or disjoint i32 %i.jk, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !231
  %i.js = zext i8 %i.jr to i32
  %i.jt = or disjoint i32 %i.jp, %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bi, i64 96 ; 6 uses
  store i32 %i.jt, ptr %i.ju, align 8, !tbaa !27
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !231
  %i.jx = zext i8 %i.jw to i32
  %i.jy = shl nuw i32 %i.jx, 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.iq, i64 5
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !231
  %i.kb = zext i8 %i.ka to i32
  %i.kc = shl nuw nsw i32 %i.kb, 16
  %i.kd = or disjoint i32 %i.kc, %i.jy
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iq, i64 6
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !231
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw nsw i32 %i.kg, 8
  %i.ki = or disjoint i32 %i.kd, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.iq, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !231
  %i.kl = zext i8 %i.kk to i32
  %i.km = or disjoint i32 %i.ki, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bi, i64 100 ; 4 uses
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !27
  %i.ko = load i32, ptr %i.gz, align 4, !tbaa !1645 ; 2 uses
  store i32 0, ptr %i.gz, align 4, !tbaa !1645
  %i.kp = icmp eq i32 %i.jc, 0
  %i.kq = icmp ule i32 %i.ko, %.1167273.i.i
  %i.kr = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %i.kr, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae
  %i.ks = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.kw = getelementptr inbounds nuw i8, ptr %i.bi, i64 85
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.lr.ph.i.i.i
  %.03744.i.i.i = phi i32 [ %i.ko, %.lr.ph.i.i.i ], [ %i.mq, %bb.ai ] ; 2 uses
  %i.lf = add i32 %.03744.i.i.i, -1
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nuw nsw i64 %i.lg, %i.ip
  %i.li = add nuw nsw i64 %i.lh, 32               ; 2 uses
  %i.lj = load ptr, ptr %i.go, align 8, !tbaa !1811 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !483
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !1634
  %i.ln = call i32 %i.lm(ptr noundef nonnull %i.lj, ptr noundef nonnull %i.iq, i32 noundef %i.im, i64 noundef %i.li) #58, !inline_history !1942 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ag, label %._crit_edge.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.lp = load <8 x i8>, ptr %i.iq, align 1, !tbaa !231
  store <8 x i8> %i.lp, ptr %i.a, align 16, !tbaa !231
  %i.lq = load i32, ptr %i.gz, align 4, !tbaa !1645
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %5, label %bb.ah

5:                                                ; preds = %bb.ag
  %6 = load i64, ptr %i.kv, align 8
  store i64 %6, ptr %i.ku, align 8
  %7 = load i8, ptr %i.kw, align 1, !tbaa !1860
  %8 = icmp eq i8 %7, 0                           ; 2 uses
  %9 = zext i1 %8 to i32
  %10 = load i32, ptr %i.ju, align 8, !tbaa !27   ; 2 uses
  %11 = load i32, ptr %i.kn, align 4, !tbaa !27   ; 3 uses
  %12 = load i32, ptr %i.a, align 16, !tbaa !27   ; 2 uses
  br i1 %8, label %.preheader96.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %5
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = add i32 %11, %10
  %15 = add i32 %14, %13
  %16 = load i32, ptr %i.kt, align 4, !tbaa !27
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  br label %walChecksumBytes.exit.i.i.i.i

.preheader96.i.i.i.i.i:                           ; preds = %5
  %18 = add i32 %11, %10
  %19 = add i32 %18, %12
  %20 = load i32, ptr %i.kt, align 4, !tbaa !27
  br label %walChecksumBytes.exit.i.i.i.i

walChecksumBytes.exit.i.i.i.i:                    ; preds = %.preheader96.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sink27.i.i.i.i = phi i32 [ %17, %.preheader.i.i.i.i.i ], [ %20, %.preheader96.i.i.i.i.i ]
  %.sink26.i.i.i.i = phi i32 [ %15, %.preheader.i.i.i.i.i ], [ %19, %.preheader96.i.i.i.i.i ] ; 2 uses
  %i.ls = add i32 %.sink27.i.i.i.i, %11
  %i.lt = add i32 %i.ls, %.sink26.i.i.i.i
  store i32 %.sink26.i.i.i.i, ptr %i.ju, align 8, !tbaa !27
  store i32 %i.lt, ptr %i.kn, align 4, !tbaa !27
  %i.lu = load i32, ptr %i.gm, align 8, !tbaa !1841
  call fastcc void @walChecksumBytes(i32 noundef %9, ptr noundef nonnull readonly %i.ks, i32 noundef %i.lu, ptr noundef nonnull %i.ju, ptr noundef nonnull %i.ju), !inline_history !1943
  %i.lv = load i32, ptr %i.ju, align 8, !tbaa !27 ; 4 uses
  %i.lw = lshr i32 %i.lv, 24
  %i.lx = trunc nuw i32 %i.lw to i8
  store i8 %i.lx, ptr %i.kx, align 16, !tbaa !231
  %i.ly = lshr i32 %i.lv, 16
  %i.lz = trunc i32 %i.ly to i8
  store i8 %i.lz, ptr %i.ky, align 1, !tbaa !231
  %i.ma = lshr i32 %i.lv, 8
  %i.mb = trunc i32 %i.ma to i8
  store i8 %i.mb, ptr %i.kz, align 2, !tbaa !231
  %i.mc = trunc i32 %i.lv to i8
  store i8 %i.mc, ptr %i.la, align 1, !tbaa !231
  %i.md = load i32, ptr %i.kn, align 4, !tbaa !27 ; 4 uses
  %i.me = lshr i32 %i.md, 24
  %i.mf = trunc nuw i32 %i.me to i8
  store i8 %i.mf, ptr %i.lb, align 4, !tbaa !231
  %i.mg = lshr i32 %i.md, 16
  %i.mh = trunc i32 %i.mg to i8
  store i8 %i.mh, ptr %i.lc, align 1, !tbaa !231
  %i.mi = lshr i32 %i.md, 8
  %i.mj = trunc i32 %i.mi to i8
  store i8 %i.mj, ptr %i.ld, align 2, !tbaa !231
  %i.mk = trunc i32 %i.md to i8
  store i8 %i.mk, ptr %i.le, align 1, !tbaa !231
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, i8 0, i64 16, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %walChecksumBytes.exit.i.i.i.i
  %i.ml = load ptr, ptr %i.go, align 8, !tbaa !1811 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !483
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !689
  %i.mp = call i32 %i.mo(ptr noundef nonnull %i.ml, ptr noundef nonnull %i.a, i32 noundef 24, i64 noundef %i.li) #58, !inline_history !1944 ; 2 uses
  %i.mq = add i32 %.03744.i.i.i, 1                ; 2 uses
  %i.mr = icmp eq i32 %i.mp, 0
  %i.ms = icmp ule i32 %i.mq, %.1167273.i.i
  %i.mt = and i1 %i.ms, %i.mr
  br i1 %i.mt, label %bb.af, label %._crit_edge.i.i.i, !llvm.loop !1945

._crit_edge.i.i.i:                                ; preds = %bb.ai, %bb.af, %bb.ae
  %.038.lcssa.i.i.i = phi i32 [ %i.jc, %bb.ae ], [ %i.mp, %bb.ai ], [ %i.ln, %bb.af ] ; 2 uses
  %i.mu = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i42.i.i.i = icmp eq i32 %i.mu, 0
  br i1 %.not.i42.i.i.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i.i
  %i.mv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.mw(ptr noundef nonnull %i.mv) #58, !inline_history !1946
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.ak, %bb.aj
  %i.mx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.my = call i32 %i.mx(ptr noundef nonnull %i.iq) #58, !inline_history !1947
  %i.mz = sext i32 %i.my to i64
  %i.na = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.nb = sub nsw i64 %i.na, %i.mz
  store i64 %i.nb, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.nc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.nd = add nsw i64 %i.nc, -1
  store i64 %i.nd, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ne = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ne(ptr noundef nonnull %i.iq) #58, !inline_history !1948
  %i.nf = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i4.i.i.i.i, label %walRewriteChecksums.exit.i.i, label %bb.al

bb.al:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.ng = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ng(ptr noundef nonnull %i.nf) #58, !inline_history !1949
  br label %walRewriteChecksums.exit.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.nh(ptr noundef nonnull %i.iq) #58, !inline_history !1948
  br label %walRewriteChecksums.exit.i.i

walRewriteChecksums.exit.thread.i.i:              ; preds = %sqlite3_malloc.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3WalFrames.exit.thread

walRewriteChecksums.exit.i.i:                     ; preds = %bb.am, %bb.al, %sqlite3_mutex_enter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not215.i.i = icmp eq i32 %.038.lcssa.i.i.i, 0
  br i1 %.not215.i.i, label %.thread283.i.i, label %sqlite3WalFrames.exit.thread

.thread283.i.i:                                   ; preds = %walRewriteChecksums.exit.i.i, %bb.ac
  %i.ni = and i32 %i.bo, 3                        ; 2 uses
  %.not216.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not216.i.i, label %.thread308.i.i, label %bb.an

bb.an:                                            ; preds = %.thread283.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bi, i64 69
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !1886
  %.not217.i.i = icmp eq i8 %i.nk, 0
  br i1 %.not217.i.i, label %sqlite3OsSync.exit237.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nl = load ptr, ptr %i.go, align 8, !tbaa !1811 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !483
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 88
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !1694 ; 2 uses
  %.not.i.i235.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i235.i.i, label %sqlite3SectorSize.exit.i.i, label %sqlite3OsSectorSize.exit.i.i.i

sqlite3OsSectorSize.exit.i.i.i:                   ; preds = %bb.ao
  %i.np = call i32 %i.no(ptr noundef nonnull %i.nl) #58, !inline_history !1950
  %.fr.i.i.i = freeze i32 %i.np                   ; 2 uses
  %i.nq = icmp slt i32 %.fr.i.i.i, 32
  %i.nr = call i32 @llvm.umin.i32(i32 %.fr.i.i.i, i32 65536)
  %spec.select.i.i.i = select i1 %i.nq, i32 512, i32 %i.nr
  %i.ns = zext nneg i32 %spec.select.i.i.i to i64
  br label %sqlite3SectorSize.exit.i.i

sqlite3SectorSize.exit.i.i:                       ; preds = %sqlite3OsSectorSize.exit.i.i.i, %bb.ao
  %i.nt = phi i64 [ 4096, %bb.ao ], [ %i.ns, %sqlite3OsSectorSize.exit.i.i.i ] ; 2 uses
  %i.nu = add nsw i64 %i.nt, %.1155275.i.i
  %.fr218.i.i = freeze i64 %i.nu
  %i.nv = add i64 %.fr218.i.i, -1                 ; 2 uses
  %i.nw = srem i64 %i.nv, %i.nt
  %i.nx = sub nsw i64 %i.nv, %i.nw                ; 4 uses
  store i64 %i.nx, ptr %i.gr, align 8, !tbaa !1937
  %.not313.i.i = icmp eq i64 %i.nx, %.1155275.i.i
  %.not220341.i.i = icmp slt i64 %.1155275.i.i, %i.nx
  br i1 %.not220341.i.i, label %.lr.ph344.i.i, label %._crit_edge345.i.i

.lr.ph344.i.i:                                    ; preds = %sqlite3SectorSize.exit.i.i
  %i.ny = getelementptr i8, ptr %.1163274.i.i, i64 8
  %i.nz = getelementptr i8, ptr %.1163274.i.i, i64 48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph344.i.i
  %.2156343.i.i = phi i64 [ %.1155275.i.i, %.lr.ph344.i.i ], [ %i.ob, %bb.aq ] ; 2 uses
  %.0157342.i.i = phi i32 [ 0, %.lr.ph344.i.i ], [ %i.oc, %bb.aq ]
  %.0162.val.i.i = load ptr, ptr %i.ny, align 8, !tbaa !527
  %.0162.val230.i.i = load i32, ptr %i.nz, align 8, !tbaa !536
  %i.oa = call fastcc i32 @walWriteOneFrame(ptr noundef %4, ptr %.0162.val.i.i, i32 %.0162.val230.i.i, i32 noundef %2, i64 noundef %.2156343.i.i), !inline_history !1924 ; 2 uses
  %.not219.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not219.i.i, label %bb.aq, label %sqlite3WalFrames.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ob = add nsw i64 %.2156343.i.i, %i.gw        ; 2 uses
  %i.oc = add nuw nsw i32 %.0157342.i.i, 1        ; 2 uses
  %.not220.i.i = icmp slt i64 %i.ob, %i.nx
  br i1 %.not220.i.i, label %bb.ap, label %._crit_edge345.i.i, !llvm.loop !1951

._crit_edge345.i.i:                               ; preds = %bb.aq, %sqlite3SectorSize.exit.i.i
  %.0157.lcssa.i.i = phi i32 [ 0, %sqlite3SectorSize.exit.i.i ], [ %i.oc, %bb.aq ] ; 2 uses
  br i1 %.not313.i.i, label %sqlite3OsSync.exit237.i.i, label %.thread308.i.i

sqlite3OsSync.exit237.i.i:                        ; preds = %._crit_edge345.i.i, %bb.an
  %.1158295.i.i = phi i32 [ %.0157.lcssa.i.i, %._crit_edge345.i.i ], [ 0, %bb.an ]
  %i.od = load ptr, ptr %i.gp, align 8, !tbaa !483
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 40
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !745
  %i.og = call i32 %i.of(ptr noundef nonnull %i.gp, i32 noundef range(i32 0, 256) %i.ni) #58, !inline_history !1932
  br label %.thread308.i.i

.thread308.i.i:                                   ; preds = %sqlite3OsSync.exit237.i.i, %._crit_edge345.i.i, %.thread283.i.i
  %.3160312.i.i = phi i32 [ 0, %.thread283.i.i ], [ %.0157.lcssa.i.i, %._crit_edge345.i.i ], [ %.1158295.i.i, %sqlite3OsSync.exit237.i.i ] ; 4 uses
  %.12311.i.i = phi i32 [ 0, %.thread283.i.i ], [ 0, %._crit_edge345.i.i ], [ %i.og, %sqlite3OsSync.exit237.i.i ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bi, i64 67 ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !1646
  %.not222.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not222.i.i, label %.thread303.i.i, label %bb.ar

bb.ar:                                            ; preds = %.thread308.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !1884 ; 2 uses
  %i.ol = icmp sgt i64 %i.ok, -1
  br i1 %i.ol, label %bb.as, label %.thread303.i.i

bb.as:                                            ; preds = %bb.ar
  %i.om = add i32 %.3160312.i.i, %.1167273.i.i
  %i.on = zext i32 %i.om to i64
  %i.oo = mul nsw i64 %i.gw, %i.on
  %i.op = add nsw i64 %i.oo, 32
  %spec.select229.i.i = call i64 @llvm.smax.i64(i64 %i.op, i64 %i.ok)
  call fastcc void @walLimitSize(ptr noundef nonnull %i.bi, i64 noundef %spec.select229.i.i), !inline_history !1924
  store i8 0, ptr %i.oh, align 1, !tbaa !1646
  br label %.thread303.i.i

.thread303.i.i:                                   ; preds = %bb.as, %bb.ar, %.thread308.i.i, %._crit_edge.i.i
  %.3160307.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.3160312.i.i, %bb.as ], [ %.3160312.i.i, %bb.ar ], [ %.3160312.i.i, %.thread308.i.i ] ; 2 uses
  %.12306.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.12311.i.i, %bb.as ], [ %.12311.i.i, %bb.ar ], [ %.12311.i.i, %.thread308.i.i ] ; 2 uses
  %i.oq = load i32, ptr %i.cz, align 8, !tbaa !1799 ; 2 uses
  %i.or = icmp ne ptr %.0..12355, null
  %i.os = icmp eq i32 %.12306.i.i, 0
  %i.ot = select i1 %i.or, i1 %i.os, i1 false
  br i1 %i.ot, label %.lr.ph349.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.au, %.thread303.i.i
  %.13.lcssa.i.i = phi i32 [ %.12306.i.i, %.thread303.i.i ], [ %.14.i.i, %bb.au ] ; 2 uses
  %.2168.lcssa.i.i = phi i32 [ %i.oq, %.thread303.i.i ], [ %.3169.i.i, %bb.au ] ; 2 uses
  %i.ou = icmp eq i32 %.13.lcssa.i.i, 0           ; 2 uses
  %i.ov = icmp sgt i32 %.3160307.i.i, 0
  %i.ow = select i1 %i.ou, i1 %i.ov, i1 false
  br i1 %i.ow, label %.lr.ph354.i.i, label %._crit_edge355.i.i

.lr.ph354.i.i:                                    ; preds = %.preheader.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %.1163274.i.i, i64 48
  br label %bb.av

.lr.ph349.i.i:                                    ; preds = %.thread303.i.i, %bb.au
  %.1165348.i.i = phi ptr [ %i.ph, %bb.au ], [ %.0..12355, %.thread303.i.i ] ; 3 uses
  %.2168347.i.i = phi i32 [ %.3169.i.i, %bb.au ], [ %i.oq, %.thread303.i.i ] ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.1165348.i.i, i64 52
  %i.oz = load i16, ptr %i.oy, align 4, !tbaa !530
  %i.pa = and i16 %i.oz, 64
  %i.pb = icmp eq i16 %i.pa, 0
  br i1 %i.pb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph349.i.i
  %i.pc = add i32 %.2168347.i.i, 1                ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.1165348.i.i, i64 48
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !536
  %i.pf = call fastcc i32 @walIndexAppend(ptr noundef %i.bi, i32 noundef %i.pc, i32 noundef %i.pe), !inline_history !1924
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph349.i.i
  %.14.i.i = phi i32 [ 0, %.lr.ph349.i.i ], [ %i.pf, %bb.at ] ; 2 uses
end_hunk_0
begin_hunk_1_@pager_write_pagelist:bb.a
bb.c:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !534
  %.not45 = icmp eq ptr %i.s, null
  br i1 %.not45, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !536
  %i.v = icmp ugt i32 %i.u, %i.n
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load i64, ptr %i.w, align 8, !tbaa !83
  %i.y = zext i32 %i.p to i64
  %i.z = mul nsw i64 %i.x, %i.y
  store i64 %i.z, ptr %i.a, align 8, !tbaa !21
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !483 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %sqlite3OsFileControlHint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !741
  %i.ae = call i32 %i.ad(ptr noundef nonnull %i.aa, i32 noundef 5, ptr noundef nonnull %i.a) #58, !inline_history !1712 ; 0 uses
  %.pre = load i32, ptr %i.o, align 8, !tbaa !684
  br label %sqlite3OsFileControlHint.exit

sqlite3OsFileControlHint.exit:                    ; preds = %bb.e, %bb.f
  %i.af = phi i32 [ %i.p, %bb.e ], [ %.pre, %bb.f ]
  store i32 %i.af, ptr %i.m, align 4, !tbaa !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.g

bb.g:                                             ; preds = %sqlite3OsFileControlHint.exit, %bb.d, %.thread
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %sqlite3BackupUpdate.exit
  %.04251 = phi ptr [ %1, %.lr.ph ], [ %i.de, %sqlite3BackupUpdate.exit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04251, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !536 ; 6 uses
  %i.ao = load i32, ptr %i.ag, align 8, !tbaa !684
  %.not46 = icmp ugt i32 %i.an, %i.ao
  br i1 %.not46, label %sqlite3BackupUpdate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.04251, i64 52
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !530
  %i.ar = and i16 %i.aq, 16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.j, label %sqlite3BackupUpdate.exit

bb.j:                                             ; preds = %bb.i
  %i.at = add i32 %i.an, -1
  %i.au = zext i32 %i.at to i64
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %i.aw = mul nsw i64 %i.av, %i.au
  %i.ax = icmp eq i32 %i.an, 1                    ; 2 uses
  br i1 %i.ax, label %pager_write_changecounter.exit, label %bb.k

pager_write_changecounter.exit:                   ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.04251, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !531 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !231
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw i32 %i.bc, 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 137
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !231
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 16
  %i.bi = or disjoint i32 %i.bh, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 138
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !231
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 139
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !231
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bn, %i.bq
  %i.bs = add i32 %i.br, 1                        ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !527 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = lshr i32 %i.bs, 24
  %i.bx = trunc nuw i32 %i.bw to i8               ; 2 uses
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !231
  %i.by = lshr i32 %i.bs, 16
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !231
  %i.cb = lshr i32 %i.bs, 8
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !231
  %i.ce = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !231
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !527 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 %i.bx, ptr %i.ch, align 1, !tbaa !231
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93
  store i8 %i.bz, ptr %i.ci, align 1, !tbaa !231
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 94
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 95
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !231
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !527
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <4 x i8> <i8 0, i8 46, i8 -107, i8 -52>, ptr %i.cm, align 1, !tbaa !231
  %.pre53 = load i64, ptr %i.ah, align 8, !tbaa !83
  br label %bb.k

bb.k:                                             ; preds = %pager_write_changecounter.exit, %bb.j
  %i.cn = phi i64 [ %.pre53, %pager_write_changecounter.exit ], [ %i.av, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !527 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !483
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !689
  %i.cv = call i32 %i.cu(ptr noundef nonnull %i.cq, ptr noundef %i.cp, i32 noundef %i.cr, i64 noundef %i.aw) #58, !inline_history !690 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !739
  %i.cy = icmp ugt i32 %i.an, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !739
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load i32, ptr %i.ak, align 8, !tbaa !27
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ak, align 8, !tbaa !27
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !737 ; 2 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %sqlite3BackupUpdate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !527
  call fastcc void @backupUpdate(ptr noundef %i.db, i32 noundef %i.an, ptr noundef readonly %i.dc), !inline_history !1715
  br label %sqlite3BackupUpdate.exit

sqlite3BackupUpdate.exit:                         ; preds = %bb.p, %bb.o, %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04251, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !534 ; 2 uses
  %i.df = icmp eq i32 %.2, 0
  %i.dg = icmp ne ptr %i.de, null
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !1964

._crit_edge:                                      ; preds = %sqlite3BackupUpdate.exit, %bb.b, %bb.g
  %.1.lcssa = phi i32 [ 0, %bb.g ], [ %i.k, %bb.b ], [ %.2, %sqlite3BackupUpdate.exit ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walWriteOneFrame(ptr nofree noundef nonnull readonly captures(none) %0, ptr %.8.val, i32 %.48.val, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr %0, align 8, !tbaa !1934   ; 6 uses
  %i.c = lshr i32 %.48.val, 24
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !231
  %i.e = lshr i32 %.48.val, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !231
  %i.h = lshr i32 %.48.val, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !231
  %i.k = trunc i32 %.48.val to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.m, align 4, !tbaa !231
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !231
  %i.s = lshr i32 %1, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !231
  %i.v = trunc i32 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !231
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1645
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %3, label %bb.b

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %5, align 8
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  %9 = load i8, ptr %8, align 1, !tbaa !1860
  %10 = icmp eq i8 %9, 0                          ; 2 uses
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr %4, align 8, !tbaa !27      ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %14 = load i32, ptr %13, align 4, !tbaa !27     ; 3 uses
  %15 = load i32, ptr %i.a, align 16, !tbaa !27   ; 2 uses
  br i1 %10, label %.preheader96.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %3
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = add i32 %14, %12
  %18 = add i32 %17, %16
  %19 = load i32, ptr %i.m, align 4, !tbaa !27
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  br label %walChecksumBytes.exit.i

.preheader96.i.i:                                 ; preds = %3
  %21 = add i32 %14, %12
  %22 = add i32 %21, %15
  %23 = load i32, ptr %i.m, align 4, !tbaa !27
  br label %walChecksumBytes.exit.i

walChecksumBytes.exit.i:                          ; preds = %.preheader96.i.i, %.preheader.i.i
  %.sink27.i = phi i32 [ %20, %.preheader.i.i ], [ %23, %.preheader96.i.i ]
  %.sink26.i = phi i32 [ %18, %.preheader.i.i ], [ %22, %.preheader96.i.i ] ; 2 uses
  %i.aa = add i32 %.sink27.i, %14
  %i.ab = add i32 %i.aa, %.sink26.i
  store i32 %.sink26.i, ptr %4, align 8, !tbaa !27
  store i32 %i.ab, ptr %13, align 4, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1841
  tail call fastcc void @walChecksumBytes(i32 noundef %11, ptr noundef readonly %.8.val, i32 noundef %i.ad, ptr noundef nonnull %4, ptr noundef nonnull %4)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = load i32, ptr %4, align 8, !tbaa !27    ; 4 uses
  %i.ag = lshr i32 %i.af, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  store i8 %i.ah, ptr %i.ae, align 16, !tbaa !231
  %i.ai = lshr i32 %i.af, 16
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !231
  %i.al = lshr i32 %i.af, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.am, ptr %i.an, align 2, !tbaa !231
  %i.ao = trunc i32 %i.af to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !231
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ar = load i32, ptr %13, align 4, !tbaa !27   ; 4 uses
  %i.as = lshr i32 %i.ar, 24
  %i.at = trunc nuw i32 %i.as to i8
  store i8 %i.at, ptr %i.aq, align 4, !tbaa !231
  %i.au = lshr i32 %i.ar, 16
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !231
  %i.ax = lshr i32 %i.ar, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !231
  %i.ba = trunc i32 %i.ar to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !231
  br label %walEncodeFrame.exit

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %walEncodeFrame.exit

walEncodeFrame.exit:                              ; preds = %walChecksumBytes.exit.i, %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !1937 ; 3 uses
  %i.bf = icmp sge i64 %2, %i.be
  %i.bg = add i64 %2, 24                          ; 7 uses
  %.not.i = icmp slt i64 %i.bg, %i.be
  %or.cond = or i1 %i.bf, %.not.i
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %walEncodeFrame.exit
  %i.bh = sub nsw i64 %i.be, %2                   ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1936 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !483
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !689
  %i.bo = call i32 %i.bn(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a, i32 noundef %i.bi, i64 noundef %2) #58, !inline_history !1965 ; 2 uses
  %.not43.i = icmp eq i32 %i.bo, 0
  br i1 %.not43.i, label %bb.d, label %walWriteToLog.exit24

bb.d:                                             ; preds = %bb.c
  %sext.i = shl i64 %i.bh, 32
  %i.bp = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.bq = add nsw i64 %i.bp, %2
  %i.br = sub nsw i32 24, %i.bi
  %i.bs = getelementptr inbounds i8, ptr %i.a, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1938
  %i.bv = and i32 %i.bu, 3                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !1936 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !483
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !745
  %i.ca = call i32 %i.bz(ptr noundef nonnull %i.bw, i32 noundef range(i32 0, 256) %i.bv) #58, !inline_history !1966
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cb = phi i32 [ %i.ca, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  %i.cc = icmp ne i32 %i.bi, 24
  %i.cd = icmp eq i32 %i.cb, 0
  %or.cond.not.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond.not.i, label %bb.g, label %walWriteToLog.exit

bb.g:                                             ; preds = %bb.f, %walEncodeFrame.exit
  %.135.i = phi ptr [ %i.bs, %bb.f ], [ %i.a, %walEncodeFrame.exit ]
  %.133.i = phi i32 [ %i.br, %bb.f ], [ 24, %walEncodeFrame.exit ]
  %.1.i = phi i64 [ %i.bq, %bb.f ], [ %2, %walEncodeFrame.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1936 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !483
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !689
  %i.cj = call i32 %i.ci(ptr noundef nonnull %i.cf, ptr noundef nonnull %.135.i, i32 noundef %.133.i, i64 noundef %.1.i) #58, !inline_history !1965
  br label %walWriteToLog.exit

walWriteToLog.exit:                               ; preds = %bb.f, %bb.g
  %.137.i = phi i32 [ %i.cj, %bb.g ], [ %i.cb, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.137.i, 0
  br i1 %.not, label %bb.h, label %walWriteToLog.exit24

bb.h:                                             ; preds = %walWriteToLog.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1939 ; 3 uses
  %i.cm = load i64, ptr %i.bd, align 8, !tbaa !1937 ; 3 uses
  %i.cn = icmp sge i64 %i.bg, %i.cm
  %i.co = sext i32 %i.cl to i64
  %i.cp = add nsw i64 %i.bg, %i.co
  %.not.i19 = icmp slt i64 %i.cp, %i.cm
  %or.cond4 = select i1 %i.cn, i1 true, i1 %.not.i19
  br i1 %or.cond4, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = sub nsw i64 %i.cm, %i.bg                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1936 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !483
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !689
  %i.cx = call i32 %i.cw(ptr noundef nonnull %i.ct, ptr noundef %.8.val, i32 noundef %i.cr, i64 noundef %i.bg) #58, !inline_history !1965 ; 2 uses
  %.not43.i20 = icmp eq i32 %i.cx, 0
  br i1 %.not43.i20, label %bb.j, label %walWriteToLog.exit24

bb.j:                                             ; preds = %bb.i
  %sext.i21 = shl i64 %i.cq, 32
  %i.cy = ashr exact i64 %sext.i21, 32            ; 2 uses
  %i.cz = add nsw i64 %i.cy, %i.bg
  %i.da = sub nsw i32 %i.cl, %i.cr                ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.8.val, i64 %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !1938
  %i.de = and i32 %i.dd, 3                        ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = load ptr, ptr %i.cs, align 8, !tbaa !1936 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !483
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !745
  %i.dj = call i32 %i.di(ptr noundef nonnull %i.df, i32 noundef range(i32 0, 256) %i.de) #58, !inline_history !1966
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dk = phi i32 [ %i.dj, %bb.k ], [ 0, %bb.j ]  ; 2 uses
  %i.dl = icmp ne i32 %i.da, 0
  %i.dm = icmp eq i32 %i.dk, 0
  %or.cond.not.i23 = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond.not.i23, label %bb.m, label %walWriteToLog.exit24

bb.m:                                             ; preds = %bb.l, %bb.h
  %.135.i15 = phi ptr [ %i.db, %bb.l ], [ %.8.val, %bb.h ]
  %.133.i16 = phi i32 [ %i.da, %bb.l ], [ %i.cl, %bb.h ]
  %.1.i17 = phi i64 [ %i.cz, %bb.l ], [ %i.bg, %bb.h ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1936 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !483
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !689
  %i.ds = call i32 %i.dr(ptr noundef nonnull %i.do, ptr noundef %.135.i15, i32 noundef %.133.i16, i64 noundef %.1.i17) #58, !inline_history !1965
  br label %walWriteToLog.exit24

walWriteToLog.exit24:                             ; preds = %bb.c, %bb.m, %bb.l, %bb.i, %walWriteToLog.exit
  %.0 = phi i32 [ %i.cx, %bb.i ], [ %.137.i, %walWriteToLog.exit ], [ %i.ds, %bb.m ], [ %i.dk, %bb.l ], [ %i.bo, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walLimitSize(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1236 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b() #58, !inline_history !1238
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1811 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !483
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !692
  %i.h = call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #58, !inline_history !1658 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !21
  %i.k = icmp sgt i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1811 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !483
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !694
  %i.p = call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #58, !inline_history !1711
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %sqlite3BeginBenignMalloc.exit
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.h, %sqlite3BeginBenignMalloc.exit ] ; 2 uses
  %i.q = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1239 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %sqlite3EndBenignMalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.q() #58, !inline_history !1240
  br label %sqlite3EndBenignMalloc.exit

end_hunk_1
