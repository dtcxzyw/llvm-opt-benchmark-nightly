Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/encode?download=true
inline.NumInlined: 177
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@BrotliEncoderCompressStream:bb.a
  %i.gn = or i64 %i.gm, %i.gk
  store i64 %i.gn, ptr %i.gi, align 1, !noalias !198
  %i.go = add nuw nsw i64 %i.fc, 6                ; 3 uses
  %i.gp = shl nuw nsw i32 %i.gf, 3
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = add nsw i64 %i.fa, -1
  %i.gs = lshr i64 %i.go, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !68, !alias.scope !199, !noalias !200
  %i.gv = zext i8 %i.gu to i64
  %i.gw = and i64 %i.go, 7
  %i.gx = shl nuw nsw i64 %i.gr, %i.gw
  %i.gy = or i64 %i.gx, %i.gv
  store i64 %i.gy, ptr %i.gt, align 1, !noalias !200
  %i.gz = add nuw nsw i64 %i.go, %i.gq
  br label %WriteMetadataHeader.exit.i

WriteMetadataHeader.exit.i:                       ; preds = %bb.ba, %bb.ay
  %.0.i75.i = phi i64 [ %i.gz, %bb.ba ], [ %i.ga, %bb.ay ]
  %i.ha = add nuw nsw i64 %.0.i75.i, 7
  %i.hb = lshr i64 %i.ha, 3
  store i64 %i.hb, ptr %i.db, align 8, !tbaa !70
  store i32 4, ptr %i.ct, align 4, !tbaa !56
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %WriteMetadataHeader.exit.i, %thread-pre-split.i
  %.be = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 4, %WriteMetadataHeader.exit.i ]
  br label %.backedge.i

bb.bb:                                            ; preds = %bb.aw
  %i.hc = load i32, ptr %i.cg, align 8, !tbaa !184 ; 3 uses
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 -1, ptr %i.cg, align 8, !tbaa !184
  store i32 0, ptr %i.ct, align 4, !tbaa !56
  br label %ProcessMetadata.exit

bb.bd:                                            ; preds = %bb.bb
  %i.he = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not73.i = icmp eq i64 %i.he, 0
  br i1 %.not73.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hf = zext i32 %i.hc to i64
  %i.hg = tail call i64 @llvm.umin.i64(i64 %i.hf, i64 %i.he) ; 7 uses
  %i.hh = trunc nuw i64 %i.hg to i32
  %i.hi = load ptr, ptr %5, align 8, !tbaa !69
  %i.hj = load ptr, ptr %3, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.hj, i64 %i.hg, i1 false)
  %i.hk = load ptr, ptr %3, align 8, !tbaa !69
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hg
  store ptr %i.hl, ptr %3, align 8, !tbaa !69
  %i.hm = load i64, ptr %2, align 8, !tbaa !67
  %i.hn = sub i64 %i.hm, %i.hg
  store i64 %i.hn, ptr %2, align 8, !tbaa !67
  %i.ho = load i64, ptr %i.dg, align 8, !tbaa !201
  %i.hp = add i64 %i.ho, %i.hg
  store i64 %i.hp, ptr %i.dg, align 8, !tbaa !201
  %i.hq = load i32, ptr %i.cg, align 8, !tbaa !184
  %i.hr = sub i32 %i.hq, %i.hh
  store i32 %i.hr, ptr %i.cg, align 8, !tbaa !184
  %i.hs = load ptr, ptr %5, align 8, !tbaa !69
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hg
  store ptr %i.ht, ptr %5, align 8, !tbaa !69
  %i.hu = load i64, ptr %4, align 8, !tbaa !67
  %i.hv = sub i64 %i.hu, %i.hg
  store i64 %i.hv, ptr %4, align 8, !tbaa !67
  br label %thread-pre-split.i

bb.bf:                                            ; preds = %bb.bd
  %i.hw = tail call range(i32 1, 0) i32 @llvm.umin.i32(i32 range(i32 1, 0) %i.hc, i32 16) ; 2 uses
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !77
  %i.hx = load ptr, ptr %3, align 8, !tbaa !69
  %i.hy = zext nneg i32 %i.hw to i64              ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %i.hx, i64 %i.hy, i1 false)
  %i.hz = load ptr, ptr %3, align 8, !tbaa !69
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store ptr %i.ia, ptr %3, align 8, !tbaa !69
  %i.ib = load i64, ptr %2, align 8, !tbaa !67
  %i.ic = sub i64 %i.ib, %i.hy
  store i64 %i.ic, ptr %2, align 8, !tbaa !67
  %i.id = load i64, ptr %i.dg, align 8, !tbaa !201
  %i.ie = add i64 %i.id, %i.hy
  store i64 %i.ie, ptr %i.dg, align 8, !tbaa !201
  %i.if = load i32, ptr %i.cg, align 8, !tbaa !184
  %i.ig = sub i32 %i.if, %i.hw
  store i32 %i.ig, ptr %i.cg, align 8, !tbaa !184
  store i64 %i.hy, ptr %i.db, align 8, !tbaa !70
  br label %thread-pre-split.i

bb.bg:                                            ; preds = %bb.ae
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 6964 ; 10 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !56
  switch i32 %i.ii, label %bb.bh [
    i32 3, label %ProcessMetadata.exit
    i32 4, label %ProcessMetadata.exit
    i32 0, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ij = load i64, ptr %2, align 8, !tbaa !67
  %.not97 = icmp eq i64 %i.ij, 0
  br i1 %.not97, label %bb.bi, label %ProcessMetadata.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !42 ; 2 uses
  %switch = icmp ult i32 %i.il, 2
  br i1 %switch, label %bb.bj, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.im = getelementptr i8, ptr %0, i64 1424      ; 3 uses
  %i.in = getelementptr i8, ptr %0, i64 1520
  %i.io = getelementptr i8, ptr %0, i64 12
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 1611 ; 6 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1452 ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 19 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1444 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 28 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1436 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 9 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 6936 ; 2 uses
  %.not.i26.i = icmp eq ptr %6, null
  %i.jf = icmp ne i32 %1, 0
  %i.jg = icmp eq i32 %1, 2
  %i.jh = icmp eq i32 %1, 1
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %CheckFlushComplete.exit.thread195

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !43
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl                    ; 3 uses
  %i.jn = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.jo = tail call i64 @llvm.umin.i64(i64 %i.jn, i64 %i.jm) ; 2 uses
  %i.jp = tail call i64 @llvm.umin.i64(i64 %i.jo, i64 131072) ; 2 uses
  %i.jq = icmp eq i32 %i.il, 1
  br i1 %i.jq, label %bb.bk, label %.thread139.i

bb.bk:                                            ; preds = %bb.bj
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6896 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !65 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null                 ; 2 uses
  %i.ju = icmp ugt i64 %i.jo, 131071
  %or.cond.i119 = select i1 %i.jt, i1 %i.ju, i1 false
  br i1 %or.cond.i119, label %.thread.i120, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.jt, label %bb.bm, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bl
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  br label %.thread139.i

.thread.i120:                                     ; preds = %bb.bk
  %i.jv = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef 524288) #19
  store ptr %i.jv, ptr %i.jr, align 8, !tbaa !65
  %i.jw = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef 131072) #19 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 6904
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !66
  %.pr.i121 = load ptr, ptr %i.jr, align 8, !tbaa !65 ; 2 uses
  %.not121134.i = icmp eq ptr %.pr.i121, null
  br i1 %.not121134.i, label %.thread141.i, label %.thread139.i

bb.bm:                                            ; preds = %bb.bl
  %.not122.i = icmp eq i64 %i.jn, 0
  br i1 %.not122.i, label %.thread139.i, label %.thread141.i

.thread141.i:                                     ; preds = %bb.bm, %.thread.i120
  %i.jy = shl nuw nsw i64 %i.jp, 2
  %i.jz = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.jy) #19 ; 2 uses
  %i.ka = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.jp) #19 ; 2 uses
  br label %.thread139.i

.thread139.i:                                     ; preds = %.thread141.i, %bb.bm, %.thread.i120, %._crit_edge.i, %bb.bj
  %.0114.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.jz, %.thread141.i ], [ null, %._crit_edge.i ], [ null, %.thread.i120 ]
  %.0113.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.jz, %.thread141.i ], [ %i.js, %._crit_edge.i ], [ %.pr.i121, %.thread.i120 ]
  %.0112.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.ka, %.thread141.i ], [ null, %._crit_edge.i ], [ null, %.thread.i120 ]
  %.0111.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.ka, %.thread141.i ], [ %.pre.i, %._crit_edge.i ], [ %i.jw, %.thread.i120 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 5 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 7 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 6936 ; 4 uses
  %.not.i26.i.i109 = icmp eq ptr %6, null         ; 2 uses
  %i.kh = icmp ne i32 %1, 0
  %i.ki = icmp eq i32 %1, 2                       ; 2 uses
  %7 = icmp ne i32 %1, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 6872 ; 2 uses
  %.phi.trans.insert.i129.i = getelementptr inbounds nuw i8, ptr %0, i64 6864 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 6888
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 2 uses
  %i.kp = add i32 %1, -1
  %i.kq = icmp ult i32 %i.kp, 2
  %spec.select.i110 = select i1 %i.ki, i32 2, i32 1
  br label %.backedge.i113

.backedge.i113:                                   ; preds = %.backedge.i113.backedge, %.thread139.i
  %i.kr = load i32, ptr %i.ih, align 4, !tbaa !56 ; 2 uses
  %i.ks = icmp eq i32 %i.kr, 1
  br i1 %i.ks, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %.backedge.i113
  %i.kt = load i8, ptr %i.kb, align 2, !tbaa !72  ; 5 uses
  %.not.i.i115 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i115, label %.thread156.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ku = load i16, ptr %i.kc, align 8, !tbaa !73
  %i.kv = zext i16 %i.ku to i32
  store i16 0, ptr %i.kc, align 8, !tbaa !73
  store i8 0, ptr %i.kb, align 2, !tbaa !72
  %i.kw = zext nneg i8 %i.kt to i32
  %i.kx = shl i32 6, %i.kw                        ; 2 uses
  %i.ky = or i32 %i.kx, %i.kv                     ; 2 uses
  %i.kz = load ptr, ptr %i.kd, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i116, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.la = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.la
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !77
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i.i.i117 = phi ptr [ %i.lb, %bb.bp ], [ %i.kf, %bb.bq ] ; 3 uses
  %i.lc = trunc i32 %i.ky to i8
  store i8 %i.lc, ptr %.0.i.i.i117, align 1, !tbaa !68
  %i.ld = icmp ugt i8 %i.kt, 2
  br i1 %i.ld, label %bb.bs, label %InjectBytePaddingBlock.exit.i.i118

bb.bs:                                            ; preds = %bb.br
  %i.le = lshr i32 %i.ky, 8
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 1
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !68
  %i.lh = icmp ugt i8 %i.kt, 10
  br i1 %i.lh, label %bb.bt, label %InjectBytePaddingBlock.exit.i.i118

bb.bt:                                            ; preds = %bb.bs
  %i.li = lshr i32 %i.kx, 16
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 2
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !68
  br label %InjectBytePaddingBlock.exit.i.i118

InjectBytePaddingBlock.exit.i.i118:               ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ll = zext i8 %i.kt to i64
  %i.lm = add nuw nsw i64 %i.ll, 13
  %i.ln = lshr i64 %i.lm, 3
  %i.lo = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.lp = add i64 %i.lo, %i.ln
  store i64 %i.lp, ptr %i.ke, align 8, !tbaa !70
  br label %.backedge.i113.backedge

bb.bu:                                            ; preds = %.backedge.i113
  %i.lq = load i64, ptr %i.ke, align 8, !tbaa !70 ; 2 uses
  %.not24.i.i111 = icmp eq i64 %i.lq, 0
  br i1 %.not24.i.i111, label %bb.by, label %bb.bv

.thread156.i:                                     ; preds = %bb.bn
  %i.lr = load i64, ptr %i.ke, align 8, !tbaa !70 ; 2 uses
  %.not24.i157.i = icmp eq i64 %i.lr, 0
  br i1 %.not24.i157.i, label %.thread158.i, label %bb.bv

bb.bv:                                            ; preds = %.thread156.i, %bb.bu
  %i.ls = phi i64 [ %i.lr, %.thread156.i ], [ %i.lq, %bb.bu ]
  %i.lt = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not25.i.i112 = icmp eq i64 %i.lt, 0
  br i1 %.not25.i.i112, label %.thread158.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lu = call i64 @llvm.umin.i64(i64 %i.ls, i64 %i.lt) ; 6 uses
  %i.lv = load ptr, ptr %5, align 8, !tbaa !69
  %i.lw = load ptr, ptr %i.kd, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lv, ptr align 1 %i.lw, i64 %i.lu, i1 false)
  %i.lx = load ptr, ptr %5, align 8, !tbaa !69
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lu
  store ptr %i.ly, ptr %5, align 8, !tbaa !69
  %i.lz = load i64, ptr %4, align 8, !tbaa !67
  %i.ma = sub i64 %i.lz, %i.lu
  store i64 %i.ma, ptr %4, align 8, !tbaa !67
  %i.mb = load ptr, ptr %i.kd, align 8, !tbaa !77
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lu
  store ptr %i.mc, ptr %i.kd, align 8, !tbaa !77
  %i.md = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.me = sub i64 %i.md, %i.lu
  store i64 %i.me, ptr %i.ke, align 8, !tbaa !70
  %i.mf = load i64, ptr %i.kg, align 8, !tbaa !78
  %i.mg = add i64 %i.mf, %i.lu                    ; 2 uses
  store i64 %i.mg, ptr %i.kg, align 8, !tbaa !78
  br i1 %.not.i26.i.i109, label %.backedge.i113.backedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.mg, ptr %6, align 8, !tbaa !67
  br label %.backedge.i113.backedge

bb.by:                                            ; preds = %bb.bu
  %i.mh = icmp eq i32 %i.kr, 0
  br i1 %i.mh, label %bb.bz, label %.thread158.i

bb.bz:                                            ; preds = %bb.by
  %i.mi = load i64, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.mj = icmp ne i64 %i.mi, 0                    ; 3 uses
  %or.cond3.i = or i1 %i.kh, %i.mj
  br i1 %or.cond3.i, label %bb.ca, label %.thread158.i

bb.ca:                                            ; preds = %bb.bz
  %i.mk = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.mi) ; 7 uses
  %i.ml = icmp ule i64 %i.mi, %i.jm               ; 2 uses
  %i.mm = and i1 %i.ki, %i.ml
  %i.mn = zext i1 %i.mm to i32                    ; 2 uses
  %i.mo = shl i64 %i.mk, 1
  %i.mp = add i64 %i.mo, 503                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.mq = load i8, ptr %i.kb, align 2, !tbaa !72
  %i.mr = zext i8 %i.mq to i64
  store i64 %i.mr, ptr %i.a, align 8, !tbaa !67
  %or.cond5.not.i = or i1 %7, %i.mj
  br i1 %or.cond5.not.i, label %bb.cb, label %.sink.split.i

bb.cb:                                            ; preds = %bb.ca
  %i.ms = load i64, ptr %4, align 8, !tbaa !67
  %.not124.i = icmp ugt i64 %i.mp, %i.ms          ; 2 uses
  br i1 %.not124.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mt = load ptr, ptr %5, align 8, !tbaa !69
  br label %GetBrotliStorage.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.mu = load i64, ptr %i.kj, align 8, !tbaa !80
  %i.mv = icmp ult i64 %i.mu, %i.mp
  %i.mw = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %i.mv, label %bb.ce, label %GetBrotliStorage.exit.i

bb.ce:                                            ; preds = %bb.cd
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.mw) #19
  store ptr null, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %i.mx = call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.mp) #19 ; 2 uses
  store ptr %i.mx, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  store i64 %i.mp, ptr %i.kj, align 8, !tbaa !80
  br label %GetBrotliStorage.exit.i

GetBrotliStorage.exit.i:                          ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0109.i = phi ptr [ %i.mt, %bb.cc ], [ %i.mx, %bb.ce ], [ %i.mw, %bb.cd ] ; 6 uses
  %i.my = load i16, ptr %i.kc, align 8, !tbaa !73
  %i.mz = trunc i16 %i.my to i8
  store i8 %i.mz, ptr %.0109.i, align 1, !tbaa !68
  %i.na = load i16, ptr %i.kc, align 8, !tbaa !73
  %i.nb = lshr i16 %i.na, 8
  %i.nc = trunc nuw i16 %i.nb to i8
  %i.nd = getelementptr inbounds nuw i8, ptr %.0109.i, i64 1
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !68
  %i.ne = load i32, ptr %i.ik, align 4, !tbaa !42
  %i.nf = icmp eq i32 %i.ne, 0                    ; 2 uses
  %i.ng = select i1 %i.nf, i64 32768, i64 131072
  %invariant.umin.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.ng, i64 %i.mk)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %GetBrotliStorage.exit.i
  %.0.i.i127.i = phi i64 [ 256, %GetBrotliStorage.exit.i ], [ %i.ni, %bb.cf ] ; 4 uses
  %i.nh = icmp ult i64 %.0.i.i127.i, %invariant.umin.i.i.i
  %i.ni = shl i64 %.0.i.i127.i, 1                 ; 2 uses
  br i1 %i.nh, label %bb.cf, label %HashTableSize.exit.i.i, !llvm.loop !0

HashTableSize.exit.i.i:                           ; preds = %bb.cf
  %i.nj = and i64 %.0.i.i127.i, 698880
  %i.nk = icmp eq i64 %i.nj, 0
  %or.cond.i.i114 = and i1 %i.nf, %i.nk
  %.025.i.i = select i1 %or.cond.i.i114, i64 %i.ni, i64 %.0.i.i127.i ; 7 uses
  %i.nl = icmp ult i64 %.025.i.i, 1025
  br i1 %i.nl, label %GetHashTable.exit.i, label %bb.cg

bb.cg:                                            ; preds = %HashTableSize.exit.i.i
  %i.nm = load i64, ptr %i.kk, align 8, !tbaa !81
  %i.nn = icmp ugt i64 %.025.i.i, %i.nm
  br i1 %i.nn, label %bb.ch, label %._crit_edge.i128.i

._crit_edge.i128.i:                               ; preds = %bb.cg
  %.pre.i130.i = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %GetHashTable.exit.i

bb.ch:                                            ; preds = %bb.cg
  store i64 %.025.i.i, ptr %i.kk, align 8, !tbaa !81
  %i.no = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.no) #19
  store ptr null, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  %i.np = shl i64 %.025.i.i, 2
  %i.nq = call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.np) #19 ; 2 uses
  store ptr %i.nq, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %GetHashTable.exit.i

GetHashTable.exit.i:                              ; preds = %bb.ch, %._crit_edge.i128.i, %HashTableSize.exit.i.i
  %.0.i131.i = phi ptr [ %i.nq, %bb.ch ], [ %.pre.i130.i, %._crit_edge.i128.i ], [ %i.kl, %HashTableSize.exit.i.i ] ; 3 uses
  %i.nr = shl i64 %.025.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.0.i131.i, i8 0, i64 %i.nr, i1 false)
  %i.ns = load i32, ptr %i.ik, align 4, !tbaa !42
  %i.nt = icmp eq i32 %i.ns, 0
  %i.nu = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  br i1 %i.nt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %GetHashTable.exit.i
  %i.nv = load ptr, ptr %i.kn, align 8, !tbaa !63
  call void @BrotliCompressFragmentFast(ptr noundef %i.nv, ptr noundef %i.nu, i64 noundef %i.mk, i32 noundef %i.mn, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0109.i) #19
  br label %bb.ck

bb.cj:                                            ; preds = %GetHashTable.exit.i
  %i.nw = load ptr, ptr %i.km, align 8, !tbaa !64
  call void @BrotliCompressFragmentTwoPass(ptr noundef %i.nw, ptr noundef %i.nu, i64 noundef %i.mk, i32 noundef %i.mn, ptr noundef %.0113.i, ptr noundef %.0111.i, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0109.i) #19
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mj, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nx = load ptr, ptr %3, align 8, !tbaa !69
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.mk
  store ptr %i.ny, ptr %3, align 8, !tbaa !69
  %i.nz = load i64, ptr %2, align 8, !tbaa !67
  %i.oa = sub i64 %i.nz, %i.mk
  store i64 %i.oa, ptr %2, align 8, !tbaa !67
  %i.ob = load i64, ptr %i.ko, align 8, !tbaa !201
  %i.oc = add i64 %i.ob, %i.mk
  store i64 %i.oc, ptr %i.ko, align 8, !tbaa !201
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.od = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.oe = lshr i64 %i.od, 3                       ; 5 uses
  br i1 %.not124.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.of = load ptr, ptr %5, align 8, !tbaa !69
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oe
  store ptr %i.og, ptr %5, align 8, !tbaa !69
  %i.oh = load i64, ptr %4, align 8, !tbaa !67
  %i.oi = sub i64 %i.oh, %i.oe
  store i64 %i.oi, ptr %4, align 8, !tbaa !67
  %i.oj = load i64, ptr %i.kg, align 8, !tbaa !78
  %i.ok = add i64 %i.oj, %i.oe                    ; 2 uses
  store i64 %i.ok, ptr %i.kg, align 8, !tbaa !78
  br i1 %.not.i26.i.i109, label %SetTotalOut.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 %i.ok, ptr %6, align 8, !tbaa !67
  br label %SetTotalOut.exit.i

bb.cp:                                            ; preds = %bb.cm
  store ptr %.0109.i, ptr %i.kd, align 8, !tbaa !77
  store i64 %i.oe, ptr %i.ke, align 8, !tbaa !70
  br label %SetTotalOut.exit.i

SetTotalOut.exit.i:                               ; preds = %bb.cp, %bb.co, %bb.cn
  %i.ol = getelementptr inbounds nuw i8, ptr %.0109.i, i64 %i.oe
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !68
  %i.on = zext i8 %i.om to i16
  store i16 %i.on, ptr %i.kc, align 8, !tbaa !73
  %i.oo = trunc i64 %i.od to i8
  %i.op = and i8 %i.oo, 7
  store i8 %i.op, ptr %i.kb, align 2, !tbaa !72
  %i.oq = and i1 %i.kq, %i.ml
  br i1 %i.oq, label %.sink.split.i, label %bb.cq

.sink.split.i:                                    ; preds = %SetTotalOut.exit.i, %bb.ca
  %spec.select.sink.i = phi i32 [ 1, %bb.ca ], [ %spec.select.i110, %SetTotalOut.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ih, align 4, !tbaa !56
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split.i, %SetTotalOut.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.backedge.i113.backedge

.backedge.i113.backedge:                          ; preds = %bb.cq, %bb.bx, %bb.bw, %InjectBytePaddingBlock.exit.i.i118
  br label %.backedge.i113

.thread158.i:                                     ; preds = %bb.bz, %bb.by, %bb.bv, %.thread156.i
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %.0114.i) #19
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %.0112.i) #19
  %i.or = load i32, ptr %i.ih, align 4, !tbaa !56
  %i.os = icmp eq i32 %i.or, 1
  br i1 %i.os, label %bb.cr, label %ProcessMetadata.exit

bb.cr:                                            ; preds = %.thread158.i
  %i.ot = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %bb.cs, label %ProcessMetadata.exit

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.kd, align 8, !tbaa !77
  br label %ProcessMetadata.exit

CheckFlushComplete.exit.thread195:                ; preds = %CheckFlushComplete.exit.thread195.backedge, %.preheader
  %.val.i122 = load i64, ptr %i.im, align 8, !tbaa !53
  %.val8.i = load i64, ptr %i.in, align 8, !tbaa !76
  %i.ov = sub i64 %.val.i122, %.val8.i            ; 3 uses
  %.val9.i = load i32, ptr %i.io, align 4, !tbaa !44
  %i.ow = zext nneg i32 %.val9.i to i64
  %i.ox = shl nuw i64 1, %i.ow
  %.0.i123 = tail call range(i64 0, -9223372036854775807) i64 @llvm.usub.sat.i64(i64 %i.ox, i64 %i.ov) ; 2 uses
  %i.oy = load i8, ptr %i.ip, align 1, !tbaa !183 ; 3 uses
  %i.oz = zext nneg i8 %i.oy to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0.i123, i64 %i.oz)
  %i.pa = icmp slt i8 %i.oy, 0
  %.083 = select i1 %i.pa, i64 %.0.i123, i64 %spec.select ; 2 uses
  %.not98 = icmp eq i64 %.083, 0                  ; 2 uses
  br i1 %.not98, label %bb.di, label %bb.ct

bb.ct:                                            ; preds = %CheckFlushComplete.exit.thread195
  %i.pb = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.not99 = icmp eq i64 %i.pb, 0
  br i1 %.not99, label %bb.di, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pc = tail call i64 @llvm.umin.i64(i64 %.083, i64 %i.pb) ; 15 uses
  %i.pd = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.pe = load i32, ptr %i.ir, align 4, !tbaa !202 ; 2 uses
  %i.pf = icmp eq i32 %i.pe, 0
  br i1 %i.pf, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.pg = load i32, ptr %i.is, align 8, !tbaa !203
  %i.ph = zext i32 %i.pg to i64
  %i.pi = icmp ult i64 %i.pc, %i.ph
  br i1 %i.pi, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.pj = trunc nuw i64 %i.pc to i32              ; 2 uses
  store i32 %i.pj, ptr %i.ir, align 4, !tbaa !202
  %i.pk = add nuw nsw i64 %i.pc, 2
  %i.pl = and i64 %i.pk, 4294967295
  %i.pm = add nuw nsw i64 %i.pl, 7
  %i.pn = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.pm) #19 ; 4 uses
  %i.po = load ptr, ptr %i.iv, align 8, !tbaa !60 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.po, null
  br i1 %.not.i11.i, label %RingBufferInitBuffer.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pp = load i32, ptr %i.it, align 8, !tbaa !204
  %i.pq = add i32 %i.pp, 2
  %i.pr = zext i32 %i.pq to i64
  %i.ps = add nuw nsw i64 %i.pr, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pn, ptr noundef nonnull align 1 dereferenceable(1) %i.po, i64 %i.ps, i1 false)
  %i.pt = load ptr, ptr %i.iv, align 8, !tbaa !60
  tail call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.pt) #19
  br label %RingBufferInitBuffer.exit.i

RingBufferInitBuffer.exit.i:                      ; preds = %bb.cx, %bb.cw
  store ptr %i.pn, ptr %i.iv, align 8, !tbaa !60
  store i32 %i.pj, ptr %i.it, align 8, !tbaa !204
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  store ptr %i.pu, ptr %i.iw, align 8, !tbaa !205
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pn, i64 1
  store i8 0, ptr %i.pv, align 1, !tbaa !68
  %i.pw = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -2
  store i8 0, ptr %i.px, align 1, !tbaa !68
  %i.py = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.pz = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.qa
  store i8 0, ptr %i.qb, align 1, !tbaa !68
  %i.qc = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.qd = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qe = zext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 1
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qe
  store i8 0, ptr %i.qg, align 1, !tbaa !68
  %i.qh = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.qi = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qj = zext i32 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qj
  store i8 0, ptr %i.ql, align 1, !tbaa !68
  %i.qm = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.qn = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 3
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qo
  store i8 0, ptr %i.qq, align 1, !tbaa !68
  %i.qr = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.qs = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qt
  store i8 0, ptr %i.qv, align 1, !tbaa !68
  %i.qw = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.qx = load i32, ptr %i.it, align 8, !tbaa !204
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 5
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qy
  store i8 0, ptr %i.ra, align 1, !tbaa !68
  %i.rb = load ptr, ptr %i.iw, align 8, !tbaa !205
  %i.rc = load i32, ptr %i.it, align 8, !tbaa !204
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 6
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rd
  store i8 0, ptr %i.rf, align 1, !tbaa !68
  %i.rg = load ptr, ptr %i.iw, align 8, !tbaa !205
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rg, ptr readonly align 1 %i.pd, i64 %i.pc, i1 false)
  %.pre18.i = load i32, ptr %i.ir, align 4, !tbaa !202
  br label %RingBufferWrite.exit.i

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %i.rh = load i32, ptr %i.it, align 8, !tbaa !204
  %i.ri = load i32, ptr %i.iu, align 4, !tbaa !206 ; 3 uses
  %i.rj = icmp ult i32 %i.rh, %i.ri
  br i1 %i.rj, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.rk = add i32 %i.ri, 2
  %i.rl = zext i32 %i.rk to i64
  %i.rm = add nuw nsw i64 %i.rl, 7
end_hunk_0
begin_hunk_1_@BrotliEncoderCompressStream:bb.a
  switch i32 %i.yb, label %CheckFlushComplete.exit.thread195.backedge [
    i32 1, label %bb.dw
    i32 0, label %bb.dx
  ]

CheckFlushComplete.exit.thread195.backedge:       ; preds = %bb.dv, %bb.dw, %bb.ed, %bb.ee, %bb.du, %bb.dx, %CopyInputToRingBuffer.exit, %bb.dh
  br label %CheckFlushComplete.exit.thread195

bb.dw:                                            ; preds = %bb.dv
  %i.yc = load i64, ptr %i.jc, align 8, !tbaa !70
  %i.yd = icmp eq i64 %i.yc, 0
  br i1 %i.yd, label %CheckFlushComplete.exit.thread, label %CheckFlushComplete.exit.thread195.backedge

CheckFlushComplete.exit.thread:                   ; preds = %bb.dw
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !77
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %CheckFlushComplete.exit.thread
  store i8 -2, ptr %i.ip, align 1, !tbaa !183
  br label %CheckFlushComplete.exit.thread195.backedge

bb.dy:                                            ; preds = %bb.dq
  %i.ye = icmp eq i32 %i.wh, 0
  %or.cond = or i1 %i.jf, %.not98
  %or.cond216 = and i1 %i.ye, %or.cond
  br i1 %or.cond216, label %bb.dz, label %ProcessMetadata.exit

bb.dz:                                            ; preds = %bb.dy
  %i.yf = load i64, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.yg = icmp eq i64 %i.yf, 0                    ; 2 uses
  %i.yh = and i1 %i.jg, %i.yg                     ; 4 uses
  %i.yi = zext i1 %i.yh to i32
  %i.yj = and i1 %i.jh, %i.yg
  %i.yk = icmp ne i8 %i.oy, 0
  %or.cond218.not = or i1 %i.yk, %i.yh
  br i1 %or.cond218.not, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i8 -1, ptr %i.ip, align 1, !tbaa !183
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.0.shrunk = phi i1 [ %i.yj, %bb.dz ], [ true, %bb.ea ] ; 2 uses
  %.0 = zext i1 %.0.shrunk to i32
  %i.yl = load i64, ptr %i.ji, align 8, !tbaa !45
  %i.ym = icmp eq i64 %i.yl, 0
  br i1 %i.ym, label %bb.ec, label %UpdateSizeHint.exit137

bb.ec:                                            ; preds = %bb.eb
  %i.yn = or i64 %i.ov, %i.yf
  %or.cond.not.i134 = icmp ult i64 %i.yn, 1073741824
  %i.yo = add nuw nsw i64 %i.ov, %i.yf
  %spec.select.i135 = tail call i64 @llvm.umin.i64(i64 %i.yo, i64 1073741824)
  %.0.i136 = select i1 %or.cond.not.i134, i64 %spec.select.i135, i64 1073741824
  store i64 %.0.i136, ptr %i.ji, align 8, !tbaa !45
  br label %UpdateSizeHint.exit137

UpdateSizeHint.exit137:                           ; preds = %bb.eb, %bb.ec
  %i.yp = tail call fastcc i32 @EncodeData(ptr noundef nonnull %0, i32 noundef %i.yi, i32 noundef %.0, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.jb)
  %.not101 = icmp eq i32 %i.yp, 0
  br i1 %.not101, label %ProcessMetadata.exit, label %bb.ed

bb.ed:                                            ; preds = %UpdateSizeHint.exit137
  %i.yq = or i1 %i.yh, %.0.shrunk
  br i1 %i.yq, label %bb.ee, label %CheckFlushComplete.exit.thread195.backedge

bb.ee:                                            ; preds = %bb.ed
  %spec.select102 = select i1 %i.yh, i32 2, i32 1
  store i32 %spec.select102, ptr %i.ih, align 4, !tbaa !56
  br label %CheckFlushComplete.exit.thread195.backedge

bb.ef:                                            ; preds = %.thread
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !77
  br label %ProcessMetadata.exit

ProcessMetadata.exit:                             ; preds = %bb.dy, %.thread207, %UpdateSizeHint.exit137, %bb.dr, %bb.av, %bb.ar, %bb.ef, %bb.cs, %bb.cr, %.thread158.i, %bb.bc, %bb.ai, %UpdateSizeHint.exit, %bb.bh, %bb.bg, %bb.bg, %bb.ad
  %.3 = phi i32 [ 1, %bb.cs ], [ 0, %bb.ad ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 1, %bb.ef ], [ 1, %bb.cr ], [ 1, %bb.bc ], [ 0, %UpdateSizeHint.exit ], [ 0, %bb.ai ], [ 0, %bb.av ], [ 1, %.thread158.i ], [ 1, %bb.ar ], [ 1, %bb.dy ], [ 1, %.thread207 ], [ 1, %bb.dr ], [ 0, %UpdateSizeHint.exit137 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @BrotliEncoderIsFinished(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6964
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6928
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = zext i1 %.not.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @EncodeData(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %5 = alloca %struct.BrotliEncoderParams, align 8 ; 6 uses
  %6 = alloca %struct.MetaBlockSplit, align 8     ; 15 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 13 uses
  %i.h = getelementptr i8, ptr %0, i64 1424       ; 5 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !53  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 1520       ; 4 uses
  %.val321 = load i64, ptr %i.i, align 8, !tbaa !76 ; 4 uses
  %i.j = sub i64 %.val, %.val321                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.l = trunc i64 %.val321 to i32                ; 3 uses
  %i.m = icmp ugt i64 %.val321, 3221225471
  %i.n = and i32 %i.l, 1073741823
  %i.o = and i32 %i.l, 1073741824
  %reass.sub.i = sub nsw i32 %i.n, %i.o
  %i.p = xor i32 %reass.sub.i, -2147483648
  %.0.i362 = select i1 %i.m, i32 %i.p, i32 %i.l   ; 19 uses
  store i32 %.0.i362, ptr %i.e, align 4, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !82   ; 86 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83   ; 7 uses
  %i.x = icmp eq i64 %.val, %.val321
  br i1 %i.x, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.u, null
  %.not242 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not242, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !72    ; 2 uses
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl i32 3, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !73
  %i.ae = trunc i32 %i.ab to i16
  %i.af = or i16 %i.ad, %i.ae                     ; 2 uses
  store i16 %i.af, ptr %i.ac, align 8, !tbaa !73
  %i.ag = add i8 %i.z, 2                          ; 2 uses
  store i8 %i.ag, ptr %i.y, align 2, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  store i16 %i.af, ptr %i.ah, align 8
  store ptr %i.ah, ptr %4, align 8, !tbaa !69
  %i.ai = zext i8 %i.ag to i64
  %i.aj = add nuw nsw i64 %i.ai, 7
  %i.ak = lshr i64 %i.aj, 3
  store i64 %i.ak, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.f:                                             ; preds = %bb.b
  br i1 %.not242, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = icmp eq i32 %2, 0
  %i.am = icmp ult i32 %i.s, 2
  %or.cond = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !407
  %i.ap = icmp sgt i32 %i.s, %i.ao
  br i1 %i.ap, label %bb.fz, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6968 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !57
  %.not244 = icmp eq i32 %i.ar, 0
  br i1 %.not244, label %bb.k, label %bb.fz

bb.k:                                             ; preds = %bb.j
  %.not249 = icmp eq i32 %1, 0                    ; 3 uses
  br i1 %.not249, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.aq, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %.val323 = load i32, ptr %i.as, align 4, !tbaa !44
  %i.at = zext nneg i32 %.val323 to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = icmp ugt i64 %i.j, %i.au
  br i1 %i.av, label %bb.fz, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.s, label %bb.y [
    i32 1, label %bb.o
    i32 0, label %.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6896 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65
  %.not245 = icmp eq ptr %i.ax, null
  br i1 %.not245, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef 524288) #19
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !65
  %i.az = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef 131072) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 6904
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !72
  %i.bd = zext i8 %i.bc to i64
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !67
  %i.be = shl i64 %i.j, 1
  %i.bf = add i64 %i.be, 503
  %i.bg = and i64 %i.bf, 4294967295               ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = icmp ult i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  br i1 %i.bj, label %bb.q, label %GetBrotliStorage.exit

bb.q:                                             ; preds = %.thread
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bl) #19
  store ptr null, ptr %i.bk, align 8, !tbaa !58
  %i.bm = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.bg) #19 ; 2 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !58
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !80
  br label %GetBrotliStorage.exit

GetBrotliStorage.exit:                            ; preds = %.thread, %bb.q
  %i.bn = phi ptr [ %i.bm, %bb.q ], [ %i.bl, %.thread ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !73
  %i.bq = trunc i16 %i.bp to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !68
  %i.br = load i16, ptr %i.bo, align 8, !tbaa !73
  %i.bs = lshr i16 %i.br, 8
  %i.bt = trunc nuw i16 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !68
  %i.bv = load i32, ptr %i.r, align 4, !tbaa !42
  %i.bw = and i64 %i.j, 4294967295                ; 3 uses
  %i.bx = icmp eq i32 %i.bv, 0                    ; 2 uses
  %i.by = select i1 %i.bx, i64 32768, i64 131072
  %invariant.umin.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.by, i64 %i.bw)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %GetBrotliStorage.exit
  %.0.i.i = phi i64 [ 256, %GetBrotliStorage.exit ], [ %i.ca, %bb.r ] ; 4 uses
  %i.bz = icmp ult i64 %.0.i.i, %invariant.umin.i.i
  %i.ca = shl i64 %.0.i.i, 1                      ; 2 uses
  br i1 %i.bz, label %bb.r, label %HashTableSize.exit.i, !llvm.loop !0

HashTableSize.exit.i:                             ; preds = %bb.r
  %i.cb = and i64 %.0.i.i, 698880
  %i.cc = icmp eq i64 %i.cb, 0
  %or.cond.i363 = and i1 %i.bx, %i.cc
  %.025.i = select i1 %or.cond.i363, i64 %i.ca, i64 %.0.i.i ; 7 uses
  %i.cd = icmp ult i64 %.025.i, 1025
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %HashTableSize.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2768
  br label %GetHashTable.exit

bb.t:                                             ; preds = %HashTableSize.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6872 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !81
  %i.ch = icmp ugt i64 %.025.i, %i.cg
  br i1 %i.ch, label %bb.u, label %._crit_edge.i364

._crit_edge.i364:                                 ; preds = %bb.t
  %.phi.trans.insert.i365 = getelementptr inbounds nuw i8, ptr %0, i64 6864
  %.pre.i366 = load ptr, ptr %.phi.trans.insert.i365, align 8, !tbaa !62
  br label %GetHashTable.exit

bb.u:                                             ; preds = %bb.t
  store i64 %.025.i, ptr %i.cf, align 8, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 6864 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.cj) #19
  store ptr null, ptr %i.ci, align 8, !tbaa !62
  %i.ck = shl i64 %.025.i, 2
  %i.cl = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.ck) #19 ; 2 uses
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !62
  br label %GetHashTable.exit

GetHashTable.exit:                                ; preds = %bb.s, %._crit_edge.i364, %bb.u
  %.0.i367 = phi ptr [ %i.ce, %bb.s ], [ %.pre.i366, %._crit_edge.i364 ], [ %i.cl, %bb.u ] ; 3 uses
  %i.cm = shl i64 %.025.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i367, i8 0, i64 %i.cm, i1 false)
  %i.cn = load i32, ptr %i.r, align 4, !tbaa !42
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = and i32 %i.w, %.0.i362
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cq ; 2 uses
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %GetHashTable.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63
  call void @BrotliCompressFragmentFast(ptr noundef %i.ct, ptr noundef %i.cr, i64 noundef %i.bw, i32 noundef %1, ptr noundef %.0.i367, i64 noundef %.025.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bn) #19
  br label %bb.x

bb.w:                                             ; preds = %GetHashTable.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 6888
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 6896
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66
  call void @BrotliCompressFragmentTwoPass(ptr noundef %i.cv, ptr noundef %i.cr, i64 noundef %i.bw, i32 noundef %1, ptr noundef %i.cx, ptr noundef %i.cz, ptr noundef %.0.i367, i64 noundef %.025.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bn) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.db = lshr i64 %i.da, 3                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !68
  %i.de = zext i8 %i.dd to i16
  store i16 %i.de, ptr %i.bo, align 8, !tbaa !73
  %i.df = trunc i64 %i.da to i8
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %i.bb, align 2, !tbaa !72
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !53
  store i64 %i.dh, ptr %i.i, align 8, !tbaa !76
  store ptr %i.bn, ptr %4, align 8, !tbaa !69
  store i64 %i.db, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %bb.fz

bb.y:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 13 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !84
  %i.dk = lshr i64 %i.j, 1
  %i.dl = and i64 %i.dk, 2147483647
  %i.dm = add nuw nsw i64 %i.dl, 1
  %i.dn = add i64 %i.dm, %i.dj                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !408
  %i.dq = icmp ugt i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dr = lshr i32 %i.k, 2
  %i.ds = add nuw nsw i32 %i.dr, 16
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add i64 %i.dn, %i.dt                    ; 3 uses
  store i64 %i.du, ptr %i.do, align 8, !tbaa !408
  %.not246 = icmp eq i64 %i.du, 0
  br i1 %.not246, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = shl i64 %i.du, 4
  %i.dw = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.dv) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dx = phi ptr [ %i.dw, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !59 ; 2 uses
  %.not247 = icmp eq ptr %i.dz, null
  br i1 %.not247, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load i64, ptr %i.di, align 8, !tbaa !84
  %i.eb = shl i64 %i.ea, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dx, ptr nonnull align 4 %i.dz, i64 %i.eb, i1 false)
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !59
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.ec) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 32 uses
  %i.ee = zext i32 %i.w to i64                    ; 62 uses
  %i.ef = zext i32 %.0.i362 to i64                ; 53 uses
  %i.eg = and i64 %i.j, 4294967295                ; 40 uses
  %i.eh = icmp eq i32 %.0.i362, 0
  %.not249.not = xor i1 %.not249, true
  %i.ei = and i1 %i.eh, %.not249.not              ; 4 uses
  %i.ej = zext i1 %i.ei to i32                    ; 12 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !409
  %.not.i = icmp eq i32 %i.el, 0
  br i1 %.not.i, label %bb.af, label %bb.bu

bb.af:                                            ; preds = %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.en = load i32, ptr %i.r, align 4, !tbaa !50  ; 12 uses
  %i.eo = icmp sgt i32 %i.en, 9
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 10, ptr %i.em, align 8, !tbaa !85
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.ep = icmp eq i32 %i.en, 4
  br i1 %i.ep, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !410
  %i.es = icmp ugt i64 %i.er, 1048575
  br i1 %i.es, label %bb.aj, label %.thread416

bb.aj:                                            ; preds = %bb.ai
  store i32 54, ptr %i.em, align 8, !tbaa !85
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.et = icmp slt i32 %i.en, 5
  br i1 %i.et, label %.thread416, label %bb.al

.thread416:                                       ; preds = %bb.ai, %bb.ak
  store i32 %i.en, ptr %i.em, align 8, !tbaa !85
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !51 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 17
  br i1 %i.ew, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ex = icmp samesign ult i32 %i.en, 7
  %i.ey = icmp samesign ult i32 %i.en, 9
  %i.ez = select i1 %i.ey, i32 41, i32 42
  %i.fa = select i1 %i.ex, i32 40, i32 %i.ez      ; 2 uses
  store i32 %i.fa, ptr %i.em, align 8, !tbaa !85
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !410
  %i.fd = icmp ugt i64 %i.fc, 1048575
  %i.fe = icmp samesign ugt i32 %i.ev, 18
  %or.cond.i.i = and i1 %i.fe, %i.fd
  %i.ff = add nsw i32 %i.en, -1                   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fh = icmp samesign ult i32 %i.en, 9
  %i.fi = select i1 %i.fh, i32 10, i32 16         ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %or.cond.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.inv.i.i = icmp samesign ugt i32 %i.en, 6
  %i.fk = select i1 %.inv.i.i, i32 6, i32 68      ; 2 uses
  store i32 %i.fk, ptr %i.em, align 8, !tbaa !85
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !86
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 15, ptr %i.fl, align 4, !tbaa !87
  %i.fm = icmp samesign ult i32 %i.en, 7
  %i.fn = select i1 %i.fm, i32 4, i32 %i.fi
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !411
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fo = icmp samesign ult i32 %i.en, 7          ; 3 uses
  %i.fp = select i1 %i.fo, i32 58, i32 5          ; 2 uses
  store i32 %i.fp, ptr %i.em, align 8, !tbaa !85
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !86
  %i.fq = select i1 %i.fo, i32 14, i32 15
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !87
  %i.fs = select i1 %i.fo, i32 4, i32 %i.fi
  store i32 %i.fs, ptr %i.fj, align 4, !tbaa !411
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %.thread416, %bb.aj, %bb.ag
  %.pr.pr = phi i32 [ %i.fp, %bb.ap ], [ %i.fk, %bb.ao ], [ %i.fa, %bb.am ], [ %i.en, %.thread416 ], [ 54, %bb.aj ], [ 10, %bb.ag ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !51 ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, 24
  br i1 %i.fv, label %bb.ar, label %ChooseHasher.exit.i

bb.ar:                                            ; preds = %bb.aq
  switch i32 %.pr.pr, label %ChooseHasher.exit.i [
    i32 3, label %ChooseHasher.exit.i.thread435
    i32 54, label %ChooseHasher.exit.i.thread437
    i32 6, label %ChooseHasher.exit.i.thread
    i32 68, label %ChooseHasher.exit.i.thread
  ]

ChooseHasher.exit.i.thread435:                    ; preds = %bb.ar
  store i32 35, ptr %i.em, align 8, !tbaa !85
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !412
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  br label %HasherSize.exit.i.thread

ChooseHasher.exit.i.thread437:                    ; preds = %bb.ar
  store i32 55, ptr %i.em, align 8, !tbaa !85
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !412
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  br label %HasherSize.exit.i.thread

ChooseHasher.exit.i.thread:                       ; preds = %bb.ar, %bb.ar
  store i32 65, ptr %i.em, align 8, !tbaa !85
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !412
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  br label %HashMemAllocInBytesH65.exit

ChooseHasher.exit.i:                              ; preds = %bb.ar, %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !412
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  switch i32 %.pr.pr, label %._crit_edge493 [
    i32 2, label %HasherSize.exit.i.thread
    i32 3, label %HasherSize.exit.i.thread
    i32 4, label %bb.as
    i32 5, label %bb.at
    i32 6, label %bb.au
    i32 40, label %bb.av
    i32 41, label %bb.av
    i32 42, label %bb.aw
    i32 54, label %bb.ax
    i32 58, label %bb.ay
    i32 68, label %bb.az
    i32 35, label %HashMemAllocInBytesH35.exit
    i32 55, label %HashMemAllocInBytesH55.exit
    i32 65, label %HashMemAllocInBytesH65.exit
    i32 10, label %bb.ba
  ]

bb.as:                                            ; preds = %ChooseHasher.exit.i
  br label %HasherSize.exit.i.thread

bb.at:                                            ; preds = %ChooseHasher.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !88
  %i.gg = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !89
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl i64 4, %i.gg
  %i.gl = shl i64 %i.gk, %i.gj
  br label %HasherSize.exit.i

bb.au:                                            ; preds = %ChooseHasher.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !88
  %i.go = zext nneg i32 %i.gn to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !89
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = shl i64 4, %i.go
  %i.gt = shl i64 %i.gs, %i.gr
  br label %HasherSize.exit.i

bb.av:                                            ; preds = %ChooseHasher.exit.i, %ChooseHasher.exit.i
  br label %HasherSize.exit.i.thread

bb.aw:                                            ; preds = %ChooseHasher.exit.i
  br label %HasherSize.exit.i.thread

bb.ax:                                            ; preds = %ChooseHasher.exit.i
  br label %HasherSize.exit.i.thread

bb.ay:                                            ; preds = %ChooseHasher.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !88
  %i.gw = zext nneg i32 %i.gv to i64              ; 3 uses
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !89
  %i.ha = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hb = shl i64 %i.gx, %i.ha
  %i.hc = shl i64 4, %i.gw
  %i.hd = shl i64 %i.hc, %i.ha
  br label %HasherSize.exit.i

bb.az:                                            ; preds = %ChooseHasher.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 44
end_hunk_1
