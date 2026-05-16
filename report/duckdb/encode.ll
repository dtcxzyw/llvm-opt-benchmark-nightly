inline.NumInlined: 168
inline.NumDeleted: 68
begin_hunk_0_@_ZN13duckdb_brotli27BrotliEncoderCompressStreamEPNS_24BrotliEncoderStateStructENS_22BrotliEncoderOperationEPmPPKhS3_PPhS3_:bb.a
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  store i32 1, ptr %i.c, align 4, !tbaa !7
  br label %_ZL17EnsureInitializedPN13duckdb_brotli24BrotliEncoderStateStructE.exit

_ZL17EnsureInitializedPN13duckdb_brotli24BrotliEncoderStateStructE.exit: ; preds = %bb.a, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6960 ; 9 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !76 ; 2 uses
  %.not = icmp eq i32 %i.ch, -1
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZL17EnsureInitializedPN13duckdb_brotli24BrotliEncoderStateStructE.exit
  %i.ci = load i64, ptr %2, align 8, !tbaa !67
  %i.cj = zext i32 %i.ch to i64
  %.not94 = icmp eq i64 %i.ci, %i.cj
  %cond = icmp eq i32 %1, 3
  %or.cond103 = and i1 %cond, %.not94
  br i1 %or.cond103, label %bb.af, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.ae:                                            ; preds = %_ZL17EnsureInitializedPN13duckdb_brotli24BrotliEncoderStateStructE.exit
  %i.ck = icmp eq i32 %1, 3
  br i1 %i.ck, label %bb.af, label %bb.bg

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.ag, label %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit

bb.ag:                                            ; preds = %bb.af
  %i.co = getelementptr i8, ptr %0, i64 1424
  %.val.i = load i64, ptr %i.co, align 8, !tbaa !53
  %i.cp = getelementptr i8, ptr %0, i64 1520
  %.val17.i = load i64, ptr %i.cp, align 8, !tbaa !83
  %i.cq = sub i64 %.val.i, %.val17.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1073741824)
  store i64 %spec.select.i, ptr %i.cl, align 8, !tbaa !43
  br label %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit

_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit: ; preds = %bb.af, %bb.ag
  %i.cr = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.cs = icmp ugt i64 %i.cr, 16777216
  br i1 %i.cs, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 6964 ; 5 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !56 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %bb.ah
  %i.cw = trunc nuw nsw i64 %i.cr to i32
  store i32 %i.cw, ptr %i.cg, align 8, !tbaa !76
  store i32 3, ptr %i.ct, align 4, !tbaa !56
  br label %.preheader.i

bb.ai:                                            ; preds = %bb.ah
  %.off.i = add i32 %i.cu, -3
  %switch.i105 = icmp ult i32 %.off.i, 2
  br i1 %switch.i105, label %.preheader.i, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

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

thread-pre-split.i:                               ; preds = %bb.bf, %bb.be, %bb.av, %bb.at, %bb.as, %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i
  %.pr.i = load i32, ptr %i.ct, align 4, !tbaa !56
  br label %.backedge.i.backedge

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %i.dh = phi i32 [ %i.cx, %.preheader.i ], [ %.be, %.backedge.i.backedge ] ; 2 uses
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %.backedge.i
  %i.dj = load i8, ptr %i.cy, align 2, !tbaa !73  ; 5 uses
  %.not.i.i106 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i106, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load i16, ptr %i.cz, align 8, !tbaa !74
  %i.dl = zext i16 %i.dk to i32
  store i16 0, ptr %i.cz, align 8, !tbaa !74
  store i8 0, ptr %i.cy, align 2, !tbaa !73
  %i.dm = zext nneg i8 %i.dj to i32
  %i.dn = shl i32 6, %i.dm                        ; 2 uses
  %i.do = or i32 %i.dn, %i.dl                     ; 2 uses
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = load i64, ptr %i.db, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !84
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i.i = phi ptr [ %i.dr, %bb.al ], [ %i.dc, %bb.am ] ; 3 uses
  %i.ds = trunc i32 %i.do to i8
  store i8 %i.ds, ptr %.0.i.i.i, align 1, !tbaa !68
  %i.dt = icmp ugt i8 %i.dj, 2
  br i1 %i.dt, label %bb.ao, label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.du = lshr i32 %i.do, 8
  %i.dv = trunc i32 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !68
  %i.dx = icmp ugt i8 %i.dj, 10
  br i1 %i.dx, label %bb.ap, label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.dy = lshr i32 %i.dn, 16
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !68
  br label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i

_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
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
  br i1 %.not25.i.i, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ei = tail call noundef i64 @llvm.umin.i64(i64 %i.eg, i64 %i.eh) ; 6 uses
  %i.ej = load ptr, ptr %5, align 8, !tbaa !69
  %i.ek = load ptr, ptr %i.da, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ek, i64 %i.ei, i1 false)
  %i.el = load ptr, ptr %5, align 8, !tbaa !69
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ei
  store ptr %i.em, ptr %5, align 8, !tbaa !69
  %i.en = load i64, ptr %4, align 8, !tbaa !67
  %i.eo = sub i64 %i.en, %i.ei
  store i64 %i.eo, ptr %4, align 8, !tbaa !67
  %i.ep = load ptr, ptr %i.da, align 8, !tbaa !84
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ei
  store ptr %i.eq, ptr %i.da, align 8, !tbaa !84
  %i.er = load i64, ptr %i.db, align 8, !tbaa !70
  %i.es = sub i64 %i.er, %i.ei
  store i64 %i.es, ptr %i.db, align 8, !tbaa !70
  %i.et = load i64, ptr %i.dd, align 8, !tbaa !85
  %i.eu = add i64 %i.et, %i.ei                    ; 2 uses
  store i64 %i.eu, ptr %i.dd, align 8, !tbaa !85
  br i1 %.not.i26.i.i, label %thread-pre-split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %i.eu, ptr %6, align 8, !tbaa !67
  br label %thread-pre-split.i

bb.au:                                            ; preds = %bb.aq
  %i.ev = load i64, ptr %i.de, align 8, !tbaa !53
  %i.ew = load i64, ptr %i.df, align 8, !tbaa !86
  %.not72.i = icmp eq i64 %i.ev, %i.ew
  br i1 %.not72.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ex = tail call fastcc noundef i32 @_ZL10EncodeDataPN13duckdb_brotli24BrotliEncoderStateStructEiiPmPPh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.db, ptr noundef nonnull %i.da)
  %.not74.i = icmp eq i32 %i.ex, 0
  br i1 %.not74.i, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit, label %thread-pre-split.i

bb.aw:                                            ; preds = %bb.au
  %i.ey = icmp eq i32 %i.dh, 3
  br i1 %i.ey, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !84
  %i.ez = load i32, ptr %i.cg, align 8, !tbaa !76 ; 4 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = load i8, ptr %i.cy, align 2, !tbaa !73
  %i.fc = zext i8 %i.fb to i64                    ; 6 uses
  %i.fd = load i16, ptr %i.cz, align 8
  store i16 %i.fd, ptr %i.dc, align 8
  store i16 0, ptr %i.cz, align 8, !tbaa !74
  store i8 0, ptr %i.cy, align 2, !tbaa !73
  %i.fe = lshr i64 %i.fc, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !68, !alias.scope !87, !noalias !90
  %i.fh = zext i8 %i.fg to i64
  store i64 %i.fh, ptr %i.ff, align 1, !noalias !90
  %i.fi = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !68, !alias.scope !92, !noalias !95
  %i.fm = zext i8 %i.fl to i64
  %i.fn = and i64 %i.fi, 7
  %i.fo = shl nuw nsw i64 3, %i.fn
  %i.fp = or i64 %i.fo, %i.fm
  store i64 %i.fp, ptr %i.fk, align 1, !noalias !95
  %i.fq = add nuw nsw i64 %i.fc, 3
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fr ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !68, !alias.scope !97, !noalias !100
  %i.fu = zext i8 %i.ft to i64
  store i64 %i.fu, ptr %i.fs, align 1, !noalias !100
  %i.fv = add nuw nsw i64 %i.fc, 4                ; 3 uses
  switch i32 %i.ez, label %bb.az [
    i32 0, label %bb.ay
    i32 1, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fw = lshr i64 %i.fv, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fw ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !68, !alias.scope !102, !noalias !105
  %i.fz = zext i8 %i.fy to i64
  store i64 %i.fz, ptr %i.fx, align 1, !noalias !105
  %i.ga = add nuw nsw i64 %i.fc, 6
  br label %_ZL19WriteMetadataHeaderPN13duckdb_brotli24BrotliEncoderStateStructEmPh.exit.i

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
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !68, !alias.scope !107, !noalias !110
  %i.gk = zext i8 %i.gj to i64
  %i.gl = and i64 %i.fv, 7
  %i.gm = shl nuw nsw i64 %i.gg, %i.gl
  %i.gn = or i64 %i.gm, %i.gk
  store i64 %i.gn, ptr %i.gi, align 1, !noalias !110
  %i.go = add nuw nsw i64 %i.fc, 6                ; 3 uses
  %i.gp = shl nuw nsw i32 %i.gf, 3
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = add nsw i64 %i.fa, -1
  %i.gs = lshr i64 %i.go, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !68, !alias.scope !112, !noalias !115
  %i.gv = zext i8 %i.gu to i64
  %i.gw = and i64 %i.go, 7
  %i.gx = shl nuw nsw i64 %i.gr, %i.gw
  %i.gy = or i64 %i.gx, %i.gv
  store i64 %i.gy, ptr %i.gt, align 1, !noalias !115
  %i.gz = add nuw nsw i64 %i.go, %i.gq
  br label %_ZL19WriteMetadataHeaderPN13duckdb_brotli24BrotliEncoderStateStructEmPh.exit.i

_ZL19WriteMetadataHeaderPN13duckdb_brotli24BrotliEncoderStateStructEmPh.exit.i: ; preds = %bb.ba, %bb.ay
  %.0.i75.i = phi i64 [ %i.gz, %bb.ba ], [ %i.ga, %bb.ay ]
  %i.ha = add nuw nsw i64 %.0.i75.i, 7
  %i.hb = lshr i64 %i.ha, 3
  store i64 %i.hb, ptr %i.db, align 8, !tbaa !70
  store i32 4, ptr %i.ct, align 4, !tbaa !56
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_ZL19WriteMetadataHeaderPN13duckdb_brotli24BrotliEncoderStateStructEmPh.exit.i, %thread-pre-split.i
  %.be = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 4, %_ZL19WriteMetadataHeaderPN13duckdb_brotli24BrotliEncoderStateStructEmPh.exit.i ]
  br label %.backedge.i, !llvm.loop !117

bb.bb:                                            ; preds = %bb.aw
  %i.hc = load i32, ptr %i.cg, align 8, !tbaa !76 ; 3 uses
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 -1, ptr %i.cg, align 8, !tbaa !76
  store i32 0, ptr %i.ct, align 4, !tbaa !56
  br label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.he = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not73.i = icmp eq i64 %i.he, 0
  br i1 %.not73.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hf = zext i32 %i.hc to i64
  %i.hg = tail call noundef i64 @llvm.umin.i64(i64 %i.hf, i64 %i.he) ; 7 uses
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
  %i.ho = load i64, ptr %i.dg, align 8, !tbaa !118
  %i.hp = add i64 %i.ho, %i.hg
  store i64 %i.hp, ptr %i.dg, align 8, !tbaa !118
  %i.hq = load i32, ptr %i.cg, align 8, !tbaa !76
  %i.hr = sub i32 %i.hq, %i.hh
  store i32 %i.hr, ptr %i.cg, align 8, !tbaa !76
  %i.hs = load ptr, ptr %5, align 8, !tbaa !69
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hg
  store ptr %i.ht, ptr %5, align 8, !tbaa !69
  %i.hu = load i64, ptr %4, align 8, !tbaa !67
  %i.hv = sub i64 %i.hu, %i.hg
  store i64 %i.hv, ptr %4, align 8, !tbaa !67
  br label %thread-pre-split.i, !llvm.loop !117

bb.bf:                                            ; preds = %bb.bd
  %i.hw = tail call noundef range(i32 1, 0) i32 @llvm.umin.i32(i32 range(i32 1, 0) %i.hc, i32 16) ; 2 uses
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !84
  %i.hx = load ptr, ptr %3, align 8, !tbaa !69
  %i.hy = zext nneg i32 %i.hw to i64              ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %i.hx, i64 %i.hy, i1 false)
  %i.hz = load ptr, ptr %3, align 8, !tbaa !69
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy
  store ptr %i.ia, ptr %3, align 8, !tbaa !69
  %i.ib = load i64, ptr %2, align 8, !tbaa !67
  %i.ic = sub i64 %i.ib, %i.hy
  store i64 %i.ic, ptr %2, align 8, !tbaa !67
  %i.id = load i64, ptr %i.dg, align 8, !tbaa !118
  %i.ie = add i64 %i.id, %i.hy
  store i64 %i.ie, ptr %i.dg, align 8, !tbaa !118
  %i.if = load i32, ptr %i.cg, align 8, !tbaa !76
  %i.ig = sub i32 %i.if, %i.hw
  store i32 %i.ig, ptr %i.cg, align 8, !tbaa !76
  store i64 %i.hy, ptr %i.db, align 8, !tbaa !70
  br label %thread-pre-split.i, !llvm.loop !117

bb.bg:                                            ; preds = %bb.ae
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 6964 ; 10 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !56
  switch i32 %i.ii, label %bb.bh [
    i32 3, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit
    i32 4, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit
    i32 0, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ij = load i64, ptr %2, align 8, !tbaa !67
  %.not97 = icmp eq i64 %i.ij, 0
  br i1 %.not97, label %bb.bi, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !39 ; 2 uses
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
  br label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !40
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = shl nuw i64 1, %i.jl                    ; 3 uses
  %i.jn = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %i.jo = tail call noundef i64 @llvm.umin.i64(i64 %i.jn, i64 %i.jm) ; 2 uses
  %i.jp = tail call noundef i64 @llvm.umin.i64(i64 %i.jo, i64 131072) ; 2 uses
  %i.jq = icmp eq i32 %i.il, 1
  br i1 %i.jq, label %bb.bk, label %.thread139.i

bb.bk:                                            ; preds = %bb.bj
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6896 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !65 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null                 ; 2 uses
  %i.ju = icmp ugt i64 %i.jo, 131071
  %or.cond.i119 = and i1 %i.ju, %i.jt
  br i1 %or.cond.i119, label %.thread.i120, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.jt, label %bb.bm, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bl
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  br label %.thread139.i

.thread.i120:                                     ; preds = %bb.bk
  %i.jv = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef 524288)
  store ptr %i.jv, ptr %i.jr, align 8, !tbaa !65
  %i.jw = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef 131072) ; 2 uses
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
  %i.jz = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef %i.jy) ; 2 uses
  %i.ka = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef %i.jp) ; 2 uses
  br label %.thread139.i

.thread139.i:                                     ; preds = %.thread141.i, %bb.bm, %.thread.i120, %._crit_edge.i, %bb.bj
  %.0114.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.ka, %.thread141.i ], [ %i.jw, %.thread.i120 ], [ %.pre.i, %._crit_edge.i ]
  %.0113.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.ka, %.thread141.i ], [ null, %.thread.i120 ], [ null, %._crit_edge.i ]
  %.0110.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.jz, %.thread141.i ], [ %.pr.i121, %.thread.i120 ], [ %i.js, %._crit_edge.i ]
  %.0109.i = phi ptr [ null, %bb.bm ], [ null, %bb.bj ], [ %i.jz, %.thread141.i ], [ null, %.thread.i120 ], [ null, %._crit_edge.i ]
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 7 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 6936 ; 4 uses
  %.not.i26.i.i109 = icmp eq ptr %6, null         ; 2 uses
  %i.kh = icmp ne i32 %1, 0
  %i.ki = icmp eq i32 %1, 2                       ; 2 uses
  %i.kj = icmp eq i32 %1, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %0, i64 1609
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
  %i.ku = load i8, ptr %i.kb, align 2, !tbaa !73  ; 5 uses
  %.not.i.i115 = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i115, label %.thread156.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kv = load i16, ptr %i.kc, align 8, !tbaa !74
  %i.kw = zext i16 %i.kv to i32
  store i16 0, ptr %i.kc, align 8, !tbaa !74
  store i8 0, ptr %i.kb, align 2, !tbaa !73
  %i.kx = zext nneg i8 %i.ku to i32
  %i.ky = shl i32 6, %i.kx                        ; 2 uses
  %i.kz = or i32 %i.ky, %i.kw                     ; 2 uses
  %i.la = load ptr, ptr %i.kd, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i116, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lb = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !84
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i.i.i117 = phi ptr [ %i.lc, %bb.bp ], [ %i.kf, %bb.bq ] ; 3 uses
  %i.ld = trunc i32 %i.kz to i8
  store i8 %i.ld, ptr %.0.i.i.i117, align 1, !tbaa !68
  %i.le = icmp ugt i8 %i.ku, 2
  br i1 %i.le, label %bb.bs, label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i118

bb.bs:                                            ; preds = %bb.br
  %i.lf = lshr i32 %i.kz, 8
  %i.lg = trunc i32 %i.lf to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !68
  %i.li = icmp ugt i8 %i.ku, 10
  br i1 %i.li, label %bb.bt, label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i118

bb.bt:                                            ; preds = %bb.bs
  %i.lj = lshr i32 %i.ky, 16
  %i.lk = trunc i32 %i.lj to i8
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 2
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !68
  br label %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i118

_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i118: ; preds = %bb.bt, %bb.bs, %bb.br
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

.thread156.i:                                     ; preds = %bb.bn
  %i.ls = load i64, ptr %i.ke, align 8, !tbaa !70 ; 2 uses
  %.not24.i157.i = icmp eq i64 %i.ls, 0
  br i1 %.not24.i157.i, label %.thread158.i, label %bb.bv

bb.bv:                                            ; preds = %.thread156.i, %bb.bu
  %i.lt = phi i64 [ %i.ls, %.thread156.i ], [ %i.lr, %bb.bu ]
  %i.lu = load i64, ptr %4, align 8, !tbaa !67    ; 2 uses
  %.not25.i.i112 = icmp eq i64 %i.lu, 0
  br i1 %.not25.i.i112, label %.thread158.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lv = call noundef i64 @llvm.umin.i64(i64 %i.lt, i64 %i.lu) ; 6 uses
  %i.lw = load ptr, ptr %5, align 8, !tbaa !69
  %i.lx = load ptr, ptr %i.kd, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr align 1 %i.lx, i64 %i.lv, i1 false)
  %i.ly = load ptr, ptr %5, align 8, !tbaa !69
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lv
  store ptr %i.lz, ptr %5, align 8, !tbaa !69
  %i.ma = load i64, ptr %4, align 8, !tbaa !67
  %i.mb = sub i64 %i.ma, %i.lv
  store i64 %i.mb, ptr %4, align 8, !tbaa !67
  %i.mc = load ptr, ptr %i.kd, align 8, !tbaa !84
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lv
  store ptr %i.md, ptr %i.kd, align 8, !tbaa !84
  %i.me = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.mf = sub i64 %i.me, %i.lv
  store i64 %i.mf, ptr %i.ke, align 8, !tbaa !70
  %i.mg = load i64, ptr %i.kg, align 8, !tbaa !85
  %i.mh = add i64 %i.mg, %i.lv                    ; 2 uses
  store i64 %i.mh, ptr %i.kg, align 8, !tbaa !85
  br i1 %.not.i26.i.i109, label %.backedge.i113.backedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.mh, ptr %6, align 8, !tbaa !67
  br label %.backedge.i113.backedge

bb.by:                                            ; preds = %bb.bu
  %i.mi = icmp eq i32 %i.ks, 0
  br i1 %i.mi, label %bb.bz, label %.thread158.i

bb.bz:                                            ; preds = %bb.by
  %i.mj = load i64, ptr %2, align 8, !tbaa !67    ; 4 uses
  %i.mk = icmp ne i64 %i.mj, 0
  %or.cond3.i = or i1 %i.kh, %i.mk
  br i1 %or.cond3.i, label %bb.ca, label %.thread158.i

bb.ca:                                            ; preds = %bb.bz
  %i.ml = call noundef i64 @llvm.umin.i64(i64 %i.jm, i64 %i.mj) ; 7 uses
  %i.mm = icmp ule i64 %i.mj, %i.jm               ; 2 uses
  %i.mn = and i1 %i.ki, %i.mm
  %i.mo = zext i1 %i.mn to i32                    ; 2 uses
  %i.mp = shl i64 %i.ml, 1
  %i.mq = add i64 %i.mp, 503                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.mr = load i8, ptr %i.kb, align 2, !tbaa !73
  %i.ms = zext i8 %i.mr to i64
  store i64 %i.ms, ptr %i.a, align 8, !tbaa !67
  %i.mt = icmp eq i64 %i.mj, 0                    ; 2 uses
  %or.cond5.i = and i1 %i.kj, %i.mt
  br i1 %or.cond5.i, label %.sink.split.i, label %bb.cb, !llvm.loop !119

bb.cb:                                            ; preds = %bb.ca
  %i.mu = load i64, ptr %4, align 8, !tbaa !67
  %.not124.i = icmp ugt i64 %i.mq, %i.mu          ; 2 uses
  br i1 %.not124.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = load ptr, ptr %5, align 8, !tbaa !69
  br label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.mw = load i64, ptr %i.kk, align 8, !tbaa !120
  %i.mx = icmp ult i64 %i.mw, %i.mq
  %i.my = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %i.mx, label %bb.ce, label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.b, ptr noundef %i.my)
  store ptr null, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  %i.mz = call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef %i.mq) ; 2 uses
  store ptr %i.mz, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58
  store i64 %i.mq, ptr %i.kk, align 8, !tbaa !120
  br label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i

_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0111.i = phi ptr [ %i.mv, %bb.cc ], [ %i.mz, %bb.ce ], [ %i.my, %bb.cd ] ; 6 uses
  %i.na = load i16, ptr %i.kc, align 8, !tbaa !74
  %i.nb = trunc i16 %i.na to i8
  store i8 %i.nb, ptr %.0111.i, align 1, !tbaa !68
  %7 = load i8, ptr %.shift.i, align 1, !tbaa !74
  %i.nc = getelementptr inbounds nuw i8, ptr %.0111.i, i64 1
  store i8 %7, ptr %i.nc, align 1, !tbaa !68
  %i.nd = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.ne = icmp eq i32 %i.nd, 0                    ; 2 uses
  %i.nf = select i1 %i.ne, i64 32768, i64 131072
  %invariant.umin.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.nf, i64 %i.ml)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i
  %.0.i.i127.i = phi i64 [ 256, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit.i ], [ %i.nh, %bb.cf ] ; 4 uses
  %i.ng = icmp ult i64 %.0.i.i127.i, %invariant.umin.i.i.i
  %i.nh = shl i64 %.0.i.i127.i, 1                 ; 2 uses
  br i1 %i.ng, label %bb.cf, label %_ZL13HashTableSizemm.exit.i.i, !llvm.loop !121

_ZL13HashTableSizemm.exit.i.i:                    ; preds = %bb.cf
  %i.ni = and i64 %.0.i.i127.i, 698880
  %i.nj = icmp eq i64 %i.ni, 0
  %or.cond.i.i114 = and i1 %i.ne, %i.nj
  %.025.i.i = select i1 %or.cond.i.i114, i64 %i.nh, i64 %.0.i.i127.i ; 7 uses
  %i.nk = icmp ult i64 %.025.i.i, 1025
  br i1 %i.nk, label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_ZL13HashTableSizemm.exit.i.i
  %i.nl = load i64, ptr %i.kl, align 8, !tbaa !122
  %i.nm = icmp ugt i64 %.025.i.i, %i.nl
  br i1 %i.nm, label %bb.ch, label %._crit_edge.i128.i

._crit_edge.i128.i:                               ; preds = %bb.cg
  %.pre.i130.i = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i

bb.ch:                                            ; preds = %bb.cg
  store i64 %.025.i.i, ptr %i.kl, align 8, !tbaa !122
  %i.nn = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.b, ptr noundef %i.nn)
  store ptr null, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  %i.no = shl i64 %.025.i.i, 2
  %i.np = call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef %i.no) ; 2 uses
  store ptr %i.np, ptr %.phi.trans.insert.i129.i, align 8, !tbaa !62
  br label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i

_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i: ; preds = %bb.ch, %._crit_edge.i128.i, %_ZL13HashTableSizemm.exit.i.i
  %.0.i131.i = phi ptr [ %i.np, %bb.ch ], [ %.pre.i130.i, %._crit_edge.i128.i ], [ %i.km, %_ZL13HashTableSizemm.exit.i.i ] ; 3 uses
  %i.nq = shl i64 %.025.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.0.i131.i, i8 0, i64 %i.nq, i1 false)
  %i.nr = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.ns = icmp eq i32 %i.nr, 0
  %i.nt = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  br i1 %i.ns, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i
  %i.nu = load ptr, ptr %i.ko, align 8, !tbaa !63
  call void @_ZN13duckdb_brotli26BrotliCompressFragmentFastEPNS_18BrotliOnePassArenaEPKhmiPimPmPh(ptr noundef %i.nu, ptr noundef %i.nt, i64 noundef %i.ml, i32 noundef %i.mo, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0111.i)
  br label %bb.ck

bb.cj:                                            ; preds = %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit.i
  %i.nv = load ptr, ptr %i.kn, align 8, !tbaa !64
  call void @_ZN13duckdb_brotli29BrotliCompressFragmentTwoPassEPNS_18BrotliTwoPassArenaEPKhmiPjPhPimPmS5_(ptr noundef %i.nv, ptr noundef %i.nt, i64 noundef %i.ml, i32 noundef %i.mo, ptr noundef %.0110.i, ptr noundef %.0114.i, ptr noundef %.0.i131.i, i64 noundef %.025.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %.0111.i)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mt, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nw = load ptr, ptr %3, align 8, !tbaa !69
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ml
  store ptr %i.nx, ptr %3, align 8, !tbaa !69
  %i.ny = load i64, ptr %2, align 8, !tbaa !67
  %i.nz = sub i64 %i.ny, %i.ml
  store i64 %i.nz, ptr %2, align 8, !tbaa !67
  %i.oa = load i64, ptr %i.kp, align 8, !tbaa !118
  %i.ob = add i64 %i.oa, %i.ml
  store i64 %i.ob, ptr %i.kp, align 8, !tbaa !118
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.oc = load i64, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.od = lshr i64 %i.oc, 3                       ; 5 uses
  br i1 %.not124.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oe = load ptr, ptr %5, align 8, !tbaa !69
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.od
  store ptr %i.of, ptr %5, align 8, !tbaa !69
  %i.og = load i64, ptr %4, align 8, !tbaa !67
  %i.oh = sub i64 %i.og, %i.od
  store i64 %i.oh, ptr %4, align 8, !tbaa !67
  %i.oi = load i64, ptr %i.kg, align 8, !tbaa !85
  %i.oj = add i64 %i.oi, %i.od                    ; 2 uses
  store i64 %i.oj, ptr %i.kg, align 8, !tbaa !85
  br i1 %.not.i26.i.i109, label %_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store i64 %i.oj, ptr %6, align 8, !tbaa !67
  br label %_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i

bb.cp:                                            ; preds = %bb.cm
  store ptr %.0111.i, ptr %i.kd, align 8, !tbaa !84
  store i64 %i.od, ptr %i.ke, align 8, !tbaa !70
  br label %_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i

_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.ok = getelementptr inbounds nuw i8, ptr %.0111.i, i64 %i.od
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !68
  %i.om = zext i8 %i.ol to i16
  store i16 %i.om, ptr %i.kc, align 8, !tbaa !74
  %i.on = trunc i64 %i.oc to i8
  %i.oo = and i8 %i.on, 7
  store i8 %i.oo, ptr %i.kb, align 2, !tbaa !73
  %i.op = and i1 %i.kr, %i.mm
  br i1 %i.op, label %bb.cq, label %bb.cr, !llvm.loop !119

bb.cq:                                            ; preds = %_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i
  br label %.sink.split.i, !llvm.loop !119

.sink.split.i:                                    ; preds = %bb.cq, %bb.ca
  %spec.select.sink.i = phi i32 [ %spec.select.i110, %bb.cq ], [ 1, %bb.ca ]
  store i32 %spec.select.sink.i, ptr %i.ih, align 4, !tbaa !56
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split.i, %_ZL11SetTotalOutPN13duckdb_brotli24BrotliEncoderStateStructEPm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge.i113.backedge

.backedge.i113.backedge:                          ; preds = %bb.cr, %bb.bx, %bb.bw, %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i.i118
  br label %.backedge.i113, !llvm.loop !119

.thread158.i:                                     ; preds = %bb.bz, %bb.by, %bb.bv, %.thread156.i
  call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.b, ptr noundef %.0109.i)
  call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.b, ptr noundef %.0113.i)
  %i.oq = load i32, ptr %i.ih, align 4, !tbaa !56
  %i.or = icmp eq i32 %i.oq, 1
  br i1 %i.or, label %bb.cs, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.cs:                                            ; preds = %.thread158.i
  %i.os = load i64, ptr %i.ke, align 8, !tbaa !70
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.ct, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.kd, align 8, !tbaa !84
  br label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194: ; preds = %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge, %.preheader
  %.val.i122 = load i64, ptr %i.im, align 8, !tbaa !53
  %.val8.i = load i64, ptr %i.in, align 8, !tbaa !83
  %i.ou = sub i64 %.val.i122, %.val8.i            ; 3 uses
  %.val9.i = load i32, ptr %i.io, align 4, !tbaa !41
  %i.ov = zext nneg i32 %.val9.i to i64
  %i.ow = shl nuw i64 1, %i.ov
  %.0.i123 = tail call noundef range(i64 0, -9223372036854775807) i64 @llvm.usub.sat.i64(i64 %i.ow, i64 %i.ou) ; 2 uses
  %i.ox = load i8, ptr %i.ip, align 1, !tbaa !75  ; 3 uses
  %i.oy = zext nneg i8 %i.ox to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0.i123, i64 %i.oy)
  %i.oz = icmp slt i8 %i.ox, 0
  %.083 = select i1 %i.oz, i64 %.0.i123, i64 %spec.select ; 2 uses
  %.not98 = icmp eq i64 %.083, 0                  ; 2 uses
  br i1 %.not98, label %bb.dj, label %bb.cu

bb.cu:                                            ; preds = %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194
  %i.pa = load i64, ptr %2, align 8, !tbaa !67    ; 2 uses
  %.not99 = icmp eq i64 %i.pa, 0
  br i1 %.not99, label %bb.dj, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pb = tail call noundef i64 @llvm.umin.i64(i64 %.083, i64 %i.pa) ; 15 uses
  %i.pc = load ptr, ptr %3, align 8, !tbaa !69    ; 5 uses
  %i.pd = load i32, ptr %i.ir, align 4, !tbaa !123 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.pf = load i32, ptr %i.is, align 8, !tbaa !124
  %i.pg = zext i32 %i.pf to i64
  %i.ph = icmp ult i64 %i.pb, %i.pg
  br i1 %i.ph, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.pi = trunc nuw i64 %i.pb to i32              ; 2 uses
  store i32 %i.pi, ptr %i.ir, align 4, !tbaa !123
  %i.pj = add nuw nsw i64 %i.pb, 2
  %i.pk = and i64 %i.pj, 4294967295
  %i.pl = add nuw nsw i64 %i.pk, 7
  %i.pm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.b, i64 noundef %i.pl) ; 4 uses
  %i.pn = load ptr, ptr %i.iv, align 8, !tbaa !60 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.pn, null
  br i1 %.not.i11.i, label %_ZN13duckdb_brotliL20RingBufferInitBufferEPNS_13MemoryManagerEjPNS_10RingBufferE.exit.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.po = load i32, ptr %i.it, align 8, !tbaa !125
  %i.pp = add i32 %i.po, 2
  %i.pq = zext i32 %i.pp to i64
  %i.pr = add nuw nsw i64 %i.pq, 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pm, ptr noundef nonnull align 1 dereferenceable(1) %i.pn, i64 %i.pr, i1 false)
  %i.ps = load ptr, ptr %i.iv, align 8, !tbaa !60
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.b, ptr noundef %i.ps)
  br label %_ZN13duckdb_brotliL20RingBufferInitBufferEPNS_13MemoryManagerEjPNS_10RingBufferE.exit.i

_ZN13duckdb_brotliL20RingBufferInitBufferEPNS_13MemoryManagerEjPNS_10RingBufferE.exit.i: ; preds = %bb.cy, %bb.cx
  store ptr %i.pm, ptr %i.iv, align 8, !tbaa !60
  store i32 %i.pi, ptr %i.it, align 8, !tbaa !125
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli27BrotliEncoderCompressStreamEPNS_24BrotliEncoderStateStructENS_22BrotliEncoderOperationEPmPPKhS3_PPhS3_:bb.a
bb.dt:                                            ; preds = %.thread206, %bb.ds
  %i.xj = phi i64 [ %i.xi, %.thread206 ], [ %i.xh, %bb.ds ]
  %i.xk = phi i64 [ %i.xf, %.thread206 ], [ %i.xg, %bb.ds ]
  %i.xl = tail call noundef i64 @llvm.umin.i64(i64 %i.xk, i64 %i.xj) ; 6 uses
  %i.xm = load ptr, ptr %5, align 8, !tbaa !69
  %i.xn = load ptr, ptr %i.jb, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xm, ptr align 1 %i.xn, i64 %i.xl, i1 false)
  %i.xo = load ptr, ptr %5, align 8, !tbaa !69
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xl
  store ptr %i.xp, ptr %5, align 8, !tbaa !69
  %i.xq = load i64, ptr %4, align 8, !tbaa !67
  %i.xr = sub i64 %i.xq, %i.xl
  store i64 %i.xr, ptr %4, align 8, !tbaa !67
  %i.xs = load ptr, ptr %i.jb, align 8, !tbaa !84
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xl
  store ptr %i.xt, ptr %i.jb, align 8, !tbaa !84
  %i.xu = load i64, ptr %i.jc, align 8, !tbaa !70
  %i.xv = sub i64 %i.xu, %i.xl
  store i64 %i.xv, ptr %i.jc, align 8, !tbaa !70
  %i.xw = load i64, ptr %i.je, align 8, !tbaa !85
  %i.xx = add i64 %i.xw, %i.xl                    ; 2 uses
  store i64 %i.xx, ptr %i.je, align 8, !tbaa !85
  br i1 %.not.i26.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store i64 %i.xx, ptr %6, align 8, !tbaa !67
  br label %bb.dv

bb.dv:                                            ; preds = %_ZL22InjectBytePaddingBlockPN13duckdb_brotli24BrotliEncoderStateStructE.exit.i, %bb.dt, %bb.du
  %i.xy = load i8, ptr %i.ip, align 1, !tbaa !75
  %i.xz = icmp eq i8 %i.xy, -1
  br i1 %i.xz, label %bb.dw, label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge

bb.dw:                                            ; preds = %bb.dv
  %i.ya = load i32, ptr %i.ih, align 4, !tbaa !56
  switch i32 %i.ya, label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge [
    i32 1, label %bb.dx
    i32 0, label %bb.dy
  ]

_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge: ; preds = %bb.dw, %bb.dx, %bb.ee, %bb.ef, %bb.dv, %bb.dy, %_ZL21CopyInputToRingBufferPN13duckdb_brotli24BrotliEncoderStateStructEmPKh.exit, %bb.di
  br label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194, !llvm.loop !131

bb.dx:                                            ; preds = %bb.dw
  %i.yb = load i64, ptr %i.jc, align 8, !tbaa !70
  %i.yc = icmp eq i64 %i.yb, 0
  br i1 %i.yc, label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread, label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge

_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread: ; preds = %bb.dx
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !84
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread
  store i8 -2, ptr %i.ip, align 1, !tbaa !75
  br label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge

bb.dz:                                            ; preds = %bb.dr
  %i.yd = icmp eq i32 %i.wg, 0
  %or.cond = or i1 %i.jf, %.not98
  %or.cond215 = and i1 %i.yd, %or.cond
  br i1 %or.cond215, label %bb.ea, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

bb.ea:                                            ; preds = %bb.dz
  %i.ye = load i64, ptr %2, align 8, !tbaa !67    ; 3 uses
  %i.yf = icmp eq i64 %i.ye, 0                    ; 2 uses
  %i.yg = and i1 %i.jg, %i.yf                     ; 4 uses
  %i.yh = zext i1 %i.yg to i32
  %i.yi = and i1 %i.jh, %i.yf
  %i.yj = icmp ne i8 %i.ox, 0
  %or.cond217.not = or i1 %i.yj, %i.yg
  br i1 %or.cond217.not, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i8 -1, ptr %i.ip, align 1, !tbaa !75
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.082.shrunk = phi i1 [ %i.yi, %bb.ea ], [ true, %bb.eb ] ; 2 uses
  %.082 = zext i1 %.082.shrunk to i32
  %i.yk = load i64, ptr %i.ji, align 8, !tbaa !43
  %i.yl = icmp eq i64 %i.yk, 0
  br i1 %i.yl, label %bb.ed, label %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137

bb.ed:                                            ; preds = %bb.ec
  %i.ym = or i64 %i.ou, %i.ye
  %or.cond.not.i134 = icmp ult i64 %i.ym, 1073741824
  %i.yn = add nuw nsw i64 %i.ou, %i.ye
  %spec.select.i135 = tail call i64 @llvm.umin.i64(i64 %i.yn, i64 1073741824)
  %.0.i136 = select i1 %or.cond.not.i134, i64 %spec.select.i135, i64 1073741824
  store i64 %.0.i136, ptr %i.ji, align 8, !tbaa !43
  br label %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137

_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137: ; preds = %bb.ec, %bb.ed
  %i.yo = tail call fastcc noundef i32 @_ZL10EncodeDataPN13duckdb_brotli24BrotliEncoderStateStructEiiPmPPh(ptr noundef nonnull %0, i32 noundef %i.yh, i32 noundef %.082, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.jb)
  %.not101 = icmp eq i32 %i.yo, 0
  br i1 %.not101, label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit, label %bb.ee

bb.ee:                                            ; preds = %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137
  %i.yp = or i1 %i.yg, %.082.shrunk
  br i1 %i.yp, label %bb.ef, label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge

bb.ef:                                            ; preds = %bb.ee
  %spec.select102 = select i1 %i.yg, i32 2, i32 1
  store i32 %spec.select102, ptr %i.ih, align 4, !tbaa !56
  br label %_ZL18CheckFlushCompletePN13duckdb_brotli24BrotliEncoderStateStructE.exit.thread194.backedge

bb.eg:                                            ; preds = %.thread
  store i32 0, ptr %i.ih, align 4, !tbaa !56
  store ptr null, ptr %i.jb, align 8, !tbaa !84
  br label %_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit

_ZL15ProcessMetadataPN13duckdb_brotli24BrotliEncoderStateStructEPmPPKhS2_PPhS2_.exit: ; preds = %bb.dz, %.thread206, %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137, %bb.ds, %bb.av, %bb.ar, %bb.eg, %bb.ct, %bb.cs, %.thread158.i, %bb.bc, %bb.ai, %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit, %bb.bh, %bb.bg, %bb.bg, %bb.ad
  %.3 = phi i32 [ 1, %bb.ct ], [ 0, %bb.ad ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 1, %bb.eg ], [ 1, %bb.cs ], [ 1, %bb.bc ], [ 0, %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit ], [ 0, %bb.ai ], [ 0, %bb.av ], [ 1, %.thread158.i ], [ 1, %bb.ar ], [ 1, %bb.dz ], [ 1, %.thread206 ], [ 1, %bb.ds ], [ 0, %_ZL14UpdateSizeHintPN13duckdb_brotli24BrotliEncoderStateStructEm.exit137 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli23BrotliEncoderIsFinishedEPNS_24BrotliEncoderStateStructE(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
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

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL10EncodeDataPN13duckdb_brotli24BrotliEncoderStateStructEiiPmPPh(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %5 = alloca %struct.BrotliEncoderParams, align 8 ; 6 uses
  %6 = alloca %"struct.duckdb_brotli::MetaBlockSplit", align 8 ; 15 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 14 uses
  %i.h = getelementptr i8, ptr %0, i64 1424       ; 5 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !53  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 1520       ; 4 uses
  %.val314 = load i64, ptr %i.i, align 8, !tbaa !83 ; 4 uses
  %i.j = sub i64 %.val, %.val314                  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.l = trunc i64 %.val314 to i32                ; 3 uses
  %i.m = icmp ugt i64 %.val314, 3221225471
  br i1 %i.m, label %bb.b, label %_ZL12WrapPositionm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %i.l, 1073741823
  %i.o = shl i32 %i.l, 1
  %i.p = ashr exact i32 %i.o, 1
  %i.q = and i32 %i.p, -1073741824
  %i.r = or disjoint i32 %i.q, %i.n
  %i.s = xor i32 %i.r, -2147483648
  br label %_ZL12WrapPositionm.exit

_ZL12WrapPositionm.exit:                          ; preds = %bb.a, %bb.b
  %.0.i352 = phi i32 [ %i.s, %bb.b ], [ %i.l, %bb.a ] ; 17 uses
  store i32 %.0.i352, ptr %i.e, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 30 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132  ; 78 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.z = load i32, ptr %i.y, align 4, !tbaa !133  ; 7 uses
  %i.aa = icmp eq i64 %.val, %.val314
  br i1 %i.aa, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZL12WrapPositionm.exit
  %.not = icmp eq ptr %i.x, null
  %.not241 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not241, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !73  ; 2 uses
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl i32 3, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !74
  %i.ah = trunc i32 %i.ae to i16
  %i.ai = or i16 %i.ag, %i.ah                     ; 3 uses
  store i16 %i.ai, ptr %i.af, align 8, !tbaa !74
  %i.aj = add i8 %i.ac, 2                         ; 2 uses
  store i8 %i.aj, ptr %i.ab, align 2, !tbaa !73
  %7 = trunc i16 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 2 uses
  store i8 %7, ptr %i.ak, align 8, !tbaa !68
  %8 = lshr i16 %i.ai, 8
  %9 = trunc nuw i16 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 6945
  store i8 %9, ptr %10, align 1, !tbaa !68
  store ptr %i.ak, ptr %4, align 8, !tbaa !69
  %i.al = zext i8 %i.aj to i64
  %i.am = add nuw nsw i64 %i.al, 7
  %i.an = lshr i64 %i.am, 3
  store i64 %i.an, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.f:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.g:                                             ; preds = %bb.c
  br i1 %.not241, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp eq i32 %2, 0
  %i.ap = icmp ult i32 %i.v, 2
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.j:                                             ; preds = %bb.h, %bb.g, %_ZL12WrapPositionm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !134
  %i.as = icmp sgt i32 %i.v, %i.ar
  br i1 %i.as, label %bb.fz, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 6968 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !57
  %.not243 = icmp eq i32 %i.au, 0
  br i1 %.not243, label %bb.l, label %bb.fz

bb.l:                                             ; preds = %bb.k
  %.not248 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not248, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.at, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %.val316 = load i32, ptr %i.av, align 4, !tbaa !41
  %i.aw = zext nneg i32 %.val316 to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = icmp ugt i64 %i.j, %i.ax
  br i1 %i.ay, label %bb.fz, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %i.v, label %bb.y [
    i32 1, label %bb.p
    i32 0, label %.thread
  ]

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 6896 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %.not244 = icmp eq ptr %i.ba, null
  br i1 %.not244, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef 524288)
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !65
  %i.bc = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef 131072)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6904
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !73
  %i.bg = zext i8 %i.bf to i64
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !67
  %i.bh = shl i64 %i.j, 1
  %i.bi = add i64 %i.bh, 503
  %i.bj = and i64 %i.bi, 4294967295               ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !120
  %i.bm = icmp ult i64 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  br i1 %i.bm, label %bb.r, label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit

bb.r:                                             ; preds = %.thread
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.t, ptr noundef %i.bo)
  store ptr null, ptr %i.bn, align 8, !tbaa !58
  %i.bp = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef %i.bj) ; 2 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !58
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !120
  br label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit

_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit: ; preds = %.thread, %bb.r
  %i.bq = phi ptr [ %i.bp, %bb.r ], [ %i.bo, %.thread ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !74
  %i.bt = trunc i16 %i.bs to i8
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !68
  %.shift255 = getelementptr inbounds nuw i8, ptr %0, i64 1609
  %11 = load i8, ptr %.shift255, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %11, ptr %i.bu, align 1, !tbaa !68
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !39
  %i.bw = and i64 %i.j, 4294967295                ; 3 uses
  %i.bx = icmp eq i32 %i.bv, 0                    ; 2 uses
  %i.by = select i1 %i.bx, i64 32768, i64 131072
  %invariant.umin.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 32768, 131073) %i.by, i64 %i.bw)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit
  %.0.i.i = phi i64 [ 256, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit ], [ %i.ca, %bb.s ] ; 4 uses
  %i.bz = icmp ult i64 %.0.i.i, %invariant.umin.i.i
  %i.ca = shl i64 %.0.i.i, 1                      ; 2 uses
  br i1 %i.bz, label %bb.s, label %_ZL13HashTableSizemm.exit.i, !llvm.loop !121

_ZL13HashTableSizemm.exit.i:                      ; preds = %bb.s
  %i.cb = and i64 %.0.i.i, 698880
  %i.cc = icmp eq i64 %i.cb, 0
  %or.cond.i353 = and i1 %i.bx, %i.cc
  %.025.i354 = select i1 %or.cond.i353, i64 %i.ca, i64 %.0.i.i ; 7 uses
  %i.cd = icmp ult i64 %.025.i354, 1025
  br i1 %i.cd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZL13HashTableSizemm.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2768
  br label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit

bb.u:                                             ; preds = %_ZL13HashTableSizemm.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 6872 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !122
  %i.ch = icmp ugt i64 %.025.i354, %i.cg
  br i1 %i.ch, label %bb.v, label %._crit_edge.i355

._crit_edge.i355:                                 ; preds = %bb.u
  %.phi.trans.insert.i356 = getelementptr inbounds nuw i8, ptr %0, i64 6864
  %.pre.i357 = load ptr, ptr %.phi.trans.insert.i356, align 8, !tbaa !62
  br label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit

bb.v:                                             ; preds = %bb.u
  store i64 %.025.i354, ptr %i.cf, align 8, !tbaa !122
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 6864 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !62
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.t, ptr noundef %i.cj)
  store ptr null, ptr %i.ci, align 8, !tbaa !62
  %i.ck = shl i64 %.025.i354, 2
  %i.cl = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef %i.ck) ; 2 uses
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !62
  br label %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit

_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit: ; preds = %bb.t, %._crit_edge.i355, %bb.v
  %.0.i358 = phi ptr [ %i.ce, %bb.t ], [ %.pre.i357, %._crit_edge.i355 ], [ %i.cl, %bb.v ] ; 3 uses
  %i.cm = shl i64 %.025.i354, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i358, i8 0, i64 %i.cm, i1 false)
  %i.cn = load i32, ptr %i.u, align 4, !tbaa !39
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = and i32 %i.z, %.0.i352
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cq ; 2 uses
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6880
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63
  call void @_ZN13duckdb_brotli26BrotliCompressFragmentFastEPNS_18BrotliOnePassArenaEPKhmiPimPmPh(ptr noundef %i.ct, ptr noundef %i.cr, i64 noundef %i.bw, i32 noundef %1, ptr noundef %.0.i358, i64 noundef %.025.i354, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bq)
  br label %_ZL12WrapPositionm.exit.i

bb.x:                                             ; preds = %_ZL12GetHashTablePN13duckdb_brotli24BrotliEncoderStateStructEimPm.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 6888
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 6896
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66
  call void @_ZN13duckdb_brotli29BrotliCompressFragmentTwoPassEPNS_18BrotliTwoPassArenaEPKhmiPjPhPimPmS5_(ptr noundef %i.cv, ptr noundef %i.cr, i64 noundef %i.bw, i32 noundef %1, ptr noundef %i.cx, ptr noundef %i.cz, ptr noundef %.0.i358, i64 noundef %.025.i354, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bq)
  br label %_ZL12WrapPositionm.exit.i

_ZL12WrapPositionm.exit.i:                        ; preds = %bb.x, %bb.w
  %i.da = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.db = lshr i64 %i.da, 3                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !68
  %i.de = zext i8 %i.dd to i16
  store i16 %i.de, ptr %i.br, align 8, !tbaa !74
  %i.df = trunc i64 %i.da to i8
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %i.be, align 2, !tbaa !73
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !53
  store i64 %i.dh, ptr %i.i, align 8, !tbaa !83
  store ptr %i.bq, ptr %4, align 8, !tbaa !69
  store i64 %i.db, ptr %3, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.fz

bb.y:                                             ; preds = %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1488 ; 13 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !135
  %i.dk = lshr i64 %i.j, 1
  %i.dl = and i64 %i.dk, 2147483647
  %i.dm = add nuw nsw i64 %i.dl, 1
  %i.dn = add i64 %i.dm, %i.dj                    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !136
  %i.dq = icmp ugt i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dr = lshr i32 %i.k, 2
  %i.ds = add nuw nsw i32 %i.dr, 16
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = add i64 %i.dn, %i.dt                    ; 3 uses
  store i64 %i.du, ptr %i.do, align 8, !tbaa !136
  %.not245 = icmp eq i64 %i.du, 0
  br i1 %.not245, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = shl i64 %i.du, 4
  %i.dw = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef %i.dv)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dx = phi ptr [ %i.dw, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1480 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !59 ; 2 uses
  %.not246 = icmp eq ptr %i.dz, null
  br i1 %.not246, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load i64, ptr %i.di, align 8, !tbaa !135
  %i.eb = shl i64 %i.ea, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dx, ptr nonnull align 4 %i.dz, i64 %i.eb, i1 false)
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !59
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.t, ptr noundef %i.ec)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 30 uses
  %i.ee = zext i32 %i.z to i64                    ; 56 uses
  %i.ef = zext i32 %.0.i352 to i64                ; 47 uses
  %i.eg = and i64 %i.j, 4294967295                ; 36 uses
  %i.eh = icmp eq i32 %.0.i352, 0
  %i.ei = icmp ne i32 %1, 0
  %i.ej = and i1 %i.ei, %i.eh                     ; 4 uses
  %i.ek = zext i1 %i.ej to i32                    ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !137
  %.not.i = icmp eq i32 %i.em, 0
  br i1 %.not.i, label %bb.af, label %bb.bo

bb.af:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.eo = load i32, ptr %i.u, align 4, !tbaa !50  ; 12 uses
  %i.ep = icmp sgt i32 %i.eo, 9
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 10, ptr %i.en, align 4, !tbaa !138
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  %i.eq = icmp eq i32 %i.eo, 4
  br i1 %i.eq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !139
  %i.et = icmp ugt i64 %i.es, 1048575
  br i1 %i.et, label %bb.aj, label %.thread407

bb.aj:                                            ; preds = %bb.ai
  store i32 54, ptr %i.en, align 4, !tbaa !138
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.eu = icmp slt i32 %i.eo, 5
  br i1 %i.eu, label %.thread407, label %bb.al

.thread407:                                       ; preds = %bb.ai, %bb.ak
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !138
  br label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !51 ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 17
  br i1 %i.ex, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ey = icmp samesign ult i32 %i.eo, 7
  %i.ez = icmp samesign ult i32 %i.eo, 9
  %i.fa = select i1 %i.ez, i32 41, i32 42
  %i.fb = select i1 %i.ey, i32 40, i32 %i.fa      ; 2 uses
  store i32 %i.fb, ptr %i.en, align 4, !tbaa !138
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !139
  %i.fe = icmp ugt i64 %i.fd, 1048575
end_hunk_1
begin_hunk_2_@_ZL10EncodeDataPN13duckdb_brotli24BrotliEncoderStateStructEiiPmPPh:bb.a

bb.dv:                                            ; preds = %bb.du
  tail call void @_ZN13duckdb_brotli36BrotliCreateZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_(ptr noundef nonnull %i.t, i64 noundef %i.aqy, i64 noundef %i.ara, ptr noundef %i.x, i64 noundef %i.ee, ptr noundef nonnull %i.aqr, ptr noundef nonnull %0, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.arb, ptr noundef nonnull %i.arc, ptr noundef %i.arg, ptr noundef nonnull %i.di, ptr noundef nonnull %i.arh)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.du
  tail call void @_ZN13duckdb_brotli38BrotliCreateHqZopfliBackwardReferencesEPNS_13MemoryManagerEmmPKhmS3_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandESA_SA_(ptr noundef nonnull %i.t, i64 noundef %i.aqy, i64 noundef %i.ara, ptr noundef %i.x, i64 noundef %i.ee, ptr noundef nonnull %i.aqr, ptr noundef nonnull %0, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.arb, ptr noundef nonnull %i.arc, ptr noundef %i.arg, ptr noundef nonnull %i.di, ptr noundef nonnull %i.arh)
  br label %bb.dy

bb.dx:                                            ; preds = %bb.du
  tail call void @_ZN13duckdb_brotli30BrotliCreateBackwardReferencesEmmPKhmS1_PK19BrotliEncoderParamsPNS_6HasherEPiPmPNS_7CommandES8_S8_(i64 noundef %i.aqy, i64 noundef %i.ara, ptr noundef %i.x, i64 noundef %i.ee, ptr noundef nonnull %i.aqr, ptr noundef nonnull %0, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.arb, ptr noundef nonnull %i.arc, ptr noundef %i.arg, ptr noundef nonnull %i.di, ptr noundef nonnull %i.arh)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx, %bb.dv
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arj = load i32, ptr %i.ari, align 8, !tbaa !51
  %i.ark = load i32, ptr %i.av, align 4, !tbaa !77 ; 2 uses
  %i.arl = tail call noundef i32 @llvm.smax.i32(i32 %i.arj, i32 %i.ark)
  %i.arm = tail call i32 @llvm.smin.i32(i32 %i.arl, i32 23)
  %i.arn = add nsw i32 %i.arm, 1
  %i.aro = zext nneg i32 %i.arn to i64
  %i.arp = shl nuw i64 1, %i.aro                  ; 2 uses
  %i.arq = lshr i64 %i.arp, 3                     ; 2 uses
  %i.arr = load i64, ptr %i.h, align 8, !tbaa !53 ; 2 uses
  %i.ars = load i64, ptr %i.aqa, align 8, !tbaa !86 ; 2 uses
  %i.art = sub i64 %i.arr, %i.ars                 ; 3 uses
  %i.aru = zext nneg i32 %i.ark to i64
  %i.arv = shl nuw i64 1, %i.aru
  %i.arw = add i64 %i.art, %i.arv
  %i.arx = icmp ugt i64 %i.arw, %i.arp
  %i.ary = load i32, ptr %i.u, align 4, !tbaa !39
  %i.arz = icmp slt i32 %i.ary, 4
  br i1 %i.arz, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !497
  %i.asc = load i64, ptr %i.di, align 8, !tbaa !135
  %i.asd = add i64 %i.asc, %i.asb
  %i.ase = icmp ugt i64 %i.asd, 12286
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.asf = phi i1 [ false, %bb.dy ], [ %i.ase, %bb.dz ]
  %i.asg = or i32 %2, %1
  %or.cond3 = icmp ne i32 %i.asg, 0
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.asf
  %or.cond7.not = select i1 %or.cond5, i1 true, i1 %i.arx
  br i1 %or.cond7.not, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !497
  %i.asj = icmp ult i64 %i.asi, %i.arq
  br i1 %i.asj, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  %i.ask = load i64, ptr %i.di, align 8, !tbaa !135
  %i.asl = icmp ult i64 %i.ask, %i.arq
  br i1 %i.asl, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.asm = tail call fastcc noundef i32 @_ZL22UpdateLastProcessedPosPN13duckdb_brotli24BrotliEncoderStateStructE(ptr noundef nonnull %0)
  %.not250 = icmp eq i32 %i.asm, 0
  br i1 %.not250, label %.critedge, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.mu, align 8, !tbaa !223
  br label %.critedge

.critedge:                                        ; preds = %bb.ee, %bb.ed
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.ef:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !496 ; 10 uses
  %.not251 = icmp eq i64 %i.aso, 0
  br i1 %.not251, label %bb.eo, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !59
  %i.asr = load i64, ptr %i.di, align 8, !tbaa !135 ; 2 uses
  %i.ass = add i64 %i.asr, 1
  store i64 %i.ass, ptr %i.di, align 8, !tbaa !135
  %i.ast = getelementptr inbounds nuw [16 x i8], ptr %i.asq, i64 %i.asr ; 5 uses
  %i.asu = trunc i64 %i.aso to i32                ; 2 uses
  store i32 %i.asu, ptr %i.ast, align 4, !tbaa !498
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ast, i64 4
  store i32 134217728, ptr %i.asv, align 4, !tbaa !500
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 8
  store i32 0, ptr %i.asw, align 4, !tbaa !501
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ast, i64 14
  store i16 16, ptr %i.asx, align 2, !tbaa !502
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ast, i64 12
  %i.asz = icmp ult i64 %i.aso, 6
  br i1 %i.asz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ata = trunc nuw nsw i64 %i.aso to i16
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ei:                                            ; preds = %bb.eg
  %i.atb = icmp ult i64 %i.aso, 130
  br i1 %i.atb, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.atc = add nsw i64 %i.aso, -2                 ; 2 uses
  %i.atd = trunc nuw nsw i64 %i.atc to i32
  %i.ate = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.atd, i1 true)
  %i.atf = sub nuw nsw i32 30, %i.ate             ; 2 uses
  %i.atg = shl nuw nsw i32 %i.atf, 1
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = zext nneg i32 %i.atf to i64
  %i.atj = lshr i64 %i.atc, %i.ati
  %i.atk = add nuw nsw i64 %i.atj, %i.ath
  %i.atl = trunc nuw nsw i64 %i.atk to i16
  %i.atm = add nuw nsw i16 %i.atl, 2
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.ek:                                            ; preds = %bb.ei
  %i.atn = icmp ult i64 %i.aso, 2114
  br i1 %i.atn, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ato = add nsw i32 %i.asu, -66
  %i.atp = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ato, i1 true)
  %i.atq = trunc nuw nsw i32 %i.atp to i16
  %i.atr = sub nuw nsw i16 41, %i.atq
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.em:                                            ; preds = %bb.ek
  %i.ats = icmp ult i64 %i.aso, 6210
  br i1 %i.ats, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.att = icmp ult i64 %i.aso, 22594
  %..i = select i1 %i.att, i16 22, i16 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.eh, %bb.ej, %bb.el, %bb.em, %bb.en
  %.0.i301 = phi i16 [ %i.ata, %bb.eh ], [ %i.atm, %bb.ej ], [ %i.atr, %bb.el ], [ 21, %bb.em ], [ %..i, %bb.en ] ; 2 uses
  %i.atu = lshr i16 %.0.i301, 3
  %narrow.i = mul nuw nsw i16 %i.atu, 3
  %i.atv = zext nneg i16 %narrow.i to i32         ; 2 uses
  %i.atw = shl nuw nsw i32 %i.atv, 1
  %i.atx = shl nuw nsw i32 %i.atv, 6
  %i.aty = add nuw nsw i32 %i.atx, 64
  %i.atz = lshr i32 5377344, %i.atw
  %i.aua = and i32 %i.atz, 192
  %i.aub = add nuw nsw i32 %i.aty, %i.aua
  %i.auc = trunc nuw nsw i32 %i.aub to i16
  %i.aud = shl nuw nsw i16 %.0.i301, 3
  %i.aue = and i16 %i.aud, 56
  %i.auf = or disjoint i16 %i.aue, %i.auc
  %.0.i305 = or disjoint i16 %i.auf, 2
  store i16 %.0.i305, ptr %i.asy, align 2, !tbaa !80
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !497
  %i.aui = add i64 %i.auh, %i.aso
  store i64 %i.aui, ptr %i.aug, align 8, !tbaa !497
  store i64 0, ptr %i.asn, align 8, !tbaa !496
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, %bb.ef
  %i.auj = icmp eq i64 %i.arr, %i.ars
  %or.cond430 = select i1 %.not248, i1 %i.auj, i1 false
  br i1 %or.cond430, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  store i64 0, ptr %3, align 8, !tbaa !67
  br label %bb.fz

bb.eq:                                            ; preds = %bb.eo
  %i.auk = shl i64 %i.art, 1
  %i.aul = add i64 %i.auk, 503
  %i.aum = and i64 %i.aul, 4294967295             ; 3 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !120
  %i.aup = icmp ult i64 %i.auo, %i.aum
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 3 uses
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !58 ; 2 uses
  br i1 %i.aup, label %bb.er, label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378

bb.er:                                            ; preds = %bb.eq
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef nonnull %i.t, ptr noundef %i.aur)
  store ptr null, ptr %i.auq, align 8, !tbaa !58
  %i.aus = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef nonnull %i.t, i64 noundef %i.aum) ; 2 uses
  store ptr %i.aus, ptr %i.auq, align 8, !tbaa !58
  store i64 %i.aum, ptr %i.aun, align 8, !tbaa !120
  br label %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378

_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378: ; preds = %bb.eq, %bb.er
  %i.aut = phi ptr [ %i.aus, %bb.er ], [ %i.aur, %bb.eq ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 1610 ; 2 uses
  %i.auv = load i8, ptr %i.auu, align 2, !tbaa !73
  %i.auw = zext i8 %i.auv to i64
  store i64 %i.auw, ptr %i.g, align 8, !tbaa !67
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.auy = load i16, ptr %i.aux, align 8, !tbaa !74
  %i.auz = trunc i16 %i.auy to i8                 ; 3 uses
  store i8 %i.auz, ptr %i.aut, align 1, !tbaa !68
  %.shift252 = getelementptr inbounds nuw i8, ptr %0, i64 1609
  %12 = load i8, ptr %.shift252, align 1, !tbaa !74 ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aut, i64 1 ; 3 uses
  store i8 %12, ptr %i.ava, align 1, !tbaa !68
  %i.avb = load i64, ptr %i.aqa, align 8, !tbaa !86 ; 2 uses
  %i.avc = and i64 %i.art, 4294967295             ; 13 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 1612 ; 2 uses
  %i.ave = load i8, ptr %i.avd, align 4, !tbaa !54 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %0, i64 1613 ; 2 uses
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !55 ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !497
  %i.avj = load i64, ptr %i.di, align 8, !tbaa !135 ; 6 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !59 ; 5 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.avo = trunc i64 %i.avb to i32                ; 5 uses
  %i.avp = icmp ugt i64 %i.avb, 3221225471
  br i1 %i.avp, label %bb.es, label %_ZL12WrapPositionm.exit.i379

bb.es:                                            ; preds = %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378
  %i.avq = and i32 %i.avo, 1073741823
  %i.avr = shl i32 %i.avo, 1
  %i.avs = ashr exact i32 %i.avr, 1
  %i.avt = and i32 %i.avs, -1073741824
  %i.avu = or disjoint i32 %i.avt, %i.avq
  %i.avv = xor i32 %i.avu, -2147483648
  br label %_ZL12WrapPositionm.exit.i379

_ZL12WrapPositionm.exit.i379:                     ; preds = %bb.es, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378
  %.0.i.i380 = phi i32 [ %i.avv, %bb.es ], [ %i.avo, %_ZL16GetBrotliStoragePN13duckdb_brotli24BrotliEncoderStateStructEm.exit378 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %5, ptr noundef nonnull align 8 dereferenceable(1400) %0, i64 1400, i1 false), !tbaa.struct !503
  %i.avw = icmp eq i64 %i.avc, 0
  br i1 %i.avw, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_ZL12WrapPositionm.exit.i379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.avx = load i64, ptr %i.g, align 8, !tbaa !67, !alias.scope !511, !noalias !514 ; 3 uses
  %i.avy = lshr i64 %i.avx, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %i.aut, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !68, !alias.scope !514, !noalias !511
  %i.awb = zext i8 %i.awa to i64
  %i.awc = and i64 %i.avx, 7
  %i.awd = shl nuw nsw i64 3, %i.awc
  %i.awe = or i64 %i.awd, %i.awb
  store i64 %i.awe, ptr %i.avz, align 1, !noalias !511
  %i.awf = add i64 %i.avx, 9
  %i.awg = and i64 %i.awf, 4294967288
  store i64 %i.awg, ptr %i.g, align 8, !tbaa !67
  br label %_ZL22WriteMetaBlockInternalPN13duckdb_brotli13MemoryManagerEPKhmmmiNS_11ContextTypeEPK19BrotliEncoderParamshhmmPNS_7CommandEPKiPiPmPh.exit

bb.eu:                                            ; preds = %_ZL12WrapPositionm.exit.i379
  %i.awh = icmp samesign ult i64 %i.avc, 3
  br i1 %i.awh, label %bb.ff, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.awi = lshr i64 %i.avc, 8
  %i.awj = add nuw nsw i64 %i.awi, 2
  %i.awk = icmp ult i64 %i.avj, %i.awj
  br i1 %i.awk, label %bb.ew, label %_ZL14ShouldCompressPKhmmmmm.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.awl = uitofp i64 %i.avi to double
  %i.awm = uitofp nneg i64 %i.avc to double       ; 2 uses
  %i.awn = fmul nnan double %i.awm, f0x3FEFAE147AE147AE
  %i.awo = fcmp olt double %i.awn, %i.awl
  br i1 %i.awo, label %.lr.ph.preheader.i.i, label %_ZL14ShouldCompressPKhmmmmm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.awp = add nuw nsw i64 %i.avc, 12
  %i.awq = udiv i64 %i.awp, 13                    ; 3 uses
  %xtraiter590 = and i64 %i.awq, 1
  %i.awr = icmp samesign ult i64 %i.avc, 14
  br i1 %i.awr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter594 = and i64 %i.awq, 1073741822
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.01828.i.i = phi i32 [ %i.avo, %.lr.ph.preheader.i.i.new ], [ %i.axj, %.lr.ph.i.i ] ; 3 uses
  %niter595 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter595.next.1, %.lr.ph.i.i ]
  %i.aws = and i32 %.01828.i.i, %i.z
  %i.awt = zext i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.awt
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !68
  %i.aww = zext i8 %i.awv to i64
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aww ; 2 uses
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !3
  %i.awz = add i32 %i.awy, 1
  store i32 %i.awz, ptr %i.awx, align 4, !tbaa !3
  %i.axa = add i32 %.01828.i.i, 13
  %i.axb = and i32 %i.axa, %i.z
  %i.axc = zext i32 %i.axb to i64
  %i.axd = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.axc
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !68
  %i.axf = zext i8 %i.axe to i64
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.axf ; 2 uses
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !3
  %i.axi = add i32 %i.axh, 1
  store i32 %i.axi, ptr %i.axg, align 4, !tbaa !3
  %i.axj = add i32 %.01828.i.i, 26                ; 2 uses
  %niter595.next.1 = add i64 %niter595, 2         ; 2 uses
  %niter595.ncmp.1 = icmp eq i64 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %.preheader.i.i.preheader.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !516

.preheader.i.i.preheader.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod592.not, label %.preheader.i.i.preheader, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.i.preheader.unr-lcssa, %.lr.ph.preheader.i.i
  %.01828.i.i.epil.init = phi i32 [ %i.avo, %.lr.ph.preheader.i.i ], [ %i.axj, %.preheader.i.i.preheader.unr-lcssa ]
  %lcmp.mod593 = trunc i64 %i.awq to i1
  tail call void @llvm.assume(i1 %lcmp.mod593)
  %i.axk = and i32 %.01828.i.i.epil.init, %i.z
  %i.axl = zext i32 %i.axk to i64
  %i.axm = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.axl
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !68
  %i.axo = zext i8 %i.axn to i64
  %i.axp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.axo ; 2 uses
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !3
  %i.axr = add i32 %i.axq, 1
  store i32 %i.axr, ptr %i.axp, align 4, !tbaa !3
  br label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.i.i.preheader.unr-lcssa, %.lr.ph.i.i.epil.preheader
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i
  %.0.i21.idx32.i.i = phi i64 [ %.add.i.i, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %.023.i31.i.i = phi double [ %i.ayl, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ], [ 0.000000e+00, %.preheader.i.i.preheader ]
  %.025.i30.i.i = phi i64 [ %i.aye, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ], [ 0, %.preheader.i.i.preheader ]
  %.0.i21.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i21.idx32.i.i ; 2 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %.0.i21.ptr.i.i, i64 4
  %i.axs = load i32, ptr %.0.i21.ptr.i.i, align 8, !tbaa !3 ; 3 uses
  %i.axt = zext i32 %i.axs to i64                 ; 2 uses
  %i.axu = add i64 %.025.i30.i.i, %i.axt
  %i.axv = uitofp i32 %i.axs to double            ; 2 uses
  %i.axw = icmp ult i32 %i.axs, 256
  br i1 %i.axw, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.preheader.i.i
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.axt
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !517
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit24.i.i

bb.ey:                                            ; preds = %.preheader.i.i
  %i.axz = tail call double @log2(double noundef %i.axv) #18, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit24.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit24.i.i:        ; preds = %bb.ey, %bb.ex
  %.0.i23.i.i = phi double [ %i.axy, %bb.ex ], [ %i.axz, %bb.ey ]
  %i.aya = fneg double %i.axv
  %i.ayb = tail call double @llvm.fmuladd.f64(double %i.aya, double %.0.i23.i.i, double %.023.i31.i.i)
  %.add.i.i = add nuw nsw i64 %.0.i21.idx32.i.i, 8
  %i.ayc = load i32, ptr %.ptr.i.i, align 4, !tbaa !3 ; 3 uses
  %i.ayd = zext i32 %i.ayc to i64                 ; 2 uses
  %i.aye = add i64 %i.axu, %i.ayd                 ; 5 uses
  %i.ayf = uitofp i32 %i.ayc to double            ; 2 uses
  %i.ayg = icmp ult i32 %i.ayc, 256
  br i1 %i.ayg, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit24.i.i
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ayd
  %i.ayi = load double, ptr %i.ayh, align 8, !tbaa !517
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

bb.fa:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit24.i.i
  %i.ayj = tail call double @log2(double noundef %i.ayf) #18, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i:          ; preds = %bb.fa, %bb.ez
  %.0.i22.i.i = phi double [ %i.ayi, %bb.ez ], [ %i.ayj, %bb.fa ]
  %i.ayk = fneg double %i.ayf
  %i.ayl = tail call double @llvm.fmuladd.f64(double %i.ayk, double %.0.i22.i.i, double %i.ayb) ; 3 uses
  %i.aym = icmp samesign ult i64 %.0.i21.idx32.i.i, 1016
  br i1 %i.aym, label %.preheader.i.i, label %bb.fb, !llvm.loop !519

bb.fb:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i
  %i.ayn = fmul nnan double %i.awm, 7.920000e+00
  %i.ayo = fdiv double %i.ayn, 1.300000e+01
  %.not27.i.i.i = icmp eq i64 %i.aye, 0
  br i1 %.not27.i.i.i, label %_ZN13duckdb_brotliL14ShannonEntropyEPKjmPm.exit.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ayp = uitofp i64 %i.aye to double            ; 3 uses
  %i.ayq = icmp ult i64 %i.aye, 256
  br i1 %i.ayq, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.aye
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !517
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit26.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.ayt = tail call double @log2(double noundef %i.ayp) #18, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit26.i.i
end_hunk_2
