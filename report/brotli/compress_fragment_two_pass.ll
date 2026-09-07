Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment_two_pass?download=true
inline.NumInlined: 34
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@StoreCommands:bb.a
  %i.bg = add nuw i64 %.16368, 2                  ; 2 uses
  %niter99.next.1 = add nuw i64 %niter99, 2       ; 2 uses
  %niter99.ncmp.1 = icmp eq i64 %niter99.next.1, %unroll_iter98
  br i1 %niter99.ncmp.1, label %._crit_edge71.loopexit.unr-lcssa, label %.lr.ph70, !llvm.loop !506

._crit_edge71.loopexit.unr-lcssa:                 ; preds = %.lr.ph70
  %lcmp.mod96.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod96.not, label %._crit_edge71, label %.lr.ph70.epil.preheader

.lr.ph70.epil.preheader:                          ; preds = %._crit_edge71.loopexit.unr-lcssa, %.lr.ph70.preheader
  %.16368.epil.init = phi i64 [ 0, %.lr.ph70.preheader ], [ %i.bg, %._crit_edge71.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.16368.epil.init
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19
  %i.bj = and i32 %i.bi, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !19
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !19
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %.lr.ph70.epil.preheader, %._crit_edge71.loopexit.unr-lcssa, %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1796 ; 2 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !19
  %i.bq = add <2 x i32> %i.bp, splat (i32 1)
  store <2 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 6792 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(704) %i.bx, i8 0, i64 704, i1 false)
  tail call void @BrotliCreateHuffmanTree(ptr noundef nonnull %i.c, i64 noundef 64, i32 noundef 15, ptr noundef nonnull %i.an, ptr noundef nonnull %i.a) #9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 3 uses
  tail call void @BrotliCreateHuffmanTree(ptr noundef nonnull %i.br, i64 noundef 64, i32 noundef 14, ptr noundef nonnull %i.an, ptr noundef nonnull %i.by) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bx, ptr noundef nonnull align 4 dereferenceable(24) %i.bz, i64 24, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 6816
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.ce = load <2 x i64>, ptr %i.a, align 4
  %i.cf = load <2 x i64>, ptr %i.cb, align 4
  %i.cg = shufflevector <2 x i64> %i.ce, <2 x i64> %i.cf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.cg, ptr %i.ca, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 6848
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2320 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 4
  store i64 %i.cj, ptr %i.ch, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 7496 ; 2 uses
  tail call void @BrotliConvertBitDepthsToSymbols(ptr noundef nonnull %i.bx, i64 noundef 64, ptr noundef nonnull %i.ck) #9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 7544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 7576
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 7608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.co, ptr noundef nonnull align 4 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.cq, ptr noundef nonnull align 4 dereferenceable(48) %i.ck, i64 48, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 7560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 7592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ct, ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i64 16, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2560
  tail call void @BrotliConvertBitDepthsToSymbols(ptr noundef nonnull %i.by, i64 noundef 64, ptr noundef nonnull %i.cv) #9
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 6800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.cw, i8 0, i64 56, i1 false)
  %i.cx = load i64, ptr %i.bz, align 4
  store i64 %i.cx, ptr %i.bx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 6856
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.da = load i64, ptr %i.cz, align 4
  store i64 %i.da, ptr %i.cy, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.dd = load i64, ptr %i.dc, align 4
  store i64 %i.dd, ptr %i.db, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 6984
  %i.df = load i64, ptr %i.cb, align 4
  store i64 %i.df, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 7176
  %i.dh = load i64, ptr %i.cd, align 4
  store i64 %i.dh, ptr %i.dg, align 4
  %i.di = load i8, ptr %i.a, align 4, !tbaa !15
  store i8 %i.di, ptr %i.db, align 4, !tbaa !15
  %i.dj = load i8, ptr %i.cc, align 4, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 7048
  store i8 %i.dj, ptr %i.dk, align 4, !tbaa !15
  %i.dl = load i8, ptr %i.ci, align 4, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 7240
  store i8 %i.dl, ptr %i.dm, align 4, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2305
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 6928
  store i8 %i.do, ptr %i.dp, align 4, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2313
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 7056
  store i8 %i.dr, ptr %i.ds, align 4, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2321
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 7248
  store i8 %i.du, ptr %i.dv, align 4, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2306
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 6936
  store i8 %i.dx, ptr %i.dy, align 4, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2314
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 7064
  store i8 %i.ea, ptr %i.eb, align 4, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2322
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 7256
  store i8 %i.ed, ptr %i.ee, align 4, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2307
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 6944
  store i8 %i.eg, ptr %i.eh, align 4, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2315
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 7072
  store i8 %i.ej, ptr %i.ek, align 4, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2323
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 7264
  store i8 %i.em, ptr %i.en, align 4, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2308
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 6952
  store i8 %i.ep, ptr %i.eq, align 4, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2316
  %i.es = load i8, ptr %i.er, align 4, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 7080
  store i8 %i.es, ptr %i.et, align 4, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 7272
  store i8 %i.ev, ptr %i.ew, align 4, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2309
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 6960
  store i8 %i.ey, ptr %i.ez, align 4, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 2317
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 7088
  store i8 %i.fb, ptr %i.fc, align 4, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2325
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 7280
  store i8 %i.fe, ptr %i.ff, align 4, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2310
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 6968
  store i8 %i.fh, ptr %i.fi, align 4, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2318
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 7096
  store i8 %i.fk, ptr %i.fl, align 4, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 2326
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 7288
  store i8 %i.fn, ptr %i.fo, align 4, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2311
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 6976
  store i8 %i.fq, ptr %i.fr, align 4, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2319
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 7104
  store i8 %i.ft, ptr %i.fu, align 4, !tbaa !15
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2327
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !15
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 7296
  store i8 %i.fw, ptr %i.fx, align 4, !tbaa !15
  tail call void @BrotliStoreHuffmanTree(ptr noundef nonnull %i.bx, i64 noundef 704, ptr noundef nonnull %i.an, ptr noundef %5, ptr noundef %6) #9
  tail call void @BrotliStoreHuffmanTree(ptr noundef nonnull %i.by, i64 noundef 64, ptr noundef nonnull %i.an, ptr noundef %5, ptr noundef %6) #9
  br i1 %.not81, label %._crit_edge80, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %._crit_edge71
  %.pre = load i64, ptr %5, align 8, !tbaa !14, !alias.scope !521, !noalias !522
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.loopexit
  %i.fy = phi i64 [ %i.jj, %.loopexit ], [ %.pre, %.lr.ph79.preheader ] ; 3 uses
  %.077 = phi ptr [ %.2, %.loopexit ], [ %1, %.lr.ph79.preheader ] ; 4 uses
  %.26476 = phi i64 [ %i.jk, %.loopexit ], [ 0, %.lr.ph79.preheader ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.26476
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19 ; 2 uses
  %i.gb = and i32 %i.ga, 255                      ; 2 uses
  %i.gc = lshr i32 %i.ga, 8                       ; 3 uses
  %i.gd = zext nneg i32 %i.gb to i64              ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gd
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !524
  %i.gj = zext i16 %i.gi to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.gk = lshr i64 %i.fy, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15, !alias.scope !522, !noalias !521
  %i.gn = zext i8 %i.gm to i64
  %i.go = and i64 %i.fy, 7
  %i.gp = shl nuw nsw i64 %i.gj, %i.go
  %i.gq = or i64 %i.gp, %i.gn
  store i64 %i.gq, ptr %i.gl, align 1, !noalias !521
  %i.gr = add i64 %i.fy, %i.gg                    ; 4 uses
  store i64 %i.gr, ptr %5, align 8, !tbaa !14, !alias.scope !521, !noalias !522
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @StoreCommands.kNumExtraBits, i64 %i.gd
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !19
  %i.gu = zext i32 %i.gt to i64
  %i.gv = zext nneg i32 %i.gc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.gw = lshr i64 %i.gr, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 %i.gw ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !15, !alias.scope !526, !noalias !525
  %i.gz = zext i8 %i.gy to i64
  %i.ha = and i64 %i.gr, 7
  %i.hb = shl nuw nsw i64 %i.gv, %i.ha
  %i.hc = or i64 %i.hb, %i.gz
  store i64 %i.hc, ptr %i.gx, align 1, !noalias !525
  %i.hd = add i64 %i.gr, %i.gu                    ; 5 uses
  store i64 %i.hd, ptr %5, align 8, !tbaa !14, !alias.scope !525, !noalias !526
  %i.he = icmp samesign ult i32 %i.gb, 24
  br i1 %i.he, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph79
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @StoreCommands.kInsertOffset, i64 %i.gd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !19 ; 2 uses
  %i.hh = add i32 %i.hg, %i.gc                    ; 4 uses
  %.not83 = icmp eq i32 %i.hh, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %bb.b
  %7 = add i32 %i.hg, -1
  %xtraiter100 = and i32 %i.hh, 1
  %8 = sub nsw i32 0, %i.gc
  %i.hi = icmp eq i32 %7, %8
  br i1 %i.hi, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter106 = and i32 %i.hh, -2
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %i.hj = phi i64 [ %i.hd, %.lr.ph75.preheader.new ], [ %i.iq, %.lr.ph75 ] ; 3 uses
  %.173 = phi ptr [ %.077, %.lr.ph75.preheader.new ], [ %i.ir, %.lr.ph75 ] ; 3 uses
  %niter107 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %niter107.next.1, %.lr.ph75 ]
  %i.hk = load i8, ptr %.173, align 1, !tbaa !15
  %i.hl = zext i8 %i.hk to i64                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !15
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.hl
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !524
  %i.hr = zext i16 %i.hq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.hs = lshr i64 %i.hj, 3
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 %i.hs ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !15, !alias.scope !528, !noalias !527
  %i.hv = zext i8 %i.hu to i64
  %i.hw = and i64 %i.hj, 7
  %i.hx = shl nuw nsw i64 %i.hr, %i.hw
  %i.hy = or i64 %i.hx, %i.hv
  store i64 %i.hy, ptr %i.ht, align 1, !noalias !527
  %i.hz = add i64 %i.hj, %i.ho                    ; 4 uses
  store i64 %i.hz, ptr %5, align 8, !tbaa !14, !alias.scope !527, !noalias !528
  %i.ia = getelementptr inbounds nuw i8, ptr %.173, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !15
  %i.ic = zext i8 %i.ib to i64                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ic
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !524
  %i.ii = zext i16 %i.ih to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.ij = lshr i64 %i.hz, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !15, !alias.scope !530, !noalias !529
  %i.im = zext i8 %i.il to i64
  %i.in = and i64 %i.hz, 7
  %i.io = shl nuw nsw i64 %i.ii, %i.in
  %i.ip = or i64 %i.io, %i.im
  store i64 %i.ip, ptr %i.ik, align 1, !noalias !529
  %i.iq = add i64 %i.hz, %i.if                    ; 4 uses
  store i64 %i.iq, ptr %5, align 8, !tbaa !14, !alias.scope !529, !noalias !530
  %i.ir = getelementptr inbounds nuw i8, ptr %.173, i64 2 ; 3 uses
  %niter107.next.1 = add i32 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i32 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !518

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph75
  %lcmp.mod102.not = icmp eq i32 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %.loopexit, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.epil.init = phi i64 [ %i.hd, %.lr.ph75.preheader ], [ %i.iq, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.173.epil.init = phi ptr [ %.077, %.lr.ph75.preheader ], [ %i.ir, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod105 = trunc i32 %i.hh to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.is = load i8, ptr %.173.epil.init, align 1, !tbaa !15
  %i.it = zext i8 %i.is to i64                    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !15
  %i.iw = zext i8 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.it
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !524
  %i.iz = zext i16 %i.iy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.ja = lshr i64 %.epil.init, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !15, !alias.scope !528, !noalias !527
  %i.jd = zext i8 %i.jc to i64
  %i.je = and i64 %.epil.init, 7
  %i.jf = shl nuw nsw i64 %i.iz, %i.je
  %i.jg = or i64 %i.jf, %i.jd
  store i64 %i.jg, ptr %i.jb, align 1, !noalias !527
  %i.jh = add i64 %.epil.init, %i.iw              ; 2 uses
  store i64 %i.jh, ptr %5, align 8, !tbaa !14, !alias.scope !527, !noalias !528
  %i.ji = getelementptr inbounds nuw i8, ptr %.173.epil.init, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph75.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.b, %.lr.ph79
  %i.jj = phi i64 [ %i.hd, %.lr.ph79 ], [ %i.hd, %bb.b ], [ %i.iq, %.loopexit.loopexit.unr-lcssa ], [ %i.jh, %.lr.ph75.epil.preheader ]
  %.2 = phi ptr [ %.077, %.lr.ph79 ], [ %.077, %bb.b ], [ %i.ir, %.loopexit.loopexit.unr-lcssa ], [ %i.ji, %.lr.ph75.epil.preheader ]
  %i.jk = add nuw i64 %.26476, 1                  ; 2 uses
  %exitcond86.not = icmp eq i64 %i.jk, %4
  br i1 %exitcond86.not, label %._crit_edge80, label %.lr.ph79, !llvm.loop !519

._crit_edge80:                                    ; preds = %.loopexit, %._crit_edge71
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare hidden double @BrotliBitsEntropy(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @BrotliCreateHuffmanTree(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @BrotliConvertBitDepthsToSymbols(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @BrotliStoreHuffmanTree(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2146410443, i32 -2146410443}
!19 = !{!10, !10, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"branch_weights", i32 -2147483648, i32 0}
!22 = !{!"branch_weights", i32 1, i32 127}
!23 = !{!"branch_weights", i32 127, i32 255873}
!24 = distinct !{!24, !"BrotliWriteBits"}
!25 = distinct !{!25, !24, !"BrotliWriteBits: argument 0"}
!26 = distinct !{!26, !24, !"BrotliWriteBits: argument 1"}
!27 = distinct !{!27, !"BrotliWriteBits"}
!28 = distinct !{!28, !27, !"BrotliWriteBits: argument 0"}
!29 = distinct !{!29, !27, !"BrotliWriteBits: argument 1"}
!30 = distinct !{!30, !"BrotliWriteBits"}
!31 = distinct !{!31, !30, !"BrotliWriteBits: argument 0"}
!32 = distinct !{!32, !30, !"BrotliWriteBits: argument 1"}
!33 = distinct !{!33, !"BrotliWriteBits"}
!34 = distinct !{!34, !33, !"BrotliWriteBits: argument 1"}
!35 = distinct !{!35, !33, !"BrotliWriteBits: argument 0"}
!36 = distinct !{!36, !"BrotliWriteBits"}
!37 = distinct !{!37, !36, !"BrotliWriteBits: argument 0"}
!38 = distinct !{!38, !36, !"BrotliWriteBits: argument 1"}
!39 = distinct !{!39, !"BrotliWriteBits"}
!40 = distinct !{!40, !39, !"BrotliWriteBits: argument 1"}
!41 = distinct !{!41, !39, !"BrotliWriteBits: argument 0"}
!42 = !{!25}
!43 = !{!26}
!44 = !{!28}
!45 = !{!29}
!46 = !{!31}
!47 = !{!32}
!48 = !{!34}
!49 = !{!35}
!50 = !{!37}
!51 = !{!38}
!52 = !{!40}
!53 = !{!41}
!54 = distinct !{!54, !"BrotliWriteBits"}
!55 = distinct !{!55, !54, !"BrotliWriteBits: argument 0"}
!56 = distinct !{!56, !54, !"BrotliWriteBits: argument 1"}
!57 = distinct !{!57, !"BrotliWriteBits"}
end_hunk_0
