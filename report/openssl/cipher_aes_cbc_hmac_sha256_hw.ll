Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/cipher_aes_cbc_hmac_sha256_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_tls1_multiblock_encrypt:bb.a
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !68
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph383.split.i, label %bb.f, !llvm.loop !54

.lr.ph383.split.i:                                ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  store i64 %i.be, ptr %5, align 16
  %i.bf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #8, !srcloc !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !8  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !8  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !8  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !8  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.cg = add nsw i64 %wide.trip.count.i, -2
  %i.ch = lshr i32 %.0356.i, 8
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = trunc i32 %.0356.i to i8
  %i.ck = add i32 %.0356.i, -51
  %i.cl = lshr i32 %i.ck, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph383.split.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph383.split.i ], [ %indvars.iv.next420.i, %bb.g ] ; 14 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv419.i
  store i32 %i.bh, ptr %i.cm, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv419.i
  store i32 %i.bj, ptr %i.cn, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv419.i
  store i32 %i.bm, ptr %i.co, align 4, !tbaa !8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv419.i
  store i32 %i.bp, ptr %i.cp, align 4, !tbaa !8
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv419.i
  store i32 %i.bs, ptr %i.cq, align 4, !tbaa !8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv419.i
  store i32 %i.bv, ptr %i.cr, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv419.i
  store i32 %i.by, ptr %i.cs, align 4, !tbaa !8
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv419.i
  store i32 %i.cb, ptr %i.ct, align 4, !tbaa !8
  %i.cu = add i64 %indvars.iv419.i, %i.bf
  %i.cv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cu) #8, !srcloc !70
  %i.cw = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv419.i ; 8 uses
  store i64 %i.cv, ptr %i.cw, align 16, !tbaa !18
  %i.cx = load i8, ptr %i.cd, align 8, !tbaa !18  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !18
  %i.cz = load i8, ptr %i.ce, align 1, !tbaa !18  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !18
  %i.db = load i8, ptr %i.cf, align 2, !tbaa !18  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  store i8 %i.db, ptr %i.dc, align 2, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store i8 %i.ci, ptr %i.dd, align 1, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i8 %i.cj, ptr %i.de, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 13
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv419.i ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.df, ptr noundef nonnull align 1 dereferenceable(51) %i.dh, i64 51, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 51
  store ptr %i.di, ptr %i.dg, align 16, !tbaa !65
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.cl, ptr %i.dj, align 8, !tbaa !71
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.cw, ptr %i.dk, align 16, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 1, ptr %i.dl, align 8, !tbaa !71
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 13 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv419.i, %i.cg
  br i1 %exitcond423.not.i, label %._crit_edge384.loopexit.peel.begin.i, label %bb.g, !llvm.loop !55

._crit_edge384.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next420.i
  store i32 %i.bh, ptr %i.dm, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next420.i
  store i32 %i.bj, ptr %i.dn, align 4, !tbaa !8
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next420.i
  store i32 %i.bm, ptr %i.do, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next420.i
  store i32 %i.bp, ptr %i.dp, align 4, !tbaa !8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next420.i
  store i32 %i.bs, ptr %i.dq, align 4, !tbaa !8
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next420.i
  store i32 %i.bv, ptr %i.dr, align 4, !tbaa !8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next420.i
  store i32 %i.by, ptr %i.ds, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next420.i
  store i32 %i.cb, ptr %i.dt, align 4, !tbaa !8
  %i.du = add i64 %indvars.iv.next420.i, %i.bf
  %i.dv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.du) #8, !srcloc !70
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next420.i ; 8 uses
  store i64 %i.dv, ptr %i.dw, align 16, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i8 %i.cx, ptr %i.dx, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  store i8 %i.cz, ptr %i.dy, align 1, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 10
  store i8 %i.db, ptr %i.dz, align 2, !tbaa !18
  %i.ea = lshr i32 %.0357.i, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 11
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !18
  %i.ed = trunc i32 %.0357.i to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i8 %i.ed, ptr %i.ee, align 4, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 13
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next420.i ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !65 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ef, ptr noundef nonnull align 1 dereferenceable(51) %i.eh, i64 51, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 51
  store ptr %i.ei, ptr %i.eg, align 16, !tbaa !65
  %i.ej = add i32 %.0357.i, -51
  %i.ek = lshr i32 %i.ej, 6
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !71
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.dw, ptr %i.em, align 16, !tbaa !65
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 1, ptr %i.en, align 8, !tbaa !71
  br label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %._crit_edge384.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.eo = call i32 @llvm.umin.i32(i32 %.0356.i, i32 %.0357.i)
  %i.ep = add i32 %i.eo, -51                      ; 2 uses
  %i.eq = lshr i32 %i.ep, 6                       ; 2 uses
  %i.er = icmp ugt i32 %i.ep, 2111
  br i1 %i.er, label %.preheader378.i, label %.loopexit.i

.preheader378.i:                                  ; preds = %._crit_edge384.i
  br i1 %.not407.i, label %.preheader.split.preheader.i, label %.lr.ph386.preheader.i

.lr.ph386.preheader.i:                            ; preds = %.preheader378.i
  %wide.trip.count427.i = zext i32 %i.j to i64    ; 2 uses
  br label %.lr.ph386.i

.lr.ph389.us.preheader.i:                         ; preds = %.lr.ph386.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.lr.ph389.us.i

.preheader.split.preheader.i:                     ; preds = %.preheader378.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %.preheader.split.i

.lr.ph389.us.i:                                   ; preds = %._crit_edge390.us.i, %.lr.ph389.us.preheader.i
  %.0361.us.i = phi i32 [ %i.fh, %._crit_edge390.us.i ], [ 0, %.lr.ph389.us.preheader.i ]
  %.0360.us.i = phi i32 [ %i.fi, %._crit_edge390.us.i ], [ %i.eq, %.lr.ph389.us.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.es, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph389.us.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph389.us.i ], [ %indvars.iv.next430.i, %bb.h ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv429.i ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 16, !tbaa !65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2048 ; 2 uses
  store ptr %i.ew, ptr %i.eu, align 16, !tbaa !65
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv429.i ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 16, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !71
  %i.fa = add nsw i32 %i.ez, -32
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !71
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 32, ptr %i.fb, align 8, !tbaa !71
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv429.i ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %6 = load ptr, ptr %i.fd, align 8, !tbaa !68
  %7 = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !73
  %8 = getelementptr inbounds nuw i8, <2 x ptr> %7, i64 2048
  store <2 x ptr> %8, ptr %i.fc, align 8, !tbaa !73
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 128, ptr %i.fe, align 8, !tbaa !74
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 1 dereferenceable(16) %i.fg, i64 16, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count427.i
  br i1 %exitcond433.not.i, label %._crit_edge390.us.i, label %bb.h, !llvm.loop !56

._crit_edge390.us.i:                              ; preds = %bb.h
  %i.fh = add i32 %.0361.us.i, 2048               ; 2 uses
  %i.fi = add nsw i32 %.0360.us.i, -32            ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, 32
  br i1 %i.fj, label %.lr.ph389.us.i, label %.loopexit.i, !llvm.loop !57

.lr.ph386.i:                                      ; preds = %.lr.ph386.i, %.lr.ph386.preheader.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %indvars.iv.next425.i.1, %.lr.ph386.i ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv424.i
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !65
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 16, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 32, ptr %i.fn, align 8, !tbaa !71
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv424.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i32 128, ptr %i.fp, align 16, !tbaa !74
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next425.i
  %i.fr = load ptr, ptr %i.fq, align 16, !tbaa !65
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next425.i ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 16, !tbaa !65
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 32, ptr %i.ft, align 8, !tbaa !71
  %i.fu = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next425.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i32 128, ptr %i.fv, align 8, !tbaa !74
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 2 ; 2 uses
  %exitcond428.not.i.1 = icmp eq i64 %indvars.iv.next425.i.1, %wide.trip.count427.i
  br i1 %exitcond428.not.i.1, label %.lr.ph389.us.preheader.i, label %.lr.ph386.i, !llvm.loop !58

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0360.i = phi i32 [ %i.fw, %.preheader.split.i ], [ %i.eq, %.preheader.split.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.et, i32 noundef 0) #7
  %i.fw = add nsw i32 %.0360.i, -32               ; 2 uses
  %i.fx = icmp ugt i32 %i.fw, 32
  br i1 %i.fx, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !57

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) 0) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br label %._crit_edge394.thread.i

.loopexit.i:                                      ; preds = %._crit_edge390.us.i, %._crit_edge384.i
  %.1362.i = phi i32 [ 0, %._crit_edge384.i ], [ %i.fh, %._crit_edge390.us.i ] ; 6 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  br i1 %.not407.i, label %._crit_edge394.thread.i, label %.lr.ph393.split.i

.lr.ph393.split.i:                                ; preds = %.loopexit.i
  %i.fy = add nsw i32 %i.j, -1
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %wide.trip.count437.i = zext i32 %i.j to i64    ; 2 uses
  %i.ga = add nsw i64 %wide.trip.count437.i, -1   ; 15 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph393.split.i
  %indvars.iv434.i = phi i64 [ 0, %.lr.ph393.split.i ], [ %indvars.iv.next435.i, %bb.i ] ; 5 uses
  %i.gb = icmp eq i64 %indvars.iv434.i, %i.fz
  %i.gc = select i1 %i.gb, i32 %.0357.i, i32 %.0356.i ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv434.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !71
  %i.gg = shl nsw i32 %i.gf, 6                    ; 2 uses
  %i.gh = load ptr, ptr %i.gd, align 16, !tbaa !65
  %i.gi = zext i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gi
  %i.gk = add i32 %i.gc, -51
  %i.gl = add i32 %.1362.i, %i.gg
  %i.gm = sub i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv434.i ; 4 uses
  %i.go = zext i32 %i.gm to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gn, ptr align 1 %i.gj, i64 %i.go, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  store i8 -128, ptr %i.gp, align 1, !tbaa !18
  %i.gq = shl i32 %i.gc, 3
  %i.gr = add i32 %i.gq, 616
  %i.gs = icmp ult i32 %i.gm, 56                  ; 2 uses
  %i.gt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gr) #8
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv434.i ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.477.i = select i1 %i.gs, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gs, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gt, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !18
  store i32 %.477.i, ptr %i.gv, align 8, !tbaa !71
  store ptr %i.gn, ptr %i.gu, align 16, !tbaa !65
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %exitcond438.not.i = icmp eq i64 %indvars.iv.next435.i, %i.ga
  br i1 %exitcond438.not.i, label %._crit_edge394.loopexit.peel.begin.i, label %bb.i, !llvm.loop !59

._crit_edge394.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.gw = icmp eq i64 %i.ga, %i.fz
  %i.gx = select i1 %i.gw, i32 %.0357.i, i32 %.0356.i ; 7 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ga ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !71
  %i.hb = shl nsw i32 %i.ha, 6                    ; 2 uses
  %i.hc = load ptr, ptr %i.gy, align 16, !tbaa !65
  %i.hd = zext i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  %.neg11 = add i32 %i.gx, -51
  %i.hf = add i32 %.1362.i, %i.hb
  %i.hg = sub i32 %.neg11, %i.hf                  ; 2 uses
  %i.hh = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.ga ; 4 uses
  %i.hi = zext i32 %i.hg to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hh, ptr align 1 %i.he, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  store i8 -128, ptr %i.hj, align 1, !tbaa !18
  %i.hk = shl i32 %i.gx, 3
  %i.hl = add i32 %i.hk, 616
  %i.hm = icmp ult i32 %i.hg, 56                  ; 2 uses
  %i.hn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hl) #8
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ga ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.479.i = select i1 %i.hm, i32 1, i32 2
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hm, i64 60, i64 124
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.hn, ptr %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !18
  store i32 %.479.i, ptr %i.hp, align 8, !tbaa !71
  store ptr %i.hh, ptr %i.ho, align 16, !tbaa !65
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.hv = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.hx = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.hz = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.ib = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.id = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 644
  br label %bb.j

._crit_edge394.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  br label %._crit_edge406.i

bb.j:                                             ; preds = %bb.j, %._crit_edge394.loopexit.peel.begin.i
  %indvars.iv441.i = phi i64 [ 0, %._crit_edge394.loopexit.peel.begin.i ], [ %indvars.iv.next442.i, %bb.j ] ; 11 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv441.i ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !8
  %i.ih = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ig) #8, !srcloc !75
  %i.ii = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv441.i ; 11 uses
  store i32 %i.ih, ptr %i.ii, align 16, !tbaa !18
  %i.ij = load i32, ptr %i.hq, align 8, !tbaa !8
  store i32 %i.ij, ptr %i.if, align 4, !tbaa !8
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv441.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !8
  %i.im = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.il) #8, !srcloc !76
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 %i.im, ptr %i.in, align 4, !tbaa !18
  %i.io = load i32, ptr %i.hs, align 4, !tbaa !8
  store i32 %i.io, ptr %i.ik, align 4, !tbaa !8
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv441.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !8
  %i.ir = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iq) #8, !srcloc !77
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i32 %i.ir, ptr %i.is, align 8, !tbaa !18
  %i.it = load i32, ptr %i.hu, align 8, !tbaa !8
  store i32 %i.it, ptr %i.ip, align 4, !tbaa !8
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv441.i ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.iw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iv) #8, !srcloc !78
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !18
  %i.iy = load i32, ptr %i.hw, align 4, !tbaa !8
  store i32 %i.iy, ptr %i.iu, align 4, !tbaa !8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv441.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8
  %i.jb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ja) #8, !srcloc !79
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 %i.jb, ptr %i.jc, align 16, !tbaa !18
  %i.jd = load i32, ptr %i.hy, align 8, !tbaa !8
  store i32 %i.jd, ptr %i.iz, align 4, !tbaa !8
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv441.i ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8
  %i.jg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jf) #8, !srcloc !80
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !18
  %i.ji = load i32, ptr %i.ia, align 4, !tbaa !8
  store i32 %i.ji, ptr %i.je, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv441.i ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !8
  %i.jl = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jk) #8, !srcloc !81
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i32 %i.jl, ptr %i.jm, align 8, !tbaa !18
  %i.jn = load i32, ptr %i.ic, align 8, !tbaa !8
  store i32 %i.jn, ptr %i.jj, align 4, !tbaa !8
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv441.i ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !8
  %i.jq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jp) #8, !srcloc !82
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ii, i64 28
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !18
  %i.js = load i32, ptr %i.ie, align 4, !tbaa !8
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store i8 -128, ptr %i.jt, align 16, !tbaa !18
  %i.ju = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #8, !srcloc !83
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ii, i64 60
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !18
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv441.i ; 2 uses
  store ptr %i.ii, ptr %i.jw, align 16, !tbaa !65
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 1, ptr %i.jx, align 8, !tbaa !71
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count437.i
  br i1 %exitcond445.not.i, label %.lr.ph405.split.i, label %bb.j, !llvm.loop !60

.lr.ph405.split.i:                                ; preds = %bb.j
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef range(i32 0, 1073741824) %i.i) #7
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 778 ; 2 uses
  %i.kb = sub i32 %.0356.i, %.1362.i
  %i.kc = zext i32 %i.kb to i64
  %i.kd = add nuw i32 %.0356.i, 21
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = trunc i32 %.0356.i to i8
  %i.kg = and i8 %i.kf, 15
  %i.kh = xor i8 %i.kg, 15
  %i.ki = and i32 %.0356.i, 15
  %i.kj = xor i32 %i.ki, 15
  %i.kk = zext nneg i32 %i.kj to i64              ; 2 uses
  %i.kl = add nuw nsw i64 %i.kk, 1
  %i.km = and i32 %.0356.i, -16                   ; 3 uses
  %reass.sub = sub i32 %i.km, %.1362.i
  %.reass.i = add i32 %reass.sub, 48
  %i.kn = lshr i32 %.reass.i, 4
  %i.ko = add nuw i32 %i.km, 64                   ; 2 uses
  %i.kp = lshr i32 %i.ko, 8
  %i.kq = trunc i32 %i.kp to i8
  %i.kr = trunc i32 %i.ko to i8
  %i.ks = add nuw i32 %i.km, 69
  %i.kt = zext i32 %i.ks to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph405.split.i
  %indvars.iv447.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %indvars.iv.next448.i, %bb.k ] ; 10 uses
  %.0354403.i = phi ptr [ %i.b, %.lr.ph405.split.i ], [ %scevgep446.i, %bb.k ] ; 7 uses
  %.0363401.i = phi i64 [ 0, %.lr.ph405.split.i ], [ %i.mp, %bb.k ]
  %i.ku = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv447.i ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !68
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.kx, i64 %i.kc, i1 false)
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !68
  store ptr %i.ky, ptr %i.ku, align 8, !tbaa !67
  %i.kz = getelementptr i8, ptr %.0354403.i, i64 %i.ke ; 9 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv447.i
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !8
  %i.lc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lb) #8, !srcloc !84
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !8
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv447.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.le) #8, !srcloc !85
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !8
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv447.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8
  %i.lj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.li) #8, !srcloc !86
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv447.i
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !8
  %i.ln = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lm) #8, !srcloc !87
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !8
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv447.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !8
  %i.lr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lq) #8, !srcloc !88
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !8
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv447.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8
  %i.lv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lu) #8, !srcloc !89
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !8
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv447.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !8
  %i.lz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ly) #8, !srcloc !90
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !8
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv447.i
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !8
  %i.md = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mc) #8, !srcloc !91
  %i.me = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  store i32 %i.md, ptr %i.me, align 4, !tbaa !8
  %i.mf = getelementptr i8, ptr %i.kz, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.mf, i8 %i.kh, i64 %i.kl, i1 false), !tbaa !18
  %scevgep.i = getelementptr i8, ptr %.0354403.i, i64 33
  %i.mg = getelementptr i8, ptr %scevgep.i, i64 %i.ke
  %scevgep446.i = getelementptr i8, ptr %i.mg, i64 %i.kk ; 7 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i32 %i.kn, ptr %i.mh, align 8, !tbaa !74
  %i.mi = load i8, ptr %i.jy, align 8, !tbaa !18
  store i8 %i.mi, ptr %.0354403.i, align 1, !tbaa !18
  %i.mj = load i8, ptr %i.jz, align 1, !tbaa !18
  %i.mk = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 1
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !18
  %i.ml = load i8, ptr %i.ka, align 2, !tbaa !18
  %i.mm = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 3
  store i8 %i.kq, ptr %i.mn, align 1, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 4
  store i8 %i.kr, ptr %i.mo, align 1, !tbaa !18
  %i.mp = add i64 %.0363401.i, %i.kt              ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %i.ga
  br i1 %exitcond451.not.i, label %._crit_edge406.loopexit.peel.begin.i, label %bb.k, !llvm.loop !61

._crit_edge406.loopexit.peel.begin.i:             ; preds = %bb.k
  %i.mq = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.ga ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 16, !tbaa !68
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !67
  %i.mu = sub i32 %i.gx, %.1362.i
  %i.mv = zext i32 %i.mu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr align 1 %i.mt, i64 %i.mv, i1 false)
  %i.mw = load ptr, ptr %i.mr, align 16, !tbaa !68
  store ptr %i.mw, ptr %i.mq, align 8, !tbaa !67
  %i.mx = add i32 %i.gx, 21
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr i8, ptr %scevgep446.i, i64 %i.my ; 9 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ga
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !8
  %i.nc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nb) #8, !srcloc !84
  store i32 %i.nc, ptr %i.mz, align 4, !tbaa !8
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ga
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8
  %i.nf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ne) #8, !srcloc !85
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !8
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ga
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8
  %i.nj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ni) #8, !srcloc !86
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !8
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ga
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !8
  %i.nn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nm) #8, !srcloc !87
  %i.no = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !8
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ga
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !8
  %i.nr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nq) #8, !srcloc !88
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !8
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ga
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !8
  %i.nv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nu) #8, !srcloc !89
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mz, i64 20
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !8
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ga
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !8
  %i.nz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ny) #8, !srcloc !90
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !8
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ga
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !8
  %i.od = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oc) #8, !srcloc !91
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !8
  %i.of = getelementptr i8, ptr %i.mz, i64 32
  %i.og = trunc i32 %i.gx to i8
  %i.oh = and i8 %i.og, 15
  %i.oi = xor i8 %i.oh, 15
  %i.oj = and i32 %i.gx, 15
  %narrow.i = sub nuw nsw i32 16, %i.oj
  %i.ok = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.of, i8 %i.oi, i64 %i.ok, i1 false), !tbaa !18
  %i.ol = and i32 %i.gx, -16                      ; 3 uses
  %reass.sub.peel.i = add i32 %i.ol, 48
  %i.om = sub i32 %reass.sub.peel.i, %.1362.i
  %i.on = lshr i32 %i.om, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i32 %i.on, ptr %i.oo, align 8, !tbaa !74
  %i.op = add i32 %i.ol, 64                       ; 2 uses
  %i.oq = load i8, ptr %i.jy, align 8, !tbaa !18
  store i8 %i.oq, ptr %scevgep446.i, align 1, !tbaa !18
  %i.or = load i8, ptr %i.jz, align 1, !tbaa !18
  %i.os = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 1
  store i8 %i.or, ptr %i.os, align 1, !tbaa !18
  %i.ot = load i8, ptr %i.ka, align 2, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 2
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !18
  %i.ov = lshr i32 %i.op, 8
  %i.ow = trunc i32 %i.ov to i8
  %i.ox = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 3
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !18
  %i.oy = trunc i32 %i.op to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 4
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !18
  %i.pa = add i32 %i.ol, 69
  %i.pb = zext i32 %i.pa to i64
  %i.pc = add i64 %i.mp, %i.pb
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.peel.begin.i, %._crit_edge394.thread.i
  %.0363.lcssa.i = phi i64 [ 0, %._crit_edge394.thread.i ], [ %i.pc, %._crit_edge406.loopexit.peel.begin.i ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.pd, i32 noundef range(i32 0, 1073741824) %i.i) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %5, i64 noundef 1024) #7
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.u, i64 noundef 256) #7
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 %.0363.lcssa.i, ptr %i.pe, align 8, !tbaa !92
  %i.pf = trunc i64 %.0363.lcssa.i to i32
  br label %tls1_multi_block_encrypt.exit

tls1_multi_block_encrypt.exit:                    ; preds = %bb.a, %._crit_edge406.i
  %.0.i = phi i32 [ %i.pf, %._crit_edge406.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SHA256_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_multi_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @aesni_multi_cbc_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS17prov_cipher_hw_st", !9, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !9, i64 0}
!14 = !{!"prov_cipher_ctx_st", !4, i64 0, !4, i64 16, !4, i64 32, !9, i64 48, !4, i64 56, !5, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 108, !5, i64 112, !11, i64 120, !5, i64 128, !10, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !12, i64 168, !9, i64 176, !13, i64 184}
!15 = !{!"aes_key_st", !4, i64 0, !5, i64 240}
!16 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !9, i64 0}
!17 = !{!"prov_aes_hmac_sha_ctx_st", !14, i64 0, !15, i64 192, !10, i64 440, !4, i64 448, !16, i64 464, !5, i64 472, !5, i64 476, !10, i64 480, !10, i64 488, !10, i64 496}
!18 = !{!4, !4, i64 0}
!19 = !{i64 0, i64 32, !18, i64 32, i64 4, !8, i64 36, i64 4, !8, i64 40, i64 64, !18, i64 104, i64 4, !8, i64 108, i64 4, !8}
!20 = !{!17, !10, i64 440}
!21 = !{!"SHA256state_st", !4, i64 0, !5, i64 32, !5, i64 36, !4, i64 40, !5, i64 104, !5, i64 108}
!22 = !{!21, !5, i64 36}
!23 = !{!21, !5, i64 32}
!24 = !{!21, !5, i64 104}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"", !11, i64 0, !11, i64 8, !10, i64 16, !5, i64 24}
!27 = !{!26, !11, i64 8}
!28 = !{!26, !5, i64 24}
!29 = !{!26, !10, i64 16}
!30 = !{!17, !10, i64 72}
!31 = !{!14, !5, i64 144}
!32 = !{!14, !10, i64 152}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = !{!"prov_aes_hmac_sha256_ctx_st", !17, i64 0, !21, i64 504, !21, i64 616, !21, i64 728}
!36 = !{!35, !5, i64 832}
!37 = !{!35, !5, i64 764}
!38 = !{!35, !5, i64 760}
!39 = !{i64 2307153}
!40 = !{i64 2149799995}
!41 = !{!"branch_weights", i32 1, i32 1048575}
!42 = !{i64 2149800236}
!43 = !{i64 2149800392}
!44 = !{i64 2149800548}
!45 = !{i64 2149800704}
!46 = !{i64 2149800860}
!47 = !{i64 2149801016}
!48 = !{i64 2149801172}
!49 = !{i64 2149801328}
!50 = !{!17, !10, i64 496}
!51 = !{!17, !10, i64 480}
!52 = !{!17, !5, i64 472}
!53 = !{!17, !5, i64 476}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25, !72}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = distinct !{!59, !25, !72}
!60 = distinct !{!60, !25}
!61 = distinct !{!61, !25, !72}
!62 = !{!26, !11, i64 0}
!63 = !{!17, !13, i64 184}
!64 = !{!"", !11, i64 0, !5, i64 8}
!65 = !{!64, !11, i64 0}
!66 = !{!"", !11, i64 0, !11, i64 8, !5, i64 16, !4, i64 24}
!67 = !{!66, !11, i64 0}
!68 = !{!66, !11, i64 8}
!69 = !{i64 2149796049}
!70 = !{i64 2149796209}
!71 = !{!64, !5, i64 8}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!11, !11, i64 0}
!74 = !{!66, !5, i64 16}
!75 = !{i64 2149796733}
!76 = !{i64 2149796889}
!77 = !{i64 2149797045}
!78 = !{i64 2149797201}
!79 = !{i64 2149797357}
!80 = !{i64 2149797513}
!81 = !{i64 2149797669}
!82 = !{i64 2149797825}
!83 = !{i64 2149797981}
!84 = !{i64 2149798183}
!85 = !{i64 2149798382}
!86 = !{i64 2149798581}
!87 = !{i64 2149798781}
!88 = !{i64 2149798981}
!89 = !{i64 2149799181}
!90 = !{i64 2149799381}
!91 = !{i64 2149799581}
!92 = !{!17, !10, i64 488}
end_hunk_0
