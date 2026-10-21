Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes_cbc_hmac_sha256?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_ctrl:bb.a
bb.av:                                            ; preds = %bb.av, %.lr.ph.i
  %i.ib = phi ptr [ %i.go, %.lr.ph.i ], [ %i.ic, %bb.av ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.av ] ; 3 uses
  %.pn374.i = phi ptr [ %7, %.lr.ph.i ], [ %.0359.i, %bb.av ]
  %.0359.i = getelementptr inbounds nuw i8, ptr %.pn374.i, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ic, ptr %i.id, align 16, !tbaa !54
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 4 uses
  store ptr %i.ic, ptr %i.ie, align 8, !tbaa !56
  %i.if = getelementptr i8, ptr %i.ie, i64 -32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !57
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !57
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ij, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph378.split.i, label %bb.av, !llvm.loop !38

.lr.ph378.split.i:                                ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.im = load i64, ptr %i.il, align 4            ; 2 uses
  store i64 %i.im, ptr %7, align 16
  %i.in = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.im) #6, !srcloc !58 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !10 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !10 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 476
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !10 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !10 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 484
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !10 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !10 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.hc, i64 160 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !10 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hc, i64 192 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !10 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hc, i64 224 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 516
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 517
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.jo = add nsw i64 %wide.trip.count.i, -2
  %i.jp = lshr i32 %.0351.i, 8
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = trunc i32 %.0351.i to i8
  %i.js = add i32 %.0351.i, -51
  %i.jt = lshr i32 %i.js, 6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph378.split.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph378.split.i ], [ %indvars.iv.next415.i, %bb.aw ] ; 14 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv414.i
  store i32 %i.ip, ptr %i.ju, align 4, !tbaa !10
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv414.i
  store i32 %i.ir, ptr %i.jv, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv414.i
  store i32 %i.iu, ptr %i.jw, align 4, !tbaa !10
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv414.i
  store i32 %i.ix, ptr %i.jx, align 4, !tbaa !10
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv414.i
  store i32 %i.ja, ptr %i.jy, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv414.i
  store i32 %i.jd, ptr %i.jz, align 4, !tbaa !10
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv414.i
  store i32 %i.jg, ptr %i.ka, align 4, !tbaa !10
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv414.i
  store i32 %i.jj, ptr %i.kb, align 4, !tbaa !10
  %i.kc = add i64 %indvars.iv414.i, %i.in
  %i.kd = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.kc) #6, !srcloc !59
  %i.ke = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv414.i ; 8 uses
  store i64 %i.kd, ptr %i.ke, align 16, !tbaa !11
  %i.kf = load i8, ptr %i.jl, align 4, !tbaa !11  ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i8 %i.kf, ptr %i.kg, align 8, !tbaa !11
  %i.kh = load i8, ptr %i.jm, align 1, !tbaa !11  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 9
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !11
  %i.kj = load i8, ptr %i.jn, align 2, !tbaa !11  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 10
  store i8 %i.kj, ptr %i.kk, align 2, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 11
  store i8 %i.jq, ptr %i.kl, align 1, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i8 %i.jr, ptr %i.km, align 4, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 13
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv414.i ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 16, !tbaa !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.kn, ptr noundef nonnull align 1 dereferenceable(51) %i.kp, i64 51, i1 false)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 51
  store ptr %i.kq, ptr %i.ko, align 16, !tbaa !54
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %i.jt, ptr %i.kr, align 8, !tbaa !60
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv414.i ; 2 uses
  store ptr %i.ke, ptr %i.ks, align 16, !tbaa !54
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 1, ptr %i.kt, align 8, !tbaa !60
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 13 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv414.i, %i.jo
  br i1 %exitcond418.not.i, label %._crit_edge379.loopexit.peel.begin.i, label %bb.aw, !llvm.loop !39

._crit_edge379.loopexit.peel.begin.i:             ; preds = %bb.aw
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next415.i
  store i32 %i.ip, ptr %i.ku, align 4, !tbaa !10
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next415.i
  store i32 %i.ir, ptr %i.kv, align 4, !tbaa !10
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next415.i
  store i32 %i.iu, ptr %i.kw, align 4, !tbaa !10
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.next415.i
  store i32 %i.ix, ptr %i.kx, align 4, !tbaa !10
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next415.i
  store i32 %i.ja, ptr %i.ky, align 4, !tbaa !10
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.next415.i
  store i32 %i.jd, ptr %i.kz, align 4, !tbaa !10
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next415.i
  store i32 %i.jg, ptr %i.la, align 4, !tbaa !10
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next415.i
  store i32 %i.jj, ptr %i.lb, align 4, !tbaa !10
  %i.lc = add i64 %indvars.iv.next415.i, %i.in
  %i.ld = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.lc) #6, !srcloc !59
  %i.le = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv.next415.i ; 8 uses
  store i64 %i.ld, ptr %i.le, align 16, !tbaa !11
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i8 %i.kf, ptr %i.lf, align 8, !tbaa !11
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 9
  store i8 %i.kh, ptr %i.lg, align 1, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 10
  store i8 %i.kj, ptr %i.lh, align 2, !tbaa !11
  %i.li = lshr i32 %.0352.i, 8
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 11
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !11
  %i.ll = trunc i32 %.0352.i to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  store i8 %i.ll, ptr %i.lm, align 4, !tbaa !11
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 13
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next415.i ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 16, !tbaa !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ln, ptr noundef nonnull align 1 dereferenceable(51) %i.lp, i64 51, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 51
  store ptr %i.lq, ptr %i.lo, align 16, !tbaa !54
  %i.lr = add i32 %.0352.i, -51
  %i.ls = lshr i32 %i.lr, 6
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !60
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next415.i ; 2 uses
  store ptr %i.le, ptr %i.lu, align 16, !tbaa !54
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i32 1, ptr %i.lv, align 8, !tbaa !60
  br label %._crit_edge379.i

._crit_edge379.i:                                 ; preds = %._crit_edge379.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.lw = call i32 @llvm.umin.i32(i32 %.0351.i, i32 %.0352.i)
  %i.lx = add i32 %i.lw, -51                      ; 2 uses
  %i.ly = lshr i32 %i.lx, 6                       ; 2 uses
  %i.lz = icmp ugt i32 %i.lx, 2111
  br i1 %i.lz, label %.preheader373.i, label %.loopexit.i

.preheader373.i:                                  ; preds = %._crit_edge379.i
  br i1 %.not402.i, label %.preheader.split.i, label %.lr.ph381.preheader.i

.lr.ph381.preheader.i:                            ; preds = %.preheader373.i
  %wide.trip.count422.i = zext i32 %i.gu to i64   ; 2 uses
  br label %.lr.ph381.i

.lr.ph384.us.i:                                   ; preds = %.lr.ph381.i, %._crit_edge385.us.i
  %.0356.us.i = phi i32 [ %i.mn, %._crit_edge385.us.i ], [ 0, %.lr.ph381.i ]
  %.0355.us.i = phi i32 [ %i.mo, %._crit_edge385.us.i ], [ %i.ly, %.lr.ph381.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph384.us.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph384.us.i ], [ %indvars.iv.next425.i, %bb.ax ] ; 4 uses
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv424.i ; 3 uses
  %i.mb = load ptr, ptr %i.ma, align 16, !tbaa !54
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 2048 ; 2 uses
  store ptr %i.mc, ptr %i.ma, align 16, !tbaa !54
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.mc, ptr %i.md, align 16, !tbaa !54
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !60
  %i.mg = add nsw i32 %i.mf, -32
  store i32 %i.mg, ptr %i.me, align 8, !tbaa !60
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i32 32, ptr %i.mh, align 8, !tbaa !60
  %i.mi = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv424.i ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %8 = load ptr, ptr %i.mj, align 8, !tbaa !57
  %9 = load <2 x ptr>, ptr %i.mi, align 8, !tbaa !62
  %10 = getelementptr inbounds nuw i8, <2 x ptr> %9, i64 2048
  store <2 x ptr> %10, ptr %i.mi, align 8, !tbaa !62
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store i32 128, ptr %i.mk, align 8, !tbaa !63
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, ptr noundef nonnull align 1 dereferenceable(16) %i.mm, i64 16, i1 false)
  %indvars.iv.next425.i = add nuw nsw i64 %indvars.iv424.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next425.i, %wide.trip.count422.i
  br i1 %exitcond428.not.i, label %._crit_edge385.us.i, label %bb.ax, !llvm.loop !40

._crit_edge385.us.i:                              ; preds = %bb.ax
  %i.mn = add i32 %.0356.us.i, 2048               ; 2 uses
  %i.mo = add nsw i32 %.0355.us.i, -32            ; 2 uses
  %i.mp = icmp ugt i32 %i.mo, 32
  br i1 %i.mp, label %.lr.ph384.us.i, label %.loopexit.i, !llvm.loop !41

.lr.ph381.i:                                      ; preds = %.lr.ph381.i, %.lr.ph381.preheader.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph381.preheader.i ], [ %indvars.iv.next420.i.1, %.lr.ph381.i ] ; 5 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv419.i
  %i.mr = load ptr, ptr %i.mq, align 16, !tbaa !54
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.mr, ptr %i.ms, align 16, !tbaa !54
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i32 32, ptr %i.mt, align 8, !tbaa !60
  %i.mu = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv419.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store i32 128, ptr %i.mv, align 16, !tbaa !63
  %indvars.iv.next420.i = or disjoint i64 %indvars.iv419.i, 1 ; 3 uses
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next420.i
  %i.mx = load ptr, ptr %i.mw, align 16, !tbaa !54
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.mx, ptr %i.my, align 16, !tbaa !54
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i32 32, ptr %i.mz, align 8, !tbaa !60
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next420.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i32 128, ptr %i.nb, align 8, !tbaa !63
  %indvars.iv.next420.i.1 = add nuw nsw i64 %indvars.iv419.i, 2 ; 2 uses
  %exitcond423.not.i.1 = icmp eq i64 %indvars.iv.next420.i.1, %wide.trip.count422.i
  br i1 %exitcond423.not.i.1, label %.lr.ph384.us.i, label %.lr.ph381.i, !llvm.loop !42

.preheader.split.i:                               ; preds = %.preheader373.i, %.preheader.split.i
  %.0355.i = phi i32 [ %i.nc, %.preheader.split.i ], [ %i.ly, %.preheader373.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #5
  %i.nc = add nsw i32 %.0355.i, -32               ; 2 uses
  %i.nd = icmp ugt i32 %i.nc, 32
  br i1 %i.nd, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !41

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge389.thread.i

.loopexit.i:                                      ; preds = %._crit_edge385.us.i, %._crit_edge379.i
  %.1357.i = phi i32 [ 0, %._crit_edge379.i ], [ %i.mn, %._crit_edge385.us.i ] ; 6 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not402.i, label %._crit_edge389.thread.i, label %.lr.ph388.split.i

.lr.ph388.split.i:                                ; preds = %.loopexit.i
  %i.ne = add nsw i32 %i.gu, -1
  %i.nf = zext i32 %i.ne to i64                   ; 2 uses
  %wide.trip.count432.i = zext i32 %i.gu to i64   ; 2 uses
  %i.ng = add nsw i64 %wide.trip.count432.i, -1   ; 15 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph388.split.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph388.split.i ], [ %indvars.iv.next430.i, %bb.ay ] ; 5 uses
  %i.nh = icmp eq i64 %indvars.iv429.i, %i.nf
  %i.ni = select i1 %i.nh, i32 %.0352.i, i32 %.0351.i ; 2 uses
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv429.i ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !60
  %i.nm = shl nsw i32 %i.nl, 6                    ; 2 uses
  %i.nn = load ptr, ptr %i.nj, align 16, !tbaa !54
  %i.no = zext i32 %i.nm to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.no
  %i.nq = add i32 %i.ni, -51
  %i.nr = add i32 %.1357.i, %i.nm
  %i.ns = sub i32 %i.nq, %i.nr                    ; 2 uses
  %i.nt = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv429.i ; 4 uses
  %i.nu = zext i32 %i.ns to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nt, ptr align 1 %i.np, i64 %i.nu, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  store i8 -128, ptr %i.nv, align 1, !tbaa !11
  %i.nw = shl i32 %i.ni, 3
  %i.nx = add i32 %i.nw, 616
  %i.ny = icmp ult i32 %i.ns, 56                  ; 2 uses
  %i.nz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nx) #6
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv429.i ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %.472.i = select i1 %i.ny, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ny, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.nt, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.nz, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.472.i, ptr %i.ob, align 8, !tbaa !60
  store ptr %i.nt, ptr %i.oa, align 16, !tbaa !54
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %i.ng
  br i1 %exitcond433.not.i, label %._crit_edge389.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !43

._crit_edge389.loopexit.peel.begin.i:             ; preds = %bb.ay
  %i.oc = icmp eq i64 %i.ng, %i.nf
  %i.od = select i1 %i.oc, i32 %.0352.i, i32 %.0351.i ; 7 uses
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ng ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load i32, ptr %i.of, align 8, !tbaa !60
  %i.oh = shl nsw i32 %i.og, 6                    ; 2 uses
  %i.oi = load ptr, ptr %i.oe, align 16, !tbaa !54
  %i.oj = zext i32 %i.oh to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oj
  %.neg183 = add i32 %i.od, -51
  %i.ol = add i32 %.1357.i, %i.oh
  %i.om = sub i32 %.neg183, %i.ol                 ; 2 uses
  %i.on = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %i.ng ; 4 uses
  %i.oo = zext i32 %i.om to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.on, ptr align 1 %i.ok, i64 %i.oo, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oo
  store i8 -128, ptr %i.op, align 1, !tbaa !11
  %i.oq = shl i32 %i.od, 3
  %i.or = add i32 %i.oq, 616
  %i.os = icmp ult i32 %i.om, 56                  ; 2 uses
  %i.ot = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.or) #6
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ng ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %.474.i = select i1 %i.os, i32 1, i32 2
  %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.os, i64 60, i64 124
  %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.on, i64 %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.ot, ptr %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.474.i, ptr %i.ov, align 8, !tbaa !60
  store ptr %i.on, ptr %i.ou, align 16, !tbaa !54
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.ox = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.oz = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.c, i64 364
  %i.pb = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.pd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.c, i64 372
  %i.pf = getelementptr inbounds nuw i8, ptr %i.hc, i64 160 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.ph = getelementptr inbounds nuw i8, ptr %i.hc, i64 192 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.pj = getelementptr inbounds nuw i8, ptr %i.hc, i64 224 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  br label %bb.az

._crit_edge389.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %._crit_edge401.i

bb.az:                                            ; preds = %bb.az, %._crit_edge389.loopexit.peel.begin.i
  %indvars.iv436.i = phi i64 [ 0, %._crit_edge389.loopexit.peel.begin.i ], [ %indvars.iv.next437.i, %bb.az ] ; 11 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv436.i ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !10
  %i.pn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pm) #6, !srcloc !64
  %i.po = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv436.i ; 11 uses
  store i32 %i.pn, ptr %i.po, align 16, !tbaa !11
  %i.pp = load i32, ptr %i.ow, align 4, !tbaa !10
  store i32 %i.pp, ptr %i.pl, align 4, !tbaa !10
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv436.i ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !10
  %i.ps = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pr) #6, !srcloc !65
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  store i32 %i.ps, ptr %i.pt, align 4, !tbaa !11
  %i.pu = load i32, ptr %i.oy, align 4, !tbaa !10
  store i32 %i.pu, ptr %i.pq, align 4, !tbaa !10
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv436.i ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !10
  %i.px = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pw) #6, !srcloc !66
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store i32 %i.px, ptr %i.py, align 8, !tbaa !11
  %i.pz = load i32, ptr %i.pa, align 4, !tbaa !10
  store i32 %i.pz, ptr %i.pv, align 4, !tbaa !10
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv436.i ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !10
  %i.qc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qb) #6, !srcloc !67
  %i.qd = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  store i32 %i.qc, ptr %i.qd, align 4, !tbaa !11
  %i.qe = load i32, ptr %i.pc, align 4, !tbaa !10
  store i32 %i.qe, ptr %i.qa, align 4, !tbaa !10
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %indvars.iv436.i ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !10
  %i.qh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qg) #6, !srcloc !68
  %i.qi = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store i32 %i.qh, ptr %i.qi, align 16, !tbaa !11
  %i.qj = load i32, ptr %i.pe, align 4, !tbaa !10
  store i32 %i.qj, ptr %i.qf, align 4, !tbaa !10
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv436.i ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !10
  %i.qm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ql) #6, !srcloc !69
  %i.qn = getelementptr inbounds nuw i8, ptr %i.po, i64 20
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !11
  %i.qo = load i32, ptr %i.pg, align 4, !tbaa !10
  store i32 %i.qo, ptr %i.qk, align 4, !tbaa !10
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv436.i ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !10
  %i.qr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qq) #6, !srcloc !70
  %i.qs = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  store i32 %i.qr, ptr %i.qs, align 8, !tbaa !11
  %i.qt = load i32, ptr %i.pi, align 4, !tbaa !10
  store i32 %i.qt, ptr %i.qp, align 4, !tbaa !10
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv436.i ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !10
  %i.qw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qv) #6, !srcloc !71
  %i.qx = getelementptr inbounds nuw i8, ptr %i.po, i64 28
  store i32 %i.qw, ptr %i.qx, align 4, !tbaa !11
  %i.qy = load i32, ptr %i.pk, align 4, !tbaa !10
  store i32 %i.qy, ptr %i.qu, align 4, !tbaa !10
  %i.qz = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  store i8 -128, ptr %i.qz, align 16, !tbaa !11
  %i.ra = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #6, !srcloc !72
  %i.rb = getelementptr inbounds nuw i8, ptr %i.po, i64 60
  store i32 %i.ra, ptr %i.rb, align 4, !tbaa !11
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv436.i ; 2 uses
  store ptr %i.po, ptr %i.rc, align 16, !tbaa !54
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i32 1, ptr %i.rd, align 8, !tbaa !60
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond440.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count432.i
  br i1 %exitcond440.not.i, label %.lr.ph400.split.i, label %bb.az, !llvm.loop !44

.lr.ph400.split.i:                                ; preds = %bb.az
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.re = getelementptr inbounds nuw i8, ptr %i.c, i64 516 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.c, i64 517 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.c, i64 518 ; 2 uses
  %i.rh = sub i32 %.0351.i, %.1357.i
  %i.ri = zext i32 %i.rh to i64
  %i.rj = add nuw i32 %.0351.i, 21
  %i.rk = zext i32 %i.rj to i64                   ; 2 uses
  %i.rl = trunc i32 %.0351.i to i8
  %i.rm = and i8 %i.rl, 15
  %i.rn = xor i8 %i.rm, 15
  %i.ro = and i32 %.0351.i, 15
  %i.rp = xor i32 %i.ro, 15
  %i.rq = zext nneg i32 %i.rp to i64              ; 2 uses
  %i.rr = add nuw nsw i64 %i.rq, 1
  %i.rs = and i32 %.0351.i, -16                   ; 3 uses
  %reass.sub = sub i32 %i.rs, %.1357.i
  %.reass.i = add i32 %reass.sub, 48
  %i.rt = lshr i32 %.reass.i, 4
  %i.ru = add nuw i32 %i.rs, 64                   ; 2 uses
  %i.rv = lshr i32 %i.ru, 8
  %i.rw = trunc i32 %i.rv to i8
  %i.rx = trunc i32 %i.ru to i8
  %invariant.op = add nuw i32 %i.rs, 69
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph400.split.i
  %indvars.iv442.i = phi i64 [ 0, %.lr.ph400.split.i ], [ %indvars.iv.next443.i, %bb.ba ] ; 10 uses
  %.0349398.i = phi ptr [ %i.gm, %.lr.ph400.split.i ], [ %scevgep441.i, %bb.ba ] ; 7 uses
  %.0358396.i = phi i32 [ 0, %.lr.ph400.split.i ], [ %.reass, %bb.ba ]
  %i.ry = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv442.i ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !57
  %i.sb = load ptr, ptr %i.ry, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sa, ptr align 1 %i.sb, i64 %i.ri, i1 false)
  %i.sc = load ptr, ptr %i.rz, align 8, !tbaa !57
  store ptr %i.sc, ptr %i.ry, align 8, !tbaa !56
  %i.sd = getelementptr i8, ptr %.0349398.i, i64 %i.rk ; 9 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv442.i
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !10
  %i.sg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sf) #6, !srcloc !73
  store i32 %i.sg, ptr %i.sd, align 4, !tbaa !10
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv442.i
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !10
  %i.sj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.si) #6, !srcloc !74
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  store i32 %i.sj, ptr %i.sk, align 4, !tbaa !10
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv442.i
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !10
  %i.sn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sm) #6, !srcloc !75
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  store i32 %i.sn, ptr %i.so, align 4, !tbaa !10
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv442.i
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !10
  %i.sr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sq) #6, !srcloc !76
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sd, i64 12
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !10
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %indvars.iv442.i
  %i.su = load i32, ptr %i.st, align 4, !tbaa !10
  %i.sv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.su) #6, !srcloc !77
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store i32 %i.sv, ptr %i.sw, align 4, !tbaa !10
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv442.i
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !10
  %i.sz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sy) #6, !srcloc !78
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sd, i64 20
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !10
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv442.i
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !10
  %i.td = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.tc) #6, !srcloc !79
  %i.te = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  store i32 %i.td, ptr %i.te, align 4, !tbaa !10
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv442.i
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !10
  %i.th = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.tg) #6, !srcloc !80
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sd, i64 28
  store i32 %i.th, ptr %i.ti, align 4, !tbaa !10
  %i.tj = getelementptr i8, ptr %i.sd, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.tj, i8 %i.rn, i64 %i.rr, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.0349398.i, i64 33
  %i.tk = getelementptr i8, ptr %scevgep.i, i64 %i.rk
  %scevgep441.i = getelementptr i8, ptr %i.tk, i64 %i.rq ; 7 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i32 %i.rt, ptr %i.tl, align 8, !tbaa !63
  %i.tm = load i8, ptr %i.re, align 4, !tbaa !11
  store i8 %i.tm, ptr %.0349398.i, align 1, !tbaa !11
  %i.tn = load i8, ptr %i.rf, align 1, !tbaa !11
  %i.to = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 1
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !11
  %i.tp = load i8, ptr %i.rg, align 2, !tbaa !11
  %i.tq = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 2
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !11
  %i.tr = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 3
  store i8 %i.rw, ptr %i.tr, align 1, !tbaa !11
  %i.ts = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 4
  store i8 %i.rx, ptr %i.ts, align 1, !tbaa !11
  %.reass = add i32 %.0358396.i, %invariant.op    ; 2 uses
  %indvars.iv.next443.i = add nuw nsw i64 %indvars.iv442.i, 1 ; 2 uses
  %exitcond446.not.i = icmp eq i64 %indvars.iv.next443.i, %i.ng
  br i1 %exitcond446.not.i, label %._crit_edge401.loopexit.peel.begin.i, label %bb.ba, !llvm.loop !45

._crit_edge401.loopexit.peel.begin.i:             ; preds = %bb.ba
  %i.tt = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.ng ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 16, !tbaa !57
  %i.tw = load ptr, ptr %i.tt, align 8, !tbaa !56
  %i.tx = sub i32 %i.od, %.1357.i
  %i.ty = zext i32 %i.tx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tv, ptr align 1 %i.tw, i64 %i.ty, i1 false)
  %i.tz = load ptr, ptr %i.tu, align 16, !tbaa !57
  store ptr %i.tz, ptr %i.tt, align 8, !tbaa !56
  %i.ua = add i32 %i.od, 21
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr i8, ptr %scevgep441.i, i64 %i.ub ; 9 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ng
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !10
  %i.uf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ue) #6, !srcloc !73
  store i32 %i.uf, ptr %i.uc, align 4, !tbaa !10
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ng
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !10
  %i.ui = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.uh) #6, !srcloc !74
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store i32 %i.ui, ptr %i.uj, align 4, !tbaa !10
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.ng
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !10
  %i.um = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ul) #6, !srcloc !75
  %i.un = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i32 %i.um, ptr %i.un, align 4, !tbaa !10
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.ng
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !10
  %i.uq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.up) #6, !srcloc !76
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !10
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.ng
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !10
  %i.uu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ut) #6, !srcloc !77
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !10
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.ng
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !10
  %i.uy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ux) #6, !srcloc !78
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uc, i64 20
  store i32 %i.uy, ptr %i.uz, align 4, !tbaa !10
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ng
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !10
  %i.vc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.vb) #6, !srcloc !79
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  store i32 %i.vc, ptr %i.vd, align 4, !tbaa !10
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.ng
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !10
  %i.vg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.vf) #6, !srcloc !80
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uc, i64 28
  store i32 %i.vg, ptr %i.vh, align 4, !tbaa !10
  %i.vi = getelementptr i8, ptr %i.uc, i64 32
  %i.vj = trunc i32 %i.od to i8
  %i.vk = and i8 %i.vj, 15
  %i.vl = xor i8 %i.vk, 15
  %i.vm = and i32 %i.od, 15
  %narrow.i = sub nuw nsw i32 16, %i.vm
  %i.vn = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.vi, i8 %i.vl, i64 %i.vn, i1 false), !tbaa !11
  %i.vo = and i32 %i.od, -16                      ; 3 uses
  %reass.sub.peel.i = add i32 %i.vo, 48
  %i.vp = sub i32 %reass.sub.peel.i, %.1357.i
  %i.vq = lshr i32 %i.vp, 4
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store i32 %i.vq, ptr %i.vr, align 8, !tbaa !63
  %i.vs = add i32 %i.vo, 64                       ; 2 uses
  %i.vt = load i8, ptr %i.re, align 4, !tbaa !11
  store i8 %i.vt, ptr %scevgep441.i, align 1, !tbaa !11
  %i.vu = load i8, ptr %i.rf, align 1, !tbaa !11
  %i.vv = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 1
  store i8 %i.vu, ptr %i.vv, align 1, !tbaa !11
  %i.vw = load i8, ptr %i.rg, align 2, !tbaa !11
  %i.vx = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 2
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !11
  %i.vy = lshr i32 %i.vs, 8
  %i.vz = trunc i32 %i.vy to i8
  %i.wa = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 3
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !11
  %i.wb = trunc i32 %i.vs to i8
  %i.wc = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 4
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !11
  %i.wd = add i32 %i.vo, 69
  %i.we = add i32 %i.wd, %.reass
  br label %._crit_edge401.i

._crit_edge401.i:                                 ; preds = %._crit_edge401.loopexit.peel.begin.i, %._crit_edge389.thread.i
  %.0358.lcssa.i = phi i32 [ 0, %._crit_edge389.thread.i ], [ %i.we, %._crit_edge401.loopexit.peel.begin.i ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hc, i64 noundef 256) #5
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.aq, %._crit_edge401.i
  %.0.i = phi i32 [ %.0358.lcssa.i, %._crit_edge401.i ], [ 0, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %bb.ap, %bb.ad, %bb.af, %bb.ah, %bb.ak, %bb.ae, %sha256_update.exit157, %bb.ab, %bb.u, %bb.x, %tls1_1_multi_block_encrypt.exit, %bb.ac, %bb.t
  %.3 = phi i32 [ -1, %bb.ae ], [ %.0, %bb.t ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.eh, %bb.ac ], [ 0, %bb.x ], [ 32, %bb.ab ], [ -1, %bb.u ], [ %i.ed, %sha256_update.exit157 ], [ -1, %bb.ak ], [ -1, %bb.ad ], [ -1, %bb.a ], [ -1, %bb.af ], [ %i.gk, %bb.ap ], [ 0, %bb.ah ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sha256_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #5 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.g = sub nuw i64 %2, %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]  ; 4 uses
  %.032 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.h = and i64 %.033, 63                        ; 2 uses
  %i.i = and i64 %.033, -64                       ; 3 uses
  %.not39 = icmp eq i64 %i.i, 0
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.033, 6
  tail call void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #5
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20
  %.tr = trunc i64 %i.i to i32
  %i.s = shl i32 %.tr, 3                          ; 2 uses
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !20
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %i.p, 1
  store i32 %i.v, ptr %i.m, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi ptr [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %.032, %bb.c ]
  %.not40 = icmp eq i64 %i.h, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{i64 0, i64 32, !11, i64 32, i64 4, !10, i64 36, i64 4, !10, i64 40, i64 64, !11, i64 104, i64 4, !10, i64 108, i64 4, !10}
!13 = !{!"aes_key_st", !6, i64 0, !7, i64 240}
!14 = !{!"SHA256state_st", !6, i64 0, !7, i64 32, !7, i64 36, !6, i64 40, !7, i64 104, !7, i64 108}
!15 = !{!"long", !6, i64 0}
!16 = !{!"", !13, i64 0, !14, i64 244, !14, i64 356, !14, i64 468, !15, i64 584, !6, i64 592}
!17 = !{!16, !15, i64 584}
!18 = !{!14, !7, i64 104}
!19 = !{!14, !7, i64 36}
!20 = !{!14, !7, i64 32}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!16, !7, i64 572}
!25 = !{!16, !7, i64 504}
!26 = !{!16, !7, i64 500}
!27 = !{i64 2156373}
!28 = !{i64 2149828382}
!29 = !{!"branch_weights", i32 1, i32 1048575}
!30 = !{i64 2149828623}
!31 = !{i64 2149828779}
!32 = !{i64 2149828935}
!33 = !{i64 2149829091}
!34 = !{i64 2149829247}
!35 = !{i64 2149829403}
!36 = !{i64 2149829559}
!37 = !{i64 2149829715}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21, !61}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21, !61}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21, !61}
!46 = !{!"any pointer", !6, i64 0}
!47 = !{!"p1 omnipotent char", !46, i64 0}
!48 = !{!"", !47, i64 0, !47, i64 8, !15, i64 16, !7, i64 24}
!49 = !{!48, !47, i64 8}
!50 = !{!48, !7, i64 24}
!51 = !{!48, !15, i64 16}
!52 = !{!48, !47, i64 0}
!53 = !{!"", !47, i64 0, !7, i64 8}
!54 = !{!53, !47, i64 0}
!55 = !{!"", !47, i64 0, !47, i64 8, !7, i64 16, !6, i64 24}
!56 = !{!55, !47, i64 0}
!57 = !{!55, !47, i64 8}
!58 = !{i64 2149824325}
!59 = !{i64 2149824485}
!60 = !{!53, !7, i64 8}
!61 = !{!"llvm.loop.peeled.count", i32 1}
!62 = !{!47, !47, i64 0}
!63 = !{!55, !7, i64 16}
!64 = !{i64 2149825009}
!65 = !{i64 2149825164}
!66 = !{i64 2149825319}
!67 = !{i64 2149825474}
!68 = !{i64 2149825629}
!69 = !{i64 2149825784}
!70 = !{i64 2149825939}
!71 = !{i64 2149826094}
!72 = !{i64 2149826249}
!73 = !{i64 2149826450}
!74 = !{i64 2149826647}
!75 = !{i64 2149826844}
!76 = !{i64 2149827042}
!77 = !{i64 2149827240}
!78 = !{i64 2149827438}
!79 = !{i64 2149827636}
!80 = !{i64 2149827834}
end_hunk_0
