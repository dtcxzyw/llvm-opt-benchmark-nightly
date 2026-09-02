Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/brotli_bit_stream?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@BrotliStoreHuffmanTree:bb.a
  %.not.15 = icmp eq i32 %i.dl, 0
  br i1 %.not.15, label %.thread171, label %bb.o

.thread165:                                       ; preds = %.thread156
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !14
  %.not.15168 = icmp eq i32 %i.dn, 0
  br i1 %.not.15168, label %.thread174, label %.thread171

bb.o:                                             ; preds = %.thread162
  %i.do = icmp eq i32 %.119.14, 0
  br i1 %i.do, label %.thread171, label %.thread189

.thread171:                                       ; preds = %.thread165, %bb.o, %.thread162
  %.119.15 = phi i32 [ %.119.14, %.thread162 ], [ 1, %bb.o ], [ 1, %.thread165 ] ; 2 uses
  %.1.15 = phi i64 [ %.1.14, %.thread162 ], [ 15, %bb.o ], [ 15, %.thread165 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dq = load i32, ptr %i.dp, align 16, !tbaa !14
  %.not.16 = icmp eq i32 %i.dq, 0
  br i1 %.not.16, label %.thread180, label %bb.p

.thread174:                                       ; preds = %.thread165
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ds = load i32, ptr %i.dr, align 16, !tbaa !14
  %.not.16177 = icmp eq i32 %i.ds, 0
  br i1 %.not.16177, label %.thread183, label %.thread180

bb.p:                                             ; preds = %.thread171
  %i.dt = icmp eq i32 %.119.15, 0
  br i1 %i.dt, label %.thread180, label %.thread189

.thread180:                                       ; preds = %.thread174, %bb.p, %.thread171
  %.119.16 = phi i32 [ %.119.15, %.thread171 ], [ 1, %bb.p ], [ 1, %.thread174 ] ; 2 uses
  %.1.16 = phi i64 [ %.1.15, %.thread171 ], [ 16, %bb.p ], [ 16, %.thread174 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !14
  %.not.17 = icmp eq i32 %i.dv, 0
  br i1 %.not.17, label %.thread189, label %bb.q

.thread183:                                       ; preds = %.thread174
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !14
  %.not.17186 = icmp ne i32 %i.dx, 0              ; 2 uses
  %spec.select193 = select i1 %.not.17186, i64 17, i64 0
  %spec.select194 = zext i1 %.not.17186 to i32
  br label %.thread189

bb.q:                                             ; preds = %.thread180
  %i.dy = icmp eq i32 %.119.16, 0                 ; 2 uses
  %spec.select195 = select i1 %i.dy, i64 17, i64 %.1.16
  %spec.select196 = select i1 %i.dy, i32 1, i32 2
  br label %.thread189

.thread189:                                       ; preds = %bb.q, %.thread183, %.preheader, %.thread180, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.lcssa = phi i64 [ %.1.8, %bb.i ], [ %.1.10, %bb.k ], [ 0, %.preheader ], [ %spec.select193, %.thread183 ], [ %.1.1, %bb.b ], [ %.1.12, %bb.m ], [ %.1.2, %bb.c ], [ %.1.15, %bb.p ], [ %.1.3, %bb.d ], [ %.1.9, %bb.j ], [ %.1.4, %bb.e ], [ %.1.14, %bb.o ], [ %.1.5, %bb.f ], [ %.1.11, %bb.l ], [ %.1.6, %bb.g ], [ %.1.13, %bb.n ], [ %.1.7, %bb.h ], [ %.1.16, %.thread180 ], [ %spec.select195, %bb.q ]
  %.2 = phi i32 [ 2, %bb.i ], [ 2, %bb.k ], [ 2, %.preheader ], [ %spec.select194, %.thread183 ], [ 2, %bb.b ], [ 2, %bb.m ], [ 2, %bb.c ], [ 2, %bb.p ], [ 2, %bb.d ], [ 2, %bb.j ], [ 2, %bb.e ], [ 2, %bb.o ], [ 2, %bb.f ], [ 2, %bb.l ], [ 2, %bb.g ], [ 2, %bb.n ], [ 2, %bb.h ], [ %.119.16, %.thread180 ], [ %spec.select196, %bb.q ] ; 2 uses
  call void @BrotliCreateHuffmanTree(ptr noundef nonnull %i.f, i64 noundef 18, i32 noundef 5, ptr noundef %2, ptr noundef nonnull %i.d) #11
  call void @BrotliConvertBitDepthsToSymbols(ptr noundef nonnull %i.d, i64 noundef 18, ptr noundef nonnull %i.e) #11
  %i.dz = icmp samesign ugt i32 %.2, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.eb = load i8, ptr %i.ea, align 1
  %.not.i = icmp eq i8 %i.eb, 0
  %or.cond = select i1 %i.dz, i1 %.not.i, i1 false
  br i1 %or.cond, label %.preheader.1.i, label %.loopexit.i

.preheader.1.i:                                   ; preds = %.thread189
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !13
  %.not.1.i = icmp eq i8 %i.ed, 0
  br i1 %.not.1.i, label %.preheader.2.i, label %.loopexit.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  %.not.2.i = icmp eq i8 %i.ef, 0
  br i1 %.not.2.i, label %.preheader.3.i, label %.loopexit.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.eh = load i8, ptr %i.eg, align 4, !tbaa !13
  %.not.3.i = icmp eq i8 %i.eh, 0
  br i1 %.not.3.i, label %.preheader.4.i, label %.loopexit.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !13
  %.not.4.i = icmp eq i8 %i.ej, 0
  br i1 %.not.4.i, label %.preheader.5.i, label %.loopexit.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !13
  %.not.5.i = icmp eq i8 %i.el, 0
  br i1 %.not.5.i, label %.preheader.6.i, label %.loopexit.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.en = load i8, ptr %i.em, align 1, !tbaa !13
  %.not.6.i = icmp eq i8 %i.en, 0
  br i1 %.not.6.i, label %.preheader.7.i, label %.loopexit.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !13
  %.not.7.i = icmp eq i8 %i.ep, 0
  br i1 %.not.7.i, label %.preheader.8.i, label %.loopexit.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 7
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %.not.8.i = icmp eq i8 %i.er, 0
  br i1 %.not.8.i, label %.preheader.9.i, label %.loopexit.i

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.et = load i8, ptr %i.es, align 16, !tbaa !13
  %.not.9.i = icmp eq i8 %i.et, 0
  br i1 %.not.9.i, label %.preheader.10.i, label %.loopexit.i

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !13
  %.not.10.i = icmp eq i8 %i.ev, 0
  br i1 %.not.10.i, label %.preheader.11.i, label %.loopexit.i

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !13
  %.not.11.i = icmp eq i8 %i.ex, 0
  br i1 %.not.11.i, label %.preheader.12.i, label %.loopexit.i

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !13
  %.not.12.i = icmp eq i8 %i.ez, 0
  br i1 %.not.12.i, label %.preheader.13.i, label %.loopexit.i

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.fa = load i8, ptr %i.d, align 16, !tbaa !13
  %.not.13.i = icmp eq i8 %i.fa, 0
  br i1 %.not.13.i, label %.preheader.14.i, label %.loopexit.i

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !13
  %.not.14.i = icmp eq i8 %i.fc, 0
  br i1 %.not.14.i, label %.preheader.15.i, label %.loopexit.i

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !13
  %.not.15.i = icmp eq i8 %i.fe, 0
  br i1 %.not.15.i, label %.preheader.16.i, label %.loopexit.i

.preheader.16.i:                                  ; preds = %.preheader.15.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !13
  %.not.16.i = icmp eq i8 %i.fg, 0
  br i1 %.not.16.i, label %.preheader.17.i, label %.loopexit.i

.preheader.17.i:                                  ; preds = %.preheader.16.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !13
  %.not.17.i = icmp ne i8 %i.fi, 0
  %spec.select.i = zext i1 %.not.17.i to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.17.i, %.preheader.16.i, %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.thread189
  %.1.i = phi i64 [ 18, %.thread189 ], [ 7, %.preheader.11.i ], [ 9, %.preheader.9.i ], [ 17, %.preheader.1.i ], [ %spec.select.i, %.preheader.17.i ], [ 16, %.preheader.2.i ], [ 5, %.preheader.13.i ], [ 15, %.preheader.3.i ], [ 2, %.preheader.16.i ], [ 14, %.preheader.4.i ], [ 8, %.preheader.10.i ], [ 13, %.preheader.5.i ], [ 3, %.preheader.15.i ], [ 12, %.preheader.6.i ], [ 6, %.preheader.12.i ], [ 11, %.preheader.7.i ], [ 4, %.preheader.14.i ], [ 10, %.preheader.8.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = icmp eq i8 %i.fk, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.fn = load i8, ptr %i.fm, align 2
  %i.fo = icmp eq i8 %i.fn, 0
  %or.cond28 = select i1 %i.fl, i1 %i.fo, i1 false
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = icmp eq i8 %i.fq, 0
  %spec.store.select.i = select i1 %i.fr, i64 3, i64 2
  %.0.i = select i1 %or.cond28, i64 %spec.store.select.i, i64 0 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.fs = load i64, ptr %3, align 8, !tbaa !12, !alias.scope !87, !noalias !88 ; 3 uses
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13, !alias.scope !88, !noalias !87
  %i.fw = zext i8 %i.fv to i64
  %i.fx = and i64 %i.fs, 7
  %i.fy = shl nuw nsw i64 %.0.i, %i.fx
  %i.fz = or i64 %i.fy, %i.fw
  store i64 %i.fz, ptr %i.fu, align 1, !noalias !87
  %i.ga = add i64 %i.fs, 2                        ; 6 uses
  store i64 %i.ga, ptr %3, align 8, !tbaa !12, !alias.scope !87, !noalias !88
  %i.gb = icmp samesign ult i64 %.0.i, %.1.i
  br i1 %i.gb, label %.lr.ph.i.preheader, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit

.lr.ph.i.preheader:                               ; preds = %.loopexit.i
  %i.gc = sub nuw nsw i64 %.1.i, %.0.i
  %.neg = add nuw nsw i64 %.0.i, 1
  %xtraiter200 = and i64 %i.gc, 1
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.0.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !13
  %i.gi = zext i8 %i.gh to i64                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.gi
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !13
  %i.go = zext i8 %i.gn to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.gp = lshr i64 %i.ga, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13, !alias.scope !90, !noalias !89
  %i.gs = zext i8 %i.gr to i64
  %i.gt = and i64 %i.ga, 7
  %i.gu = shl nuw nsw i64 %i.go, %i.gt
  %i.gv = or i64 %i.gu, %i.gs
  store i64 %i.gv, ptr %i.gq, align 1, !noalias !89
  %i.gw = add i64 %i.ga, %i.gl                    ; 2 uses
  %i.gx = add nuw nsw i64 %.0.i, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa198.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.gw, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %i.ga, %.lr.ph.i.preheader ], [ %i.gw, %.lr.ph.i.prol ]
  %.02226.i.unr = phi i64 [ %.0.i, %.lr.ph.i.preheader ], [ %i.gx, %.lr.ph.i.prol ]
  %i.gy = icmp eq i64 %.1.i, %.neg
  br i1 %i.gy, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.gz = phi i64 [ %i.io, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.02226.i = phi i64 [ %i.ip, %.lr.ph.i ], [ %.02226.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.02226.i
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !13
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !13
  %i.hf = zext i8 %i.he to i64                    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.hf
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !13
  %i.hl = zext i8 %i.hk to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.hm = lshr i64 %i.gz, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13, !alias.scope !90, !noalias !89
  %i.hp = zext i8 %i.ho to i64
  %i.hq = and i64 %i.gz, 7
  %i.hr = shl nuw nsw i64 %i.hl, %i.hq
  %i.hs = or i64 %i.hr, %i.hp
  store i64 %i.hs, ptr %i.hn, align 1, !noalias !89
  %i.ht = add i64 %i.gz, %i.hi                    ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kStorageOrder, i64 %.02226.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !13
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !13
  %i.ia = zext i8 %i.hz to i64                    ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeBitLengths, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !13
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.kHuffmanBitLengthHuffmanCodeSymbols, i64 %i.ia
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13
  %i.ig = zext i8 %i.if to i64
  %i.ih = lshr i64 %i.ht, 3
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !13, !alias.scope !91, !noalias !92
  %i.ik = zext i8 %i.ij to i64
  %i.il = and i64 %i.ht, 7
  %i.im = shl nuw nsw i64 %i.ig, %i.il
  %i.in = or i64 %i.im, %i.ik
  store i64 %i.in, ptr %i.ii, align 1, !noalias !92
  %i.io = add i64 %i.ht, %i.id                    ; 2 uses
  %i.ip = add nuw nsw i64 %.02226.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ip, %.1.i
  br i1 %exitcond.not.i.1, label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, label %.lr.ph.i, !llvm.loop !78

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa198 = phi i64 [ %.lcssa198.unr, %.lr.ph.i.prol.loopexit ], [ %i.io, %.lr.ph.i ] ; 2 uses
  store i64 %.lcssa198, ptr %3, align 8, !tbaa !12, !alias.scope !89, !noalias !90
  br label %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit

BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit: ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit, %.loopexit.i
  %.promoted.i = phi i64 [ %.lcssa198, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit.loopexit ], [ %i.ga, %.loopexit.i ]
  %i.iq = icmp eq i32 %.2, 1
  br i1 %i.iq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.ir, align 1, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask.exit
  %i.is = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.not.i22 = icmp eq i64 %i.is, 0
  br i1 %.not.i22, label %BrotliStoreHuffmanTreeToBitMask.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.s, %bb.u
  %i.it = phi i64 [ %i.jw, %bb.u ], [ %.promoted.i, %bb.s ] ; 3 uses
  %.019.i = phi i64 [ %i.jx, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.019.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !13, !noalias !95 ; 2 uses
  %i.iw = zext i8 %i.iv to i64                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13, !noalias !95
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.iw
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !17, !noalias !95
  %i.jc = zext i16 %i.jb to i64
  %i.jd = lshr i64 %i.it, 3
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13, !alias.scope !96, !noalias !97
  %i.jg = zext i8 %i.jf to i64
  %i.jh = and i64 %i.it, 7
  %i.ji = shl nuw nsw i64 %i.jc, %i.jh
  %i.jj = or i64 %i.ji, %i.jg
  store i64 %i.jj, ptr %i.je, align 1, !alias.scope !94, !noalias !97
  %i.jk = add i64 %i.it, %i.iz                    ; 4 uses
  switch i8 %i.iv, label %bb.u [
    i8 16, label %.sink.split.i
    i8 17, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.i23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %.lr.ph.i23
  %.sink.i = phi i64 [ 3, %bb.t ], [ 2, %.lr.ph.i23 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.019.i
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !13, !noalias !95
  %i.jn = zext i8 %i.jm to i64
  %i.jo = lshr i64 %i.jk, 3
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 %i.jo ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !13, !alias.scope !94, !noalias !93
  %i.jr = zext i8 %i.jq to i64
  %i.js = and i64 %i.jk, 7
  %i.jt = shl nuw nsw i64 %i.jn, %i.js
  %i.ju = or i64 %i.jt, %i.jr
  store i64 %i.ju, ptr %i.jp, align 1, !alias.scope !94, !noalias !93
  %i.jv = add i64 %.sink.i, %i.jk
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %.lr.ph.i23
  %i.jw = phi i64 [ %i.jk, %.lr.ph.i23 ], [ %i.jv, %.sink.split.i ] ; 2 uses
  %i.jx = add nuw i64 %.019.i, 1                  ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %i.jx, %i.is
  br i1 %exitcond.not.i24, label %._crit_edge.i, label %.lr.ph.i23, !llvm.loop !85

._crit_edge.i:                                    ; preds = %bb.u
  store i64 %i.jw, ptr %3, align 8, !tbaa !12, !alias.scope !93, !noalias !94
  br label %BrotliStoreHuffmanTreeToBitMask.exit

BrotliStoreHuffmanTreeToBitMask.exit:             ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden void @BrotliWriteHuffmanTree(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliCreateHuffmanTree(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @BrotliConvertBitDepthsToSymbols(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not260 = icmp eq i64 %2, 0
  br i1 %.not260, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.0182263 = phi i64 [ %.1183, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.0201262 = phi i64 [ %.1202, %bb.e ], [ %2, %bb.a ] ; 2 uses
  %.0203261 = phi i64 [ %i.i, %bb.e ], [ 0, %bb.a ] ; 10 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0203261
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 2 uses
  %.not214 = icmp eq i32 %i.c, 0
  br i1 %.not214, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i64 %.0182263, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0182263
  store i64 %.0203261, ptr %i.e, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add i64 %.0182263, 1
  %i.g = zext i32 %i.c to i64
  %i.h = sub i64 %.0201262, %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.1202 = phi i64 [ %i.h, %bb.d ], [ %.0201262, %.lr.ph ] ; 2 uses
  %.1183 = phi i64 [ %i.f, %bb.d ], [ %.0182263, %.lr.ph ] ; 13 uses
  %i.i = add i64 %.0203261, 1                     ; 8 uses
  %.not = icmp eq i64 %.1202, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.e
  %i.j = icmp ult i64 %.1183, 2
  br i1 %i.j, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.k = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !166, !noalias !167 ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13, !alias.scope !167, !noalias !166
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.k, 7
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.m, align 1, !noalias !166
  %i.s = add i64 %i.k, 4                          ; 4 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !12, !alias.scope !166, !noalias !167
  %i.t = load i64, ptr %i.a, align 16, !tbaa !12  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.u = lshr i64 %i.s, 3
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13, !alias.scope !169, !noalias !168
  %i.x = zext i8 %i.w to i64
  %i.y = and i64 %i.s, 7
  %i.z = shl i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !168
  %i.ab = add i64 %i.s, %3
  store i64 %i.ab, ptr %6, align 8, !tbaa !12, !alias.scope !168, !noalias !169
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !13
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.t
  store i16 0, ptr %i.ad, align 2, !tbaa !17
  br label %.loopexit257

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.i, i1 false)
  %.not206265 = icmp eq i64 %i.i, 0               ; 2 uses
  %i.ae = ptrtoint ptr %0 to i64                  ; 2 uses
  %8 = and i64 %.0203261, 1
  %lcmp.mod.not.not = icmp eq i64 %8, 0
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0203261
  %.sink.prol = trunc i64 %.0203261 to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = icmp eq i64 %.0203261, 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge291, %bb.f
  %.0199 = phi i32 [ 1, %bb.f ], [ %i.dj, %._crit_edge291 ] ; 7 uses
  br i1 %.not206265, label %._crit_edge270, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph269.prol, label %.lr.ph269.prol.loopexit

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %.not212.prol = icmp eq i32 %i.ak, 0
  br i1 %.not212.prol, label %.lr.ph269.prol.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph269.prol
  %.not213.prol = icmp ult i32 %i.ak, %.0199
  br i1 %.not213.prol, label %bb.i, label %bb.j, !prof !170

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink320.prol = phi i32 [ %.0199, %bb.i ], [ %i.ak, %bb.h ]
  store i32 %.sink320.prol, ptr %0, align 4, !tbaa !172
  store i16 -1, ptr %i.ag, align 4, !tbaa !173
  store i16 %.sink.prol, ptr %i.ah, align 2, !tbaa !174
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %bb.j, %.lr.ph269.preheader
  %.1197.lcssa.unr = phi ptr [ poison, %.lr.ph269.preheader ], [ %i.ai, %bb.j ], [ %0, %.lr.ph269.prol ]
  %.0195267.unr = phi i64 [ %i.i, %.lr.ph269.preheader ], [ %.0203261, %bb.j ], [ %.0203261, %.lr.ph269.prol ]
  %.0196266.unr = phi ptr [ %0, %.lr.ph269.preheader ], [ %i.ai, %bb.j ], [ %0, %.lr.ph269.prol ]
  br i1 %i.aj, label %._crit_edge270.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %bb.q
  %.0195267 = phi i64 [ %i.ar, %bb.q ], [ %.0195267.unr, %.lr.ph269.prol.loopexit ] ; 2 uses
  %.0196266 = phi ptr [ %.1197.1, %bb.q ], [ %.0196266.unr, %.lr.ph269.prol.loopexit ] ; 5 uses
  %i.al = add i64 %.0195267, -1                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %.not212 = icmp eq i32 %i.an, 0
  br i1 %.not212, label %.lr.ph269.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph269
  %.not213 = icmp ult i32 %i.an, %.0199
  br i1 %.not213, label %bb.l, label %bb.m, !prof !170

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink320 = phi i32 [ %.0199, %bb.l ], [ %i.an, %bb.k ]
  %.sink = trunc i64 %i.al to i16
  store i32 %.sink320, ptr %.0196266, align 4, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %.0196266, i64 4
  store i16 -1, ptr %i.ao, align 4, !tbaa !173
  %i.ap = getelementptr inbounds nuw i8, ptr %.0196266, i64 6
  store i16 %.sink, ptr %i.ap, align 2, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %.0196266, i64 8
  br label %.lr.ph269.1

.lr.ph269.1:                                      ; preds = %bb.m, %.lr.ph269
  %.1197 = phi ptr [ %i.aq, %bb.m ], [ %.0196266, %.lr.ph269 ] ; 5 uses
  %i.ar = add i64 %.0195267, -2                   ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14 ; 3 uses
  %.not212.1 = icmp eq i32 %i.at, 0
  br i1 %.not212.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph269.1
  %.not213.1 = icmp ult i32 %i.at, %.0199
  br i1 %.not213.1, label %bb.o, label %bb.p, !prof !170

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink320.1 = phi i32 [ %.0199, %bb.o ], [ %i.at, %bb.n ]
  %.sink.1 = trunc i64 %i.ar to i16
  store i32 %.sink320.1, ptr %.1197, align 4, !tbaa !172
  %i.au = getelementptr inbounds nuw i8, ptr %.1197, i64 4
  store i16 -1, ptr %i.au, align 4, !tbaa !173
  %i.av = getelementptr inbounds nuw i8, ptr %.1197, i64 6
  store i16 %.sink.1, ptr %i.av, align 2, !tbaa !174
  %i.aw = getelementptr inbounds nuw i8, ptr %.1197, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph269.1
  %.1197.1 = phi ptr [ %i.aw, %bb.p ], [ %.1197, %.lr.ph269.1 ] ; 2 uses
  %.not206.1 = icmp eq i64 %i.ar, 0
  br i1 %.not206.1, label %._crit_edge270.loopexit, label %.lr.ph269, !llvm.loop !105

._crit_edge270.loopexit:                          ; preds = %bb.q, %.lr.ph269.prol.loopexit
  %.1197.lcssa = phi ptr [ %.1197.lcssa.unr, %.lr.ph269.prol.loopexit ], [ %.1197.1, %bb.q ] ; 2 uses
  %.pre321 = ptrtoint ptr %.1197.lcssa to i64
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre321, %._crit_edge270.loopexit ], [ %i.ae, %bb.g ]
  %.0196.lcssa = phi ptr [ %.1197.lcssa, %._crit_edge270.loopexit ], [ %0, %bb.g ] ; 2 uses
  %i.ax = sub i64 %.pre-phi, %i.ae                ; 2 uses
  %i.ay = lshr exact i64 %i.ax, 3
  %i.az = trunc i64 %i.ay to i32                  ; 4 uses
  %i.ba = add nsw i32 %i.az, 1
  %sext = shl i64 %i.ax, 29
  %i.bb = ashr i64 %sext, 32                      ; 6 uses
  %i.bc = icmp ult i64 %i.bb, 13
  br i1 %i.bc, label %.preheader258, label %bb.u

.preheader258:                                    ; preds = %._crit_edge270
  %i.bd = icmp samesign ugt i64 %i.bb, 1
  br i1 %i.bd, label %.lr.ph285, label %SortHuffmanTreeItems.exit

.lr.ph285:                                        ; preds = %.preheader258, %bb.t
  %.048.i284 = phi i64 [ %i.bl, %bb.t ], [ 1, %.preheader258 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i284
  %i.bf = load i64, ptr %i.be, align 4            ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.bf to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph285
  %.047.i = phi i64 [ %.048.i284, %.lr.ph285 ], [ %.046.i, %bb.s ] ; 3 uses
  %.046.i = add nsw i64 %.047.i, -1               ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !172
  %.not255 = icmp ugt i32 %i.bh, %.sroa.0245.0.extract.trunc
  br i1 %.not255, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.047.i
  %i.bj = load i64, ptr %i.bg, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %.not54.i = icmp eq i64 %.046.i, 0
  br i1 %.not54.i, label %bb.t, label %bb.r, !llvm.loop !106

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i64 [ 0, %bb.s ], [ %.047.i, %bb.r ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.i
  store i64 %i.bf, ptr %i.bk, align 4
  %i.bl = add nuw nsw i64 %.048.i284, 1           ; 2 uses
  %exitcond316.not = icmp eq i64 %i.bl, %i.bb
  br i1 %exitcond316.not, label %SortHuffmanTreeItems.exit, label %.lr.ph285, !llvm.loop !107

bb.u:                                             ; preds = %._crit_edge270
  %i.bm = icmp ult i64 %i.bb, 57
  %i.bn = select i1 %i.bm, i64 2, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge282
  %indvars.iv = phi i64 [ %i.bn, %bb.u ], [ %indvars.iv.next, %._crit_edge282 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @kBrotliShellGaps, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !12 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, %i.bb
  br i1 %i.bq, label %.lr.ph275.preheader, label %._crit_edge282

.lr.ph275.preheader:                              ; preds = %bb.v, %.critedge.i
  %.044.i279 = phi i64 [ %i.bz, %.critedge.i ], [ %i.bp, %bb.v ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.i279
  %i.bs = load i64, ptr %i.br, align 4            ; 2 uses
  %.sroa.0243.0.extract.trunc = trunc i64 %i.bs to i32
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph275.preheader, %bb.w
  %.0.i273 = phi i64 [ %i.bt, %bb.w ], [ %.044.i279, %.lr.ph275.preheader ] ; 3 uses
  %i.bt = sub nuw i64 %.0.i273, %i.bp             ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !172
  %.not254 = icmp ugt i32 %i.bv, %.sroa.0243.0.extract.trunc
  br i1 %.not254, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %.lr.ph275
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i273
  %i.bx = load i64, ptr %i.bu, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %.not.i = icmp ult i64 %i.bt, %i.bp
  br i1 %.not.i, label %.critedge.i, label %.lr.ph275, !llvm.loop !108

.critedge.i:                                      ; preds = %bb.w, %.lr.ph275
  %.0.i.lcssa.ph = phi i64 [ %i.bt, %bb.w ], [ %.0.i273, %.lr.ph275 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.lcssa.ph
  store i64 %i.bs, ptr %i.by, align 4
  %i.bz = add nuw i64 %.044.i279, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.bb
  br i1 %exitcond.not, label %._crit_edge282, label %.lr.ph275.preheader, !llvm.loop !109

._crit_edge282:                                   ; preds = %.critedge.i, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond315.not, label %SortHuffmanTreeItems.exit, label %bb.v, !llvm.loop !110

SortHuffmanTreeItems.exit:                        ; preds = %._crit_edge282, %bb.t, %.preheader258
  %i.ca = icmp sgt i32 %i.az, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0196.lcssa, i8 -1, i64 16, i1 false)
  br i1 %i.ca, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %SortHuffmanTreeItems.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.0196.lcssa, i64 16
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.0188.in289 = phi i32 [ %.0188, %.lr.ph290 ], [ %i.az, %.lr.ph290.preheader ] ; 2 uses
  %.0189288 = phi i32 [ %.2191, %.lr.ph290 ], [ %i.ba, %.lr.ph290.preheader ] ; 3 uses
  %.0192287 = phi i32 [ %.2194, %.lr.ph290 ], [ 0, %.lr.ph290.preheader ] ; 3 uses
  %.2198286 = phi ptr [ %i.de, %.lr.ph290 ], [ %i.cb, %.lr.ph290.preheader ] ; 5 uses
  %.0188 = add nsw i32 %.0188.in289, -1
  %i.cc = sext i32 %.0192287 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !172
  %i.cf = sext i32 %.0189288 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !172
  %.not210 = icmp ule i32 %i.ce, %i.ch            ; 3 uses
  %i.ci = zext i1 %.not210 to i32
  %.1193 = add nsw i32 %.0192287, %i.ci           ; 3 uses
  %not..not210 = xor i1 %.not210, true
  %i.cj = zext i1 %not..not210 to i32
  %.1190 = add nsw i32 %.0189288, %i.cj           ; 3 uses
  %.0187 = select i1 %.not210, i32 %.0192287, i32 %.0189288 ; 2 uses
  %i.ck = sext i32 %.1193 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !172
  %i.cn = sext i32 %.1190 to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !172
  %.not211 = icmp ule i32 %i.cm, %i.cp            ; 3 uses
  %i.cq = zext i1 %.not211 to i32
  %.2194 = add nsw i32 %.1193, %i.cq
  %not..not211 = xor i1 %.not211, true
  %i.cr = zext i1 %not..not211 to i32
  %.2191 = add nsw i32 %.1190, %i.cr
  %.0186 = select i1 %.not211, i32 %.1193, i32 %.1190 ; 2 uses
  %i.cs = sext i32 %.0187 to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !172
  %i.cv = sext i32 %.0186 to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !172
  %i.cy = add i32 %i.cx, %i.cu
  %i.cz = getelementptr inbounds i8, ptr %.2198286, i64 -8
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !172
  %i.da = trunc i32 %.0187 to i16
  %i.db = getelementptr inbounds i8, ptr %.2198286, i64 -4
  store i16 %i.da, ptr %i.db, align 4, !tbaa !173
  %i.dc = trunc i32 %.0186 to i16
  %i.dd = getelementptr inbounds i8, ptr %.2198286, i64 -2
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !174
  %i.de = getelementptr inbounds nuw i8, ptr %.2198286, i64 8
  store i64 -1, ptr %.2198286, align 4
  %i.df = icmp samesign ugt i32 %.0188.in289, 2
  br i1 %i.df, label %.lr.ph290, label %._crit_edge291, !llvm.loop !111

._crit_edge291:                                   ; preds = %.lr.ph290, %SortHuffmanTreeItems.exit
  %i.dg = shl nsw i32 %i.az, 1
  %i.dh = add nsw i32 %i.dg, -1
  %i.di = tail call i32 @BrotliSetDepth(i32 noundef %i.dh, ptr noundef %0, ptr noundef %4, i32 noundef 14) #11
  %.not207 = icmp eq i32 %i.di, 0
  %i.dj = shl i32 %.0199, 1
  br i1 %.not207, label %bb.g, label %bb.x

bb.x:                                             ; preds = %._crit_edge291
  tail call void @BrotliConvertBitDepthsToSymbols(ptr noundef %4, i64 noundef %i.i, ptr noundef %5) #11
  %i.dk = icmp ult i64 %.1183, 5
  br i1 %i.dk, label %.lr.ph309, label %bb.aj

.lr.ph309:                                        ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.dl = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !175, !noalias !176 ; 4 uses
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13, !alias.scope !176, !noalias !175
  %i.dp = zext i8 %i.do to i64
  %i.dq = and i64 %i.dl, 7
  %i.dr = shl nuw nsw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.dp
  store i64 %i.ds, ptr %i.dn, align 1, !noalias !175
  %i.dt = add i64 %i.dl, 2                        ; 3 uses
  store i64 %i.dt, ptr %6, align 8, !tbaa !12, !alias.scope !175, !noalias !176
  %i.du = add nsw i64 %.1183, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.dv = lshr i64 %i.dt, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !13, !alias.scope !178, !noalias !177
  %i.dy = zext i8 %i.dx to i64
  %i.dz = and i64 %i.dt, 7
  %i.ea = shl nuw nsw i64 %i.du, %i.dz
  %i.eb = or i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.dw, align 1, !noalias !177
  %i.ec = add i64 %i.dl, 4                        ; 4 uses
  store i64 %i.ec, ptr %6, align 8, !tbaa !12, !alias.scope !177, !noalias !178
  %.pre = load i64, ptr %i.a, align 16, !tbaa !12 ; 4 uses
  %9 = and i64 %.1183, 1
  %lcmp.mod349.not.not = icmp eq i64 %9, 0
  br i1 %lcmp.mod349.not.not, label %.prol.preheader, label %.prol.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.af
  store i64 %spec.select359, ptr %i.a, align 1
  %cond355 = icmp eq i64 %.1183, 2
  br i1 %cond355, label %.loopexit.3, label %.lr.ph309.1

.lr.ph309.1:                                      ; preds = %.loopexit.loopexit.unr-lcssa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.pre.1 = load i64, ptr %i.ed, align 8, !tbaa !12 ; 4 uses
  %xtraiter348.1 = and i64 %.1183, 1
  %lcmp.mod349.1.not = icmp eq i64 %xtraiter348.1, 0
  br i1 %lcmp.mod349.1.not, label %.prol.loopexit.1, label %.prol.preheader.1

.prol.preheader.1:                                ; preds = %.lr.ph309.1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 16, !tbaa !12 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !13
  %i.ek = icmp ult i8 %i.eh, %i.ej
  br i1 %i.ek, label %bb.y, label %.prol.loopexit.1

bb.y:                                             ; preds = %.prol.preheader.1
  store i64 %.pre.1, ptr %i.ee, align 16, !tbaa !12
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !12
  br label %.prol.loopexit.1

.prol.loopexit.1:                                 ; preds = %.prol.preheader.1, %bb.y, %.lr.ph309.1
  %.unr.1 = phi i64 [ %.pre.1, %.lr.ph309.1 ], [ %.pre.1, %.prol.preheader.1 ], [ %i.ef, %bb.y ]
  %.0184307.unr.1 = phi i64 [ 2, %.lr.ph309.1 ], [ 3, %bb.y ], [ 3, %.prol.preheader.1 ]
  %cond356 = icmp eq i64 %.1183, 3
  br i1 %cond356, label %.loopexit.3, label %.lr.ph309.new.1

.lr.ph309.new.1:                                  ; preds = %.prol.loopexit.1, %bb.ac
  %i.el = phi i64 [ %i.fc, %bb.ac ], [ %.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %.0184307.1 = phi i64 [ %i.fd, %bb.ac ], [ %.0184307.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184307.1 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !12 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !13
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 %i.el
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %i.es = icmp ult i8 %i.ep, %i.er
  br i1 %i.es, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph309.new.1
  store i64 %i.el, ptr %i.em, align 8, !tbaa !12
  store i64 %i.en, ptr %i.ed, align 8, !tbaa !12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph309.new.1
  %i.et = phi i64 [ %i.el, %.lr.ph309.new.1 ], [ %i.en, %bb.z ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184307.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !12 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.et
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fb = icmp ult i8 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.et, ptr %i.ev, align 8, !tbaa !12
  store i64 %i.ew, ptr %i.ed, align 8, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fc = phi i64 [ %i.et, %bb.aa ], [ %i.ew, %bb.ab ]
  %i.fd = add nuw nsw i64 %.0184307.1, 2          ; 2 uses
  %exitcond318.not.1.1 = icmp eq i64 %i.fd, %.1183
  br i1 %exitcond318.not.1.1, label %.loopexit.1, label %.lr.ph309.new.1, !llvm.loop !118

.loopexit.1:                                      ; preds = %bb.ac
  %cond357 = icmp eq i64 %.1183, 4
  br i1 %cond357, label %.lr.ph309.2, label %.loopexit.3

.lr.ph309.2:                                      ; preds = %.loopexit.1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.pre.2 = load i64, ptr %i.fe, align 16, !tbaa !12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !12 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = icmp ult i8 %i.fi, %i.fk
  br i1 %i.fl, label %bb.ad, label %.loopexit.3

bb.ad:                                            ; preds = %.lr.ph309.2
  store i64 %.pre.2, ptr %i.ff, align 8, !tbaa !12
  store i64 %i.fg, ptr %i.fe, align 16, !tbaa !12
  br label %.loopexit.3

.prol.preheader:                                  ; preds = %.lr.ph309
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !12 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 %.pre
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !13
  %i.fs = icmp ult i8 %i.fp, %i.fr
  br i1 %i.fs, label %bb.ae, label %.prol.loopexit

bb.ae:                                            ; preds = %.prol.preheader
  store i64 %.pre, ptr %i.fm, align 8, !tbaa !12
  store i64 %i.fn, ptr %i.a, align 16, !tbaa !12
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ae, %.lr.ph309
  %.unr = phi i64 [ %.pre, %.lr.ph309 ], [ %.pre, %.prol.preheader ], [ %i.fn, %bb.ae ]
  %.0184307.unr = phi i64 [ 1, %.lr.ph309 ], [ 2, %bb.ae ], [ 2, %.prol.preheader ]
  %cond = icmp eq i64 %.1183, 2
  br i1 %cond, label %.loopexit.3, label %.lr.ph309.new

.lr.ph309.new:                                    ; preds = %.prol.loopexit
  %.promoted352 = load i64, ptr %i.a, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph309.new
  %i.ft = phi i64 [ %.promoted352, %.lr.ph309.new ], [ %spec.select359, %bb.af ]
  %i.fu = phi i64 [ %.unr, %.lr.ph309.new ], [ %spec.select360, %bb.af ] ; 3 uses
  %.0184307 = phi i64 [ %.0184307.unr, %.lr.ph309.new ], [ %i.gk, %bb.af ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184307 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !12 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 %i.fu
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.gb = icmp ult i8 %i.fy, %i.ga                ; 3 uses
  %spec.store.select = select i1 %i.gb, i64 %i.fu, i64 %i.fw
  store i64 %spec.store.select, ptr %i.fv, align 8
  %spec.select = select i1 %i.gb, i64 %i.fw, i64 %i.ft
  %spec.select354 = select i1 %i.gb, i64 %i.fw, i64 %i.fu ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184307
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !12 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select354
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = icmp ult i8 %i.gg, %i.gi                ; 3 uses
  %spec.store.select358 = select i1 %i.gj, i64 %spec.select354, i64 %i.ge
  store i64 %spec.store.select358, ptr %i.gd, align 8
  %spec.select359 = select i1 %i.gj, i64 %i.ge, i64 %spec.select ; 2 uses
  %spec.select360 = select i1 %i.gj, i64 %i.ge, i64 %spec.select354
  %i.gk = add nuw nsw i64 %.0184307, 2            ; 2 uses
  %exitcond318.not.1 = icmp eq i64 %i.gk, %.1183
  br i1 %exitcond318.not.1, label %.loopexit.loopexit.unr-lcssa, label %bb.af, !llvm.loop !118

.loopexit.3:                                      ; preds = %bb.ad, %.lr.ph309.2, %.loopexit.1, %.prol.loopexit.1, %.loopexit.loopexit.unr-lcssa, %.prol.loopexit
  %i.gl = load i64, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %i.gm = lshr i64 %i.ec, 3
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 %i.gm ; 6 uses
  %i.go = and i64 %i.ec, 7
  %i.gp = shl i64 %i.gl, %i.go                    ; 3 uses
  %i.gq = add i64 %i.ec, %3                       ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.gs = lshr i64 %i.gq, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 %i.gs ; 6 uses
  %i.gu = and i64 %i.gq, 7                        ; 3 uses
  %i.gv = add i64 %i.gq, %3                       ; 9 uses
  switch i64 %.1183, label %bb.ai [
    i64 2, label %bb.ag
    i64 3, label %bb.ah
  ]

bb.ag:                                            ; preds = %.loopexit.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.gw = load i8, ptr %i.gn, align 1, !tbaa !13, !alias.scope !180, !noalias !179
  %i.gx = zext i8 %i.gw to i64
  %i.gy = or i64 %i.gp, %i.gx
  store i64 %i.gy, ptr %i.gn, align 1, !noalias !179
  store i64 %i.gq, ptr %6, align 8, !tbaa !12, !alias.scope !179, !noalias !180
  %i.gz = load i64, ptr %i.gr, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.ha = load i8, ptr %i.gt, align 1, !tbaa !13, !alias.scope !182, !noalias !181
  %i.hb = zext i8 %i.ha to i64
  %i.hc = shl i64 %i.gz, %i.gu
  %i.hd = or i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.gt, align 1, !noalias !181
  store i64 %i.gv, ptr %6, align 8, !tbaa !12, !alias.scope !181, !noalias !182
  br label %.loopexit257

bb.ah:                                            ; preds = %.loopexit.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.he = load i8, ptr %i.gn, align 1, !tbaa !13, !alias.scope !184, !noalias !183
  %i.hf = zext i8 %i.he to i64
  %i.hg = or i64 %i.gp, %i.hf
  store i64 %i.hg, ptr %i.gn, align 1, !noalias !183
  store i64 %i.gq, ptr %6, align 8, !tbaa !12, !alias.scope !183, !noalias !184
  %i.hh = load i64, ptr %i.gr, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.hi = load i8, ptr %i.gt, align 1, !tbaa !13, !alias.scope !186, !noalias !185
  %i.hj = zext i8 %i.hi to i64
  %i.hk = shl i64 %i.hh, %i.gu
  %i.hl = or i64 %i.hk, %i.hj
  store i64 %i.hl, ptr %i.gt, align 1, !noalias !185
  store i64 %i.gv, ptr %6, align 8, !tbaa !12, !alias.scope !185, !noalias !186
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hn = load i64, ptr %i.hm, align 16, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ho = lshr i64 %i.gv, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !13, !alias.scope !188, !noalias !187
  %i.hr = zext i8 %i.hq to i64
end_hunk_0
begin_hunk_1_@EncodeContextMap:bb.a
  %i.ca = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %exitcond.not.i.i, label %IndexOf.exit.thread31.i, label %.lr.ph.i.i, !llvm.loop !480

IndexOf.exit.thread31.i:                          ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.br, ptr %i.cb, align 4, !tbaa !14, !noalias !516
  %i.cc = load i8, ptr %i.bt, align 1, !tbaa !13, !noalias !516
  br label %.lr.ph.preheader.i.i

IndexOf.exit.i:                                   ; preds = %.lr.ph.i.i
  %i.cd = trunc i64 %.09.i.i to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.239.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !14, !noalias !516
  %.not10.i.i = icmp eq i64 %.09.i.i, 0
  br i1 %.not10.i.i, label %MoveToFront.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %IndexOf.exit.i, %IndexOf.exit.thread31.i
  %i.cf = phi i8 [ %i.cc, %IndexOf.exit.thread31.i ], [ %i.bw, %IndexOf.exit.i ]
  %.0.lcssa.i34.i = phi i64 [ %i.bs, %IndexOf.exit.thread31.i ], [ %.09.i.i, %IndexOf.exit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i, ptr nonnull align 16 %i.a, i64 %.0.lcssa.i34.i, i1 false), !tbaa !13, !noalias !516
  br label %MoveToFront.exit.i

MoveToFront.exit.i:                               ; preds = %.lr.ph.preheader.i.i, %IndexOf.exit.i
  %i.cg = phi i8 [ %i.cf, %.lr.ph.preheader.i.i ], [ %i.bw, %IndexOf.exit.i ]
  store i8 %i.cg, ptr %i.a, align 16, !tbaa !13, !noalias !516
  %i.ch = add nuw i64 %.239.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.ch, %3
  br i1 %exitcond46.not.i, label %MoveToFrontTransform.exit, label %.lr.ph.i.preheader.i, !llvm.loop !481

MoveToFrontTransform.exit:                        ; preds = %MoveToFront.exit.i, %.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !516
  %i.ci = trunc i64 %3 to i32                     ; 2 uses
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge2.i, %MoveToFrontTransform.exit
  %.088.i = phi i32 [ 0, %MoveToFrontTransform.exit ], [ %.068.lcssa.i, %.critedge2.i ] ; 3 uses
  %.06487.i = phi i64 [ 0, %MoveToFrontTransform.exit ], [ %.2.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.cj = add nuw i64 %.06487.i, 1
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 1, 0) %3, i64 %i.cj)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader78.i
  %.180.i = phi i64 [ %.06487.i, %.preheader78.i ], [ %i.cm, %bb.e ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.180.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %.not75.i = icmp eq i32 %i.cl, 0
  br i1 %.not75.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = add i64 %.180.i, 1                      ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %i.cm, %umax.i
  br i1 %exitcond.not.i61, label %.critedge2.thread.i, label %bb.d, !llvm.loop !486

.critedge.i:                                      ; preds = %bb.d
  %i.cn = icmp ult i64 %.180.i, %3
  br i1 %i.cn, label %.lr.ph.preheader.i, label %.critedge2.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  %i.co = trunc i64 %.180.i to i32
  %i.cp = sub i32 %i.ci, %i.co
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.f, %.lr.ph.preheader.i
  %.282.i = phi i64 [ %i.cu, %bb.f ], [ %.180.i, %.lr.ph.preheader.i ] ; 3 uses
  %.06881.i = phi i32 [ %i.ct, %bb.f ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.282.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.f, label %.critedge2.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i64
  %i.ct = add i32 %.06881.i, 1
  %i.cu = add i64 %.282.i, 1                      ; 2 uses
  %exitcond101.not.i = icmp eq i64 %i.cu, %3
  br i1 %exitcond101.not.i, label %.critedge2.loopexit.i, label %.lr.ph.i64, !llvm.loop !487

.critedge2.loopexit.i:                            ; preds = %bb.f, %.lr.ph.i64
  %.068.lcssa.ph.i = phi i32 [ %.06881.i, %.lr.ph.i64 ], [ %i.cp, %bb.f ]
  %.2.lcssa.ph.i = phi i64 [ %.282.i, %.lr.ph.i64 ], [ %3, %bb.f ]
  %i.cv = tail call i32 @llvm.umax.i32(i32 %.068.lcssa.ph.i, i32 %.088.i)
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.critedge.i
  %.068.lcssa.i = phi i32 [ %.088.i, %.critedge.i ], [ %i.cv, %.critedge2.loopexit.i ] ; 2 uses
  %.2.lcssa.i = phi i64 [ %.180.i, %.critedge.i ], [ %.2.lcssa.ph.i, %.critedge2.loopexit.i ] ; 2 uses
  %i.cw = icmp ult i64 %.2.lcssa.i, %3
  br i1 %i.cw, label %.preheader78.i, label %.critedge2.thread.i, !llvm.loop !488

.critedge2.thread.i:                              ; preds = %.critedge2.i, %bb.e
  %.068.lcssa111.i = phi i32 [ %.088.i, %bb.e ], [ %.068.lcssa.i, %.critedge2.i ] ; 2 uses
  %.not.i = icmp eq i32 %.068.lcssa111.i, 0
  %i.cx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.068.lcssa111.i, i1 true)
  %i.cy = xor i32 %i.cx, 31
  %i.cz = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32) %i.cy, i32 6)
  %i.da = select i1 %.not.i, i32 0, i32 %i.cz
  %i.db = freeze i32 %i.da                        ; 8 uses
  %i.dc = shl nuw nsw i32 2, %i.db                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dd = xor i32 %notmask.i, -1
  %i.de = shl nuw nsw i32 %i.dd, 9
  %i.df = add nuw nsw i32 %i.de, %i.db
  %invariant.op = sub i32 1, %i.dc
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.critedge2.thread.i
  %.071 = phi i64 [ 0, %.critedge2.thread.i ], [ %.172, %.loopexit.i ]
  %i.dg = phi i64 [ 0, %.critedge2.thread.i ], [ %i.ei, %.loopexit.i ] ; 5 uses
  %.399.i = phi i64 [ 0, %.critedge2.thread.i ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.399.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14, !alias.scope !518, !noalias !519 ; 2 uses
  %.not73.i = icmp eq i32 %i.di, 0
  br i1 %.not73.i, label %.preheader.i62, label %bb.h

.preheader.i62:                                   ; preds = %bb.g
  %.06589.i = add nuw i64 %.399.i, 1              ; 3 uses
  %i.dj = icmp ult i64 %.06589.i, %3
  br i1 %i.dj, label %.lr.ph92.preheader.i, label %.lr.ph98.preheader.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i62
  %i.dk = trunc i64 %.399.i to i32
  %i.dl = sub i32 %i.ci, %i.dk
  br label %.lr.ph92.i

bb.h:                                             ; preds = %bb.g
  %i.dm = add i32 %i.di, %i.db
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dg
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.do = add nuw i64 %.399.i, 1
  br label %.loopexit.sink.split.i

.lr.ph92.i:                                       ; preds = %bb.i, %.lr.ph92.preheader.i
  %.06591.i = phi i64 [ %.065.i, %bb.i ], [ %.06589.i, %.lr.ph92.preheader.i ] ; 2 uses
  %.06690.i = phi i32 [ %i.ds, %bb.i ], [ 1, %.lr.ph92.preheader.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.06591.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.i, label %.critedge4.i

bb.i:                                             ; preds = %.lr.ph92.i
  %i.ds = add i32 %.06690.i, 1
  %.065.i = add i64 %.06591.i, 1                  ; 2 uses
  %exitcond102.not.i = icmp eq i64 %.065.i, %3
  br i1 %exitcond102.not.i, label %.critedge4.i, label %.lr.ph92.i, !llvm.loop !489

.critedge4.i:                                     ; preds = %bb.i, %.lr.ph92.i
  %.066.lcssa.i = phi i32 [ %i.dl, %bb.i ], [ %.06690.i, %.lr.ph92.i ] ; 3 uses
  %i.dt = zext i32 %.066.lcssa.i to i64
  %i.du = add i64 %.399.i, %i.dt                  ; 2 uses
  %.not7496.i = icmp eq i32 %.066.lcssa.i, 0
  br i1 %.not7496.i, label %.loopexit.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i62, %.critedge4.i
  %i.dv = phi i64 [ %i.du, %.critedge4.i ], [ %.06589.i, %.preheader.i62 ]
  %.066.lcssa114.i = phi i32 [ %.066.lcssa.i, %.critedge4.i ], [ 1, %.preheader.i62 ] ; 3 uses
  %i.dw = icmp ult i32 %.066.lcssa114.i, %i.dc
  br i1 %i.dw, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.lr.ph98.i._crit_edge:                            ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i
  %.lcssa117 = phi i64 [ %i.dg, %.lr.ph98.preheader.i ], [ %i.ef, %.lr.ph98.i ] ; 2 uses
  %.16797.i.lcssa = phi i32 [ %.066.lcssa114.i, %.lr.ph98.preheader.i ], [ %.reass.i.reass.reass.reass, %.lr.ph98.i ] ; 2 uses
  %i.dx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.16797.i.lcssa, i1 true) ; 2 uses
  %.neg.i63 = ashr exact i32 -2147483648, %i.dx
  %i.dy = add nsw i32 %.neg.i63, %.16797.i.lcssa
  %i.dz = shl i32 %i.dy, 9
  %i.ea = or disjoint i32 %i.dz, %i.dx
  %i.eb = xor i32 %i.ea, 31
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.lcssa117
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  br label %.loopexit.sink.split.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.preheader.i, %.lr.ph98.i
  %.16797.i121 = phi i32 [ %.reass.i.reass.reass.reass, %.lr.ph98.i ], [ %.066.lcssa114.i, %.lr.ph98.preheader.i ]
  %i.ed = phi i64 [ %i.ef, %.lr.ph98.i ], [ %i.dg, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ed
  store i32 %i.df, ptr %i.ee, align 4, !tbaa !14, !alias.scope !518, !noalias !519
  %.reass.i.reass.reass.reass = add i32 %.16797.i121, %invariant.op ; 3 uses
  %i.ef = add i64 %i.ed, 1                        ; 2 uses
  %i.eg = icmp ult i32 %.reass.i.reass.reass.reass, %i.dc
  br i1 %i.eg, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.loopexit.sink.split.i:                           ; preds = %.lr.ph98.i._crit_edge, %bb.h
  %.lcssa.sink.i = phi i64 [ %.lcssa117, %.lr.ph98.i._crit_edge ], [ %i.dg, %bb.h ]
  %.4.ph.i = phi i64 [ %i.dv, %.lr.ph98.i._crit_edge ], [ %i.do, %bb.h ]
  %i.eh = add i64 %.lcssa.sink.i, 1               ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %.critedge4.i
  %.172 = phi i64 [ %.071, %.critedge4.i ], [ %i.eh, %.loopexit.sink.split.i ] ; 7 uses
  %i.ei = phi i64 [ %i.dg, %.critedge4.i ], [ %i.eh, %.loopexit.sink.split.i ]
  %.4.i = phi i64 [ %i.du, %.critedge4.i ], [ %.4.ph.i, %.loopexit.sink.split.i ] ; 2 uses
  %i.ej = icmp ult i64 %.4.i, %3
  br i1 %i.ej, label %bb.g, label %RunLengthCodeZeros.exit, !llvm.loop !490

RunLengthCodeZeros.exit:                          ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1088) %1, i8 0, i64 1088, i1 false)
  %.not86 = icmp eq i64 %.172, 0                  ; 2 uses
  br i1 %.not86, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %RunLengthCodeZeros.exit
  %xtraiter = and i64 %.172, 1
  %i.ek = icmp eq i64 %.172, 1
  br i1 %i.ek, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.172, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.fa, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %i.en = and i32 %i.em, 511
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !14
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !14
  %i.ev = and i32 %i.eu, 511
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !14
  %i.fa = add nuw i64 %.081, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !491

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.081.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod154 = trunc i64 %.172 to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081.epil.init
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !14
  %i.fd = and i32 %i.fc, 511
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !14
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %RunLengthCodeZeros.exit
  %.not = icmp ne i32 %i.db, 0                    ; 2 uses
  %i.fi = zext i1 %.not to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.fj = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !520, !noalias !521 ; 4 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13, !alias.scope !521, !noalias !520
  %i.fn = zext i8 %i.fm to i64
  %i.fo = and i64 %i.fj, 7
  %i.fp = shl nuw nsw i64 %i.fi, %i.fo
  %i.fq = or i64 %i.fp, %i.fn
  store i64 %i.fq, ptr %i.fl, align 1, !noalias !520
  %i.fr = add i64 %i.fj, 1                        ; 3 uses
  store i64 %i.fr, ptr %6, align 8, !tbaa !12, !alias.scope !520, !noalias !521
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fs = add nsw i32 %i.db, -1
  %i.ft = zext i32 %i.fs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.fu = lshr i64 %i.fr, 3
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13, !alias.scope !523, !noalias !522
  %i.fx = zext i8 %i.fw to i64
  %i.fy = and i64 %i.fr, 7
  %i.fz = shl nuw nsw i64 %i.ft, %i.fy
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.fv, align 1, !noalias !522
  %i.gb = add i64 %i.fj, 5
  store i64 %i.gb, ptr %6, align 8, !tbaa !12, !alias.scope !522, !noalias !523
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.gc = zext nneg i32 %i.db to i64
  %i.gd = add i64 %4, %i.gc                       ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %1, i64 noundef %i.gd, i64 noundef %i.gd, ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre98 = load i64, ptr %6, align 8, !tbaa !12, !noalias !18 ; 2 uses
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.k, %bb.m
  %i.ge = phi i64 [ %i.hi, %bb.m ], [ %.pre98, %bb.k ] ; 3 uses
  %.182 = phi i64 [ %i.hj, %bb.m ], [ 0, %bb.k ]  ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.182
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !14 ; 2 uses
  %i.gh = and i32 %i.gg, 511                      ; 2 uses
  %i.gi = zext nneg i32 %i.gh to i64              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gi
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !17
  %i.go = zext i16 %i.gn to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.gp = lshr i64 %i.ge, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13, !alias.scope !525, !noalias !524
  %i.gs = zext i8 %i.gr to i64
  %i.gt = and i64 %i.ge, 7
  %i.gu = shl nuw nsw i64 %i.go, %i.gt
  %i.gv = or i64 %i.gu, %i.gs
  store i64 %i.gv, ptr %i.gq, align 1, !noalias !524
  %i.gw = add i64 %i.ge, %i.gl                    ; 5 uses
  store i64 %i.gw, ptr %6, align 8, !tbaa !12, !alias.scope !524, !noalias !525
  %i.gx = add nsw i32 %i.gh, -1
  %or.cond.not = icmp ult i32 %i.gx, %i.db
  br i1 %or.cond.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph84
  %i.gy = lshr i32 %i.gg, 9
  %i.gz = zext nneg i32 %i.gy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.ha = lshr i64 %i.gw, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !13, !alias.scope !527, !noalias !526
  %i.hd = zext i8 %i.hc to i64
  %i.he = and i64 %i.gw, 7
  %i.hf = shl nuw nsw i64 %i.gz, %i.he
  %i.hg = or i64 %i.hf, %i.hd
  store i64 %i.hg, ptr %i.hb, align 1, !noalias !526
  %i.hh = add i64 %i.gw, %i.gi                    ; 2 uses
  store i64 %i.hh, ptr %6, align 8, !tbaa !12, !alias.scope !526, !noalias !527
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph84
  %i.hi = phi i64 [ %i.hh, %bb.l ], [ %i.gw, %.lr.ph84 ] ; 2 uses
  %i.hj = add nuw i64 %.182, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.hj, %.172
  br i1 %exitcond97.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !504

._crit_edge85:                                    ; preds = %bb.m, %bb.k
  %i.hk = phi i64 [ %.pre98, %bb.k ], [ %i.hi, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.hl = lshr i64 %i.hk, 3
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13, !alias.scope !529, !noalias !528
  %i.ho = zext i8 %i.hn to i64
  %i.hp = and i64 %i.hk, 7
  %i.hq = shl nuw nsw i64 1, %i.hp
  %i.hr = or i64 %i.hq, %i.ho
  store i64 %i.hr, ptr %i.hm, align 1, !noalias !528
  %i.hs = add i64 %i.hk, 1
  store i64 %i.hs, ptr %6, align 8, !tbaa !12, !alias.scope !528, !noalias !529
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.aq) #11
  br label %bb.n

bb.n:                                             ; preds = %StoreVarLenUint8.exit.thread, %._crit_edge85
  ret void
}

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @StoreSymbol(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 65536) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = zext i32 %i.j to i64
  store i64 %i.o, ptr %i.a, align 8, !tbaa !47
  %i.p = zext i8 %i.n to i64                      ; 5 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !41
  %i.r = mul i64 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %i.r, ptr %i.s, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.v = add i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %StoreBlockSwitch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %i.z = icmp eq i64 %i.y, %i.p
  %i.aa = add nuw nsw i64 %i.p, 2
  %i.ab = select i1 %i.z, i64 0, i64 %i.aa
  br label %StoreBlockSwitch.exit

StoreBlockSwitch.exit:                            ; preds = %bb.b, %bb.c
  %i.ac = phi i64 [ %i.ab, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.u, ptr %i.ad, align 8, !tbaa !45
  store i64 %i.p, ptr %i.t, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !17
  %i.al = zext i16 %i.ak to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.am = load i64, ptr %2, align 8, !tbaa !12, !alias.scope !542, !noalias !543 ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13, !alias.scope !543, !noalias !542
  %i.aq = zext i8 %i.ap to i64
  %i.ar = and i64 %i.am, 7
  %i.as = shl nuw nsw i64 %i.al, %i.ar
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ao, align 1, !noalias !542
  %i.au = add i64 %i.am, %i.ah                    ; 4 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !12, !alias.scope !542, !noalias !543
  %i.av = icmp ugt i32 %i.j, 176
  %i.aw = icmp ugt i32 %i.j, 752
  %i.ax = select i1 %i.aw, i64 20, i64 14
  %i.ay = icmp ugt i32 %i.j, 40
  %i.az = select i1 %i.ay, i64 7, i64 0
  %i.ba = select i1 %i.av, i64 %i.ax, i64 %i.az
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %GetBlockLengthPrefixCode.exit, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %StoreBlockSwitch.exit, %bb.d
  %indvars.iv28 = phi i64 [ %i.ba, %StoreBlockSwitch.exit ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv28, 1 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !54
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i = icmp ult i32 %i.j, %i.bd
  br i1 %.not.i.i, label %GetBlockLengthPrefixCode.exit, label %bb.d, !llvm.loop !0

GetBlockLengthPrefixCode.exit:                    ; preds = %bb.d, %bb.e
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv28, %bb.e ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %indvars.iv.lcssa ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !55
  %i.bh = load i16, ptr %i.be, align 4, !tbaa !54
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub i32 %i.j, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.lcssa
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.lcssa
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !17
  %i.br = zext i16 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.bs = lshr i64 %i.au, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13, !alias.scope !545, !noalias !544
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.au, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !544
  %i.bz = add i64 %i.au, %i.bn                    ; 4 uses
  store i64 %i.bz, ptr %2, align 8, !tbaa !12, !alias.scope !544, !noalias !545
  %i.ca = zext i8 %i.bg to i64
  %i.cb = zext i32 %i.bj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.cc = lshr i64 %i.bz, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13, !alias.scope !547, !noalias !546
  %i.cf = zext i8 %i.ce to i64
  %i.cg = and i64 %i.bz, 7
  %i.ch = shl nuw nsw i64 %i.cb, %i.cg
  %i.ci = or i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cd, align 1, !noalias !546
  %i.cj = add i64 %i.bz, %i.ca
  store i64 %i.cj, ptr %2, align 8, !tbaa !12, !alias.scope !546, !noalias !547
  %.pre = load i64, ptr %i.a, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %GetBlockLengthPrefixCode.exit, %bb.a
  %i.ck = phi i64 [ %.pre, %GetBlockLengthPrefixCode.exit ], [ %i.b, %bb.a ]
  %i.cl = add i64 %i.ck, -1
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !52
  %i.co = add i64 %i.cn, %1                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !49
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.co
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !17
  %i.cy = zext i16 %i.cx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.cz = load i64, ptr %2, align 8, !tbaa !12, !alias.scope !548, !noalias !549 ; 3 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !549, !noalias !548
  %i.dd = zext i8 %i.dc to i64
  %i.de = and i64 %i.cz, 7
  %i.df = shl nuw nsw i64 %i.cy, %i.de
  %i.dg = or i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.db, align 1, !noalias !548
  %i.dh = add i64 %i.cz, %i.ct
  store i64 %i.dh, ptr %2, align 8, !tbaa !12, !alias.scope !548, !noalias !549
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliStoreMetaBlockTrivial(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 20640) #11 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36
  tail call fastcc void @StoreCompressedMetaBlockHeader(i32 noundef %5, i64 noundef %3, ptr noundef %9, ptr noundef %10)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3856
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.f, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6048
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.k, align 8, !tbaa !64
  %.not31.i = icmp eq i64 %8, 0
  br i1 %.not31.i, label %BuildHistograms.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.a, %bb.c
  %i.l = phi i64 [ %i.bk, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.promoted.i = phi i64 [ %.promoted.i55, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.m = phi i64 [ %i.s, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.01926.i = phi i64 [ %i.bb, %bb.c ], [ %2, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.m ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !14
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.621.0.copyload.i = load i16, ptr %.sroa.621.0..sroa_idx.i, align 4, !tbaa !17 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %.sroa.8.0.copyload.i = load i16, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !17
  %i.o = zext i16 %.sroa.621.0.copyload.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !14
  %i.s = add nuw i64 %i.m, 1                      ; 3 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !65
  %.not23.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph29.i
  %i.t = zext i32 %.sroa.0.0.copyload.i to i64    ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.u = and i64 %.01926.i, %4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !14
  %i.ab = add i64 %.promoted.i, 1                 ; 3 uses
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !66
  %i.ac = add i64 %.01926.i, 1                    ; 2 uses
  %i.ad = add nsw i64 %i.t, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa60.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.025.i.unr = phi i64 [ %i.t, %.lr.ph.i ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.124.i.unr = phi i64 [ %.01926.i, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i32 %.sroa.0.0.copyload.i, 1
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.af = phi i64 [ %i.aw, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.025.i = phi i64 [ %i.ay, %.lr.ph.i.new ], [ %.025.i.unr, %.prol.loopexit ]
  %.124.i = phi i64 [ %i.ax, %.lr.ph.i.new ], [ %.124.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ag = and i64 %.124.i, %4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !14
  %i.an = add i64 %i.af, 1
  store i64 %i.an, ptr %i.d, align 8, !tbaa !66
  %i.ao = add i64 %.124.i, 1
  %i.ap = and i64 %i.ao, %4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !14
  %i.aw = add i64 %i.af, 2                        ; 3 uses
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !66
  %i.ax = add i64 %.124.i, 2                      ; 2 uses
  %i.ay = add nsw i64 %.025.i, -2                 ; 2 uses
  %.not.i.1 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph29.i
  %.promoted.i55 = phi i64 [ %.promoted.i, %.lr.ph29.i ], [ %.lcssa60.unr, %.prol.loopexit ], [ %i.aw, %.lr.ph.i.new ]
  %.1.lcssa.i = phi i64 [ %.01926.i, %.lr.ph29.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ax, %.lr.ph.i.new ]
  %i.az = and i32 %.sroa.4.0.copyload.i, 33554431 ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add i64 %.1.lcssa.i, %i.ba
  %i.bc = icmp ne i32 %i.az, 0
  %i.bd = icmp ugt i16 %.sroa.621.0.copyload.i, 127
  %or.cond.i = and i1 %i.bc, %i.bd
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.be = and i16 %.sroa.8.0.copyload.i, 1023
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !14
  %i.bj = add i64 %i.l, 1                         ; 2 uses
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.bk = phi i64 [ %i.bj, %bb.b ], [ %i.l, %._crit_edge.i ]
  %exitcond.not.i = icmp eq i64 %i.s, %8
  br i1 %exitcond.not.i, label %BuildHistograms.exit, label %.lr.ph29.i, !llvm.loop !2

BuildHistograms.exit:                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.bl = load i64, ptr %9, align 8, !tbaa !12, !alias.scope !553, !noalias !554 ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13, !alias.scope !554, !noalias !553
  %i.bp = zext i8 %i.bo to i64
  store i64 %i.bp, ptr %i.bn, align 1, !noalias !553
  %i.bq = add i64 %i.bl, 13
  store i64 %i.bq, ptr %9, align 8, !tbaa !12, !alias.scope !553, !noalias !554
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9364 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 6064 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 6320 ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 256, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %9, ptr noundef %10)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 6832 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 7536 ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %i.f, i64 noundef 704, i64 noundef 704, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %9, ptr noundef %10)
  %i.bw = zext i32 %i.c to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8944 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 9084 ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %i.i, i64 noundef 140, i64 noundef %i.bw, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %9, ptr noundef %10)
  tail call fastcc void @StoreDataWithHuffmanCodes(ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %7, i64 noundef %8, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, ptr noundef nonnull %9, ptr noundef %10)
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BuildHistograms.exit
  %i.bz = load i64, ptr %9, align 8, !tbaa !12
  %i.ca = add i64 %i.bz, 7
  %i.cb = and i64 %i.ca, 4294967288               ; 2 uses
  store i64 %i.cb, ptr %9, align 8, !tbaa !12
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 %i.cc
  store i8 0, ptr %i.cd, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %BuildHistograms.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BuildAndStoreHuffmanTree(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not58 = icmp eq i64 %1, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.04247 = phi i64 [ %i.g, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.04346 = phi i64 [ %.1, %bb.f ], [ 0, %bb.a ]  ; 6 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04247
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp ult i64 %.04346, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04346
  store i64 %.04247, ptr %i.e, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.not44 = icmp eq i64 %.04346, 4
  br i1 %.not44, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = add nuw nsw i64 %.04346, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.1 = phi i64 [ %i.f, %bb.e ], [ %.04346, %.lr.ph ] ; 2 uses
  %i.g = add nuw i64 %.04247, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !555

._crit_edge:                                      ; preds = %bb.f, %bb.d, %bb.a
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %.04346, %bb.d ], [ %.1, %bb.f ] ; 12 uses
  %i.h = add i64 %2, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 8 uses
  %i.k = icmp ult i64 %.043.lcssa, 2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.l = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !599, !noalias !600 ; 3 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13, !alias.scope !600, !noalias !599
  %i.p = zext i8 %i.o to i64
  %i.q = and i64 %i.l, 7
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.n, align 1, !noalias !599
  %i.t = add i64 %i.l, 4                          ; 4 uses
  store i64 %i.t, ptr %6, align 8, !tbaa !12, !alias.scope !599, !noalias !600
  %i.u = load i64, ptr %i.a, align 16, !tbaa !12  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.v = lshr i64 %i.t, 3
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13, !alias.scope !602, !noalias !601
  %i.y = zext i8 %i.x to i64
  %i.z = and i64 %i.t, 7
  %i.aa = shl i64 %i.u, %i.z
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.w, align 1, !noalias !601
  %i.ac = add i64 %i.t, %i.j
  store i64 %i.ac, ptr %6, align 8, !tbaa !12, !alias.scope !601, !noalias !602
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %i.u
  store i8 0, ptr %i.ad, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.u
  store i16 0, ptr %i.ae, align 2, !tbaa !17
  br label %bb.u

bb.h:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %1, i1 false)
  tail call void @BrotliCreateHuffmanTree(ptr noundef %0, i64 noundef %1, i32 noundef 15, ptr noundef %3, ptr noundef %4) #11
  tail call void @BrotliConvertBitDepthsToSymbols(ptr noundef %4, i64 noundef %1, ptr noundef %5) #11
  %i.af = icmp ult i64 %.043.lcssa, 5
  br i1 %i.af, label %.lr.ph.i, label %bb.t

.lr.ph.i:                                         ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.ag = load i64, ptr %6, align 8, !tbaa !12, !alias.scope !603, !noalias !604 ; 4 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13, !alias.scope !604, !noalias !603
  %i.ak = zext i8 %i.aj to i64
  %i.al = and i64 %i.ag, 7
  %i.am = shl nuw nsw i64 1, %i.al
  %i.an = or i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.ai, align 1, !noalias !603
  %i.ao = add i64 %i.ag, 2                        ; 3 uses
  store i64 %i.ao, ptr %6, align 8, !tbaa !12, !alias.scope !603, !noalias !604
  %i.ap = add nsw i64 %.043.lcssa, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.aq = lshr i64 %i.ao, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13, !alias.scope !606, !noalias !605
  %i.at = zext i8 %i.as to i64
  %i.au = and i64 %i.ao, 7
  %i.av = shl nuw nsw i64 %i.ap, %i.au
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.ar, align 1, !noalias !605
  %i.ax = add i64 %i.ag, 4                        ; 4 uses
  store i64 %i.ax, ptr %6, align 8, !tbaa !12, !alias.scope !605, !noalias !606
  %.pre.i = load i64, ptr %i.a, align 16, !tbaa !12 ; 4 uses
  %8 = and i64 %.043.lcssa, 1
  %lcmp.mod.not.not = icmp eq i64 %8, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.p
  store i64 %spec.select70, ptr %i.a, align 1
  %cond66 = icmp eq i64 %.043.lcssa, 2
  br i1 %cond66, label %.loopexit.i.3, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.loopexit.i.loopexit.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.pre.i.1 = load i64, ptr %i.ay, align 8, !tbaa !12 ; 4 uses
  %xtraiter.1 = and i64 %.043.lcssa, 1
  %lcmp.mod.1.not = icmp eq i64 %xtraiter.1, 0
  br i1 %lcmp.mod.1.not, label %.prol.loopexit.1, label %.prol.preheader.1

.prol.preheader.1:                                ; preds = %.lr.ph.i.1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !12 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.i.1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = icmp ult i8 %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %.prol.loopexit.1

bb.i:                                             ; preds = %.prol.preheader.1
  store i64 %.pre.i.1, ptr %i.az, align 16, !tbaa !12
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !12
  br label %.prol.loopexit.1

.prol.loopexit.1:                                 ; preds = %.prol.preheader.1, %bb.i, %.lr.ph.i.1
  %.unr.1 = phi i64 [ %.pre.i.1, %.lr.ph.i.1 ], [ %.pre.i.1, %.prol.preheader.1 ], [ %i.ba, %bb.i ]
  %.06870.i.unr.1 = phi i64 [ 2, %.lr.ph.i.1 ], [ 3, %bb.i ], [ 3, %.prol.preheader.1 ]
  %cond67 = icmp eq i64 %.043.lcssa, 3
  br i1 %cond67, label %.loopexit.i.3, label %.lr.ph.i.new.1

.lr.ph.i.new.1:                                   ; preds = %.prol.loopexit.1, %bb.m
  %i.bg = phi i64 [ %i.bx, %bb.m ], [ %.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %.06870.i.1 = phi i64 [ %i.by, %bb.m ], [ %.06870.i.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06870.i.1 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !12 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bg
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13
  %i.bn = icmp ult i8 %i.bk, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.new.1
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !12
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.new.1
  %i.bo = phi i64 [ %i.bg, %.lr.ph.i.new.1 ], [ %i.bi, %bb.j ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06870.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !12 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = icmp ult i8 %i.bt, %i.bv
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !12
  store i64 %i.br, ptr %i.ay, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi i64 [ %i.bo, %bb.k ], [ %i.br, %bb.l ]
  %i.by = add nuw nsw i64 %.06870.i.1, 2          ; 2 uses
  %exitcond.not.i.1.1 = icmp eq i64 %i.by, %.043.lcssa
  br i1 %exitcond.not.i.1.1, label %.loopexit.i.1, label %.lr.ph.i.new.1, !llvm.loop !568

.loopexit.i.1:                                    ; preds = %bb.m
  %cond68 = icmp eq i64 %.043.lcssa, 4
  br i1 %cond68, label %.lr.ph.i.2, label %.loopexit.i.3

.lr.ph.i.2:                                       ; preds = %.loopexit.i.1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.pre.i.2 = load i64, ptr %i.bz, align 16, !tbaa !12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.i.2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = icmp ult i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.n, label %.loopexit.i.3

bb.n:                                             ; preds = %.lr.ph.i.2
  store i64 %.pre.i.2, ptr %i.ca, align 8, !tbaa !12
  store i64 %i.cb, ptr %i.bz, align 16, !tbaa !12
  br label %.loopexit.i.3

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !12 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = icmp ult i8 %i.ck, %i.cm
  br i1 %i.cn, label %bb.o, label %.prol.loopexit

bb.o:                                             ; preds = %.prol.preheader
  store i64 %.pre.i, ptr %i.ch, align 8, !tbaa !12
  store i64 %i.ci, ptr %i.a, align 16, !tbaa !12
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.o, %.lr.ph.i
  %.unr = phi i64 [ %.pre.i, %.lr.ph.i ], [ %.pre.i, %.prol.preheader ], [ %i.ci, %bb.o ]
  %.06870.i.unr = phi i64 [ 1, %.lr.ph.i ], [ 2, %bb.o ], [ 2, %.prol.preheader ]
  %cond = icmp eq i64 %.043.lcssa, 2
  br i1 %cond, label %.loopexit.i.3, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit
  %.promoted = load i64, ptr %i.a, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %i.co = phi i64 [ %.promoted, %.lr.ph.i.new ], [ %spec.select70, %bb.p ]
  %i.cp = phi i64 [ %.unr, %.lr.ph.i.new ], [ %spec.select71, %bb.p ] ; 3 uses
  %.06870.i = phi i64 [ %.06870.i.unr, %.lr.ph.i.new ], [ %i.df, %bb.p ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06870.i ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !12 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 %i.cp
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = icmp ult i8 %i.ct, %i.cv                ; 3 uses
  %spec.store.select = select i1 %i.cw, i64 %i.cp, i64 %i.cr
  store i64 %spec.store.select, ptr %i.cq, align 8
  %spec.select = select i1 %i.cw, i64 %i.cr, i64 %i.co
  %spec.select65 = select i1 %i.cw, i64 %i.cr, i64 %i.cp ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.06870.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !12 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 %spec.select65
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = icmp ult i8 %i.db, %i.dd                ; 3 uses
  %spec.store.select69 = select i1 %i.de, i64 %spec.select65, i64 %i.cz
  store i64 %spec.store.select69, ptr %i.cy, align 8
  %spec.select70 = select i1 %i.de, i64 %i.cz, i64 %spec.select ; 2 uses
  %spec.select71 = select i1 %i.de, i64 %i.cz, i64 %spec.select65
  %i.df = add nuw nsw i64 %.06870.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.df, %.043.lcssa
  br i1 %exitcond.not.i.1, label %.loopexit.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !568

.loopexit.i.3:                                    ; preds = %bb.n, %.lr.ph.i.2, %.loopexit.i.1, %.prol.loopexit.1, %.loopexit.i.loopexit.unr-lcssa, %.prol.loopexit
  %i.dg = load i64, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.di = lshr i64 %i.ax, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 %i.di ; 6 uses
  %i.dk = and i64 %i.ax, 7
  %i.dl = shl i64 %i.dg, %i.dk                    ; 3 uses
  %i.dm = add i64 %i.ax, %i.j                     ; 12 uses
  switch i64 %.043.lcssa, label %bb.s [
    i64 2, label %bb.q
    i64 3, label %bb.r
  ]

bb.q:                                             ; preds = %.loopexit.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !13, !alias.scope !608, !noalias !607
  %i.do = zext i8 %i.dn to i64
  %i.dp = or i64 %i.dl, %i.do
  store i64 %i.dp, ptr %i.dj, align 1, !noalias !607
  store i64 %i.dm, ptr %6, align 8, !tbaa !12, !alias.scope !607, !noalias !608
  %i.dq = load i64, ptr %i.dh, align 8, !tbaa !12
  %i.dr = lshr i64 %i.dm, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13, !alias.scope !609, !noalias !610
  %i.du = zext i8 %i.dt to i64
  %i.dv = and i64 %i.dm, 7
  %i.dw = shl i64 %i.dq, %i.dv
  %i.dx = or i64 %i.dw, %i.du
  store i64 %i.dx, ptr %i.ds, align 1, !noalias !610
  %i.dy = add i64 %i.dm, %i.j
  br label %StoreSimpleHuffmanTree.exit

bb.r:                                             ; preds = %.loopexit.i.3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.dz = load i8, ptr %i.dj, align 1, !tbaa !13, !alias.scope !612, !noalias !611
  %i.ea = zext i8 %i.dz to i64
  %i.eb = or i64 %i.dl, %i.ea
  store i64 %i.eb, ptr %i.dj, align 1, !noalias !611
  store i64 %i.dm, ptr %6, align 8, !tbaa !12, !alias.scope !611, !noalias !612
  %i.ec = load i64, ptr %i.dh, align 8, !tbaa !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.ed = lshr i64 %i.dm, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13, !alias.scope !614, !noalias !613
  %i.eg = zext i8 %i.ef to i64
  %i.eh = and i64 %i.dm, 7
  %i.ei = shl i64 %i.ec, %i.eh
  %i.ej = or i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.ee, align 1, !noalias !613
  %i.ek = add i64 %i.dm, %i.j                     ; 4 uses
  store i64 %i.ek, ptr %6, align 8, !tbaa !12, !alias.scope !613, !noalias !614
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.em = load i64, ptr %i.el, align 16, !tbaa !12
  %i.en = lshr i64 %i.ek, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !13, !alias.scope !615, !noalias !616
  %i.eq = zext i8 %i.ep to i64
  %i.er = and i64 %i.ek, 7
end_hunk_1
begin_hunk_2_@StoreDataWithHuffmanCodes:bb.a
  %i.ap = icmp ult i32 %.sroa.0.0.copyload, 22594
  %..i = select i1 %i.ap, i64 22, i64 23
  br label %GetInsertLengthCode.exit

GetInsertLengthCode.exit:                         ; preds = %.lr.ph55, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %..i, %bb.g ], [ %i.aj, %bb.c ], [ %i.an, %bb.e ], [ 21, %bb.f ], [ %i.y, %.lr.ph55 ] ; 2 uses
  %i.aq = zext nneg i32 %i.x to i64
  %i.ar = icmp ult i32 %i.x, 10
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %GetInsertLengthCode.exit
  %narrow47 = add nuw nsw i32 %i.x, 65534
  %i.as = zext nneg i32 %narrow47 to i64
  br label %GetCopyLengthCode.exit

bb.i:                                             ; preds = %GetInsertLengthCode.exit
  %i.at = icmp ult i32 %i.x, 134
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = add nsw i64 %i.aq, -6                   ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.av, i1 true)
  %i.ax = sub nuw nsw i32 30, %i.aw               ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = lshr i64 %i.au, %i.az
  %narrow59 = add nuw nsw i32 %i.ay, 4
  %i.bb = zext nneg i32 %narrow59 to i64
  %i.bc = add nuw nsw i64 %i.ba, %i.bb
  br label %GetCopyLengthCode.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = icmp ult i32 %i.x, 2118
  br i1 %i.bd, label %bb.l, label %GetCopyLengthCode.exit

bb.l:                                             ; preds = %bb.k
  %i.be = add nsw i32 %i.x, -70
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %narrow48 = sub nuw nsw i32 43, %i.bf
  %i.bg = zext nneg i32 %narrow48 to i64
  br label %GetCopyLengthCode.exit

GetCopyLengthCode.exit:                           ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i41 = phi i64 [ %i.as, %bb.h ], [ %i.bc, %bb.j ], [ %i.bg, %bb.l ], [ 23, %bb.k ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsExtra, i64 %.0.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @kBrotliInsBase, i64 %.0.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bl = sub i32 %.sroa.0.0.copyload, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = and i64 %.0.i41, 65535                  ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyBase, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bq = sub i32 %i.x, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = zext nneg i32 %i.bi to i64
  %i.bt = shl i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %i.bm
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.bn
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.bx = add i32 %i.bw, %i.bi
  %i.by = zext i32 %i.bx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.bz = lshr i64 %i.q, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13, !alias.scope !647, !noalias !646
  %i.cc = zext i8 %i.cb to i64
  %i.cd = and i64 %i.q, 7
  %i.ce = shl i64 %i.bu, %i.cd
  %i.cf = or i64 %i.ce, %i.cc
  store i64 %i.cf, ptr %i.ca, align 1, !noalias !646
  %i.cg = add i64 %i.q, %i.by                     ; 3 uses
  store i64 %i.cg, ptr %11, align 8, !tbaa !12, !alias.scope !646, !noalias !647
  %.not49 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GetCopyLengthCode.exit, %.lr.ph
  %i.ch = phi i64 [ %i.cz, %.lr.ph ], [ %i.cg, %GetCopyLengthCode.exit ] ; 3 uses
  %.151 = phi i64 [ %i.da, %.lr.ph ], [ %.053, %GetCopyLengthCode.exit ] ; 2 uses
  %.04050 = phi i64 [ %i.db, %.lr.ph ], [ %i.y, %GetCopyLengthCode.exit ]
  %i.ci = and i64 %.151, %2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i64                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cl
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !17
  %i.cr = zext i16 %i.cq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.cs = lshr i64 %i.ch, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13, !alias.scope !649, !noalias !648
  %i.cv = zext i8 %i.cu to i64
  %i.cw = and i64 %i.ch, 7
  %i.cx = shl nuw nsw i64 %i.cr, %i.cw
  %i.cy = or i64 %i.cx, %i.cv
  store i64 %i.cy, ptr %i.ct, align 1, !noalias !648
  %i.cz = add i64 %i.ch, %i.co                    ; 3 uses
  store i64 %i.cz, ptr %11, align 8, !tbaa !12, !alias.scope !648, !noalias !649
  %i.da = add i64 %.151, 1                        ; 2 uses
  %i.db = add nsw i64 %.04050, -1                 ; 2 uses
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !636

._crit_edge:                                      ; preds = %.lr.ph, %GetCopyLengthCode.exit
  %i.dc = phi i64 [ %i.cg, %GetCopyLengthCode.exit ], [ %i.cz, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i64 [ %.053, %GetCopyLengthCode.exit ], [ %i.da, %.lr.ph ]
  %i.dd = zext nneg i32 %i.w to i64
  %i.de = add i64 %.1.lcssa, %i.dd
  %i.df = icmp ne i32 %i.w, 0
  %i.dg = icmp ugt i16 %.sroa.10.0.copyload, 127
  %or.cond = and i1 %i.df, %i.dg
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.dh = zext i16 %.sroa.12.0.copyload to i32    ; 2 uses
  %i.di = and i32 %i.dh, 1023
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i32 %i.dh, 10
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 %i.dj
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.dj
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !17
  %i.dq = zext i16 %i.dp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.dr = lshr i64 %i.dc, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13, !alias.scope !651, !noalias !650
  %i.du = zext i8 %i.dt to i64
  %i.dv = and i64 %i.dc, 7
  %i.dw = shl nuw nsw i64 %i.dq, %i.dv
  %i.dx = or i64 %i.dw, %i.du
  store i64 %i.dx, ptr %i.ds, align 1, !noalias !650
  %i.dy = add i64 %i.dc, %i.dn                    ; 4 uses
  store i64 %i.dy, ptr %11, align 8, !tbaa !12, !alias.scope !650, !noalias !651
  %i.dz = zext nneg i32 %i.dk to i64
  %i.ea = zext i32 %.sroa.9.0.copyload to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.eb = lshr i64 %i.dy, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 %i.eb ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13, !alias.scope !653, !noalias !652
  %i.ee = zext i8 %i.ed to i64
  %i.ef = and i64 %i.dy, 7
  %i.eg = shl nuw nsw i64 %i.ea, %i.ef
  %i.eh = or i64 %i.eg, %i.ee
  store i64 %i.eh, ptr %i.ec, align 1, !noalias !652
  %i.ei = add i64 %i.dy, %i.dz                    ; 2 uses
  store i64 %i.ei, ptr %11, align 8, !tbaa !12, !alias.scope !652, !noalias !653
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.ej = phi i64 [ %i.ei, %bb.m ], [ %i.dc, %._crit_edge ]
  %i.ek = add nuw i64 %.03952, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %4
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !643

._crit_edge56:                                    ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliStoreMetaBlockFast(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 7 uses
  %i.b = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 20640) #11 ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  tail call fastcc void @StoreCompressedMetaBlockHeader(i32 noundef %5, i64 noundef %3, ptr noundef %9, ptr noundef %10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.e = load i64, ptr %9, align 8, !tbaa !12, !alias.scope !668, !noalias !669 ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13, !alias.scope !669, !noalias !668
  %i.i = zext i8 %i.h to i64
  store i64 %i.i, ptr %i.g, align 1, !noalias !668
  %i.j = add i64 %i.e, 13
  store i64 %i.j, ptr %9, align 8, !tbaa !12, !alias.scope !668, !noalias !669
  %i.k = icmp ult i64 %8, 129
  br i1 %i.k, label %bb.b, label %.lr.ph29.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %.not109 = icmp eq i64 %8, 0
  br i1 %.not109, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.b, %._crit_edge
  %.093104 = phi i64 [ %i.as, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %.094103 = phi i64 [ %i.ao, %._crit_edge ], [ 0, %bb.b ]
  %.095102 = phi i64 [ %i.ar, %._crit_edge ], [ %2, %bb.b ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.093104 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !14 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !14
  %i.m = zext i32 %.sroa.0.0.copyload to i64      ; 4 uses
  %.not9799 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not9799, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph106
  %xtraiter128 = and i64 %i.m, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = and i64 %.095102, %4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !13
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !14
  %i.u = add i64 %.095102, 1                      ; 2 uses
  %i.v = add nsw i64 %i.m, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.0101.unr = phi i64 [ %i.m, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.1100.unr = phi i64 [ %.095102, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.w = icmp eq i32 %.sroa.0.0.copyload, 1
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0101 = phi i64 [ %i.an, %.lr.ph ], [ %.0101.unr, %.lr.ph.prol.loopexit ]
  %.1100 = phi i64 [ %i.am, %.lr.ph ], [ %.1100.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.x = and i64 %.1100, %4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !14
  %i.ae = add i64 %.1100, 1
  %i.af = and i64 %i.ae, %4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !14
  %i.am = add i64 %.1100, 2                       ; 2 uses
  %i.an = add nsw i64 %.0101, -2                  ; 2 uses
  %.not97.1 = icmp eq i64 %i.an, 0
  br i1 %.not97.1, label %._crit_edge, label %.lr.ph, !llvm.loop !657

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph106
  %.1.lcssa = phi i64 [ %.095102, %.lr.ph106 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.am, %.lr.ph ]
  %i.ao = add i64 %.094103, %i.m                  ; 2 uses
  %i.ap = and i32 %.sroa.5.0.copyload, 33554431
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add i64 %.1.lcssa, %i.aq
  %i.as = add nuw nsw i64 %.093104, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %8
  br i1 %exitcond.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !658

._crit_edge107:                                   ; preds = %._crit_edge, %bb.b
  %.094.lcssa = phi i64 [ 0, %bb.b ], [ %i.ao, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 9364
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 6064 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 6320 ; 2 uses
  call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.at, ptr noundef nonnull %i.a, i64 noundef %.094.lcssa, i64 noundef 8, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %9, ptr noundef %10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.aw = load i64, ptr %9, align 8, !tbaa !12, !alias.scope !670, !noalias !671 ; 5 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13, !alias.scope !671, !noalias !670
  %i.ba = zext i8 %i.az to i64
  %i.bb = and i64 %i.aw, 7
  %i.bc = shl nuw nsw i64 41203391169327107, %i.bb
  %i.bd = or i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.ay, align 1, !noalias !670
  %i.be = add i64 %i.aw, 56                       ; 2 uses
  store i64 %i.be, ptr %9, align 8, !tbaa !12, !alias.scope !670, !noalias !671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.bf = lshr i64 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13, !alias.scope !673, !noalias !672
  %i.bi = zext i8 %i.bh to i64
  store i64 %i.bi, ptr %i.bg, align 1, !noalias !672
  %i.bj = add i64 %i.aw, 59                       ; 3 uses
  store i64 %i.bj, ptr %9, align 8, !tbaa !12, !alias.scope !672, !noalias !673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !13, !alias.scope !675, !noalias !674
  %i.bn = zext i8 %i.bm to i64
  %i.bo = and i64 %i.bj, 7
  %i.bp = shl nuw nsw i64 57269251, %i.bo
  %i.bq = or i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bl, align 1, !noalias !674
  %i.br = add i64 %i.aw, 87
  store i64 %i.br, ptr %9, align 8, !tbaa !12, !alias.scope !674, !noalias !675
  tail call fastcc void @StoreDataWithHuffmanCodes(ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef %7, i64 noundef %8, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull @kStaticCommandCodeDepth, ptr noundef nonnull @kStaticCommandCodeBits, ptr noundef nonnull @kStaticDistanceCodeDepth, ptr noundef nonnull @kStaticDistanceCodeBits, ptr noundef nonnull %9, ptr noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

.lr.ph29.i:                                       ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1024 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.b, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.bt, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1040 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 3856 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 3864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bu, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bw, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 3872 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 6048 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 6056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.bx, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.bz, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph29.i
  %i.ca = phi i64 [ 0, %.lr.ph29.i ], [ %i.ea, %bb.e ] ; 2 uses
  %.promoted.i = phi i64 [ 0, %.lr.ph29.i ], [ %i.do, %bb.e ] ; 3 uses
  %i.cb = phi i64 [ 0, %.lr.ph29.i ], [ %i.ch, %bb.e ] ; 2 uses
  %.01926.i = phi i64 [ %2, %.lr.ph29.i ], [ %i.dr, %bb.e ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.cb ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.cc, align 4, !tbaa !14 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !14
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %.sroa.621.0.copyload.i = load i16, ptr %.sroa.621.0..sroa_idx.i, align 4, !tbaa !17 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  %.sroa.8.0.copyload.i = load i16, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !17
  %i.cd = zext i16 %.sroa.621.0.copyload.i to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !14
  %i.ch = add nuw i64 %i.cb, 1                    ; 3 uses
  store i64 %i.ch, ptr %i.bv, align 8, !tbaa !65
  %.not23.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ci = zext i32 %.sroa.0.0.copyload.i to i64   ; 3 uses
  %xtraiter = and i64 %i.ci, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.cj = and i64 %.01926.i, %4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !14
  %i.cq = add i64 %.promoted.i, 1                 ; 3 uses
  store i64 %i.cq, ptr %i.bs, align 8, !tbaa !66
  %i.cr = add i64 %.01926.i, 1                    ; 2 uses
  %i.cs = add nsw i64 %i.ci, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa126.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.cq, %.prol.loopexit.unr-lcssa ]
  %.lcssa125.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.cr, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.cq, %.prol.loopexit.unr-lcssa ]
  %.025.i.unr = phi i64 [ %i.ci, %.lr.ph.i ], [ %i.cs, %.prol.loopexit.unr-lcssa ]
  %.124.i.unr = phi i64 [ %.01926.i, %.lr.ph.i ], [ %i.cr, %.prol.loopexit.unr-lcssa ]
  %i.ct = icmp eq i32 %.sroa.0.0.copyload.i, 1
  br i1 %i.ct, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.cu = phi i64 [ %i.dl, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.025.i = phi i64 [ %i.dn, %.lr.ph.i.new ], [ %.025.i.unr, %.prol.loopexit ]
  %.124.i = phi i64 [ %i.dm, %.lr.ph.i.new ], [ %.124.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cv = and i64 %.124.i, %4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !14
  %i.dc = add i64 %i.cu, 1
  store i64 %i.dc, ptr %i.bs, align 8, !tbaa !66
  %i.dd = add i64 %.124.i, 1
  %i.de = and i64 %i.dd, %4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !14
  %i.dl = add i64 %i.cu, 2                        ; 3 uses
  store i64 %i.dl, ptr %i.bs, align 8, !tbaa !66
  %i.dm = add i64 %.124.i, 2                      ; 2 uses
  %i.dn = add nsw i64 %.025.i, -2                 ; 2 uses
  %.not.i.1 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.c
  %i.do = phi i64 [ %.promoted.i, %bb.c ], [ %.lcssa126.unr, %.prol.loopexit ], [ %i.dl, %.lr.ph.i.new ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.01926.i, %bb.c ], [ %.lcssa125.unr, %.prol.loopexit ], [ %i.dm, %.lr.ph.i.new ]
  %i.dp = and i32 %.sroa.4.0.copyload.i, 33554431 ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add i64 %.1.lcssa.i, %i.dq
  %i.ds = icmp ne i32 %i.dp, 0
  %i.dt = icmp ugt i16 %.sroa.621.0.copyload.i, 127
  %or.cond.i = and i1 %i.ds, %i.dt
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.du = and i16 %.sroa.8.0.copyload.i, 1023
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !14
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !14
  %i.dz = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.dz, ptr %i.by, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ea = phi i64 [ %i.dz, %bb.d ], [ %i.ca, %._crit_edge.i ]
  %exitcond.not.i = icmp eq i64 %i.ch, %8
  br i1 %exitcond.not.i, label %BuildHistograms.exit, label %bb.c, !llvm.loop !2

BuildHistograms.exit:                             ; preds = %bb.e
  %i.eb = add i32 %i.d, -1
  %i.ec = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eb, i1 true)
  %i.ed = sub nuw nsw i32 32, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 9364 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 6064 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 6320 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.b, i64 noundef %i.do, i64 noundef 8, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %9, ptr noundef %10)
  %i.eh = load i64, ptr %i.bv, align 8, !tbaa !677
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 6832 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 7536 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.bu, i64 noundef %i.eh, i64 noundef 10, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %9, ptr noundef %10)
  %i.ek = load i64, ptr %i.by, align 8, !tbaa !678
  %i.el = zext nneg i32 %i.ed to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 8944 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 9084 ; 2 uses
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.bx, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %9, ptr noundef %10)
  tail call fastcc void @StoreDataWithHuffmanCodes(ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %9, ptr noundef %10)
  br label %bb.f

bb.f:                                             ; preds = %BuildHistograms.exit, %._crit_edge107
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.b) #11
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eo = load i64, ptr %9, align 8, !tbaa !12
  %i.ep = add i64 %i.eo, 7
  %i.eq = and i64 %i.ep, 4294967288               ; 2 uses
  store i64 %i.eq, ptr %9, align 8, !tbaa !12
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 %i.er
  store i8 0, ptr %i.es, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @BrotliStoreUncompressedMetaBlock(i32 noundef %0, ptr noalias nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef captures(none) %5, ptr noalias nofree noundef captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, %2                           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.b = load i64, ptr %5, align 8, !tbaa !12, !alias.scope !696, !noalias !697 ; 3 uses
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13, !alias.scope !697, !noalias !696
  %i.f = zext i8 %i.e to i64
  store i64 %i.f, ptr %i.d, align 1, !noalias !696
  %i.g = add i64 %i.b, 1                          ; 2 uses
  %i.h = icmp eq i64 %4, 1
  br i1 %i.h, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %4 to i32
  %i.j = add i32 %i.i, -1                         ; 2 uses
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %i.l = icmp ult i32 %i.j, 32768
  %narrow.i.i = sub nuw nsw i32 35, %i.k
  %i.m = lshr i32 %narrow.i.i, 2
  %i.n = zext nneg i32 %i.m to i64
  br i1 %i.l, label %.thread.i.i, label %BrotliStoreUncompressedMetaBlockHeader.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  br label %BrotliStoreUncompressedMetaBlockHeader.exit

BrotliStoreUncompressedMetaBlockHeader.exit:      ; preds = %bb.b, %.thread.i.i
  %i.o = phi i64 [ 4, %.thread.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = add nsw i64 %i.o, -4
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = add i64 %4, -1
  %i.s = lshr i64 %i.g, 3
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13, !alias.scope !698, !noalias !699
  %i.v = zext i8 %i.u to i64
  %i.w = and i64 %i.g, 7
  %i.x = shl nsw i64 %i.p, %i.w
  %i.y = or i64 %i.x, %i.v
  store i64 %i.y, ptr %i.t, align 1, !noalias !699
  %i.z = add i64 %i.b, 3                          ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13, !alias.scope !700, !noalias !701
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.z, 7
  %i.af = shl i64 %i.r, %i.ae
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ab, align 1, !noalias !701
  %i.ah = add i64 %i.q, %i.z                      ; 3 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13, !alias.scope !702, !noalias !703
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.ah, 7
  %i.an = shl nuw nsw i64 1, %i.am
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.aj, align 1, !noalias !703
  %i.ap = add i64 %i.ah, 8
  %i.aq = and i64 %i.ap, 4294967288               ; 3 uses
  %i.ar = lshr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 %i.ar ; 2 uses
  store i8 0, ptr %i.as, align 1, !tbaa !13
  %i.at = add i64 %i.a, %4
  %i.au = add i64 %3, 1                           ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %BrotliStoreUncompressedMetaBlockHeader.exit
  %i.aw = sub i64 %i.au, %i.a                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.ax, i64 %i.aw, i1 false)
  %i.ay = shl i64 %i.aw, 3
  %i.az = add i64 %i.aq, %i.ay                    ; 2 uses
  %i.ba = sub i64 %4, %i.aw
  %.pre = lshr exact i64 %i.az, 3
  br label %bb.d
end_hunk_2
