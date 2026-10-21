Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cipher_aes_cbc_hmac_sha1_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_tls1_multiblock_encrypt:bb.a
  store i64 %i.an, ptr %5, align 16
  %i.ao = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.an) #9, !srcloc !72 ; 0 uses
  br label %._crit_edge330.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = add nuw i32 %.0302.i, 36
  %i.aq = and i32 %i.ap, -16
  %i.ar = add nuw i32 %i.aq, 21
  %i.as = zext i32 %.0302.i to i64
  %i.at = zext i32 %i.ar to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.au = phi ptr [ %i.d, %.lr.ph.i ], [ %i.av, %bb.f ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %.pn325.i = phi ptr [ %5, %.lr.ph.i ], [ %.0311.i, %bb.f ]
  %.0311.i = getelementptr inbounds nuw i8, ptr %.pn325.i, i64 16 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i
  store ptr %i.av, ptr %i.aw, align 16, !tbaa !68
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr i8, ptr %i.ax, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !71
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0311.i, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(16) %.0311.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph329.split.i, label %bb.f, !llvm.loop !57

.lr.ph329.split.i:                                ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 724
  %i.bf = load i64, ptr %i.be, align 4            ; 2 uses
  store i64 %i.bf, ptr %5, align 16
  %i.bg = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bf) #9, !srcloc !72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !30 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !31 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !33 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 733
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.by = add nsw i64 %wide.trip.count.i, -2
  %i.bz = lshr i32 %.0302.i, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = trunc i32 %.0302.i to i8
  %i.cc = add i32 %.0302.i, -51
  %i.cd = lshr i32 %i.cc, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph329.split.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph329.split.i ], [ %indvars.iv.next366.i, %bb.g ] ; 11 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv365.i
  store i32 %i.bi, ptr %i.ce, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv365.i
  store i32 %i.bk, ptr %i.cf, align 4, !tbaa !10
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv365.i
  store i32 %i.bn, ptr %i.cg, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv365.i
  store i32 %i.bq, ptr %i.ch, align 4, !tbaa !10
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv365.i
  store i32 %i.bt, ptr %i.ci, align 4, !tbaa !10
  %i.cj = add i64 %indvars.iv365.i, %i.bg
  %i.ck = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cj) #9, !srcloc !73
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv365.i ; 8 uses
  store i64 %i.ck, ptr %i.cl, align 16, !tbaa !11
  %i.cm = load i8, ptr %i.bv, align 4, !tbaa !11  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i8 %i.cm, ptr %i.cn, align 8, !tbaa !11
  %i.co = load i8, ptr %i.bw, align 1, !tbaa !11  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 9
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %i.cq = load i8, ptr %i.bx, align 2, !tbaa !11  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  store i8 %i.cq, ptr %i.cr, align 2, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 11
  store i8 %i.ca, ptr %i.cs, align 1, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i8 %i.cb, ptr %i.ct, align 4, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 13
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv365.i ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !68 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.cu, ptr noundef nonnull align 1 dereferenceable(51) %i.cw, i64 51, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 51
  store ptr %i.cx, ptr %i.cv, align 16, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cd, ptr %i.cy, align 8, !tbaa !74
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.cl, ptr %i.cz, align 16, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 1, ptr %i.da, align 8, !tbaa !74
  %indvars.iv.next366.i = add nuw nsw i64 %indvars.iv365.i, 1 ; 10 uses
  %exitcond369.not.i = icmp eq i64 %indvars.iv365.i, %i.by
  br i1 %exitcond369.not.i, label %._crit_edge330.loopexit.peel.begin.i, label %bb.g, !llvm.loop !58

._crit_edge330.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next366.i
  store i32 %i.bi, ptr %i.db, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next366.i
  store i32 %i.bk, ptr %i.dc, align 4, !tbaa !10
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next366.i
  store i32 %i.bn, ptr %i.dd, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next366.i
  store i32 %i.bq, ptr %i.de, align 4, !tbaa !10
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next366.i
  store i32 %i.bt, ptr %i.df, align 4, !tbaa !10
  %i.dg = add i64 %indvars.iv.next366.i, %i.bg
  %i.dh = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dg) #9, !srcloc !73
  %i.di = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next366.i ; 8 uses
  store i64 %i.dh, ptr %i.di, align 16, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %i.cm, ptr %i.dj, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 9
  store i8 %i.co, ptr %i.dk, align 1, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 10
  store i8 %i.cq, ptr %i.dl, align 2, !tbaa !11
  %i.dm = lshr i32 %.0303.i, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 11
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !11
  %i.dp = trunc i32 %.0303.i to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store i8 %i.dp, ptr %i.dq, align 4, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 13
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next366.i ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !68 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.dr, ptr noundef nonnull align 1 dereferenceable(51) %i.dt, i64 51, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 51
  store ptr %i.du, ptr %i.ds, align 16, !tbaa !68
  %i.dv = add i32 %.0303.i, -51
  %i.dw = lshr i32 %i.dv, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %i.di, ptr %i.dy, align 16, !tbaa !68
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 1, ptr %i.dz, align 8, !tbaa !74
  br label %._crit_edge330.i

._crit_edge330.i:                                 ; preds = %._crit_edge330.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.ea = call i32 @llvm.umin.i32(i32 %.0302.i, i32 %.0303.i)
  %i.eb = add i32 %i.ea, -51                      ; 2 uses
  %i.ec = lshr i32 %i.eb, 6                       ; 2 uses
  %i.ed = icmp ugt i32 %i.eb, 2111
  br i1 %i.ed, label %.preheader324.i, label %.loopexit.i

.preheader324.i:                                  ; preds = %._crit_edge330.i
  br i1 %.not353.i, label %.preheader.split.preheader.i, label %.lr.ph332.preheader.i

.lr.ph332.preheader.i:                            ; preds = %.preheader324.i
  %wide.trip.count373.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph332.i

.lr.ph335.us.preheader.i:                         ; preds = %.lr.ph332.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph335.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader324.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph335.us.i:                                   ; preds = %._crit_edge336.us.i, %.lr.ph335.us.preheader.i
  %.0308.us.i = phi i32 [ %i.et, %._crit_edge336.us.i ], [ 0, %.lr.ph335.us.preheader.i ]
  %.0307.us.i = phi i32 [ %i.eu, %._crit_edge336.us.i ], [ %i.ec, %.lr.ph335.us.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ee, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph335.us.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph335.us.i ], [ %indvars.iv.next376.i, %bb.h ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv375.i ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !68
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2048 ; 2 uses
  store ptr %i.ei, ptr %i.eg, align 16, !tbaa !68
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv375.i ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !74
  %i.em = add nsw i32 %i.el, -32
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !74
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 32, ptr %i.en, align 8, !tbaa !74
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv375.i ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %6 = load ptr, ptr %i.ep, align 8, !tbaa !71
  %7 = load <2 x ptr>, ptr %i.eo, align 8, !tbaa !76
  %8 = getelementptr inbounds nuw i8, <2 x ptr> %7, i64 2048
  store <2 x ptr> %8, ptr %i.eo, align 8, !tbaa !76
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i32 128, ptr %i.eq, align 8, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 1 dereferenceable(16) %i.es, i64 16, i1 false)
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count373.i
  br i1 %exitcond379.not.i, label %._crit_edge336.us.i, label %bb.h, !llvm.loop !59

._crit_edge336.us.i:                              ; preds = %bb.h
  %i.et = add i32 %.0308.us.i, 2048               ; 2 uses
  %i.eu = add nsw i32 %.0307.us.i, -32            ; 2 uses
  %i.ev = icmp ugt i32 %i.eu, 32
  br i1 %i.ev, label %.lr.ph335.us.i, label %.loopexit.i, !llvm.loop !60

.lr.ph332.i:                                      ; preds = %.lr.ph332.i, %.lr.ph332.preheader.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph332.preheader.i ], [ %indvars.iv.next371.i.1, %.lr.ph332.i ] ; 5 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv370.i
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !68
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 16, !tbaa !68
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i32 32, ptr %i.ez, align 8, !tbaa !74
  %i.fa = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv370.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i32 128, ptr %i.fb, align 16, !tbaa !77
  %indvars.iv.next371.i = or disjoint i64 %indvars.iv370.i, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next371.i
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !68
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next371.i ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !68
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 32, ptr %i.ff, align 8, !tbaa !74
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next371.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 128, ptr %i.fh, align 8, !tbaa !77
  %indvars.iv.next371.i.1 = add nuw nsw i64 %indvars.iv370.i, 2 ; 2 uses
  %exitcond374.not.i.1 = icmp eq i64 %indvars.iv.next371.i.1, %wide.trip.count373.i
  br i1 %exitcond374.not.i.1, label %.lr.ph335.us.preheader.i, label %.lr.ph332.i, !llvm.loop !61

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0307.i = phi i32 [ %i.fi, %.preheader.split.i ], [ %i.ec, %.preheader.split.preheader.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #8
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.ef, i32 noundef 0) #8
  %i.fi = add nsw i32 %.0307.i, -32               ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, 32
  br i1 %i.fj, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !60

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge340.thread.i

.loopexit.i:                                      ; preds = %._crit_edge336.us.i, %._crit_edge330.i
  %.1309.i = phi i32 [ 0, %._crit_edge330.i ], [ %i.et, %._crit_edge336.us.i ] ; 6 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not353.i, label %._crit_edge340.thread.i, label %.lr.ph339.split.i

.lr.ph339.split.i:                                ; preds = %.loopexit.i
  %i.fk = add nsw i32 %i.j, -1
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %wide.trip.count383.i = zext i32 %i.j to i64    ; 2 uses
  %i.fm = add nsw i64 %wide.trip.count383.i, -1   ; 13 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph339.split.i
  %indvars.iv380.i = phi i64 [ 0, %.lr.ph339.split.i ], [ %indvars.iv.next381.i, %bb.i ] ; 5 uses
  %i.fn = icmp eq i64 %indvars.iv380.i, %i.fl
  %i.fo = select i1 %i.fn, i32 %.0303.i, i32 %.0302.i ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv380.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !74
  %i.fs = shl nsw i32 %i.fr, 6                    ; 2 uses
  %i.ft = load ptr, ptr %i.fp, align 16, !tbaa !68
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fu
  %i.fw = add i32 %i.fo, -51
  %i.fx = add i32 %.1309.i, %i.fs
  %i.fy = sub i32 %i.fw, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv380.i ; 4 uses
  %i.ga = zext i32 %i.fy to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.fz, ptr align 1 %i.fv, i64 %i.ga, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  store i8 -128, ptr %i.gb, align 1, !tbaa !11
  %i.gc = shl i32 %i.fo, 3
  %i.gd = add i32 %i.gc, 616
  %i.ge = icmp ult i32 %i.fy, 56                  ; 2 uses
  %i.gf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gd) #9
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv380.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.423.i = select i1 %i.ge, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ge, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.fz, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gf, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.423.i, ptr %i.gh, align 8, !tbaa !74
  store ptr %i.fz, ptr %i.gg, align 16, !tbaa !68
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %i.fm
  br i1 %exitcond384.not.i, label %._crit_edge340.loopexit.peel.begin.i, label %bb.i, !llvm.loop !62

._crit_edge340.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.gi = icmp eq i64 %i.fm, %i.fl
  %i.gj = select i1 %i.gi, i32 %.0303.i, i32 %.0302.i ; 7 uses
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fm ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !74
  %i.gn = shl nsw i32 %i.gm, 6                    ; 2 uses
  %i.go = load ptr, ptr %i.gk, align 16, !tbaa !68
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  %.neg11 = add i32 %i.gj, -51
  %i.gr = add i32 %.1309.i, %i.gn
  %i.gs = sub i32 %.neg11, %i.gr                  ; 2 uses
  %i.gt = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.fm ; 4 uses
  %i.gu = zext i32 %i.gs to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gt, ptr align 1 %i.gq, i64 %i.gu, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gu
  store i8 -128, ptr %i.gv, align 1, !tbaa !11
  %i.gw = shl i32 %i.gj, 3
  %i.gx = add i32 %i.gw, 616
  %i.gy = icmp ult i32 %i.gs, 56                  ; 2 uses
  %i.gz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gx) #9
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fm ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %.425.i = select i1 %i.gy, i32 1, i32 2
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gy, i64 60, i64 124
  %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gz, ptr %.424.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.425.i, ptr %i.hb, align 8, !tbaa !74
  store ptr %i.gt, ptr %i.ha, align 16, !tbaa !68
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.hj = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 616
  br label %bb.j

._crit_edge340.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  br label %._crit_edge352.i

bb.j:                                             ; preds = %bb.j, %._crit_edge340.loopexit.peel.begin.i
  %indvars.iv387.i = phi i64 [ 0, %._crit_edge340.loopexit.peel.begin.i ], [ %indvars.iv.next388.i, %bb.j ] ; 8 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv387.i ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !10
  %i.hn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hm) #9, !srcloc !78
  %i.ho = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv387.i ; 8 uses
  store i32 %i.hn, ptr %i.ho, align 16, !tbaa !11
  %i.hp = load i32, ptr %i.hc, align 8, !tbaa !79
  store i32 %i.hp, ptr %i.hl, align 4, !tbaa !10
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv387.i ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !10
  %i.hs = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hr) #9, !srcloc !80
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !11
  %i.hu = load i32, ptr %i.he, align 4, !tbaa !81
  store i32 %i.hu, ptr %i.hq, align 4, !tbaa !10
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv387.i ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !10
  %i.hx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hw) #9, !srcloc !82
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !11
  %i.hz = load i32, ptr %i.hg, align 8, !tbaa !83
  store i32 %i.hz, ptr %i.hv, align 4, !tbaa !10
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv387.i ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !10
  %i.ic = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ib) #9, !srcloc !84
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !11
  %i.ie = load i32, ptr %i.hi, align 4, !tbaa !85
  store i32 %i.ie, ptr %i.ia, align 4, !tbaa !10
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv387.i ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !10
  %i.ih = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ig) #9, !srcloc !86
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i32 %i.ih, ptr %i.ii, align 16, !tbaa !11
  %i.ij = load i32, ptr %i.hk, align 8, !tbaa !87
  store i32 %i.ij, ptr %i.if, align 4, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 20
  store i8 -128, ptr %i.ik, align 4, !tbaa !11
  %i.il = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #9, !srcloc !88
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 60
  store i32 %i.il, ptr %i.im, align 4, !tbaa !11
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv387.i ; 2 uses
  store ptr %i.ho, ptr %i.in, align 16, !tbaa !68
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i32 1, ptr %i.io, align 8, !tbaa !74
  %indvars.iv.next388.i = add nuw nsw i64 %indvars.iv387.i, 1 ; 2 uses
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next388.i, %wide.trip.count383.i
  br i1 %exitcond391.not.i, label %.lr.ph351.split.i, label %bb.j, !llvm.loop !63

.lr.ph351.split.i:                                ; preds = %bb.j
  call void @sha1_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 733 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 734 ; 2 uses
  %i.is = sub i32 %.0302.i, %.1309.i
  %i.it = zext i32 %i.is to i64
  %i.iu = add nuw i32 %.0302.i, 21
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = add nuw i32 %.0302.i, 4
  %i.ix = and i32 %i.iw, 15                       ; 2 uses
  %i.iy = trunc nuw nsw i32 %i.ix to i8
  %i.iz = xor i8 %i.iy, 15
  %i.ja = sub i32 11, %.0302.i
  %i.jb = and i32 %i.ja, 15
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 1
  %i.je = sub i32 %.0302.i, %i.ix                 ; 3 uses
  %reass.sub = sub i32 %i.je, %.1309.i
  %.reass.i = add i32 %reass.sub, 36
  %i.jf = lshr i32 %.reass.i, 4
  %i.jg = add i32 %i.je, 52                       ; 2 uses
  %i.jh = lshr i32 %i.jg, 8
  %i.ji = trunc i32 %i.jh to i8
  %i.jj = trunc i32 %i.jg to i8
  %i.jk = add i32 %i.je, 57
  %i.jl = zext i32 %i.jk to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph351.split.i
  %indvars.iv393.i = phi i64 [ 0, %.lr.ph351.split.i ], [ %indvars.iv.next394.i, %bb.k ] ; 7 uses
  %.0300349.i = phi ptr [ %i.b, %.lr.ph351.split.i ], [ %scevgep392.i, %bb.k ] ; 7 uses
  %i.jm = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv393.i ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !71
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jp, i64 %i.it, i1 false)
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !71
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !70
  %i.jr = getelementptr i8, ptr %.0300349.i, i64 %i.iv ; 6 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv393.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !10
  %i.ju = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jt) #9, !srcloc !89
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !10
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv393.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !10
  %i.jx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jw) #9, !srcloc !90
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv393.i
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !10
  %i.kb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ka) #9, !srcloc !91
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !10
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv393.i
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !10
  %i.kf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ke) #9, !srcloc !92
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !10
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv393.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !10
  %i.kj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ki) #9, !srcloc !93
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !10
  %i.kl = getelementptr i8, ptr %i.jr, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kl, i8 %i.iz, i64 %i.jd, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.0300349.i, i64 21
  %i.km = getelementptr i8, ptr %scevgep.i, i64 %i.iv
  %scevgep392.i = getelementptr i8, ptr %i.km, i64 %i.jc ; 7 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i32 %i.jf, ptr %i.kn, align 8, !tbaa !77
  %i.ko = load i8, ptr %i.ip, align 4, !tbaa !11
  store i8 %i.ko, ptr %.0300349.i, align 1, !tbaa !11
  %i.kp = load i8, ptr %i.iq, align 1, !tbaa !11
  %i.kq = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 1
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !11
  %i.kr = load i8, ptr %i.ir, align 2, !tbaa !11
  %i.ks = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 2
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !11
  %i.kt = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 3
  store i8 %i.ji, ptr %i.kt, align 1, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %.0300349.i, i64 4
  store i8 %i.jj, ptr %i.ku, align 1, !tbaa !11
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %exitcond397.not.i = icmp eq i64 %indvars.iv.next394.i, %i.fm
  br i1 %exitcond397.not.i, label %._crit_edge352.loopexit.peel.begin.i, label %bb.k, !llvm.loop !64

._crit_edge352.loopexit.peel.begin.i:             ; preds = %bb.k
  %i.kv = mul nuw i64 %i.fm, %i.jl
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.fm ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 16, !tbaa !71
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !70
  %i.la = sub i32 %i.gj, %.1309.i
  %i.lb = zext i32 %i.la to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr align 1 %i.kz, i64 %i.lb, i1 false)
  %i.lc = load ptr, ptr %i.kx, align 16, !tbaa !71
  store ptr %i.lc, ptr %i.kw, align 8, !tbaa !70
  %i.ld = add i32 %i.gj, 21
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr i8, ptr %scevgep392.i, i64 %i.le ; 6 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.fm
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !10
  %i.li = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lh) #9, !srcloc !89
  store i32 %i.li, ptr %i.lf, align 4, !tbaa !10
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.fm
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !10
  %i.ll = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lk) #9, !srcloc !90
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !10
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.fm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !10
  %i.lp = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lo) #9, !srcloc !91
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !10
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.fm
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !10
  %i.lt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ls) #9, !srcloc !92
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !10
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.fm
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !10
  %i.lx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lw) #9, !srcloc !93
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !10
  %i.lz = getelementptr i8, ptr %i.lf, i64 20
  %i.ma = add i32 %i.gj, 4
  %i.mb = and i32 %i.ma, 15                       ; 2 uses
  %i.mc = trunc nuw nsw i32 %i.mb to i8
  %i.md = xor i8 %i.mc, 15
  %i.me = sub i32 11, %i.gj
  %i.mf = and i32 %i.me, 15
  %narrow.i = add nuw nsw i32 %i.mf, 1
  %i.mg = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lz, i8 %i.md, i64 %i.mg, i1 false), !tbaa !11
  %i.mh = sub i32 %i.gj, %i.mb                    ; 3 uses
  %reass.sub.peel.i = add i32 %i.mh, 36
  %i.mi = sub i32 %reass.sub.peel.i, %.1309.i
  %i.mj = lshr i32 %i.mi, 4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !77
  %i.ml = add i32 %i.mh, 52                       ; 2 uses
  %i.mm = load i8, ptr %i.ip, align 4, !tbaa !11
  store i8 %i.mm, ptr %scevgep392.i, align 1, !tbaa !11
  %i.mn = load i8, ptr %i.iq, align 1, !tbaa !11
  %i.mo = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 1
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !11
  %i.mp = load i8, ptr %i.ir, align 2, !tbaa !11
  %i.mq = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 2
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !11
  %i.mr = lshr i32 %i.ml, 8
  %i.ms = trunc i32 %i.mr to i8
  %i.mt = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 3
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !11
  %i.mu = trunc i32 %i.ml to i8
  %i.mv = getelementptr inbounds nuw i8, ptr %scevgep392.i, i64 4
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !11
  %i.mw = add i32 %i.mh, 57
  %i.mx = zext i32 %i.mw to i64
  %i.my = add nuw i64 %i.kv, %i.mx
  br label %._crit_edge352.i

._crit_edge352.i:                                 ; preds = %._crit_edge352.loopexit.peel.begin.i, %._crit_edge340.thread.i
  %.0310.lcssa.i = phi i64 [ 0, %._crit_edge340.thread.i ], [ %i.my, %._crit_edge352.loopexit.peel.begin.i ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.mz, i32 noundef range(i32 0, 1073741824) %i.i) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 160) #8
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0310.lcssa.i, ptr %i.na, align 8, !tbaa !94
  %i.nb = trunc i64 %.0310.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge352.i
  %.0.i = phi i32 [ %i.nb, %._crit_edge352.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @aesni_cbc_sha1_enc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @sha1_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noreturn nounwind }

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
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS17prov_cipher_hw_st", !13, i64 0}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !13, i64 0}
!18 = !{!"prov_cipher_ctx_st", !6, i64 0, !6, i64 16, !6, i64 32, !13, i64 48, !6, i64 56, !7, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !7, i64 104, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 112, !15, i64 120, !7, i64 128, !14, i64 136, !7, i64 144, !14, i64 152, !7, i64 160, !16, i64 168, !13, i64 176, !17, i64 184}
!19 = !{!"aes_key_st", !6, i64 0, !7, i64 240}
!20 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !13, i64 0}
!21 = !{!"prov_aes_hmac_sha_ctx_st", !18, i64 0, !19, i64 192, !14, i64 440, !6, i64 448, !20, i64 464, !7, i64 472, !7, i64 476, !14, i64 480, !14, i64 488, !14, i64 496}
!22 = !{!21, !14, i64 440}
!23 = !{!"SHAstate_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !7, i64 92}
!24 = !{!"prov_aes_hmac_sha1_ctx_st", !21, i64 0, !23, i64 504, !23, i64 600, !23, i64 696}
!25 = !{!23, !7, i64 24}
!26 = !{!23, !7, i64 20}
!27 = !{!23, !7, i64 92}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!24, !7, i64 696}
!30 = !{!24, !7, i64 700}
!31 = !{!24, !7, i64 704}
!32 = !{!24, !7, i64 708}
!33 = !{!24, !7, i64 712}
!34 = !{!"", !15, i64 0, !15, i64 8, !14, i64 16, !7, i64 24}
!35 = !{!34, !15, i64 8}
!36 = !{!34, !7, i64 24}
!37 = !{!34, !14, i64 16}
!38 = !{!18, !7, i64 144}
!39 = !{!18, !14, i64 152}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = !{!24, !7, i64 788}
!43 = !{!24, !7, i64 720}
!44 = !{!24, !7, i64 716}
!45 = !{i64 2371091}
!46 = !{i64 2149863052}
!47 = !{!"branch_weights", i32 1, i32 1048575}
!48 = !{i64 2149863293}
!49 = !{i64 2149863449}
!50 = !{i64 2149863605}
!51 = !{i64 2149863761}
!52 = !{i64 2149863917}
!53 = !{!21, !14, i64 496}
!54 = !{!21, !14, i64 480}
!55 = !{!21, !7, i64 472}
!56 = !{!21, !7, i64 476}
!57 = distinct !{!57, !28}
!58 = distinct !{!58, !28, !75}
!59 = distinct !{!59, !28}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28, !75}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28, !75}
!65 = !{!34, !15, i64 0}
!66 = !{!21, !17, i64 184}
!67 = !{!"", !15, i64 0, !7, i64 8}
!68 = !{!67, !15, i64 0}
!69 = !{!"", !15, i64 0, !15, i64 8, !7, i64 16, !6, i64 24}
!70 = !{!69, !15, i64 0}
!71 = !{!69, !15, i64 8}
!72 = !{i64 2149860159}
!73 = !{i64 2149860319}
!74 = !{!67, !7, i64 8}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{!15, !15, i64 0}
!77 = !{!69, !7, i64 16}
!78 = !{i64 2149860843}
!79 = !{!24, !7, i64 600}
!80 = !{i64 2149860999}
!81 = !{!24, !7, i64 604}
!82 = !{i64 2149861155}
!83 = !{!24, !7, i64 608}
!84 = !{i64 2149861311}
!85 = !{!24, !7, i64 612}
!86 = !{i64 2149861467}
!87 = !{!24, !7, i64 616}
!88 = !{i64 2149861623}
!89 = !{i64 2149861825}
!90 = !{i64 2149862024}
!91 = !{i64 2149862223}
!92 = !{i64 2149862423}
!93 = !{i64 2149862623}
!94 = !{!21, !14, i64 488}
end_hunk_0
