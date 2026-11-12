Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/encode?download=true
inline.NumInlined: 177
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@BrotliEncoderCompressStream:bb.a
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store i32 1, ptr %i.c, align 4, !tbaa !40
  br label %EnsureInitialized.exit

EnsureInitialized.exit:                           ; preds = %bb.a, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6960 ; 9 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !184 ; 2 uses
  %.not = icmp eq i32 %i.ch, -1
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %EnsureInitialized.exit
  %i.ci = load i64, ptr %2, align 8, !tbaa !67
  %i.cj = zext i32 %i.ch to i64
  %.not94 = icmp eq i64 %i.ci, %i.cj
  %cond = icmp eq i32 %1, 3
  %or.cond103 = and i1 %cond, %.not94
  br i1 %or.cond103, label %bb.af, label %ProcessMetadata.exit

bb.ae:                                            ; preds = %EnsureInitialized.exit
  %i.ck = icmp eq i32 %1, 3
  br i1 %i.ck, label %bb.af, label %bb.bg

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !45
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %UpdateSizeHint.exit

bb.ag:                                            ; preds = %bb.af
  %i.co = getelementptr i8, ptr %0, i64 1424
  %.val.i = load i64, ptr %i.co, align 8, !tbaa !53
  %i.cp = getelementptr i8, ptr %0, i64 1520
  %.val17.i = load i64, ptr %i.cp, align 8, !tbaa !76
  %i.cq = sub i64 %.val.i, %.val17.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1073741824)
  store i64 %spec.select.i, ptr %i.cl, align 8, !tbaa !45
  br label %UpdateSizeHint.exit

UpdateSizeHint.exit:                              ; preds = %bb.af, %bb.ag
  %i.cr = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 16777216
  br i1 %i.cs, label %ProcessMetadata.exit, label %bb.ah

bb.ah:                                            ; preds = %UpdateSizeHint.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 6964 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !56 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.ah
  %i.cw = trunc nuw nsw i64 %i.cr to i32
  store i32 %i.cw, ptr %i.cg, align 8, !tbaa !184
  store i32 3, ptr %i.ct, align 4, !tbaa !56
  br label %.preheader.i

bb.ai:                                            ; preds = %bb.ah
  %.off.i = add i32 %i.cu, -3
  %switch.i105 = icmp ult i32 %.off.i, 2
  br i1 %switch.i105, label %.preheader.i, label %ProcessMetadata.exit

.preheader.i:                                     ; preds = %bb.ai, %.thread.i
  %i.cx = phi i32 [ 3, %.thread.i ], [ %i.cu, %bb.ai ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6936 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %6, null
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 4 uses
  br label %.backedge.i

thread-pre-split.i:                               ; preds = %bb.bf, %bb.be, %bb.av, %bb.at, %bb.as, %InjectBytePaddingBlock.exit.i.i
  %.pr.i = load i32, ptr %i.ct, align 4, !tbaa !56
  br label %.backedge.i.backedge

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.dh = phi i32 [ %i.cx, %.preheader.i ], [ %.be, %.backedge.i.backedge ] ; 2 uses
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %.backedge.i
  %i.dj = load i8, ptr %i.cy, align 2, !tbaa !72  ; 5 uses
  %.not.i.i106 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i106, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i16, ptr %i.cz, align 8, !tbaa !73
  %i.dl = zext i16 %i.dk to i32
  store i16 0, ptr %i.cz, align 8, !tbaa !73
  store i8 0, ptr %i.cy, align 2, !tbaa !72
  %i.dm = zext nneg i8 %i.dj to i32
  %i.dn = shl i32 6, %i.dm                        ; 2 uses
  %i.do = or i32 %i.dn, %i.dl                     ; 2 uses
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i.i = phi ptr [ %i.dr, %bb.al ], [ %i.dc, %bb.am ] ; 3 uses
  %i.ds = trunc i32 %i.do to i8
  store i8 %i.ds, ptr %.0.i.i.i, align 1, !tbaa !68
  %i.dt = icmp ugt i8 %i.dj, 2
  br i1 %i.dt, label %bb.ao, label %InjectBytePaddingBlock.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.du = lshr i32 %i.do, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !68
  %i.dx = icmp ugt i8 %i.dj, 10
  br i1 %i.dx, label %bb.ap, label %InjectBytePaddingBlock.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.dy = lshr i32 %i.dn, 16
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !68
  br label %InjectBytePaddingBlock.exit.i.i

InjectBytePaddingBlock.exit.i.i:                  ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eb = zext i8 %i.dj to i64
  %i.ec = add nuw nsw i64 %i.eb, 13
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = load i64, ptr %i.db, align 8, !tbaa !70
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %i.db, align 8, !tbaa !70
  br label %thread-pre-split.i

bb.aq:                                            ; preds = %bb.aj, %.backedge.i
  %i.eg = load i64, ptr %i.db, align 8, !tbaa !70 ; 2 uses
  %.not24.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not24.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not25.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not25.i.i, label %ProcessMetadata.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.eh) ; 6 uses
  %i.ej = load ptr, ptr %5, align 8, !tbaa !69
  %i.ek = load ptr, ptr %i.da, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ek, i64 %i.ei, i1 false)
  %i.el = load ptr, ptr %5, align 8, !tbaa !69
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  store ptr %i.em, ptr %5, align 8, !tbaa !69
  %i.en = load i64, ptr %4, align 8, !tbaa !67
  %i.eo = sub i64 %i.en, %i.ei
  store i64 %i.eo, ptr %4, align 8, !tbaa !67
  %i.ep = load ptr, ptr %i.da, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ei
  store ptr %i.eq, ptr %i.da, align 8, !tbaa !77
  %i.er = load i64, ptr %i.db, align 8, !tbaa !70
  %i.es = sub i64 %i.er, %i.ei
  store i64 %i.es, ptr %i.db, align 8, !tbaa !70
  %i.et = load i64, ptr %i.dd, align 8, !tbaa !78
  %i.eu = add i64 %i.et, %i.ei                    ; 2 uses
  store i64 %i.eu, ptr %i.dd, align 8, !tbaa !78
  br i1 %.not.i26.i.i, label %thread-pre-split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %i.eu, ptr %6, align 8, !tbaa !67
  br label %thread-pre-split.i

bb.au:                                            ; preds = %bb.aq
  %i.ev = load i64, ptr %i.de, align 8, !tbaa !53
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !79
  %.not72.i = icmp eq i64 %i.ev, %i.ew
  br i1 %.not72.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = tail call fastcc i32 @EncodeData(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.db, ptr noundef nonnull %i.da)
  %.not74.i = icmp eq i32 %i.ex, 0
  br i1 %.not74.i, label %ProcessMetadata.exit, label %thread-pre-split.i

bb.aw:                                            ; preds = %bb.au
  %i.ey = icmp eq i32 %i.dh, 3
  br i1 %i.ey, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !77
  %i.ez = load i32, ptr %i.cg, align 8, !tbaa !184 ; 4 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load i8, ptr %i.cy, align 2, !tbaa !72
  %i.fc = zext i8 %i.fb to i64                    ; 6 uses
  %i.fd = load i16, ptr %i.cz, align 8
  store i16 %i.fd, ptr %i.dc, align 8
  store i16 0, ptr %i.cz, align 8, !tbaa !73
  store i8 0, ptr %i.cy, align 2, !tbaa !72
  %i.fe = lshr i64 %i.fc, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !68, !alias.scope !189
  %i.fh = zext i8 %i.fg to i64
  store i64 %i.fh, ptr %i.ff, align 1, !noalias !190
  %i.fi = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !68, !alias.scope !191
  %i.fm = zext i8 %i.fl to i64
  %i.fn = and i64 %i.fi, 7
  %i.fo = shl nuw nsw i64 3, %i.fn
  %i.fp = or i64 %i.fo, %i.fm
  store i64 %i.fp, ptr %i.fk, align 1, !noalias !192
  %i.fq = add nuw nsw i64 %i.fc, 3
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fr ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68, !alias.scope !193
  %i.fu = zext i8 %i.ft to i64
  store i64 %i.fu, ptr %i.fs, align 1, !noalias !194
  %i.fv = add nuw nsw i64 %i.fc, 4                ; 3 uses
  switch i32 %i.ez, label %bb.az [
    i32 0, label %bb.ay
    i32 1, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !68, !alias.scope !195
  %i.fz = zext i8 %i.fy to i64
  store i64 %i.fz, ptr %i.fx, align 1, !noalias !196
  %i.ga = add nuw nsw i64 %i.fc, 6
  br label %WriteMetadataHeader.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.gb = add i32 %i.ez, -1
  %i.gc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gb, i1 true)
  %i.gd = sub nuw nsw i32 39, %i.gc
  %i.ge = lshr i32 %i.gd, 3
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.gf = phi i32 [ %i.ge, %bb.az ], [ %i.ez, %bb.ax ] ; 2 uses
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = lshr i64 %i.fv, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gh ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !68, !alias.scope !197
  %i.gk = zext i8 %i.gj to i64
  %i.gl = and i64 %i.fv, 7
  %i.gm = shl nuw nsw i64 %i.gg, %i.gl
  %i.gn = or i64 %i.gm, %i.gk
  store i64 %i.gn, ptr %i.gi, align 1, !noalias !198
  %i.go = add nuw nsw i64 %i.fc, 6                ; 3 uses
  %i.gp = shl nuw nsw i32 %i.gf, 3
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = add nsw i64 %i.fa, -1
  %i.gs = lshr i64 %i.go, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !68, !alias.scope !199
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
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 7 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 6936 ; 4 uses
  %.not.i26.i.i109 = icmp eq ptr %6, null         ; 2 uses
  %i.kh = icmp ne i32 %1, 0
  %i.ki = icmp eq i32 %1, 2                       ; 2 uses
  %i.kj = icmp ne i32 %1, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %7 = getelementptr i8, ptr %0, i64 1609
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 6872 ; 2 uses
  %.phi.trans.insert.i129.i = getelementptr inbounds nuw i8, ptr %0, i64 6864 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6888
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 6912 ; 2 uses
  %i.kq = add i32 %1, -1
  %i.kr = icmp ult i32 %i.kq, 2
  %spec.select.i110 = select i1 %i.ki, i32 2, i32 1
  br label %.backedge.i113

.backedge.i113:                                   ; preds = %.backedge.i113.backedge, %.thread139.i
  %i.ks = load i32, ptr %i.ih, align 4, !tbaa !56 ; 2 uses
  %i.kt = icmp eq i32 %i.ks, 1
  br i1 %i.kt, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %.backedge.i113
  %i.ku = load i8, ptr %i.kb, align 2, !tbaa !72  ; 5 uses
  %.not.i.i115 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i115, label %.thread157.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kv = load i16, ptr %i.kc, align 8, !tbaa !73
  %i.kw = zext i16 %i.kv to i32
  store i16 0, ptr %i.kc, align 8, !tbaa !73
  store i8 0, ptr %i.kb, align 2, !tbaa !72
  %i.kx = zext nneg i8 %i.ku to i32
  %i.ky = shl i32 6, %i.kx                        ; 2 uses
  %i.kz = or i32 %i.ky, %i.kw                     ; 2 uses
  %i.la = load ptr, ptr %i.kd, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i116, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lb = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !77
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i.i.i117 = phi ptr [ %i.lc, %bb.bp ], [ %i.kf, %bb.bq ] ; 3 uses
  %i.ld = trunc i32 %i.kz to i8
  store i8 %i.ld, ptr %.0.i.i.i117, align 1, !tbaa !68
  %i.le = icmp ugt i8 %i.ku, 2
  br i1 %i.le, label %bb.bs, label %InjectBytePaddingBlock.exit.i.i118

bb.bs:                                            ; preds = %bb.br
  %i.lf = lshr i32 %i.kz, 8
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !68
  %i.li = icmp ugt i8 %i.ku, 10
  br i1 %i.li, label %bb.bt, label %InjectBytePaddingBlock.exit.i.i118

bb.bt:                                            ; preds = %bb.bs
  %i.lj = lshr i32 %i.ky, 16
  %i.lk = trunc i32 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 2
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !68
  br label %InjectBytePaddingBlock.exit.i.i118

InjectBytePaddingBlock.exit.i.i118:               ; preds = %bb.bt, %bb.bs, %bb.br
  %i.lm = zext i8 %i.ku to i64
  %i.ln = add nuw nsw i64 %i.lm, 13
  %i.lo = lshr i64 %i.ln, 3
  %i.lp = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.lq = add i64 %i.lp, %i.lo
  store i64 %i.lq, ptr %i.ke, align 8, !tbaa !70
  br label %.backedge.i113.backedge

bb.bu:                                            ; preds = %.backedge.i113
  %i.lr = load i64, ptr %i.ke, align 8, !tbaa !70 ; 2 uses
  %.not24.i.i111 = icmp eq i64 %i.lr, 0
  br i1 %.not24.i.i111, label %bb.by, label %bb.bv

.thread157.i:                                     ; preds = %bb.bn
  %i.ls = load i64, ptr %i.ke, align 8, !tbaa !70 ; 2 uses
  %.not24.i158.i = icmp eq i64 %i.ls, 0
  br i1 %.not24.i158.i, label %.thread159.i, label %bb.bv

bb.bv:                                            ; preds = %.thread157.i, %bb.bu
  %i.lt = phi i64 [ %i.ls, %.thread157.i ], [ %i.lr, %bb.bu ]
  %i.lu = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not25.i.i112 = icmp eq i64 %i.lu, 0
  br i1 %.not25.i.i112, label %.thread159.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lt, i64 %i.lu) ; 6 uses
  %i.lw = load ptr, ptr %5, align 8, !tbaa !69
  %i.lx = load ptr, ptr %i.kd, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr align 1 %i.lx, i64 %i.lv, i1 false)
  %i.ly = load ptr, ptr %5, align 8, !tbaa !69
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lv
  store ptr %i.lz, ptr %5, align 8, !tbaa !69
  %i.ma = load i64, ptr %4, align 8, !tbaa !67
  %i.mb = sub i64 %i.ma, %i.lv
  store i64 %i.mb, ptr %4, align 8, !tbaa !67
  %i.mc = load ptr, ptr %i.kd, align 8, !tbaa !77
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lv
  store ptr %i.md, ptr %i.kd, align 8, !tbaa !77
  %i.me = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.mf = sub i64 %i.me, %i.lv
  store i64 %i.mf, ptr %i.ke, align 8, !tbaa !70
  %i.mg = load i64, ptr %i.kg, align 8, !tbaa !78
  %i.mh = add i64 %i.mg, %i.lv                    ; 2 uses
  store i64 %i.mh, ptr %i.kg, align 8, !tbaa !78
  br i1 %.not.i26.i.i109, label %.backedge.i113.backedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.mh, ptr %6, align 8, !tbaa !67
  br label %.backedge.i113.backedge

bb.by:                                            ; preds = %bb.bu
  %i.mi = icmp eq i32 %i.ks, 0
  br i1 %i.mi, label %bb.bz, label %.thread159.i

bb.bz:                                            ; preds = %bb.by
  %i.mj = load i64, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.mk = icmp ne i64 %i.mj, 0                    ; 3 uses
  %or.cond3.i = or i1 %i.kh, %i.mk
  br i1 %or.cond3.i, label %bb.ca, label %.thread159.i

bb.ca:                                            ; preds = %bb.bz
  %i.ml = call i64 @llvm.umin.i64(i64 %i.jm, i64 %i.mj) ; 7 uses
  %i.mm = icmp ule i64 %i.mj, %i.jm               ; 2 uses
  %i.mn = and i1 %i.ki, %i.mm
  %i.mo = zext i1 %i.mn to i32                    ; 2 uses
  %i.mp = shl i64 %i.ml, 1
  %i.mq = add i64 %i.mp, 503                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.mr = load i8, ptr %i.kb, align 2, !tbaa !72
  %i.ms = zext i8 %i.mr to i64
  store i64 %i.ms, ptr %i.a, align 8, !tbaa !67
  %or.cond5.not.i = or i1 %i.kj, %i.mk
  br i1 %or.cond5.not.i, label %bb.cb, label %.sink.split.i

bb.cb:                                            ; preds = %bb.ca
  %i.mt = load i64, ptr %4, align 8, !tbaa !67
  %.not124.i = icmp ugt i64 %i.mq, %i.mt          ; 2 uses
  br i1 %.not124.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mu = load ptr, ptr %5, align 8, !tbaa !69
  br label %GetBrotliStorage.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.mv = load i64, ptr %i.kk, align 8, !tbaa !80
  %i.mw = icmp ult i64 %i.mv, %i.mq
  %i.mx = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %i.mw, label %bb.ce, label %GetBrotliStorage.exit.i

bb.ce:                                            ; preds = %bb.cd
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.mx) #19
  store ptr null, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %i.my = call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.mq) #19 ; 2 uses
  store ptr %i.my, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  store i64 %i.mq, ptr %i.kk, align 8, !tbaa !80
  br label %GetBrotliStorage.exit.i

GetBrotliStorage.exit.i:                          ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0109.i = phi ptr [ %i.mu, %bb.cc ], [ %i.my, %bb.ce ], [ %i.mx, %bb.cd ] ; 6 uses
  %i.mz = load i16, ptr %i.kc, align 8, !tbaa !73
  %i.na = trunc i16 %i.mz to i8
  store i8 %i.na, ptr %.0109.i, align 1, !tbaa !68
  %8 = load i8, ptr %7, align 1, !tbaa !73
  %i.nb = getelementptr inbounds nuw i8, ptr %.0109.i, i64 1
  store i8 %8, ptr %i.nb, align 1, !tbaa !68
  %i.nc = load i32, ptr %i.ik, align 4, !tbaa !42
  %i.nd = icmp eq i32 %i.nc, 0                    ; 2 uses
  %i.ne = select i1 %i.nd, i64 32768, i64 131072
  %invariant.umin.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.ne, i64 %i.ml)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %GetBrotliStorage.exit.i
  %.0.i.i127.i = phi i64 [ 256, %GetBrotliStorage.exit.i ], [ %i.ng, %bb.cf ] ; 4 uses
  %i.nf = icmp ult i64 %.0.i.i127.i, %invariant.umin.i.i.i
  %i.ng = shl i64 %.0.i.i127.i, 1                 ; 2 uses
  br i1 %i.nf, label %bb.cf, label %HashTableSize.exit.i.i, !llvm.loop !0

HashTableSize.exit.i.i:                           ; preds = %bb.cf
  %i.nh = and i64 %.0.i.i127.i, 698880
  %i.ni = icmp eq i64 %i.nh, 0
  %or.cond.i.i114 = and i1 %i.nd, %i.ni
  %.025.i.i = select i1 %or.cond.i.i114, i64 %i.ng, i64 %.0.i.i127.i ; 7 uses
  %i.nj = icmp ult i64 %.025.i.i, 1025
  br i1 %i.nj, label %GetHashTable.exit.i, label %bb.cg

bb.cg:                                            ; preds = %HashTableSize.exit.i.i
  %i.nk = load i64, ptr %i.kl, align 8, !tbaa !81
  %i.nl = icmp ugt i64 %.025.i.i, %i.nk
  br i1 %i.nl, label %bb.ch, label %._crit_edge.i128.i

._crit_edge.i128.i:                               ; preds = %bb.cg
  %.pre.i130.i = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %GetHashTable.exit.i

bb.ch:                                            ; preds = %bb.cg
  store i64 %.025.i.i, ptr %i.kl, align 8, !tbaa !81
  %i.nm = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.nm) #19
  store ptr null, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  %i.nn = shl i64 %.025.i.i, 2
  %i.no = call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.nn) #19 ; 2 uses
  store ptr %i.no, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %GetHashTable.exit.i

GetHashTable.exit.i:                              ; preds = %bb.ch, %._crit_edge.i128.i, %HashTableSize.exit.i.i
  %.0.i131.i = phi ptr [ %i.no, %bb.ch ], [ %.pre.i130.i, %._crit_edge.i128.i ], [ %i.km, %HashTableSize.exit.i.i ] ; 3 uses
  %i.np = shl i64 %.025.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.0.i131.i, i8 0, i64 %i.np, i1 false)
  %i.nq = load i32, ptr %i.ik, align 4, !tbaa !42
  %i.nr = icmp eq i32 %i.nq, 0
  %i.ns = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  br i1 %i.nr, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %GetHashTable.exit.i
  %i.nt = load ptr, ptr %i.ko, align 8, !tbaa !63
  call void @BrotliCompressFragmentFast(ptr noundef %i.nt, ptr noundef %i.ns, i64 noundef %i.ml, i32 noundef %i.mo, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0109.i) #19
  br label %bb.ck

bb.cj:                                            ; preds = %GetHashTable.exit.i
  %i.nu = load ptr, ptr %i.kn, align 8, !tbaa !64
  call void @BrotliCompressFragmentTwoPass(ptr noundef %i.nu, ptr noundef %i.ns, i64 noundef %i.ml, i32 noundef %i.mo, ptr noundef %.0113.i, ptr noundef %.0111.i, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0109.i) #19
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nv = load ptr, ptr %3, align 8, !tbaa !69
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ml
  store ptr %i.nw, ptr %3, align 8, !tbaa !69
  %i.nx = load i64, ptr %2, align 8, !tbaa !67
  %i.ny = sub i64 %i.nx, %i.ml
  store i64 %i.ny, ptr %2, align 8, !tbaa !67
  %i.nz = load i64, ptr %i.kp, align 8, !tbaa !201
  %i.oa = add i64 %i.nz, %i.ml
  store i64 %i.oa, ptr %i.kp, align 8, !tbaa !201
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.ob = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.oc = lshr i64 %i.ob, 3                       ; 5 uses
  br i1 %.not124.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.od = load ptr, ptr %5, align 8, !tbaa !69
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oc
  store ptr %i.oe, ptr %5, align 8, !tbaa !69
  %i.of = load i64, ptr %4, align 8, !tbaa !67
  %i.og = sub i64 %i.of, %i.oc
  store i64 %i.og, ptr %4, align 8, !tbaa !67
  %i.oh = load i64, ptr %i.kg, align 8, !tbaa !78
  %i.oi = add i64 %i.oh, %i.oc                    ; 2 uses
  store i64 %i.oi, ptr %i.kg, align 8, !tbaa !78
  br i1 %.not.i26.i.i109, label %SetTotalOut.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 %i.oi, ptr %6, align 8, !tbaa !67
  br label %SetTotalOut.exit.i

bb.cp:                                            ; preds = %bb.cm
  store ptr %.0109.i, ptr %i.kd, align 8, !tbaa !77
  store i64 %i.oc, ptr %i.ke, align 8, !tbaa !70
  br label %SetTotalOut.exit.i

SetTotalOut.exit.i:                               ; preds = %bb.cp, %bb.co, %bb.cn
  %i.oj = getelementptr inbounds nuw i8, ptr %.0109.i, i64 %i.oc
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !68
  %i.ol = zext i8 %i.ok to i16
  store i16 %i.ol, ptr %i.kc, align 8, !tbaa !73
  %i.om = trunc i64 %i.ob to i8
  %i.on = and i8 %i.om, 7
  store i8 %i.on, ptr %i.kb, align 2, !tbaa !72
  %i.oo = and i1 %i.kr, %i.mm
  br i1 %i.oo, label %.sink.split.i, label %bb.cq

.sink.split.i:                                    ; preds = %SetTotalOut.exit.i, %bb.ca
  %spec.select.sink.i = phi i32 [ 1, %bb.ca ], [ %spec.select.i110, %SetTotalOut.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ih, align 4, !tbaa !56
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split.i, %SetTotalOut.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.backedge.i113.backedge

.backedge.i113.backedge:                          ; preds = %bb.cq, %bb.bx, %bb.bw, %InjectBytePaddingBlock.exit.i.i118
  br label %.backedge.i113

.thread159.i:                                     ; preds = %bb.bz, %bb.by, %bb.bv, %.thread157.i
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %.0114.i) #19
  call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %.0112.i) #19
  %i.op = load i32, ptr %i.ih, align 4, !tbaa !56
  %i.oq = icmp eq i32 %i.op, 1
  br i1 %i.oq, label %bb.cr, label %ProcessMetadata.exit

bb.cr:                                            ; preds = %.thread159.i
  %i.or = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %bb.cs, label %ProcessMetadata.exit

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.kd, align 8, !tbaa !77
  br label %ProcessMetadata.exit

CheckFlushComplete.exit.thread195:                ; preds = %CheckFlushComplete.exit.thread195.backedge, %.preheader
  %.val.i122 = load i64, ptr %i.im, align 8, !tbaa !53
  %.val8.i = load i64, ptr %i.in, align 8, !tbaa !76
  %i.ot = sub i64 %.val.i122, %.val8.i            ; 3 uses
  %.val9.i = load i32, ptr %i.io, align 4, !tbaa !44
  %i.ou = zext nneg i32 %.val9.i to i64
  %i.ov = shl nuw i64 1, %i.ou
  %.0.i123 = tail call range(i64 0, -9223372036854775807) i64 @llvm.usub.sat.i64(i64 %i.ov, i64 %i.ot) ; 2 uses
  %i.ow = load i8, ptr %i.ip, align 1, !tbaa !183 ; 3 uses
  %i.ox = zext nneg i8 %i.ow to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0.i123, i64 %i.ox)
  %i.oy = icmp slt i8 %i.ow, 0
  %.083 = select i1 %i.oy, i64 %.0.i123, i64 %spec.select ; 2 uses
  %.not98 = icmp eq i64 %.083, 0                  ; 2 uses
  br i1 %.not98, label %bb.di, label %bb.ct

bb.ct:                                            ; preds = %CheckFlushComplete.exit.thread195
  %i.oz = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.not99 = icmp eq i64 %i.oz, 0
  br i1 %.not99, label %bb.di, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pa = tail call i64 @llvm.umin.i64(i64 %.083, i64 %i.oz) ; 15 uses
  %i.pb = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.pc = load i32, ptr %i.ir, align 4, !tbaa !202 ; 2 uses
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.pe = load i32, ptr %i.is, align 8, !tbaa !203
  %i.pf = zext i32 %i.pe to i64
  %i.pg = icmp ult i64 %i.pa, %i.pf
  br i1 %i.pg, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.ph = trunc nuw i64 %i.pa to i32              ; 2 uses
  store i32 %i.ph, ptr %i.ir, align 4, !tbaa !202
  %i.pi = add nuw nsw i64 %i.pa, 2
  %i.pj = and i64 %i.pi, 4294967295
  %i.pk = add nuw nsw i64 %i.pj, 7
  %i.pl = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.b, i64 noundef %i.pk) #19 ; 4 uses
  %i.pm = load ptr, ptr %i.iv, align 8, !tbaa !60 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.pm, null
  br i1 %.not.i11.i, label %RingBufferInitBuffer.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pn = load i32, ptr %i.it, align 8, !tbaa !204
  %i.po = add i32 %i.pn, 2
  %i.pp = zext i32 %i.po to i64
  %i.pq = add nuw nsw i64 %i.pp, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pl, ptr noundef nonnull align 1 dereferenceable(1) %i.pm, i64 %i.pq, i1 false)
  %i.pr = load ptr, ptr %i.iv, align 8, !tbaa !60
  tail call void @BrotliFree(ptr noundef nonnull %i.b, ptr noundef %i.pr) #19
  br label %RingBufferInitBuffer.exit.i

RingBufferInitBuffer.exit.i:                      ; preds = %bb.cx, %bb.cw
  store ptr %i.pl, ptr %i.iv, align 8, !tbaa !60
  store i32 %i.ph, ptr %i.it, align 8, !tbaa !204
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  store ptr %i.ps, ptr %i.iw, align 8, !tbaa !205
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 1
end_hunk_0
begin_hunk_1_@BrotliEncoderCompressStream:bb.a
  %.not25.i = icmp eq i64 %i.xg, 0
  br i1 %.not25.i, label %ProcessMetadata.exit, label %bb.ds

.thread207:                                       ; preds = %bb.dq
  %i.xh = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not25.i209 = icmp eq i64 %i.xh, 0
  br i1 %.not25.i209, label %ProcessMetadata.exit, label %bb.ds

bb.ds:                                            ; preds = %.thread207, %bb.dr
  %i.xi = phi i64 [ %i.xh, %.thread207 ], [ %i.xg, %bb.dr ]
  %i.xj = phi i64 [ %i.xe, %.thread207 ], [ %i.xf, %bb.dr ]
  %i.xk = tail call i64 @llvm.umin.i64(i64 %i.xj, i64 %i.xi) ; 6 uses
  %i.xl = load ptr, ptr %5, align 8, !tbaa !69
  %i.xm = load ptr, ptr %i.jb, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xl, ptr align 1 %i.xm, i64 %i.xk, i1 false)
  %i.xn = load ptr, ptr %5, align 8, !tbaa !69
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xk
  store ptr %i.xo, ptr %5, align 8, !tbaa !69
  %i.xp = load i64, ptr %4, align 8, !tbaa !67
  %i.xq = sub i64 %i.xp, %i.xk
  store i64 %i.xq, ptr %4, align 8, !tbaa !67
  %i.xr = load ptr, ptr %i.jb, align 8, !tbaa !77
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xk
  store ptr %i.xs, ptr %i.jb, align 8, !tbaa !77
  %i.xt = load i64, ptr %i.jc, align 8, !tbaa !70
  %i.xu = sub i64 %i.xt, %i.xk
  store i64 %i.xu, ptr %i.jc, align 8, !tbaa !70
  %i.xv = load i64, ptr %i.je, align 8, !tbaa !78
  %i.xw = add i64 %i.xv, %i.xk                    ; 2 uses
  store i64 %i.xw, ptr %i.je, align 8, !tbaa !78
  br i1 %.not.i26.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i64 %i.xw, ptr %6, align 8, !tbaa !67
  br label %bb.du

bb.du:                                            ; preds = %InjectBytePaddingBlock.exit.i, %bb.ds, %bb.dt
  %i.xx = load i8, ptr %i.ip, align 1, !tbaa !183
  %i.xy = icmp eq i8 %i.xx, -1
  br i1 %i.xy, label %bb.dv, label %CheckFlushComplete.exit.thread195.backedge

bb.dv:                                            ; preds = %bb.du
  %i.xz = load i32, ptr %i.ih, align 4, !tbaa !56
  switch i32 %i.xz, label %CheckFlushComplete.exit.thread195.backedge [
    i32 1, label %bb.dw
    i32 0, label %bb.dx
  ]

CheckFlushComplete.exit.thread195.backedge:       ; preds = %bb.dv, %bb.dw, %bb.ed, %bb.ee, %bb.du, %bb.dx, %CopyInputToRingBuffer.exit, %bb.dh
  br label %CheckFlushComplete.exit.thread195

bb.dw:                                            ; preds = %bb.dv
  %i.ya = load i64, ptr %i.jc, align 8, !tbaa !70
  %i.yb = icmp eq i64 %i.ya, 0
  br i1 %i.yb, label %CheckFlushComplete.exit.thread, label %CheckFlushComplete.exit.thread195.backedge

CheckFlushComplete.exit.thread:                   ; preds = %bb.dw
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !77
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %CheckFlushComplete.exit.thread
  store i8 -2, ptr %i.ip, align 1, !tbaa !183
  br label %CheckFlushComplete.exit.thread195.backedge

bb.dy:                                            ; preds = %bb.dq
  %i.yc = icmp eq i32 %i.wf, 0
  %or.cond = or i1 %i.jf, %.not98
  %or.cond216 = and i1 %i.yc, %or.cond
  br i1 %or.cond216, label %bb.dz, label %ProcessMetadata.exit

bb.dz:                                            ; preds = %bb.dy
  %i.yd = load i64, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.ye = icmp eq i64 %i.yd, 0                    ; 2 uses
  %i.yf = and i1 %i.jg, %i.ye                     ; 4 uses
  %i.yg = zext i1 %i.yf to i32
  %i.yh = and i1 %i.jh, %i.ye
  %i.yi = icmp ne i8 %i.ow, 0
  %or.cond218.not = or i1 %i.yi, %i.yf
  br i1 %or.cond218.not, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store i8 -1, ptr %i.ip, align 1, !tbaa !183
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.0.shrunk = phi i1 [ %i.yh, %bb.dz ], [ true, %bb.ea ] ; 2 uses
  %.0 = zext i1 %.0.shrunk to i32
  %i.yj = load i64, ptr %i.ji, align 8, !tbaa !45
  %i.yk = icmp eq i64 %i.yj, 0
  br i1 %i.yk, label %bb.ec, label %UpdateSizeHint.exit137

bb.ec:                                            ; preds = %bb.eb
  %i.yl = or i64 %i.ot, %i.yd
  %or.cond.not.i134 = icmp ult i64 %i.yl, 1073741824
  %i.ym = add nuw nsw i64 %i.ot, %i.yd
  %spec.select.i135 = tail call i64 @llvm.umin.i64(i64 %i.ym, i64 1073741824)
  %.0.i136 = select i1 %or.cond.not.i134, i64 %spec.select.i135, i64 1073741824
  store i64 %.0.i136, ptr %i.ji, align 8, !tbaa !45
  br label %UpdateSizeHint.exit137

UpdateSizeHint.exit137:                           ; preds = %bb.eb, %bb.ec
  %i.yn = tail call fastcc i32 @EncodeData(ptr noundef nonnull %0, i32 noundef %i.yg, i32 noundef %.0, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.jb)
  %.not101 = icmp eq i32 %i.yn, 0
  br i1 %.not101, label %ProcessMetadata.exit, label %bb.ed

bb.ed:                                            ; preds = %UpdateSizeHint.exit137
  %i.yo = or i1 %i.yf, %.0.shrunk
  br i1 %i.yo, label %bb.ee, label %CheckFlushComplete.exit.thread195.backedge

bb.ee:                                            ; preds = %bb.ed
  %spec.select102 = select i1 %i.yf, i32 2, i32 1
  store i32 %spec.select102, ptr %i.ih, align 4, !tbaa !56
  br label %CheckFlushComplete.exit.thread195.backedge

bb.ef:                                            ; preds = %.thread
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !77
  br label %ProcessMetadata.exit

ProcessMetadata.exit:                             ; preds = %bb.dy, %.thread207, %UpdateSizeHint.exit137, %bb.dr, %bb.av, %bb.ar, %bb.ef, %bb.cs, %bb.cr, %.thread159.i, %bb.bc, %bb.ai, %UpdateSizeHint.exit, %bb.bh, %bb.bg, %bb.bg, %bb.ad
  %.3 = phi i32 [ 1, %bb.cs ], [ 0, %bb.ad ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 1, %bb.ef ], [ 1, %bb.cr ], [ 1, %bb.bc ], [ 0, %UpdateSizeHint.exit ], [ 0, %bb.ai ], [ 0, %bb.av ], [ 1, %.thread159.i ], [ 1, %bb.ar ], [ 1, %bb.dy ], [ 1, %.thread207 ], [ 1, %bb.dr ], [ 0, %UpdateSizeHint.exit137 ]
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
  %i.af = or i16 %i.ad, %i.ae                     ; 3 uses
  store i16 %i.af, ptr %i.ac, align 8, !tbaa !73
  %i.ag = add i8 %i.z, 2                          ; 2 uses
  store i8 %i.ag, ptr %i.y, align 2, !tbaa !72
  %7 = trunc i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  store i8 %7, ptr %i.ah, align 8, !tbaa !68
  %8 = lshr i16 %i.af, 8
  %9 = trunc nuw i16 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 6945
  store i8 %9, ptr %10, align 1, !tbaa !68
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
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !395
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
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !73
  %i.bq = trunc i16 %i.bp to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !68
  %11 = getelementptr i8, ptr %0, i64 1609
  %12 = load i8, ptr %11, align 1, !tbaa !73
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %12, ptr %i.br, align 1, !tbaa !68
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !42
  %i.bt = and i64 %i.j, 4294967295                ; 3 uses
  %i.bu = icmp eq i32 %i.bs, 0                    ; 2 uses
  %i.bv = select i1 %i.bu, i64 32768, i64 131072
  %invariant.umin.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.bv, i64 %i.bt)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %GetBrotliStorage.exit
  %.0.i.i = phi i64 [ 256, %GetBrotliStorage.exit ], [ %i.bx, %bb.r ] ; 4 uses
  %i.bw = icmp ult i64 %.0.i.i, %invariant.umin.i.i
  %i.bx = shl i64 %.0.i.i, 1                      ; 2 uses
  br i1 %i.bw, label %bb.r, label %HashTableSize.exit.i, !llvm.loop !0

HashTableSize.exit.i:                             ; preds = %bb.r
  %i.by = and i64 %.0.i.i, 698880
  %i.bz = icmp eq i64 %i.by, 0
  %or.cond.i363 = and i1 %i.bu, %i.bz
  %.025.i = select i1 %or.cond.i363, i64 %i.bx, i64 %.0.i.i ; 7 uses
  %i.ca = icmp ult i64 %.025.i, 1025
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %HashTableSize.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2768
  br label %GetHashTable.exit

bb.t:                                             ; preds = %HashTableSize.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 6872 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !81
  %i.ce = icmp ugt i64 %.025.i, %i.cd
  br i1 %i.ce, label %bb.u, label %._crit_edge.i364

._crit_edge.i364:                                 ; preds = %bb.t
  %.phi.trans.insert.i365 = getelementptr inbounds nuw i8, ptr %0, i64 6864
  %.pre.i366 = load ptr, ptr %.phi.trans.insert.i365, align 8, !tbaa !62
  br label %GetHashTable.exit

bb.u:                                             ; preds = %bb.t
  store i64 %.025.i, ptr %i.cc, align 8, !tbaa !81
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6864 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !62
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.cg) #19
  store ptr null, ptr %i.cf, align 8, !tbaa !62
  %i.ch = shl i64 %.025.i, 2
  %i.ci = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.ch) #19 ; 2 uses
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !62
  br label %GetHashTable.exit

GetHashTable.exit:                                ; preds = %bb.s, %._crit_edge.i364, %bb.u
  %.0.i367 = phi ptr [ %i.cb, %bb.s ], [ %.pre.i366, %._crit_edge.i364 ], [ %i.ci, %bb.u ] ; 3 uses
  %i.cj = shl i64 %.025.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i367, i8 0, i64 %i.cj, i1 false)
  %i.ck = load i32, ptr %i.r, align 4, !tbaa !42
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = and i32 %i.w, %.0.i362
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cn ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %GetHashTable.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !63
  call void @BrotliCompressFragmentFast(ptr noundef %i.cq, ptr noundef %i.co, i64 noundef %i.bt, i32 noundef %1, ptr noundef %.0.i367, i64 noundef %.025.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bn) #19
  br label %bb.x

bb.w:                                             ; preds = %GetHashTable.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 6888
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 6896
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !66
  call void @BrotliCompressFragmentTwoPass(ptr noundef %i.cs, ptr noundef %i.co, i64 noundef %i.bt, i32 noundef %1, ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef %.0.i367, i64 noundef %.025.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bn) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cx = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.cy = lshr i64 %i.cx, 3                       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !68
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.bo, align 8, !tbaa !73
  %i.dc = trunc i64 %i.cx to i8
  %i.dd = and i8 %i.dc, 7
  store i8 %i.dd, ptr %i.bb, align 2, !tbaa !72
  %i.de = load i64, ptr %i.h, align 8, !tbaa !53
  store i64 %i.de, ptr %i.i, align 8, !tbaa !76
  store ptr %i.bn, ptr %4, align 8, !tbaa !69
  store i64 %i.cy, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %bb.fz

bb.y:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 13 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !84
  %i.dh = lshr i64 %i.j, 1
  %i.di = and i64 %i.dh, 2147483647
  %i.dj = add nuw nsw i64 %i.di, 1
  %i.dk = add i64 %i.dj, %i.dg                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !396
  %i.dn = icmp ugt i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.do = lshr i32 %i.k, 2
  %i.dp = add nuw nsw i32 %i.do, 16
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add i64 %i.dk, %i.dq                    ; 3 uses
  store i64 %i.dr, ptr %i.dl, align 8, !tbaa !396
  %.not246 = icmp eq i64 %i.dr, 0
  br i1 %.not246, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = shl i64 %i.dr, 4
  %i.dt = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.ds) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.du = phi ptr [ %i.dt, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !59 ; 2 uses
  %.not247 = icmp eq ptr %i.dw, null
  br i1 %.not247, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load i64, ptr %i.df, align 8, !tbaa !84
  %i.dy = shl i64 %i.dx, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.du, ptr nonnull align 4 %i.dw, i64 %i.dy, i1 false)
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !59
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.dz) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 32 uses
  %i.eb = zext i32 %i.w to i64                    ; 62 uses
  %i.ec = zext i32 %.0.i362 to i64                ; 53 uses
  %i.ed = and i64 %i.j, 4294967295                ; 40 uses
  %i.ee = icmp eq i32 %.0.i362, 0
  %.not249.not = xor i1 %.not249, true
  %i.ef = and i1 %i.ee, %.not249.not              ; 4 uses
  %i.eg = zext i1 %i.ef to i32                    ; 12 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !397
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.af, label %bb.bu

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.ek = load i32, ptr %i.r, align 4, !tbaa !50  ; 12 uses
  %i.el = icmp sgt i32 %i.ek, 9
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 10, ptr %i.ej, align 8, !tbaa !85
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.em = icmp eq i32 %i.ek, 4
  br i1 %i.em, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !398
  %i.ep = icmp ugt i64 %i.eo, 1048575
  br i1 %i.ep, label %bb.aj, label %.thread416

bb.aj:                                            ; preds = %bb.ai
  store i32 54, ptr %i.ej, align 8, !tbaa !85
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.eq = icmp slt i32 %i.ek, 5
  br i1 %i.eq, label %.thread416, label %bb.al

.thread416:                                       ; preds = %bb.ai, %bb.ak
  store i32 %i.ek, ptr %i.ej, align 8, !tbaa !85
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !51 ; 2 uses
  %i.et = icmp slt i32 %i.es, 17
  br i1 %i.et, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eu = icmp samesign ult i32 %i.ek, 7
  %i.ev = icmp samesign ult i32 %i.ek, 9
  %i.ew = select i1 %i.ev, i32 41, i32 42
  %i.ex = select i1 %i.eu, i32 40, i32 %i.ew      ; 2 uses
  store i32 %i.ex, ptr %i.ej, align 8, !tbaa !85
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !398
  %i.fa = icmp ugt i64 %i.ez, 1048575
end_hunk_1
begin_hunk_2_@EncodeData:bb.a

bb.eg:                                            ; preds = %bb.ef
  tail call void @BrotliCreateZopfliBackwardReferences(ptr noundef nonnull %i.q, i64 noundef %i.ayq, i64 noundef %i.ays, ptr noundef %i.u, i64 noundef %i.eb, ptr noundef nonnull %i.ayj, ptr noundef nonnull %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ayt, ptr noundef nonnull %i.ayu, ptr noundef %i.ayy, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ayz) #19
  br label %bb.ej

bb.eh:                                            ; preds = %bb.ef
  tail call void @BrotliCreateHqZopfliBackwardReferences(ptr noundef nonnull %i.q, i64 noundef %i.ayq, i64 noundef %i.ays, ptr noundef %i.u, i64 noundef %i.eb, ptr noundef nonnull %i.ayj, ptr noundef nonnull %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ayt, ptr noundef nonnull %i.ayu, ptr noundef %i.ayy, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ayz) #19
  br label %bb.ej

bb.ei:                                            ; preds = %bb.ef
  tail call void @BrotliCreateBackwardReferences(i64 noundef %i.ayq, i64 noundef %i.ays, ptr noundef %i.u, i64 noundef %i.eb, ptr noundef nonnull %i.ayj, ptr noundef nonnull %0, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ayt, ptr noundef nonnull %i.ayu, ptr noundef %i.ayy, ptr noundef nonnull %i.df, ptr noundef nonnull %i.ayz) #19
  br label %bb.ej

bb.ej:                                            ; preds = %bb.eh, %bb.ei, %bb.eg
  %i.aza = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.azb = load i32, ptr %i.aza, align 8, !tbaa !51
  %i.azc = load i32, ptr %i.as, align 4, !tbaa !74 ; 2 uses
  %i.azd = tail call i32 @llvm.smax.i32(i32 %i.azb, i32 %i.azc)
  %i.aze = tail call i32 @llvm.smin.i32(i32 %i.azd, i32 23)
  %i.azf = add nsw i32 %i.aze, 1
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = shl nuw i64 1, %i.azg                  ; 2 uses
  %i.azi = lshr i64 %i.azh, 3                     ; 2 uses
  %i.azj = load i64, ptr %i.h, align 8, !tbaa !53 ; 2 uses
  %i.azk = load i64, ptr %i.axw, align 8, !tbaa !79 ; 2 uses
  %i.azl = sub i64 %i.azj, %i.azk                 ; 3 uses
  %i.azm = zext nneg i32 %i.azc to i64
  %i.azn = shl nuw i64 1, %i.azm
  %i.azo = add i64 %i.azl, %i.azn
  %i.azp = icmp ugt i64 %i.azo, %i.azh
  %i.azq = load i32, ptr %i.r, align 4, !tbaa !42
  %i.azr = icmp slt i32 %i.azq, 4
  br i1 %i.azr, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.azt = load i64, ptr %i.azs, align 8, !tbaa !561
  %i.azu = load i64, ptr %i.df, align 8, !tbaa !84
  %i.azv = add i64 %i.azu, %i.azt
  %i.azw = icmp ugt i64 %i.azv, 12286
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.azx = phi i1 [ false, %bb.ej ], [ %i.azw, %bb.ek ]
  %i.azy = or i32 %2, %1
  %or.cond3 = icmp ne i32 %i.azy, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.azx
  %or.cond7.not = select i1 %or.cond5, i1 true, i1 %i.azp
  br i1 %or.cond7.not, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.azz = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !561
  %i.bab = icmp ult i64 %i.baa, %i.azi
  br i1 %i.bab, label %bb.en, label %bb.eq

bb.en:                                            ; preds = %bb.em
  %i.bac = load i64, ptr %i.df, align 8, !tbaa !84
  %i.bad = icmp ult i64 %i.bac, %i.azi
  br i1 %i.bad, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.bae = tail call fastcc i32 @UpdateLastProcessedPos(ptr noundef nonnull %0)
  %.not251 = icmp eq i32 %i.bae, 0
  br i1 %.not251, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i32 0, ptr %i.od, align 8, !tbaa !437
  br label %.critedge

.critedge:                                        ; preds = %bb.ep, %bb.eo
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.eq:                                            ; preds = %bb.en, %bb.em, %bb.el
  %i.baf = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !560 ; 10 uses
  %.not252 = icmp eq i64 %i.bag, 0
  br i1 %.not252, label %bb.ez, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bah = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !59
  %i.baj = load i64, ptr %i.df, align 8, !tbaa !84 ; 2 uses
  %i.bak = add i64 %i.baj, 1
  store i64 %i.bak, ptr %i.df, align 8, !tbaa !84
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %i.bai, i64 %i.baj ; 5 uses
  %i.bam = trunc i64 %i.bag to i32                ; 2 uses
  store i32 %i.bam, ptr %i.bal, align 4, !tbaa !131
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bal, i64 4
  store i32 134217728, ptr %i.ban, align 4, !tbaa !132
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  store i32 0, ptr %i.bao, align 4, !tbaa !133
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bal, i64 14
  store i16 16, ptr %i.bap, align 2, !tbaa !134
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bal, i64 12
  %i.bar = icmp ult i64 %i.bag, 6
  br i1 %i.bar, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.bas = trunc nuw nsw i64 %i.bag to i16
  br label %GetInsertLengthCode.exit

bb.et:                                            ; preds = %bb.er
  %i.bat = icmp ult i64 %i.bag, 130
  br i1 %i.bat, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.bau = add nsw i64 %i.bag, -2                 ; 2 uses
  %i.bav = trunc nuw nsw i64 %i.bau to i32
  %i.baw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bav, i1 true)
  %i.bax = sub nuw nsw i32 30, %i.baw             ; 2 uses
  %i.bay = shl nuw nsw i32 %i.bax, 1
  %i.baz = zext nneg i32 %i.bay to i64
  %i.bba = zext nneg i32 %i.bax to i64
  %i.bbb = lshr i64 %i.bau, %i.bba
  %i.bbc = add nuw nsw i64 %i.bbb, %i.baz
  %i.bbd = trunc nuw nsw i64 %i.bbc to i16
  %i.bbe = add nuw nsw i16 %i.bbd, 2
  br label %GetInsertLengthCode.exit

bb.ev:                                            ; preds = %bb.et
  %i.bbf = icmp ult i64 %i.bag, 2114
  br i1 %i.bbf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.bbg = add nsw i32 %i.bam, -66
  %i.bbh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bbg, i1 true)
  %i.bbi = trunc nuw nsw i32 %i.bbh to i16
  %i.bbj = sub nuw nsw i16 41, %i.bbi
  br label %GetInsertLengthCode.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bbk = icmp ult i64 %i.bag, 6210
  br i1 %i.bbk, label %GetInsertLengthCode.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bbl = icmp ult i64 %i.bag, 22594
  %..i = select i1 %i.bbl, i16 22, i16 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %bb.es, %bb.eu, %bb.ew, %bb.ex, %bb.ey
  %.0.i308 = phi i16 [ %i.bas, %bb.es ], [ %i.bbe, %bb.eu ], [ %i.bbj, %bb.ew ], [ 21, %bb.ex ], [ %..i, %bb.ey ] ; 2 uses
  %i.bbm = lshr i16 %.0.i308, 3
  %narrow.i = mul nuw nsw i16 %i.bbm, 3
  %i.bbn = zext nneg i16 %narrow.i to i32         ; 2 uses
  %i.bbo = shl nuw nsw i32 %i.bbn, 1
  %i.bbp = shl nuw nsw i32 %i.bbn, 6
  %i.bbq = add nuw nsw i32 %i.bbp, 64
  %i.bbr = lshr i32 5377344, %i.bbo
  %i.bbs = and i32 %i.bbr, 192
  %i.bbt = add nuw nsw i32 %i.bbq, %i.bbs
  %i.bbu = trunc nuw nsw i32 %i.bbt to i16
  %i.bbv = shl nuw nsw i16 %.0.i308, 3
  %i.bbw = and i16 %i.bbv, 56
  %i.bbx = or disjoint i16 %i.bbw, %i.bbu
  %.0.i312 = or disjoint i16 %i.bbx, 2
  store i16 %.0.i312, ptr %i.baq, align 4, !tbaa !75
  %i.bby = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !561
  %i.bca = add i64 %i.bbz, %i.bag
  store i64 %i.bca, ptr %i.bby, align 8, !tbaa !561
  store i64 0, ptr %i.baf, align 8, !tbaa !560
  br label %bb.ez

bb.ez:                                            ; preds = %GetInsertLengthCode.exit, %bb.eq
  %i.bcb = icmp eq i64 %i.azj, %i.azk
  %or.cond439 = select i1 %.not249, i1 %i.bcb, i1 false
  br i1 %or.cond439, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.fb:                                            ; preds = %bb.ez
  %i.bcc = shl i64 %i.azl, 1
  %i.bcd = add i64 %i.bcc, 503
  %i.bce = and i64 %i.bcd, 4294967295             ; 3 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bcg = load i64, ptr %i.bcf, align 8, !tbaa !80
  %i.bch = icmp ult i64 %i.bcg, %i.bce
  %i.bci = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !58 ; 2 uses
  br i1 %i.bch, label %bb.fc, label %GetBrotliStorage.exit387

bb.fc:                                            ; preds = %bb.fb
  tail call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bcj) #19
  store ptr null, ptr %i.bci, align 8, !tbaa !58
  %i.bck = tail call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef %i.bce) #19 ; 2 uses
  store ptr %i.bck, ptr %i.bci, align 8, !tbaa !58
  store i64 %i.bce, ptr %i.bcf, align 8, !tbaa !80
  br label %GetBrotliStorage.exit387

GetBrotliStorage.exit387:                         ; preds = %bb.fb, %bb.fc
  %i.bcl = phi ptr [ %i.bck, %bb.fc ], [ %i.bcj, %bb.fb ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.bcm = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.bcn = load i8, ptr %i.bcm, align 2, !tbaa !72
  %i.bco = zext i8 %i.bcn to i64                  ; 6 uses
  store i64 %i.bco, ptr %i.g, align 8, !tbaa !67
  %i.bcp = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.bcq = load i16, ptr %i.bcp, align 8, !tbaa !73
  %i.bcr = trunc i16 %i.bcq to i8                 ; 3 uses
  store i8 %i.bcr, ptr %i.bcl, align 1, !tbaa !68
  %13 = getelementptr i8, ptr %0, i64 1609
  %14 = load i8, ptr %13, align 1, !tbaa !73      ; 3 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcl, i64 1 ; 3 uses
  store i8 %14, ptr %i.bcs, align 1, !tbaa !68
  %i.bct = load i64, ptr %i.axw, align 8, !tbaa !79 ; 2 uses
  %i.bcu = and i64 %i.azl, 4294967295             ; 13 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %0, i64 1612 ; 2 uses
  %i.bcw = load i8, ptr %i.bcv, align 4, !tbaa !54 ; 3 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %0, i64 1613 ; 2 uses
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !55 ; 3 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.bda = load i64, ptr %i.bcz, align 8, !tbaa !561
  %i.bdb = load i64, ptr %i.df, align 8, !tbaa !84 ; 6 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !59 ; 5 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.bdg = trunc i64 %i.bct to i32                ; 5 uses
  %i.bdh = icmp ugt i64 %i.bct, 3221225471
  %i.bdi = and i32 %i.bdg, 1073741823
  %i.bdj = and i32 %i.bdg, 1073741824
  %reass.sub.i.i388 = sub nsw i32 %i.bdi, %i.bdj
  %i.bdk = xor i32 %reass.sub.i.i388, -2147483648
  %.0.i.i389 = select i1 %i.bdh, i32 %i.bdk, i32 %i.bdg ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %5, ptr noundef nonnull align 8 dereferenceable(1400) %0, i64 1400, i1 false), !tbaa.struct !562
  %i.bdl = icmp eq i64 %i.bcu, 0
  br i1 %i.bdl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %GetBrotliStorage.exit387
  %i.bdm = lshr i64 %i.bco, 3
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %i.bdm ; 2 uses
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !68, !alias.scope !563
  %i.bdp = zext i8 %i.bdo to i64
  %i.bdq = and i64 %i.bco, 7
  %i.bdr = shl nuw nsw i64 3, %i.bdq
  %i.bds = or i64 %i.bdr, %i.bdp
  store i64 %i.bds, ptr %i.bdn, align 1, !noalias !564
  %i.bdt = add nuw nsw i64 %i.bco, 9
  %i.bdu = and i64 %i.bdt, 504
  store i64 %i.bdu, ptr %i.g, align 8, !tbaa !67
  br label %WriteMetaBlockInternal.exit

bb.fe:                                            ; preds = %GetBrotliStorage.exit387
  %i.bdv = icmp samesign ult i64 %i.bcu, 3
  br i1 %i.bdv, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bdw = lshr i64 %i.bcu, 8
  %i.bdx = add nuw nsw i64 %i.bdw, 2
  %i.bdy = icmp ult i64 %i.bdb, %i.bdx
  br i1 %i.bdy, label %bb.fg, label %ShouldCompress.exit.i

bb.fg:                                            ; preds = %bb.ff
  %i.bdz = uitofp i64 %i.bda to double
  %i.bea = uitofp nneg i64 %i.bcu to double       ; 2 uses
  %i.beb = fmul nnan double %i.bea, f0x3FEFAE147AE147AE
  %i.bec = fcmp olt double %i.beb, %i.bdz
  br i1 %i.bec, label %.lr.ph.preheader.i.i, label %ShouldCompress.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.bed = add nuw nsw i64 %i.bcu, 12
  %i.bee = udiv i64 %i.bed, 13                    ; 3 uses
  %xtraiter582 = and i64 %i.bee, 1
  %i.bef = icmp samesign ult i64 %i.bcu, 14
  br i1 %i.bef, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter586 = and i64 %i.bee, 1073741822
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01821.i.i = phi i32 [ %i.bdg, %.lr.ph.preheader.i.i.new ], [ %i.bex, %.lr.ph.i.i ] ; 3 uses
  %niter587 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter587.next.1, %.lr.ph.i.i ]
  %i.beg = and i32 %.01821.i.i, %i.w
  %i.beh = zext i32 %i.beg to i64
  %i.bei = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.beh
  %i.bej = load i8, ptr %i.bei, align 1, !tbaa !68
  %i.bek = zext i8 %i.bej to i64
  %i.bel = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bek ; 2 uses
  %i.bem = load i32, ptr %i.bel, align 4, !tbaa !52
  %i.ben = add i32 %i.bem, 1
  store i32 %i.ben, ptr %i.bel, align 4, !tbaa !52
  %i.beo = add i32 %.01821.i.i, 13
  %i.bep = and i32 %i.beo, %i.w
  %i.beq = zext i32 %i.bep to i64
  %i.ber = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !68
  %i.bet = zext i8 %i.bes to i64
  %i.beu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bet ; 2 uses
  %i.bev = load i32, ptr %i.beu, align 4, !tbaa !52
  %i.bew = add i32 %i.bev, 1
  store i32 %i.bew, ptr %i.beu, align 4, !tbaa !52
  %i.bex = add i32 %.01821.i.i, 26                ; 2 uses
  %niter587.next.1 = add i64 %niter587, 2         ; 2 uses
  %niter587.ncmp.1 = icmp eq i64 %niter587.next.1, %unroll_iter586
  br i1 %niter587.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !394

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod584.not = icmp eq i64 %xtraiter582, 0
  br i1 %lcmp.mod584.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.01821.i.i.epil.init = phi i32 [ %i.bdg, %.lr.ph.preheader.i.i ], [ %i.bex, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod585 = trunc i64 %i.bee to i1
  tail call void @llvm.assume(i1 %lcmp.mod585)
  %i.bey = and i32 %.01821.i.i.epil.init, %i.w
  %i.bez = zext i32 %i.bey to i64
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bez
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !68
  %i.bfc = zext i8 %i.bfb to i64
  %i.bfd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bfc ; 2 uses
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !52
  %i.bff = add i32 %i.bfe, 1
  store i32 %i.bff, ptr %i.bfd, align 4, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.bfg = fmul nnan double %i.bea, 7.920000e+00
  %i.bfh = fmul nnan double %i.bfg, f0x3FB3B13B13B13B14
  %i.bfi = call double @BrotliBitsEntropy(ptr noundef nonnull %i.a, i64 noundef 256) #19
  %i.bfj = fcmp ule double %i.bfi, %i.bfh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.bfj, label %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge, label %bb.fh

._crit_edge.i.i.ShouldCompress.exit.i_crit_edge:  ; preds = %._crit_edge.i.i
  %.pre496 = load i8, ptr %i.bcs, align 1, !tbaa !68
  %.pre497 = load i8, ptr %i.bcl, align 1, !tbaa !68
  %.pre498 = load i64, ptr %i.g, align 8, !tbaa !67
  br label %ShouldCompress.exit.i

bb.fh:                                            ; preds = %._crit_edge.i.i, %bb.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdf, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bde, i64 16, i1 false)
  %i.bfk = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreUncompressedMetaBlock(i32 noundef range(i32 0, 2) %1, ptr noundef %i.u, i64 noundef %i.bfk, i64 noundef range(i64 0, 4294967296) %i.eb, i64 noundef range(i64 0, 4294967296) %i.bcu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bcl) #19
  br label %WriteMetaBlockInternal.exit

ShouldCompress.exit.i:                            ; preds = %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge, %bb.fg, %bb.ff
  %i.bfl = phi i64 [ %.pre498, %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge ], [ %i.bco, %bb.fg ], [ %i.bco, %bb.ff ]
  %i.bfm = phi i8 [ %.pre497, %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge ], [ %i.bcr, %bb.fg ], [ %i.bcr, %bb.ff ]
  %i.bfn = phi i8 [ %.pre496, %._crit_edge.i.i.ShouldCompress.exit.i_crit_edge ], [ %14, %bb.fg ], [ %14, %bb.ff ]
  %i.bfo = load i32, ptr %i.r, align 4, !tbaa !50 ; 2 uses
  %i.bfp = icmp slt i32 %i.bfo, 3
  br i1 %i.bfp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %ShouldCompress.exit.i
  %i.bfq = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreMetaBlockFast(ptr noundef nonnull %i.q, ptr noundef %i.u, i64 noundef %i.bfq, i64 noundef range(i64 0, 4294967296) %i.bcu, i64 noundef range(i64 0, 4294967296) %i.eb, i32 noundef range(i32 0, 2) %1, ptr noundef nonnull %0, ptr noundef %i.bdd, i64 noundef %i.bdb, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bcl) #19
  br label %bb.ft

bb.fj:                                            ; preds = %ShouldCompress.exit.i
  %i.bfr = icmp eq i32 %i.bfo, 3
  br i1 %i.bfr, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bfs = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreMetaBlockTrivial(ptr noundef nonnull %i.q, ptr noundef %i.u, i64 noundef %i.bfs, i64 noundef range(i64 0, 4294967296) %i.bcu, i64 noundef range(i64 0, 4294967296) %i.eb, i32 noundef range(i32 0, 2) %1, ptr noundef nonnull %0, ptr noundef %i.bdd, i64 noundef %i.bdb, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bcl) #19
  br label %bb.ft

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @BrotliInitBlockSplit(ptr noundef nonnull %6) #19
  %i.bft = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @BrotliInitBlockSplit(ptr noundef nonnull %i.bft) #19
  %i.bfu = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  call void @BrotliInitBlockSplit(ptr noundef nonnull %i.bfu) #19
  %i.bfv = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %6, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bfv, i8 0, i64 80, i1 false)
  %i.bga = load i32, ptr %i.r, align 4, !tbaa !50
  %i.bgb = icmp slt i32 %i.bga, 10
  br i1 %i.bgb, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 1, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store ptr null, ptr %i.c, align 8, !tbaa !141
  %i.bgc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bgd = load i32, ptr %i.bgc, align 8, !tbaa !565
  %.not112.i = icmp eq i32 %i.bgd, 0
  br i1 %.not112.i, label %bb.fn, label %._crit_edge.i390

._crit_edge.i390:                                 ; preds = %bb.fm
  %.pre116.i = zext i32 %.0.i.i389 to i64
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.bge = call ptr @BrotliAllocate(ptr noundef nonnull %i.q, i64 noundef 1792) #19 ; 2 uses
  %i.bgf = zext i32 %.0.i.i389 to i64             ; 2 uses
  %i.bgg = load i32, ptr %i.r, align 4, !tbaa !50
  %i.bgh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bgi = load i64, ptr %i.bgh, align 8, !tbaa !398
  call fastcc void @DecideOverLiteralContextModeling(ptr noundef %i.u, i64 noundef %i.bgf, i64 noundef range(i64 0, 4294967296) %i.bcu, i64 noundef range(i64 0, 4294967296) %i.eb, i32 noundef %i.bgg, i64 noundef %i.bgi, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.bge)
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bge) #19
  %.pre.i391 = load i64, ptr %i.b, align 8, !tbaa !67
  %.pre115.i = load ptr, ptr %i.c, align 8, !tbaa !141
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %._crit_edge.i390
  %.pre-phi.i = phi i64 [ %.pre116.i, %._crit_edge.i390 ], [ %i.bgf, %bb.fn ]
  %i.bgj = phi ptr [ null, %._crit_edge.i390 ], [ %.pre115.i, %bb.fn ]
  %i.bgk = phi i64 [ 1, %._crit_edge.i390 ], [ %.pre.i391, %bb.fn ]
  call void @BrotliBuildMetaBlockGreedy(ptr noundef nonnull %i.q, ptr noundef %i.u, i64 noundef %.pre-phi.i, i64 noundef range(i64 0, 4294967296) %i.eb, i8 noundef zeroext %i.bcw, i8 noundef zeroext %i.bcy, ptr noundef nonnull %i.ayj, i64 noundef %i.bgk, ptr noundef %i.bgj, ptr noundef %i.bdd, i64 noundef %i.bdb, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.bgl = zext i32 %.0.i.i389 to i64
  call void @BrotliBuildMetaBlock(ptr noundef nonnull %i.q, ptr noundef %i.u, i64 noundef %i.bgl, i64 noundef range(i64 0, 4294967296) %i.eb, ptr noundef nonnull %5, i8 noundef zeroext %i.bcw, i8 noundef zeroext %i.bcy, ptr noundef %i.bdd, i64 noundef %i.bdb, i32 noundef range(i32 2, 4) %.0.i382, ptr noundef nonnull %6) #19
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.bgm = load i32, ptr %i.r, align 4, !tbaa !50
  %i.bgn = icmp sgt i32 %i.bgm, 3
  br i1 %i.bgn, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.bgo = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !566
  call void @BrotliOptimizeHistograms(i32 noundef %i.bgp, ptr noundef nonnull %6) #19
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.bgq = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreMetaBlock(ptr noundef nonnull %i.q, ptr noundef %i.u, i64 noundef %i.bgq, i64 noundef range(i64 0, 4294967296) %i.bcu, i64 noundef range(i64 0, 4294967296) %i.eb, i8 noundef zeroext %i.bcw, i8 noundef zeroext %i.bcy, i32 noundef range(i32 0, 2) %1, ptr noundef nonnull %5, i32 noundef range(i32 2, 4) %.0.i382, ptr noundef %i.bdd, i64 noundef %i.bdb, ptr noundef nonnull %6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bcl) #19
  call void @BrotliDestroyBlockSplit(ptr noundef nonnull %i.q, ptr noundef nonnull %6) #19
  call void @BrotliDestroyBlockSplit(ptr noundef nonnull %i.q, ptr noundef nonnull %i.bft) #19
  call void @BrotliDestroyBlockSplit(ptr noundef nonnull %i.q, ptr noundef nonnull %i.bfu) #19
  %i.bgr = load ptr, ptr %i.bfv, align 8, !tbaa !572
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bgr) #19
  store ptr null, ptr %i.bfv, align 8, !tbaa !572
  %i.bgs = load ptr, ptr %i.bfw, align 8, !tbaa !573
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bgs) #19
  store ptr null, ptr %i.bfw, align 8, !tbaa !573
  %i.bgt = load ptr, ptr %i.bfx, align 8, !tbaa !574
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bgt) #19
  store ptr null, ptr %i.bfx, align 8, !tbaa !574
  %i.bgu = load ptr, ptr %i.bfy, align 8, !tbaa !575
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bgu) #19
  store ptr null, ptr %i.bfy, align 8, !tbaa !575
  %i.bgv = load ptr, ptr %i.bfz, align 8, !tbaa !576
  call void @BrotliFree(ptr noundef nonnull %i.q, ptr noundef %i.bgv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fk, %bb.fi
  %i.bgw = add nuw nsw i64 %i.bcu, 4
  %i.bgx = load i64, ptr %i.g, align 8, !tbaa !67
  %i.bgy = lshr i64 %i.bgx, 3
  %i.bgz = icmp samesign ult i64 %i.bgw, %i.bgy
  br i1 %i.bgz, label %bb.fu, label %WriteMetaBlockInternal.exit

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdf, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bde, i64 16, i1 false)
  store i8 %i.bfm, ptr %i.bcl, align 1, !tbaa !68
  store i8 %i.bfn, ptr %i.bcs, align 1, !tbaa !68
  %i.bha = and i64 %i.bfl, 255
  store i64 %i.bha, ptr %i.g, align 8, !tbaa !67
  %i.bhb = zext i32 %.0.i.i389 to i64
  call void @BrotliStoreUncompressedMetaBlock(i32 noundef range(i32 0, 2) %1, ptr noundef %i.u, i64 noundef %i.bhb, i64 noundef range(i64 0, 4294967296) %i.eb, i64 noundef range(i64 0, 4294967296) %i.bcu, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bcl) #19
  br label %WriteMetaBlockInternal.exit

WriteMetaBlockInternal.exit:                      ; preds = %bb.fd, %bb.fh, %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bhc = load i64, ptr %i.g, align 8, !tbaa !67 ; 2 uses
  %i.bhd = lshr i64 %i.bhc, 3                     ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %i.bhd
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !68
  %i.bhg = zext i8 %i.bhf to i16
  store i16 %i.bhg, ptr %i.bcp, align 8, !tbaa !73
  %i.bhh = trunc i64 %i.bhc to i8
  %i.bhi = and i8 %i.bhh, 7
  store i8 %i.bhi, ptr %i.bcm, align 2, !tbaa !72
  %i.bhj = load i64, ptr %i.h, align 8, !tbaa !53 ; 6 uses
  store i64 %i.bhj, ptr %i.axw, align 8, !tbaa !79
  %i.bhk = load i64, ptr %i.i, align 8, !tbaa !76 ; 2 uses
  %i.bhl = trunc i64 %i.bhk to i32                ; 3 uses
  %i.bhm = icmp ugt i64 %i.bhk, 3221225471
  %i.bhn = and i32 %i.bhl, 1073741823
  %i.bho = and i32 %i.bhl, 1073741824
  %reass.sub.i.i392 = sub nsw i32 %i.bhn, %i.bho
  %i.bhp = xor i32 %reass.sub.i.i392, -2147483648
  %.0.i.i393 = select i1 %i.bhm, i32 %i.bhp, i32 %i.bhl
  %i.bhq = trunc i64 %i.bhj to i32                ; 5 uses
  %i.bhr = icmp ugt i64 %i.bhj, 3221225471
  %i.bhs = and i32 %i.bhq, 1073741823
  %i.bht = and i32 %i.bhq, 1073741824
  %reass.sub.i5.i394 = sub nsw i32 %i.bhs, %i.bht
  %i.bhu = xor i32 %reass.sub.i5.i394, -2147483648
  %.0.i6.i395 = select i1 %i.bhr, i32 %i.bhu, i32 %i.bhq
  store i64 %i.bhj, ptr %i.i, align 8, !tbaa !76
  %.not440 = icmp ult i32 %.0.i6.i395, %.0.i.i393
  br i1 %.not440, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %WriteMetaBlockInternal.exit
  store i32 0, ptr %i.od, align 8, !tbaa !437
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %WriteMetaBlockInternal.exit
  %.not254 = icmp eq i64 %i.bhj, 0
  br i1 %.not254, label %.thread433, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.bhv = add i32 %i.bhq, -1
  %i.bhw = and i32 %i.bhv, %i.w
  %i.bhx = zext i32 %i.bhw to i64
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bhx
  %i.bhz = load i8, ptr %i.bhy, align 1, !tbaa !68
  store i8 %i.bhz, ptr %i.bcv, align 4, !tbaa !54
  %.not441 = icmp eq i64 %i.bhj, 1
  br i1 %.not441, label %.thread433, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.bia = add i32 %i.bhq, -2
  %i.bib = and i32 %i.bia, %i.w
  %i.bic = zext i32 %i.bib to i64
  %i.bid = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bic
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !68
  store i8 %i.bie, ptr %i.bcx, align 1, !tbaa !55
  br label %.thread433

.thread433:                                       ; preds = %bb.fw, %bb.fy, %bb.fx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bde, ptr noundef nonnull align 8 dereferenceable(16) %i.bdf, i64 16, i1 false)
  store ptr %i.bcl, ptr %4, align 8, !tbaa !69
  store i64 %i.bhd, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %bb.fz

bb.fz:                                            ; preds = %.critedge, %bb.m, %bb.j, %bb.i, %.thread433, %bb.fa, %bb.x, %bb.h, %bb.e, %bb.d
  %.1 = phi i32 [ 1, %bb.e ], [ 0, %bb.i ], [ 0, %bb.j ], [ 1, %bb.x ], [ 1, %.thread433 ], [ 1, %bb.fa ], [ 1, %.critedge ], [ 1, %bb.h ], [ 1, %bb.d ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i32 %.1
}

end_hunk_2
