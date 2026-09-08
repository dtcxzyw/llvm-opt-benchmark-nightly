Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/block_splitter?download=true
inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@BrotliSplitBlock:bb.a
  %i.dq = add i64 %i.dp, %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.i.i = phi i32 [ %.02730.i.i, %bb.x ], [ %i.dn, %bb.y ]
  %.0.i.i = phi i64 [ %i.dm, %bb.x ], [ %i.dq, %bb.y ] ; 2 uses
  %i.dr = add i64 %.0.i.i, 70
  %.not25.i.i = icmp ult i64 %i.dr, %.lcssa881
  %spec.select.i.i = select i1 %.not25.i.i, i64 %.0.i.i, i64 %i.cy
  %i.ds = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.02231.i.i ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.ph, i64 %spec.select.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1024 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !173
  %i.dw = add i64 %i.dv, 70
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !173
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %i.dx = phi i64 [ 70, %bb.z ], [ %i.ek, %bb.aa ]
  %.05.i29.i.i = phi ptr [ %i.dt, %bb.z ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 1
  %i.dz = load i8, ptr %.05.i29.i.i, align 1, !tbaa !168
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !169
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !169
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !168
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !169
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !169
  %i.ek = add nsw i64 %i.dx, -2                   ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.1, label %HistogramAddVectorLiteral.exit.i.i, label %bb.aa, !llvm.loop !22

HistogramAddVectorLiteral.exit.i.i:               ; preds = %bb.aa
  %i.el = add nuw nsw i64 %.02231.i.i, 1          ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.el, %.
  br i1 %exitcond32.not.i.i, label %InitialEntropyCodesLiteral.exit.i, label %bb.x, !llvm.loop !23

InitialEntropyCodesLiteral.exit.i:                ; preds = %HistogramAddVectorLiteral.exit.i.i
  %.idx = mul nuw nsw i64 %., 1040                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx ; 11 uses
  %i.en = shl i64 %.lcssa881, 1
  %i.eo = udiv i64 %i.en, 70
  %i.ep = add nuw nsw i64 %i.eo, 99
  %i.eq = add nuw nsw i64 %i.ep, %.               ; 2 uses
  %i.er = urem i64 %i.eq, %.
  %i.es = sub nuw nsw i64 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1024
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1032
  store double +inf, ptr %i.eu, align 8, !tbaa !172
  %i.ev = add i64 %.lcssa881, -69
  %i.ew = mul nuw nsw i64 %., 1040
  %i.ex = getelementptr i8, ptr %i.cs, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ex, i64 1024
  br label %bb.ab

bb.ab:                                            ; preds = %HistogramAddHistogramLiteral.exit.i.i, %InitialEntropyCodesLiteral.exit.i
  %.020.i.i = phi i64 [ 0, %InitialEntropyCodesLiteral.exit.i ], [ %i.hh, %HistogramAddHistogramLiteral.exit.i.i ] ; 2 uses
  %.01719.i.i = phi i32 [ 7, %InitialEntropyCodesLiteral.exit.i ], [ %i.ey, %HistogramAddHistogramLiteral.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.em, i8 0, i64 1024, i1 false)
  %i.ey = mul i32 %.01719.i.i, 16807              ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = urem i64 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.fa
  store i64 70, ptr %i.et, align 8, !tbaa !173
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.fc = phi i64 [ 70, %bb.ab ], [ %i.fp, %bb.ac ]
  %.05.i12.i.i.i = phi ptr [ %i.fb, %bb.ab ], [ %i.fj, %bb.ac ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 1
  %i.fe = load i8, ptr %.05.i12.i.i.i, align 1, !tbaa !168
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !169
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !169
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 2
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !168
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !169
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !169
  %i.fp = add nsw i64 %i.fc, -2                   ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.1, label %RandomSampleLiteral.exit.i.i, label %bb.ac, !llvm.loop !22

RandomSampleLiteral.exit.i.i:                     ; preds = %bb.ac
  %i.fq = urem i64 %.020.i.i, %.
  %.idx853 = mul nuw nsw i64 %i.fq, 1040          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx853 ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1024 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !173
  %i.fu = add i64 %i.ft, 70
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !173
  %bound0 = icmp ult ptr %i.fr, %scevgep
  %i.fv = add nuw nsw i64 %.idx853, 1024
  %bound1 = icmp samesign ult i64 %.idx, %i.fv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %RandomSampleLiteral.exit.i.i, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %RandomSampleLiteral.exit.i.i ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load = load <4 x i32>, ptr %i.fw, align 4, !tbaa !169, !alias.scope !174
  %wide.load709 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !169, !alias.scope !174
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load710 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %wide.load711 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %i.ga = add <4 x i32> %wide.load710, %wide.load
  %i.gb = add <4 x i32> %wide.load711, %wide.load709
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  store <4 x i32> %i.gb, ptr %i.fz, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index.next ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !169, !alias.scope !174
  %wide.load709.1 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !169, !alias.scope !174
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index.next ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load710.1 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %wide.load711.1 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %i.gg = add <4 x i32> %wide.load710.1, %wide.load.1
  %i.gh = add <4 x i32> %wide.load711.1, %wide.load709.1
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !169, !alias.scope !175, !noalias !174
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.gi = icmp eq i64 %index.next.1, 256
  br i1 %i.gi, label %HistogramAddHistogramLiteral.exit.i.i, label %vector.body, !llvm.loop !27

scalar.ph:                                        ; preds = %RandomSampleLiteral.exit.i.i, %scalar.ph
  %.0.i18.i.i = phi i64 [ %i.hg, %scalar.ph ], [ 0, %RandomSampleLiteral.exit.i.i ] ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.0.i18.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !169
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0.i18.i.i ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !169
  %i.gn = add i32 %i.gm, %i.gk
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !169
  %i.go = or disjoint i64 %.0.i18.i.i, 1          ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !169
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.go ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !169
  %i.gt = add i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !169
  %i.gu = or disjoint i64 %.0.i18.i.i, 2          ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !169
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gu ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !169
  %i.gz = add i32 %i.gy, %i.gw
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !169
  %i.ha = or disjoint i64 %.0.i18.i.i, 3          ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !169
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.ha ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !169
  %i.hf = add i32 %i.he, %i.hc
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !169
  %i.hg = add nuw nsw i64 %.0.i18.i.i, 4          ; 2 uses
  %exitcond.not.i155.i.3 = icmp eq i64 %i.hg, 256
  br i1 %exitcond.not.i155.i.3, label %HistogramAddHistogramLiteral.exit.i.i, label %scalar.ph, !llvm.loop !28

HistogramAddHistogramLiteral.exit.i.i:            ; preds = %vector.body, %scalar.ph
  %i.hh = add nuw i64 %.020.i.i, 1                ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.hh, %i.es
  br i1 %exitcond21.not.i.i, label %RefineEntropyCodesLiteral.exit.i, label %bb.ab, !llvm.loop !29

RefineEntropyCodesLiteral.exit.i:                 ; preds = %HistogramAddHistogramLiteral.exit.i.i
  %i.hi = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.lcssa881) #8 ; 23 uses
  %i.hj = add nuw nsw i64 %., 7
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = shl nuw nsw i64 %., 11
  %i.hm = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.hl) #8 ; 6 uses
  %i.hn = shl nuw nsw i64 %., 3
  %i.ho = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.hn) #8 ; 6 uses
  %i.hp = mul i64 %i.hk, %.lcssa881               ; 2 uses
  %.not.i64 = icmp eq i64 %i.hp, 0
  br i1 %.not.i64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %RefineEntropyCodesLiteral.exit.i
  %i.hq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.hp) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %RefineEntropyCodesLiteral.exit.i
  %i.hr = phi ptr [ %i.hq, %bb.ad ], [ null, %RefineEntropyCodesLiteral.exit.i ] ; 4 uses
  %i.hs = shl nuw nsw i64 %., 1
  %i.ht = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.hs) #8 ; 12 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !193
  %.inv.i = icmp sgt i32 %i.hv, 10
  %i.hw = select i1 %.inv.i, i64 10, i64 3
  %i.hx = add i64 %.lcssa881, -1                  ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hx
  %xtraiter899 = and i64 %.lcssa881, 1
  %unroll_iter904 = and i64 %.lcssa881, -2
  %lcmp.mod901.not = icmp eq i64 %xtraiter899, 0
  %lcmp.mod903 = trunc i64 %.lcssa881 to i1
  %xtraiter906 = and i64 %.lcssa881, 3            ; 3 uses
  %unroll_iter910 = and i64 %.lcssa881, -4
  %lcmp.mod908.not = icmp eq i64 %xtraiter906, 0
  %lcmp.mod909 = icmp ne i64 %xtraiter906, 0
  %xtraiter918 = and i64 %.lcssa881, 1
  %unroll_iter922 = and i64 %.lcssa881, -2
  %lcmp.mod920.not = icmp eq i64 %xtraiter918, 0
  %lcmp.mod921 = trunc i64 %.lcssa881 to i1
  br label %bb.af

bb.af:                                            ; preds = %BuildBlockHistogramsLiteral.exit.i, %bb.ae
  %.0180.i = phi i64 [ 0, %bb.ae ], [ %i.qn, %BuildBlockHistogramsLiteral.exit.i ]
  %.1179.i = phi i64 [ %., %bb.ae ], [ %i.oh, %BuildBlockHistogramsLiteral.exit.i ] ; 21 uses
  %i.hz = add nuw nsw i64 %.1179.i, 7
  %i.ia = lshr i64 %i.hz, 3                       ; 4 uses
  %i.ib = icmp samesign ult i64 %.1179.i, 2
  br i1 %i.ib, label %.preheader.preheader.i.i, label %bb.ag

.preheader.preheader.i.i:                         ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hi, i8 0, i64 range(i64 128, 0) %.lcssa881, i1 false), !tbaa !168
  br label %FindBlocksLiteral.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ic = shl nuw nsw i64 %.1179.i, 11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hm, i8 0, i64 %i.ic, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %FastLog2.exit.i.i, %bb.ag
  %.1116131.i.i = phi i64 [ 0, %bb.ag ], [ %i.in, %FastLog2.exit.i.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.1116131.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1024
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !173
  %i.ig = and i64 %i.if, 4294967295               ; 3 uses
  %i.ih = icmp samesign ult i64 %i.ig, 256
  br i1 %i.ih, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ig
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !194
  br label %FastLog2.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ik = uitofp nneg i64 %i.ig to double
  %i.il = tail call double @log2(double noundef %i.ik) #8
  br label %FastLog2.exit.i.i

FastLog2.exit.i.i:                                ; preds = %bb.aj, %bb.ai
  %.0.i.i.i = phi double [ %i.ij, %bb.ai ], [ %i.il, %bb.aj ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.1116131.i.i
  store double %.0.i.i.i, ptr %i.im, align 8, !tbaa !194
  %i.in = add nuw nsw i64 %.1116131.i.i, 1        ; 2 uses
  %exitcond.not.i156.i = icmp eq i64 %i.in, %.1179.i
  br i1 %exitcond.not.i156.i, label %.preheader130.i.i, label %bb.ah, !llvm.loop !30

.loopexit129.i.i:                                 ; preds = %BitCost.exit.i.i
  %.not.i157.i = icmp eq i64 %i.io, 0
  br i1 %.not.i157.i, label %bb.ao, label %.preheader130.i.i, !llvm.loop !31

.preheader130.i.i:                                ; preds = %FastLog2.exit.i.i, %.loopexit129.i.i
  %.2133.i.i = phi i64 [ %i.io, %.loopexit129.i.i ], [ 256, %FastLog2.exit.i.i ]
  %i.io = add nsw i64 %.2133.i.i, -1              ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.cs, i64 %i.io
  %i.ip = mul i64 %i.io, %.1179.i
  %i.iq = getelementptr [8 x i8], ptr %i.hm, i64 %i.ip
  br label %bb.ak

bb.ak:                                            ; preds = %BitCost.exit.i.i, %.preheader130.i.i
  %.0114132.i.i = phi i64 [ 0, %.preheader130.i.i ], [ %i.je, %BitCost.exit.i.i ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.0114132.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !194
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.0114132.i.i
  %i.it = load i32, ptr %gep.i.i, align 4, !tbaa !169 ; 4 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = icmp eq i32 %i.it, 0
  br i1 %i.iv, label %BitCost.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iw = icmp ult i32 %i.it, 256
  br i1 %i.iw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.iu
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !194
  br label %BitCost.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.iz = uitofp i32 %i.it to double
  %i.ja = tail call double @log2(double noundef %i.iz) #8
  br label %BitCost.exit.i.i

BitCost.exit.i.i:                                 ; preds = %bb.an, %bb.am, %bb.ak
  %i.jb = phi double [ -2.000000e+00, %bb.ak ], [ %i.iy, %bb.am ], [ %i.ja, %bb.an ]
  %i.jc = fsub double %i.is, %i.jb
  %i.jd = getelementptr [8 x i8], ptr %i.iq, i64 %.0114132.i.i
  store double %i.jc, ptr %i.jd, align 8, !tbaa !194
  %i.je = add nuw nsw i64 %.0114132.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.je, %.1179.i
  br i1 %exitcond145.not.i.i, label %.loopexit129.i.i, label %bb.ak, !llvm.loop !32

bb.ao:                                            ; preds = %.loopexit129.i.i
  %i.jf = shl nuw nsw i64 %.1179.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ho, i8 0, i64 %i.jf, i1 false)
  %i.jg = mul i64 %i.ia, %.lcssa881
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hr, i8 0, i64 %i.jg, i1 false)
  %xtraiter892 = and i64 %.1179.i, 1
  %unroll_iter897 = and i64 %.1179.i, -2
  %lcmp.mod894.not = icmp eq i64 %xtraiter892, 0
  %lcmp.mod896 = trunc i64 %.1179.i to i1
  br label %.new890

.new890:                                          ; preds = %bb.ay, %bb.ao
  %.0117137.i.i = phi i64 [ 0, %bb.ao ], [ %i.lc, %bb.ay ] ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.ph, i64 %.0117137.i.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !168
  %i.jj = zext i8 %i.ji to i64
  %i.jk = mul nuw nsw i64 %.1179.i, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0117137.i.i ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.new890
  %.0109135.i.i = phi i64 [ 0, %.new890 ], [ %i.kc, %bb.at ] ; 5 uses
  %.0112134.i.i = phi double [ f0x547D42AEA2879F2E, %.new890 ], [ %.1113.i.i.1, %bb.at ] ; 2 uses
  %niter898 = phi i64 [ 0, %.new890 ], [ %niter898.next.1, %bb.at ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.0109135.i.i
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !194
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.0109135.i.i ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !194
  %i.jr = fadd double %i.jo, %i.jq                ; 3 uses
  store double %i.jr, ptr %i.jp, align 8, !tbaa !194
  %i.js = fcmp olt double %i.jr, %.0112134.i.i
  br i1 %i.js, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jt = trunc i64 %.0109135.i.i to i8
  store i8 %i.jt, ptr %i.jm, align 1, !tbaa !168
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1113.i.i = phi double [ %i.jr, %bb.aq ], [ %.0112134.i.i, %bb.ap ] ; 2 uses
  %i.ju = or disjoint i64 %.0109135.i.i, 1        ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !194
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ju ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !194
  %i.jz = fadd double %i.jw, %i.jy                ; 3 uses
  store double %i.jz, ptr %i.jx, align 8, !tbaa !194
  %i.ka = fcmp olt double %i.jz, %.1113.i.i
  br i1 %i.ka, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kb = trunc i64 %i.ju to i8
  store i8 %i.kb, ptr %i.jm, align 1, !tbaa !168
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1113.i.i.1 = phi double [ %i.jz, %bb.as ], [ %.1113.i.i, %bb.ar ] ; 4 uses
  %i.kc = add nuw nsw i64 %.0109135.i.i, 2        ; 4 uses
  %niter898.next.1 = add nuw i64 %niter898, 2     ; 2 uses
  %niter898.ncmp.1 = icmp eq i64 %niter898.next.1, %unroll_iter897
  br i1 %niter898.ncmp.1, label %.unr-lcssa, label %bb.ap, !llvm.loop !33

.unr-lcssa:                                       ; preds = %bb.at
  br i1 %lcmp.mod894.not, label %.epilog-lcssa, label %.epil.preheader891

.epil.preheader891:                               ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod896)
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !194
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.kc ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !194
  %i.kh = fadd double %i.ke, %i.kg                ; 3 uses
  store double %i.kh, ptr %i.kf, align 8, !tbaa !194
  %i.ki = fcmp olt double %i.kh, %.1113.i.i.1
  br i1 %i.ki, label %bb.au, label %.epilog-lcssa

bb.au:                                            ; preds = %.epil.preheader891
  %i.kj = trunc i64 %i.kc to i8
  store i8 %i.kj, ptr %i.jm, align 1, !tbaa !168
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader891, %bb.au, %.unr-lcssa
  %.1113.i.i.lcssa = phi double [ %.1113.i.i.1, %.unr-lcssa ], [ %i.kh, %bb.au ], [ %.1113.i.i.1, %.epil.preheader891 ]
  %i.kk = mul i64 %.0117137.i.i, %i.ia
  %i.kl = icmp ult i64 %.0117137.i.i, 2000
  %i.km = uitofp nneg i64 %.0117137.i.i to double
  %i.kn = tail call nnan double @llvm.fmuladd.f64(double %i.km, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.ko = fmul nnan double %i.kn, 2.810000e+01
  %.0111.i.i = select i1 %i.kl, double %i.ko, double 2.810000e+01 ; 2 uses
  %i.kp = getelementptr i8, ptr %i.hr, i64 %i.kk
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.epilog-lcssa
  %.1110136.i.i = phi i64 [ 0, %.epilog-lcssa ], [ %i.lb, %bb.ax ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.1110136.i.i ; 3 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !194
  %i.ks = fsub double %i.kr, %.1113.i.i.lcssa     ; 2 uses
  store double %i.ks, ptr %i.kq, align 8, !tbaa !194
  %i.kt = fcmp ult double %i.ks, %.0111.i.i
  br i1 %i.kt, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ku = trunc i64 %.1110136.i.i to i8
  %i.kv = and i8 %i.ku, 7
  %i.kw = shl nuw i8 1, %i.kv
  store double %.0111.i.i, ptr %i.kq, align 8, !tbaa !194
  %i.kx = lshr i64 %.1110136.i.i, 3
  %i.ky = getelementptr i8, ptr %i.kp, i64 %i.kx  ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !168
  %i.la = or i8 %i.kz, %i.kw
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !168
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.lb = add nuw nsw i64 %.1110136.i.i, 1        ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %i.lb, %.1179.i
  br i1 %exitcond147.not.i.i, label %bb.ay, label %bb.av, !llvm.loop !34

bb.ay:                                            ; preds = %bb.ax
  %i.lc = add nuw i64 %.0117137.i.i, 1            ; 2 uses
  %exitcond148.not.i.i = icmp eq i64 %i.lc, %.lcssa881
  br i1 %exitcond148.not.i.i, label %.lr.ph.preheader.i.i, label %.new890, !llvm.loop !35

.lr.ph.preheader.i.i:                             ; preds = %bb.ay
  %i.ld = load i8, ptr %i.hy, align 1, !tbaa !168
  %i.le = mul i64 %i.ia, %i.hx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ba, %.lr.ph.preheader.i.i
  %.0142.i.i = phi i8 [ %.1.i159.i, %bb.ba ], [ %i.ld, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0107141.i.i = phi i64 [ %i.li, %bb.ba ], [ %i.le, %.lr.ph.preheader.i.i ]
  %.1118140.i.i = phi i64 [ %i.lh, %bb.ba ], [ %i.hx, %.lr.ph.preheader.i.i ]
  %.0119139.i.i = phi i64 [ %.1120.i.i, %bb.ba ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.lf = and i8 %.0142.i.i, 7
  %i.lg = shl nuw i8 1, %i.lf
  %i.lh = add i64 %.1118140.i.i, -1               ; 4 uses
  %i.li = sub i64 %.0107141.i.i, %i.ia            ; 2 uses
  %i.lj = lshr i8 %.0142.i.i, 3
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = getelementptr i8, ptr %i.hr, i64 %i.li
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.lk
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !168
  %i.lo = and i8 %i.ln, %i.lg
  %.not125.i.i = icmp eq i8 %i.lo, 0
  br i1 %.not125.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lh
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i = icmp ne i8 %.0142.i.i, %i.lq
  %i.lr = zext i1 %.not126.i.i to i64
  %spec.select.i158.i = add i64 %.0119139.i.i, %i.lr
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i.i
  %.1120.i.i = phi i64 [ %.0119139.i.i, %.lr.ph.i.i ], [ %spec.select.i158.i, %bb.az ] ; 2 uses
  %.1.i159.i = phi i8 [ %.0142.i.i, %.lr.ph.i.i ], [ %i.lq, %bb.az ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lh
  store i8 %.1.i159.i, ptr %i.ls, align 1, !tbaa !168
  %.not124.i.i = icmp eq i64 %i.lh, 0
  br i1 %.not124.i.i, label %FindBlocksLiteral.exit.i, label %.lr.ph.i.i, !llvm.loop !36

FindBlocksLiteral.exit.i:                         ; preds = %bb.ba, %.preheader.preheader.i.i
  %.0108.i.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %.1120.i.i, %bb.ba ] ; 19 uses
  %.not.i160.i = icmp eq i64 %.1179.i, 0
  br i1 %.not.i160.i, label %.preheader26.i.i.preheader, label %iter.check

iter.check:                                       ; preds = %FindBlocksLiteral.exit.i
  %min.iters.check = icmp ult i64 %.1179.i, 4
  br i1 %min.iters.check, label %.lr.ph.i161.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check713 = icmp ult i64 %.1179.i, 16
  br i1 %min.iters.check713, label %vec.epilog.ph, label %vector.ph714

vector.ph714:                                     ; preds = %vector.main.loop.iter.check
  %i.lt = and i64 %.1179.i, 12
  %n.vec = and i64 %.1179.i, -16                  ; 4 uses
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph714
  %index716 = phi i64 [ 0, %vector.ph714 ], [ %index.next717, %vector.body715 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index716 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <8 x i16> splat (i16 256), ptr %i.lu, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.lv, align 2, !tbaa !195
  %index.next717 = add nuw i64 %index716, 16      ; 2 uses
  %i.lw = icmp eq i64 %index.next717, %n.vec
  br i1 %i.lw, label %middle.block718, label %vector.body715, !llvm.loop !37

middle.block718:                                  ; preds = %vector.body715
  %cmp.n = icmp eq i64 %.1179.i, %n.vec
  br i1 %cmp.n, label %.preheader26.i.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block718
  %min.epilog.iters.check = icmp eq i64 %i.lt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i161.i.preheader, label %vec.epilog.ph, !prof !196

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec719 = and i64 %.1179.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index720 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next721, %vec.epilog.vector.body ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index720
  store <4 x i16> splat (i16 256), ptr %i.lx, align 2, !tbaa !195
  %index.next721 = add nuw i64 %index720, 4       ; 2 uses
  %i.ly = icmp eq i64 %index.next721, %n.vec719
  br i1 %i.ly, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n722 = icmp eq i64 %.1179.i, %n.vec719
  br i1 %cmp.n722, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i.preheader

.lr.ph.i161.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec719, %vec.epilog.middle.block ]
  br label %.lr.ph.i161.i

.lr.ph.i161.i:                                    ; preds = %.lr.ph.i161.i.preheader, %.lr.ph.i161.i
  %.027.i.i = phi i64 [ %i.ma, %.lr.ph.i161.i ], [ %.027.i.i.ph, %.lr.ph.i161.i.preheader ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %.027.i.i
  store i16 256, ptr %i.lz, align 2, !tbaa !195
  %i.ma = add nuw nsw i64 %.027.i.i, 1            ; 2 uses
  %exitcond.not.i162.i = icmp eq i64 %i.ma, %.1179.i
  br i1 %exitcond.not.i162.i, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i, !llvm.loop !39

.preheader26.i.i.preheader:                       ; preds = %FindBlocksLiteral.exit.i, %vec.epilog.middle.block, %middle.block718, %.lr.ph.i161.i
  br label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %bb.bd, %.preheader26.i.i.preheader
  %.129.i.i = phi i64 [ 0, %.preheader26.i.i.preheader ], [ %i.mq, %bb.bd ] ; 3 uses
  %.02328.i.i = phi i16 [ 0, %.preheader26.i.i.preheader ], [ %.124.i.i.1, %bb.bd ] ; 3 uses
  %niter905 = phi i64 [ 0, %.preheader26.i.i.preheader ], [ %niter905.next.1, %bb.bd ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !168
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.md ; 2 uses
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !195
  %i.mg = icmp eq i16 %i.mf, 256
  br i1 %i.mg, label %bb.bb, label %.preheader26.i.i.1

bb.bb:                                            ; preds = %.preheader26.i.i
  %i.mh = add i16 %.02328.i.i, 1
  store i16 %.02328.i.i, ptr %i.me, align 2, !tbaa !195
  br label %.preheader26.i.i.1

.preheader26.i.i.1:                               ; preds = %bb.bb, %.preheader26.i.i
  %.124.i.i = phi i16 [ %i.mh, %bb.bb ], [ %.02328.i.i, %.preheader26.i.i ] ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !168
  %i.ml = zext i8 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.ml ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !195
  %i.mo = icmp eq i16 %i.mn, 256
  br i1 %i.mo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader26.i.i.1
  %i.mp = add i16 %.124.i.i, 1
  store i16 %.124.i.i, ptr %i.mm, align 2, !tbaa !195
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader26.i.i.1
  %.124.i.i.1 = phi i16 [ %i.mp, %bb.bc ], [ %.124.i.i, %.preheader26.i.i.1 ] ; 5 uses
  %i.mq = add nuw i64 %.129.i.i, 2                ; 2 uses
  %niter905.next.1 = add i64 %niter905, 2         ; 2 uses
  %niter905.ncmp.1 = icmp eq i64 %niter905.next.1, %unroll_iter904
  br i1 %niter905.ncmp.1, label %.preheader.i.i.preheader.unr-lcssa, label %.preheader26.i.i, !llvm.loop !40

.preheader.i.i.preheader.unr-lcssa:               ; preds = %bb.bd
  br i1 %lcmp.mod901.not, label %.preheader.i.i.preheader.new, label %.preheader26.i.i.epil.preheader

.preheader26.i.i.epil.preheader:                  ; preds = %.preheader.i.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod903)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !168
  %i.mt = zext i8 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mt ; 2 uses
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !195
  %i.mw = icmp eq i16 %i.mv, 256
  br i1 %i.mw, label %bb.be, label %.preheader.i.i.preheader.new

bb.be:                                            ; preds = %.preheader26.i.i.epil.preheader
  %i.mx = add i16 %.124.i.i.1, 1
  store i16 %.124.i.i.1, ptr %i.mu, align 2, !tbaa !195
  br label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader.unr-lcssa, %bb.be, %.preheader26.i.i.epil.preheader
  %.124.i.i.lcssa = phi i16 [ %.124.i.i.1, %.preheader.i.i.preheader.unr-lcssa ], [ %i.mx, %bb.be ], [ %.124.i.i.1, %.preheader26.i.i.epil.preheader ] ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.230.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.nz, %.preheader.i.i ] ; 5 uses
  %niter911 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter911.next.3, %.preheader.i.i ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !168
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.na
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !195
  %i.nd = trunc i16 %i.nc to i8
  store i8 %i.nd, ptr %i.my, align 1, !tbaa !168
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1 ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !168
  %i.nh = zext i8 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !195
  %i.nk = trunc i16 %i.nj to i8
  store i8 %i.nk, ptr %i.nf, align 1, !tbaa !168
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 2 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !168
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.no
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !195
  %i.nr = trunc i16 %i.nq to i8
  store i8 %i.nr, ptr %i.nm, align 1, !tbaa !168
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 3 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !168
  %i.nv = zext i8 %i.nu to i64
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nv
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !195
  %i.ny = trunc i16 %i.nx to i8
  store i8 %i.ny, ptr %i.nt, align 1, !tbaa !168
  %i.nz = add nuw i64 %.230.i.i, 4                ; 2 uses
  %niter911.next.3 = add i64 %niter911, 4         ; 2 uses
  %niter911.ncmp.3 = icmp eq i64 %niter911.next.3, %unroll_iter910
  br i1 %niter911.ncmp.3, label %RemapBlockIdsLiteral.exit.i.unr-lcssa, label %.preheader.i.i, !llvm.loop !41

RemapBlockIdsLiteral.exit.i.unr-lcssa:            ; preds = %.preheader.i.i
  br i1 %lcmp.mod908.not, label %RemapBlockIdsLiteral.exit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %RemapBlockIdsLiteral.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod909)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.230.i.i.epil = phi i64 [ %i.og, %.preheader.i.i.epil ], [ %i.nz, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter907 = phi i64 [ %epil.iter907.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.oa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i.epil ; 2 uses
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !168
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !195
  %i.of = trunc i16 %i.oe to i8
  store i8 %i.of, ptr %i.oa, align 1, !tbaa !168
  %i.og = add nuw i64 %.230.i.i.epil, 1
  %epil.iter907.next = add i64 %epil.iter907, 1   ; 2 uses
  %epil.iter907.cmp.not = icmp eq i64 %epil.iter907.next, %xtraiter906
  br i1 %epil.iter907.cmp.not, label %RemapBlockIdsLiteral.exit.i, label %.preheader.i.i.epil, !llvm.loop !42

RemapBlockIdsLiteral.exit.i:                      ; preds = %.preheader.i.i.epil, %RemapBlockIdsLiteral.exit.i.unr-lcssa
  %i.oh = zext i16 %.124.i.i.lcssa to i64         ; 3 uses
  %.not.i164.i = icmp eq i16 %.124.i.i.lcssa, 0
  br i1 %.not.i164.i, label %ClearHistogramsLiteral.exit.i.i.preheader, label %.lr.ph.i165.i.preheader

.lr.ph.i165.i.preheader:                          ; preds = %RemapBlockIdsLiteral.exit.i
  %xtraiter912 = and i64 %i.oh, 3                 ; 3 uses
  %i.oi = icmp ult i16 %.124.i.i.lcssa, 4
  br i1 %i.oi, label %.lr.ph.i165.i.epil.preheader, label %.lr.ph.i165.i.preheader.new

.lr.ph.i165.i.preheader.new:                      ; preds = %.lr.ph.i165.i.preheader
  %unroll_iter916 = and i64 %i.oh, 65532
  br label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %.lr.ph.i165.i, %.lr.ph.i165.i.preheader.new
  %.0.i9.i.i = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %i.ou, %.lr.ph.i165.i ] ; 5 uses
  %niter917 = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %niter917.next.3, %.lr.ph.i165.i ]
  %i.oj = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.oj, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ok, align 8, !tbaa !172
  %i.ol = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1040
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.om, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.on, align 8, !tbaa !172
  %i.oo = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 2080
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.op, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.oq, align 8, !tbaa !172
  %i.or = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 3120
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.os, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ot, align 8, !tbaa !172
  %i.ou = add nuw nsw i64 %.0.i9.i.i, 4           ; 2 uses
  %niter917.next.3 = add i64 %niter917, 4         ; 2 uses
  %niter917.ncmp.3 = icmp eq i64 %niter917.next.3, %unroll_iter916
  br i1 %niter917.ncmp.3, label %ClearHistogramsLiteral.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i, !llvm.loop !21

ClearHistogramsLiteral.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i
  %lcmp.mod914.not = icmp eq i64 %xtraiter912, 0
  br i1 %lcmp.mod914.not, label %ClearHistogramsLiteral.exit.i.i.preheader, label %.lr.ph.i165.i.epil.preheader

.lr.ph.i165.i.epil.preheader:                     ; preds = %ClearHistogramsLiteral.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i.preheader
  %.0.i9.i.i.epil.init = phi i64 [ 0, %.lr.ph.i165.i.preheader ], [ %i.ou, %ClearHistogramsLiteral.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod915 = icmp ne i64 %xtraiter912, 0
  tail call void @llvm.assume(i1 %lcmp.mod915)
  br label %.lr.ph.i165.i.epil

.lr.ph.i165.i.epil:                               ; preds = %.lr.ph.i165.i.epil, %.lr.ph.i165.i.epil.preheader
  %.0.i9.i.i.epil = phi i64 [ %i.ox, %.lr.ph.i165.i.epil ], [ %.0.i9.i.i.epil.init, %.lr.ph.i165.i.epil.preheader ] ; 2 uses
  %epil.iter913 = phi i64 [ %epil.iter913.next, %.lr.ph.i165.i.epil ], [ 0, %.lr.ph.i165.i.epil.preheader ]
  %i.ov = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i.epil ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ov, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ow, align 8, !tbaa !172
  %i.ox = add nuw nsw i64 %.0.i9.i.i.epil, 1
  %epil.iter913.next = add i64 %epil.iter913, 1   ; 2 uses
  %epil.iter913.cmp.not = icmp eq i64 %epil.iter913.next, %xtraiter912
  br i1 %epil.iter913.cmp.not, label %ClearHistogramsLiteral.exit.i.i.preheader, label %.lr.ph.i165.i.epil, !llvm.loop !43

ClearHistogramsLiteral.exit.i.i.preheader:        ; preds = %RemapBlockIdsLiteral.exit.i, %.lr.ph.i165.i.epil, %ClearHistogramsLiteral.exit.i.i.preheader.loopexit.unr-lcssa
  br label %ClearHistogramsLiteral.exit.i.i

ClearHistogramsLiteral.exit.i.i:                  ; preds = %ClearHistogramsLiteral.exit.i.i, %ClearHistogramsLiteral.exit.i.i.preheader
  %.010.i.i = phi i64 [ 0, %ClearHistogramsLiteral.exit.i.i.preheader ], [ %i.pz, %ClearHistogramsLiteral.exit.i.i ] ; 4 uses
  %niter923 = phi i64 [ 0, %ClearHistogramsLiteral.exit.i.i.preheader ], [ %niter923.next.1, %ClearHistogramsLiteral.exit.i.i ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !168
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pa ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !168
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.pe ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !169
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.pf, align 4, !tbaa !169
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 1024 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !173
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !173
  %i.pl = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.pl
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !168
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.pl
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !168
  %i.ps = zext i8 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.ps ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !169
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.pt, align 4, !tbaa !169
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 1024 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !173
  %i.py = add i64 %i.px, 1
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !173
  %i.pz = add nuw i64 %.010.i.i, 2                ; 3 uses
  %niter923.next.1 = add i64 %niter923, 2         ; 2 uses
  %niter923.ncmp.1 = icmp eq i64 %niter923.next.1, %unroll_iter922
  br i1 %niter923.ncmp.1, label %BuildBlockHistogramsLiteral.exit.i.unr-lcssa, label %ClearHistogramsLiteral.exit.i.i, !llvm.loop !44

BuildBlockHistogramsLiteral.exit.i.unr-lcssa:     ; preds = %ClearHistogramsLiteral.exit.i.i
  br i1 %lcmp.mod920.not, label %BuildBlockHistogramsLiteral.exit.i, label %ClearHistogramsLiteral.exit.i.i.epil.preheader

ClearHistogramsLiteral.exit.i.i.epil.preheader:   ; preds = %BuildBlockHistogramsLiteral.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod921)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !168
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.qc ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.pz
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !168
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qg ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !169
  %i.qj = add i32 %i.qi, 1
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !169
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 1024 ; 2 uses
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !173
  %i.qm = add i64 %i.ql, 1
  store i64 %i.qm, ptr %i.qk, align 8, !tbaa !173
  br label %BuildBlockHistogramsLiteral.exit.i

BuildBlockHistogramsLiteral.exit.i:               ; preds = %BuildBlockHistogramsLiteral.exit.i.unr-lcssa, %ClearHistogramsLiteral.exit.i.i.epil.preheader
  %i.qn = add nuw nsw i64 %.0180.i, 1             ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.qn, %i.hw
  br i1 %exitcond.not.i65, label %bb.bf, label %bb.af, !llvm.loop !45

bb.bf:                                            ; preds = %BuildBlockHistogramsLiteral.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hm) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.ho) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hr) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.ht) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cs) #8
  %.not.i168.i = icmp eq i64 %.0108.i.i, 0        ; 5 uses
  br i1 %.not.i168.i, label %.thread.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qo = shl i64 %.0108.i.i, 2
  %i.qp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.qo) #8 ; 2 uses
  %i.qq = add i64 %.0108.i.i, 256                 ; 2 uses
  %.not388.i.i = icmp eq i64 %i.qq, 0
  br i1 %.not388.i.i, label %.thread411.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bg, %bb.bf
  %i.qr = phi i64 [ %i.qq, %bb.bg ], [ 256, %bb.bf ] ; 3 uses
  %i.qs = phi ptr [ %i.qp, %bb.bg ], [ null, %bb.bf ] ; 2 uses
  %i.qt = shl i64 %i.qr, 2
  %i.qu = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.qt) #8 ; 2 uses
  %i.qv = shl i64 %.0108.i.i, 4
  %i.qw = add i64 %i.qv, 1008
  %i.qx = lshr i64 %i.qw, 6                       ; 2 uses
  %.not389.i.i = icmp eq i64 %i.qx, 0
  br i1 %.not389.i.i, label %.thread409.i.i, label %.thread411.i.i

.thread411.i.i:                                   ; preds = %.thread.i.i, %bb.bg
  %.sink558.i.i = phi i64 [ %i.qx, %.thread.i.i ], [ 288230376151711695, %bb.bg ] ; 3 uses
  %i.qy = phi i64 [ %i.qr, %.thread.i.i ], [ 0, %bb.bg ]
  %i.qz = phi ptr [ %i.qs, %.thread.i.i ], [ %i.qp, %bb.bg ]
  %i.ra = phi ptr [ %i.qu, %.thread.i.i ], [ null, %bb.bg ]
  %i.rb = mul i64 %.sink558.i.i, 1040
  %i.rc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.rb) #8
  %i.rd = shl nuw nsw i64 %.sink558.i.i, 2
  %i.re = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.rd) #8
  br label %.thread409.i.i

.thread409.i.i:                                   ; preds = %.thread411.i.i, %.thread.i.i
  %i.rf = phi ptr [ %i.rc, %.thread411.i.i ], [ null, %.thread.i.i ] ; 2 uses
  %i.rg = phi i64 [ %i.qy, %.thread411.i.i ], [ %i.qr, %.thread.i.i ]
  %i.rh = phi ptr [ %i.qz, %.thread411.i.i ], [ %i.qs, %.thread.i.i ] ; 9 uses
  %i.ri = phi ptr [ %i.ra, %.thread411.i.i ], [ %i.qu, %.thread.i.i ] ; 10 uses
  %i.rj = phi i64 [ %.sink558.i.i, %.thread411.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.rk = phi ptr [ %i.re, %.thread411.i.i ], [ null, %.thread.i.i ] ; 2 uses
  br i1 %.not.i168.i, label %.new924, label %bb.bh

bb.bh:                                            ; preds = %.thread409.i.i
  %i.rl = tail call i64 @llvm.umin.i64(i64 %.0108.i.i, i64 64)
  %i.rm = mul nuw nsw i64 %i.rl, 1040
  %i.rn = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.rm) #8
  br label %.new924

.new924:                                          ; preds = %bb.bh, %.thread409.i.i
  %i.ro = phi ptr [ %i.rn, %bb.bh ], [ null, %.thread409.i.i ] ; 4 uses
  %i.rp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i = icmp eq ptr %i.ri, null
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ri, i64 1024 ; 5 uses
  %i.rr = select i1 %.not391.i.i, ptr null, ptr %i.rq ; 4 uses
  %i.rs = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 2080) #8 ; 10 uses
  %i.rt = shl i64 %i.rg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ri, i8 0, i64 %i.rt, i1 false)
  %xtraiter926 = and i64 %i.hx, 1
  %unroll_iter931 = and i64 %i.hx, -2
  br label %bb.bi

.preheader414.peel.begin.i.i.unr-lcssa:           ; preds = %bb.bi
  %lcmp.mod928.not = icmp eq i64 %xtraiter926, 0
  br i1 %lcmp.mod928.not, label %.preheader414.peel.begin.i.i, label %.epil.preheader925

.epil.preheader925:                               ; preds = %.preheader414.peel.begin.i.i.unr-lcssa
  %lcmp.mod930 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod930)
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %spec.select.i169.i.1 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !169
  %i.rw = add i32 %i.rv, 1
  store i32 %i.rw, ptr %i.ru, align 4, !tbaa !169
  %i.rx = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sv
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !168
  %i.rz = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 1
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !168
  %.not402.i.i.epil = icmp ne i8 %i.ry, %i.sb
  %i.sc = zext i1 %.not402.i.i.epil to i64
  %spec.select.i169.i.epil = add i64 %spec.select.i169.i.1, %i.sc
  br label %.preheader414.peel.begin.i.i

.preheader414.peel.begin.i.i:                     ; preds = %.preheader414.peel.begin.i.i.unr-lcssa, %.epil.preheader925
  %spec.select.i169.i.lcssa = phi i64 [ %spec.select.i169.i.1, %.preheader414.peel.begin.i.i.unr-lcssa ], [ %spec.select.i169.i.epil, %.epil.preheader925 ]
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %spec.select.i169.i.lcssa ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !169
  %i.sf = add i32 %i.se, 1
  store i32 %i.sf, ptr %i.sd, align 4, !tbaa !169
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ri, i64 256 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ri, i64 512 ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.ri, i64 768 ; 6 uses
  br i1 %.not.i168.i, label %._crit_edge445.i.i, label %.lr.ph422.i.i

bb.bi:                                            ; preds = %bb.bi, %.new924
  %.0345416.i.i = phi i64 [ 0, %.new924 ], [ %spec.select.i169.i.1, %bb.bi ] ; 2 uses
  %.0347415.i.i = phi i64 [ 0, %.new924 ], [ %i.sv, %bb.bi ] ; 3 uses
  %niter932 = phi i64 [ 0, %.new924 ], [ %niter932.next.1, %bb.bi ]
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %.0345416.i.i ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !169
  %i.sl = add i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !169
  %i.sm = or disjoint i64 %.0347415.i.i, 1        ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0347415.i.i
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !168
  %i.sp = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sm
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !168
  %.not402.i.i = icmp ne i8 %i.so, %i.sq
  %i.sr = zext i1 %.not402.i.i to i64
  %spec.select.i169.i = add i64 %.0345416.i.i, %i.sr ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %spec.select.i169.i ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !169
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !169
  %i.sv = add nuw i64 %.0347415.i.i, 2            ; 4 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sm
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !168
  %i.sy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sv
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !168
  %.not402.i.i.1 = icmp ne i8 %i.sx, %i.sz
  %i.ta = zext i1 %.not402.i.i.1 to i64
  %spec.select.i169.i.1 = add i64 %spec.select.i169.i, %i.ta ; 4 uses
  %niter932.next.1 = add nuw i64 %niter932, 2     ; 2 uses
  %niter932.ncmp.1 = icmp eq i64 %niter932.next.1, %unroll_iter931
  br i1 %niter932.ncmp.1, label %.preheader414.peel.begin.i.i.unr-lcssa, label %bb.bi, !llvm.loop !46

.lr.ph422.i.i:                                    ; preds = %.preheader414.peel.begin.i.i, %._crit_edge434.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge434.i.i ], [ %.0108.i.i, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.1348443.i.i = phi i64 [ %i.xt, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 4 uses
  %.0350442.i.i = phi i64 [ %.2352.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ]
  %.0356441.i.i = phi i64 [ %i.xs, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 2 uses
  %.0357440.i.i = phi ptr [ %.1358.i.i, %._crit_edge434.i.i ], [ %i.rk, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0359439.i.i = phi i64 [ %.1360.i.i, %._crit_edge434.i.i ], [ %i.rj, %.preheader414.peel.begin.i.i ] ; 5 uses
  %.0361438.i.i = phi i64 [ %.1362.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0363437.i.i = phi ptr [ %.1364.i.i, %._crit_edge434.i.i ], [ %i.rf, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0365436.i.i = phi i64 [ %.1366.i.i, %._crit_edge434.i.i ], [ %i.rj, %.preheader414.peel.begin.i.i ] ; 5 uses
  %.0367435.i.i = phi i64 [ %.1368.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 3 uses
  %i.tb = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax503.i.i = tail call i64 @llvm.umin.i64(i64 %i.tb, i64 64) ; 3 uses
  %i.tc = getelementptr [4 x i8], ptr %i.rq, i64 %.1348443.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i, %.lr.ph422.i.i
  %.0343420.i.i = phi i64 [ 0, %.lr.ph422.i.i ], [ %i.uo, %._crit_edge.i.i ] ; 7 uses
  %.1351419.i.i = phi i64 [ %.0350442.i.i, %.lr.ph422.i.i ], [ %.2352.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.td = getelementptr [4 x i8], ptr %i.tc, i64 %.0343420.i.i
  %i.te = load i32, ptr %i.td, align 4, !tbaa !169 ; 4 uses
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %i.tg = getelementptr inbounds nuw [1040 x i8], ptr %i.ro, i64 %.0343420.i.i ; 7 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 1024 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tg, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ti, align 8, !tbaa !172
  %.not486.i.i = icmp eq i32 %i.te, 0
  br i1 %.not486.i.i, label %._crit_edge.i.i, label %.lr.ph.i171.i.preheader

.lr.ph.i171.i.preheader:                          ; preds = %bb.bj
  %xtraiter933 = and i64 %i.tf, 1
  %i.tj = icmp eq i32 %i.te, 1
  br i1 %i.tj, label %.lr.ph.i171.i.epil.preheader, label %.lr.ph.i171.i.preheader.new

.lr.ph.i171.i.preheader.new:                      ; preds = %.lr.ph.i171.i.preheader
  %unroll_iter938 = and i64 %i.tf, 4294967294
  br label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %.lr.ph.i171.i, %.lr.ph.i171.i.preheader.new
  %i.tk = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %i.ua, %.lr.ph.i171.i ] ; 2 uses
  %.2352417.i.i = phi i64 [ %.1351419.i.i, %.lr.ph.i171.i.preheader.new ], [ %i.ts, %.lr.ph.i171.i ] ; 3 uses
  %niter939 = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %niter939.next.1, %.lr.ph.i171.i ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2352417.i.i
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !168
  %i.tn = zext i8 %i.tm to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tn ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !169
  %i.tq = add i32 %i.tp, 1
  store i32 %i.tq, ptr %i.to, align 4, !tbaa !169
  %i.tr = or disjoint i64 %i.tk, 1
  store i64 %i.tr, ptr %i.th, align 8, !tbaa !173
  %i.ts = add i64 %.2352417.i.i, 2                ; 3 uses
end_hunk_0
begin_hunk_1_@BrotliSplitBlock:bb.a

bb.cn:                                            ; preds = %bb.cm
  %i.aat = shl i64 %.0330.i.i, 2
  %i.aau = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.aat) #8 ; 2 uses
  %i.aav = load i64, ptr %i.aan, align 8, !tbaa !167 ; 2 uses
  %.not396.i.i = icmp eq i64 %i.aav, 0
  br i1 %.not396.i.i, label %.thread552.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aaw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !14
  %i.aay = shl i64 %i.aav, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aau, ptr align 4 %i.aax, i64 %i.aay, i1 false)
  br label %.thread552.i.i

.thread552.i.i:                                   ; preds = %bb.co, %bb.cn
  %i.aaz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.aba) #8
  store ptr %i.aau, ptr %i.aaz, align 8, !tbaa !14
  store i64 %.0330.i.i, ptr %i.aan, align 8, !tbaa !167
  br label %.lr.ph480.i.i

bb.cp:                                            ; preds = %bb.ck
  br i1 %.not.i168.i, label %ClusterBlocksLiteral.exit.i, label %.lr.ph480.i.i

.lr.ph480.i.i:                                    ; preds = %bb.cp, %.thread552.i.i
  %i.abb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.not549.i.i = icmp eq i64 %.0108.i.i, 1
  br i1 %.not549.i.i, label %._crit_edge481.loopexit.peel.begin.i.i, label %.lr.ph480.split.i.i

.lr.ph480.split.i.i:                              ; preds = %.lr.ph480.i.i
  %i.abd = add i64 %.0108.i.i, -2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.lr.ph480.split.i.i
  %.0478.i.i = phi i8 [ 0, %.lr.ph480.split.i.i ], [ %.1.i173.i, %bb.cr ] ; 2 uses
  %.0326477.i.i = phi i64 [ 0, %.lr.ph480.split.i.i ], [ %.1327.i.i, %bb.cr ] ; 4 uses
  %.0328476.i.i = phi i32 [ 0, %.lr.ph480.split.i.i ], [ %.1329.i.i, %bb.cr ]
  %.5475.i.i = phi i64 [ 0, %.lr.ph480.split.i.i ], [ %i.abh, %bb.cr ] ; 4 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %.5475.i.i
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !169
  %i.abg = add i32 %i.abf, %.0328476.i.i          ; 2 uses
  %i.abh = add nuw i64 %.5475.i.i, 1              ; 3 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %.5475.i.i
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !169 ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.abh
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !169
  %.not397.i.i = icmp eq i32 %i.abj, %i.abl
  br i1 %.not397.i.i, label %bb.cr, label %._crit_edge515.i.i

._crit_edge515.i.i:                               ; preds = %bb.cq
  %.phi.trans.insert516.i.i = zext i32 %i.abj to i64
  %.phi.trans.insert517.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %.phi.trans.insert516.i.i
  %.pre518.i.i = load i32, ptr %.phi.trans.insert517.i.i, align 4, !tbaa !169
  %i.abm = trunc i32 %.pre518.i.i to i8           ; 2 uses
  %i.abn = load ptr, ptr %i.abb, align 8, !tbaa !13
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %.0326477.i.i
  store i8 %i.abm, ptr %i.abo, align 1, !tbaa !168
  %i.abp = load ptr, ptr %i.abc, align 8, !tbaa !14
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %.0326477.i.i
  store i32 %i.abg, ptr %i.abq, align 4, !tbaa !169
  %i.abr = tail call i8 @llvm.umax.i8(i8 %.0478.i.i, i8 %i.abm)
  %i.abs = add i64 %.0326477.i.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %._crit_edge515.i.i, %bb.cq
  %.1329.i.i = phi i32 [ 0, %._crit_edge515.i.i ], [ %i.abg, %bb.cq ] ; 2 uses
  %.1327.i.i = phi i64 [ %i.abs, %._crit_edge515.i.i ], [ %.0326477.i.i, %bb.cq ] ; 2 uses
  %.1.i173.i = phi i8 [ %i.abr, %._crit_edge515.i.i ], [ %.0478.i.i, %bb.cq ] ; 2 uses
  %exitcond508.not.i.i = icmp eq i64 %.5475.i.i, %i.abd
  br i1 %exitcond508.not.i.i, label %._crit_edge481.loopexit.peel.begin.i.i, label %bb.cq, !llvm.loop !62

._crit_edge481.loopexit.peel.begin.i.i:           ; preds = %bb.cr, %.lr.ph480.i.i
  %i.abt = phi i8 [ 0, %.lr.ph480.i.i ], [ %.1.i173.i, %bb.cr ] ; 2 uses
  %i.abu = phi i64 [ 0, %.lr.ph480.i.i ], [ %.1327.i.i, %bb.cr ] ; 4 uses
  %i.abv = phi i32 [ 0, %.lr.ph480.i.i ], [ %.1329.i.i, %bb.cr ]
  %i.abw = phi i64 [ 0, %.lr.ph480.i.i ], [ %i.abh, %bb.cr ] ; 3 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !169
  %i.abz = add i32 %i.aby, %i.abv
  %i.aca = add nuw i64 %i.abw, 1                  ; 2 uses
  %i.acb = icmp eq i64 %i.aca, %.0108.i.i
  %.phi.trans.insert519.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.abw
  %.pre520.i.i = load i32, ptr %.phi.trans.insert519.i.i, align 4, !tbaa !169 ; 2 uses
  br i1 %i.acb, label %._crit_edge481.loopexit.peel.begin._crit_edge.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge481.loopexit.peel.begin.i.i
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.aca
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !169
  %.not397.peel.i.i = icmp eq i32 %.pre520.i.i, %i.acd
  br i1 %.not397.peel.i.i, label %._crit_edge481.loopexit.peel.next.i.i, label %._crit_edge481.loopexit.peel.begin._crit_edge.i.i

._crit_edge481.loopexit.peel.begin._crit_edge.i.i: ; preds = %bb.cs, %._crit_edge481.loopexit.peel.begin.i.i
  %i.ace = zext i32 %.pre520.i.i to i64
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.ace
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !169
  %i.ach = trunc i32 %i.acg to i8                 ; 2 uses
  %i.aci = load ptr, ptr %i.abb, align 8, !tbaa !13
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 %i.abu
  store i8 %i.ach, ptr %i.acj, align 1, !tbaa !168
  %i.ack = load ptr, ptr %i.abc, align 8, !tbaa !14
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %i.abu
  store i32 %i.abz, ptr %i.acl, align 4, !tbaa !169
  %i.acm = tail call i8 @llvm.umax.i8(i8 %i.abt, i8 %i.ach)
  %i.acn = add i64 %i.abu, 1
  br label %._crit_edge481.loopexit.peel.next.i.i

._crit_edge481.loopexit.peel.next.i.i:            ; preds = %._crit_edge481.loopexit.peel.begin._crit_edge.i.i, %bb.cs
  %.1327.peel.i.i = phi i64 [ %i.acn, %._crit_edge481.loopexit.peel.begin._crit_edge.i.i ], [ %i.abu, %bb.cs ]
  %.1.peel.i.i = phi i8 [ %i.acm, %._crit_edge481.loopexit.peel.begin._crit_edge.i.i ], [ %i.abt, %bb.cs ]
  %i.aco = zext i8 %.1.peel.i.i to i64
  %i.acp = add nuw nsw i64 %i.aco, 1
  br label %ClusterBlocksLiteral.exit.i

ClusterBlocksLiteral.exit.i:                      ; preds = %._crit_edge481.loopexit.peel.next.i.i, %bb.cp
  %.0326.lcssa.i.i = phi i64 [ 0, %bb.cp ], [ %.1327.peel.i.i, %._crit_edge481.loopexit.peel.next.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.cp ], [ %i.acp, %._crit_edge481.loopexit.peel.next.i.i ]
  %i.acq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0326.lcssa.i.i, ptr %i.acq, align 8, !tbaa !166
  store i64 %.0.lcssa.i.i, ptr %7, align 8, !tbaa !164
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.yp) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.ri) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.rh) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hi) #8
  br label %SplitByteVectorLiteral.exit

SplitByteVectorLiteral.exit:                      ; preds = %.thread472, %ClusterBlocksLiteral.exit.i
  %i.acr = phi ptr [ %i.ba, %.thread472 ], [ %.ph, %ClusterBlocksLiteral.exit.i ]
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.acr) #8
  br i1 %.not.i, label %.thread658, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %SplitByteVectorLiteral.exit.thread, %SplitByteVectorLiteral.exit
  %i.acs = shl i64 %2, 1                          ; 2 uses
  %i.act = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.acs) #8 ; 20 uses
  %min.iters.check741 = icmp ult i64 %2, 17
  br i1 %min.iters.check741, label %.lr.ph.preheader873, label %vector.memcheck733

vector.memcheck733:                               ; preds = %.lr.ph.preheader
  %scevgep734 = getelementptr i8, ptr %i.act, i64 %i.acs
  %scevgep735 = getelementptr i8, ptr %1, i64 12
  %i.acu = shl i64 %2, 4
  %i.acv = getelementptr i8, ptr %1, i64 %i.acu
  %scevgep736 = getelementptr i8, ptr %i.acv, i64 -2
  %bound0737 = icmp ult ptr %i.act, %scevgep736
  %bound1738 = icmp ult ptr %scevgep735, %scevgep734
  %found.conflict739 = and i1 %bound0737, %bound1738
  br i1 %found.conflict739, label %.lr.ph.preheader873, label %vector.ph742

vector.ph742:                                     ; preds = %vector.memcheck733
  %i.acw = and i64 %2, 7                          ; 2 uses
  %i.acx = icmp eq i64 %i.acw, 0
  %i.acy = select i1 %i.acx, i64 8, i64 %i.acw
  %n.vec743 = sub i64 %2, %i.acy                  ; 2 uses
  br label %vector.body744

vector.body744:                                   ; preds = %vector.body744, %vector.ph742
  %index745 = phi i64 [ 0, %vector.ph742 ], [ %index.next746, %vector.body744 ] ; 10 uses
  %i.acz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.ada = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.adb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.add = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.adg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index745
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acz, i64 12
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ada, i64 28
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 44
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adc, i64 60
  %i.adl = getelementptr inbounds nuw i8, ptr %i.add, i64 76
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 92
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adf, i64 108
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 124
  %i.adp = load i16, ptr %i.adh, align 4, !tbaa !200, !alias.scope !201
  %i.adq = load i16, ptr %i.adi, align 4, !tbaa !200, !alias.scope !201
  %i.adr = load i16, ptr %i.adj, align 4, !tbaa !200, !alias.scope !201
  %i.ads = load i16, ptr %i.adk, align 4, !tbaa !200, !alias.scope !201
  %i.adt = load i16, ptr %i.adl, align 4, !tbaa !200, !alias.scope !201
  %i.adu = load i16, ptr %i.adm, align 4, !tbaa !200, !alias.scope !201
  %i.adv = load i16, ptr %i.adn, align 4, !tbaa !200, !alias.scope !201
  %i.adw = load i16, ptr %i.ado, align 4, !tbaa !200, !alias.scope !201
  %i.adx = insertelement <8 x i16> poison, i16 %i.adp, i64 0
  %i.ady = insertelement <8 x i16> %i.adx, i16 %i.adq, i64 1
  %i.adz = insertelement <8 x i16> %i.ady, i16 %i.adr, i64 2
  %i.aea = insertelement <8 x i16> %i.adz, i16 %i.ads, i64 3
  %i.aeb = insertelement <8 x i16> %i.aea, i16 %i.adt, i64 4
  %i.aec = insertelement <8 x i16> %i.aeb, i16 %i.adu, i64 5
  %i.aed = insertelement <8 x i16> %i.aec, i16 %i.adv, i64 6
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 7
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %index745
  store <8 x i16> %i.aee, ptr %i.aef, align 2, !tbaa !195, !alias.scope !202, !noalias !201
  %index.next746 = add nuw i64 %index745, 8       ; 2 uses
  %i.aeg = icmp eq i64 %index.next746, %n.vec743
  br i1 %i.aeg, label %.lr.ph.preheader873, label %vector.body744, !llvm.loop !66

.lr.ph.preheader873:                              ; preds = %vector.body744, %vector.memcheck733, %.lr.ph.preheader
  %.055499.ph = phi i64 [ 0, %vector.memcheck733 ], [ 0, %.lr.ph.preheader ], [ %n.vec743, %vector.body744 ] ; 4 uses
  %i.aeh = sub i64 %2, %.055499.ph
  %i.aei = add i64 %2, -1                         ; 5 uses
  %i.aej = sub i64 %i.aei, %.055499.ph
  %xtraiter947 = and i64 %i.aeh, 3                ; 2 uses
  %lcmp.mod948.not = icmp eq i64 %xtraiter947, 0
  br i1 %lcmp.mod948.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader873, %.lr.ph.prol
  %.055499.prol = phi i64 [ %i.aeo, %.lr.ph.prol ], [ %.055499.ph, %.lr.ph.preheader873 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader873 ]
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055499.prol
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 12
  %i.aem = load i16, ptr %i.ael, align 4, !tbaa !200
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %.055499.prol
  store i16 %i.aem, ptr %i.aen, align 2, !tbaa !195
  %i.aeo = add nuw i64 %.055499.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter947
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !67

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader873
  %.055499.unr = phi i64 [ %.055499.ph, %.lr.ph.preheader873 ], [ %i.aeo, %.lr.ph.prol ]
  %i.aep = icmp ult i64 %i.aej, 3
  br i1 %i.aep, label %.unr-lcssa949, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.055499 = phi i64 [ %i.afj, %.lr.ph ], [ %.055499.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aeq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055499
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 12
  %i.aes = load i16, ptr %i.aer, align 4, !tbaa !200
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %.055499
  store i16 %i.aes, ptr %i.aet, align 2, !tbaa !195
  %i.aeu = add nuw i64 %.055499, 1                ; 2 uses
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 12
  %i.aex = load i16, ptr %i.aew, align 4, !tbaa !200
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.aeu
  store i16 %i.aex, ptr %i.aey, align 2, !tbaa !195
  %i.aez = add nuw i64 %.055499, 2                ; 2 uses
  %i.afa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 12
  %i.afc = load i16, ptr %i.afb, align 4, !tbaa !200
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.aez
  store i16 %i.afc, ptr %i.afd, align 2, !tbaa !195
  %i.afe = add nuw i64 %.055499, 3                ; 2 uses
  %i.aff = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 12
  %i.afh = load i16, ptr %i.afg, align 4, !tbaa !200
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.afe
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !195
  %i.afj = add nuw i64 %.055499, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.afj, %2
  br i1 %exitcond.not.3, label %.unr-lcssa949, label %.lr.ph, !llvm.loop !68

.thread658:                                       ; preds = %SplitByteVectorLiteral.exit
  store i64 1, ptr %8, align 8, !tbaa !164
  tail call void @BrotliFree(ptr noundef %0, ptr noundef null) #8
  br label %.thread667

.unr-lcssa949:                                    ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lhs.trunc.i66 = trunc i64 %2 to i16
  %i.afk = udiv i16 %.lhs.trunc.i66, 530
  %narrow.i67 = add nuw nsw i16 %i.afk, 1
  %i.afl = zext nneg i16 %narrow.i67 to i64
  %i.afm = icmp ugt i64 %2, 26499
  %spec.select.i68 = select i1 %i.afm, i64 50, i64 %i.afl ; 17 uses
  %i.afn = icmp ult i64 %2, 128
  br i1 %i.afn, label %bb.ct, label %bb.df

bb.ct:                                            ; preds = %.unr-lcssa949
  %i.afo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !165 ; 3 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !166 ; 2 uses
  %i.afs = add i64 %i.afr, 1                      ; 4 uses
  %i.aft = icmp ult i64 %i.afp, %i.afs
  br i1 %i.aft, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.afu = icmp eq i64 %i.afp, 0
  %..i235 = select i1 %i.afu, i64 %i.afs, i64 %i.afp
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %bb.cu
  %.0136.i236 = phi i64 [ %..i235, %bb.cu ], [ %i.afw, %bb.cv ] ; 4 uses
  %i.afv = icmp ult i64 %.0136.i236, %i.afs
  %i.afw = shl i64 %.0136.i236, 1
  br i1 %i.afv, label %bb.cv, label %bb.cw, !llvm.loop !69

bb.cw:                                            ; preds = %bb.cv
  %i.afx = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.0136.i236) #8 ; 2 uses
  %i.afy = load i64, ptr %i.afo, align 8, !tbaa !165 ; 2 uses
  %.not151.i237 = icmp eq i64 %i.afy, 0
  br i1 %.not151.i237, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.afz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afx, ptr align 1 %i.aga, i64 %i.afy, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.agb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !13
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.agc) #8
  store ptr %i.afx, ptr %i.agb, align 8, !tbaa !13
  store i64 %.0136.i236, ptr %i.afo, align 8, !tbaa !165
  %.pre.i238 = load i64, ptr %i.afq, align 8, !tbaa !166 ; 2 uses
  %.pre189.i = add i64 %.pre.i238, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ct
  %.pre-phi.i231 = phi i64 [ %.pre189.i, %bb.cy ], [ %i.afs, %bb.ct ] ; 3 uses
  %i.agd = phi i64 [ %.pre.i238, %bb.cy ], [ %i.afr, %bb.ct ]
  %i.age = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !167 ; 3 uses
  %i.agg = icmp ult i64 %i.agf, %.pre-phi.i231
  br i1 %i.agg, label %bb.da, label %.thread659

bb.da:                                            ; preds = %bb.cz
  %i.agh = icmp eq i64 %i.agf, 0
  %.154.i232 = select i1 %i.agh, i64 %.pre-phi.i231, i64 %i.agf
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.0135.i233 = phi i64 [ %.154.i232, %bb.da ], [ %i.agj, %bb.db ] ; 4 uses
  %i.agi = icmp ult i64 %.0135.i233, %.pre-phi.i231
  %i.agj = shl i64 %.0135.i233, 1
  br i1 %i.agi, label %bb.db, label %bb.dc, !llvm.loop !70

bb.dc:                                            ; preds = %bb.db
  %i.agk = shl i64 %.0135.i233, 2
  %i.agl = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.agk) #8 ; 2 uses
  %i.agm = load i64, ptr %i.age, align 8, !tbaa !167 ; 2 uses
  %.not153.i234 = icmp eq i64 %i.agm, 0
  br i1 %.not153.i234, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.agn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !14
  %i.agp = shl i64 %i.agm, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.agl, ptr align 4 %i.ago, i64 %i.agp, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.agq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !14
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.agr) #8
  store ptr %i.agl, ptr %i.agq, align 8, !tbaa !14
  store i64 %.0135.i233, ptr %i.age, align 8, !tbaa !167
  %.pre188.i = load i64, ptr %i.afq, align 8, !tbaa !166
  br label %.thread659

.thread659:                                       ; preds = %bb.de, %bb.cz
  %i.ags = phi i64 [ %.pre188.i, %bb.de ], [ %i.agd, %bb.cz ]
  store i64 1, ptr %8, align 8, !tbaa !164
  %i.agt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !13
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.ags
  store i8 0, ptr %i.agv, align 1, !tbaa !168
  %i.agw = trunc nuw nsw i64 %2 to i32
  %i.agx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !14
  %i.agz = load i64, ptr %i.afq, align 8, !tbaa !166 ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %i.agz
  store i32 %i.agw, ptr %i.aha, align 4, !tbaa !169
  %i.ahb = add i64 %i.agz, 1
  store i64 %i.ahb, ptr %i.afq, align 8, !tbaa !166
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.act) #8
  %.pre = shl nuw nsw i64 %2, 1
  %i.ahc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.pre) #8
  br label %.lr.ph503.preheader

bb.df:                                            ; preds = %.unr-lcssa949
  %i.ahd = mul nuw nsw i64 %spec.select.i68, 2832
  %i.ahe = add nuw nsw i64 %i.ahd, 2832
  %i.ahf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ahe) #8 ; 20 uses
  %xtraiter952 = and i64 %spec.select.i68, 3      ; 3 uses
  %i.ahg = icmp samesign ult i64 %spec.select.i68, 4
  br i1 %i.ahg, label %.epil.preheader951, label %.new950

.new950:                                          ; preds = %bb.df
  %unroll_iter956 = and i64 %spec.select.i68, 252
  br label %bb.dh

ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa: ; preds = %bb.dh
  %lcmp.mod954.not = icmp eq i64 %xtraiter952, 0
  br i1 %lcmp.mod954.not, label %ClearHistogramsCommand.exit.preheader.i.i, label %.epil.preheader951

.epil.preheader951:                               ; preds = %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa, %bb.df
  %.0.i28.i.i69.epil.init = phi i64 [ 0, %bb.df ], [ %i.ahx, %ClearHistogramsCommand.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod955 = icmp ne i64 %xtraiter952, 0
  tail call void @llvm.assume(i1 %lcmp.mod955)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.epil.preheader951
  %.0.i28.i.i69.epil = phi i64 [ %.0.i28.i.i69.epil.init, %.epil.preheader951 ], [ %i.ahj, %bb.dg ] ; 2 uses
  %epil.iter953 = phi i64 [ 0, %.epil.preheader951 ], [ %epil.iter953.next, %bb.dg ]
  %i.ahh = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i28.i.i69.epil ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahh, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahi, align 8, !tbaa !204
end_hunk_1
begin_hunk_2_@BrotliSplitBlock:bb.a
  store i32 %i.ayl, ptr %i.ayj, align 4, !tbaa !169
  %i.aym = getelementptr inbounds nuw i8, ptr %i.asf, i64 56
  %i.ayn = load i16, ptr %i.ayg, align 2, !tbaa !195
  %i.ayo = zext i16 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.ayo ; 2 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !169
  %i.ayr = add i32 %i.ayq, 1
  store i32 %i.ayr, ptr %i.ayp, align 4, !tbaa !169
  %i.ays = getelementptr inbounds nuw i8, ptr %i.asf, i64 58
  %i.ayt = load i16, ptr %i.aym, align 2, !tbaa !195
  %i.ayu = zext i16 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.ayu ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !169
  %i.ayx = add i32 %i.ayw, 1
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !169
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.asf, i64 60
  %i.ayz = load i16, ptr %i.ays, align 2, !tbaa !195
  %i.aza = zext i16 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.aza ; 2 uses
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !169
  %i.azd = add i32 %i.azc, 1
  store i32 %i.azd, ptr %i.azb, align 4, !tbaa !169
  %i.aze = getelementptr inbounds nuw i8, ptr %i.asf, i64 62
  %i.azf = load i16, ptr %i.ayy, align 2, !tbaa !195
  %i.azg = zext i16 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.azg ; 2 uses
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !169
  %i.azj = add i32 %i.azi, 1
  store i32 %i.azj, ptr %i.azh, align 4, !tbaa !169
  %i.azk = getelementptr inbounds nuw i8, ptr %i.asf, i64 64
  %i.azl = load i16, ptr %i.aze, align 2, !tbaa !195
  %i.azm = zext i16 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.azm ; 2 uses
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !169
  %i.azp = add i32 %i.azo, 1
  store i32 %i.azp, ptr %i.azn, align 4, !tbaa !169
  %i.azq = getelementptr inbounds nuw i8, ptr %i.asf, i64 66
  %i.azr = load i16, ptr %i.azk, align 2, !tbaa !195
  %i.azs = zext i16 %i.azr to i64
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.azs ; 2 uses
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !169
  %i.azv = add i32 %i.azu, 1
  store i32 %i.azv, ptr %i.azt, align 4, !tbaa !169
  %i.azw = getelementptr inbounds nuw i8, ptr %i.asf, i64 68
  %i.azx = load i16, ptr %i.azq, align 2, !tbaa !195
  %i.azy = zext i16 %i.azx to i64
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.azy ; 2 uses
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !169
  %i.bab = add i32 %i.baa, 1
  store i32 %i.bab, ptr %i.azz, align 4, !tbaa !169
  %i.bac = getelementptr inbounds nuw i8, ptr %i.asf, i64 70
  %i.bad = load i16, ptr %i.azw, align 2, !tbaa !195
  %i.bae = zext i16 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bae ; 2 uses
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !169
  %i.bah = add i32 %i.bag, 1
  store i32 %i.bah, ptr %i.baf, align 4, !tbaa !169
  %i.bai = getelementptr inbounds nuw i8, ptr %i.asf, i64 72
  %i.baj = load i16, ptr %i.bac, align 2, !tbaa !195
  %i.bak = zext i16 %i.baj to i64
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bak ; 2 uses
  %i.bam = load i32, ptr %i.bal, align 4, !tbaa !169
  %i.ban = add i32 %i.bam, 1
  store i32 %i.ban, ptr %i.bal, align 4, !tbaa !169
  %i.bao = getelementptr inbounds nuw i8, ptr %i.asf, i64 74
  %i.bap = load i16, ptr %i.bai, align 2, !tbaa !195
  %i.baq = zext i16 %i.bap to i64
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.baq ; 2 uses
  %i.bas = load i32, ptr %i.bar, align 4, !tbaa !169
  %i.bat = add i32 %i.bas, 1
  store i32 %i.bat, ptr %i.bar, align 4, !tbaa !169
  %i.bau = getelementptr inbounds nuw i8, ptr %i.asf, i64 76
  %i.bav = load i16, ptr %i.bao, align 2, !tbaa !195
  %i.baw = zext i16 %i.bav to i64
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.baw ; 2 uses
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !169
  %i.baz = add i32 %i.bay, 1
  store i32 %i.baz, ptr %i.bax, align 4, !tbaa !169
  %i.bba = getelementptr inbounds nuw i8, ptr %i.asf, i64 78
  %i.bbb = load i16, ptr %i.bau, align 2, !tbaa !195
  %i.bbc = zext i16 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bbc ; 2 uses
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !169
  %i.bbf = add i32 %i.bbe, 1
  store i32 %i.bbf, ptr %i.bbd, align 4, !tbaa !169
  %i.bbg = load i16, ptr %i.bba, align 2, !tbaa !195
  %i.bbh = zext i16 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bbh ; 2 uses
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !169
  %i.bbk = add i32 %i.bbj, 1
  store i32 %i.bbk, ptr %i.bbi, align 4, !tbaa !169
  %i.bbl = urem i64 %.020.i.i79, %spec.select.i68
  %.idx855 = mul nuw nsw i64 %i.bbl, 2832         ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %.idx855 ; 8 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 2816 ; 2 uses
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !205
  %i.bbp = add i64 %i.bbo, 40
  store i64 %i.bbp, ptr %i.bbn, align 8, !tbaa !205
  %bound0751 = icmp ult ptr %i.bbm, %scevgep750
  %i.bbq = add nuw nsw i64 %.idx855, 2816
  %bound1752 = icmp samesign ult i64 %.idx854, %i.bbq
  %found.conflict753 = and i1 %bound0751, %bound1752
  br i1 %found.conflict753, label %scalar.ph754, label %vector.body756

vector.body756:                                   ; preds = %vector.memcheck749, %vector.body756
  %index757 = phi i64 [ %index.next762.1, %vector.body756 ], [ 0, %vector.memcheck749 ] ; 4 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %index757 ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %wide.load758 = load <4 x i32>, ptr %i.bbr, align 4, !tbaa !169, !alias.scope !206
  %wide.load759 = load <4 x i32>, ptr %i.bbs, align 4, !tbaa !169, !alias.scope !206
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %index757 ; 3 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16 ; 2 uses
  %wide.load760 = load <4 x i32>, ptr %i.bbt, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %wide.load761 = load <4 x i32>, ptr %i.bbu, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %i.bbv = add <4 x i32> %wide.load760, %wide.load758
  %i.bbw = add <4 x i32> %wide.load761, %wide.load759
  store <4 x i32> %i.bbv, ptr %i.bbt, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  store <4 x i32> %i.bbw, ptr %i.bbu, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %index.next762 = or disjoint i64 %index757, 8   ; 2 uses
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %index.next762 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %wide.load758.1 = load <4 x i32>, ptr %i.bbx, align 4, !tbaa !169, !alias.scope !206
  %wide.load759.1 = load <4 x i32>, ptr %i.bby, align 4, !tbaa !169, !alias.scope !206
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %index.next762 ; 3 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 16 ; 2 uses
  %wide.load760.1 = load <4 x i32>, ptr %i.bbz, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %wide.load761.1 = load <4 x i32>, ptr %i.bca, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %i.bcb = add <4 x i32> %wide.load760.1, %wide.load758.1
  %i.bcc = add <4 x i32> %wide.load761.1, %wide.load759.1
  store <4 x i32> %i.bcb, ptr %i.bbz, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  store <4 x i32> %i.bcc, ptr %i.bca, align 4, !tbaa !169, !alias.scope !207, !noalias !206
  %index.next762.1 = add nuw nsw i64 %index757, 16 ; 2 uses
  %i.bcd = icmp eq i64 %index.next762.1, 704
  br i1 %i.bcd, label %HistogramAddHistogramCommand.exit.i.i, label %vector.body756, !llvm.loop !77

scalar.ph754:                                     ; preds = %vector.memcheck749, %scalar.ph754
  %.0.i18.i.i81 = phi i64 [ %i.bdb, %scalar.ph754 ], [ 0, %vector.memcheck749 ] ; 6 uses
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %.0.i18.i.i81
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !169
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0.i18.i.i81 ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !169
  %i.bci = add i32 %i.bch, %i.bcf
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !169
  %i.bcj = or disjoint i64 %.0.i18.i.i81, 1       ; 2 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bcj
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !169
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %i.bcj ; 2 uses
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !169
  %i.bco = add i32 %i.bcn, %i.bcl
  store i32 %i.bco, ptr %i.bcm, align 4, !tbaa !169
  %i.bcp = or disjoint i64 %.0.i18.i.i81, 2       ; 2 uses
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bcp
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !169
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %i.bcp ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !169
  %i.bcu = add i32 %i.bct, %i.bcr
  store i32 %i.bcu, ptr %i.bcs, align 4, !tbaa !169
  %i.bcv = or disjoint i64 %.0.i18.i.i81, 3       ; 2 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !169
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %i.bcv ; 2 uses
  %i.bcz = load i32, ptr %i.bcy, align 4, !tbaa !169
  %i.bda = add i32 %i.bcz, %i.bcx
  store i32 %i.bda, ptr %i.bcy, align 4, !tbaa !169
  %i.bdb = add nuw nsw i64 %.0.i18.i.i81, 4       ; 2 uses
  %exitcond.not.i155.i82.3 = icmp eq i64 %i.bdb, 704
  br i1 %exitcond.not.i155.i82.3, label %HistogramAddHistogramCommand.exit.i.i, label %scalar.ph754, !llvm.loop !78

HistogramAddHistogramCommand.exit.i.i:            ; preds = %vector.body756, %scalar.ph754
  %i.bdc = add nuw i64 %.020.i.i79, 1             ; 2 uses
  %exitcond21.not.i.i83 = icmp eq i64 %i.bdc, %i.arw
  br i1 %exitcond21.not.i.i83, label %RefineEntropyCodesCommand.exit.i, label %vector.memcheck749, !llvm.loop !79

RefineEntropyCodesCommand.exit.i:                 ; preds = %HistogramAddHistogramCommand.exit.i.i
  %i.bdd = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %2) #8 ; 23 uses
  %i.bde = add nuw nsw i64 %spec.select.i68, 7
  %i.bdf = lshr i64 %i.bde, 3
  %i.bdg = mul nuw nsw i64 %spec.select.i68, 5632
  %i.bdh = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bdg) #8 ; 6 uses
  %i.bdi = shl nuw nsw i64 %spec.select.i68, 3
  %i.bdj = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bdi) #8 ; 6 uses
  %i.bdk = mul i64 %i.bdf, %2                     ; 2 uses
  %.not.i84 = icmp eq i64 %i.bdk, 0
  br i1 %.not.i84, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %RefineEntropyCodesCommand.exit.i
  %i.bdl = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bdk) #8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %RefineEntropyCodesCommand.exit.i
  %i.bdm = phi ptr [ %i.bdl, %bb.dk ], [ null, %RefineEntropyCodesCommand.exit.i ] ; 4 uses
  %i.bdn = shl nuw nsw i64 %spec.select.i68, 1
  %i.bdo = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bdn) #8 ; 12 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !193
  %.inv.i85 = icmp sgt i32 %i.bdq, 10
  %i.bdr = select i1 %.inv.i85, i64 10, i64 3
  %i.bds = add i64 %2, -1                         ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bds
  %xtraiter969 = and i64 %2, 1
  %unroll_iter974 = and i64 %2, -2
  %lcmp.mod971.not = icmp eq i64 %xtraiter969, 0
  %lcmp.mod973 = trunc i64 %2 to i1
  %xtraiter976 = and i64 %2, 3                    ; 3 uses
  %i.bdu = icmp ult i64 %i.aei, 3
  %unroll_iter980 = and i64 %2, -4
  %lcmp.mod978.not = icmp eq i64 %xtraiter976, 0
  %lcmp.mod979 = icmp ne i64 %xtraiter976, 0
  %xtraiter988 = and i64 %2, 1
  %unroll_iter992 = and i64 %2, -2
  %lcmp.mod990.not = icmp eq i64 %xtraiter988, 0
  %lcmp.mod991 = trunc i64 %2 to i1
  br label %bb.dm

bb.dm:                                            ; preds = %BuildBlockHistogramsCommand.exit.i, %bb.dl
  %.0181.i = phi i64 [ 0, %bb.dl ], [ %i.bmj, %BuildBlockHistogramsCommand.exit.i ]
  %.1180.i = phi i64 [ %spec.select.i68, %bb.dl ], [ %i.bkd, %BuildBlockHistogramsCommand.exit.i ] ; 21 uses
  %i.bdv = add nuw nsw i64 %.1180.i, 7
  %i.bdw = lshr i64 %i.bdv, 3                     ; 4 uses
  %i.bdx = icmp samesign ult i64 %.1180.i, 2
  br i1 %i.bdx, label %.preheader.preheader.i.i230, label %bb.dn

.preheader.preheader.i.i230:                      ; preds = %bb.dm
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bdd, i8 0, i64 range(i64 128, 0) %2, i1 false), !tbaa !168
  br label %FindBlocksCommand.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.bdy = mul nuw nsw i64 %.1180.i, 5632
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdh, i8 0, i64 %i.bdy, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %FastLog2.exit.i.i87, %bb.dn
  %.1116131.i.i86 = phi i64 [ 0, %bb.dn ], [ %i.bej, %FastLog2.exit.i.i87 ] ; 3 uses
  %i.bdz = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.1116131.i.i86
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 2816
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !205
  %i.bec = and i64 %i.beb, 4294967295             ; 3 uses
  %i.bed = icmp samesign ult i64 %i.bec, 256
  br i1 %i.bed, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.bee = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.bec
  %i.bef = load double, ptr %i.bee, align 8, !tbaa !194
  br label %FastLog2.exit.i.i87

bb.dq:                                            ; preds = %bb.do
  %i.beg = uitofp nneg i64 %i.bec to double
  %i.beh = tail call double @log2(double noundef %i.beg) #8
  br label %FastLog2.exit.i.i87

FastLog2.exit.i.i87:                              ; preds = %bb.dq, %bb.dp
  %.0.i.i.i88 = phi double [ %i.bef, %bb.dp ], [ %i.beh, %bb.dq ]
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.bdh, i64 %.1116131.i.i86
  store double %.0.i.i.i88, ptr %i.bei, align 8, !tbaa !194
  %i.bej = add nuw nsw i64 %.1116131.i.i86, 1     ; 2 uses
  %exitcond.not.i156.i89 = icmp eq i64 %i.bej, %.1180.i
  br i1 %exitcond.not.i156.i89, label %.preheader130.i.i90, label %bb.do, !llvm.loop !80

.loopexit129.i.i97:                               ; preds = %BitCost.exit.i.i95
  %.not.i157.i98 = icmp eq i64 %i.bek, 0
  br i1 %.not.i157.i98, label %bb.dv, label %.preheader130.i.i90, !llvm.loop !81

.preheader130.i.i90:                              ; preds = %FastLog2.exit.i.i87, %.loopexit129.i.i97
  %.2133.i.i91 = phi i64 [ %i.bek, %.loopexit129.i.i97 ], [ 704, %FastLog2.exit.i.i87 ]
  %i.bek = add nsw i64 %.2133.i.i91, -1           ; 4 uses
  %invariant.gep.i.i92 = getelementptr [4 x i8], ptr %i.ahf, i64 %i.bek
  %i.bel = mul i64 %i.bek, %.1180.i
  %i.bem = getelementptr [8 x i8], ptr %i.bdh, i64 %i.bel
  br label %bb.dr

bb.dr:                                            ; preds = %BitCost.exit.i.i95, %.preheader130.i.i90
  %.0114132.i.i93 = phi i64 [ 0, %.preheader130.i.i90 ], [ %i.bfa, %BitCost.exit.i.i95 ] ; 4 uses
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bdh, i64 %.0114132.i.i93
  %i.beo = load double, ptr %i.ben, align 8, !tbaa !194
  %gep.i.i94 = getelementptr [2832 x i8], ptr %invariant.gep.i.i92, i64 %.0114132.i.i93
  %i.bep = load i32, ptr %gep.i.i94, align 4, !tbaa !169 ; 4 uses
  %i.beq = zext nneg i32 %i.bep to i64
  %i.ber = icmp eq i32 %i.bep, 0
  br i1 %i.ber, label %BitCost.exit.i.i95, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bes = icmp ult i32 %i.bep, 256
  br i1 %i.bes, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bet = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.beq
  %i.beu = load double, ptr %i.bet, align 8, !tbaa !194
  br label %BitCost.exit.i.i95

bb.du:                                            ; preds = %bb.ds
  %i.bev = uitofp i32 %i.bep to double
  %i.bew = tail call double @log2(double noundef %i.bev) #8
  br label %BitCost.exit.i.i95

BitCost.exit.i.i95:                               ; preds = %bb.du, %bb.dt, %bb.dr
  %i.bex = phi double [ -2.000000e+00, %bb.dr ], [ %i.beu, %bb.dt ], [ %i.bew, %bb.du ]
  %i.bey = fsub double %i.beo, %i.bex
  %i.bez = getelementptr [8 x i8], ptr %i.bem, i64 %.0114132.i.i93
  store double %i.bey, ptr %i.bez, align 8, !tbaa !194
  %i.bfa = add nuw nsw i64 %.0114132.i.i93, 1     ; 2 uses
  %exitcond145.not.i.i96 = icmp eq i64 %i.bfa, %.1180.i
  br i1 %exitcond145.not.i.i96, label %.loopexit129.i.i97, label %bb.dr, !llvm.loop !82

bb.dv:                                            ; preds = %.loopexit129.i.i97
  %i.bfb = shl nuw nsw i64 %.1180.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdj, i8 0, i64 %i.bfb, i1 false)
  %i.bfc = mul i64 %i.bdw, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bdm, i8 0, i64 %i.bfc, i1 false)
  %xtraiter961 = and i64 %.1180.i, 1
  %unroll_iter967 = and i64 %.1180.i, -2
  %lcmp.mod963.not = icmp eq i64 %xtraiter961, 0
  %lcmp.mod966 = trunc i64 %.1180.i to i1
  br label %.new958

.new958:                                          ; preds = %bb.ef, %bb.dv
  %.0117137.i.i99 = phi i64 [ 0, %bb.dv ], [ %i.bgy, %bb.ef ] ; 6 uses
  %i.bfd = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %.0117137.i.i99
  %i.bfe = load i16, ptr %i.bfd, align 2, !tbaa !195
  %i.bff = zext i16 %i.bfe to i64
  %i.bfg = mul nuw nsw i64 %.1180.i, %i.bff
  %i.bfh = getelementptr inbounds nuw [8 x i8], ptr %i.bdh, i64 %i.bfg ; 3 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.0117137.i.i99 ; 3 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ea, %.new958
  %.0109135.i.i100 = phi i64 [ 0, %.new958 ], [ %i.bfy, %bb.ea ] ; 5 uses
  %.0112134.i.i101 = phi double [ f0x547D42AEA2879F2E, %.new958 ], [ %.1113.i.i102.1, %bb.ea ] ; 2 uses
  %niter968 = phi i64 [ 0, %.new958 ], [ %niter968.next.1, %bb.ea ]
  %i.bfj = getelementptr inbounds nuw [8 x i8], ptr %i.bfh, i64 %.0109135.i.i100
  %i.bfk = load double, ptr %i.bfj, align 8, !tbaa !194
  %i.bfl = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %.0109135.i.i100 ; 2 uses
  %i.bfm = load double, ptr %i.bfl, align 8, !tbaa !194
  %i.bfn = fadd double %i.bfk, %i.bfm             ; 3 uses
  store double %i.bfn, ptr %i.bfl, align 8, !tbaa !194
  %i.bfo = fcmp olt double %i.bfn, %.0112134.i.i101
  br i1 %i.bfo, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.bfp = trunc i64 %.0109135.i.i100 to i8
  store i8 %i.bfp, ptr %i.bfi, align 1, !tbaa !168
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.1113.i.i102 = phi double [ %i.bfn, %bb.dx ], [ %.0112134.i.i101, %bb.dw ] ; 2 uses
  %i.bfq = or disjoint i64 %.0109135.i.i100, 1    ; 3 uses
  %i.bfr = getelementptr inbounds nuw [8 x i8], ptr %i.bfh, i64 %i.bfq
  %i.bfs = load double, ptr %i.bfr, align 8, !tbaa !194
  %i.bft = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bfq ; 2 uses
  %i.bfu = load double, ptr %i.bft, align 8, !tbaa !194
  %i.bfv = fadd double %i.bfs, %i.bfu             ; 3 uses
  store double %i.bfv, ptr %i.bft, align 8, !tbaa !194
  %i.bfw = fcmp olt double %i.bfv, %.1113.i.i102
  br i1 %i.bfw, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bfx = trunc i64 %i.bfq to i8
  store i8 %i.bfx, ptr %i.bfi, align 1, !tbaa !168
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1113.i.i102.1 = phi double [ %i.bfv, %bb.dz ], [ %.1113.i.i102, %bb.dy ] ; 4 uses
  %i.bfy = add nuw nsw i64 %.0109135.i.i100, 2    ; 4 uses
  %niter968.next.1 = add nuw i64 %niter968, 2     ; 2 uses
  %niter968.ncmp.1 = icmp eq i64 %niter968.next.1, %unroll_iter967
  br i1 %niter968.ncmp.1, label %.unr-lcssa959, label %bb.dw, !llvm.loop !83

.unr-lcssa959:                                    ; preds = %bb.ea
  br i1 %lcmp.mod963.not, label %.epilog-lcssa964, label %.epil.preheader960

.epil.preheader960:                               ; preds = %.unr-lcssa959
  tail call void @llvm.assume(i1 %lcmp.mod966)
  %i.bfz = getelementptr inbounds nuw [8 x i8], ptr %i.bfh, i64 %i.bfy
  %i.bga = load double, ptr %i.bfz, align 8, !tbaa !194
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %i.bfy ; 2 uses
  %i.bgc = load double, ptr %i.bgb, align 8, !tbaa !194
  %i.bgd = fadd double %i.bga, %i.bgc             ; 3 uses
  store double %i.bgd, ptr %i.bgb, align 8, !tbaa !194
  %i.bge = fcmp olt double %i.bgd, %.1113.i.i102.1
  br i1 %i.bge, label %bb.eb, label %.epilog-lcssa964

bb.eb:                                            ; preds = %.epil.preheader960
  %i.bgf = trunc i64 %i.bfy to i8
  store i8 %i.bgf, ptr %i.bfi, align 1, !tbaa !168
  br label %.epilog-lcssa964

.epilog-lcssa964:                                 ; preds = %.epil.preheader960, %bb.eb, %.unr-lcssa959
  %.1113.i.i102.lcssa = phi double [ %.1113.i.i102.1, %.unr-lcssa959 ], [ %i.bgd, %bb.eb ], [ %.1113.i.i102.1, %.epil.preheader960 ]
  %i.bgg = mul i64 %.0117137.i.i99, %i.bdw
  %i.bgh = icmp ult i64 %.0117137.i.i99, 2000
  %i.bgi = uitofp nneg i64 %.0117137.i.i99 to double
  %i.bgj = tail call nnan double @llvm.fmuladd.f64(double %i.bgi, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.bgk = fmul nnan double %i.bgj, 1.350000e+01
  %.0111.i.i104 = select i1 %i.bgh, double %i.bgk, double 1.350000e+01 ; 2 uses
  %i.bgl = getelementptr i8, ptr %i.bdm, i64 %i.bgg
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ee, %.epilog-lcssa964
  %.1110136.i.i105 = phi i64 [ 0, %.epilog-lcssa964 ], [ %i.bgx, %bb.ee ] ; 4 uses
  %i.bgm = getelementptr inbounds nuw [8 x i8], ptr %i.bdj, i64 %.1110136.i.i105 ; 3 uses
  %i.bgn = load double, ptr %i.bgm, align 8, !tbaa !194
  %i.bgo = fsub double %i.bgn, %.1113.i.i102.lcssa ; 2 uses
  store double %i.bgo, ptr %i.bgm, align 8, !tbaa !194
  %i.bgp = fcmp ult double %i.bgo, %.0111.i.i104
  br i1 %i.bgp, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bgq = trunc i64 %.1110136.i.i105 to i8
  %i.bgr = and i8 %i.bgq, 7
  %i.bgs = shl nuw i8 1, %i.bgr
  store double %.0111.i.i104, ptr %i.bgm, align 8, !tbaa !194
  %i.bgt = lshr i64 %.1110136.i.i105, 3
  %i.bgu = getelementptr i8, ptr %i.bgl, i64 %i.bgt ; 2 uses
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !168
  %i.bgw = or i8 %i.bgv, %i.bgs
  store i8 %i.bgw, ptr %i.bgu, align 1, !tbaa !168
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.bgx = add nuw nsw i64 %.1110136.i.i105, 1    ; 2 uses
  %exitcond147.not.i.i106 = icmp eq i64 %i.bgx, %.1180.i
  br i1 %exitcond147.not.i.i106, label %bb.ef, label %bb.ec, !llvm.loop !84

bb.ef:                                            ; preds = %bb.ee
  %i.bgy = add nuw i64 %.0117137.i.i99, 1         ; 2 uses
  %exitcond148.not.i.i107 = icmp eq i64 %i.bgy, %2
  br i1 %exitcond148.not.i.i107, label %.lr.ph.preheader.i.i108, label %.new958, !llvm.loop !85

.lr.ph.preheader.i.i108:                          ; preds = %bb.ef
  %i.bgz = load i8, ptr %i.bdt, align 1, !tbaa !168
  %i.bha = mul i64 %i.bdw, %i.bds
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %bb.eh, %.lr.ph.preheader.i.i108
  %.0142.i.i110 = phi i8 [ %.1.i159.i118, %bb.eh ], [ %i.bgz, %.lr.ph.preheader.i.i108 ] ; 4 uses
  %.0107141.i.i111 = phi i64 [ %i.bhe, %bb.eh ], [ %i.bha, %.lr.ph.preheader.i.i108 ]
  %.1118140.i.i112 = phi i64 [ %i.bhd, %bb.eh ], [ %i.bds, %.lr.ph.preheader.i.i108 ]
  %.0119139.i.i113 = phi i64 [ %.1120.i.i117, %bb.eh ], [ 1, %.lr.ph.preheader.i.i108 ] ; 2 uses
  %i.bhb = and i8 %.0142.i.i110, 7
  %i.bhc = shl nuw i8 1, %i.bhb
  %i.bhd = add i64 %.1118140.i.i112, -1           ; 4 uses
  %i.bhe = sub i64 %.0107141.i.i111, %i.bdw       ; 2 uses
  %i.bhf = lshr i8 %.0142.i.i110, 3
  %i.bhg = zext nneg i8 %i.bhf to i64
  %i.bhh = getelementptr i8, ptr %i.bdm, i64 %i.bhe
  %i.bhi = getelementptr i8, ptr %i.bhh, i64 %i.bhg
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !168
  %i.bhk = and i8 %i.bhj, %i.bhc
  %.not125.i.i114 = icmp eq i8 %i.bhk, 0
  br i1 %.not125.i.i114, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.lr.ph.i.i109
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bhd
  %i.bhm = load i8, ptr %i.bhl, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i115 = icmp ne i8 %.0142.i.i110, %i.bhm
  %i.bhn = zext i1 %.not126.i.i115 to i64
  %spec.select.i158.i116 = add i64 %.0119139.i.i113, %i.bhn
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph.i.i109
  %.1120.i.i117 = phi i64 [ %.0119139.i.i113, %.lr.ph.i.i109 ], [ %spec.select.i158.i116, %bb.eg ] ; 2 uses
  %.1.i159.i118 = phi i8 [ %.0142.i.i110, %.lr.ph.i.i109 ], [ %i.bhm, %bb.eg ] ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bhd
  store i8 %.1.i159.i118, ptr %i.bho, align 1, !tbaa !168
  %.not124.i.i119 = icmp eq i64 %i.bhd, 0
  br i1 %.not124.i.i119, label %FindBlocksCommand.exit.i, label %.lr.ph.i.i109, !llvm.loop !86

FindBlocksCommand.exit.i:                         ; preds = %bb.eh, %.preheader.preheader.i.i230
  %.0108.i.i120 = phi i64 [ 1, %.preheader.preheader.i.i230 ], [ %.1120.i.i117, %bb.eh ] ; 19 uses
  %.not.i160.i121 = icmp eq i64 %.1180.i, 0
  br i1 %.not.i160.i121, label %.preheader26.i.i125.preheader, label %iter.check776

iter.check776:                                    ; preds = %FindBlocksCommand.exit.i
  %min.iters.check765 = icmp ult i64 %.1180.i, 4
  br i1 %min.iters.check765, label %.lr.ph.i161.i122.preheader, label %vector.main.loop.iter.check766

vector.main.loop.iter.check766:                   ; preds = %iter.check776
  %min.iters.check767 = icmp ult i64 %.1180.i, 16
  br i1 %min.iters.check767, label %vec.epilog.ph780, label %vector.ph768

vector.ph768:                                     ; preds = %vector.main.loop.iter.check766
  %i.bhp = and i64 %.1180.i, 12
  %n.vec769 = and i64 %.1180.i, -16               ; 4 uses
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next772, %vector.body770 ] ; 2 uses
  %i.bhq = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %index771 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 16
  store <8 x i16> splat (i16 256), ptr %i.bhq, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.bhr, align 2, !tbaa !195
  %index.next772 = add nuw i64 %index771, 16      ; 2 uses
  %i.bhs = icmp eq i64 %index.next772, %n.vec769
  br i1 %i.bhs, label %middle.block773, label %vector.body770, !llvm.loop !87

middle.block773:                                  ; preds = %vector.body770
  %cmp.n774 = icmp eq i64 %.1180.i, %n.vec769
  br i1 %cmp.n774, label %.preheader26.i.i125.preheader, label %vec.epilog.iter.check778

vec.epilog.iter.check778:                         ; preds = %middle.block773
  %min.epilog.iters.check779 = icmp eq i64 %i.bhp, 0
  br i1 %min.epilog.iters.check779, label %.lr.ph.i161.i122.preheader, label %vec.epilog.ph780, !prof !196

vec.epilog.ph780:                                 ; preds = %vector.main.loop.iter.check766, %vec.epilog.iter.check778
  %vec.epilog.resume.val775 = phi i64 [ %n.vec769, %vec.epilog.iter.check778 ], [ 0, %vector.main.loop.iter.check766 ]
  %n.vec781 = and i64 %.1180.i, -4                ; 3 uses
  br label %vec.epilog.vector.body782

vec.epilog.vector.body782:                        ; preds = %vec.epilog.vector.body782, %vec.epilog.ph780
  %index783 = phi i64 [ %vec.epilog.resume.val775, %vec.epilog.ph780 ], [ %index.next784, %vec.epilog.vector.body782 ] ; 2 uses
  %i.bht = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %index783
  store <4 x i16> splat (i16 256), ptr %i.bht, align 2, !tbaa !195
  %index.next784 = add nuw i64 %index783, 4       ; 2 uses
  %i.bhu = icmp eq i64 %index.next784, %n.vec781
  br i1 %i.bhu, label %vec.epilog.middle.block785, label %vec.epilog.vector.body782, !llvm.loop !88

vec.epilog.middle.block785:                       ; preds = %vec.epilog.vector.body782
  %cmp.n786 = icmp eq i64 %.1180.i, %n.vec781
  br i1 %cmp.n786, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122.preheader

.lr.ph.i161.i122.preheader:                       ; preds = %iter.check776, %vec.epilog.iter.check778, %vec.epilog.middle.block785
  %.027.i.i123.ph = phi i64 [ 0, %iter.check776 ], [ %n.vec769, %vec.epilog.iter.check778 ], [ %n.vec781, %vec.epilog.middle.block785 ]
  br label %.lr.ph.i161.i122

.lr.ph.i161.i122:                                 ; preds = %.lr.ph.i161.i122.preheader, %.lr.ph.i161.i122
  %.027.i.i123 = phi i64 [ %i.bhw, %.lr.ph.i161.i122 ], [ %.027.i.i123.ph, %.lr.ph.i161.i122.preheader ] ; 2 uses
  %i.bhv = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %.027.i.i123
  store i16 256, ptr %i.bhv, align 2, !tbaa !195
  %i.bhw = add nuw nsw i64 %.027.i.i123, 1        ; 2 uses
  %exitcond.not.i162.i124 = icmp eq i64 %i.bhw, %.1180.i
  br i1 %exitcond.not.i162.i124, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122, !llvm.loop !89

.preheader26.i.i125.preheader:                    ; preds = %FindBlocksCommand.exit.i, %vec.epilog.middle.block785, %middle.block773, %.lr.ph.i161.i122
  br label %.preheader26.i.i125

.preheader26.i.i125:                              ; preds = %bb.ek, %.preheader26.i.i125.preheader
  %.129.i.i126 = phi i64 [ 0, %.preheader26.i.i125.preheader ], [ %i.bim, %bb.ek ] ; 3 uses
  %.02328.i.i127 = phi i16 [ 0, %.preheader26.i.i125.preheader ], [ %.124.i.i128.1, %bb.ek ] ; 3 uses
  %niter975 = phi i64 [ 0, %.preheader26.i.i125.preheader ], [ %niter975.next.1, %bb.ek ]
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.129.i.i126
  %i.bhy = load i8, ptr %i.bhx, align 1, !tbaa !168
  %i.bhz = zext i8 %i.bhy to i64
  %i.bia = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bhz ; 2 uses
  %i.bib = load i16, ptr %i.bia, align 2, !tbaa !195
  %i.bic = icmp eq i16 %i.bib, 256
  br i1 %i.bic, label %bb.ei, label %.preheader26.i.i125.1

bb.ei:                                            ; preds = %.preheader26.i.i125
  %i.bid = add i16 %.02328.i.i127, 1
  store i16 %.02328.i.i127, ptr %i.bia, align 2, !tbaa !195
  br label %.preheader26.i.i125.1

.preheader26.i.i125.1:                            ; preds = %bb.ei, %.preheader26.i.i125
  %.124.i.i128 = phi i16 [ %i.bid, %bb.ei ], [ %.02328.i.i127, %.preheader26.i.i125 ] ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.129.i.i126
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 1
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !168
  %i.bih = zext i8 %i.big to i64
  %i.bii = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bih ; 2 uses
  %i.bij = load i16, ptr %i.bii, align 2, !tbaa !195
  %i.bik = icmp eq i16 %i.bij, 256
  br i1 %i.bik, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.preheader26.i.i125.1
  %i.bil = add i16 %.124.i.i128, 1
  store i16 %.124.i.i128, ptr %i.bii, align 2, !tbaa !195
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.preheader26.i.i125.1
  %.124.i.i128.1 = phi i16 [ %i.bil, %bb.ej ], [ %.124.i.i128, %.preheader26.i.i125.1 ] ; 5 uses
  %i.bim = add nuw i64 %.129.i.i126, 2            ; 2 uses
  %niter975.next.1 = add i64 %niter975, 2         ; 2 uses
  %niter975.ncmp.1 = icmp eq i64 %niter975.next.1, %unroll_iter974
  br i1 %niter975.ncmp.1, label %.preheader.i.i131.preheader.unr-lcssa, label %.preheader26.i.i125, !llvm.loop !90

.preheader.i.i131.preheader.unr-lcssa:            ; preds = %bb.ek
  br i1 %lcmp.mod971.not, label %.preheader.i.i131.preheader, label %.preheader26.i.i125.epil.preheader

.preheader26.i.i125.epil.preheader:               ; preds = %.preheader.i.i131.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod973)
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bim
  %i.bio = load i8, ptr %i.bin, align 1, !tbaa !168
  %i.bip = zext i8 %i.bio to i64
  %i.biq = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bip ; 2 uses
  %i.bir = load i16, ptr %i.biq, align 2, !tbaa !195
  %i.bis = icmp eq i16 %i.bir, 256
  br i1 %i.bis, label %bb.el, label %.preheader.i.i131.preheader

bb.el:                                            ; preds = %.preheader26.i.i125.epil.preheader
  %i.bit = add i16 %.124.i.i128.1, 1
  store i16 %.124.i.i128.1, ptr %i.biq, align 2, !tbaa !195
  br label %.preheader.i.i131.preheader

.preheader.i.i131.preheader:                      ; preds = %.preheader26.i.i125.epil.preheader, %bb.el, %.preheader.i.i131.preheader.unr-lcssa
  %.124.i.i128.lcssa = phi i16 [ %.124.i.i128.1, %.preheader.i.i131.preheader.unr-lcssa ], [ %i.bit, %bb.el ], [ %.124.i.i128.1, %.preheader26.i.i125.epil.preheader ] ; 3 uses
  br i1 %i.bdu, label %.preheader.i.i131.epil.preheader, label %.preheader.i.i131

.preheader.i.i131:                                ; preds = %.preheader.i.i131.preheader, %.preheader.i.i131
  %.230.i.i132 = phi i64 [ %i.bjv, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ] ; 5 uses
  %niter981 = phi i64 [ %niter981.next.3, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ]
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.230.i.i132 ; 2 uses
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !168
  %i.biw = zext i8 %i.biv to i64
  %i.bix = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.biw
  %i.biy = load i16, ptr %i.bix, align 2, !tbaa !195
  %i.biz = trunc i16 %i.biy to i8
  store i8 %i.biz, ptr %i.biu, align 1, !tbaa !168
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.230.i.i132
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 1 ; 2 uses
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !168
  %i.bjd = zext i8 %i.bjc to i64
  %i.bje = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bjd
  %i.bjf = load i16, ptr %i.bje, align 2, !tbaa !195
  %i.bjg = trunc i16 %i.bjf to i8
  store i8 %i.bjg, ptr %i.bjb, align 1, !tbaa !168
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.230.i.i132
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 2 ; 2 uses
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !168
  %i.bjk = zext i8 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bjk
  %i.bjm = load i16, ptr %i.bjl, align 2, !tbaa !195
  %i.bjn = trunc i16 %i.bjm to i8
  store i8 %i.bjn, ptr %i.bji, align 1, !tbaa !168
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.230.i.i132
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 3 ; 2 uses
  %i.bjq = load i8, ptr %i.bjp, align 1, !tbaa !168
  %i.bjr = zext i8 %i.bjq to i64
  %i.bjs = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bjr
  %i.bjt = load i16, ptr %i.bjs, align 2, !tbaa !195
  %i.bju = trunc i16 %i.bjt to i8
  store i8 %i.bju, ptr %i.bjp, align 1, !tbaa !168
  %i.bjv = add nuw i64 %.230.i.i132, 4            ; 2 uses
  %niter981.next.3 = add i64 %niter981, 4         ; 2 uses
  %niter981.ncmp.3 = icmp eq i64 %niter981.next.3, %unroll_iter980
  br i1 %niter981.ncmp.3, label %RemapBlockIdsCommand.exit.i.unr-lcssa, label %.preheader.i.i131, !llvm.loop !91

RemapBlockIdsCommand.exit.i.unr-lcssa:            ; preds = %.preheader.i.i131
  br i1 %lcmp.mod978.not, label %RemapBlockIdsCommand.exit.i, label %.preheader.i.i131.epil.preheader

.preheader.i.i131.epil.preheader:                 ; preds = %RemapBlockIdsCommand.exit.i.unr-lcssa, %.preheader.i.i131.preheader
  %.230.i.i132.epil.init = phi i64 [ 0, %.preheader.i.i131.preheader ], [ %i.bjv, %RemapBlockIdsCommand.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod979)
  br label %.preheader.i.i131.epil

.preheader.i.i131.epil:                           ; preds = %.preheader.i.i131.epil, %.preheader.i.i131.epil.preheader
  %.230.i.i132.epil = phi i64 [ %i.bkc, %.preheader.i.i131.epil ], [ %.230.i.i132.epil.init, %.preheader.i.i131.epil.preheader ] ; 2 uses
  %epil.iter977 = phi i64 [ %epil.iter977.next, %.preheader.i.i131.epil ], [ 0, %.preheader.i.i131.epil.preheader ]
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.230.i.i132.epil ; 2 uses
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !168
  %i.bjy = zext i8 %i.bjx to i64
  %i.bjz = getelementptr inbounds nuw [2 x i8], ptr %i.bdo, i64 %i.bjy
  %i.bka = load i16, ptr %i.bjz, align 2, !tbaa !195
  %i.bkb = trunc i16 %i.bka to i8
  store i8 %i.bkb, ptr %i.bjw, align 1, !tbaa !168
  %i.bkc = add nuw i64 %.230.i.i132.epil, 1
  %epil.iter977.next = add i64 %epil.iter977, 1   ; 2 uses
  %epil.iter977.cmp.not = icmp eq i64 %epil.iter977.next, %xtraiter976
  br i1 %epil.iter977.cmp.not, label %RemapBlockIdsCommand.exit.i, label %.preheader.i.i131.epil, !llvm.loop !92

RemapBlockIdsCommand.exit.i:                      ; preds = %.preheader.i.i131.epil, %RemapBlockIdsCommand.exit.i.unr-lcssa
  %i.bkd = zext i16 %.124.i.i128.lcssa to i64     ; 3 uses
  %.not.i164.i134 = icmp eq i16 %.124.i.i128.lcssa, 0
  br i1 %.not.i164.i134, label %ClearHistogramsCommand.exit.i.i.preheader, label %.lr.ph.i165.i135.preheader

.lr.ph.i165.i135.preheader:                       ; preds = %RemapBlockIdsCommand.exit.i
  %xtraiter982 = and i64 %i.bkd, 3                ; 3 uses
  %i.bke = icmp ult i16 %.124.i.i128.lcssa, 4
  br i1 %i.bke, label %.lr.ph.i165.i135.epil.preheader, label %.lr.ph.i165.i135.preheader.new

.lr.ph.i165.i135.preheader.new:                   ; preds = %.lr.ph.i165.i135.preheader
  %unroll_iter986 = and i64 %i.bkd, 65532
  br label %.lr.ph.i165.i135

.lr.ph.i165.i135:                                 ; preds = %.lr.ph.i165.i135, %.lr.ph.i165.i135.preheader.new
  %.0.i9.i.i136 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %i.bkq, %.lr.ph.i165.i135 ] ; 5 uses
  %niter987 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %niter987.next.3, %.lr.ph.i165.i135 ]
  %i.bkf = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkf, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkg, align 8, !tbaa !204
  %i.bkh = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i9.i.i136 ; 2 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bkh, i64 2832
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bkh, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bki, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkj, align 8, !tbaa !204
  %i.bkk = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 5664
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkk, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkl, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkm, align 8, !tbaa !204
  %i.bkn = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i9.i.i136 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8496
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkn, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bko, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkp, align 8, !tbaa !204
  %i.bkq = add nuw nsw i64 %.0.i9.i.i136, 4       ; 2 uses
  %niter987.next.3 = add i64 %niter987, 4         ; 2 uses
  %niter987.ncmp.3 = icmp eq i64 %niter987.next.3, %unroll_iter986
  br i1 %niter987.ncmp.3, label %ClearHistogramsCommand.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i135, !llvm.loop !72

ClearHistogramsCommand.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i135
  %lcmp.mod984.not = icmp eq i64 %xtraiter982, 0
  br i1 %lcmp.mod984.not, label %ClearHistogramsCommand.exit.i.i.preheader, label %.lr.ph.i165.i135.epil.preheader

.lr.ph.i165.i135.epil.preheader:                  ; preds = %ClearHistogramsCommand.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i135.preheader
  %.0.i9.i.i136.epil.init = phi i64 [ 0, %.lr.ph.i165.i135.preheader ], [ %i.bkq, %ClearHistogramsCommand.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod985 = icmp ne i64 %xtraiter982, 0
  tail call void @llvm.assume(i1 %lcmp.mod985)
  br label %.lr.ph.i165.i135.epil

.lr.ph.i165.i135.epil:                            ; preds = %.lr.ph.i165.i135.epil, %.lr.ph.i165.i135.epil.preheader
  %.0.i9.i.i136.epil = phi i64 [ %i.bkt, %.lr.ph.i165.i135.epil ], [ %.0.i9.i.i136.epil.init, %.lr.ph.i165.i135.epil.preheader ] ; 2 uses
  %epil.iter983 = phi i64 [ %epil.iter983.next, %.lr.ph.i165.i135.epil ], [ 0, %.lr.ph.i165.i135.epil.preheader ]
  %i.bkr = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %.0.i9.i.i136.epil ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkr, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bks, align 8, !tbaa !204
  %i.bkt = add nuw nsw i64 %.0.i9.i.i136.epil, 1
  %epil.iter983.next = add i64 %epil.iter983, 1   ; 2 uses
  %epil.iter983.cmp.not = icmp eq i64 %epil.iter983.next, %xtraiter982
  br i1 %epil.iter983.cmp.not, label %ClearHistogramsCommand.exit.i.i.preheader, label %.lr.ph.i165.i135.epil, !llvm.loop !93

ClearHistogramsCommand.exit.i.i.preheader:        ; preds = %RemapBlockIdsCommand.exit.i, %.lr.ph.i165.i135.epil, %ClearHistogramsCommand.exit.i.i.preheader.loopexit.unr-lcssa
  br label %ClearHistogramsCommand.exit.i.i

ClearHistogramsCommand.exit.i.i:                  ; preds = %ClearHistogramsCommand.exit.i.i, %ClearHistogramsCommand.exit.i.i.preheader
  %.010.i.i138 = phi i64 [ 0, %ClearHistogramsCommand.exit.i.i.preheader ], [ %i.blv, %ClearHistogramsCommand.exit.i.i ] ; 4 uses
  %niter993 = phi i64 [ 0, %ClearHistogramsCommand.exit.i.i.preheader ], [ %niter993.next.1, %ClearHistogramsCommand.exit.i.i ]
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.010.i.i138
  %i.bkv = load i8, ptr %i.bku, align 1, !tbaa !168
  %i.bkw = zext i8 %i.bkv to i64
  %i.bkx = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %i.bkw ; 2 uses
  %i.bky = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %.010.i.i138
  %i.bkz = load i16, ptr %i.bky, align 2, !tbaa !195
  %i.bla = zext i16 %i.bkz to i64
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.bla ; 2 uses
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !169
  %i.bld = add i32 %i.blc, 1
  store i32 %i.bld, ptr %i.blb, align 4, !tbaa !169
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bkx, i64 2816 ; 2 uses
  %i.blf = load i64, ptr %i.ble, align 8, !tbaa !205
  %i.blg = add i64 %i.blf, 1
  store i64 %i.blg, ptr %i.ble, align 8, !tbaa !205
  %i.blh = or disjoint i64 %.010.i.i138, 1        ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.blh
  %i.blj = load i8, ptr %i.bli, align 1, !tbaa !168
  %i.blk = zext i8 %i.blj to i64
  %i.bll = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %i.blk ; 2 uses
  %i.blm = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.blh
  %i.bln = load i16, ptr %i.blm, align 2, !tbaa !195
  %i.blo = zext i16 %i.bln to i64
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.bll, i64 %i.blo ; 2 uses
  %i.blq = load i32, ptr %i.blp, align 4, !tbaa !169
  %i.blr = add i32 %i.blq, 1
  store i32 %i.blr, ptr %i.blp, align 4, !tbaa !169
  %i.bls = getelementptr inbounds nuw i8, ptr %i.bll, i64 2816 ; 2 uses
  %i.blt = load i64, ptr %i.bls, align 8, !tbaa !205
  %i.blu = add i64 %i.blt, 1
  store i64 %i.blu, ptr %i.bls, align 8, !tbaa !205
  %i.blv = add nuw i64 %.010.i.i138, 2            ; 3 uses
  %niter993.next.1 = add i64 %niter993, 2         ; 2 uses
  %niter993.ncmp.1 = icmp eq i64 %niter993.next.1, %unroll_iter992
  br i1 %niter993.ncmp.1, label %BuildBlockHistogramsCommand.exit.i.unr-lcssa, label %ClearHistogramsCommand.exit.i.i, !llvm.loop !94

BuildBlockHistogramsCommand.exit.i.unr-lcssa:     ; preds = %ClearHistogramsCommand.exit.i.i
  br i1 %lcmp.mod990.not, label %BuildBlockHistogramsCommand.exit.i, label %ClearHistogramsCommand.exit.i.i.epil.preheader

ClearHistogramsCommand.exit.i.i.epil.preheader:   ; preds = %BuildBlockHistogramsCommand.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod991)
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.blv
  %i.blx = load i8, ptr %i.blw, align 1, !tbaa !168
  %i.bly = zext i8 %i.blx to i64
  %i.blz = getelementptr inbounds nuw [2832 x i8], ptr %i.ahf, i64 %i.bly ; 2 uses
  %i.bma = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %i.blv
  %i.bmb = load i16, ptr %i.bma, align 2, !tbaa !195
  %i.bmc = zext i16 %i.bmb to i64
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %i.blz, i64 %i.bmc ; 2 uses
  %i.bme = load i32, ptr %i.bmd, align 4, !tbaa !169
  %i.bmf = add i32 %i.bme, 1
  store i32 %i.bmf, ptr %i.bmd, align 4, !tbaa !169
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blz, i64 2816 ; 2 uses
  %i.bmh = load i64, ptr %i.bmg, align 8, !tbaa !205
  %i.bmi = add i64 %i.bmh, 1
  store i64 %i.bmi, ptr %i.bmg, align 8, !tbaa !205
  br label %BuildBlockHistogramsCommand.exit.i

BuildBlockHistogramsCommand.exit.i:               ; preds = %BuildBlockHistogramsCommand.exit.i.unr-lcssa, %ClearHistogramsCommand.exit.i.i.epil.preheader
  %i.bmj = add nuw nsw i64 %.0181.i, 1            ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.bmj, %i.bdr
  br i1 %exitcond.not.i140, label %bb.em, label %bb.dm, !llvm.loop !95

bb.em:                                            ; preds = %BuildBlockHistogramsCommand.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdh) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdj) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdm) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.bdo) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.ahf) #8
  %.not.i168.i141 = icmp eq i64 %.0108.i.i120, 0  ; 5 uses
  br i1 %.not.i168.i141, label %.thread.i.i143, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.bmk = shl i64 %.0108.i.i120, 2
  %i.bml = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmk) #8 ; 2 uses
  %i.bmm = add i64 %.0108.i.i120, 256             ; 2 uses
  %.not388.i.i142 = icmp eq i64 %i.bmm, 0
  br i1 %.not388.i.i142, label %.thread411.i.i145, label %.thread.i.i143

.thread.i.i143:                                   ; preds = %bb.en, %bb.em
  %i.bmn = phi i64 [ %i.bmm, %bb.en ], [ 256, %bb.em ] ; 3 uses
  %i.bmo = phi ptr [ %i.bml, %bb.en ], [ null, %bb.em ] ; 2 uses
  %i.bmp = shl i64 %i.bmn, 2
  %i.bmq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmp) #8 ; 2 uses
  %i.bmr = shl i64 %.0108.i.i120, 4
  %i.bms = add i64 %i.bmr, 1008
  %i.bmt = lshr i64 %i.bms, 6                     ; 2 uses
  %.not389.i.i144 = icmp eq i64 %i.bmt, 0
  br i1 %.not389.i.i144, label %.thread409.i.i146, label %.thread411.i.i145

.thread411.i.i145:                                ; preds = %.thread.i.i143, %bb.en
  %.sink563.i.i = phi i64 [ %i.bmt, %.thread.i.i143 ], [ 288230376151711695, %bb.en ] ; 3 uses
  %i.bmu = phi i64 [ %i.bmn, %.thread.i.i143 ], [ 0, %bb.en ]
  %i.bmv = phi ptr [ %i.bmo, %.thread.i.i143 ], [ %i.bml, %bb.en ]
  %i.bmw = phi ptr [ %i.bmq, %.thread.i.i143 ], [ null, %bb.en ]
  %i.bmx = mul i64 %.sink563.i.i, 2832
  %i.bmy = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmx) #8
  %i.bmz = shl nuw nsw i64 %.sink563.i.i, 2
  %i.bna = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmz) #8
  br label %.thread409.i.i146

.thread409.i.i146:                                ; preds = %.thread411.i.i145, %.thread.i.i143
  %i.bnb = phi ptr [ %i.bmy, %.thread411.i.i145 ], [ null, %.thread.i.i143 ] ; 2 uses
  %i.bnc = phi i64 [ %i.bmu, %.thread411.i.i145 ], [ %i.bmn, %.thread.i.i143 ]
  %i.bnd = phi ptr [ %i.bmv, %.thread411.i.i145 ], [ %i.bmo, %.thread.i.i143 ] ; 9 uses
  %i.bne = phi ptr [ %i.bmw, %.thread411.i.i145 ], [ %i.bmq, %.thread.i.i143 ] ; 10 uses
  %i.bnf = phi i64 [ %.sink563.i.i, %.thread411.i.i145 ], [ 0, %.thread.i.i143 ] ; 2 uses
  %i.bng = phi ptr [ %i.bna, %.thread411.i.i145 ], [ null, %.thread.i.i143 ] ; 2 uses
  br i1 %.not.i168.i141, label %.new994, label %bb.eo

bb.eo:                                            ; preds = %.thread409.i.i146
  %i.bnh = tail call i64 @llvm.umin.i64(i64 %.0108.i.i120, i64 64)
  %i.bni = mul nuw nsw i64 %i.bnh, 2832
  %i.bnj = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bni) #8
  br label %.new994

.new994:                                          ; preds = %bb.eo, %.thread409.i.i146
  %i.bnk = phi ptr [ %i.bnj, %bb.eo ], [ null, %.thread409.i.i146 ] ; 4 uses
  %i.bnl = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i147 = icmp eq ptr %i.bne, null
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bne, i64 1024 ; 5 uses
  %i.bnn = select i1 %.not391.i.i147, ptr null, ptr %i.bnm ; 4 uses
  %i.bno = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 5664) #8 ; 10 uses
  %i.bnp = shl i64 %i.bnc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bne, i8 0, i64 %i.bnp, i1 false)
  %xtraiter996 = and i64 %i.aei, 1
  %unroll_iter1001 = and i64 %i.aei, -2
  br label %bb.ep

.preheader414.peel.begin.i.i153.unr-lcssa:        ; preds = %bb.ep
  %lcmp.mod998.not = icmp eq i64 %xtraiter996, 0
  br i1 %lcmp.mod998.not, label %.preheader414.peel.begin.i.i153, label %.epil.preheader995

.epil.preheader995:                               ; preds = %.preheader414.peel.begin.i.i153.unr-lcssa
  %lcmp.mod1000 = trunc i64 %i.aei to i1
  tail call void @llvm.assume(i1 %lcmp.mod1000)
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %spec.select.i169.i151.1 ; 2 uses
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !169
  %i.bns = add i32 %i.bnr, 1
  store i32 %i.bns, ptr %i.bnq, align 4, !tbaa !169
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bor
  %i.bnu = load i8, ptr %i.bnt, align 1, !tbaa !168
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bor
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 1
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !168
  %.not402.i.i150.epil = icmp ne i8 %i.bnu, %i.bnx
  %i.bny = zext i1 %.not402.i.i150.epil to i64
  %spec.select.i169.i151.epil = add i64 %spec.select.i169.i151.1, %i.bny
  br label %.preheader414.peel.begin.i.i153

.preheader414.peel.begin.i.i153:                  ; preds = %.preheader414.peel.begin.i.i153.unr-lcssa, %.epil.preheader995
  %spec.select.i169.i151.lcssa = phi i64 [ %spec.select.i169.i151.1, %.preheader414.peel.begin.i.i153.unr-lcssa ], [ %spec.select.i169.i151.epil, %.epil.preheader995 ]
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %spec.select.i169.i151.lcssa ; 2 uses
  %i.boa = load i32, ptr %i.bnz, align 4, !tbaa !169
  %i.bob = add i32 %i.boa, 1
  store i32 %i.bob, ptr %i.bnz, align 4, !tbaa !169
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bne, i64 256 ; 3 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bne, i64 512 ; 7 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bne, i64 768 ; 6 uses
  br i1 %.not.i168.i141, label %._crit_edge445.i.i189, label %.lr.ph422.i.i154

bb.ep:                                            ; preds = %bb.ep, %.new994
  %.0345416.i.i148 = phi i64 [ 0, %.new994 ], [ %spec.select.i169.i151.1, %bb.ep ] ; 2 uses
  %.0347415.i.i149 = phi i64 [ 0, %.new994 ], [ %i.bor, %bb.ep ] ; 3 uses
  %niter1002 = phi i64 [ 0, %.new994 ], [ %niter1002.next.1, %bb.ep ]
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %.0345416.i.i148 ; 2 uses
  %i.bog = load i32, ptr %i.bof, align 4, !tbaa !169
  %i.boh = add i32 %i.bog, 1
  store i32 %i.boh, ptr %i.bof, align 4, !tbaa !169
  %i.boi = or disjoint i64 %.0347415.i.i149, 1    ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %.0347415.i.i149
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !168
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.boi
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !168
  %.not402.i.i150 = icmp ne i8 %i.bok, %i.bom
  %i.bon = zext i1 %.not402.i.i150 to i64
  %spec.select.i169.i151 = add i64 %.0345416.i.i148, %i.bon ; 2 uses
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %spec.select.i169.i151 ; 2 uses
  %i.bop = load i32, ptr %i.boo, align 4, !tbaa !169
  %i.boq = add i32 %i.bop, 1
  store i32 %i.boq, ptr %i.boo, align 4, !tbaa !169
  %i.bor = add nuw i64 %.0347415.i.i149, 2        ; 4 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.boi
  %i.bot = load i8, ptr %i.bos, align 1, !tbaa !168
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bdd, i64 %i.bor
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !168
  %.not402.i.i150.1 = icmp ne i8 %i.bot, %i.bov
  %i.bow = zext i1 %.not402.i.i150.1 to i64
  %spec.select.i169.i151.1 = add i64 %spec.select.i169.i151, %i.bow ; 4 uses
  %niter1002.next.1 = add nuw i64 %niter1002, 2   ; 2 uses
  %niter1002.ncmp.1 = icmp eq i64 %niter1002.next.1, %unroll_iter1001
  br i1 %niter1002.ncmp.1, label %.preheader414.peel.begin.i.i153.unr-lcssa, label %bb.ep, !llvm.loop !96

.lr.ph422.i.i154:                                 ; preds = %.preheader414.peel.begin.i.i153, %._crit_edge434.i.i187
  %indvars.iv.i.i155 = phi i64 [ %indvars.iv.next.i.i188, %._crit_edge434.i.i187 ], [ %.0108.i.i120, %.preheader414.peel.begin.i.i153 ] ; 3 uses
  %.1348443.i.i156 = phi i64 [ %i.btl, %._crit_edge434.i.i187 ], [ 0, %.preheader414.peel.begin.i.i153 ] ; 4 uses
  %.0350442.i.i157 = phi i64 [ %.2352.lcssa.i.i171, %._crit_edge434.i.i187 ], [ 0, %.preheader414.peel.begin.i.i153 ]
  %.0356441.i.i158 = phi i64 [ %i.btk, %._crit_edge434.i.i187 ], [ 0, %.preheader414.peel.begin.i.i153 ] ; 2 uses
  %.0357440.i.i159 = phi ptr [ %.1358.i.i176, %._crit_edge434.i.i187 ], [ %i.bng, %.preheader414.peel.begin.i.i153 ] ; 3 uses
  %.0359439.i.i160 = phi i64 [ %.1360.i.i175, %._crit_edge434.i.i187 ], [ %i.bnf, %.preheader414.peel.begin.i.i153 ] ; 5 uses
  %.0361438.i.i161 = phi i64 [ %.1362.lcssa.i.i184, %._crit_edge434.i.i187 ], [ 0, %.preheader414.peel.begin.i.i153 ] ; 3 uses
  %.0363437.i.i162 = phi ptr [ %.1364.i.i174, %._crit_edge434.i.i187 ], [ %i.bnb, %.preheader414.peel.begin.i.i153 ] ; 3 uses
  %.0365436.i.i163 = phi i64 [ %.1366.i.i173, %._crit_edge434.i.i187 ], [ %i.bnf, %.preheader414.peel.begin.i.i153 ] ; 5 uses
  %.0367435.i.i164 = phi i64 [ %.1368.lcssa.i.i183, %._crit_edge434.i.i187 ], [ 0, %.preheader414.peel.begin.i.i153 ] ; 3 uses
  %i.box = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i155, i64 1)
  %umax506.i.i = tail call i64 @llvm.umin.i64(i64 %i.box, i64 64) ; 3 uses
  %i.boy = getelementptr [4 x i8], ptr %i.bnm, i64 %.1348443.i.i156
  br label %bb.eq

bb.eq:                                            ; preds = %bb.er, %.lr.ph422.i.i154
  %.0343420.i.i165 = phi i64 [ 0, %.lr.ph422.i.i154 ], [ %i.bqg, %bb.er ] ; 7 uses
  %.1351419.i.i166 = phi i64 [ %.0350442.i.i157, %.lr.ph422.i.i154 ], [ %.2352.lcssa.i.i171, %bb.er ] ; 3 uses
  %i.boz = getelementptr [4 x i8], ptr %i.boy, i64 %.0343420.i.i165
  %i.bpa = load i32, ptr %i.boz, align 4, !tbaa !169 ; 4 uses
  %i.bpb = zext i32 %i.bpa to i64                 ; 3 uses
  %i.bpc = getelementptr inbounds nuw [2832 x i8], ptr %i.bnk, i64 %.0343420.i.i165 ; 7 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 2816
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpc, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpc, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bpe, align 8, !tbaa !204
  %.not487.i.i167 = icmp eq i32 %i.bpa, 0
  br i1 %.not487.i.i167, label %bb.er, label %.lr.ph.i171.i168.preheader

.lr.ph.i171.i168.preheader:                       ; preds = %bb.eq
  %xtraiter1003 = and i64 %i.bpb, 1
  %i.bpf = icmp eq i32 %i.bpa, 1
  br i1 %i.bpf, label %.lr.ph.i171.i168.epil.preheader, label %.lr.ph.i171.i168.preheader.new

.lr.ph.i171.i168.preheader.new:                   ; preds = %.lr.ph.i171.i168.preheader
  %unroll_iter1008 = and i64 %i.bpb, 4294967294
  br label %.lr.ph.i171.i168

.lr.ph.i171.i168:                                 ; preds = %.lr.ph.i171.i168, %.lr.ph.i171.i168.preheader.new
  %.2352417.i.i169 = phi i64 [ %.1351419.i.i166, %.lr.ph.i171.i168.preheader.new ], [ %i.bpm, %.lr.ph.i171.i168 ] ; 3 uses
  %niter1009 = phi i64 [ 0, %.lr.ph.i171.i168.preheader.new ], [ %niter1009.next.1, %.lr.ph.i171.i168 ]
  %i.bpg = getelementptr inbounds nuw [2 x i8], ptr %i.act, i64 %.2352417.i.i169
  %i.bph = load i16, ptr %i.bpg, align 2, !tbaa !195
  %i.bpi = zext i16 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.bpc, i64 %i.bpi ; 2 uses
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !169
  %i.bpl = add i32 %i.bpk, 1
  store i32 %i.bpl, ptr %i.bpj, align 4, !tbaa !169
  %i.bpm = add i64 %.2352417.i.i169, 2            ; 3 uses
  %i.bpn = getelementptr [2 x i8], ptr %i.act, i64 %.2352417.i.i169
  %i.bpo = getelementptr i8, ptr %i.bpn, i64 2
  %i.bpp = load i16, ptr %i.bpo, align 2, !tbaa !195
end_hunk_2
begin_hunk_3_@BrotliSplitBlock:bb.a
  %i.cry = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.crx ; 2 uses
  %i.crz = load i32, ptr %i.cry, align 4, !tbaa !169
  %i.csa = add i32 %i.crz, 1
  store i32 %i.csa, ptr %i.cry, align 4, !tbaa !169
  %i.csb = getelementptr inbounds nuw i8, ptr %i.clu, i64 56
  %i.csc = load i16, ptr %i.crv, align 2, !tbaa !195
  %i.csd = zext i16 %i.csc to i64
  %i.cse = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.csd ; 2 uses
  %i.csf = load i32, ptr %i.cse, align 4, !tbaa !169
  %i.csg = add i32 %i.csf, 1
  store i32 %i.csg, ptr %i.cse, align 4, !tbaa !169
  %i.csh = getelementptr inbounds nuw i8, ptr %i.clu, i64 58
  %i.csi = load i16, ptr %i.csb, align 2, !tbaa !195
  %i.csj = zext i16 %i.csi to i64
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.csj ; 2 uses
  %i.csl = load i32, ptr %i.csk, align 4, !tbaa !169
  %i.csm = add i32 %i.csl, 1
  store i32 %i.csm, ptr %i.csk, align 4, !tbaa !169
  %i.csn = getelementptr inbounds nuw i8, ptr %i.clu, i64 60
  %i.cso = load i16, ptr %i.csh, align 2, !tbaa !195
  %i.csp = zext i16 %i.cso to i64
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.csp ; 2 uses
  %i.csr = load i32, ptr %i.csq, align 4, !tbaa !169
  %i.css = add i32 %i.csr, 1
  store i32 %i.css, ptr %i.csq, align 4, !tbaa !169
  %i.cst = getelementptr inbounds nuw i8, ptr %i.clu, i64 62
  %i.csu = load i16, ptr %i.csn, align 2, !tbaa !195
  %i.csv = zext i16 %i.csu to i64
  %i.csw = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.csv ; 2 uses
  %i.csx = load i32, ptr %i.csw, align 4, !tbaa !169
  %i.csy = add i32 %i.csx, 1
  store i32 %i.csy, ptr %i.csw, align 4, !tbaa !169
  %i.csz = getelementptr inbounds nuw i8, ptr %i.clu, i64 64
  %i.cta = load i16, ptr %i.cst, align 2, !tbaa !195
  %i.ctb = zext i16 %i.cta to i64
  %i.ctc = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.ctb ; 2 uses
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !169
  %i.cte = add i32 %i.ctd, 1
  store i32 %i.cte, ptr %i.ctc, align 4, !tbaa !169
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.clu, i64 66
  %i.ctg = load i16, ptr %i.csz, align 2, !tbaa !195
  %i.cth = zext i16 %i.ctg to i64
  %i.cti = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cth ; 2 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !169
  %i.ctk = add i32 %i.ctj, 1
  store i32 %i.ctk, ptr %i.cti, align 4, !tbaa !169
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.clu, i64 68
  %i.ctm = load i16, ptr %i.ctf, align 2, !tbaa !195
  %i.ctn = zext i16 %i.ctm to i64
  %i.cto = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.ctn ; 2 uses
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !169
  %i.ctq = add i32 %i.ctp, 1
  store i32 %i.ctq, ptr %i.cto, align 4, !tbaa !169
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.clu, i64 70
  %i.cts = load i16, ptr %i.ctl, align 2, !tbaa !195
  %i.ctt = zext i16 %i.cts to i64
  %i.ctu = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.ctt ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !169
  %i.ctw = add i32 %i.ctv, 1
  store i32 %i.ctw, ptr %i.ctu, align 4, !tbaa !169
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.clu, i64 72
  %i.cty = load i16, ptr %i.ctr, align 2, !tbaa !195
  %i.ctz = zext i16 %i.cty to i64
  %i.cua = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.ctz ; 2 uses
  %i.cub = load i32, ptr %i.cua, align 4, !tbaa !169
  %i.cuc = add i32 %i.cub, 1
  store i32 %i.cuc, ptr %i.cua, align 4, !tbaa !169
  %i.cud = getelementptr inbounds nuw i8, ptr %i.clu, i64 74
  %i.cue = load i16, ptr %i.ctx, align 2, !tbaa !195
  %i.cuf = zext i16 %i.cue to i64
  %i.cug = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cuf ; 2 uses
  %i.cuh = load i32, ptr %i.cug, align 4, !tbaa !169
  %i.cui = add i32 %i.cuh, 1
  store i32 %i.cui, ptr %i.cug, align 4, !tbaa !169
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.clu, i64 76
  %i.cuk = load i16, ptr %i.cud, align 2, !tbaa !195
  %i.cul = zext i16 %i.cuk to i64
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cul ; 2 uses
  %i.cun = load i32, ptr %i.cum, align 4, !tbaa !169
  %i.cuo = add i32 %i.cun, 1
  store i32 %i.cuo, ptr %i.cum, align 4, !tbaa !169
  %i.cup = getelementptr inbounds nuw i8, ptr %i.clu, i64 78
  %i.cuq = load i16, ptr %i.cuj, align 2, !tbaa !195
  %i.cur = zext i16 %i.cuq to i64
  %i.cus = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cur ; 2 uses
  %i.cut = load i32, ptr %i.cus, align 4, !tbaa !169
  %i.cuu = add i32 %i.cut, 1
  store i32 %i.cuu, ptr %i.cus, align 4, !tbaa !169
  %i.cuv = load i16, ptr %i.cup, align 2, !tbaa !195
  %i.cuw = zext i16 %i.cuv to i64
  %i.cux = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cuw ; 2 uses
  %i.cuy = load i32, ptr %i.cux, align 4, !tbaa !169
  %i.cuz = add i32 %i.cuy, 1
  store i32 %i.cuz, ptr %i.cux, align 4, !tbaa !169
  %i.cva = urem i64 %.020.i.i252, %spec.select
  %.idx857 = mul nuw nsw i64 %i.cva, 2192         ; 2 uses
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cau, i64 %.idx857 ; 8 uses
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cvb, i64 2176 ; 2 uses
  %i.cvd = load i64, ptr %i.cvc, align 8, !tbaa !212
  %i.cve = add i64 %i.cvd, 40
  store i64 %i.cve, ptr %i.cvc, align 8, !tbaa !212
  %bound0803 = icmp ult ptr %i.cvb, %scevgep802
  %i.cvf = add nuw nsw i64 %.idx857, 2176
  %bound1804 = icmp samesign ult i64 %.idx856, %i.cvf
  %found.conflict805 = and i1 %bound0803, %bound1804
  br i1 %found.conflict805, label %scalar.ph806, label %vector.body808

vector.body808:                                   ; preds = %vector.memcheck801, %vector.body808
  %index809 = phi i64 [ %index.next814.1, %vector.body808 ], [ 0, %vector.memcheck801 ] ; 4 uses
  %i.cvg = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %index809 ; 2 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvg, i64 16
  %wide.load810 = load <4 x i32>, ptr %i.cvg, align 4, !tbaa !169, !alias.scope !213
  %wide.load811 = load <4 x i32>, ptr %i.cvh, align 4, !tbaa !169, !alias.scope !213
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %index809 ; 3 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 16 ; 2 uses
  %wide.load812 = load <4 x i32>, ptr %i.cvi, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %wide.load813 = load <4 x i32>, ptr %i.cvj, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %i.cvk = add <4 x i32> %wide.load812, %wide.load810
  %i.cvl = add <4 x i32> %wide.load813, %wide.load811
  store <4 x i32> %i.cvk, ptr %i.cvi, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  store <4 x i32> %i.cvl, ptr %i.cvj, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %index.next814 = or disjoint i64 %index809, 8   ; 2 uses
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %index.next814 ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 16
  %wide.load810.1 = load <4 x i32>, ptr %i.cvm, align 4, !tbaa !169, !alias.scope !213
  %wide.load811.1 = load <4 x i32>, ptr %i.cvn, align 4, !tbaa !169, !alias.scope !213
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %index.next814 ; 3 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16 ; 2 uses
  %wide.load812.1 = load <4 x i32>, ptr %i.cvo, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %wide.load813.1 = load <4 x i32>, ptr %i.cvp, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %i.cvq = add <4 x i32> %wide.load812.1, %wide.load810.1
  %i.cvr = add <4 x i32> %wide.load813.1, %wide.load811.1
  store <4 x i32> %i.cvq, ptr %i.cvo, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  store <4 x i32> %i.cvr, ptr %i.cvp, align 4, !tbaa !169, !alias.scope !214, !noalias !213
  %index.next814.1 = add nuw nsw i64 %index809, 16 ; 2 uses
  %i.cvs = icmp eq i64 %index.next814.1, 544
  br i1 %i.cvs, label %HistogramAddHistogramDistance.exit.i.i, label %vector.body808, !llvm.loop !122

scalar.ph806:                                     ; preds = %vector.memcheck801, %scalar.ph806
  %.0.i18.i.i254 = phi i64 [ %i.cwq, %scalar.ph806 ], [ 0, %vector.memcheck801 ] ; 6 uses
  %i.cvt = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %.0.i18.i.i254
  %i.cvu = load i32, ptr %i.cvt, align 4, !tbaa !169
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %.0.i18.i.i254 ; 2 uses
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !169
  %i.cvx = add i32 %i.cvw, %i.cvu
  store i32 %i.cvx, ptr %i.cvv, align 4, !tbaa !169
  %i.cvy = or disjoint i64 %.0.i18.i.i254, 1      ; 2 uses
  %i.cvz = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cvy
  %i.cwa = load i32, ptr %i.cvz, align 4, !tbaa !169
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %i.cvy ; 2 uses
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !169
  %i.cwd = add i32 %i.cwc, %i.cwa
  store i32 %i.cwd, ptr %i.cwb, align 4, !tbaa !169
  %i.cwe = or disjoint i64 %.0.i18.i.i254, 2      ; 2 uses
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cwe
  %i.cwg = load i32, ptr %i.cwf, align 4, !tbaa !169
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %i.cwe ; 2 uses
  %i.cwi = load i32, ptr %i.cwh, align 4, !tbaa !169
  %i.cwj = add i32 %i.cwi, %i.cwg
  store i32 %i.cwj, ptr %i.cwh, align 4, !tbaa !169
  %i.cwk = or disjoint i64 %.0.i18.i.i254, 3      ; 2 uses
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %i.clf, i64 %i.cwk
  %i.cwm = load i32, ptr %i.cwl, align 4, !tbaa !169
  %i.cwn = getelementptr inbounds nuw [4 x i8], ptr %i.cvb, i64 %i.cwk ; 2 uses
  %i.cwo = load i32, ptr %i.cwn, align 4, !tbaa !169
  %i.cwp = add i32 %i.cwo, %i.cwm
  store i32 %i.cwp, ptr %i.cwn, align 4, !tbaa !169
  %i.cwq = add nuw nsw i64 %.0.i18.i.i254, 4      ; 2 uses
  %exitcond.not.i155.i255.3 = icmp eq i64 %i.cwq, 544
  br i1 %exitcond.not.i155.i255.3, label %HistogramAddHistogramDistance.exit.i.i, label %scalar.ph806, !llvm.loop !123

HistogramAddHistogramDistance.exit.i.i:           ; preds = %vector.body808, %scalar.ph806
  %i.cwr = add nuw i64 %.020.i.i252, 1            ; 2 uses
  %exitcond21.not.i.i256 = icmp eq i64 %i.cwr, %i.cll
  br i1 %exitcond21.not.i.i256, label %RefineEntropyCodesDistance.exit.i, label %vector.memcheck801, !llvm.loop !124

RefineEntropyCodesDistance.exit.i:                ; preds = %HistogramAddHistogramDistance.exit.i.i
  %i.cws = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %.1) #8 ; 23 uses
  %i.cwt = add nuw nsw i64 %spec.select, 7
  %i.cwu = lshr i64 %i.cwt, 3
  %i.cwv = mul nuw nsw i64 %spec.select, 4352
  %i.cww = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cwv) #8 ; 6 uses
  %i.cwx = shl nuw nsw i64 %spec.select, 3
  %i.cwy = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cwx) #8 ; 6 uses
  %i.cwz = mul i64 %i.cwu, %.1                    ; 2 uses
  %.not.i257 = icmp eq i64 %i.cwz, 0
  br i1 %.not.i257, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %RefineEntropyCodesDistance.exit.i
  %i.cxa = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cwz) #8
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %RefineEntropyCodesDistance.exit.i
  %i.cxb = phi ptr [ %i.cxa, %bb.gz ], [ null, %RefineEntropyCodesDistance.exit.i ] ; 4 uses
  %i.cxc = shl nuw nsw i64 %spec.select, 1
  %i.cxd = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.cxc) #8 ; 12 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !193
  %.inv.i258 = icmp sgt i32 %i.cxf, 10
  %i.cxg = select i1 %.inv.i258, i64 10, i64 3
  %i.cxh = add i64 %.1, -1                        ; 6 uses
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.cxh
  %xtraiter1039 = and i64 %.1, 1
  %unroll_iter1044 = and i64 %.1, -2
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1039, 0
  %lcmp.mod1043 = trunc i64 %.1 to i1
  %xtraiter1047 = and i64 %.1, 3                  ; 3 uses
  %unroll_iter1051 = and i64 %.1, -4
  %lcmp.mod1049.not = icmp eq i64 %xtraiter1047, 0
  %lcmp.mod1050 = icmp ne i64 %xtraiter1047, 0
  %xtraiter1060 = and i64 %.1, 1
  %unroll_iter1064 = and i64 %.1, -2
  %lcmp.mod1062.not = icmp eq i64 %xtraiter1060, 0
  %lcmp.mod1063 = trunc i64 %.1 to i1
  br label %bb.hb

bb.hb:                                            ; preds = %BuildBlockHistogramsDistance.exit.i, %bb.ha
  %.0181.i259 = phi i64 [ 0, %bb.ha ], [ %i.dfx, %BuildBlockHistogramsDistance.exit.i ]
  %.1180.i260 = phi i64 [ %spec.select, %bb.ha ], [ %i.ddr, %BuildBlockHistogramsDistance.exit.i ] ; 21 uses
  %i.cxj = add nuw nsw i64 %.1180.i260, 7
  %i.cxk = lshr i64 %i.cxj, 3                     ; 4 uses
  %i.cxl = icmp samesign ult i64 %.1180.i260, 2
  br i1 %i.cxl, label %.preheader.preheader.i.i444, label %bb.hc

.preheader.preheader.i.i444:                      ; preds = %bb.hb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cws, i8 0, i64 range(i64 128, 0) %.1, i1 false), !tbaa !168
  br label %FindBlocksDistance.exit.i

bb.hc:                                            ; preds = %bb.hb
  %i.cxm = mul nuw nsw i64 %.1180.i260, 4352
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cww, i8 0, i64 %i.cxm, i1 false)
  br label %bb.hd

bb.hd:                                            ; preds = %FastLog2.exit.i.i262, %bb.hc
  %.1116131.i.i261 = phi i64 [ 0, %bb.hc ], [ %i.cxx, %FastLog2.exit.i.i262 ] ; 3 uses
  %i.cxn = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.1116131.i.i261
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxn, i64 2176
  %i.cxp = load i64, ptr %i.cxo, align 8, !tbaa !212
  %i.cxq = and i64 %i.cxp, 4294967295             ; 3 uses
  %i.cxr = icmp samesign ult i64 %i.cxq, 256
  br i1 %i.cxr, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.cxs = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.cxq
  %i.cxt = load double, ptr %i.cxs, align 8, !tbaa !194
  br label %FastLog2.exit.i.i262

bb.hf:                                            ; preds = %bb.hd
  %i.cxu = uitofp nneg i64 %i.cxq to double
  %i.cxv = tail call double @log2(double noundef %i.cxu) #8
  br label %FastLog2.exit.i.i262

FastLog2.exit.i.i262:                             ; preds = %bb.hf, %bb.he
  %.0.i.i.i263 = phi double [ %i.cxt, %bb.he ], [ %i.cxv, %bb.hf ]
  %i.cxw = getelementptr inbounds nuw [8 x i8], ptr %i.cww, i64 %.1116131.i.i261
  store double %.0.i.i.i263, ptr %i.cxw, align 8, !tbaa !194
  %i.cxx = add nuw nsw i64 %.1116131.i.i261, 1    ; 2 uses
  %exitcond.not.i156.i264 = icmp eq i64 %i.cxx, %.1180.i260
  br i1 %exitcond.not.i156.i264, label %.preheader130.i.i265, label %bb.hd, !llvm.loop !125

.loopexit129.i.i272:                              ; preds = %BitCost.exit.i.i270
  %.not.i157.i273 = icmp eq i64 %i.cxy, 0
  br i1 %.not.i157.i273, label %bb.hk, label %.preheader130.i.i265, !llvm.loop !126

.preheader130.i.i265:                             ; preds = %FastLog2.exit.i.i262, %.loopexit129.i.i272
  %.2133.i.i266 = phi i64 [ %i.cxy, %.loopexit129.i.i272 ], [ 544, %FastLog2.exit.i.i262 ]
  %i.cxy = add nsw i64 %.2133.i.i266, -1          ; 4 uses
  %invariant.gep.i.i267 = getelementptr [4 x i8], ptr %i.cau, i64 %i.cxy
  %i.cxz = mul i64 %i.cxy, %.1180.i260
  %i.cya = getelementptr [8 x i8], ptr %i.cww, i64 %i.cxz
  br label %bb.hg

bb.hg:                                            ; preds = %BitCost.exit.i.i270, %.preheader130.i.i265
  %.0114132.i.i268 = phi i64 [ 0, %.preheader130.i.i265 ], [ %i.cyo, %BitCost.exit.i.i270 ] ; 4 uses
  %i.cyb = getelementptr inbounds nuw [8 x i8], ptr %i.cww, i64 %.0114132.i.i268
  %i.cyc = load double, ptr %i.cyb, align 8, !tbaa !194
  %gep.i.i269 = getelementptr [2192 x i8], ptr %invariant.gep.i.i267, i64 %.0114132.i.i268
  %i.cyd = load i32, ptr %gep.i.i269, align 4, !tbaa !169 ; 4 uses
  %i.cye = zext nneg i32 %i.cyd to i64
  %i.cyf = icmp eq i32 %i.cyd, 0
  br i1 %i.cyf, label %BitCost.exit.i.i270, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.cyg = icmp ult i32 %i.cyd, 256
  br i1 %i.cyg, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.cyh = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.cye
  %i.cyi = load double, ptr %i.cyh, align 8, !tbaa !194
  br label %BitCost.exit.i.i270

bb.hj:                                            ; preds = %bb.hh
  %i.cyj = uitofp i32 %i.cyd to double
  %i.cyk = tail call double @log2(double noundef %i.cyj) #8
  br label %BitCost.exit.i.i270

BitCost.exit.i.i270:                              ; preds = %bb.hj, %bb.hi, %bb.hg
  %i.cyl = phi double [ -2.000000e+00, %bb.hg ], [ %i.cyi, %bb.hi ], [ %i.cyk, %bb.hj ]
  %i.cym = fsub double %i.cyc, %i.cyl
  %i.cyn = getelementptr [8 x i8], ptr %i.cya, i64 %.0114132.i.i268
  store double %i.cym, ptr %i.cyn, align 8, !tbaa !194
  %i.cyo = add nuw nsw i64 %.0114132.i.i268, 1    ; 2 uses
  %exitcond145.not.i.i271 = icmp eq i64 %i.cyo, %.1180.i260
  br i1 %exitcond145.not.i.i271, label %.loopexit129.i.i272, label %bb.hg, !llvm.loop !127

bb.hk:                                            ; preds = %.loopexit129.i.i272
  %i.cyp = shl nuw nsw i64 %.1180.i260, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cwy, i8 0, i64 %i.cyp, i1 false)
  %i.cyq = mul i64 %i.cxk, %.1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cxb, i8 0, i64 %i.cyq, i1 false)
  %xtraiter1030 = and i64 %.1180.i260, 1
  %unroll_iter1036 = and i64 %.1180.i260, -2
  %lcmp.mod1032.not = icmp eq i64 %xtraiter1030, 0
  %lcmp.mod1035 = trunc i64 %.1180.i260 to i1
  br label %.new1027

.new1027:                                         ; preds = %bb.hu, %bb.hk
  %.0117137.i.i274 = phi i64 [ 0, %bb.hk ], [ %i.dam, %bb.hu ] ; 6 uses
  %i.cyr = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %.0117137.i.i274
  %i.cys = load i16, ptr %i.cyr, align 2, !tbaa !195
  %i.cyt = zext i16 %i.cys to i64
  %i.cyu = mul nuw nsw i64 %.1180.i260, %i.cyt
  %i.cyv = getelementptr inbounds nuw [8 x i8], ptr %i.cww, i64 %i.cyu ; 3 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.0117137.i.i274 ; 3 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hp, %.new1027
  %.0109135.i.i275 = phi i64 [ 0, %.new1027 ], [ %i.czm, %bb.hp ] ; 5 uses
  %.0112134.i.i276 = phi double [ f0x547D42AEA2879F2E, %.new1027 ], [ %.1113.i.i277.1, %bb.hp ] ; 2 uses
  %niter1037 = phi i64 [ 0, %.new1027 ], [ %niter1037.next.1, %bb.hp ]
  %i.cyx = getelementptr inbounds nuw [8 x i8], ptr %i.cyv, i64 %.0109135.i.i275
  %i.cyy = load double, ptr %i.cyx, align 8, !tbaa !194
  %i.cyz = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %.0109135.i.i275 ; 2 uses
  %i.cza = load double, ptr %i.cyz, align 8, !tbaa !194
  %i.czb = fadd double %i.cyy, %i.cza             ; 3 uses
  store double %i.czb, ptr %i.cyz, align 8, !tbaa !194
  %i.czc = fcmp olt double %i.czb, %.0112134.i.i276
  br i1 %i.czc, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.czd = trunc i64 %.0109135.i.i275 to i8
  store i8 %i.czd, ptr %i.cyw, align 1, !tbaa !168
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.1113.i.i277 = phi double [ %i.czb, %bb.hm ], [ %.0112134.i.i276, %bb.hl ] ; 2 uses
  %i.cze = or disjoint i64 %.0109135.i.i275, 1    ; 3 uses
  %i.czf = getelementptr inbounds nuw [8 x i8], ptr %i.cyv, i64 %i.cze
  %i.czg = load double, ptr %i.czf, align 8, !tbaa !194
  %i.czh = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %i.cze ; 2 uses
  %i.czi = load double, ptr %i.czh, align 8, !tbaa !194
  %i.czj = fadd double %i.czg, %i.czi             ; 3 uses
  store double %i.czj, ptr %i.czh, align 8, !tbaa !194
  %i.czk = fcmp olt double %i.czj, %.1113.i.i277
  br i1 %i.czk, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.czl = trunc i64 %i.cze to i8
  store i8 %i.czl, ptr %i.cyw, align 1, !tbaa !168
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.1113.i.i277.1 = phi double [ %i.czj, %bb.ho ], [ %.1113.i.i277, %bb.hn ] ; 4 uses
  %i.czm = add nuw nsw i64 %.0109135.i.i275, 2    ; 4 uses
  %niter1037.next.1 = add nuw i64 %niter1037, 2   ; 2 uses
  %niter1037.ncmp.1 = icmp eq i64 %niter1037.next.1, %unroll_iter1036
  br i1 %niter1037.ncmp.1, label %.unr-lcssa1028, label %bb.hl, !llvm.loop !128

.unr-lcssa1028:                                   ; preds = %bb.hp
  br i1 %lcmp.mod1032.not, label %.epilog-lcssa1033, label %.epil.preheader1029

.epil.preheader1029:                              ; preds = %.unr-lcssa1028
  tail call void @llvm.assume(i1 %lcmp.mod1035)
  %i.czn = getelementptr inbounds nuw [8 x i8], ptr %i.cyv, i64 %i.czm
  %i.czo = load double, ptr %i.czn, align 8, !tbaa !194
  %i.czp = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %i.czm ; 2 uses
  %i.czq = load double, ptr %i.czp, align 8, !tbaa !194
  %i.czr = fadd double %i.czo, %i.czq             ; 3 uses
  store double %i.czr, ptr %i.czp, align 8, !tbaa !194
  %i.czs = fcmp olt double %i.czr, %.1113.i.i277.1
  br i1 %i.czs, label %bb.hq, label %.epilog-lcssa1033

bb.hq:                                            ; preds = %.epil.preheader1029
  %i.czt = trunc i64 %i.czm to i8
  store i8 %i.czt, ptr %i.cyw, align 1, !tbaa !168
  br label %.epilog-lcssa1033

.epilog-lcssa1033:                                ; preds = %.epil.preheader1029, %bb.hq, %.unr-lcssa1028
  %.1113.i.i277.lcssa = phi double [ %.1113.i.i277.1, %.unr-lcssa1028 ], [ %i.czr, %bb.hq ], [ %.1113.i.i277.1, %.epil.preheader1029 ]
  %i.czu = mul i64 %.0117137.i.i274, %i.cxk
  %i.czv = icmp ult i64 %.0117137.i.i274, 2000
  %i.czw = uitofp nneg i64 %.0117137.i.i274 to double
  %i.czx = tail call nnan double @llvm.fmuladd.f64(double %i.czw, double f0x3F02599ED7C6FBD3, double 7.700000e-01)
  %i.czy = fmul nnan double %i.czx, 1.460000e+01
  %.0111.i.i279 = select i1 %i.czv, double %i.czy, double 1.460000e+01 ; 2 uses
  %i.czz = getelementptr i8, ptr %i.cxb, i64 %i.czu
  br label %bb.hr

bb.hr:                                            ; preds = %bb.ht, %.epilog-lcssa1033
  %.1110136.i.i280 = phi i64 [ 0, %.epilog-lcssa1033 ], [ %i.dal, %bb.ht ] ; 4 uses
  %i.daa = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %.1110136.i.i280 ; 3 uses
  %i.dab = load double, ptr %i.daa, align 8, !tbaa !194
  %i.dac = fsub double %i.dab, %.1113.i.i277.lcssa ; 2 uses
  store double %i.dac, ptr %i.daa, align 8, !tbaa !194
  %i.dad = fcmp ult double %i.dac, %.0111.i.i279
  br i1 %i.dad, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.dae = trunc i64 %.1110136.i.i280 to i8
  %i.daf = and i8 %i.dae, 7
  %i.dag = shl nuw i8 1, %i.daf
  store double %.0111.i.i279, ptr %i.daa, align 8, !tbaa !194
  %i.dah = lshr i64 %.1110136.i.i280, 3
  %i.dai = getelementptr i8, ptr %i.czz, i64 %i.dah ; 2 uses
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !168
  %i.dak = or i8 %i.daj, %i.dag
  store i8 %i.dak, ptr %i.dai, align 1, !tbaa !168
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.dal = add nuw nsw i64 %.1110136.i.i280, 1    ; 2 uses
  %exitcond147.not.i.i281 = icmp eq i64 %i.dal, %.1180.i260
  br i1 %exitcond147.not.i.i281, label %bb.hu, label %bb.hr, !llvm.loop !129

bb.hu:                                            ; preds = %bb.ht
  %i.dam = add nuw i64 %.0117137.i.i274, 1        ; 2 uses
  %exitcond148.not.i.i282 = icmp eq i64 %i.dam, %.1
  br i1 %exitcond148.not.i.i282, label %.lr.ph.preheader.i.i283, label %.new1027, !llvm.loop !130

.lr.ph.preheader.i.i283:                          ; preds = %bb.hu
  %i.dan = load i8, ptr %i.cxi, align 1, !tbaa !168
  %i.dao = mul i64 %i.cxk, %i.cxh
  br label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %bb.hw, %.lr.ph.preheader.i.i283
  %.0142.i.i285 = phi i8 [ %.1.i159.i293, %bb.hw ], [ %i.dan, %.lr.ph.preheader.i.i283 ] ; 4 uses
  %.0107141.i.i286 = phi i64 [ %i.das, %bb.hw ], [ %i.dao, %.lr.ph.preheader.i.i283 ]
  %.1118140.i.i287 = phi i64 [ %i.dar, %bb.hw ], [ %i.cxh, %.lr.ph.preheader.i.i283 ]
  %.0119139.i.i288 = phi i64 [ %.1120.i.i292, %bb.hw ], [ 1, %.lr.ph.preheader.i.i283 ] ; 2 uses
  %i.dap = and i8 %.0142.i.i285, 7
  %i.daq = shl nuw i8 1, %i.dap
  %i.dar = add i64 %.1118140.i.i287, -1           ; 4 uses
  %i.das = sub i64 %.0107141.i.i286, %i.cxk       ; 2 uses
  %i.dat = lshr i8 %.0142.i.i285, 3
  %i.dau = zext nneg i8 %i.dat to i64
  %i.dav = getelementptr i8, ptr %i.cxb, i64 %i.das
  %i.daw = getelementptr i8, ptr %i.dav, i64 %i.dau
  %i.dax = load i8, ptr %i.daw, align 1, !tbaa !168
  %i.day = and i8 %i.dax, %i.daq
  %.not125.i.i289 = icmp eq i8 %i.day, 0
  br i1 %.not125.i.i289, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph.i.i284
  %i.daz = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dar
  %i.dba = load i8, ptr %i.daz, align 1, !tbaa !168 ; 2 uses
  %.not126.i.i290 = icmp ne i8 %.0142.i.i285, %i.dba
  %i.dbb = zext i1 %.not126.i.i290 to i64
  %spec.select.i158.i291 = add i64 %.0119139.i.i288, %i.dbb
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.lr.ph.i.i284
  %.1120.i.i292 = phi i64 [ %.0119139.i.i288, %.lr.ph.i.i284 ], [ %spec.select.i158.i291, %bb.hv ] ; 2 uses
  %.1.i159.i293 = phi i8 [ %.0142.i.i285, %.lr.ph.i.i284 ], [ %i.dba, %bb.hv ] ; 2 uses
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dar
  store i8 %.1.i159.i293, ptr %i.dbc, align 1, !tbaa !168
  %.not124.i.i294 = icmp eq i64 %i.dar, 0
  br i1 %.not124.i.i294, label %FindBlocksDistance.exit.i, label %.lr.ph.i.i284, !llvm.loop !131

FindBlocksDistance.exit.i:                        ; preds = %bb.hw, %.preheader.preheader.i.i444
  %.0108.i.i295 = phi i64 [ 1, %.preheader.preheader.i.i444 ], [ %.1120.i.i292, %bb.hw ] ; 19 uses
  %.not.i160.i296 = icmp eq i64 %.1180.i260, 0
  br i1 %.not.i160.i296, label %.preheader26.i.i300.preheader, label %iter.check828

iter.check828:                                    ; preds = %FindBlocksDistance.exit.i
  %min.iters.check817 = icmp ult i64 %.1180.i260, 4
  br i1 %min.iters.check817, label %.lr.ph.i161.i297.preheader, label %vector.main.loop.iter.check818

vector.main.loop.iter.check818:                   ; preds = %iter.check828
  %min.iters.check819 = icmp ult i64 %.1180.i260, 16
  br i1 %min.iters.check819, label %vec.epilog.ph832, label %vector.ph820

vector.ph820:                                     ; preds = %vector.main.loop.iter.check818
  %i.dbd = and i64 %.1180.i260, 12
  %n.vec821 = and i64 %.1180.i260, -16            ; 4 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next824, %vector.body822 ] ; 2 uses
  %i.dbe = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %index823 ; 2 uses
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbe, i64 16
  store <8 x i16> splat (i16 256), ptr %i.dbe, align 2, !tbaa !195
  store <8 x i16> splat (i16 256), ptr %i.dbf, align 2, !tbaa !195
  %index.next824 = add nuw i64 %index823, 16      ; 2 uses
  %i.dbg = icmp eq i64 %index.next824, %n.vec821
  br i1 %i.dbg, label %middle.block825, label %vector.body822, !llvm.loop !132

middle.block825:                                  ; preds = %vector.body822
  %cmp.n826 = icmp eq i64 %.1180.i260, %n.vec821
  br i1 %cmp.n826, label %.preheader26.i.i300.preheader, label %vec.epilog.iter.check830

vec.epilog.iter.check830:                         ; preds = %middle.block825
  %min.epilog.iters.check831 = icmp eq i64 %i.dbd, 0
  br i1 %min.epilog.iters.check831, label %.lr.ph.i161.i297.preheader, label %vec.epilog.ph832, !prof !196

vec.epilog.ph832:                                 ; preds = %vector.main.loop.iter.check818, %vec.epilog.iter.check830
  %vec.epilog.resume.val827 = phi i64 [ %n.vec821, %vec.epilog.iter.check830 ], [ 0, %vector.main.loop.iter.check818 ]
  %n.vec833 = and i64 %.1180.i260, -4             ; 3 uses
  br label %vec.epilog.vector.body834

vec.epilog.vector.body834:                        ; preds = %vec.epilog.vector.body834, %vec.epilog.ph832
  %index835 = phi i64 [ %vec.epilog.resume.val827, %vec.epilog.ph832 ], [ %index.next836, %vec.epilog.vector.body834 ] ; 2 uses
  %i.dbh = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %index835
  store <4 x i16> splat (i16 256), ptr %i.dbh, align 2, !tbaa !195
  %index.next836 = add nuw i64 %index835, 4       ; 2 uses
  %i.dbi = icmp eq i64 %index.next836, %n.vec833
  br i1 %i.dbi, label %vec.epilog.middle.block837, label %vec.epilog.vector.body834, !llvm.loop !133

vec.epilog.middle.block837:                       ; preds = %vec.epilog.vector.body834
  %cmp.n838 = icmp eq i64 %.1180.i260, %n.vec833
  br i1 %cmp.n838, label %.preheader26.i.i300.preheader, label %.lr.ph.i161.i297.preheader

.lr.ph.i161.i297.preheader:                       ; preds = %iter.check828, %vec.epilog.iter.check830, %vec.epilog.middle.block837
  %.027.i.i298.ph = phi i64 [ 0, %iter.check828 ], [ %n.vec821, %vec.epilog.iter.check830 ], [ %n.vec833, %vec.epilog.middle.block837 ]
  br label %.lr.ph.i161.i297

.lr.ph.i161.i297:                                 ; preds = %.lr.ph.i161.i297.preheader, %.lr.ph.i161.i297
  %.027.i.i298 = phi i64 [ %i.dbk, %.lr.ph.i161.i297 ], [ %.027.i.i298.ph, %.lr.ph.i161.i297.preheader ] ; 2 uses
  %i.dbj = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %.027.i.i298
  store i16 256, ptr %i.dbj, align 2, !tbaa !195
  %i.dbk = add nuw nsw i64 %.027.i.i298, 1        ; 2 uses
  %exitcond.not.i162.i299 = icmp eq i64 %i.dbk, %.1180.i260
  br i1 %exitcond.not.i162.i299, label %.preheader26.i.i300.preheader, label %.lr.ph.i161.i297, !llvm.loop !134

.preheader26.i.i300.preheader:                    ; preds = %FindBlocksDistance.exit.i, %vec.epilog.middle.block837, %middle.block825, %.lr.ph.i161.i297
  br label %.preheader26.i.i300

.preheader26.i.i300:                              ; preds = %bb.hz, %.preheader26.i.i300.preheader
  %.129.i.i301 = phi i64 [ 0, %.preheader26.i.i300.preheader ], [ %i.dca, %bb.hz ] ; 3 uses
  %.02328.i.i302 = phi i16 [ 0, %.preheader26.i.i300.preheader ], [ %.124.i.i303.1, %bb.hz ] ; 3 uses
  %niter1045 = phi i64 [ 0, %.preheader26.i.i300.preheader ], [ %niter1045.next.1, %bb.hz ]
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.129.i.i301
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !168
  %i.dbn = zext i8 %i.dbm to i64
  %i.dbo = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dbn ; 2 uses
  %i.dbp = load i16, ptr %i.dbo, align 2, !tbaa !195
  %i.dbq = icmp eq i16 %i.dbp, 256
  br i1 %i.dbq, label %bb.hx, label %.preheader26.i.i300.1

bb.hx:                                            ; preds = %.preheader26.i.i300
  %i.dbr = add i16 %.02328.i.i302, 1
  store i16 %.02328.i.i302, ptr %i.dbo, align 2, !tbaa !195
  br label %.preheader26.i.i300.1

.preheader26.i.i300.1:                            ; preds = %bb.hx, %.preheader26.i.i300
  %.124.i.i303 = phi i16 [ %i.dbr, %bb.hx ], [ %.02328.i.i302, %.preheader26.i.i300 ] ; 3 uses
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.129.i.i301
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 1
  %i.dbu = load i8, ptr %i.dbt, align 1, !tbaa !168
  %i.dbv = zext i8 %i.dbu to i64
  %i.dbw = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dbv ; 2 uses
  %i.dbx = load i16, ptr %i.dbw, align 2, !tbaa !195
  %i.dby = icmp eq i16 %i.dbx, 256
  br i1 %i.dby, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.preheader26.i.i300.1
  %i.dbz = add i16 %.124.i.i303, 1
  store i16 %.124.i.i303, ptr %i.dbw, align 2, !tbaa !195
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %.preheader26.i.i300.1
  %.124.i.i303.1 = phi i16 [ %i.dbz, %bb.hy ], [ %.124.i.i303, %.preheader26.i.i300.1 ] ; 5 uses
  %i.dca = add nuw i64 %.129.i.i301, 2            ; 2 uses
  %niter1045.next.1 = add i64 %niter1045, 2       ; 2 uses
  %niter1045.ncmp.1 = icmp eq i64 %niter1045.next.1, %unroll_iter1044
  br i1 %niter1045.ncmp.1, label %.preheader.i.i306.preheader.unr-lcssa, label %.preheader26.i.i300, !llvm.loop !135

.preheader.i.i306.preheader.unr-lcssa:            ; preds = %bb.hz
  br i1 %lcmp.mod1041.not, label %.preheader.i.i306.preheader.new, label %.preheader26.i.i300.epil.preheader

.preheader26.i.i300.epil.preheader:               ; preds = %.preheader.i.i306.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1043)
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dca
  %i.dcc = load i8, ptr %i.dcb, align 1, !tbaa !168
  %i.dcd = zext i8 %i.dcc to i64
  %i.dce = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dcd ; 2 uses
  %i.dcf = load i16, ptr %i.dce, align 2, !tbaa !195
  %i.dcg = icmp eq i16 %i.dcf, 256
  br i1 %i.dcg, label %bb.ia, label %.preheader.i.i306.preheader.new

bb.ia:                                            ; preds = %.preheader26.i.i300.epil.preheader
  %i.dch = add i16 %.124.i.i303.1, 1
  store i16 %.124.i.i303.1, ptr %i.dce, align 2, !tbaa !195
  br label %.preheader.i.i306.preheader.new

.preheader.i.i306.preheader.new:                  ; preds = %.preheader.i.i306.preheader.unr-lcssa, %bb.ia, %.preheader26.i.i300.epil.preheader
  %.124.i.i303.lcssa = phi i16 [ %.124.i.i303.1, %.preheader.i.i306.preheader.unr-lcssa ], [ %i.dch, %bb.ia ], [ %.124.i.i303.1, %.preheader26.i.i300.epil.preheader ] ; 3 uses
  br label %.preheader.i.i306

.preheader.i.i306:                                ; preds = %.preheader.i.i306, %.preheader.i.i306.preheader.new
  %.230.i.i307 = phi i64 [ 0, %.preheader.i.i306.preheader.new ], [ %i.ddj, %.preheader.i.i306 ] ; 5 uses
  %niter1052 = phi i64 [ 0, %.preheader.i.i306.preheader.new ], [ %niter1052.next.3, %.preheader.i.i306 ]
  %i.dci = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.230.i.i307 ; 2 uses
  %i.dcj = load i8, ptr %i.dci, align 1, !tbaa !168
  %i.dck = zext i8 %i.dcj to i64
  %i.dcl = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dck
  %i.dcm = load i16, ptr %i.dcl, align 2, !tbaa !195
  %i.dcn = trunc i16 %i.dcm to i8
  store i8 %i.dcn, ptr %i.dci, align 1, !tbaa !168
  %i.dco = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.230.i.i307
  %i.dcp = getelementptr inbounds nuw i8, ptr %i.dco, i64 1 ; 2 uses
  %i.dcq = load i8, ptr %i.dcp, align 1, !tbaa !168
  %i.dcr = zext i8 %i.dcq to i64
  %i.dcs = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dcr
  %i.dct = load i16, ptr %i.dcs, align 2, !tbaa !195
  %i.dcu = trunc i16 %i.dct to i8
  store i8 %i.dcu, ptr %i.dcp, align 1, !tbaa !168
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.230.i.i307
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcv, i64 2 ; 2 uses
  %i.dcx = load i8, ptr %i.dcw, align 1, !tbaa !168
  %i.dcy = zext i8 %i.dcx to i64
  %i.dcz = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.dcy
  %i.dda = load i16, ptr %i.dcz, align 2, !tbaa !195
  %i.ddb = trunc i16 %i.dda to i8
  store i8 %i.ddb, ptr %i.dcw, align 1, !tbaa !168
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.230.i.i307
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.ddc, i64 3 ; 2 uses
  %i.dde = load i8, ptr %i.ddd, align 1, !tbaa !168
  %i.ddf = zext i8 %i.dde to i64
  %i.ddg = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.ddf
  %i.ddh = load i16, ptr %i.ddg, align 2, !tbaa !195
  %i.ddi = trunc i16 %i.ddh to i8
  store i8 %i.ddi, ptr %i.ddd, align 1, !tbaa !168
  %i.ddj = add nuw i64 %.230.i.i307, 4            ; 2 uses
  %niter1052.next.3 = add i64 %niter1052, 4       ; 2 uses
  %niter1052.ncmp.3 = icmp eq i64 %niter1052.next.3, %unroll_iter1051
  br i1 %niter1052.ncmp.3, label %RemapBlockIdsDistance.exit.i.unr-lcssa, label %.preheader.i.i306, !llvm.loop !136

RemapBlockIdsDistance.exit.i.unr-lcssa:           ; preds = %.preheader.i.i306
  br i1 %lcmp.mod1049.not, label %RemapBlockIdsDistance.exit.i, label %.preheader.i.i306.epil.preheader

.preheader.i.i306.epil.preheader:                 ; preds = %RemapBlockIdsDistance.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1050)
  br label %.preheader.i.i306.epil

.preheader.i.i306.epil:                           ; preds = %.preheader.i.i306.epil, %.preheader.i.i306.epil.preheader
  %.230.i.i307.epil = phi i64 [ %i.ddq, %.preheader.i.i306.epil ], [ %i.ddj, %.preheader.i.i306.epil.preheader ] ; 2 uses
  %epil.iter1048 = phi i64 [ %epil.iter1048.next, %.preheader.i.i306.epil ], [ 0, %.preheader.i.i306.epil.preheader ]
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.230.i.i307.epil ; 2 uses
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !168
  %i.ddm = zext i8 %i.ddl to i64
  %i.ddn = getelementptr inbounds nuw [2 x i8], ptr %i.cxd, i64 %i.ddm
  %i.ddo = load i16, ptr %i.ddn, align 2, !tbaa !195
  %i.ddp = trunc i16 %i.ddo to i8
  store i8 %i.ddp, ptr %i.ddk, align 1, !tbaa !168
  %i.ddq = add nuw i64 %.230.i.i307.epil, 1
  %epil.iter1048.next = add i64 %epil.iter1048, 1 ; 2 uses
  %epil.iter1048.cmp.not = icmp eq i64 %epil.iter1048.next, %xtraiter1047
  br i1 %epil.iter1048.cmp.not, label %RemapBlockIdsDistance.exit.i, label %.preheader.i.i306.epil, !llvm.loop !137

RemapBlockIdsDistance.exit.i:                     ; preds = %.preheader.i.i306.epil, %RemapBlockIdsDistance.exit.i.unr-lcssa
  %i.ddr = zext i16 %.124.i.i303.lcssa to i64     ; 3 uses
  %.not.i164.i309 = icmp eq i16 %.124.i.i303.lcssa, 0
  br i1 %.not.i164.i309, label %ClearHistogramsDistance.exit.i.i.preheader, label %.lr.ph.i165.i310.preheader

.lr.ph.i165.i310.preheader:                       ; preds = %RemapBlockIdsDistance.exit.i
  %xtraiter1053 = and i64 %i.ddr, 3               ; 3 uses
  %i.dds = icmp ult i16 %.124.i.i303.lcssa, 4
  br i1 %i.dds, label %.lr.ph.i165.i310.epil.preheader, label %.lr.ph.i165.i310.preheader.new

.lr.ph.i165.i310.preheader.new:                   ; preds = %.lr.ph.i165.i310.preheader
  %unroll_iter1057 = and i64 %i.ddr, 65532
  br label %.lr.ph.i165.i310

.lr.ph.i165.i310:                                 ; preds = %.lr.ph.i165.i310, %.lr.ph.i165.i310.preheader.new
  %.0.i9.i.i311 = phi i64 [ 0, %.lr.ph.i165.i310.preheader.new ], [ %i.dee, %.lr.ph.i165.i310 ] ; 5 uses
  %niter1058 = phi i64 [ 0, %.lr.ph.i165.i310.preheader.new ], [ %niter1058.next.3, %.lr.ph.i165.i310 ]
  %i.ddt = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.0.i9.i.i311 ; 2 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddt, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ddu, align 8, !tbaa !211
  %i.ddv = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.0.i9.i.i311 ; 2 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.ddv, i64 2192
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddv, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddw, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ddx, align 8, !tbaa !211
  %i.ddy = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.0.i9.i.i311 ; 2 uses
  %i.ddz = getelementptr inbounds nuw i8, ptr %i.ddy, i64 4384
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddy, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddz, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dea, align 8, !tbaa !211
  %i.deb = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.0.i9.i.i311 ; 2 uses
  %i.dec = getelementptr inbounds nuw i8, ptr %i.deb, i64 6576
  %i.ded = getelementptr inbounds nuw i8, ptr %i.deb, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dec, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ded, align 8, !tbaa !211
  %i.dee = add nuw nsw i64 %.0.i9.i.i311, 4       ; 2 uses
  %niter1058.next.3 = add i64 %niter1058, 4       ; 2 uses
  %niter1058.ncmp.3 = icmp eq i64 %niter1058.next.3, %unroll_iter1057
  br i1 %niter1058.ncmp.3, label %ClearHistogramsDistance.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i310, !llvm.loop !117

ClearHistogramsDistance.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i310
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1053, 0
  br i1 %lcmp.mod1055.not, label %ClearHistogramsDistance.exit.i.i.preheader, label %.lr.ph.i165.i310.epil.preheader

.lr.ph.i165.i310.epil.preheader:                  ; preds = %ClearHistogramsDistance.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i310.preheader
  %.0.i9.i.i311.epil.init = phi i64 [ 0, %.lr.ph.i165.i310.preheader ], [ %i.dee, %ClearHistogramsDistance.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1056 = icmp ne i64 %xtraiter1053, 0
  tail call void @llvm.assume(i1 %lcmp.mod1056)
  br label %.lr.ph.i165.i310.epil

.lr.ph.i165.i310.epil:                            ; preds = %.lr.ph.i165.i310.epil, %.lr.ph.i165.i310.epil.preheader
  %.0.i9.i.i311.epil = phi i64 [ %i.deh, %.lr.ph.i165.i310.epil ], [ %.0.i9.i.i311.epil.init, %.lr.ph.i165.i310.epil.preheader ] ; 2 uses
  %epil.iter1054 = phi i64 [ %epil.iter1054.next, %.lr.ph.i165.i310.epil ], [ 0, %.lr.ph.i165.i310.epil.preheader ]
  %i.def = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %.0.i9.i.i311.epil ; 2 uses
  %i.deg = getelementptr inbounds nuw i8, ptr %i.def, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.def, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.deg, align 8, !tbaa !211
  %i.deh = add nuw nsw i64 %.0.i9.i.i311.epil, 1
  %epil.iter1054.next = add i64 %epil.iter1054, 1 ; 2 uses
  %epil.iter1054.cmp.not = icmp eq i64 %epil.iter1054.next, %xtraiter1053
  br i1 %epil.iter1054.cmp.not, label %ClearHistogramsDistance.exit.i.i.preheader, label %.lr.ph.i165.i310.epil, !llvm.loop !138

ClearHistogramsDistance.exit.i.i.preheader:       ; preds = %RemapBlockIdsDistance.exit.i, %.lr.ph.i165.i310.epil, %ClearHistogramsDistance.exit.i.i.preheader.loopexit.unr-lcssa
  br label %ClearHistogramsDistance.exit.i.i

ClearHistogramsDistance.exit.i.i:                 ; preds = %ClearHistogramsDistance.exit.i.i, %ClearHistogramsDistance.exit.i.i.preheader
  %.010.i.i313 = phi i64 [ 0, %ClearHistogramsDistance.exit.i.i.preheader ], [ %i.dfj, %ClearHistogramsDistance.exit.i.i ] ; 4 uses
  %niter1065 = phi i64 [ 0, %ClearHistogramsDistance.exit.i.i.preheader ], [ %niter1065.next.1, %ClearHistogramsDistance.exit.i.i ]
  %i.dei = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.010.i.i313
  %i.dej = load i8, ptr %i.dei, align 1, !tbaa !168
  %i.dek = zext i8 %i.dej to i64
  %i.del = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %i.dek ; 2 uses
  %i.dem = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %.010.i.i313
  %i.den = load i16, ptr %i.dem, align 2, !tbaa !195
  %i.deo = zext i16 %i.den to i64
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.del, i64 %i.deo ; 2 uses
  %i.deq = load i32, ptr %i.dep, align 4, !tbaa !169
  %i.der = add i32 %i.deq, 1
  store i32 %i.der, ptr %i.dep, align 4, !tbaa !169
  %i.des = getelementptr inbounds nuw i8, ptr %i.del, i64 2176 ; 2 uses
  %i.det = load i64, ptr %i.des, align 8, !tbaa !212
  %i.deu = add i64 %i.det, 1
  store i64 %i.deu, ptr %i.des, align 8, !tbaa !212
  %i.dev = or disjoint i64 %.010.i.i313, 1        ; 2 uses
  %i.dew = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dev
  %i.dex = load i8, ptr %i.dew, align 1, !tbaa !168
  %i.dey = zext i8 %i.dex to i64
  %i.dez = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %i.dey ; 2 uses
  %i.dfa = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %i.dev
  %i.dfb = load i16, ptr %i.dfa, align 2, !tbaa !195
  %i.dfc = zext i16 %i.dfb to i64
  %i.dfd = getelementptr inbounds nuw [4 x i8], ptr %i.dez, i64 %i.dfc ; 2 uses
  %i.dfe = load i32, ptr %i.dfd, align 4, !tbaa !169
  %i.dff = add i32 %i.dfe, 1
  store i32 %i.dff, ptr %i.dfd, align 4, !tbaa !169
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dez, i64 2176 ; 2 uses
  %i.dfh = load i64, ptr %i.dfg, align 8, !tbaa !212
  %i.dfi = add i64 %i.dfh, 1
  store i64 %i.dfi, ptr %i.dfg, align 8, !tbaa !212
  %i.dfj = add nuw i64 %.010.i.i313, 2            ; 3 uses
  %niter1065.next.1 = add i64 %niter1065, 2       ; 2 uses
  %niter1065.ncmp.1 = icmp eq i64 %niter1065.next.1, %unroll_iter1064
  br i1 %niter1065.ncmp.1, label %BuildBlockHistogramsDistance.exit.i.unr-lcssa, label %ClearHistogramsDistance.exit.i.i, !llvm.loop !139

BuildBlockHistogramsDistance.exit.i.unr-lcssa:    ; preds = %ClearHistogramsDistance.exit.i.i
  br i1 %lcmp.mod1062.not, label %BuildBlockHistogramsDistance.exit.i, label %ClearHistogramsDistance.exit.i.i.epil.preheader

ClearHistogramsDistance.exit.i.i.epil.preheader:  ; preds = %BuildBlockHistogramsDistance.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1063)
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dfj
  %i.dfl = load i8, ptr %i.dfk, align 1, !tbaa !168
  %i.dfm = zext i8 %i.dfl to i64
  %i.dfn = getelementptr inbounds nuw [2192 x i8], ptr %i.cau, i64 %i.dfm ; 2 uses
  %i.dfo = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %i.dfj
  %i.dfp = load i16, ptr %i.dfo, align 2, !tbaa !195
  %i.dfq = zext i16 %i.dfp to i64
  %i.dfr = getelementptr inbounds nuw [4 x i8], ptr %i.dfn, i64 %i.dfq ; 2 uses
  %i.dfs = load i32, ptr %i.dfr, align 4, !tbaa !169
  %i.dft = add i32 %i.dfs, 1
  store i32 %i.dft, ptr %i.dfr, align 4, !tbaa !169
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.dfn, i64 2176 ; 2 uses
  %i.dfv = load i64, ptr %i.dfu, align 8, !tbaa !212
  %i.dfw = add i64 %i.dfv, 1
  store i64 %i.dfw, ptr %i.dfu, align 8, !tbaa !212
  br label %BuildBlockHistogramsDistance.exit.i

BuildBlockHistogramsDistance.exit.i:              ; preds = %BuildBlockHistogramsDistance.exit.i.unr-lcssa, %ClearHistogramsDistance.exit.i.i.epil.preheader
  %i.dfx = add nuw nsw i64 %.0181.i259, 1         ; 2 uses
  %exitcond.not.i315 = icmp eq i64 %i.dfx, %i.cxg
  br i1 %exitcond.not.i315, label %bb.ib, label %bb.hb, !llvm.loop !140

bb.ib:                                            ; preds = %BuildBlockHistogramsDistance.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cww) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cwy) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cxb) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cxd) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cau) #8
  %.not.i168.i316 = icmp eq i64 %.0108.i.i295, 0  ; 5 uses
  br i1 %.not.i168.i316, label %.thread.i.i318, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.dfy = shl i64 %.0108.i.i295, 2
  %i.dfz = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dfy) #8 ; 2 uses
  %i.dga = add i64 %.0108.i.i295, 256             ; 2 uses
  %.not388.i.i317 = icmp eq i64 %i.dga, 0
  br i1 %.not388.i.i317, label %.thread411.i.i320, label %.thread.i.i318

.thread.i.i318:                                   ; preds = %bb.ic, %bb.ib
  %i.dgb = phi i64 [ %i.dga, %bb.ic ], [ 256, %bb.ib ] ; 3 uses
  %i.dgc = phi ptr [ %i.dfz, %bb.ic ], [ null, %bb.ib ] ; 2 uses
  %i.dgd = shl i64 %i.dgb, 2
  %i.dge = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgd) #8 ; 2 uses
  %i.dgf = shl i64 %.0108.i.i295, 4
  %i.dgg = add i64 %i.dgf, 1008
  %i.dgh = lshr i64 %i.dgg, 6                     ; 2 uses
  %.not389.i.i319 = icmp eq i64 %i.dgh, 0
  br i1 %.not389.i.i319, label %.thread409.i.i322, label %.thread411.i.i320

.thread411.i.i320:                                ; preds = %.thread.i.i318, %bb.ic
  %.sink563.i.i321 = phi i64 [ %i.dgh, %.thread.i.i318 ], [ 288230376151711695, %bb.ic ] ; 3 uses
  %i.dgi = phi i64 [ %i.dgb, %.thread.i.i318 ], [ 0, %bb.ic ]
  %i.dgj = phi ptr [ %i.dgc, %.thread.i.i318 ], [ %i.dfz, %bb.ic ]
  %i.dgk = phi ptr [ %i.dge, %.thread.i.i318 ], [ null, %bb.ic ]
  %i.dgl = mul i64 %.sink563.i.i321, 2192
  %i.dgm = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgl) #8
  %i.dgn = shl nuw nsw i64 %.sink563.i.i321, 2
  %i.dgo = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgn) #8
  br label %.thread409.i.i322

.thread409.i.i322:                                ; preds = %.thread411.i.i320, %.thread.i.i318
  %i.dgp = phi ptr [ %i.dgm, %.thread411.i.i320 ], [ null, %.thread.i.i318 ] ; 2 uses
  %i.dgq = phi i64 [ %i.dgi, %.thread411.i.i320 ], [ %i.dgb, %.thread.i.i318 ]
  %i.dgr = phi ptr [ %i.dgj, %.thread411.i.i320 ], [ %i.dgc, %.thread.i.i318 ] ; 9 uses
  %i.dgs = phi ptr [ %i.dgk, %.thread411.i.i320 ], [ %i.dge, %.thread.i.i318 ] ; 10 uses
  %i.dgt = phi i64 [ %.sink563.i.i321, %.thread411.i.i320 ], [ 0, %.thread.i.i318 ] ; 2 uses
  %i.dgu = phi ptr [ %i.dgo, %.thread411.i.i320 ], [ null, %.thread.i.i318 ] ; 2 uses
  br i1 %.not.i168.i316, label %.new1066, label %bb.id

bb.id:                                            ; preds = %.thread409.i.i322
  %i.dgv = tail call i64 @llvm.umin.i64(i64 %.0108.i.i295, i64 64)
  %i.dgw = mul nuw nsw i64 %i.dgv, 2192
  %i.dgx = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgw) #8
  br label %.new1066

.new1066:                                         ; preds = %bb.id, %.thread409.i.i322
  %i.dgy = phi ptr [ %i.dgx, %bb.id ], [ null, %.thread409.i.i322 ] ; 4 uses
  %i.dgz = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i323 = icmp eq ptr %i.dgs, null
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgs, i64 1024 ; 5 uses
  %i.dhb = select i1 %.not391.i.i323, ptr null, ptr %i.dha ; 4 uses
  %i.dhc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 4384) #8 ; 10 uses
  %i.dhd = shl i64 %i.dgq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dgs, i8 0, i64 %i.dhd, i1 false)
  %xtraiter1068 = and i64 %i.cxh, 1
  %unroll_iter1073 = and i64 %i.cxh, -2
  br label %bb.ie

.preheader414.peel.begin.i.i329.unr-lcssa:        ; preds = %bb.ie
  %lcmp.mod1070.not = icmp eq i64 %xtraiter1068, 0
  br i1 %lcmp.mod1070.not, label %.preheader414.peel.begin.i.i329, label %.epil.preheader1067

.epil.preheader1067:                              ; preds = %.preheader414.peel.begin.i.i329.unr-lcssa
  %lcmp.mod1072 = trunc i64 %i.cxh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1072)
  %i.dhe = getelementptr inbounds nuw [4 x i8], ptr %i.dhb, i64 %spec.select.i169.i327.1 ; 2 uses
  %i.dhf = load i32, ptr %i.dhe, align 4, !tbaa !169
  %i.dhg = add i32 %i.dhf, 1
  store i32 %i.dhg, ptr %i.dhe, align 4, !tbaa !169
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dif
  %i.dhi = load i8, ptr %i.dhh, align 1, !tbaa !168
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dif
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 1
  %i.dhl = load i8, ptr %i.dhk, align 1, !tbaa !168
  %.not402.i.i326.epil = icmp ne i8 %i.dhi, %i.dhl
  %i.dhm = zext i1 %.not402.i.i326.epil to i64
  %spec.select.i169.i327.epil = add i64 %spec.select.i169.i327.1, %i.dhm
  br label %.preheader414.peel.begin.i.i329

.preheader414.peel.begin.i.i329:                  ; preds = %.preheader414.peel.begin.i.i329.unr-lcssa, %.epil.preheader1067
  %spec.select.i169.i327.lcssa = phi i64 [ %spec.select.i169.i327.1, %.preheader414.peel.begin.i.i329.unr-lcssa ], [ %spec.select.i169.i327.epil, %.epil.preheader1067 ]
  %i.dhn = getelementptr inbounds nuw [4 x i8], ptr %i.dhb, i64 %spec.select.i169.i327.lcssa ; 2 uses
  %i.dho = load i32, ptr %i.dhn, align 4, !tbaa !169
  %i.dhp = add i32 %i.dho, 1
  store i32 %i.dhp, ptr %i.dhn, align 4, !tbaa !169
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dgs, i64 256 ; 3 uses
  %i.dhr = getelementptr inbounds nuw i8, ptr %i.dgs, i64 512 ; 7 uses
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dgs, i64 768 ; 6 uses
  br i1 %.not.i168.i316, label %._crit_edge445.i.i370, label %.lr.ph422.i.i330

bb.ie:                                            ; preds = %bb.ie, %.new1066
  %.0345416.i.i324 = phi i64 [ 0, %.new1066 ], [ %spec.select.i169.i327.1, %bb.ie ] ; 2 uses
  %.0347415.i.i325 = phi i64 [ 0, %.new1066 ], [ %i.dif, %bb.ie ] ; 3 uses
  %niter1074 = phi i64 [ 0, %.new1066 ], [ %niter1074.next.1, %bb.ie ]
  %i.dht = getelementptr inbounds nuw [4 x i8], ptr %i.dhb, i64 %.0345416.i.i324 ; 2 uses
  %i.dhu = load i32, ptr %i.dht, align 4, !tbaa !169
  %i.dhv = add i32 %i.dhu, 1
  store i32 %i.dhv, ptr %i.dht, align 4, !tbaa !169
  %i.dhw = or disjoint i64 %.0347415.i.i325, 1    ; 2 uses
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.cws, i64 %.0347415.i.i325
  %i.dhy = load i8, ptr %i.dhx, align 1, !tbaa !168
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dhw
  %i.dia = load i8, ptr %i.dhz, align 1, !tbaa !168
  %.not402.i.i326 = icmp ne i8 %i.dhy, %i.dia
  %i.dib = zext i1 %.not402.i.i326 to i64
  %spec.select.i169.i327 = add i64 %.0345416.i.i324, %i.dib ; 2 uses
  %i.dic = getelementptr inbounds nuw [4 x i8], ptr %i.dhb, i64 %spec.select.i169.i327 ; 2 uses
  %i.did = load i32, ptr %i.dic, align 4, !tbaa !169
  %i.die = add i32 %i.did, 1
  store i32 %i.die, ptr %i.dic, align 4, !tbaa !169
  %i.dif = add nuw i64 %.0347415.i.i325, 2        ; 4 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dhw
  %i.dih = load i8, ptr %i.dig, align 1, !tbaa !168
  %i.dii = getelementptr inbounds nuw i8, ptr %i.cws, i64 %i.dif
  %i.dij = load i8, ptr %i.dii, align 1, !tbaa !168
  %.not402.i.i326.1 = icmp ne i8 %i.dih, %i.dij
  %i.dik = zext i1 %.not402.i.i326.1 to i64
  %spec.select.i169.i327.1 = add i64 %spec.select.i169.i327, %i.dik ; 4 uses
  %niter1074.next.1 = add nuw i64 %niter1074, 2   ; 2 uses
  %niter1074.ncmp.1 = icmp eq i64 %niter1074.next.1, %unroll_iter1073
  br i1 %niter1074.ncmp.1, label %.preheader414.peel.begin.i.i329.unr-lcssa, label %bb.ie, !llvm.loop !141

.lr.ph422.i.i330:                                 ; preds = %.preheader414.peel.begin.i.i329, %._crit_edge434.i.i368
  %indvars.iv.i.i331 = phi i64 [ %indvars.iv.next.i.i369, %._crit_edge434.i.i368 ], [ %.0108.i.i295, %.preheader414.peel.begin.i.i329 ] ; 3 uses
  %.1348443.i.i332 = phi i64 [ %i.dmz, %._crit_edge434.i.i368 ], [ 0, %.preheader414.peel.begin.i.i329 ] ; 4 uses
  %.0350442.i.i333 = phi i64 [ %.2352.lcssa.i.i350, %._crit_edge434.i.i368 ], [ 0, %.preheader414.peel.begin.i.i329 ]
  %.0356441.i.i334 = phi i64 [ %i.dmy, %._crit_edge434.i.i368 ], [ 0, %.preheader414.peel.begin.i.i329 ] ; 2 uses
  %.0357440.i.i335 = phi ptr [ %.1358.i.i356, %._crit_edge434.i.i368 ], [ %i.dgu, %.preheader414.peel.begin.i.i329 ] ; 3 uses
  %.0359439.i.i336 = phi i64 [ %.1360.i.i355, %._crit_edge434.i.i368 ], [ %i.dgt, %.preheader414.peel.begin.i.i329 ] ; 5 uses
  %.0361438.i.i337 = phi i64 [ %.1362.lcssa.i.i365, %._crit_edge434.i.i368 ], [ 0, %.preheader414.peel.begin.i.i329 ] ; 3 uses
  %.0363437.i.i338 = phi ptr [ %.1364.i.i354, %._crit_edge434.i.i368 ], [ %i.dgp, %.preheader414.peel.begin.i.i329 ] ; 3 uses
  %.0365436.i.i339 = phi i64 [ %.1366.i.i353, %._crit_edge434.i.i368 ], [ %i.dgt, %.preheader414.peel.begin.i.i329 ] ; 5 uses
  %.0367435.i.i340 = phi i64 [ %.1368.lcssa.i.i364, %._crit_edge434.i.i368 ], [ 0, %.preheader414.peel.begin.i.i329 ] ; 3 uses
  %i.dil = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i331, i64 1)
  %umax506.i.i341 = tail call i64 @llvm.umin.i64(i64 %i.dil, i64 64) ; 3 uses
  %i.dim = getelementptr [4 x i8], ptr %i.dha, i64 %.1348443.i.i332
  br label %bb.if

bb.if:                                            ; preds = %bb.ig, %.lr.ph422.i.i330
  %.0343420.i.i342 = phi i64 [ 0, %.lr.ph422.i.i330 ], [ %i.dju, %bb.ig ] ; 7 uses
  %.1351419.i.i343 = phi i64 [ %.0350442.i.i333, %.lr.ph422.i.i330 ], [ %.2352.lcssa.i.i350, %bb.ig ] ; 3 uses
  %i.din = getelementptr [4 x i8], ptr %i.dim, i64 %.0343420.i.i342
  %i.dio = load i32, ptr %i.din, align 4, !tbaa !169 ; 4 uses
  %i.dip = zext i32 %i.dio to i64                 ; 3 uses
  %i.diq = getelementptr inbounds nuw [2192 x i8], ptr %i.dgy, i64 %.0343420.i.i342 ; 7 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 2176
  %i.dis = getelementptr inbounds nuw i8, ptr %i.diq, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.diq, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dis, align 8, !tbaa !211
  %.not487.i.i344 = icmp eq i32 %i.dio, 0
  br i1 %.not487.i.i344, label %bb.ig, label %.lr.ph.i171.i345.preheader

.lr.ph.i171.i345.preheader:                       ; preds = %bb.if
  %xtraiter1075 = and i64 %i.dip, 1
  %i.dit = icmp eq i32 %i.dio, 1
  br i1 %i.dit, label %.lr.ph.i171.i345.epil.preheader, label %.lr.ph.i171.i345.preheader.new

.lr.ph.i171.i345.preheader.new:                   ; preds = %.lr.ph.i171.i345.preheader
  %unroll_iter1080 = and i64 %i.dip, 4294967294
  br label %.lr.ph.i171.i345

.lr.ph.i171.i345:                                 ; preds = %.lr.ph.i171.i345, %.lr.ph.i171.i345.preheader.new
  %.2352417.i.i347 = phi i64 [ %.1351419.i.i343, %.lr.ph.i171.i345.preheader.new ], [ %i.dja, %.lr.ph.i171.i345 ] ; 3 uses
  %niter1081 = phi i64 [ 0, %.lr.ph.i171.i345.preheader.new ], [ %niter1081.next.1, %.lr.ph.i171.i345 ]
  %i.diu = getelementptr inbounds nuw [2 x i8], ptr %i.byk, i64 %.2352417.i.i347
  %i.div = load i16, ptr %i.diu, align 2, !tbaa !195
  %i.diw = zext i16 %i.div to i64
  %i.dix = getelementptr inbounds nuw [4 x i8], ptr %i.diq, i64 %i.diw ; 2 uses
  %i.diy = load i32, ptr %i.dix, align 4, !tbaa !169
  %i.diz = add i32 %i.diy, 1
  store i32 %i.diz, ptr %i.dix, align 4, !tbaa !169
  %i.dja = add i64 %.2352417.i.i347, 2            ; 3 uses
  %i.djb = getelementptr [2 x i8], ptr %i.byk, i64 %.2352417.i.i347
  %i.djc = getelementptr i8, ptr %i.djb, i64 2
  %i.djd = load i16, ptr %i.djc, align 2, !tbaa !195
end_hunk_3
