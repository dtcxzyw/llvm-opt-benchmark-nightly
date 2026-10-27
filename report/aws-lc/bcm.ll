Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@RSAZ_mod_exp_avx512_x2:bb.a
  %.idx24.i = shl nuw nsw i64 %i.bp, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx24.i ; 2 uses
  %.idx25.i = shl nuw nsw i64 %i.bm, 5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx25.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx26.i = mul nuw nsw i64 %i.bp, 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx26.i
  call void %.0200.i(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx27.i = mul nuw nsw i64 %i.bp, 160
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx27.i ; 2 uses
  %.idx28.i = mul nuw nsw i64 %i.bm, 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx28.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx29.i = mul nuw nsw i64 %i.bp, 176
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx29.i
  call void %.0200.i(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx30.i = mul nuw nsw i64 %i.bp, 192
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx30.i ; 2 uses
  %.idx31.i = mul nuw nsw i64 %i.bm, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx31.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx32.i = mul nuw nsw i64 %i.bp, 208
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx32.i
  call void %.0200.i(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx33.i = mul nuw nsw i64 %i.bp, 224
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx33.i ; 2 uses
  %.idx34.i = mul nuw nsw i64 %i.bm, 56
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx34.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx35.i = mul nuw nsw i64 %i.bp, 240
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx35.i
  call void %.0200.i(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx36.i = shl nuw nsw i64 %i.bp, 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx36.i ; 2 uses
  %.idx37.i = shl nuw nsw i64 %i.bm, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx37.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx38.i = mul nuw nsw i64 %i.bp, 272
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx38.i
  call void %.0200.i(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx39.i = mul nuw nsw i64 %i.bp, 288
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx39.i ; 2 uses
  %.idx40.i = mul nuw nsw i64 %i.bm, 72
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx40.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx41.i = mul nuw nsw i64 %i.bp, 304
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx41.i
  call void %.0200.i(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx42.i = mul nuw nsw i64 %i.bp, 320
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx42.i ; 2 uses
  %.idx43.i = mul nuw nsw i64 %i.bm, 80
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx43.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx44.i = mul nuw nsw i64 %i.bp, 336
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx44.i
  call void %.0200.i(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx45.i = mul nuw nsw i64 %i.bp, 352
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx45.i ; 2 uses
  %.idx46.i = mul nuw nsw i64 %i.bm, 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx46.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx47.i = mul nuw nsw i64 %i.bp, 368
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx47.i
  call void %.0200.i(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx48.i = mul nuw nsw i64 %i.bp, 384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx48.i ; 2 uses
  %.idx49.i = mul nuw nsw i64 %i.bm, 96
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx49.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx50.i = mul nuw nsw i64 %i.bp, 400
  %i.da = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx50.i
  call void %.0200.i(ptr noundef nonnull %i.da, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx51.i = mul nuw nsw i64 %i.bp, 416
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx51.i ; 2 uses
  %.idx52.i = mul nuw nsw i64 %i.bm, 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx52.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx53.i = mul nuw nsw i64 %i.bp, 432
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx53.i
  call void %.0200.i(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.db, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx54.i = mul nuw nsw i64 %i.bp, 448
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx54.i ; 2 uses
  %.idx55.i = mul nuw nsw i64 %i.bm, 112
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx55.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.df, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx56.i = mul nuw nsw i64 %i.bp, 464
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx56.i
  call void %.0200.i(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.de, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx57.i = mul nuw nsw i64 %i.bp, 480
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx57.i ; 2 uses
  %.idx58.i = mul nuw nsw i64 %i.bm, 120
  %i.di = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx58.i ; 2 uses
  call void %.0200.i(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.di, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %.idx59.i = mul nuw nsw i64 %i.bp, 496
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx59.i
  call void %.0200.i(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.br, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %i.dk = shl nuw nsw i32 %.0204.i, 6
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dl ; 11 uses
  %i.dn = zext nneg i32 %.0203.i to i64           ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.do, i1 false)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  store i64 0, ptr %i.dp, align 8, !tbaa !80
  %i.dq = zext nneg i32 %i.ba to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.do, i1 false)
  %i.ds = zext nneg i32 %i.bb to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dm, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -8
  store i64 0, ptr %i.du, align 8, !tbaa !80
  %.lhs.trunc.i = trunc nuw nsw i32 %12 to i16
  %i.dv = urem i16 %.lhs.trunc.i, 5
  %.zext.i = zext nneg i16 %i.dv to i32
  %i.dw = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.dx = lshr i32 %i.dw, 6                       ; 2 uses
  %.zext63.i = and i32 %i.dw, 63
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !80
  %i.eb = add nuw nsw i32 %i.ba, %i.dx
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !80
  %i.ef = zext nneg i32 %.zext63.i to i64         ; 2 uses
  %i.eg = lshr i64 %i.ea, %i.ef
  %i.eh = lshr i64 %i.ee, %i.ef
  %i.ei = trunc i64 %i.eg to i32
  %i.ej = trunc i64 %i.eh to i32
  call void %.0199.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bo, i32 noundef %i.ei, i32 noundef %i.ej) #46, !callees !1263, !inline_history !1243
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.019812.in.i = phi i32 [ %.019812.i, %bb.j ], [ %i.dw, %.lr.ph.preheader.i ] ; 2 uses
  %.019812.i = add nsw i32 %.019812.in.i, -5      ; 3 uses
  %i.ek = lshr i32 %.019812.i, 6                  ; 4 uses
  %i.el = and i32 %.019812.i, 63                  ; 3 uses
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !80
  %i.ep = zext nneg i32 %i.el to i64              ; 3 uses
  %i.eq = lshr i64 %i.eo, %i.ep                   ; 2 uses
  %i.er = icmp samesign ugt i32 %i.el, 59
  br i1 %i.er, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.es = add nuw nsw i32 %i.ek, %i.ba
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !80
  %i.ew = lshr i64 %i.ev, %i.ep
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ex = add nuw nsw i32 %i.ek, 1                ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !80
  %i.fb = sub nuw nsw i32 64, %i.el
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = shl i64 %i.fa, %i.fc
  %i.fe = xor i64 %i.fd, %i.eq
  %i.ff = add nuw nsw i32 %i.ek, %i.ba
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !80
  %i.fj = lshr i64 %i.fi, %i.ep
  %i.fk = add nuw nsw i32 %i.ex, %i.ba
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !80
  %i.fo = shl i64 %i.fn, %i.fc
  %i.fp = xor i64 %i.fo, %i.fj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.01972.i = phi i64 [ %i.fe, %bb.i ], [ %i.eq, %bb.h ]
  %.0.i = phi i64 [ %i.fp, %bb.i ], [ %i.ew, %bb.h ]
  %i.fq = trunc i64 %.01972.i to i32
  %i.fr = and i32 %i.fq, 31
  %i.fs = trunc i64 %.0.i to i32
  %i.ft = and i32 %i.fs, 31
  call void %.0199.i(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, i32 noundef %i.fr, i32 noundef %i.ft) #46, !callees !1263, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void %.0200.i(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  %i.fu = icmp samesign ugt i32 %.019812.in.i, 9
  br i1 %i.fu, label %.lr.ph.i, label %bb.k, !llvm.loop !1244

bb.k:                                             ; preds = %bb.j
  %i.fv = shl nuw nsw i64 %i.bm, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i8 0, i64 %i.fv, i1 false)
  store i64 1, ptr %i.bn, align 8, !tbaa !80
  store i64 1, ptr %i.bq, align 8, !tbaa !80
  call void %.0200.i(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a) #46, !callees !1262, !inline_history !1243
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bf, i64 noundef %i.be) #46
  call void @OPENSSL_free(ptr noundef nonnull %i.bf) #46
  %i.fw = add nuw nsw i32 %12, 63
  %i.fx = ashr i32 %i.fw, 6                       ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 0                   ; 2 uses
  br i1 %i.fy, label %.lr.ph.preheader.i113, label %.preheader.i

.lr.ph.preheader.i113:                            ; preds = %bb.k
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.ga, i1 false), !tbaa !80
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i113, %bb.k
  %i.gb = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gb, label %.lr.ph48.i, label %._crit_edge.i112

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.gk, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.gj, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.gl, %.lr.ph48.i ], [ %i.ad, %.preheader.i ] ; 3 uses
  %i.gc = load i64, ptr %.03245.i, align 8, !tbaa !80 ; 2 uses
  store i64 %i.gc, ptr %.03046.i, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.ge = lshr i64 %i.gc, 48
  %i.gf = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !80
  %i.gh = shl i64 %i.gg, 4
  %i.gi = or i64 %i.gh, %i.ge
  store i64 %i.gi, ptr %i.gd, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.gk = add nsw i32 %.047.i, -104               ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.gm = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.gm, label %.lr.ph48.i, label %._crit_edge.i112, !llvm.loop !1245

._crit_edge.i112:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.ad, %.preheader.i ], [ %i.gl, %.lr.ph48.i ] ; 4 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.gj, %.lr.ph48.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.gk, %.lr.ph48.i ] ; 4 uses
  %i.gn = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.gn, label %.lr.ph.i.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %._crit_edge.i112
  %i.go = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  %i.gq = bitcast i64 %i.go to <8 x i8>
  %i.gr = shufflevector <8 x i8> %i.gq, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.gr, ptr %.030.lcssa.i, align 1, !tbaa !76
  %i.gs = lshr i64 %i.go, 32
  %i.gt = trunc i64 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.gt, ptr %i.gp, align 1, !tbaa !76
  %i.gv = lshr i64 %i.go, 40
  %i.gw = trunc i64 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !76
  %i.gy = lshr i64 %i.go, 48
  %i.gz = trunc i64 %i.gy to i8
  store i8 %i.gz, ptr %i.gx, align 1, !tbaa !76
  %i.ha = add nsw i32 %.0.lcssa.i, -45
  %i.hb = lshr i32 %i.ha, 3                       ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !80
  %i.he = shl i64 %i.hd, 4
  %i.hf = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80
  %i.hg = lshr i64 %i.hf, 48
  %i.hh = or i64 %i.hg, %i.he                     ; 2 uses
  %i.hi = add nsw i32 %i.hb, -1
  %xtraiter226 = and i32 %i.hb, 7                 ; 2 uses
  %lcmp.mod227.not = icmp eq i32 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.hl, %.lr.ph.i33.i.prol ], [ %i.hh, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.hm, %.lr.ph.i33.i.prol ], [ %i.hb, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.hk, %.lr.ph.i33.i.prol ], [ %i.gx, %.lr.ph.i.i ] ; 2 uses
  %prol.iter228 = phi i32 [ %prol.iter228.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.hj = trunc i64 %.08.i34.i.prol to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.hj, ptr %.056.i36.i.prol, align 1, !tbaa !76
  %i.hl = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.hm = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter228.next = add i32 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i32 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !1246

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.hh, %.lr.ph.i.i ], [ %i.hl, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.hb, %.lr.ph.i.i ], [ %i.hm, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.gx, %.lr.ph.i.i ], [ %i.hk, %.lr.ph.i33.i.prol ]
  %i.hn = icmp ult i32 %i.hi, 7
  br i1 %i.hn, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.il, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.ik, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.ho = trunc i64 %.08.i34.i to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.ho, ptr %.056.i36.i, align 1, !tbaa !76
  %i.hq = lshr i64 %.08.i34.i, 8
  %i.hr = trunc i64 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !76
  %i.ht = lshr i64 %.08.i34.i, 16
  %i.hu = trunc i64 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.hu, ptr %i.hs, align 1, !tbaa !76
  %i.hw = lshr i64 %.08.i34.i, 24
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !76
  %i.hz = lshr i64 %.08.i34.i, 32
  %i.ia = trunc i64 %i.hz to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !76
  %i.ic = lshr i64 %.08.i34.i, 40
  %i.id = trunc i64 %i.ic to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !76
  %i.if = lshr i64 %.08.i34.i, 48
  %i.ig = trunc i64 %i.if to i8
  %i.ih = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !76
  %i.ii = lshr i64 %.08.i34.i, 56
  %i.ij = trunc nuw i64 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !76
  %i.il = add nsw i32 %.047.i35.i, -8
  %i.im = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.im, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !1247

bb.l:                                             ; preds = %._crit_edge.i112
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %from_words52.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.in = add nsw i32 %.0.lcssa.i, 7
  %i.io = ashr i32 %i.in, 3                       ; 5 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.m
  %i.iq = load i64, ptr %.032.lcssa.i, align 8, !tbaa !80 ; 2 uses
  %xtraiter = and i32 %i.io, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.it, %.lr.ph.i38.i.prol ], [ %i.iq, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.iu, %.lr.ph.i38.i.prol ], [ %i.io, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.is, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.ir = trunc i64 %.08.i39.i.prol to i8
  %i.is = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.ir, ptr %.056.i41.i.prol, align 1, !tbaa !76
  %i.it = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.iu = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !1248

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.iq, %.lr.ph.i38.preheader.i ], [ %i.it, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.io, %.lr.ph.i38.preheader.i ], [ %i.iu, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.is, %.lr.ph.i38.i.prol ]
  %i.iv = icmp ult i32 %i.io, 8
  br i1 %i.iv, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.jt, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.js, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.iw = trunc i64 %.08.i39.i to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.iw, ptr %.056.i41.i, align 1, !tbaa !76
  %i.iy = lshr i64 %.08.i39.i, 8
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !76
  %i.jb = lshr i64 %.08.i39.i, 16
  %i.jc = trunc i64 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !76
  %i.je = lshr i64 %.08.i39.i, 24
  %i.jf = trunc i64 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.jf, ptr %i.jd, align 1, !tbaa !76
  %i.jh = lshr i64 %.08.i39.i, 32
  %i.ji = trunc i64 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !76
  %i.jk = lshr i64 %.08.i39.i, 40
  %i.jl = trunc i64 %i.jk to i8
  %i.jm = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !76
  %i.jn = lshr i64 %.08.i39.i, 48
  %i.jo = trunc i64 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !76
  %i.jq = lshr i64 %.08.i39.i, 56
  %i.jr = trunc nuw i64 %i.jq to i8
end_hunk_0
begin_hunk_1_@CRYPTO_gcm128_encrypt_ctr32:bb.a
  tail call void %5(ptr noundef %.3160, ptr noundef %.3132159, i64 noundef 192, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bg = add i32 %.0121161, 192                  ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bc, align 4
  tail call void %i.e(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef %.3132159, i64 noundef 3072) #46
  %i.bi = getelementptr inbounds nuw i8, ptr %.3132159, i64 3072 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3160, i64 3072 ; 2 uses
  %i.bk = add i64 %.3137158, -3072                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 3071
  br i1 %i.bl, label %bb.m, label %._crit_edge164, !llvm.loop !2257

._crit_edge164:                                   ; preds = %bb.m, %bb.l
  %.3137.lcssa = phi i64 [ %.2136, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.2131, %bb.l ], [ %i.bi, %bb.m ] ; 5 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bj, %bb.m ] ; 4 uses
  %.0121.lcssa = phi i32 [ %i.bd, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %i.bm = and i64 %.3137.lcssa, 4080              ; 5 uses
  %.not145 = icmp eq i64 %i.bm, 0
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge164
  %i.bn = lshr i64 %.3137.lcssa, 4                ; 2 uses
  tail call void %5(ptr noundef %.3.lcssa, ptr noundef %.3132.lcssa, i64 noundef %i.bn, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add i32 %.0121.lcssa, %i.bo             ; 2 uses
  %i.bq = tail call noundef i32 @llvm.bswap.i32(i32 %i.bp)
  store i32 %i.bq, ptr %i.bc, align 4
  %i.br = getelementptr i8, ptr %.3.lcssa, i64 %i.bm
  %i.bs = and i64 %.3137.lcssa, 15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, ptr noundef %.3132.lcssa, i64 noundef %i.bm) #46
  %i.bu = getelementptr i8, ptr %.3132.lcssa, i64 %i.bm
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge164
  %.4138 = phi i64 [ %i.bs, %bb.n ], [ %.3137.lcssa, %._crit_edge164 ] ; 12 uses
  %.4133 = phi ptr [ %i.bu, %bb.n ], [ %.3132.lcssa, %._crit_edge164 ] ; 10 uses
  %.4 = phi ptr [ %i.br, %bb.n ], [ %.3.lcssa, %._crit_edge164 ] ; 10 uses
  %.1122 = phi i32 [ %i.bp, %bb.n ], [ %.0121.lcssa, %._crit_edge164 ]
  %.not146 = icmp eq i64 %.4138, 0
  br i1 %.not146, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !467
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %1) #46
  %i.by = add i32 %.1122, 1
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by)
  store i32 %i.bz, ptr %i.bc, align 4
  %i.ca = icmp samesign ugt i64 %.4138, 16
  br i1 %i.ca, label %bb.q, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %min.iters.check = icmp ult i64 %.4138, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = add nuw nsw i64 %.4138, %i.bm           ; 2 uses
  %i.cd = getelementptr i8, ptr %.3132.lcssa, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 %.4138
  %i.cf = getelementptr i8, ptr %i.ce, i64 64     ; 2 uses
  %i.cg = getelementptr i8, ptr %.3.lcssa, i64 %i.cc ; 2 uses
  %bound0 = icmp ult ptr %.4133, %i.cf
  %bound1 = icmp ult ptr %i.bx, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  %bound0212 = icmp ult ptr %.4133, %i.cg
  %bound1213 = icmp ult ptr %.4, %i.cd
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx = or i1 %found.conflict, %found.conflict214
  %bound0215 = icmp ult ptr %i.bx, %i.cg
  %bound1216 = icmp ult ptr %.4, %i.cf
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx, %found.conflict217
  br i1 %conflict.rdx218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219.not = icmp eq i64 %.4138, 16
  br i1 %min.iters.check219.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %.4, align 1, !tbaa !76, !alias.scope !2263
  %wide.load220 = load <16 x i8>, ptr %i.bx, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.ch = xor <16 x i8> %wide.load220, %wide.load ; 2 uses
  store <16 x i8> %i.ch, ptr %.4133, align 1, !tbaa !76, !alias.scope !2265, !noalias !2266
  %wide.load221 = load <16 x i8>, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.ci = xor <16 x i8> %wide.load221, %i.ch
  store <16 x i8> %i.ci, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  br label %.loopexit.loopexit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec222 = and i64 %.4138, 28                  ; 5 uses
  %i.cj = and i64 %.4138, 3
  %wide.load224 = load <4 x i8>, ptr %.4, align 1, !tbaa !76, !alias.scope !2263
  %wide.load225 = load <4 x i8>, ptr %i.bx, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.ck = xor <4 x i8> %wide.load225, %wide.load224 ; 2 uses
  store <4 x i8> %i.ck, ptr %.4133, align 1, !tbaa !76, !alias.scope !2265, !noalias !2266
  %wide.load226 = load <4 x i8>, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cl = xor <4 x i8> %wide.load226, %i.ck
  store <4 x i8> %i.cl, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cm = icmp eq i64 %n.vec222, 4
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %wide.load224.1 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !76, !alias.scope !2263
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load225.1 = load <4 x i8>, ptr %i.co, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cp = xor <4 x i8> %wide.load225.1, %wide.load224.1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.4133, i64 4
  store <4 x i8> %i.cp, ptr %i.cq, align 1, !tbaa !76, !alias.scope !2265, !noalias !2266
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %wide.load226.1 = load <4 x i8>, ptr %i.cr, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cs = xor <4 x i8> %wide.load226.1, %i.cp
  store <4 x i8> %i.cs, ptr %i.cr, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.ct = icmp eq i64 %n.vec222, 8
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.cu = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %wide.load224.2 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2263
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load225.2 = load <4 x i8>, ptr %i.cv, align 8, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cw = xor <4 x i8> %wide.load225.2, %wide.load224.2 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.4133, i64 8
  store <4 x i8> %i.cw, ptr %i.cx, align 1, !tbaa !76, !alias.scope !2265, !noalias !2266
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.load226.2 = load <4 x i8>, ptr %i.cy, align 8, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.cz = xor <4 x i8> %wide.load226.2, %i.cw
  store <4 x i8> %i.cz, ptr %i.cy, align 8, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.da = icmp eq i64 %n.vec222, 12
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.db = getelementptr inbounds nuw i8, ptr %.4, i64 12
  %wide.load224.3 = load <4 x i8>, ptr %i.db, align 1, !tbaa !76, !alias.scope !2263
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load225.3 = load <4 x i8>, ptr %i.dc, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.dd = xor <4 x i8> %wide.load225.3, %wide.load224.3 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.4133, i64 12
  store <4 x i8> %i.dd, ptr %i.de, align 1, !tbaa !76, !alias.scope !2265, !noalias !2266
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %wide.load226.3 = load <4 x i8>, ptr %i.df, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  %i.dg = xor <4 x i8> %wide.load226.3, %i.dd
  store <4 x i8> %i.dg, ptr %i.df, align 4, !tbaa !76, !alias.scope !2264, !noalias !2263
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n228 = icmp eq i64 %.4138, %n.vec222
  br i1 %cmp.n228, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec222, %vec.epilog.middle.block ] ; 6 uses
  %.5169.ph = phi i64 [ %.4138, %vector.memcheck ], [ %.4138, %iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5169.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dh = add nsw i64 %.5169.ph, -1
  %i.di = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.ph
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dm = xor i8 %i.dl, %i.dj                     ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.ph
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !76
  %i.do = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.ph ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !76
  %i.dq = xor i8 %i.dp, %i.dm
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.5169.unr = phi i64 [ %.5169.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %i.dr = icmp eq i64 %.5169.ph, 1
  br i1 %i.dr, label %.loopexit.loopexit, label %vec.epilog.scalar.ph

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #49
  unreachable

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.5169 = phi i64 [ %i.eb, %vec.epilog.scalar.ph ], [ %.5169.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !76
  %i.du = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !76
  %i.dw = xor i8 %i.dv, %i.dt                     ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !76
  %i.ea = xor i8 %i.dz, %i.dw
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.eb = add nsw i64 %.5169, -2                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !76
  %i.eg = xor i8 %i.ef, %i.ed                     ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.next
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !76
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !76
  %i.ek = xor i8 %i.ej, %i.eg
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %.not147.1 = icmp eq i64 %i.eb, 0
  br i1 %.not147.1, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2262

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vector.body, %vec.epilog.middle.block
  %i.el = trunc nuw nsw i64 %.4138 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader150, %.loopexit.loopexit, %bb.o, %._crit_edge
  %storemerge = phi i32 [ %i.ao, %._crit_edge ], [ 0, %bb.o ], [ %i.el, %.loopexit.loopexit ], [ %i.z, %.preheader150 ]
  store i32 %storemerge, ptr %i.y, align 16, !tbaa !466
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit, %bb.g
  %.1 = phi i32 [ 1, %.loopexit ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @aes_gcm_encrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !468  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !469
  %i.h = add i64 %i.g, %4                         ; 3 uses
  %i.i = icmp ugt i64 %i.h, 68719476704
  %i.j = icmp ult i64 %i.h, %4
  %or.cond152 = or i1 %i.i, %i.j
  br i1 %or.cond152, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !tbaa !469
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !465
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #46
  store i32 0, ptr %i.k, align 4, !tbaa !465
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = and i8 %i.o, 1
  %.not147 = icmp eq i8 %i.p, 0
  br i1 %.not147, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 12), align 4, !tbaa !73 ; 2 uses
  %i.r = and i32 %i.q, 512
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %crypto_gcm_avx512_enabled.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.t = and i32 %i.s, -1073545216
  %.not3.i = icmp eq i32 %i.t, -1073545216
  br i1 %.not3.i, label %crypto_gcm_avx512_enabled.exit, label %crypto_gcm_avx512_enabled.exit.thread

crypto_gcm_avx512_enabled.exit:                   ; preds = %bb.f
  %i.u = and i32 %i.q, 1024
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i64 %4, 0
  %or.cond = and i1 %i.w, %i.v
  br i1 %or.cond, label %bb.g, label %crypto_gcm_avx512_enabled.exit.thread

bb.g:                                             ; preds = %crypto_gcm_avx512_enabled.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @aes_gcm_decrypt_avx512(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %4, ptr noundef %3) #46
  br label %bb.r

crypto_gcm_avx512_enabled.exit.thread:            ; preds = %bb.e, %bb.f, %crypto_gcm_avx512_enabled.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16, !tbaa !466 ; 3 uses
  %.not148 = icmp eq i32 %i.z, 0
  br i1 %.not148, label %bb.j, label %.preheader154

.preheader154:                                    ; preds = %crypto_gcm_avx512_enabled.exit.thread
  %.not175 = icmp eq i64 %4, 0
  br i1 %.not175, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader154
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.0125158 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  %.0129157 = phi ptr [ %3, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %.0134156 = phi i64 [ %4, %.lr.ph ], [ %i.am, %bb.h ]
  %.0139155 = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0125158, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.0125158, align 1, !tbaa !76 ; 2 uses
  %i.ae = zext i32 %.0139155 to i64               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !76
  %i.ah = xor i8 %i.ag, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %.0129157, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.0129157, align 1, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !76
  %i.al = xor i8 %i.ak, %i.ad
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !76
  %i.am = add nsw i64 %.0134156, -1               ; 3 uses
  %i.an = add i32 %.0139155, 1
  %i.ao = and i32 %i.an, 15                       ; 4 uses
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = icmp ne i64 %i.am, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.h, label %._crit_edge, !llvm.loop !2267

._crit_edge:                                      ; preds = %bb.h
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a) #46
  %.pre = load i8, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %crypto_gcm_avx512_enabled.exit.thread
  %i.au = phi i8 [ %.pre, %bb.i ], [ %i.o, %crypto_gcm_avx512_enabled.exit.thread ]
  %.1135 = phi i64 [ %i.am, %bb.i ], [ %4, %crypto_gcm_avx512_enabled.exit.thread ] ; 4 uses
  %.1130 = phi ptr [ %i.ai, %bb.i ], [ %3, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %.1126 = phi ptr [ %i.ac, %bb.i ], [ %2, %crypto_gcm_avx512_enabled.exit.thread ] ; 3 uses
  %i.av = trunc i8 %i.au to i1
  %i.aw = icmp ne i64 %.1135, 0
  %or.cond3 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call i64 @aesni_gcm_decrypt(ptr noundef %.1126, ptr noundef %.1130, i64 noundef range(i64 1, 68719476705) %.1135, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ax) #46 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1126, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.1130, i64 %i.ay
  %i.bb = sub i64 %.1135, %i.ay
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2136 = phi i64 [ %i.bb, %bb.k ], [ %.1135, %bb.j ] ; 3 uses
  %.2131 = phi ptr [ %i.ba, %bb.k ], [ %.1130, %bb.j ] ; 2 uses
  %.2 = phi ptr [ %i.az, %bb.k ], [ %.1126, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.bc, align 4
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 2 uses
  %i.be = icmp ugt i64 %.2136, 3071
  br i1 %i.be, label %.lr.ph167, label %._crit_edge168

.lr.ph167:                                        ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph167, %bb.m
  %.3165 = phi ptr [ %.2, %.lr.ph167 ], [ %i.bj, %bb.m ] ; 3 uses
  %.0127164 = phi i32 [ %i.bd, %.lr.ph167 ], [ %i.bg, %bb.m ]
  %.3132163 = phi ptr [ %.2131, %.lr.ph167 ], [ %i.bi, %bb.m ] ; 2 uses
  %.3137162 = phi i64 [ %.2136, %.lr.ph167 ], [ %i.bk, %bb.m ]
  tail call void %i.e(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef %.3165, i64 noundef 3072) #46
  tail call void %5(ptr noundef %.3165, ptr noundef %.3132163, i64 noundef 192, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bg = add i32 %.0127164, 192                  ; 3 uses
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bc, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.3132163, i64 3072 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3165, i64 3072 ; 2 uses
  %i.bk = add i64 %.3137162, -3072                ; 3 uses
  %i.bl = icmp ugt i64 %i.bk, 3071
  br i1 %i.bl, label %bb.m, label %._crit_edge168, !llvm.loop !2268

._crit_edge168:                                   ; preds = %bb.m, %bb.l
  %.3137.lcssa = phi i64 [ %.2136, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.2131, %bb.l ], [ %i.bi, %bb.m ] ; 4 uses
  %.0127.lcssa = phi i32 [ %i.bd, %bb.l ], [ %i.bg, %bb.m ] ; 2 uses
  %.3.lcssa = phi ptr [ %.2, %bb.l ], [ %i.bj, %bb.m ] ; 5 uses
  %i.bm = and i64 %.3137.lcssa, 4080              ; 5 uses
  %.not149 = icmp eq i64 %i.bm, 0
  br i1 %.not149, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge168
  %i.bn = lshr i64 %.3137.lcssa, 4                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a, ptr noundef %.3.lcssa, i64 noundef %i.bm) #46
  tail call void %5(ptr noundef %.3.lcssa, ptr noundef %.3132.lcssa, i64 noundef %i.bn, ptr noundef %1, ptr noundef nonnull %0) #46
  %i.bp = trunc nuw nsw i64 %i.bn to i32
  %i.bq = add i32 %.0127.lcssa, %i.bp             ; 2 uses
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %i.bq)
  store i32 %i.br, ptr %i.bc, align 4
  %i.bs = getelementptr i8, ptr %.3132.lcssa, i64 %i.bm
  %i.bt = getelementptr i8, ptr %.3.lcssa, i64 %i.bm
  %i.bu = and i64 %.3137.lcssa, 15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge168
  %.4138 = phi i64 [ %i.bu, %bb.n ], [ %.3137.lcssa, %._crit_edge168 ] ; 12 uses
  %.4133 = phi ptr [ %i.bs, %bb.n ], [ %.3132.lcssa, %._crit_edge168 ] ; 10 uses
  %.1128 = phi i32 [ %i.bq, %bb.n ], [ %.0127.lcssa, %._crit_edge168 ]
  %.4 = phi ptr [ %i.bt, %bb.n ], [ %.3.lcssa, %._crit_edge168 ] ; 10 uses
  %.not150 = icmp eq i64 %.4138, 0
  br i1 %.not150, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !467
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  tail call void %i.bw(ptr noundef nonnull %0, ptr noundef nonnull %i.bx, ptr noundef %1) #46
  %i.by = add i32 %.1128, 1
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by)
  store i32 %i.bz, ptr %i.bc, align 4
  %i.ca = icmp samesign ugt i64 %.4138, 16
  br i1 %i.ca, label %bb.q, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %min.iters.check = icmp ult i64 %.4138, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cc = getelementptr i8, ptr %0, i64 %.4138
  %i.cd = getelementptr i8, ptr %i.cc, i64 64     ; 2 uses
  %i.ce = add nuw nsw i64 %.4138, %i.bm           ; 2 uses
  %i.cf = getelementptr i8, ptr %.3132.lcssa, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %.3.lcssa, i64 %i.ce ; 2 uses
  %bound0 = icmp ult ptr %i.bx, %i.cf
  %bound1 = icmp ult ptr %.4133, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  %bound0216 = icmp ult ptr %i.bx, %i.cg
  %bound1217 = icmp ult ptr %.4, %i.cd
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx = or i1 %found.conflict, %found.conflict218
  %bound0219 = icmp ult ptr %.4133, %i.cg
  %bound1220 = icmp ult ptr %.4, %i.cf
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx, %found.conflict221
  br i1 %conflict.rdx222, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check223.not = icmp eq i64 %.4138, 16
  br i1 %min.iters.check223.not, label %vector.body, label %vec.epilog.ph

vector.body:                                      ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %.4, align 1, !tbaa !76, !alias.scope !2274 ; 2 uses
  %wide.load224 = load <16 x i8>, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.ch = xor <16 x i8> %wide.load224, %wide.load
  store <16 x i8> %i.ch, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %wide.load225 = load <16 x i8>, ptr %i.bx, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.ci = xor <16 x i8> %wide.load225, %wide.load
  store <16 x i8> %i.ci, ptr %.4133, align 1, !tbaa !76, !alias.scope !2277, !noalias !2274
  br label %.loopexit.loopexit

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec226 = and i64 %.4138, 28                  ; 5 uses
  %i.cj = and i64 %.4138, 3
  %wide.load228 = load <4 x i8>, ptr %.4, align 1, !tbaa !76, !alias.scope !2274 ; 2 uses
  %wide.load229 = load <4 x i8>, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.ck = xor <4 x i8> %wide.load229, %wide.load228
  store <4 x i8> %i.ck, ptr %i.cb, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %wide.load230 = load <4 x i8>, ptr %i.bx, align 16, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cl = xor <4 x i8> %wide.load230, %wide.load228
  store <4 x i8> %i.cl, ptr %.4133, align 1, !tbaa !76, !alias.scope !2277, !noalias !2274
  %i.cm = icmp eq i64 %n.vec226, 4
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.4, i64 4
  %wide.load228.1 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !76, !alias.scope !2274 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %wide.load229.1 = load <4 x i8>, ptr %i.co, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cp = xor <4 x i8> %wide.load229.1, %wide.load228.1
  store <4 x i8> %i.cp, ptr %i.co, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %wide.load230.1 = load <4 x i8>, ptr %i.cq, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cr = xor <4 x i8> %wide.load230.1, %wide.load228.1
  %i.cs = getelementptr inbounds nuw i8, ptr %.4133, i64 4
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !76, !alias.scope !2277, !noalias !2274
  %i.ct = icmp eq i64 %n.vec226, 8
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.cu = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %wide.load228.2 = load <4 x i8>, ptr %i.cu, align 1, !tbaa !76, !alias.scope !2274 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.load229.2 = load <4 x i8>, ptr %i.cv, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cw = xor <4 x i8> %wide.load229.2, %wide.load228.2
  store <4 x i8> %i.cw, ptr %i.cv, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load230.2 = load <4 x i8>, ptr %i.cx, align 8, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.cy = xor <4 x i8> %wide.load230.2, %wide.load228.2
  %i.cz = getelementptr inbounds nuw i8, ptr %.4133, i64 8
  store <4 x i8> %i.cy, ptr %i.cz, align 1, !tbaa !76, !alias.scope !2277, !noalias !2274
  %i.da = icmp eq i64 %n.vec226, 12
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body.3

vec.epilog.vector.body.3:                         ; preds = %vec.epilog.vector.body.2
  %i.db = getelementptr inbounds nuw i8, ptr %.4, i64 12
  %wide.load228.3 = load <4 x i8>, ptr %i.db, align 1, !tbaa !76, !alias.scope !2274 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %wide.load229.3 = load <4 x i8>, ptr %i.dc, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.dd = xor <4 x i8> %wide.load229.3, %wide.load228.3
  store <4 x i8> %i.dd, ptr %i.dc, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.load230.3 = load <4 x i8>, ptr %i.de, align 4, !tbaa !76, !alias.scope !2275, !noalias !2276
  %i.df = xor <4 x i8> %wide.load230.3, %wide.load228.3
  %i.dg = getelementptr inbounds nuw i8, ptr %.4133, i64 12
  store <4 x i8> %i.df, ptr %i.dg, align 1, !tbaa !76, !alias.scope !2277, !noalias !2274
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.3, %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n232 = icmp eq i64 %.4138, %n.vec226
  br i1 %cmp.n232, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec226, %vec.epilog.middle.block ] ; 6 uses
  %.5174.ph = phi i64 [ %.4138, %vector.memcheck ], [ %.4138, %iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter = and i64 %.5174.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dh = add nsw i64 %.5174.ph, -1
  %i.di = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.ph
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !76  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.ph ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dm = xor i8 %i.dl, %i.dj
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.ph
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !76
  %i.dp = xor i8 %i.do, %i.dj
  %i.dq = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.ph
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.5174.unr = phi i64 [ %.5174.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dh, %vec.epilog.scalar.ph.prol ]
  %i.dr = icmp eq i64 %.5174.ph, 1
  br i1 %i.dr, label %.loopexit.loopexit, label %vec.epilog.scalar.ph

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #49
  unreachable

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %.5174 = phi i64 [ %i.eb, %vec.epilog.scalar.ph ], [ %.5174.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !76  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !76
  %i.dw = xor i8 %i.dv, %i.dt
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !76
  %i.dz = xor i8 %i.dy, %i.dt
  %i.ea = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.eb = add nsw i64 %.5174, -2                  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.4, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !76  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !76
  %i.eg = xor i8 %i.ef, %i.ed
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !76
  %i.ej = xor i8 %i.ei, %i.ed
  %i.ek = getelementptr inbounds nuw i8, ptr %.4133, i64 %indvars.iv.next
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %.not151.1 = icmp eq i64 %i.eb, 0
  br i1 %.not151.1, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2273

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vector.body, %vec.epilog.middle.block
  %i.el = trunc nuw nsw i64 %.4138 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader154, %.loopexit.loopexit, %bb.o, %._crit_edge
  %storemerge = phi i32 [ %i.ao, %._crit_edge ], [ 0, %bb.o ], [ %i.el, %.loopexit.loopexit ], [ %i.z, %.preheader154 ]
  store i32 %storemerge, ptr %i.y, align 16, !tbaa !466
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit, %bb.g
  %.1 = phi i32 [ 1, %.loopexit ], [ 1, %bb.g ], [ 0, %bb.a ]
  ret i32 %.1
}

declare void @aes_gcm_decrypt_avx512(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_gcm128_finish(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i32, ptr %i.d, align 16, !tbaa !466
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !465
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !80
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp ne ptr %1, null
  %i.u = icmp ult i64 %2, 17
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %1, i64 noundef %2) #46
  %i.w = icmp eq i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_gcm128_tag(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !464 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i32, ptr %i.d, align 16, !tbaa !466
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.g = load i32, ptr %i.f, align 4, !tbaa !465
  %.not24.i = icmp eq i32 %i.g, 0
  br i1 %.not24.i, label %CRYPTO_gcm128_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.c(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #46, !inline_history !472
  br label %CRYPTO_gcm128_finish.exit

CRYPTO_gcm128_finish.exit:                        ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.k = load <2 x i64>, ptr %i.i, align 16, !tbaa !80
  %i.l = shl <2 x i64> %i.k, splat (i64 3)
  %i.m = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %i.l)
  %i.n = load <2 x i64>, ptr %i.j, align 16
  %i.o = xor <2 x i64> %i.m, %i.n
  store <2 x i64> %i.o, ptr %i.j, align 16
  tail call void %i.c(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #46, !inline_history !472
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <2 x i64>, ptr %i.j, align 16
  %i.r = load <2 x i64>, ptr %i.p, align 16
  %i.s = xor <2 x i64> %i.r, %i.q
  store <2 x i64> %i.s, ptr %i.j, align 16
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %CRYPTO_gcm128_finish.exit
  %i.u = tail call i64 @llvm.umin.i64(i64 %2, i64 16)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.j, i64 %i.u, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %CRYPTO_gcm128_finish.exit, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, 2) i64 @CRYPTO_xts128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %union.anon.2, align 16             ; 16 uses
  %7 = alloca %union.anon.2, align 16             ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.a = icmp ult i64 %4, 16
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2291
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2292
  call void %i.c(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %i.e) #46
  %.not = icmp ne i32 %5, 0                       ; 2 uses
  %i.f = and i64 %4, 15
  %.not61 = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not61
  %i.g = add i64 %4, -16
  %spec.select = select i1 %or.cond, i64 %4, i64 %i.g ; 3 uses
  %i.h = icmp ugt i64 %spec.select, 15
  br i1 %i.h, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <2 x i64>, ptr %6, align 16, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %select.unfold
  %.05268 = phi ptr [ %2, %.lr.ph ], [ %i.w, %select.unfold ] ; 2 uses
  %.05367 = phi ptr [ %3, %.lr.ph ], [ %i.v, %select.unfold ] ; 2 uses
  %.166 = phi i64 [ %spec.select, %.lr.ph ], [ %i.t, %select.unfold ]
  %i.l = phi <2 x i64> [ %i.k, %.lr.ph ], [ %i.af, %select.unfold ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull readonly align 1 dereferenceable(16) %.05268, i64 16, i1 false)
  %i.m = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.n = xor <2 x i64> %i.m, %i.l
  store <2 x i64> %i.n, ptr %7, align 16, !tbaa !76
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2293
  %i.p = load ptr, ptr %0, align 8, !tbaa !2294
  call void %i.o(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %i.p) #46
  %i.q = load <2 x i64>, ptr %6, align 16, !tbaa !76 ; 3 uses
  %i.r = load <2 x i64>, ptr %7, align 16, !tbaa !76
  %i.s = xor <2 x i64> %i.r, %i.q                 ; 2 uses
  store <2 x i64> %i.s, ptr %7, align 16, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.05367, ptr noundef nonnull readonly align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.t = add i64 %.166, -16                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %select.unfold

select.unfold:                                    ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.05367, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05268, i64 16 ; 2 uses
  %i.x = extractelement <2 x i64> %i.q, i64 1     ; 2 uses
  %isneg62 = icmp slt i64 %i.x, 0
  %i.y = extractelement <2 x i64> %i.q, i64 0     ; 2 uses
  %i.z = shl i64 %i.y, 1
  %i.aa = select i1 %isneg62, i64 135, i64 0
  %i.ab = xor i64 %i.aa, %i.z                     ; 2 uses
  store i64 %i.ab, ptr %6, align 16, !tbaa !76
  %i.ac = call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.y, i64 1) ; 2 uses
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !76
  %i.ad = icmp ugt i64 %i.t, 15
  %i.ae = insertelement <2 x i64> poison, i64 %i.ab, i64 0
end_hunk_1
