Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes_cbc_hmac_sha1?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %.not348.i = icmp eq i32 %i.gx, 0               ; 3 uses
  br i1 %.not348.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.hz = load i64, ptr %i.hy, align 4            ; 2 uses
  store i64 %i.hz, ptr %7, align 16
  %i.ia = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hz) #7, !srcloc !60 ; 0 uses
  br label %._crit_edge325.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.ib = add nuw i32 %.0297.i, 36
  %i.ic = and i32 %i.ib, -16
  %i.id = add nuw i32 %i.ic, 21
  %i.ie = zext i32 %.0297.i to i64
  %i.if = zext i32 %i.id to i64
  %wide.trip.count.i = zext i32 %i.gy to i64      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i
  %i.ig = phi ptr [ %i.gs, %.lr.ph.i ], [ %i.ih, %bb.at ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %.pn320.i = phi ptr [ %7, %.lr.ph.i ], [ %.0306.i, %bb.at ]
  %.0306.i = getelementptr inbounds nuw i8, ptr %.pn320.i, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie ; 3 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ih, ptr %i.ii, align 16, !tbaa !56
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 4 uses
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !58
  %i.ik = getelementptr i8, ptr %i.ij, i64 -32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !59
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.if ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.im, ptr %i.in, align 8, !tbaa !59
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.io, ptr noundef nonnull align 1 dereferenceable(16) %.0306.i, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 1 dereferenceable(16) %.0306.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph324.split.i, label %bb.at, !llvm.loop !40

.lr.ph324.split.i:                                ; preds = %bb.at
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ir = load i64, ptr %i.iq, align 4            ; 2 uses
  store i64 %i.ir, ptr %7, align 16
  %i.is = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ir) #7, !srcloc !60 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 436
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !22 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !23 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !24 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !25 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 452
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !26 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 473
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 474
  %i.jk = add nsw i64 %wide.trip.count.i, -2
  %i.jl = lshr i32 %.0297.i, 8
  %i.jm = trunc i32 %i.jl to i8
  %i.jn = trunc i32 %.0297.i to i8
  %i.jo = add i32 %.0297.i, -51
  %i.jp = lshr i32 %i.jo, 6
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph324.split.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph324.split.i ], [ %indvars.iv.next361.i, %bb.au ] ; 11 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv360.i
  store i32 %i.iu, ptr %i.jq, align 4, !tbaa !10
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv360.i
  store i32 %i.iw, ptr %i.jr, align 4, !tbaa !10
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv360.i
  store i32 %i.iz, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv360.i
  store i32 %i.jc, ptr %i.jt, align 4, !tbaa !10
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv360.i
  store i32 %i.jf, ptr %i.ju, align 4, !tbaa !10
  %i.jv = add i64 %indvars.iv360.i, %i.is
  %i.jw = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.jv) #7, !srcloc !61
  %i.jx = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv360.i ; 8 uses
  store i64 %i.jw, ptr %i.jx, align 16, !tbaa !11
  %i.jy = load i8, ptr %i.jh, align 4, !tbaa !11  ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i8 %i.jy, ptr %i.jz, align 8, !tbaa !11
  %i.ka = load i8, ptr %i.ji, align 1, !tbaa !11  ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 9
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !11
  %i.kc = load i8, ptr %i.jj, align 2, !tbaa !11  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 10
  store i8 %i.kc, ptr %i.kd, align 2, !tbaa !11
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 11
  store i8 %i.jm, ptr %i.ke, align 1, !tbaa !11
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i8 %i.jn, ptr %i.kf, align 4, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 13
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv360.i ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 16, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.kg, ptr noundef nonnull align 1 dereferenceable(51) %i.ki, i64 51, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 51
  store ptr %i.kj, ptr %i.kh, align 16, !tbaa !56
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %i.jp, ptr %i.kk, align 8, !tbaa !62
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv360.i ; 2 uses
  store ptr %i.jx, ptr %i.kl, align 16, !tbaa !56
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i32 1, ptr %i.km, align 8, !tbaa !62
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 10 uses
  %exitcond364.not.i = icmp eq i64 %indvars.iv360.i, %i.jk
  br i1 %exitcond364.not.i, label %._crit_edge325.loopexit.peel.begin.i, label %bb.au, !llvm.loop !41

._crit_edge325.loopexit.peel.begin.i:             ; preds = %bb.au
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next361.i
  store i32 %i.iu, ptr %i.kn, align 4, !tbaa !10
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next361.i
  store i32 %i.iw, ptr %i.ko, align 4, !tbaa !10
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next361.i
  store i32 %i.iz, ptr %i.kp, align 4, !tbaa !10
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next361.i
  store i32 %i.jc, ptr %i.kq, align 4, !tbaa !10
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next361.i
  store i32 %i.jf, ptr %i.kr, align 4, !tbaa !10
  %i.ks = add i64 %indvars.iv.next361.i, %i.is
  %i.kt = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ks) #7, !srcloc !61
  %i.ku = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv.next361.i ; 8 uses
  store i64 %i.kt, ptr %i.ku, align 16, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store i8 %i.jy, ptr %i.kv, align 8, !tbaa !11
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 9
  store i8 %i.ka, ptr %i.kw, align 1, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 10
  store i8 %i.kc, ptr %i.kx, align 2, !tbaa !11
  %i.ky = lshr i32 %.0298.i, 8
  %i.kz = trunc i32 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 11
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !11
  %i.lb = trunc i32 %.0298.i to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i8 %i.lb, ptr %i.lc, align 4, !tbaa !11
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 13
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next361.i ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 16, !tbaa !56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ld, ptr noundef nonnull align 1 dereferenceable(51) %i.lf, i64 51, i1 false)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 51
  store ptr %i.lg, ptr %i.le, align 16, !tbaa !56
  %i.lh = add i32 %.0298.i, -51
  %i.li = lshr i32 %i.lh, 6
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store i32 %i.li, ptr %i.lj, align 8, !tbaa !62
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next361.i ; 2 uses
  store ptr %i.ku, ptr %i.lk, align 16, !tbaa !56
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i32 1, ptr %i.ll, align 8, !tbaa !62
  br label %._crit_edge325.i

._crit_edge325.i:                                 ; preds = %._crit_edge325.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.lm = call i32 @llvm.umin.i32(i32 %.0297.i, i32 %.0298.i)
  %i.ln = add i32 %i.lm, -51                      ; 2 uses
  %i.lo = lshr i32 %i.ln, 6                       ; 2 uses
  %i.lp = icmp ugt i32 %i.ln, 2111
  br i1 %i.lp, label %.preheader319.i, label %.loopexit.i

.preheader319.i:                                  ; preds = %._crit_edge325.i
  br i1 %.not348.i, label %.preheader.split.i, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %.preheader319.i
  %wide.trip.count368.i = zext i32 %i.gy to i64   ; 2 uses
  br label %.lr.ph327.i

.lr.ph330.us.i:                                   ; preds = %.lr.ph327.i, %._crit_edge331.us.i
  %.0303.us.i = phi i32 [ %i.md, %._crit_edge331.us.i ], [ 0, %.lr.ph327.i ]
  %.0301.us.i = phi i32 [ %i.me, %._crit_edge331.us.i ], [ %i.lo, %.lr.ph327.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph330.us.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph330.us.i ], [ %indvars.iv.next371.i, %bb.av ] ; 4 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv370.i ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 16, !tbaa !56
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 2048 ; 2 uses
  store ptr %i.ls, ptr %i.lq, align 16, !tbaa !56
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 16, !tbaa !56
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !62
  %i.lw = add nsw i32 %i.lv, -32
  store i32 %i.lw, ptr %i.lu, align 8, !tbaa !62
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i32 32, ptr %i.lx, align 8, !tbaa !62
  %i.ly = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv370.i ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %8 = load ptr, ptr %i.lz, align 8, !tbaa !59
  %9 = load <2 x ptr>, ptr %i.ly, align 8, !tbaa !64
  %10 = getelementptr inbounds nuw i8, <2 x ptr> %9, i64 2048
  store <2 x ptr> %10, ptr %i.ly, align 8, !tbaa !64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 128, ptr %i.ma, align 8, !tbaa !65
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, ptr noundef nonnull align 1 dereferenceable(16) %i.mc, i64 16, i1 false)
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv370.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next371.i, %wide.trip.count368.i
  br i1 %exitcond374.not.i, label %._crit_edge331.us.i, label %bb.av, !llvm.loop !42

._crit_edge331.us.i:                              ; preds = %bb.av
  %i.md = add i32 %.0303.us.i, 2048               ; 2 uses
  %i.me = add nsw i32 %.0301.us.i, -32            ; 2 uses
  %i.mf = icmp ugt i32 %i.me, 32
  br i1 %i.mf, label %.lr.ph330.us.i, label %.loopexit.i, !llvm.loop !43

.lr.ph327.i:                                      ; preds = %.lr.ph327.i, %.lr.ph327.preheader.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph327.preheader.i ], [ %indvars.iv.next366.i.1, %.lr.ph327.i ] ; 5 uses
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv365.i
  %i.mh = load ptr, ptr %i.mg, align 16, !tbaa !56
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.mh, ptr %i.mi, align 16, !tbaa !56
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store i32 32, ptr %i.mj, align 8, !tbaa !62
  %i.mk = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv365.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i32 128, ptr %i.ml, align 16, !tbaa !65
  %indvars.iv.next366.i = or disjoint i64 %indvars.iv365.i, 1 ; 3 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next366.i
  %i.mn = load ptr, ptr %i.mm, align 16, !tbaa !56
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %i.mn, ptr %i.mo, align 16, !tbaa !56
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i32 32, ptr %i.mp, align 8, !tbaa !62
  %i.mq = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next366.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i32 128, ptr %i.mr, align 8, !tbaa !65
  %indvars.iv.next366.i.1 = add nuw nsw i64 %indvars.iv365.i, 2 ; 2 uses
  %exitcond369.not.i.1 = icmp eq i64 %indvars.iv.next366.i.1, %wide.trip.count368.i
  br i1 %exitcond369.not.i.1, label %.lr.ph330.us.i, label %.lr.ph327.i, !llvm.loop !44

.preheader.split.i:                               ; preds = %.preheader319.i, %.preheader.split.i
  %.0301.i = phi i32 [ %i.ms, %.preheader.split.i ], [ %i.lo, %.preheader319.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #6
  %i.ms = add nsw i32 %.0301.i, -32               ; 2 uses
  %i.mt = icmp ugt i32 %i.ms, 32
  br i1 %i.mt, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !43

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge335.thread.i

.loopexit.i:                                      ; preds = %._crit_edge331.us.i, %._crit_edge325.i
  %.1304.i = phi i32 [ 0, %._crit_edge325.i ], [ %i.md, %._crit_edge331.us.i ] ; 6 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not348.i, label %._crit_edge335.thread.i, label %.lr.ph334.split.i

.lr.ph334.split.i:                                ; preds = %.loopexit.i
  %i.mu = add nsw i32 %i.gy, -1
  %i.mv = zext i32 %i.mu to i64                   ; 2 uses
  %wide.trip.count378.i = zext i32 %i.gy to i64   ; 2 uses
  %i.mw = add nsw i64 %wide.trip.count378.i, -1   ; 12 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph334.split.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph334.split.i ], [ %indvars.iv.next376.i, %bb.aw ] ; 5 uses
  %i.mx = icmp eq i64 %indvars.iv375.i, %i.mv
  %i.my = select i1 %i.mx, i32 %.0298.i, i32 %.0297.i ; 2 uses
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv375.i ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !62
  %i.nc = shl nsw i32 %i.nb, 6                    ; 2 uses
  %i.nd = load ptr, ptr %i.mz, align 16, !tbaa !56
  %i.ne = zext i32 %i.nc to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ne
  %i.ng = add i32 %i.my, -51
  %i.nh = add i32 %.1304.i, %i.nc
  %i.ni = sub i32 %i.ng, %i.nh                    ; 2 uses
  %i.nj = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv375.i ; 4 uses
  %i.nk = zext i32 %i.ni to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nj, ptr align 1 %i.nf, i64 %i.nk, i1 false)
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nk
  store i8 -128, ptr %i.nl, align 1, !tbaa !11
  %i.nm = shl i32 %i.my, 3
  %i.nn = add i32 %i.nm, 616
  %i.no = icmp ult i32 %i.ni, 56                  ; 2 uses
  %i.np = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nn) #7
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv375.i ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.418.i = select i1 %i.no, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.no, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.nj, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.np, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.418.i, ptr %i.nr, align 8, !tbaa !62
  store ptr %i.nj, ptr %i.nq, align 16, !tbaa !56
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %i.mw
  br i1 %exitcond379.not.i, label %._crit_edge335.loopexit.peel.begin.i, label %bb.aw, !llvm.loop !45

._crit_edge335.loopexit.peel.begin.i:             ; preds = %bb.aw
  %i.ns = icmp eq i64 %i.mw, %i.mv
  %i.nt = select i1 %i.ns, i32 %.0298.i, i32 %.0297.i ; 7 uses
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.mw ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !62
  %i.nx = shl nsw i32 %i.nw, 6                    ; 2 uses
  %i.ny = load ptr, ptr %i.nu, align 16, !tbaa !56
  %i.nz = zext i32 %i.nx to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.nz
  %.neg179 = add i32 %i.nt, -51
  %i.ob = add i32 %.1304.i, %i.nx
  %i.oc = sub i32 %.neg179, %i.ob                 ; 2 uses
  %i.od = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %i.mw ; 4 uses
  %i.oe = zext i32 %i.oc to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.od, ptr align 1 %i.oa, i64 %i.oe, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oe
  store i8 -128, ptr %i.of, align 1, !tbaa !11
  %i.og = shl i32 %i.nt, 3
  %i.oh = add i32 %i.og, 616
  %i.oi = icmp ult i32 %i.oc, 56                  ; 2 uses
  %i.oj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oh) #7
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.mw ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.420.i = select i1 %i.oi, i32 1, i32 2
  %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.oi, i64 60, i64 124
  %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.od, i64 %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.oj, ptr %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.420.i, ptr %i.ol, align 8, !tbaa !62
  store ptr %i.od, ptr %i.ok, align 16, !tbaa !56
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.on = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.op = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.or = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.ot = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  br label %bb.ax

._crit_edge335.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %._crit_edge347.i

bb.ax:                                            ; preds = %bb.ax, %._crit_edge335.loopexit.peel.begin.i
  %indvars.iv382.i = phi i64 [ 0, %._crit_edge335.loopexit.peel.begin.i ], [ %indvars.iv.next383.i, %bb.ax ] ; 8 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv382.i ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !10
  %i.ox = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ow) #7, !srcloc !66
  %i.oy = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv382.i ; 8 uses
  store i32 %i.ox, ptr %i.oy, align 16, !tbaa !11
  %i.oz = load i32, ptr %i.om, align 4, !tbaa !67
  store i32 %i.oz, ptr %i.ov, align 4, !tbaa !10
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv382.i ; 2 uses
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !10
  %i.pc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pb) #7, !srcloc !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  store i32 %i.pc, ptr %i.pd, align 4, !tbaa !11
  %i.pe = load i32, ptr %i.oo, align 4, !tbaa !69
  store i32 %i.pe, ptr %i.pa, align 4, !tbaa !10
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv382.i ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !10
  %i.ph = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pg) #7, !srcloc !70
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i32 %i.ph, ptr %i.pi, align 8, !tbaa !11
  %i.pj = load i32, ptr %i.oq, align 4, !tbaa !71
  store i32 %i.pj, ptr %i.pf, align 4, !tbaa !10
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv382.i ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !10
  %i.pm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pl) #7, !srcloc !72
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i32 %i.pm, ptr %i.pn, align 4, !tbaa !11
  %i.po = load i32, ptr %i.os, align 4, !tbaa !73
  store i32 %i.po, ptr %i.pk, align 4, !tbaa !10
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv382.i ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !10
  %i.pr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pq) #7, !srcloc !74
  %i.ps = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store i32 %i.pr, ptr %i.ps, align 16, !tbaa !11
  %i.pt = load i32, ptr %i.ou, align 4, !tbaa !75
  store i32 %i.pt, ptr %i.pp, align 4, !tbaa !10
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oy, i64 20
  store i8 -128, ptr %i.pu, align 4, !tbaa !11
  %i.pv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #7, !srcloc !76
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oy, i64 60
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !11
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv382.i ; 2 uses
  store ptr %i.oy, ptr %i.px, align 16, !tbaa !56
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i32 1, ptr %i.py, align 8, !tbaa !62
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count378.i
  br i1 %exitcond386.not.i, label %.lr.ph346.split.i, label %bb.ax, !llvm.loop !46

.lr.ph346.split.i:                                ; preds = %bb.ax
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.pz = getelementptr inbounds nuw i8, ptr %i.c, i64 472 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.c, i64 473 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.c, i64 474 ; 2 uses
  %i.qc = sub i32 %.0297.i, %.1304.i
  %i.qd = zext i32 %i.qc to i64
  %i.qe = add nuw i32 %.0297.i, 21
  %i.qf = zext i32 %i.qe to i64                   ; 2 uses
  %i.qg = add nuw i32 %.0297.i, 4
  %i.qh = and i32 %i.qg, 15                       ; 2 uses
  %i.qi = trunc nuw nsw i32 %i.qh to i8
  %i.qj = xor i8 %i.qi, 15
  %i.qk = sub i32 11, %.0297.i
  %i.ql = and i32 %i.qk, 15
  %i.qm = zext nneg i32 %i.ql to i64              ; 2 uses
  %i.qn = add nuw nsw i64 %i.qm, 1
  %i.qo = sub i32 %.0297.i, %i.qh                 ; 3 uses
  %reass.sub = sub i32 %i.qo, %.1304.i
  %.reass.i = add i32 %reass.sub, 36
  %i.qp = lshr i32 %.reass.i, 4
  %i.qq = add i32 %i.qo, 52                       ; 2 uses
  %i.qr = lshr i32 %i.qq, 8
  %i.qs = trunc i32 %i.qr to i8
  %i.qt = trunc i32 %i.qq to i8
  %invariant.op = add i32 %i.qo, 57
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph346.split.i
  %indvars.iv388.i = phi i64 [ 0, %.lr.ph346.split.i ], [ %indvars.iv.next389.i, %bb.ay ] ; 7 uses
  %.0295344.i = phi ptr [ %i.gq, %.lr.ph346.split.i ], [ %scevgep387.i, %bb.ay ] ; 7 uses
  %.0305342.i = phi i32 [ 0, %.lr.ph346.split.i ], [ %.reass, %bb.ay ]
  %i.qu = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv388.i ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !59
  %i.qx = load ptr, ptr %i.qu, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qw, ptr align 1 %i.qx, i64 %i.qd, i1 false)
  %i.qy = load ptr, ptr %i.qv, align 8, !tbaa !59
  store ptr %i.qy, ptr %i.qu, align 8, !tbaa !58
  %i.qz = getelementptr i8, ptr %.0295344.i, i64 %i.qf ; 6 uses
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv388.i
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !10
  %i.rc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rb) #7, !srcloc !77
  store i32 %i.rc, ptr %i.qz, align 4, !tbaa !10
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv388.i
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !10
  %i.rf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.re) #7, !srcloc !78
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !10
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv388.i
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !10
  %i.rj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ri) #7, !srcloc !79
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !10
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv388.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !10
  %i.rn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rm) #7, !srcloc !80
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !10
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv388.i
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !10
  %i.rr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rq) #7, !srcloc !81
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store i32 %i.rr, ptr %i.rs, align 4, !tbaa !10
  %i.rt = getelementptr i8, ptr %i.qz, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.rt, i8 %i.qj, i64 %i.qn, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.0295344.i, i64 21
  %i.ru = getelementptr i8, ptr %scevgep.i, i64 %i.qf
  %scevgep387.i = getelementptr i8, ptr %i.ru, i64 %i.qm ; 7 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store i32 %i.qp, ptr %i.rv, align 8, !tbaa !65
  %i.rw = load i8, ptr %i.pz, align 4, !tbaa !11
  store i8 %i.rw, ptr %.0295344.i, align 1, !tbaa !11
  %i.rx = load i8, ptr %i.qa, align 1, !tbaa !11
  %i.ry = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 1
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !11
  %i.rz = load i8, ptr %i.qb, align 2, !tbaa !11
  %i.sa = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 2
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !11
  %i.sb = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 3
  store i8 %i.qs, ptr %i.sb, align 1, !tbaa !11
  %i.sc = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 4
  store i8 %i.qt, ptr %i.sc, align 1, !tbaa !11
  %.reass = add i32 %.0305342.i, %invariant.op    ; 2 uses
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond392.not.i = icmp eq i64 %indvars.iv.next389.i, %i.mw
  br i1 %exitcond392.not.i, label %._crit_edge347.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !47

._crit_edge347.loopexit.peel.begin.i:             ; preds = %bb.ay
  %i.sd = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.mw ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 16, !tbaa !59
  %i.sg = load ptr, ptr %i.sd, align 8, !tbaa !58
  %i.sh = sub i32 %i.nt, %.1304.i
  %i.si = zext i32 %i.sh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sf, ptr align 1 %i.sg, i64 %i.si, i1 false)
  %i.sj = load ptr, ptr %i.se, align 16, !tbaa !59
  store ptr %i.sj, ptr %i.sd, align 8, !tbaa !58
  %i.sk = add i32 %i.nt, 21
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr i8, ptr %scevgep387.i, i64 %i.sl ; 6 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.mw
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !10
  %i.sp = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.so) #7, !srcloc !77
  store i32 %i.sp, ptr %i.sm, align 4, !tbaa !10
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.mw
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !10
  %i.ss = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sr) #7, !srcloc !78
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !10
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.mw
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !10
  %i.sw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sv) #7, !srcloc !79
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  store i32 %i.sw, ptr %i.sx, align 4, !tbaa !10
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.mw
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !10
  %i.ta = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sz) #7, !srcloc !80
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sm, i64 12
  store i32 %i.ta, ptr %i.tb, align 4, !tbaa !10
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.mw
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !10
  %i.te = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.td) #7, !srcloc !81
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !10
  %i.tg = getelementptr i8, ptr %i.sm, i64 20
  %i.th = add i32 %i.nt, 4
  %i.ti = and i32 %i.th, 15                       ; 2 uses
  %i.tj = trunc nuw nsw i32 %i.ti to i8
  %i.tk = xor i8 %i.tj, 15
  %i.tl = sub i32 11, %i.nt
  %i.tm = and i32 %i.tl, 15
  %narrow.i = add nuw nsw i32 %i.tm, 1
  %i.tn = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.tg, i8 %i.tk, i64 %i.tn, i1 false), !tbaa !11
  %i.to = sub i32 %i.nt, %i.ti                    ; 3 uses
  %reass.sub.peel.i = add i32 %i.to, 36
  %i.tp = sub i32 %reass.sub.peel.i, %.1304.i
  %i.tq = lshr i32 %i.tp, 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store i32 %i.tq, ptr %i.tr, align 8, !tbaa !65
  %i.ts = add i32 %i.to, 52                       ; 2 uses
  %i.tt = load i8, ptr %i.pz, align 4, !tbaa !11
  store i8 %i.tt, ptr %scevgep387.i, align 1, !tbaa !11
  %i.tu = load i8, ptr %i.qa, align 1, !tbaa !11
  %i.tv = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 1
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !11
  %i.tw = load i8, ptr %i.qb, align 2, !tbaa !11
  %i.tx = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 2
  store i8 %i.tw, ptr %i.tx, align 1, !tbaa !11
  %i.ty = lshr i32 %i.ts, 8
  %i.tz = trunc i32 %i.ty to i8
  %i.ua = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 3
  store i8 %i.tz, ptr %i.ua, align 1, !tbaa !11
  %i.ub = trunc i32 %i.ts to i8
  %i.uc = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 4
  store i8 %i.ub, ptr %i.uc, align 1, !tbaa !11
  %i.ud = add i32 %i.to, 57
  %i.ue = add i32 %i.ud, %.reass
  br label %._crit_edge347.i

._crit_edge347.i:                                 ; preds = %._crit_edge347.loopexit.peel.begin.i, %._crit_edge335.thread.i
  %.0305.lcssa.i = phi i32 [ 0, %._crit_edge335.thread.i ], [ %i.ue, %._crit_edge347.loopexit.peel.begin.i ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hg, i64 noundef 160) #6
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.ao, %._crit_edge347.i
  %.0.i = phi i32 [ %.0305.lcssa.i, %._crit_edge347.i ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.an, %bb.ab, %bb.ad, %bb.af, %bb.ai, %bb.ac, %sha1_update.exit153, %bb.z, %bb.s, %bb.v, %tls1_1_multi_block_encrypt.exit, %bb.aa, %sha1_update.exit144
  %.2 = phi i32 [ -1, %bb.ac ], [ 1, %sha1_update.exit144 ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.ei, %bb.aa ], [ 0, %bb.v ], [ 20, %bb.z ], [ -1, %bb.s ], [ %i.ed, %sha1_update.exit153 ], [ -1, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ %i.go, %bb.an ], [ 0, %bb.af ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sha1_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #6 ; 0 uses
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
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
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
  %i.w = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @aesni_cbc_sha1_enc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

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
!12 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 64, !11, i64 92, i64 4, !10}
!13 = !{!"aes_key_st", !6, i64 0, !7, i64 240}
!14 = !{!"SHAstate_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !7, i64 92}
!15 = !{!"long", !6, i64 0}
!16 = !{!"", !13, i64 0, !14, i64 244, !14, i64 340, !14, i64 436, !15, i64 536, !6, i64 544}
!17 = !{!16, !15, i64 536}
!18 = !{!14, !7, i64 92}
!19 = !{!14, !7, i64 24}
!20 = !{!14, !7, i64 20}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!16, !7, i64 436}
!23 = !{!16, !7, i64 440}
!24 = !{!16, !7, i64 444}
!25 = !{!16, !7, i64 448}
!26 = !{!16, !7, i64 452}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = !{!16, !7, i64 528}
!30 = !{!16, !7, i64 460}
!31 = !{!16, !7, i64 456}
!32 = !{i64 2294062}
!33 = !{i64 2149827914}
!34 = !{!"branch_weights", i32 1, i32 1048575}
!35 = !{i64 2149828155}
!36 = !{i64 2149828311}
!37 = !{i64 2149828467}
!38 = !{i64 2149828623}
!39 = !{i64 2149828779}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21, !63}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21, !63}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21, !63}
!48 = !{!"any pointer", !6, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!"", !49, i64 0, !49, i64 8, !15, i64 16, !7, i64 24}
!51 = !{!50, !49, i64 8}
!52 = !{!50, !7, i64 24}
!53 = !{!50, !15, i64 16}
!54 = !{!50, !49, i64 0}
!55 = !{!"", !49, i64 0, !7, i64 8}
!56 = !{!55, !49, i64 0}
!57 = !{!"", !49, i64 0, !49, i64 8, !7, i64 16, !6, i64 24}
!58 = !{!57, !49, i64 0}
!59 = !{!57, !49, i64 8}
!60 = !{i64 2149824913}
!61 = !{i64 2149825073}
!62 = !{!55, !7, i64 8}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = !{!49, !49, i64 0}
!65 = !{!57, !7, i64 16}
!66 = !{i64 2149825597}
!67 = !{!16, !7, i64 340}
!68 = !{i64 2149825752}
!69 = !{!16, !7, i64 344}
!70 = !{i64 2149825907}
!71 = !{!16, !7, i64 348}
!72 = !{i64 2149826062}
!73 = !{!16, !7, i64 352}
!74 = !{i64 2149826217}
!75 = !{!16, !7, i64 356}
!76 = !{i64 2149826372}
!77 = !{i64 2149826573}
!78 = !{i64 2149826770}
!79 = !{i64 2149826967}
!80 = !{i64 2149827165}
!81 = !{i64 2149827363}
end_hunk_0
