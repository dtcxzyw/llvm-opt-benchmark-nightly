Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/metablock?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@BrotliBuildMetaBlockGreedy:bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 8024
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 12440
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 12432 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 12424
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph78, %BlockSplitterAddSymbolDistance.exit47
  %.0.i76 = phi i64 [ %2, %.lr.ph78 ], [ %i.jb, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.178.i75 = phi i64 [ 0, %.lr.ph78 ], [ %i.ka, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.080.i74 = phi i8 [ %4, %.lr.ph78 ], [ %.2.i, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %.082.i73 = phi i8 [ %5, %.lr.ph78 ], [ %.284.i, %BlockSplitterAddSymbolDistance.exit47 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %.178.i75 ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.he, align 4, !tbaa !13 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !13
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %.sroa.651.0.copyload = load i16, ptr %.sroa.651.0..sroa_idx, align 4, !tbaa !25 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !25
  %i.hf = zext i16 %.sroa.651.0.copyload to i64
  %i.hg = load ptr, ptr %i.gu, align 8, !tbaa !51
  %i.hh = load i64, ptr %i.gv, align 8, !tbaa !52
  %i.hi = getelementptr inbounds nuw [2832 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hf ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !13
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 2816 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !53
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !53
  %i.hp = load i64, ptr %i.gw, align 8, !tbaa !54
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  store i64 %i.hq, ptr %i.gw, align 8, !tbaa !54
  %i.hr = load i64, ptr %i.gx, align 8, !tbaa !55
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.x, label %BlockSplitterAddSymbolCommand.exit45

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @BlockSplitterFinishBlockCommand(ptr noundef nonnull %i.gm, i32 noundef 0)
  br label %BlockSplitterAddSymbolCommand.exit45

BlockSplitterAddSymbolCommand.exit45:             ; preds = %bb.w, %bb.x
  %.not.i63 = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not.i63, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %BlockSplitterAddSymbolCommand.exit45
  %i.ht = zext i32 %.sroa.0.0.copyload to i64
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %ContextBlockSplitterAddSymbol.exit
  %.1.i67 = phi i64 [ %i.ix, %ContextBlockSplitterAddSymbol.exit ], [ %.0.i76, %.lr.ph68.preheader ] ; 2 uses
  %.076.i66 = phi i64 [ %i.iy, %ContextBlockSplitterAddSymbol.exit ], [ %i.ht, %.lr.ph68.preheader ]
  %.181.i65 = phi i8 [ %i.hw, %ContextBlockSplitterAddSymbol.exit ], [ %.080.i74, %.lr.ph68.preheader ] ; 3 uses
  %.183.i64 = phi i8 [ %.181.i65, %ContextBlockSplitterAddSymbol.exit ], [ %.082.i73, %.lr.ph68.preheader ]
  %i.hu = and i64 %.1.i67, %3
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !14  ; 3 uses
  %i.hx = zext i8 %.181.i65 to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !14
  %i.ia = zext i8 %.183.i64 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !14
  %i.id = or i8 %i.ic, %i.hz
  %i.ie = zext i8 %i.id to i64
  %i.if = zext i8 %i.hw to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ie
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !13
  %i.ii = zext i32 %i.ih to i64
  %i.ij = load ptr, ptr %i.fu, align 8, !tbaa !84
  %i.ik = load i64, ptr %i.gz, align 8, !tbaa !85
  %i.il = getelementptr [1040 x i8], ptr %i.ij, i64 %i.ik
  %i.im = getelementptr [1040 x i8], ptr %i.il, i64 %i.ii ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.if ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !13
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !13
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1024 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !59
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8, !tbaa !59
  %i.it = load i64, ptr %i.ep, align 8, !tbaa !86
  %i.iu = add i64 %i.it, 1                        ; 2 uses
  store i64 %i.iu, ptr %i.ep, align 8, !tbaa !86
  %i.iv = load i64, ptr %i.eo, align 8, !tbaa !76
  %i.iw = icmp eq i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.y, label %ContextBlockSplitterAddSymbol.exit

bb.y:                                             ; preds = %.lr.ph68
  tail call fastcc void @ContextBlockSplitterFinishBlock(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 0)
  br label %ContextBlockSplitterAddSymbol.exit

ContextBlockSplitterAddSymbol.exit:               ; preds = %bb.y, %.lr.ph68
  %i.ix = add i64 %.1.i67, 1                      ; 2 uses
  %i.iy = add nsw i64 %.076.i66, -1               ; 2 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._crit_edge69, label %.lr.ph68, !llvm.loop !151

._crit_edge69:                                    ; preds = %ContextBlockSplitterAddSymbol.exit, %BlockSplitterAddSymbolCommand.exit45
  %.183.i.lcssa = phi i8 [ %.082.i73, %BlockSplitterAddSymbolCommand.exit45 ], [ %.181.i65, %ContextBlockSplitterAddSymbol.exit ]
  %.181.i.lcssa = phi i8 [ %.080.i74, %BlockSplitterAddSymbolCommand.exit45 ], [ %i.hw, %ContextBlockSplitterAddSymbol.exit ]
  %.1.i.lcssa = phi i64 [ %.0.i76, %BlockSplitterAddSymbolCommand.exit45 ], [ %i.ix, %ContextBlockSplitterAddSymbol.exit ]
  %i.iz = and i32 %.sroa.4.0.copyload, 33554431   ; 2 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = add i64 %.1.i.lcssa, %i.ja              ; 3 uses
  %.not88.i = icmp eq i32 %i.iz, 0
  br i1 %.not88.i, label %BlockSplitterAddSymbolDistance.exit47, label %bb.z

bb.z:                                             ; preds = %._crit_edge69
  %i.jc = add i64 %i.jb, -2
  %i.jd = and i64 %i.jc, %3
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !14  ; 3 uses
  %i.jg = add i64 %i.jb, -1
  %i.jh = and i64 %i.jg, %3
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !14  ; 3 uses
  %i.jk = icmp ugt i16 %.sroa.651.0.copyload, 127
  br i1 %i.jk, label %bb.aa, label %BlockSplitterAddSymbolDistance.exit47

bb.aa:                                            ; preds = %bb.z
  %i.jl = and i16 %.sroa.8.0.copyload, 1023
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = load ptr, ptr %i.ha, align 8, !tbaa !63
  %i.jo = load i64, ptr %i.hb, align 8, !tbaa !64
  %i.jp = getelementptr inbounds nuw [2192 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jm ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !13
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 2176 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !22
  %i.jv = add i64 %i.ju, 1
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !22
  %i.jw = load i64, ptr %i.hc, align 8, !tbaa !65
  %i.jx = add i64 %i.jw, 1                        ; 2 uses
  store i64 %i.jx, ptr %i.hc, align 8, !tbaa !65
  %i.jy = load i64, ptr %i.hd, align 8, !tbaa !66
  %i.jz = icmp eq i64 %i.jx, %i.jy
  br i1 %i.jz, label %bb.ab, label %BlockSplitterAddSymbolDistance.exit47

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @BlockSplitterFinishBlockDistance(ptr noundef nonnull %i.gq, i32 noundef 0)
  br label %BlockSplitterAddSymbolDistance.exit47

BlockSplitterAddSymbolDistance.exit47:            ; preds = %bb.ab, %bb.aa, %bb.z, %._crit_edge69
  %.284.i = phi i8 [ %.183.i.lcssa, %._crit_edge69 ], [ %i.jf, %bb.z ], [ %i.jf, %bb.aa ], [ %i.jf, %bb.ab ]
  %.2.i = phi i8 [ %.181.i.lcssa, %._crit_edge69 ], [ %i.jj, %bb.z ], [ %i.jj, %bb.aa ], [ %i.jj, %bb.ab ]
  %i.ka = add nuw i64 %.178.i75, 1                ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ka, %10
  br i1 %exitcond102.not, label %._crit_edge79, label %bb.w, !llvm.loop !152

._crit_edge79:                                    ; preds = %BlockSplitterAddSymbolDistance.exit47, %.epilog-lcssa
  tail call fastcc void @ContextBlockSplitterFinishBlock(ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef 1)
  tail call fastcc void @BlockSplitterFinishBlockCommand(ptr noundef nonnull %i.gm, i32 noundef 1)
  tail call fastcc void @BlockSplitterFinishBlockDistance(ptr noundef nonnull %i.gq, i32 noundef 1)
  %i.kb = load i64, ptr %11, align 8, !tbaa !32   ; 3 uses
  %i.kc = shl i64 %i.kb, 6                        ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 152
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !42
  %.not.i48 = icmp eq i64 %i.kc, 0
  br i1 %.not.i48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge79
  %i.ke = shl i64 %i.kb, 8
  %i.kf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ke) #8
  %.pre.i = load i64, ptr %11, align 8, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge79
  %i.kg = phi i64 [ %.pre.i, %bb.ac ], [ %i.kb, %._crit_edge79 ] ; 2 uses
  %i.kh = phi ptr [ %i.kf, %bb.ac ], [ null, %._crit_edge79 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !43
  %.not22.i = icmp eq i64 %i.kg, 0
  br i1 %.not22.i, label %BrotliBuildMetaBlockGreedyInternal.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.kj = ptrtoaddr ptr %i.kh to i64
  %i.kk = sub i64 %i.kj, %i.a
  %invariant.op = add i64 %i.kk, -1
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.kq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ks = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.ku = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.kv = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.kx = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.kz = getelementptr inbounds nuw i8, ptr %8, i64 240
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %middle.block
  %.01821.i = phi i64 [ %i.nc, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.la = mul i64 %.01821.i, %7
  %i.lb = trunc i64 %i.la to i32                  ; 5 uses
  %.idx.i = shl i64 %.01821.i, 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i ; 20 uses
  %12 = shl i64 %.01821.i, 8
  %.reass = add i64 %12, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.lb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !13
  %wide.load127 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !13
  %i.ld = add <4 x i32> %wide.load, %broadcast.splat
  %i.le = add <4 x i32> %wide.load127, %broadcast.splat
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store <4 x i32> %i.ld, ptr %i.lc, align 4, !tbaa !13
  store <4 x i32> %i.le, ptr %i.lf, align 4, !tbaa !13
  %wide.load.1 = load <4 x i32>, ptr %i.km, align 4, !tbaa !13
  %wide.load127.1 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !13
  %i.lg = add <4 x i32> %wide.load.1, %broadcast.splat
  %i.lh = add <4 x i32> %wide.load127.1, %broadcast.splat
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 48
  store <4 x i32> %i.lg, ptr %i.li, align 4, !tbaa !13
  store <4 x i32> %i.lh, ptr %i.lj, align 4, !tbaa !13
  %wide.load.2 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !13
  %wide.load127.2 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !13
  %i.lk = add <4 x i32> %wide.load.2, %broadcast.splat
  %i.ll = add <4 x i32> %wide.load127.2, %broadcast.splat
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lc, i64 80
  store <4 x i32> %i.lk, ptr %i.lm, align 4, !tbaa !13
  store <4 x i32> %i.ll, ptr %i.ln, align 4, !tbaa !13
  %wide.load.3 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !13
  %wide.load127.3 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !13
  %i.lo = add <4 x i32> %wide.load.3, %broadcast.splat
  %i.lp = add <4 x i32> %wide.load127.3, %broadcast.splat
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 96
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lc, i64 112
  store <4 x i32> %i.lo, ptr %i.lq, align 4, !tbaa !13
  store <4 x i32> %i.lp, ptr %i.lr, align 4, !tbaa !13
  %wide.load.4 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !13
  %wide.load127.4 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !13
  %i.ls = add <4 x i32> %wide.load.4, %broadcast.splat
  %i.lt = add <4 x i32> %wide.load127.4, %broadcast.splat
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lc, i64 128
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  store <4 x i32> %i.ls, ptr %i.lu, align 4, !tbaa !13
  store <4 x i32> %i.lt, ptr %i.lv, align 4, !tbaa !13
  %wide.load.5 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !13
  %wide.load127.5 = load <4 x i32>, ptr %i.kv, align 4, !tbaa !13
  %i.lw = add <4 x i32> %wide.load.5, %broadcast.splat
  %i.lx = add <4 x i32> %wide.load127.5, %broadcast.splat
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lc, i64 160
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lc, i64 176
  store <4 x i32> %i.lw, ptr %i.ly, align 4, !tbaa !13
  store <4 x i32> %i.lx, ptr %i.lz, align 4, !tbaa !13
  %wide.load.6 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !13
  %wide.load127.6 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !13
  %i.ma = add <4 x i32> %wide.load.6, %broadcast.splat
  %i.mb = add <4 x i32> %wide.load127.6, %broadcast.splat
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lc, i64 192
  %i.md = getelementptr inbounds nuw i8, ptr %i.lc, i64 208
  store <4 x i32> %i.ma, ptr %i.mc, align 4, !tbaa !13
  store <4 x i32> %i.mb, ptr %i.md, align 4, !tbaa !13
  %wide.load.7 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !13
  %wide.load127.7 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !13
  %i.me = add <4 x i32> %wide.load.7, %broadcast.splat
  %i.mf = add <4 x i32> %wide.load127.7, %broadcast.splat
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lc, i64 224
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 240
  store <4 x i32> %i.me, ptr %i.mg, align 4, !tbaa !13
  store <4 x i32> %i.mf, ptr %i.mh, align 4, !tbaa !13
  br label %middle.block

scalar.ph:                                        ; preds = %.lr.ph.i, %scalar.ph
  %.020.i = phi i64 [ %i.nb, %scalar.ph ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.020.i
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !13
  %i.mk = add i32 %i.mj, %i.lb
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.020.i
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !13
  %i.mm = or disjoint i64 %.020.i, 1              ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !13
  %i.mp = add i32 %i.mo, %i.lb
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mm
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !13
  %i.mr = or disjoint i64 %.020.i, 2              ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !13
  %i.mu = add i32 %i.mt, %i.lb
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mr
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !13
  %i.mw = or disjoint i64 %.020.i, 3              ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !13
  %i.mz = add i32 %i.my, %i.lb
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mw
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !13
  %i.nb = add nuw nsw i64 %.020.i, 4              ; 2 uses
  %exitcond.not.i49.3 = icmp eq i64 %i.nb, 64
  br i1 %exitcond.not.i49.3, label %middle.block, label %scalar.ph, !llvm.loop !157

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %i.nc = add nuw i64 %.01821.i, 1                ; 2 uses
  %exitcond23.not.i = icmp eq i64 %i.nc, %i.kg
  br i1 %exitcond23.not.i, label %BrotliBuildMetaBlockGreedyInternal.exit, label %.lr.ph.i, !llvm.loop !158

BrotliBuildMetaBlockGreedyInternal.exit:          ; preds = %middle.block, %bb.ad, %BrotliBuildMetaBlockGreedyInternal.exit41
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.b) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliOptimizeHistograms(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [704 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.preheader15, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.b

.preheader15:                                     ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %.not21 = icmp eq i64 %i.f, 0
  br i1 %.not21, label %.preheader, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw [1040 x i8], ptr %i.h, i64 %.016
  call void @BrotliOptimizeHuffmanCountsForRle(i64 noundef 256, ptr noundef %i.i, ptr noundef nonnull %i.a) #8
  %i.j = add nuw i64 %.016, 1                     ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !44
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %.preheader15, !llvm.loop !160

.preheader:                                       ; preds = %bb.c, %.preheader15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46
  %.not22 = icmp eq i64 %i.n, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph20

.lr.ph20:                                         ; preds = %.preheader
  %i.o = zext i32 %0 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph18, %bb.c
  %.117 = phi i64 [ 0, %.lr.ph18 ], [ %i.s, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw [2832 x i8], ptr %i.q, i64 %.117
  call void @BrotliOptimizeHuffmanCountsForRle(i64 noundef 704, ptr noundef %i.r, ptr noundef nonnull %i.a) #8
  %i.s = add nuw i64 %.117, 1                     ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !38
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %bb.c, label %.preheader, !llvm.loop !161

bb.d:                                             ; preds = %.lr.ph20, %bb.d
  %.219 = phi i64 [ 0, %.lr.ph20 ], [ %i.x, %bb.d ] ; 2 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw [2192 x i8], ptr %i.v, i64 %.219
  call void @BrotliOptimizeHuffmanCountsForRle(i64 noundef %i.o, ptr noundef %i.w, ptr noundef nonnull %i.a) #8
  %i.x = add nuw i64 %.219, 1                     ; 2 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !46
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.d, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare hidden void @BrotliOptimizeHuffmanCountsForRle(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden double @BrotliPopulationCostDistance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @InitBlockSplitterLiteral(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 40), (48, 56), (2136, 2160), (2192, 2200)) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %2, 9                           ; 5 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 4 uses
  store i64 256, ptr %1, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 512, ptr %i.c, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 4.000000e+02, ptr %i.d, align 8, !tbaa !89
end_hunk_0
begin_hunk_1_@BlockSplitterFinishBlockLiteral:bb.a
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !93
  %i.hr = icmp ugt i64 %i.hq, 1
  br i1 %i.hr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hs = load i64, ptr %i.h, align 8, !tbaa !88
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !61
  %i.hv = add i64 %i.hu, %i.hs
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.o, %bb.k, %bb.e, %bb.d
  %.not124 = icmp eq i32 %1, 0
  br i1 %.not124, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !109
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !92
  store i64 %i.hw, ptr %i.hy, align 8, !tbaa !24
  %i.hz = load i64, ptr %i.k, align 8, !tbaa !90
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ContextBlockSplitterFinishBlock(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [13 x double], align 16           ; 5 uses
  %i.b = alloca [26 x double], align 16           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !71   ; 3 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.m, ptr %i.j, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.m, %bb.b ], [ %i.k, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.o to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  store i32 %i.s, ptr %i.u, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %.not232 = icmp eq i64 %i.f, 0
  br i1 %.not232, label %._crit_edge223, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.d
  %i.x = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph222, %bb.e
  %.0185220 = phi i64 [ 0, %.lr.ph222 ], [ %i.ad, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds nuw [1040 x i8], ptr %i.i, i64 %.0185220
  %i.z = load i64, ptr %0, align 8, !tbaa !68
  %i.aa = tail call double @BrotliBitsEntropy(ptr noundef %i.y, i64 noundef %i.z) #8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0185220
  store double %i.aa, ptr %i.ab, align 8, !tbaa !108
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %.0185220
  store double %i.aa, ptr %i.ac, align 8, !tbaa !108
  %i.ad = add nuw i64 %.0185220, 1                ; 2 uses
  %exitcond239.not = icmp eq i64 %i.ad, %i.f
  br i1 %exitcond239.not, label %._crit_edge223, label %bb.e, !llvm.loop !185

._crit_edge223:                                   ; preds = %bb.e, %bb.d
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !73
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.p, align 8, !tbaa !73
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !109
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.d, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !85
  %i.ak = add i64 %i.aj, %i.f                     ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = icmp ult i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.f, label %ClearHistogramsLiteral.exit200

bb.f:                                             ; preds = %._crit_edge223
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw [1040 x i8], ptr %i.ap, i64 %i.ak ; 5 uses
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !69  ; 4 uses
  %.not233 = icmp eq i64 %i.ar, 0
  br i1 %.not233, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %bb.f
  %xtraiter293 = and i64 %i.ar, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 4
  br i1 %i.as, label %.lr.ph226.epil.preheader, label %.lr.ph226.preheader.new

.lr.ph226.preheader.new:                          ; preds = %.lr.ph226.preheader
  %unroll_iter297 = and i64 %i.ar, -4
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph226, %.lr.ph226.preheader.new
  %.0.i199224 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %i.be, %.lr.ph226 ] ; 5 uses
  %niter298 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %niter298.next.3, %.lr.ph226 ]
  %i.at = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.at, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.au, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1040
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aw, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ax, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2080
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.az, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ba, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bc, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.bd, align 8, !tbaa !36
  %i.be = add nuw i64 %.0.i199224, 4              ; 2 uses
  %niter298.next.3 = add nuw i64 %niter298, 4     ; 2 uses
  %niter298.ncmp.3 = icmp eq i64 %niter298.next.3, %unroll_iter297
  br i1 %niter298.ncmp.3, label %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, label %.lr.ph226, !llvm.loop !0

ClearHistogramsLiteral.exit200.loopexit.unr-lcssa: ; preds = %.lr.ph226
  %lcmp.mod295.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod295.not, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, %.lr.ph226.preheader
  %.0.i199224.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %i.be, %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter293, 0
  tail call void @llvm.assume(i1 %lcmp.mod296)
  br label %.lr.ph226.epil

.lr.ph226.epil:                                   ; preds = %.lr.ph226.epil, %.lr.ph226.epil.preheader
  %.0.i199224.epil = phi i64 [ %i.bh, %.lr.ph226.epil ], [ %.0.i199224.epil.init, %.lr.ph226.epil.preheader ] ; 2 uses
  %epil.iter294 = phi i64 [ %epil.iter294.next, %.lr.ph226.epil ], [ 0, %.lr.ph226.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [1040 x i8], ptr %i.aq, i64 %.0.i199224.epil ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bf, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.bg, align 8, !tbaa !36
  %i.bh = add nuw i64 %.0.i199224.epil, 1
  %epil.iter294.next = add i64 %epil.iter294, 1   ; 2 uses
  %epil.iter294.cmp.not = icmp eq i64 %epil.iter294.next, %xtraiter293
  br i1 %epil.iter294.cmp.not, label %ClearHistogramsLiteral.exit200, label %.lr.ph226.epil, !llvm.loop !186

ClearHistogramsLiteral.exit200:                   ; preds = %ClearHistogramsLiteral.exit200.loopexit.unr-lcssa, %.lr.ph226.epil, %bb.f, %._crit_edge223
  store i64 0, ptr %i.j, align 8, !tbaa !86
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.mask = and i64 %i.f, 9223372036854775807
  %.not195 = icmp eq i64 %.mask, 0
  br i1 %.not195, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.bi = mul i64 %i.f, 2080
  %i.bj = tail call ptr @BrotliAllocate(ptr noundef %1, i64 noundef %i.bi) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  br label %.lr.ph

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not227 = icmp eq i64 %i.f, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.i
  %i.bk = phi ptr [ %i.bj, %.thread ], [ null, %bb.i ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = mul i64 %i.f, 1040                      ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.bk, i64 %i.bo
  %3 = mul i64 %i.f, 2080
  %4 = getelementptr i8, ptr %i.bk, i64 %3
  %scevgep259 = getelementptr i8, ptr %4, i64 -16
  %i.bp = getelementptr i8, ptr %i.bk, i64 %i.bo
  %scevgep264 = getelementptr i8, ptr %i.bp, i64 -16
  br label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph, %HistogramAddHistogramLiteral.exit.1
  %.sroa.0.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.dv, %HistogramAddHistogramLiteral.exit.1 ]
  %.sroa.7.0 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fw, %HistogramAddHistogramLiteral.exit.1 ]
  %.0184204 = phi i64 [ 0, %.lr.ph ], [ %i.fx, %HistogramAddHistogramLiteral.exit.1 ] ; 8 uses
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !85
  %i.br = getelementptr [1040 x i8], ptr %i.i, i64 %i.bq
  %i.bs = getelementptr [1040 x i8], ptr %i.br, i64 %.0184204 ; 3 uses
  %i.bt = load i64, ptr %0, align 8, !tbaa !68
  %i.bu = tail call double @BrotliBitsEntropy(ptr noundef %i.bs, i64 noundef %i.bt) #8 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0184204
  store double %i.bu, ptr %i.bv, align 8, !tbaa !108
  %invariant.gep = getelementptr [1040 x i8], ptr %i.i, i64 %.0184204 ; 2 uses
  %i.bw = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw [1040 x i8], ptr %i.bk, i64 %.0184204 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.bx, ptr noundef nonnull align 8 dereferenceable(1040) %i.bs, i64 1040, i1 false), !tbaa.struct !110
  %gep = getelementptr [1040 x i8], ptr %invariant.gep, i64 %i.bw ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %gep, i64 1024 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1024 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !59
  %i.cc = add i64 %i.cb, %i.bz
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !59
  %bound0265 = icmp ult ptr %i.bk, %i.by
  %bound1266 = icmp ult ptr %gep, %scevgep264
  %found.conflict267 = and i1 %bound0265, %bound1266
  br i1 %found.conflict267, label %scalar.ph268, label %vector.body270

vector.body270:                                   ; preds = %vector.memcheck263, %vector.body270
  %index271 = phi i64 [ %index.next276.1, %vector.body270 ], [ 0, %vector.memcheck263 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %index271 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load272 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !13, !alias.scope !203
  %wide.load273 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !13, !alias.scope !203
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index271 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load274 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %wide.load275 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %i.ch = add <4 x i32> %wide.load274, %wide.load272
  %i.ci = add <4 x i32> %wide.load275, %wide.load273
  store <4 x i32> %i.ch, ptr %i.cf, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  store <4 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %index.next276 = or disjoint i64 %index271, 8   ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %index.next276 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load272.1 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !13, !alias.scope !203
  %wide.load273.1 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !13, !alias.scope !203
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index.next276 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load274.1 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %wide.load275.1 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %i.cn = add <4 x i32> %wide.load274.1, %wide.load272.1
  %i.co = add <4 x i32> %wide.load275.1, %wide.load273.1
  store <4 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  store <4 x i32> %i.co, ptr %i.cm, align 4, !tbaa !13, !alias.scope !204, !noalias !203
  %index.next276.1 = add nuw nsw i64 %index271, 16 ; 2 uses
  %i.cp = icmp eq i64 %index.next276.1, 256
  br i1 %i.cp, label %HistogramAddHistogramLiteral.exit, label %vector.body270, !llvm.loop !190

scalar.ph268:                                     ; preds = %vector.memcheck263, %scalar.ph268
  %.0.i201202 = phi i64 [ %i.dn, %scalar.ph268 ], [ 0, %vector.memcheck263 ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %.0.i201202
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0.i201202 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = add i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !13
  %i.cv = or disjoint i64 %.0.i201202, 1          ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cv ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !13
  %i.da = add i32 %i.cz, %i.cx
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !13
  %i.db = or disjoint i64 %.0.i201202, 2          ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.db ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !13
  %i.dg = add i32 %i.df, %i.dd
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !13
  %i.dh = or disjoint i64 %.0.i201202, 3          ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dh ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13
  %i.dm = add i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !13
  %i.dn = add nuw nsw i64 %.0.i201202, 4          ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dn, 256
  br i1 %exitcond.not.3, label %HistogramAddHistogramLiteral.exit, label %scalar.ph268, !llvm.loop !191

HistogramAddHistogramLiteral.exit:                ; preds = %vector.body270, %scalar.ph268
  %i.do = load i64, ptr %0, align 8, !tbaa !68
  %i.dp = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.bx, i64 noundef %i.do) #8 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0184204
  store double %i.dp, ptr %i.dq, align 8, !tbaa !108
  %i.dr = fsub double %i.dp, %i.bu
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0184204
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !108
  %i.du = fsub double %i.dr, %i.dt
  %i.dv = fadd double %.sroa.0.0, %i.du           ; 2 uses
  %i.dw = add i64 %i.f, %.0184204                 ; 3 uses
  %i.dx = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw [1040 x i8], ptr %i.bk, i64 %i.dw ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.dy, ptr noundef nonnull align 8 dereferenceable(1040) %i.bs, i64 1040, i1 false), !tbaa.struct !110
  %gep.1 = getelementptr [1040 x i8], ptr %invariant.gep, i64 %i.dx ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.1, i64 1024 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !59
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 1024 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !59
  %i.ed = add i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !59
  %bound0 = icmp ult ptr %scevgep.a, %i.dz
  %bound1 = icmp ult ptr %gep.1, %scevgep259
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %HistogramAddHistogramLiteral.exit, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <4 x i32>, ptr %i.ee, align 4, !tbaa !13, !alias.scope !205
  %wide.load260 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !13, !alias.scope !205
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %wide.load262 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %i.ei = add <4 x i32> %wide.load261, %wide.load
  %i.ej = add <4 x i32> %wide.load262, %wide.load260
  store <4 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  store <4 x i32> %i.ej, ptr %i.eh, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %index.next ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !13, !alias.scope !205
  %wide.load260.1 = load <4 x i32>, ptr %i.el, align 4, !tbaa !13, !alias.scope !205
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index.next ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %wide.load261.1 = load <4 x i32>, ptr %i.em, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %wide.load262.1 = load <4 x i32>, ptr %i.en, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %i.eo = add <4 x i32> %wide.load261.1, %wide.load.1
  %i.ep = add <4 x i32> %wide.load262.1, %wide.load260.1
  store <4 x i32> %i.eo, ptr %i.em, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  store <4 x i32> %i.ep, ptr %i.en, align 4, !tbaa !13, !alias.scope !206, !noalias !205
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.eq = icmp eq i64 %index.next.1, 256
  br i1 %i.eq, label %HistogramAddHistogramLiteral.exit.1, label %vector.body, !llvm.loop !195

scalar.ph:                                        ; preds = %HistogramAddHistogramLiteral.exit, %scalar.ph
  %.0.i201202.1 = phi i64 [ %i.fo, %scalar.ph ], [ 0, %HistogramAddHistogramLiteral.exit ] ; 6 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %.0.i201202.1
  %i.es = load i32, ptr %i.er, align 4, !tbaa !13
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0.i201202.1 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !13
  %i.ev = add i32 %i.eu, %i.es
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !13
  %i.ew = or disjoint i64 %.0.i201202.1, 1        ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !13
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ew ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !13
  %i.fb = add i32 %i.fa, %i.ey
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !13
  %i.fc = or disjoint i64 %.0.i201202.1, 2        ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !13
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fc ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !13
  %i.fh = add i32 %i.fg, %i.fe
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !13
  %i.fi = or disjoint i64 %.0.i201202.1, 3        ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %gep.1, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !13
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.fi ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !13
  %i.fn = add i32 %i.fm, %i.fk
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !13
  %i.fo = add nuw nsw i64 %.0.i201202.1, 4        ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %i.fo, 256
  br i1 %exitcond.1.not.3, label %HistogramAddHistogramLiteral.exit.1, label %scalar.ph, !llvm.loop !196

HistogramAddHistogramLiteral.exit.1:              ; preds = %vector.body, %scalar.ph
  %i.fp = load i64, ptr %0, align 8, !tbaa !68
  %i.fq = tail call double @BrotliBitsEntropy(ptr noundef nonnull %i.dy, i64 noundef %i.fp) #8 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dw
  store double %i.fq, ptr %i.fr, align 8, !tbaa !108
  %i.fs = fsub double %i.fq, %i.bu
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dw
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !108
  %i.fv = fsub double %i.fs, %i.fu
  %i.fw = fadd double %.sroa.7.0, %i.fv           ; 2 uses
  %i.fx = add nuw i64 %.0184204, 1                ; 2 uses
  %exitcond234.not = icmp eq i64 %i.fx, %i.f
  br i1 %exitcond234.not, label %._crit_edge, label %vector.memcheck263, !llvm.loop !197

._crit_edge:                                      ; preds = %HistogramAddHistogramLiteral.exit.1, %bb.i
  %.not227256 = phi i1 [ true, %bb.i ], [ false, %HistogramAddHistogramLiteral.exit.1 ] ; 3 uses
  %i.fy = phi ptr [ null, %bb.i ], [ %i.bk, %HistogramAddHistogramLiteral.exit.1 ] ; 3 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.i ], [ %i.dv, %HistogramAddHistogramLiteral.exit.1 ] ; 2 uses
  %.sroa.7.1 = phi double [ 0.000000e+00, %bb.i ], [ %i.fw, %HistogramAddHistogramLiteral.exit.1 ] ; 2 uses
  %i.fz = load i64, ptr %i.d, align 8, !tbaa !109 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !70
  %i.gc = icmp ult i64 %i.fz, %i.gb
  br i1 %i.gc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !72 ; 2 uses
  %i.gf = fcmp ogt double %.sroa.0.1, %i.ge
  %i.gg = fcmp ogt double %.sroa.7.1, %i.ge
  %or.cond = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.gh = load i64, ptr %i.j, align 8, !tbaa !86
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !81
  %i.gl = load i64, ptr %i.p, align 8, !tbaa !73  ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gl
  store i32 %i.gi, ptr %i.gm, align 4, !tbaa !13
  %i.gn = trunc i64 %i.fz to i8
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !79
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gl
  store i8 %i.gn, ptr %i.gq, align 1, !tbaa !14
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !24
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !24
  %i.gu = load i64, ptr %i.d, align 8, !tbaa !109
  %i.gv = mul i64 %i.gu, %i.f
  store i64 %i.gv, ptr %i.gr, align 8, !tbaa !24
  br i1 %.not227256, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %bb.k
  %i.gw = getelementptr [8 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %scalar.ph278.preheader, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph215
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph279
  %index281 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body280 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index281 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.gx, align 8, !tbaa !108
  %wide.load283 = load <2 x double>, ptr %i.gy, align 8, !tbaa !108
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %index281 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store <2 x double> %wide.load282, ptr %i.gz, align 8, !tbaa !108
  store <2 x double> %wide.load283, ptr %i.ha, align 8, !tbaa !108
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index281 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load284 = load <2 x double>, ptr %i.hb, align 16, !tbaa !108
  %wide.load285 = load <2 x double>, ptr %i.hc, align 16, !tbaa !108
  store <2 x double> %wide.load284, ptr %i.gx, align 8, !tbaa !108
  store <2 x double> %wide.load285, ptr %i.gy, align 8, !tbaa !108
  %index.next286 = add nuw i64 %index281, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next286, %n.vec
  br i1 %i.hd, label %middle.block287, label %vector.body280, !llvm.loop !198

middle.block287:                                  ; preds = %vector.body280
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge216, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph215, %middle.block287
  %.1213.ph = phi i64 [ 0, %.lr.ph215 ], [ %n.vec, %middle.block287 ]
  br label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %.1213 = phi i64 [ %i.hj, %scalar.ph278 ], [ %.1213.ph, %scalar.ph278.preheader ] ; 4 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.1213 ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !108
  %i.hg = getelementptr [8 x i8], ptr %i.gw, i64 %.1213
  store double %i.hf, ptr %i.hg, align 8, !tbaa !108
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1213
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !108
  store double %i.hi, ptr %i.he, align 8, !tbaa !108
  %i.hj = add nuw nsw i64 %.1213, 1               ; 2 uses
  %exitcond237.not = icmp eq i64 %i.hj, %i.f
  br i1 %exitcond237.not, label %._crit_edge216, label %scalar.ph278, !llvm.loop !199

._crit_edge216:                                   ; preds = %scalar.ph278, %middle.block287, %bb.k
  %i.hk = load i64, ptr %i.p, align 8, !tbaa !73
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.p, align 8, !tbaa !73
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !109
  %i.hn = add i64 %i.hm, 1
  store i64 %i.hn, ptr %i.d, align 8, !tbaa !109
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !85
  %i.hq = add i64 %i.hp, %i.f                     ; 3 uses
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !85
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !75
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !24
  %i.hu = icmp ult i64 %i.hq, %i.ht
  br i1 %i.hu, label %bb.l, label %ClearHistogramsLiteral.exit

bb.l:                                             ; preds = %._crit_edge216
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.hw = getelementptr inbounds nuw [1040 x i8], ptr %i.hv, i64 %i.hq ; 5 uses
  %i.hx = load i64, ptr %i.e, align 8, !tbaa !69  ; 4 uses
  %.not231 = icmp eq i64 %i.hx, 0
  br i1 %.not231, label %ClearHistogramsLiteral.exit, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %bb.l
  %xtraiter = and i64 %i.hx, 3                    ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 4
  br i1 %i.hy, label %.lr.ph219.epil.preheader, label %.lr.ph219.preheader.new
end_hunk_1
