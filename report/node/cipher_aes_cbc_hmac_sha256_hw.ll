Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cipher_aes_cbc_hmac_sha256_hw?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_tls1_multiblock_encrypt:bb.a
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.i ; 4 uses
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !69
  %i.ax = getelementptr i8, ptr %i.aw, i64 -32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !70
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %.0364.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph383.split.i, label %bb.f, !llvm.loop !56

.lr.ph383.split.i:                                ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  store i64 %i.be, ptr %5, align 16
  %i.bf = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #8, !srcloc !71 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !10 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !10 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !10 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !10 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !10 ; 2 uses
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
  store i32 %i.bh, ptr %i.cm, align 4, !tbaa !10
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv419.i
  store i32 %i.bj, ptr %i.cn, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv419.i
  store i32 %i.bm, ptr %i.co, align 4, !tbaa !10
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv419.i
  store i32 %i.bp, ptr %i.cp, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv419.i
  store i32 %i.bs, ptr %i.cq, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv419.i
  store i32 %i.bv, ptr %i.cr, align 4, !tbaa !10
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv419.i
  store i32 %i.by, ptr %i.cs, align 4, !tbaa !10
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv419.i
  store i32 %i.cb, ptr %i.ct, align 4, !tbaa !10
  %i.cu = add i64 %indvars.iv419.i, %i.bf
  %i.cv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.cu) #8, !srcloc !72
  %i.cw = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv419.i ; 8 uses
  store i64 %i.cv, ptr %i.cw, align 16, !tbaa !20
  %i.cx = load i8, ptr %i.cd, align 8, !tbaa !20  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.cx, ptr %i.cy, align 8, !tbaa !20
  %i.cz = load i8, ptr %i.ce, align 1, !tbaa !20  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 9
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !20
  %i.db = load i8, ptr %i.cf, align 2, !tbaa !20  ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  store i8 %i.db, ptr %i.dc, align 2, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 11
  store i8 %i.ci, ptr %i.dd, align 1, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i8 %i.cj, ptr %i.de, align 4, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 13
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv419.i ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !67 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.df, ptr noundef nonnull align 1 dereferenceable(51) %i.dh, i64 51, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 51
  store ptr %i.di, ptr %i.dg, align 16, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.cl, ptr %i.dj, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.cw, ptr %i.dk, align 16, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 1, ptr %i.dl, align 8, !tbaa !73
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 13 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv419.i, %i.cg
  br i1 %exitcond423.not.i, label %._crit_edge384.loopexit.peel.begin.i, label %bb.g, !llvm.loop !57

._crit_edge384.loopexit.peel.begin.i:             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next420.i
  store i32 %i.bh, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next420.i
  store i32 %i.bj, ptr %i.dn, align 4, !tbaa !10
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next420.i
  store i32 %i.bm, ptr %i.do, align 4, !tbaa !10
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next420.i
  store i32 %i.bp, ptr %i.dp, align 4, !tbaa !10
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next420.i
  store i32 %i.bs, ptr %i.dq, align 4, !tbaa !10
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next420.i
  store i32 %i.bv, ptr %i.dr, align 4, !tbaa !10
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next420.i
  store i32 %i.by, ptr %i.ds, align 4, !tbaa !10
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next420.i
  store i32 %i.cb, ptr %i.dt, align 4, !tbaa !10
  %i.du = add i64 %indvars.iv.next420.i, %i.bf
  %i.dv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.du) #8, !srcloc !72
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv.next420.i ; 8 uses
  store i64 %i.dv, ptr %i.dw, align 16, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i8 %i.cx, ptr %i.dx, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  store i8 %i.cz, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 10
  store i8 %i.db, ptr %i.dz, align 2, !tbaa !20
  %i.ea = lshr i32 %.0357.i, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 11
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !20
  %i.ed = trunc i32 %.0357.i to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i8 %i.ed, ptr %i.ee, align 4, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 13
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next420.i ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !67 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ef, ptr noundef nonnull align 1 dereferenceable(51) %i.eh, i64 51, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 51
  store ptr %i.ei, ptr %i.eg, align 16, !tbaa !67
  %i.ej = add i32 %.0357.i, -51
  %i.ek = lshr i32 %i.ej, 6
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !73
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.dw, ptr %i.em, align 16, !tbaa !67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 1, ptr %i.en, align 8, !tbaa !73
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
  %i.ev = load ptr, ptr %i.eu, align 16, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2048 ; 2 uses
  store ptr %i.ew, ptr %i.eu, align 16, !tbaa !67
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv429.i ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 16, !tbaa !67
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !73
  %i.fa = add nsw i32 %i.ez, -32
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !73
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 32, ptr %i.fb, align 8, !tbaa !73
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv429.i ; 5 uses
  %6 = load ptr, ptr %i.fc, align 8, !tbaa !69
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 2048
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !69
  %7 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !70       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 2048
  store ptr %9, ptr %7, align 8, !tbaa !70
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 128, ptr %i.fe, align 8, !tbaa !75
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 1 dereferenceable(16) %i.fg, i64 16, i1 false)
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %wide.trip.count427.i
  br i1 %exitcond433.not.i, label %._crit_edge390.us.i, label %bb.h, !llvm.loop !58

._crit_edge390.us.i:                              ; preds = %bb.h
  %i.fh = add i32 %.0361.us.i, 2048               ; 2 uses
  %i.fi = add nsw i32 %.0360.us.i, -32            ; 2 uses
  %i.fj = icmp ugt i32 %i.fi, 32
  br i1 %i.fj, label %.lr.ph389.us.i, label %.loopexit.i, !llvm.loop !59

.lr.ph386.i:                                      ; preds = %.lr.ph386.i, %.lr.ph386.preheader.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph386.preheader.i ], [ %indvars.iv.next425.i.1, %.lr.ph386.i ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv424.i
  %i.fl = load ptr, ptr %i.fk, align 16, !tbaa !67
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.fl, ptr %i.fm, align 16, !tbaa !67
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 32, ptr %i.fn, align 8, !tbaa !73
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv424.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i32 128, ptr %i.fp, align 16, !tbaa !75
  %indvars.iv.next425.i = or disjoint i64 %indvars.iv424.i, 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next425.i
  %i.fr = load ptr, ptr %i.fq, align 16, !tbaa !67
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next425.i ; 2 uses
  store ptr %i.fr, ptr %i.fs, align 16, !tbaa !67
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 32, ptr %i.ft, align 8, !tbaa !73
  %i.fu = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %indvars.iv.next425.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i32 128, ptr %i.fv, align 8, !tbaa !75
  %indvars.iv.next425.i.1 = add nuw nsw i64 %indvars.iv424.i, 2 ; 2 uses
  %exitcond428.not.i.1 = icmp eq i64 %indvars.iv.next425.i.1, %wide.trip.count427.i
  br i1 %exitcond428.not.i.1, label %.lr.ph389.us.preheader.i, label %.lr.ph386.i, !llvm.loop !60

.preheader.split.i:                               ; preds = %.preheader.split.i, %.preheader.split.preheader.i
  %.0360.i = phi i32 [ %i.fw, %.preheader.split.i ], [ %i.eq, %.preheader.split.preheader.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 0) #7
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %i.et, i32 noundef 0) #7
  %i.fw = add nsw i32 %.0360.i, -32               ; 2 uses
  %i.fx = icmp ugt i32 %i.fw, 32
  br i1 %i.fx, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !59

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
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !73
  %i.gg = shl nsw i32 %i.gf, 6                    ; 2 uses
  %i.gh = load ptr, ptr %i.gd, align 16, !tbaa !67
  %i.gi = zext i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gi
  %i.gk = add i32 %i.gc, -51
  %i.gl = add i32 %.1362.i, %i.gg
  %i.gm = sub i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv434.i ; 4 uses
  %i.go = zext i32 %i.gm to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gn, ptr align 1 %i.gj, i64 %i.go, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  store i8 -128, ptr %i.gp, align 1, !tbaa !20
  %i.gq = shl i32 %i.gc, 3
  %i.gr = add i32 %i.gq, 616
  %i.gs = icmp ult i32 %i.gm, 56                  ; 2 uses
  %i.gt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gr) #8
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv434.i ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.477.i = select i1 %i.gs, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.gs, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.gn, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.gt, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !20
  store i32 %.477.i, ptr %i.gv, align 8, !tbaa !73
  store ptr %i.gn, ptr %i.gu, align 16, !tbaa !67
  %indvars.iv.next435.i = add nuw nsw i64 %indvars.iv434.i, 1 ; 2 uses
  %exitcond438.not.i = icmp eq i64 %indvars.iv.next435.i, %i.ga
  br i1 %exitcond438.not.i, label %._crit_edge394.loopexit.peel.begin.i, label %bb.i, !llvm.loop !61

._crit_edge394.loopexit.peel.begin.i:             ; preds = %bb.i
  %i.gw = icmp eq i64 %i.ga, %i.fz
  %i.gx = select i1 %i.gw, i32 %.0357.i, i32 %.0356.i ; 7 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ga ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !73
  %i.hb = shl nsw i32 %i.ha, 6                    ; 2 uses
  %i.hc = load ptr, ptr %i.gy, align 16, !tbaa !67
  %i.hd = zext i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  %.neg11 = add i32 %i.gx, -51
  %i.hf = add i32 %.1362.i, %i.hb
  %i.hg = sub i32 %.neg11, %i.hf                  ; 2 uses
  %i.hh = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.ga ; 4 uses
  %i.hi = zext i32 %i.hg to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hh, ptr align 1 %i.he, i64 %i.hi, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  store i8 -128, ptr %i.hj, align 1, !tbaa !20
  %i.hk = shl i32 %i.gx, 3
  %i.hl = add i32 %i.hk, 616
  %i.hm = icmp ult i32 %i.hg, 56                  ; 2 uses
  %i.hn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.hl) #8
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ga ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.479.i = select i1 %i.hm, i32 1, i32 2
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hm, i64 60, i64 124
  %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.hn, ptr %.478.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !20
  store i32 %.479.i, ptr %i.hp, align 8, !tbaa !73
  store ptr %i.hh, ptr %i.ho, align 16, !tbaa !67
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
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !10
  %i.ih = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ig) #8, !srcloc !76
  %i.ii = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %indvars.iv441.i ; 11 uses
  store i32 %i.ih, ptr %i.ii, align 16, !tbaa !20
  %i.ij = load i32, ptr %i.hq, align 8, !tbaa !10
  store i32 %i.ij, ptr %i.if, align 4, !tbaa !10
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv441.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !10
  %i.im = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.il) #8, !srcloc !77
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 %i.im, ptr %i.in, align 4, !tbaa !20
  %i.io = load i32, ptr %i.hs, align 4, !tbaa !10
  store i32 %i.io, ptr %i.ik, align 4, !tbaa !10
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv441.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !10
  %i.ir = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iq) #8, !srcloc !78
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i32 %i.ir, ptr %i.is, align 8, !tbaa !20
  %i.it = load i32, ptr %i.hu, align 8, !tbaa !10
  store i32 %i.it, ptr %i.ip, align 4, !tbaa !10
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv441.i ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !10
  %i.iw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iv) #8, !srcloc !79
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !20
  %i.iy = load i32, ptr %i.hw, align 4, !tbaa !10
  store i32 %i.iy, ptr %i.iu, align 4, !tbaa !10
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv441.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !10
  %i.jb = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ja) #8, !srcloc !80
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i32 %i.jb, ptr %i.jc, align 16, !tbaa !20
  %i.jd = load i32, ptr %i.hy, align 8, !tbaa !10
  store i32 %i.jd, ptr %i.iz, align 4, !tbaa !10
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv441.i ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !10
  %i.jg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jf) #8, !srcloc !81
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !20
  %i.ji = load i32, ptr %i.ia, align 4, !tbaa !10
  store i32 %i.ji, ptr %i.je, align 4, !tbaa !10
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv441.i ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !10
  %i.jl = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jk) #8, !srcloc !82
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i32 %i.jl, ptr %i.jm, align 8, !tbaa !20
  %i.jn = load i32, ptr %i.ic, align 8, !tbaa !10
  store i32 %i.jn, ptr %i.jj, align 4, !tbaa !10
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv441.i ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !10
  %i.jq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jp) #8, !srcloc !83
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ii, i64 28
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !20
  %i.js = load i32, ptr %i.ie, align 4, !tbaa !10
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store i8 -128, ptr %i.jt, align 16, !tbaa !20
  %i.ju = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #8, !srcloc !84
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ii, i64 60
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !20
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv441.i ; 2 uses
  store ptr %i.ii, ptr %i.jw, align 16, !tbaa !67
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 1, ptr %i.jx, align 8, !tbaa !73
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count437.i
  br i1 %exitcond445.not.i, label %.lr.ph405.split.i, label %bb.j, !llvm.loop !62

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
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !70
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kw, ptr align 1 %i.kx, i64 %i.kc, i1 false)
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !70
  store ptr %i.ky, ptr %i.ku, align 8, !tbaa !69
  %i.kz = getelementptr i8, ptr %.0354403.i, i64 %i.ke ; 9 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv447.i
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !10
  %i.lc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lb) #8, !srcloc !85
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !10
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv447.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !10
  %i.lf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.le) #8, !srcloc !86
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !10
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv447.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !10
  %i.lj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.li) #8, !srcloc !87
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !10
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv447.i
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !10
  %i.ln = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lm) #8, !srcloc !88
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !10
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv447.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !10
  %i.lr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lq) #8, !srcloc !89
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !10
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv447.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !10
  %i.lv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.lu) #8, !srcloc !90
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kz, i64 20
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !10
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv447.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !10
  %i.lz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ly) #8, !srcloc !91
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !10
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv447.i
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !10
  %i.md = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mc) #8, !srcloc !92
  %i.me = getelementptr inbounds nuw i8, ptr %i.kz, i64 28
  store i32 %i.md, ptr %i.me, align 4, !tbaa !10
  %i.mf = getelementptr i8, ptr %i.kz, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.mf, i8 %i.kh, i64 %i.kl, i1 false), !tbaa !20
  %scevgep.i = getelementptr i8, ptr %.0354403.i, i64 33
  %i.mg = getelementptr i8, ptr %scevgep.i, i64 %i.ke
  %scevgep446.i = getelementptr i8, ptr %i.mg, i64 %i.kk ; 7 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store i32 %i.kn, ptr %i.mh, align 8, !tbaa !75
  %i.mi = load i8, ptr %i.jy, align 8, !tbaa !20
  store i8 %i.mi, ptr %.0354403.i, align 1, !tbaa !20
  %i.mj = load i8, ptr %i.jz, align 1, !tbaa !20
  %i.mk = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 1
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !20
  %i.ml = load i8, ptr %i.ka, align 2, !tbaa !20
  %i.mm = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !20
  %i.mn = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 3
  store i8 %i.kq, ptr %i.mn, align 1, !tbaa !20
  %i.mo = getelementptr inbounds nuw i8, ptr %.0354403.i, i64 4
  store i8 %i.kr, ptr %i.mo, align 1, !tbaa !20
  %i.mp = add i64 %.0363401.i, %i.kt              ; 2 uses
  %indvars.iv.next448.i = add nuw nsw i64 %indvars.iv447.i, 1 ; 2 uses
  %exitcond451.not.i = icmp eq i64 %indvars.iv.next448.i, %i.ga
  br i1 %exitcond451.not.i, label %._crit_edge406.loopexit.peel.begin.i, label %bb.k, !llvm.loop !63

._crit_edge406.loopexit.peel.begin.i:             ; preds = %bb.k
  %i.mq = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.ga ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 16, !tbaa !70
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !69
  %i.mu = sub i32 %i.gx, %.1362.i
  %i.mv = zext i32 %i.mu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr align 1 %i.mt, i64 %i.mv, i1 false)
  %i.mw = load ptr, ptr %i.mr, align 16, !tbaa !70
  store ptr %i.mw, ptr %i.mq, align 8, !tbaa !69
  %i.mx = add i32 %i.gx, 21
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr i8, ptr %scevgep446.i, i64 %i.my ; 9 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ga
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !10
  %i.nc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nb) #8, !srcloc !85
  store i32 %i.nc, ptr %i.mz, align 4, !tbaa !10
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ga
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !10
  %i.nf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ne) #8, !srcloc !86
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !10
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ga
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !10
  %i.nj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ni) #8, !srcloc !87
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !10
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ga
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !10
  %i.nn = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nm) #8, !srcloc !88
  %i.no = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !10
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ga
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !10
  %i.nr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nq) #8, !srcloc !89
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !10
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ga
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !10
  %i.nv = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nu) #8, !srcloc !90
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mz, i64 20
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !10
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ga
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !10
  %i.nz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ny) #8, !srcloc !91
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !10
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.ga
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !10
  %i.od = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oc) #8, !srcloc !92
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  store i32 %i.od, ptr %i.oe, align 4, !tbaa !10
  %i.of = getelementptr i8, ptr %i.mz, i64 32
  %i.og = trunc i32 %i.gx to i8
  %i.oh = and i8 %i.og, 15
  %i.oi = xor i8 %i.oh, 15
  %i.oj = and i32 %i.gx, 15
  %narrow.i = sub nuw nsw i32 16, %i.oj
  %i.ok = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.of, i8 %i.oi, i64 %i.ok, i1 false), !tbaa !20
  %i.ol = and i32 %i.gx, -16                      ; 3 uses
  %reass.sub.peel.i = add i32 %i.ol, 48
  %i.om = sub i32 %reass.sub.peel.i, %.1362.i
  %i.on = lshr i32 %i.om, 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i32 %i.on, ptr %i.oo, align 8, !tbaa !75
  %i.op = add i32 %i.ol, 64                       ; 2 uses
  %i.oq = load i8, ptr %i.jy, align 8, !tbaa !20
  store i8 %i.oq, ptr %scevgep446.i, align 1, !tbaa !20
  %i.or = load i8, ptr %i.jz, align 1, !tbaa !20
  %i.os = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 1
  store i8 %i.or, ptr %i.os, align 1, !tbaa !20
  %i.ot = load i8, ptr %i.ka, align 2, !tbaa !20
  %i.ou = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 2
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !20
  %i.ov = lshr i32 %i.op, 8
  %i.ow = trunc i32 %i.ov to i8
  %i.ox = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 3
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !20
  %i.oy = trunc i32 %i.op to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %scevgep446.i, i64 4
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !20
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
  store i64 %.0363.lcssa.i, ptr %i.pe, align 8, !tbaa !93
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noreturn nounwind }

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
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 _ZTS17prov_cipher_hw_st", !11, i64 0}
!15 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!16 = !{!"prov_cipher_ctx_st", !6, i64 0, !6, i64 16, !6, i64 32, !11, i64 48, !6, i64 56, !7, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !7, i64 104, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 108, !7, i64 112, !13, i64 120, !7, i64 128, !12, i64 136, !7, i64 144, !12, i64 152, !7, i64 160, !14, i64 168, !11, i64 176, !15, i64 184}
!17 = !{!"aes_key_st", !6, i64 0, !7, i64 240}
!18 = !{!"p1 _ZTS34prov_cipher_hw_aes_hmac_sha_ctx_st", !11, i64 0}
!19 = !{!"prov_aes_hmac_sha_ctx_st", !16, i64 0, !17, i64 192, !12, i64 440, !6, i64 448, !18, i64 464, !7, i64 472, !7, i64 476, !12, i64 480, !12, i64 488, !12, i64 496}
!20 = !{!6, !6, i64 0}
!21 = !{i64 0, i64 32, !20, i64 32, i64 4, !10, i64 36, i64 4, !10, i64 40, i64 64, !20, i64 104, i64 4, !10, i64 108, i64 4, !10}
!22 = !{!19, !12, i64 440}
!23 = !{!"SHA256state_st", !6, i64 0, !7, i64 32, !7, i64 36, !6, i64 40, !7, i64 104, !7, i64 108}
!24 = !{!23, !7, i64 36}
!25 = !{!23, !7, i64 32}
!26 = !{!23, !7, i64 104}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"", !13, i64 0, !13, i64 8, !12, i64 16, !7, i64 24}
!29 = !{!28, !13, i64 8}
!30 = !{!28, !7, i64 24}
!31 = !{!28, !12, i64 16}
!32 = !{!19, !12, i64 72}
!33 = !{!16, !7, i64 144}
!34 = !{!16, !12, i64 152}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = !{!"prov_aes_hmac_sha256_ctx_st", !19, i64 0, !23, i64 504, !23, i64 616, !23, i64 728}
!38 = !{!37, !7, i64 832}
!39 = !{!37, !7, i64 764}
!40 = !{!37, !7, i64 760}
!41 = !{i64 2373500}
!42 = !{i64 2149866580}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = !{i64 2149866821}
!45 = !{i64 2149866977}
!46 = !{i64 2149867133}
!47 = !{i64 2149867289}
!48 = !{i64 2149867445}
!49 = !{i64 2149867601}
!50 = !{i64 2149867757}
!51 = !{i64 2149867913}
!52 = !{!19, !12, i64 496}
!53 = !{!19, !12, i64 480}
!54 = !{!19, !7, i64 472}
!55 = !{!19, !7, i64 476}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27, !74}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27, !74}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27, !74}
!64 = !{!28, !13, i64 0}
!65 = !{!19, !15, i64 184}
!66 = !{!"", !13, i64 0, !7, i64 8}
!67 = !{!66, !13, i64 0}
!68 = !{!"", !13, i64 0, !13, i64 8, !7, i64 16, !6, i64 24}
!69 = !{!68, !13, i64 0}
!70 = !{!68, !13, i64 8}
!71 = !{i64 2149862634}
!72 = !{i64 2149862794}
!73 = !{!66, !7, i64 8}
!74 = !{!"llvm.loop.peeled.count", i32 1}
!75 = !{!68, !7, i64 16}
!76 = !{i64 2149863318}
!77 = !{i64 2149863474}
!78 = !{i64 2149863630}
!79 = !{i64 2149863786}
!80 = !{i64 2149863942}
!81 = !{i64 2149864098}
!82 = !{i64 2149864254}
!83 = !{i64 2149864410}
!84 = !{i64 2149864566}
!85 = !{i64 2149864768}
!86 = !{i64 2149864967}
!87 = !{i64 2149865166}
!88 = !{i64 2149865366}
!89 = !{i64 2149865566}
!90 = !{i64 2149865766}
!91 = !{i64 2149865966}
!92 = !{i64 2149866166}
!93 = !{!19, !12, i64 488}
end_hunk_0
