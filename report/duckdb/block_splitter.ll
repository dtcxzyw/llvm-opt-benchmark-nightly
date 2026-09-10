Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/block_splitter?download=true
inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.dq = add i64 %i.dp, %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.i.i = phi i32 [ %.02730.i.i, %bb.x ], [ %i.dn, %bb.y ]
  %.0.i.i = phi i64 [ %i.dm, %bb.x ], [ %i.dq, %bb.y ] ; 2 uses
  %i.dr = add i64 %.0.i.i, 70
  %.not25.i.i = icmp ult i64 %i.dr, %.lcssa879
  %spec.select.i.i = select i1 %.not25.i.i, i64 %.0.i.i, i64 %i.cy
  %i.ds = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.02231.i.i ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.ph, i64 %spec.select.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1024 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !171
  %i.dw = add i64 %i.dv, 70
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !171
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %i.dx = phi i64 [ 70, %bb.z ], [ %i.ek, %bb.aa ]
  %.05.i29.i.i = phi ptr [ %i.dt, %bb.z ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 1
  %i.dz = load i8, ptr %.05.i29.i.i, align 1, !tbaa !167
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !6
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !6
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !167
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !6
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !6
  %i.ek = add nsw i64 %i.dx, -2                   ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.1, label %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i, label %bb.aa, !llvm.loop !21

_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i: ; preds = %bb.aa
  %i.el = add nuw nsw i64 %.02231.i.i, 1          ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.el, %.
  br i1 %exitcond32.not.i.i, label %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i, label %bb.x, !llvm.loop !22

_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i: ; preds = %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i
  %.idx = mul nuw nsw i64 %., 1040                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx ; 11 uses
  %i.en = shl i64 %.lcssa879, 1
  %i.eo = udiv i64 %i.en, 70
  %i.ep = add nuw nsw i64 %i.eo, 99
  %i.eq = add nuw nsw i64 %i.ep, %.               ; 2 uses
  %i.er = urem i64 %i.eq, %.
  %i.es = sub nuw nsw i64 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1024
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1032
  store double +inf, ptr %i.eu, align 8, !tbaa !170
  %i.ev = add i64 %.lcssa879, -69
  %i.ew = mul nuw nsw i64 %., 1040
  %i.ex = getelementptr i8, ptr %i.cs, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ex, i64 1024
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i, %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i
  %.020.i.i = phi i64 [ 0, %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i ], [ %i.hh, %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i ] ; 2 uses
  %.01719.i.i = phi i32 [ 7, %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i ], [ %i.ey, %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.em, i8 0, i64 1024, i1 false)
  %i.ey = mul i32 %.01719.i.i, 16807              ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = urem i64 %i.ez, %i.ev
  %i.fb = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.fa
  store i64 70, ptr %i.et, align 8, !tbaa !171
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.fc = phi i64 [ 70, %bb.ab ], [ %i.fp, %bb.ac ]
  %.05.i12.i.i.i = phi ptr [ %i.fb, %bb.ab ], [ %i.fj, %bb.ac ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 1
  %i.fe = load i8, ptr %.05.i12.i.i.i, align 1, !tbaa !167
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !6
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !6
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 2
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !167
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !6
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !6
  %i.fp = add nsw i64 %i.fc, -2                   ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.1, label %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, label %bb.ac, !llvm.loop !21

_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i: ; preds = %bb.ac
  %i.fq = urem i64 %.020.i.i, %.
  %.idx851 = mul nuw nsw i64 %i.fq, 1040          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx851 ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1024 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !171
  %i.fu = add i64 %i.ft, 70
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !171
  %bound0 = icmp ult ptr %i.fr, %scevgep
  %i.fv = add nuw nsw i64 %.idx851, 1024
  %bound1 = icmp samesign ult i64 %.idx, %i.fv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load = load <4 x i32>, ptr %i.fw, align 4, !tbaa !6, !alias.scope !172
  %wide.load707 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !6, !alias.scope !172
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load708 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %wide.load709 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %i.ga = add <4 x i32> %wide.load708, %wide.load
  %i.gb = add <4 x i32> %wide.load709, %wide.load707
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  store <4 x i32> %i.gb, ptr %i.fz, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index.next ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !6, !alias.scope !172
  %wide.load707.1 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !6, !alias.scope !172
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index.next ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load708.1 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %wide.load709.1 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %i.gg = add <4 x i32> %wide.load708.1, %wide.load.1
  %i.gh = add <4 x i32> %wide.load709.1, %wide.load707.1
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !6, !alias.scope !173, !noalias !172
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.gi = icmp eq i64 %index.next.1, 256
  br i1 %i.gi, label %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i, label %vector.body, !llvm.loop !26

scalar.ph:                                        ; preds = %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, %scalar.ph
  %.0.i18.i.i = phi i64 [ %i.hg, %scalar.ph ], [ 0, %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i ] ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.0.i18.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !6
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0.i18.i.i ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !6
  %i.gn = add i32 %i.gm, %i.gk
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !6
  %i.go = or disjoint i64 %.0.i18.i.i, 1          ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !6
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.go ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !6
  %i.gt = add i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !6
  %i.gu = or disjoint i64 %.0.i18.i.i, 2          ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gu ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !6
  %i.gz = add i32 %i.gy, %i.gw
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !6
  %i.ha = or disjoint i64 %.0.i18.i.i, 3          ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !6
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.ha ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !6
  %i.hf = add i32 %i.he, %i.hc
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !6
  %i.hg = add nuw nsw i64 %.0.i18.i.i, 4          ; 2 uses
  %exitcond.not.i155.i.3 = icmp eq i64 %i.hg, 256
  br i1 %exitcond.not.i155.i.3, label %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i, label %scalar.ph, !llvm.loop !27

_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i: ; preds = %vector.body, %scalar.ph
  %i.hh = add nuw i64 %.020.i.i, 1                ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.hh, %i.es
  br i1 %exitcond21.not.i.i, label %_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i, label %bb.ab, !llvm.loop !28

_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i: ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i
  %i.hi = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.lcssa879) ; 23 uses
  %i.hj = add nuw nsw i64 %., 7
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = shl nuw nsw i64 %., 11
  %i.hm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hl) ; 6 uses
  %i.hn = shl nuw nsw i64 %., 3
  %i.ho = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hn) ; 6 uses
  %i.hp = mul i64 %i.hk, %.lcssa879               ; 2 uses
  %.not.i64 = icmp eq i64 %i.hp, 0
  br i1 %.not.i64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i
  %i.hq = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hp)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i
  %i.hr = phi ptr [ %i.hq, %bb.ad ], [ null, %_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i ] ; 4 uses
  %i.hs = shl nuw nsw i64 %., 1
  %i.ht = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hs) ; 12 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !192
  %.inv.i = icmp sgt i32 %i.hv, 10
  %i.hw = select i1 %.inv.i, i64 10, i64 3
  %i.hx = add i64 %.lcssa879, -1                  ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hx
  %xtraiter897 = and i64 %.lcssa879, 1
  %unroll_iter902 = and i64 %.lcssa879, -2
  %lcmp.mod899.not = icmp eq i64 %xtraiter897, 0
  %lcmp.mod901 = trunc i64 %.lcssa879 to i1
  %xtraiter904 = and i64 %.lcssa879, 3            ; 3 uses
  %unroll_iter908 = and i64 %.lcssa879, -4
  %lcmp.mod906.not = icmp eq i64 %xtraiter904, 0
  %lcmp.mod907 = icmp ne i64 %xtraiter904, 0
  %xtraiter916 = and i64 %.lcssa879, 1
  %unroll_iter920 = and i64 %.lcssa879, -2
  %lcmp.mod918.not = icmp eq i64 %xtraiter916, 0
  %lcmp.mod919 = trunc i64 %.lcssa879 to i1
  br label %bb.af

bb.af:                                            ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i, %bb.ae
  %.0180.i = phi i64 [ 0, %bb.ae ], [ %i.qp, %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i ]
  %.1179.i = phi i64 [ %., %bb.ae ], [ %i.oj, %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i ] ; 21 uses
  %i.hz = add nuw nsw i64 %.1179.i, 7
  %i.ia = lshr i64 %i.hz, 3                       ; 4 uses
  %i.ib = icmp samesign ult i64 %.1179.i, 2
  br i1 %i.ib, label %.preheader.preheader.i.i, label %bb.ag

.preheader.preheader.i.i:                         ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hi, i8 0, i64 range(i64 128, 0) %.lcssa879, i1 false), !tbaa !167
  br label %_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ic = shl nuw nsw i64 %.1179.i, 11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hm, i8 0, i64 %i.ic, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i, %bb.ag
  %.1116131.i.i = phi i64 [ 0, %bb.ag ], [ %i.in, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.1116131.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1024
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !171
  %i.ig = and i64 %i.if, 4294967295               ; 3 uses
  %i.ih = icmp samesign ult i64 %i.ig, 256
  br i1 %i.ih, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ig
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !193
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ik = uitofp nneg i64 %i.ig to double
  %i.il = tail call double @log2(double noundef %i.ik) #8, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i:          ; preds = %bb.aj, %bb.ai
  %.0.i.i.i = phi double [ %i.ij, %bb.ai ], [ %i.il, %bb.aj ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.1116131.i.i
  store double %.0.i.i.i, ptr %i.im, align 8, !tbaa !193
  %i.in = add nuw nsw i64 %.1116131.i.i, 1        ; 2 uses
  %exitcond.not.i156.i = icmp eq i64 %i.in, %.1179.i
  br i1 %exitcond.not.i156.i, label %.preheader130.i.i, label %bb.ah, !llvm.loop !29

.loopexit129.i.i:                                 ; preds = %_ZL7BitCostm.exit.i.i
  %.not.i157.i = icmp eq i64 %i.io, 0
  br i1 %.not.i157.i, label %bb.ao, label %.preheader130.i.i, !llvm.loop !30

.preheader130.i.i:                                ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i, %.loopexit129.i.i
  %.2133.i.i = phi i64 [ %i.io, %.loopexit129.i.i ], [ 256, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ]
  %i.io = add nsw i64 %.2133.i.i, -1              ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.cs, i64 %i.io
  %i.ip = mul i64 %i.io, %.1179.i
  %i.iq = getelementptr [8 x i8], ptr %i.hm, i64 %i.ip
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL7BitCostm.exit.i.i, %.preheader130.i.i
  %.0114132.i.i = phi i64 [ 0, %.preheader130.i.i ], [ %i.je, %_ZL7BitCostm.exit.i.i ] ; 4 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.0114132.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !193
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.0114132.i.i
  %i.it = load i32, ptr %gep.i.i, align 4, !tbaa !6 ; 4 uses
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = icmp eq i32 %i.it, 0
  br i1 %i.iv, label %_ZL7BitCostm.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iw = icmp ult i32 %i.it, 256
  br i1 %i.iw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.iu
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !193
  br label %_ZL7BitCostm.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.iz = uitofp i32 %i.it to double
  %i.ja = tail call double @log2(double noundef %i.iz) #8, !tbaa !6
  br label %_ZL7BitCostm.exit.i.i

_ZL7BitCostm.exit.i.i:                            ; preds = %bb.an, %bb.am, %bb.ak
  %i.jb = phi double [ -2.000000e+00, %bb.ak ], [ %i.iy, %bb.am ], [ %i.ja, %bb.an ]
  %i.jc = fsub double %i.is, %i.jb
  %i.jd = getelementptr [8 x i8], ptr %i.iq, i64 %.0114132.i.i
  store double %i.jc, ptr %i.jd, align 8, !tbaa !193
  %i.je = add nuw nsw i64 %.0114132.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.je, %.1179.i
  br i1 %exitcond145.not.i.i, label %.loopexit129.i.i, label %bb.ak, !llvm.loop !31

bb.ao:                                            ; preds = %.loopexit129.i.i
  %i.jf = shl nuw nsw i64 %.1179.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ho, i8 0, i64 %i.jf, i1 false)
  %i.jg = mul i64 %i.ia, %.lcssa879
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hr, i8 0, i64 %i.jg, i1 false)
  %xtraiter890 = and i64 %.1179.i, 1
  %unroll_iter895 = and i64 %.1179.i, -2
  %lcmp.mod892.not = icmp eq i64 %xtraiter890, 0
  %lcmp.mod894 = trunc i64 %.1179.i to i1
  br label %.new888

.new888:                                          ; preds = %bb.ba, %bb.ao
  %.0117137.i.i = phi i64 [ 0, %bb.ao ], [ %i.le, %bb.ba ] ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.ph, i64 %.0117137.i.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !167
  %i.jj = zext i8 %i.ji to i64
  %i.jk = mul nuw nsw i64 %.1179.i, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0117137.i.i ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.new888
  %.0109135.i.i = phi i64 [ 0, %.new888 ], [ %i.kc, %bb.at ] ; 5 uses
  %.0112134.i.i = phi double [ f0x547D42AEA2879F2E, %.new888 ], [ %.1113.i.i.1, %bb.at ] ; 2 uses
  %niter896 = phi i64 [ 0, %.new888 ], [ %niter896.next.1, %bb.at ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.0109135.i.i
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !193
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.0109135.i.i ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !193
  %i.jr = fadd double %i.jo, %i.jq                ; 3 uses
  store double %i.jr, ptr %i.jp, align 8, !tbaa !193
  %i.js = fcmp olt double %i.jr, %.0112134.i.i
  br i1 %i.js, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jt = trunc i64 %.0109135.i.i to i8
  store i8 %i.jt, ptr %i.jm, align 1, !tbaa !167
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1113.i.i = phi double [ %i.jr, %bb.aq ], [ %.0112134.i.i, %bb.ap ] ; 2 uses
  %i.ju = or disjoint i64 %.0109135.i.i, 1        ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !193
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.ju ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !193
  %i.jz = fadd double %i.jw, %i.jy                ; 3 uses
  store double %i.jz, ptr %i.jx, align 8, !tbaa !193
  %i.ka = fcmp olt double %i.jz, %.1113.i.i
  br i1 %i.ka, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kb = trunc i64 %i.ju to i8
  store i8 %i.kb, ptr %i.jm, align 1, !tbaa !167
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1113.i.i.1 = phi double [ %i.jz, %bb.as ], [ %.1113.i.i, %bb.ar ] ; 4 uses
  %i.kc = add nuw nsw i64 %.0109135.i.i, 2        ; 4 uses
  %niter896.next.1 = add nuw i64 %niter896, 2     ; 2 uses
  %niter896.ncmp.1 = icmp eq i64 %niter896.next.1, %unroll_iter895
  br i1 %niter896.ncmp.1, label %.unr-lcssa, label %bb.ap, !llvm.loop !32

.unr-lcssa:                                       ; preds = %bb.at
  br i1 %lcmp.mod892.not, label %.epilog-lcssa, label %.epil.preheader889

.epil.preheader889:                               ; preds = %.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod894)
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !193
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.kc ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !193
  %i.kh = fadd double %i.ke, %i.kg                ; 3 uses
  store double %i.kh, ptr %i.kf, align 8, !tbaa !193
  %i.ki = fcmp olt double %i.kh, %.1113.i.i.1
  br i1 %i.ki, label %bb.au, label %.epilog-lcssa

bb.au:                                            ; preds = %.epil.preheader889
  %i.kj = trunc i64 %i.kc to i8
  store i8 %i.kj, ptr %i.jm, align 1, !tbaa !167
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader889, %bb.au, %.unr-lcssa
  %.1113.i.i.lcssa = phi double [ %.1113.i.i.1, %.unr-lcssa ], [ %i.kh, %bb.au ], [ %.1113.i.i.1, %.epil.preheader889 ]
  %i.kk = mul i64 %.0117137.i.i, %i.ia
  %i.kl = icmp ult i64 %.0117137.i.i, 2000
  br i1 %i.kl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.epilog-lcssa
  %i.km = uitofp nneg i64 %.0117137.i.i to double
  %i.kn = fmul nnan double %i.km, 7.000000e-02
  %i.ko = fdiv nnan double %i.kn, 2.000000e+03
  %i.kp = fadd nnan double %i.ko, 7.700000e-01
  %i.kq = fmul nnan double %i.kp, 2.810000e+01
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.epilog-lcssa
  %.0111.i.i = phi double [ %i.kq, %bb.av ], [ 2.810000e+01, %.epilog-lcssa ] ; 2 uses
  %i.kr = getelementptr i8, ptr %i.hr, i64 %i.kk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.1110136.i.i = phi i64 [ 0, %bb.aw ], [ %i.ld, %bb.az ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.1110136.i.i ; 3 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !193
  %i.ku = fsub double %i.kt, %.1113.i.i.lcssa     ; 2 uses
  store double %i.ku, ptr %i.ks, align 8, !tbaa !193
  %i.kv = fcmp ult double %i.ku, %.0111.i.i
  br i1 %i.kv, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kw = trunc i64 %.1110136.i.i to i8
  %i.kx = and i8 %i.kw, 7
  %i.ky = shl nuw i8 1, %i.kx
  store double %.0111.i.i, ptr %i.ks, align 8, !tbaa !193
  %i.kz = lshr i64 %.1110136.i.i, 3
  %i.la = getelementptr i8, ptr %i.kr, i64 %i.kz  ; 2 uses
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !167
  %i.lc = or i8 %i.lb, %i.ky
  store i8 %i.lc, ptr %i.la, align 1, !tbaa !167
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ld = add nuw nsw i64 %.1110136.i.i, 1        ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %i.ld, %.1179.i
  br i1 %exitcond147.not.i.i, label %bb.ba, label %bb.ax, !llvm.loop !33

bb.ba:                                            ; preds = %bb.az
  %i.le = add nuw i64 %.0117137.i.i, 1            ; 2 uses
  %exitcond148.not.i.i = icmp eq i64 %i.le, %.lcssa879
  br i1 %exitcond148.not.i.i, label %.lr.ph.preheader.i.i, label %.new888, !llvm.loop !34

.lr.ph.preheader.i.i:                             ; preds = %bb.ba
  %i.lf = load i8, ptr %i.hy, align 1, !tbaa !167
  %i.lg = mul i64 %i.ia, %i.hx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bc, %.lr.ph.preheader.i.i
  %.0142.i.i = phi i8 [ %.1.i159.i, %bb.bc ], [ %i.lf, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0107141.i.i = phi i64 [ %i.lk, %bb.bc ], [ %i.lg, %.lr.ph.preheader.i.i ]
  %.1118140.i.i = phi i64 [ %i.lj, %bb.bc ], [ %i.hx, %.lr.ph.preheader.i.i ]
  %.0119139.i.i = phi i64 [ %.1120.i.i, %bb.bc ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.lh = and i8 %.0142.i.i, 7
  %i.li = shl nuw i8 1, %i.lh
  %i.lj = add i64 %.1118140.i.i, -1               ; 4 uses
  %i.lk = sub i64 %.0107141.i.i, %i.ia            ; 2 uses
  %i.ll = lshr i8 %.0142.i.i, 3
  %i.lm = zext nneg i8 %i.ll to i64
  %i.ln = getelementptr i8, ptr %i.hr, i64 %i.lk
  %i.lo = getelementptr i8, ptr %i.ln, i64 %i.lm
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !167
  %i.lq = and i8 %i.lp, %i.li
  %.not125.i.i = icmp eq i8 %i.lq, 0
  br i1 %.not125.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lj
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !167 ; 2 uses
  %.not126.i.i = icmp ne i8 %.0142.i.i, %i.ls
  %i.lt = zext i1 %.not126.i.i to i64
  %spec.select.i158.i = add i64 %.0119139.i.i, %i.lt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.lr.ph.i.i
  %.1120.i.i = phi i64 [ %.0119139.i.i, %.lr.ph.i.i ], [ %spec.select.i158.i, %bb.bb ] ; 2 uses
  %.1.i159.i = phi i8 [ %.0142.i.i, %.lr.ph.i.i ], [ %i.ls, %bb.bb ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.lj
  store i8 %.1.i159.i, ptr %i.lu, align 1, !tbaa !167
  %.not124.i.i = icmp eq i64 %i.lj, 0
  br i1 %.not124.i.i, label %_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i: ; preds = %bb.bc, %.preheader.preheader.i.i
  %.0108.i.i = phi i64 [ 1, %.preheader.preheader.i.i ], [ %.1120.i.i, %bb.bc ] ; 19 uses
  %.not.i160.i = icmp eq i64 %.1179.i, 0
  br i1 %.not.i160.i, label %.preheader26.i.i.preheader, label %iter.check

iter.check:                                       ; preds = %_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i
  %min.iters.check = icmp ult i64 %.1179.i, 4
  br i1 %min.iters.check, label %.lr.ph.i161.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check711 = icmp ult i64 %.1179.i, 16
  br i1 %min.iters.check711, label %vec.epilog.ph, label %vector.ph712

vector.ph712:                                     ; preds = %vector.main.loop.iter.check
  %i.lv = and i64 %.1179.i, 12
  %n.vec = and i64 %.1179.i, -16                  ; 4 uses
  br label %vector.body713

vector.body713:                                   ; preds = %vector.body713, %vector.ph712
  %index714 = phi i64 [ 0, %vector.ph712 ], [ %index.next715, %vector.body713 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index714 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <8 x i16> splat (i16 256), ptr %i.lw, align 2, !tbaa !194
  store <8 x i16> splat (i16 256), ptr %i.lx, align 2, !tbaa !194
  %index.next715 = add nuw i64 %index714, 16      ; 2 uses
  %i.ly = icmp eq i64 %index.next715, %n.vec
  br i1 %i.ly, label %middle.block716, label %vector.body713, !llvm.loop !36

middle.block716:                                  ; preds = %vector.body713
  %cmp.n = icmp eq i64 %.1179.i, %n.vec
  br i1 %cmp.n, label %.preheader26.i.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block716
  %min.epilog.iters.check = icmp eq i64 %i.lv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i161.i.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec717 = and i64 %.1179.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index718 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next719, %vec.epilog.vector.body ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %index718
  store <4 x i16> splat (i16 256), ptr %i.lz, align 2, !tbaa !194
  %index.next719 = add nuw i64 %index718, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next719, %n.vec717
  br i1 %i.ma, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n720 = icmp eq i64 %.1179.i, %n.vec717
  br i1 %cmp.n720, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i.preheader

.lr.ph.i161.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.027.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec717, %vec.epilog.middle.block ]
  br label %.lr.ph.i161.i

.lr.ph.i161.i:                                    ; preds = %.lr.ph.i161.i.preheader, %.lr.ph.i161.i
  %.027.i.i = phi i64 [ %i.mc, %.lr.ph.i161.i ], [ %.027.i.i.ph, %.lr.ph.i161.i.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %.027.i.i
  store i16 256, ptr %i.mb, align 2, !tbaa !194
  %i.mc = add nuw nsw i64 %.027.i.i, 1            ; 2 uses
  %exitcond.not.i162.i = icmp eq i64 %i.mc, %.1179.i
  br i1 %exitcond.not.i162.i, label %.preheader26.i.i.preheader, label %.lr.ph.i161.i, !llvm.loop !38

.preheader26.i.i.preheader:                       ; preds = %_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i, %vec.epilog.middle.block, %middle.block716, %.lr.ph.i161.i
  br label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %bb.bf, %.preheader26.i.i.preheader
  %.129.i.i = phi i64 [ 0, %.preheader26.i.i.preheader ], [ %i.ms, %bb.bf ] ; 3 uses
  %.02328.i.i = phi i16 [ 0, %.preheader26.i.i.preheader ], [ %.124.i.i.1, %bb.bf ] ; 3 uses
  %niter903 = phi i64 [ 0, %.preheader26.i.i.preheader ], [ %niter903.next.1, %bb.bf ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.me = load i8, ptr %i.md, align 1, !tbaa !167
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mf ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !194
  %i.mi = icmp eq i16 %i.mh, 256
  br i1 %i.mi, label %bb.bd, label %.preheader26.i.i.1

bb.bd:                                            ; preds = %.preheader26.i.i
  %i.mj = add i16 %.02328.i.i, 1
  store i16 %.02328.i.i, ptr %i.mg, align 2, !tbaa !194
  br label %.preheader26.i.i.1

.preheader26.i.i.1:                               ; preds = %bb.bd, %.preheader26.i.i
  %.124.i.i = phi i16 [ %i.mj, %bb.bd ], [ %.02328.i.i, %.preheader26.i.i ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.129.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !167
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mn ; 2 uses
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !194
  %i.mq = icmp eq i16 %i.mp, 256
  br i1 %i.mq, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.preheader26.i.i.1
  %i.mr = add i16 %.124.i.i, 1
  store i16 %.124.i.i, ptr %i.mo, align 2, !tbaa !194
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader26.i.i.1
  %.124.i.i.1 = phi i16 [ %i.mr, %bb.be ], [ %.124.i.i, %.preheader26.i.i.1 ] ; 5 uses
  %i.ms = add nuw i64 %.129.i.i, 2                ; 2 uses
  %niter903.next.1 = add i64 %niter903, 2         ; 2 uses
  %niter903.ncmp.1 = icmp eq i64 %niter903.next.1, %unroll_iter902
  br i1 %niter903.ncmp.1, label %.preheader.i.i.preheader.unr-lcssa, label %.preheader26.i.i, !llvm.loop !39

.preheader.i.i.preheader.unr-lcssa:               ; preds = %bb.bf
  br i1 %lcmp.mod899.not, label %.preheader.i.i.preheader.new, label %.preheader26.i.i.epil.preheader

.preheader26.i.i.epil.preheader:                  ; preds = %.preheader.i.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod901)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !167
  %i.mv = zext i8 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.mv ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !194
  %i.my = icmp eq i16 %i.mx, 256
  br i1 %i.my, label %bb.bg, label %.preheader.i.i.preheader.new

bb.bg:                                            ; preds = %.preheader26.i.i.epil.preheader
  %i.mz = add i16 %.124.i.i.1, 1
  store i16 %.124.i.i.1, ptr %i.mw, align 2, !tbaa !194
  br label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader.unr-lcssa, %bb.bg, %.preheader26.i.i.epil.preheader
  %.124.i.i.lcssa = phi i16 [ %.124.i.i.1, %.preheader.i.i.preheader.unr-lcssa ], [ %i.mz, %bb.bg ], [ %.124.i.i.1, %.preheader26.i.i.epil.preheader ] ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.230.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ob, %.preheader.i.i ] ; 5 uses
  %niter909 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter909.next.3, %.preheader.i.i ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i ; 2 uses
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !167
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nc
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !194
  %i.nf = trunc i16 %i.ne to i8
  store i8 %i.nf, ptr %i.na, align 1, !tbaa !167
  %i.ng = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !167
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !194
  %i.nm = trunc i16 %i.nl to i8
  store i8 %i.nm, ptr %i.nh, align 1, !tbaa !167
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2 ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !167
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nq
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !194
  %i.nt = trunc i16 %i.ns to i8
  store i8 %i.nt, ptr %i.no, align 1, !tbaa !167
  %i.nu = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 3 ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !167
  %i.nx = zext i8 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.nx
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !194
  %i.oa = trunc i16 %i.nz to i8
  store i8 %i.oa, ptr %i.nv, align 1, !tbaa !167
  %i.ob = add nuw i64 %.230.i.i, 4                ; 2 uses
  %niter909.next.3 = add i64 %niter909, 4         ; 2 uses
  %niter909.ncmp.3 = icmp eq i64 %niter909.next.3, %unroll_iter908
  br i1 %niter909.ncmp.3, label %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i.unr-lcssa, label %.preheader.i.i, !llvm.loop !40

_ZL20RemapBlockIdsLiteralPhmPtm.exit.i.unr-lcssa: ; preds = %.preheader.i.i
  br i1 %lcmp.mod906.not, label %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod907)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.230.i.i.epil = phi i64 [ %i.oi, %.preheader.i.i.epil ], [ %i.ob, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter905 = phi i64 [ %epil.iter905.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.230.i.i.epil ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !167
  %i.oe = zext i8 %i.od to i64
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ht, i64 %i.oe
  %i.og = load i16, ptr %i.of, align 2, !tbaa !194
  %i.oh = trunc i16 %i.og to i8
  store i8 %i.oh, ptr %i.oc, align 1, !tbaa !167
  %i.oi = add nuw i64 %.230.i.i.epil, 1
  %epil.iter905.next = add i64 %epil.iter905, 1   ; 2 uses
  %epil.iter905.cmp.not = icmp eq i64 %epil.iter905.next, %xtraiter904
  br i1 %epil.iter905.cmp.not, label %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i, label %.preheader.i.i.epil, !llvm.loop !41

_ZL20RemapBlockIdsLiteralPhmPtm.exit.i:           ; preds = %.preheader.i.i.epil, %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i.unr-lcssa
  %i.oj = zext i16 %.124.i.i.lcssa to i64         ; 3 uses
  %.not.i164.i = icmp eq i16 %.124.i.i.lcssa, 0
  br i1 %.not.i164.i, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader, label %.lr.ph.i165.i.preheader

.lr.ph.i165.i.preheader:                          ; preds = %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i
  %xtraiter910 = and i64 %i.oj, 3                 ; 3 uses
  %i.ok = icmp ult i16 %.124.i.i.lcssa, 4
  br i1 %i.ok, label %.lr.ph.i165.i.epil.preheader, label %.lr.ph.i165.i.preheader.new

.lr.ph.i165.i.preheader.new:                      ; preds = %.lr.ph.i165.i.preheader
  %unroll_iter914 = and i64 %i.oj, 65532
  br label %.lr.ph.i165.i

.lr.ph.i165.i:                                    ; preds = %.lr.ph.i165.i, %.lr.ph.i165.i.preheader.new
  %.0.i9.i.i = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %i.ow, %.lr.ph.i165.i ] ; 5 uses
  %niter915 = phi i64 [ 0, %.lr.ph.i165.i.preheader.new ], [ %niter915.next.3, %.lr.ph.i165.i ]
  %i.ol = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ol, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.om, align 8, !tbaa !170
  %i.on = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1040
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.oo, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.op, align 8, !tbaa !170
  %i.oq = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 2080
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.or, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.os, align 8, !tbaa !170
  %i.ot = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 3120
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ou, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.ov, align 8, !tbaa !170
  %i.ow = add nuw nsw i64 %.0.i9.i.i, 4           ; 2 uses
  %niter915.next.3 = add i64 %niter915, 4         ; 2 uses
  %niter915.ncmp.3 = icmp eq i64 %niter915.next.3, %unroll_iter914
  br i1 %niter915.ncmp.3, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i, !llvm.loop !20

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i
  %lcmp.mod912.not = icmp eq i64 %xtraiter910, 0
  br i1 %lcmp.mod912.not, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader, label %.lr.ph.i165.i.epil.preheader

.lr.ph.i165.i.epil.preheader:                     ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i.preheader
  %.0.i9.i.i.epil.init = phi i64 [ 0, %.lr.ph.i165.i.preheader ], [ %i.ow, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod913 = icmp ne i64 %xtraiter910, 0
  tail call void @llvm.assume(i1 %lcmp.mod913)
  br label %.lr.ph.i165.i.epil

.lr.ph.i165.i.epil:                               ; preds = %.lr.ph.i165.i.epil, %.lr.ph.i165.i.epil.preheader
  %.0.i9.i.i.epil = phi i64 [ %i.oz, %.lr.ph.i165.i.epil ], [ %.0.i9.i.i.epil.init, %.lr.ph.i165.i.epil.preheader ] ; 2 uses
  %epil.iter911 = phi i64 [ %epil.iter911.next, %.lr.ph.i165.i.epil ], [ 0, %.lr.ph.i165.i.epil.preheader ]
  %i.ox = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i9.i.i.epil ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ox, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.oy, align 8, !tbaa !170
  %i.oz = add nuw nsw i64 %.0.i9.i.i.epil, 1
  %epil.iter911.next = add i64 %epil.iter911, 1   ; 2 uses
  %epil.iter911.cmp.not = icmp eq i64 %epil.iter911.next, %xtraiter910
  br i1 %epil.iter911.cmp.not, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader, label %.lr.ph.i165.i.epil, !llvm.loop !42

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader: ; preds = %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i, %.lr.ph.i165.i.epil, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa
  br label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader
  %.010.i.i = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader ], [ %i.qb, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i ] ; 4 uses
  %niter921 = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader ], [ %niter921.next.1, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !167
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !167
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pg ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !6
  %i.pj = add i32 %i.pi, 1
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !6
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 1024 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !171
  %i.pm = add i64 %i.pl, 1
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !171
  %i.pn = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !167
  %i.pq = zext i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.pn
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !167
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pu ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !6
  %i.px = add i32 %i.pw, 1
  store i32 %i.px, ptr %i.pv, align 4, !tbaa !6
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 1024 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !171
  %i.qa = add i64 %i.pz, 1
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !171
  %i.qb = add nuw i64 %.010.i.i, 2                ; 3 uses
  %niter921.next.1 = add i64 %niter921, 2         ; 2 uses
  %niter921.ncmp.1 = icmp eq i64 %niter921.next.1, %unroll_iter920
  br i1 %niter921.ncmp.1, label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i, !llvm.loop !43

_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i
  br i1 %lcmp.mod918.not, label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader: ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod919)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !167
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.qb
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !167
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !6
  %i.ql = add i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !6
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 1024 ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !171
  %i.qo = add i64 %i.qn, 1
  store i64 %i.qo, ptr %i.qm, align 8, !tbaa !171
  br label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i

_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i: ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader
  %i.qp = add nuw nsw i64 %.0180.i, 1             ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.qp, %i.hw
  br i1 %exitcond.not.i65, label %bb.bh, label %bb.af, !llvm.loop !44

bb.bh:                                            ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.hm)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ho)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.hr)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.ht)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.cs)
  %.not.i168.i = icmp eq i64 %.0108.i.i, 0        ; 5 uses
  br i1 %.not.i168.i, label %.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qq = shl i64 %.0108.i.i, 2
  %i.qr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.qq) ; 2 uses
  %i.qs = add i64 %.0108.i.i, 256                 ; 2 uses
  %.not383.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not383.i.i, label %.thread405.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bi, %bb.bh
  %i.qt = phi i64 [ %i.qs, %bb.bi ], [ 256, %bb.bh ] ; 3 uses
  %i.qu = phi ptr [ %i.qr, %bb.bi ], [ null, %bb.bh ] ; 2 uses
  %i.qv = shl i64 %i.qt, 2
  %i.qw = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.qv) ; 2 uses
  %i.qx = shl i64 %.0108.i.i, 4
  %i.qy = add i64 %i.qx, 1008
  %i.qz = lshr i64 %i.qy, 6                       ; 2 uses
  %.not384.i.i = icmp eq i64 %i.qz, 0
  br i1 %.not384.i.i, label %.thread403.i.i, label %.thread405.i.i

.thread405.i.i:                                   ; preds = %.thread.i.i, %bb.bi
  %.sink552.i.i = phi i64 [ %i.qz, %.thread.i.i ], [ 288230376151711695, %bb.bi ] ; 3 uses
  %i.ra = phi i64 [ %i.qt, %.thread.i.i ], [ 0, %bb.bi ]
  %i.rb = phi ptr [ %i.qu, %.thread.i.i ], [ %i.qr, %bb.bi ]
  %i.rc = phi ptr [ %i.qw, %.thread.i.i ], [ null, %bb.bi ]
  %i.rd = mul i64 %.sink552.i.i, 1040
  %i.re = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.rd)
  %i.rf = shl nuw nsw i64 %.sink552.i.i, 2
  %i.rg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.rf)
  br label %.thread403.i.i

.thread403.i.i:                                   ; preds = %.thread405.i.i, %.thread.i.i
  %i.rh = phi ptr [ %i.re, %.thread405.i.i ], [ null, %.thread.i.i ] ; 2 uses
  %i.ri = phi i64 [ %i.ra, %.thread405.i.i ], [ %i.qt, %.thread.i.i ]
  %i.rj = phi ptr [ %i.rb, %.thread405.i.i ], [ %i.qu, %.thread.i.i ] ; 9 uses
  %i.rk = phi ptr [ %i.rc, %.thread405.i.i ], [ %i.qw, %.thread.i.i ] ; 9 uses
  %i.rl = phi i64 [ %.sink552.i.i, %.thread405.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.rm = phi ptr [ %i.rg, %.thread405.i.i ], [ null, %.thread.i.i ] ; 2 uses
  br i1 %.not.i168.i, label %.new922, label %bb.bj

bb.bj:                                            ; preds = %.thread403.i.i
  %i.rn = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i, i64 64)
  %i.ro = mul nuw nsw i64 %i.rn, 1040
  %i.rp = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ro)
  br label %.new922

.new922:                                          ; preds = %bb.bj, %.thread403.i.i
  %i.rq = phi ptr [ %i.rp, %bb.bj ], [ null, %.thread403.i.i ] ; 4 uses
  %i.rr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 1024 ; 8 uses
  %i.rt = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 2080) ; 10 uses
  %i.ru = shl i64 %i.ri, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.rk, i8 0, i64 %i.ru, i1 false)
  %xtraiter924 = and i64 %i.hx, 1
  %unroll_iter929 = and i64 %i.hx, -2
  br label %bb.bk

.preheader408.peel.begin.i.i.unr-lcssa:           ; preds = %bb.bk
  %lcmp.mod926.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod926.not, label %.preheader408.peel.begin.i.i, label %.epil.preheader923

.epil.preheader923:                               ; preds = %.preheader408.peel.begin.i.i.unr-lcssa
  %lcmp.mod928 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod928)
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %spec.select.i169.i.1 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !6
  %i.rx = add i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !6
  %i.ry = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sw
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !167
  %i.sa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sw
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !167
  %.not396.i.i.epil = icmp ne i8 %i.rz, %i.sc
  %i.sd = zext i1 %.not396.i.i.epil to i64
  %spec.select.i169.i.epil = add i64 %spec.select.i169.i.1, %i.sd
  br label %.preheader408.peel.begin.i.i

.preheader408.peel.begin.i.i:                     ; preds = %.preheader408.peel.begin.i.i.unr-lcssa, %.epil.preheader923
  %spec.select.i169.i.lcssa = phi i64 [ %spec.select.i169.i.1, %.preheader408.peel.begin.i.i.unr-lcssa ], [ %spec.select.i169.i.epil, %.epil.preheader923 ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %spec.select.i169.i.lcssa ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !6
  %i.sg = add i32 %i.sf, 1
  store i32 %i.sg, ptr %i.se, align 4, !tbaa !6
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rk, i64 256 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rk, i64 512 ; 7 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rk, i64 768 ; 6 uses
  br i1 %.not.i168.i, label %._crit_edge439.i.i, label %.lr.ph416.i.i

bb.bk:                                            ; preds = %bb.bk, %.new922
  %.0340410.i.i = phi i64 [ 0, %.new922 ], [ %spec.select.i169.i.1, %bb.bk ] ; 2 uses
  %.0342409.i.i = phi i64 [ 0, %.new922 ], [ %i.sw, %bb.bk ] ; 3 uses
  %niter930 = phi i64 [ 0, %.new922 ], [ %niter930.next.1, %bb.bk ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.0340410.i.i ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !6
  %i.sm = add i32 %i.sl, 1
  store i32 %i.sm, ptr %i.sk, align 4, !tbaa !6
  %i.sn = or disjoint i64 %.0342409.i.i, 1        ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0342409.i.i
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !167
  %i.sq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sn
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !167
  %.not396.i.i = icmp ne i8 %i.sp, %i.sr
  %i.ss = zext i1 %.not396.i.i to i64
  %spec.select.i169.i = add i64 %.0340410.i.i, %i.ss ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %spec.select.i169.i ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !6
  %i.sv = add i32 %i.su, 1
  store i32 %i.sv, ptr %i.st, align 4, !tbaa !6
  %i.sw = add nuw i64 %.0342409.i.i, 2            ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sn
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !167
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sw
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !167
  %.not396.i.i.1 = icmp ne i8 %i.sy, %i.ta
  %i.tb = zext i1 %.not396.i.i.1 to i64
  %spec.select.i169.i.1 = add i64 %spec.select.i169.i, %i.tb ; 4 uses
  %niter930.next.1 = add nuw i64 %niter930, 2     ; 2 uses
  %niter930.ncmp.1 = icmp eq i64 %niter930.next.1, %unroll_iter929
  br i1 %niter930.ncmp.1, label %.preheader408.peel.begin.i.i.unr-lcssa, label %bb.bk, !llvm.loop !45

.lr.ph416.i.i:                                    ; preds = %.preheader408.peel.begin.i.i, %._crit_edge428.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge428.i.i ], [ %.0108.i.i, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.1343437.i.i = phi i64 [ %i.xu, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 4 uses
  %.0345436.i.i = phi i64 [ %.2347.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ]
  %.0351435.i.i = phi i64 [ %i.xt, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 2 uses
  %.0352434.i.i = phi ptr [ %.1353.i.i, %._crit_edge428.i.i ], [ %i.rm, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0354433.i.i = phi i64 [ %.1355.i.i, %._crit_edge428.i.i ], [ %i.rl, %.preheader408.peel.begin.i.i ] ; 5 uses
  %.0356432.i.i = phi i64 [ %.1357.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0358431.i.i = phi ptr [ %.1359.i.i, %._crit_edge428.i.i ], [ %i.rh, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0360430.i.i = phi i64 [ %.1361.i.i, %._crit_edge428.i.i ], [ %i.rl, %.preheader408.peel.begin.i.i ] ; 5 uses
  %.0362429.i.i = phi i64 [ %.1363.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 3 uses
  %i.tc = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax497.i.i = tail call i64 @llvm.umin.i64(i64 %i.tc, i64 64) ; 3 uses
  %i.td = getelementptr [4 x i8], ptr %i.rs, i64 %.1343437.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i.i, %.lr.ph416.i.i
  %.0338414.i.i = phi i64 [ 0, %.lr.ph416.i.i ], [ %i.up, %._crit_edge.i.i ] ; 7 uses
  %.1346413.i.i = phi i64 [ %.0345436.i.i, %.lr.ph416.i.i ], [ %.2347.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.te = getelementptr [4 x i8], ptr %i.td, i64 %.0338414.i.i
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !6  ; 4 uses
  %i.tg = zext i32 %i.tf to i64                   ; 2 uses
  %i.th = getelementptr inbounds nuw [1040 x i8], ptr %i.rq, i64 %.0338414.i.i ; 7 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1024 ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.th, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.tj, align 8, !tbaa !170
  %.not480.i.i = icmp eq i32 %i.tf, 0
  br i1 %.not480.i.i, label %._crit_edge.i.i, label %.lr.ph.i171.i.preheader

.lr.ph.i171.i.preheader:                          ; preds = %bb.bl
  %xtraiter931 = and i64 %i.tg, 1
  %i.tk = icmp eq i32 %i.tf, 1
  br i1 %i.tk, label %.lr.ph.i171.i.epil.preheader, label %.lr.ph.i171.i.preheader.new

.lr.ph.i171.i.preheader.new:                      ; preds = %.lr.ph.i171.i.preheader
  %unroll_iter936 = and i64 %i.tg, 4294967294
  br label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %.lr.ph.i171.i, %.lr.ph.i171.i.preheader.new
  %i.tl = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %i.ub, %.lr.ph.i171.i ] ; 2 uses
  %.2347411.i.i = phi i64 [ %.1346413.i.i, %.lr.ph.i171.i.preheader.new ], [ %i.tt, %.lr.ph.i171.i ] ; 3 uses
  %niter937 = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %niter937.next.1, %.lr.ph.i171.i ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2347411.i.i
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !167
  %i.to = zext i8 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.to ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !6
  %i.tr = add i32 %i.tq, 1
  store i32 %i.tr, ptr %i.tp, align 4, !tbaa !6
  %i.ts = or disjoint i64 %i.tl, 1
  store i64 %i.ts, ptr %i.ti, align 8, !tbaa !171
  %i.tt = add i64 %.2347411.i.i, 2                ; 3 uses
  %i.tu = getelementptr i8, ptr %.ph, i64 %.2347411.i.i
  %i.tv = getelementptr i8, ptr %i.tu, i64 1
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a

bb.cp:                                            ; preds = %bb.co
  %i.aau = shl i64 %.0325.i.i, 2
  %i.aav = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.aau) ; 2 uses
  %i.aaw = load i64, ptr %i.aao, align 8, !tbaa !166 ; 2 uses
  %.not390.i.i = icmp eq i64 %i.aaw, 0
  br i1 %.not390.i.i, label %.thread546.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aax = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !13
  %i.aaz = shl i64 %i.aaw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aav, ptr align 4 %i.aay, i64 %i.aaz, i1 false)
  br label %.thread546.i.i

.thread546.i.i:                                   ; preds = %bb.cq, %bb.cp
  %i.aba = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !13
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.abb)
  store ptr %i.aav, ptr %i.aba, align 8, !tbaa !13
  store i64 %.0325.i.i, ptr %i.aao, align 8, !tbaa !166
  br label %.lr.ph474.i.i

bb.cr:                                            ; preds = %bb.cm
  br i1 %.not.i168.i, label %_ZL20ClusterBlocksLiteralPN13duckdb_brotli13MemoryManagerEPKhmmPhPNS_10BlockSplitE.exit.i, label %.lr.ph474.i.i

.lr.ph474.i.i:                                    ; preds = %bb.cr, %.thread546.i.i
  %i.abc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.not543.i.i = icmp eq i64 %.0108.i.i, 1
  br i1 %.not543.i.i, label %._crit_edge475.loopexit.peel.begin.i.i, label %.lr.ph474.split.i.i

.lr.ph474.split.i.i:                              ; preds = %.lr.ph474.i.i
  %i.abe = add i64 %.0108.i.i, -2
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.lr.ph474.split.i.i
  %.0472.i.i = phi i8 [ 0, %.lr.ph474.split.i.i ], [ %.1.i173.i, %bb.ct ] ; 2 uses
  %.0321471.i.i = phi i64 [ 0, %.lr.ph474.split.i.i ], [ %.1322.i.i, %bb.ct ] ; 4 uses
  %.0323470.i.i = phi i32 [ 0, %.lr.ph474.split.i.i ], [ %.1324.i.i, %bb.ct ]
  %.5469.i.i = phi i64 [ 0, %.lr.ph474.split.i.i ], [ %i.abi, %bb.ct ] ; 4 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.5469.i.i
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !6
  %i.abh = add i32 %i.abg, %.0323470.i.i          ; 2 uses
  %i.abi = add nuw i64 %.5469.i.i, 1              ; 3 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %.5469.i.i
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !6 ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.abi
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !6
  %.not391.i.i = icmp eq i32 %i.abk, %i.abm
  br i1 %.not391.i.i, label %bb.ct, label %._crit_edge509.i.i

._crit_edge509.i.i:                               ; preds = %bb.cs
  %.phi.trans.insert510.i.i = zext i32 %i.abk to i64
  %.phi.trans.insert511.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %.phi.trans.insert510.i.i
  %.pre512.i.i = load i32, ptr %.phi.trans.insert511.i.i, align 4, !tbaa !6
  %i.abn = trunc i32 %.pre512.i.i to i8           ; 2 uses
  %i.abo = load ptr, ptr %i.abc, align 8, !tbaa !12
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.0321471.i.i
  store i8 %i.abn, ptr %i.abp, align 1, !tbaa !167
  %i.abq = load ptr, ptr %i.abd, align 8, !tbaa !13
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %.0321471.i.i
  store i32 %i.abh, ptr %i.abr, align 4, !tbaa !6
  %i.abs = tail call noundef i8 @llvm.umax.i8(i8 %.0472.i.i, i8 %i.abn)
  %i.abt = add i64 %.0321471.i.i, 1
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge509.i.i, %bb.cs
  %.1324.i.i = phi i32 [ 0, %._crit_edge509.i.i ], [ %i.abh, %bb.cs ] ; 2 uses
  %.1322.i.i = phi i64 [ %i.abt, %._crit_edge509.i.i ], [ %.0321471.i.i, %bb.cs ] ; 2 uses
  %.1.i173.i = phi i8 [ %i.abs, %._crit_edge509.i.i ], [ %.0472.i.i, %bb.cs ] ; 2 uses
  %exitcond502.not.i.i = icmp eq i64 %.5469.i.i, %i.abe
  br i1 %exitcond502.not.i.i, label %._crit_edge475.loopexit.peel.begin.i.i, label %bb.cs, !llvm.loop !61

._crit_edge475.loopexit.peel.begin.i.i:           ; preds = %bb.ct, %.lr.ph474.i.i
  %i.abu = phi i8 [ 0, %.lr.ph474.i.i ], [ %.1.i173.i, %bb.ct ] ; 2 uses
  %i.abv = phi i64 [ 0, %.lr.ph474.i.i ], [ %.1322.i.i, %bb.ct ] ; 4 uses
  %i.abw = phi i32 [ 0, %.lr.ph474.i.i ], [ %.1324.i.i, %bb.ct ]
  %i.abx = phi i64 [ 0, %.lr.ph474.i.i ], [ %i.abi, %bb.ct ] ; 3 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !6
  %i.aca = add i32 %i.abz, %i.abw
  %i.acb = add nuw i64 %i.abx, 1                  ; 2 uses
  %i.acc = icmp eq i64 %i.acb, %.0108.i.i
  %.phi.trans.insert513.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.abx
  %.pre514.i.i = load i32, ptr %.phi.trans.insert513.i.i, align 4, !tbaa !6 ; 2 uses
  br i1 %i.acc, label %._crit_edge475.loopexit.peel.begin._crit_edge.i.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge475.loopexit.peel.begin.i.i
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.acb
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !6
  %.not391.peel.i.i = icmp eq i32 %.pre514.i.i, %i.ace
  br i1 %.not391.peel.i.i, label %._crit_edge475.loopexit.peel.next.i.i, label %._crit_edge475.loopexit.peel.begin._crit_edge.i.i

._crit_edge475.loopexit.peel.begin._crit_edge.i.i: ; preds = %bb.cu, %._crit_edge475.loopexit.peel.begin.i.i
  %i.acf = zext i32 %.pre514.i.i to i64
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.acf
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !6
  %i.aci = trunc i32 %i.ach to i8                 ; 2 uses
  %i.acj = load ptr, ptr %i.abc, align 8, !tbaa !12
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.abv
  store i8 %i.aci, ptr %i.ack, align 1, !tbaa !167
  %i.acl = load ptr, ptr %i.abd, align 8, !tbaa !13
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.abv
  store i32 %i.aca, ptr %i.acm, align 4, !tbaa !6
  %i.acn = tail call noundef i8 @llvm.umax.i8(i8 %i.abu, i8 %i.aci)
  %i.aco = add i64 %i.abv, 1
  br label %._crit_edge475.loopexit.peel.next.i.i

._crit_edge475.loopexit.peel.next.i.i:            ; preds = %._crit_edge475.loopexit.peel.begin._crit_edge.i.i, %bb.cu
  %.1322.peel.i.i = phi i64 [ %i.aco, %._crit_edge475.loopexit.peel.begin._crit_edge.i.i ], [ %i.abv, %bb.cu ]
  %.1.peel.i.i = phi i8 [ %i.acn, %._crit_edge475.loopexit.peel.begin._crit_edge.i.i ], [ %i.abu, %bb.cu ]
  %i.acp = zext i8 %.1.peel.i.i to i64
  %i.acq = add nuw nsw i64 %i.acp, 1
  br label %_ZL20ClusterBlocksLiteralPN13duckdb_brotli13MemoryManagerEPKhmmPhPNS_10BlockSplitE.exit.i

_ZL20ClusterBlocksLiteralPN13duckdb_brotli13MemoryManagerEPKhmmPhPNS_10BlockSplitE.exit.i: ; preds = %._crit_edge475.loopexit.peel.next.i.i, %bb.cr
  %.0321.lcssa.i.i = phi i64 [ 0, %bb.cr ], [ %.1322.peel.i.i, %._crit_edge475.loopexit.peel.next.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.cr ], [ %i.acq, %._crit_edge475.loopexit.peel.next.i.i ]
  %i.acr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.0321.lcssa.i.i, ptr %i.acr, align 8, !tbaa !165
  store i64 %.0.lcssa.i.i, ptr %7, align 8, !tbaa !163
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.yq)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.rk)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.rj)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.hi)
  br label %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit

_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit: ; preds = %.thread470, %_ZL20ClusterBlocksLiteralPN13duckdb_brotli13MemoryManagerEPKhmmPhPNS_10BlockSplitE.exit.i
  %i.acs = phi ptr [ %i.ba, %.thread470 ], [ %.ph, %_ZL20ClusterBlocksLiteralPN13duckdb_brotli13MemoryManagerEPKhmmPhPNS_10BlockSplitE.exit.i ]
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.acs)
  br i1 %.not.i, label %.thread656, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit.thread, %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit
  %i.act = shl i64 %2, 1                          ; 2 uses
  %i.acu = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.act) ; 20 uses
  %min.iters.check739 = icmp ult i64 %2, 17
  br i1 %min.iters.check739, label %.lr.ph.preheader871, label %vector.memcheck731

vector.memcheck731:                               ; preds = %.lr.ph.preheader
  %scevgep732 = getelementptr i8, ptr %i.acu, i64 %i.act
  %scevgep733 = getelementptr i8, ptr %1, i64 12
  %i.acv = shl i64 %2, 4
  %i.acw = getelementptr i8, ptr %1, i64 %i.acv
  %scevgep734 = getelementptr i8, ptr %i.acw, i64 -2
  %bound0735 = icmp ult ptr %i.acu, %scevgep734
  %bound1736 = icmp ult ptr %scevgep733, %scevgep732
  %found.conflict737 = and i1 %bound0735, %bound1736
  br i1 %found.conflict737, label %.lr.ph.preheader871, label %vector.ph740

vector.ph740:                                     ; preds = %vector.memcheck731
  %i.acx = and i64 %2, 7                          ; 2 uses
  %i.acy = icmp eq i64 %i.acx, 0
  %i.acz = select i1 %i.acy, i64 8, i64 %i.acx
  %n.vec741 = sub i64 %2, %i.acz                  ; 2 uses
  br label %vector.body742

vector.body742:                                   ; preds = %vector.body742, %vector.ph740
  %index743 = phi i64 [ 0, %vector.ph740 ], [ %index.next744, %vector.body742 ] ; 10 uses
  %i.ada = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.add = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index743
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ada, i64 12
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adb, i64 28
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adc, i64 44
  %i.adl = getelementptr inbounds nuw i8, ptr %i.add, i64 60
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 76
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adf, i64 92
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 108
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adh, i64 124
  %i.adq = load i16, ptr %i.adi, align 4, !tbaa !199, !alias.scope !200
  %i.adr = load i16, ptr %i.adj, align 4, !tbaa !199, !alias.scope !200
  %i.ads = load i16, ptr %i.adk, align 4, !tbaa !199, !alias.scope !200
  %i.adt = load i16, ptr %i.adl, align 4, !tbaa !199, !alias.scope !200
  %i.adu = load i16, ptr %i.adm, align 4, !tbaa !199, !alias.scope !200
  %i.adv = load i16, ptr %i.adn, align 4, !tbaa !199, !alias.scope !200
  %i.adw = load i16, ptr %i.ado, align 4, !tbaa !199, !alias.scope !200
  %i.adx = load i16, ptr %i.adp, align 4, !tbaa !199, !alias.scope !200
  %i.ady = insertelement <8 x i16> poison, i16 %i.adq, i64 0
  %i.adz = insertelement <8 x i16> %i.ady, i16 %i.adr, i64 1
  %i.aea = insertelement <8 x i16> %i.adz, i16 %i.ads, i64 2
  %i.aeb = insertelement <8 x i16> %i.aea, i16 %i.adt, i64 3
  %i.aec = insertelement <8 x i16> %i.aeb, i16 %i.adu, i64 4
  %i.aed = insertelement <8 x i16> %i.aec, i16 %i.adv, i64 5
  %i.aee = insertelement <8 x i16> %i.aed, i16 %i.adw, i64 6
  %i.aef = insertelement <8 x i16> %i.aee, i16 %i.adx, i64 7
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %index743
  store <8 x i16> %i.aef, ptr %i.aeg, align 2, !tbaa !194, !alias.scope !201, !noalias !200
  %index.next744 = add nuw i64 %index743, 8       ; 2 uses
  %i.aeh = icmp eq i64 %index.next744, %n.vec741
  br i1 %i.aeh, label %.lr.ph.preheader871, label %vector.body742, !llvm.loop !65

.lr.ph.preheader871:                              ; preds = %vector.body742, %vector.memcheck731, %.lr.ph.preheader
  %.055497.ph = phi i64 [ 0, %vector.memcheck731 ], [ 0, %.lr.ph.preheader ], [ %n.vec741, %vector.body742 ] ; 4 uses
  %i.aei = sub i64 %2, %.055497.ph
  %i.aej = add i64 %2, -1                         ; 5 uses
  %i.aek = sub i64 %i.aej, %.055497.ph
  %xtraiter945 = and i64 %i.aei, 3                ; 2 uses
  %lcmp.mod946.not = icmp eq i64 %xtraiter945, 0
  br i1 %lcmp.mod946.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader871, %.lr.ph.prol
  %.055497.prol = phi i64 [ %i.aep, %.lr.ph.prol ], [ %.055497.ph, %.lr.ph.preheader871 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader871 ]
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055497.prol
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 12
  %i.aen = load i16, ptr %i.aem, align 4, !tbaa !199
  %i.aeo = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %.055497.prol
  store i16 %i.aen, ptr %i.aeo, align 2, !tbaa !194
  %i.aep = add nuw i64 %.055497.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter945
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !66

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader871
  %.055497.unr = phi i64 [ %.055497.ph, %.lr.ph.preheader871 ], [ %i.aep, %.lr.ph.prol ]
  %i.aeq = icmp ult i64 %i.aek, 3
  br i1 %i.aeq, label %.unr-lcssa947, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.055497 = phi i64 [ %i.afk, %.lr.ph ], [ %.055497.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aer = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.055497
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 12
  %i.aet = load i16, ptr %i.aes, align 4, !tbaa !199
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %.055497
  store i16 %i.aet, ptr %i.aeu, align 2, !tbaa !194
  %i.aev = add nuw i64 %.055497, 1                ; 2 uses
  %i.aew = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aev
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 12
  %i.aey = load i16, ptr %i.aex, align 4, !tbaa !199
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %i.aev
  store i16 %i.aey, ptr %i.aez, align 2, !tbaa !194
  %i.afa = add nuw i64 %.055497, 2                ; 2 uses
  %i.afb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 12
  %i.afd = load i16, ptr %i.afc, align 4, !tbaa !199
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %i.afa
  store i16 %i.afd, ptr %i.afe, align 2, !tbaa !194
  %i.aff = add nuw i64 %.055497, 3                ; 2 uses
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aff
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 12
  %i.afi = load i16, ptr %i.afh, align 4, !tbaa !199
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %i.aff
  store i16 %i.afi, ptr %i.afj, align 2, !tbaa !194
  %i.afk = add nuw i64 %.055497, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.afk, %2
  br i1 %exitcond.not.3, label %.unr-lcssa947, label %.lr.ph, !llvm.loop !67

.thread656:                                       ; preds = %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit
  store i64 1, ptr %8, align 8, !tbaa !163
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef null)
  br label %.thread665

.unr-lcssa947:                                    ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lhs.trunc.i66 = trunc i64 %2 to i16
  %i.afl = udiv i16 %.lhs.trunc.i66, 530
  %narrow.i67 = add nuw nsw i16 %i.afl, 1
  %i.afm = zext nneg i16 %narrow.i67 to i64
  %i.afn = icmp ugt i64 %2, 26499
  %spec.select.i68 = select i1 %i.afn, i64 50, i64 %i.afm ; 17 uses
  %i.afo = icmp ult i64 %2, 128
  br i1 %i.afo, label %bb.cv, label %bb.dh

bb.cv:                                            ; preds = %.unr-lcssa947
  %i.afp = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !164 ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !165 ; 2 uses
  %i.aft = add i64 %i.afs, 1                      ; 4 uses
  %i.afu = icmp ult i64 %i.afq, %i.aft
  br i1 %i.afu, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %bb.cv
  %i.afv = icmp eq i64 %i.afq, 0
  %..i234 = select i1 %i.afv, i64 %i.aft, i64 %i.afq
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %bb.cw
  %.0136.i235 = phi i64 [ %..i234, %bb.cw ], [ %i.afx, %bb.cx ] ; 4 uses
  %i.afw = icmp ult i64 %.0136.i235, %i.aft
  %i.afx = shl i64 %.0136.i235, 1
  br i1 %i.afw, label %bb.cx, label %bb.cy, !llvm.loop !68

bb.cy:                                            ; preds = %bb.cx
  %i.afy = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.0136.i235) ; 2 uses
  %i.afz = load i64, ptr %i.afp, align 8, !tbaa !164 ; 2 uses
  %.not151.i236 = icmp eq i64 %i.afz, 0
  br i1 %.not151.i236, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aga = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afy, ptr align 1 %i.agb, i64 %i.afz, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.agc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !12
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.agd)
  store ptr %i.afy, ptr %i.agc, align 8, !tbaa !12
  store i64 %.0136.i235, ptr %i.afp, align 8, !tbaa !164
  %.pre.i237 = load i64, ptr %i.afr, align 8, !tbaa !165 ; 2 uses
  %.pre189.i = add i64 %.pre.i237, 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cv
  %.pre-phi.i230 = phi i64 [ %.pre189.i, %bb.da ], [ %i.aft, %bb.cv ] ; 3 uses
  %i.age = phi i64 [ %.pre.i237, %bb.da ], [ %i.afs, %bb.cv ]
  %i.agf = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !166 ; 3 uses
  %i.agh = icmp ult i64 %i.agg, %.pre-phi.i230
  br i1 %i.agh, label %bb.dc, label %.thread657

bb.dc:                                            ; preds = %bb.db
  %i.agi = icmp eq i64 %i.agg, 0
  %.154.i231 = select i1 %i.agi, i64 %.pre-phi.i230, i64 %i.agg
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dd, %bb.dc
  %.0135.i232 = phi i64 [ %.154.i231, %bb.dc ], [ %i.agk, %bb.dd ] ; 4 uses
  %i.agj = icmp ult i64 %.0135.i232, %.pre-phi.i230
  %i.agk = shl i64 %.0135.i232, 1
  br i1 %i.agj, label %bb.dd, label %bb.de, !llvm.loop !69

bb.de:                                            ; preds = %bb.dd
  %i.agl = shl i64 %.0135.i232, 2
  %i.agm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.agl) ; 2 uses
  %i.agn = load i64, ptr %i.agf, align 8, !tbaa !166 ; 2 uses
  %.not153.i233 = icmp eq i64 %i.agn, 0
  br i1 %.not153.i233, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ago = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !13
  %i.agq = shl i64 %i.agn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.agm, ptr align 4 %i.agp, i64 %i.agq, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.agr = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !13
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ags)
  store ptr %i.agm, ptr %i.agr, align 8, !tbaa !13
  store i64 %.0135.i232, ptr %i.agf, align 8, !tbaa !166
  %.pre188.i = load i64, ptr %i.afr, align 8, !tbaa !165
  br label %.thread657

.thread657:                                       ; preds = %bb.dg, %bb.db
  %i.agt = phi i64 [ %.pre188.i, %bb.dg ], [ %i.age, %bb.db ]
  store i64 1, ptr %8, align 8, !tbaa !163
  %i.agu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !12
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.agt
  store i8 0, ptr %i.agw, align 1, !tbaa !167
  %i.agx = trunc nuw nsw i64 %2 to i32
  %i.agy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !13
  %i.aha = load i64, ptr %i.afr, align 8, !tbaa !165 ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.aha
  store i32 %i.agx, ptr %i.ahb, align 4, !tbaa !6
  %i.ahc = add i64 %i.aha, 1
  store i64 %i.ahc, ptr %i.afr, align 8, !tbaa !165
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.acu)
  %.pre = shl nuw nsw i64 %2, 1
  %i.ahd = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.pre)
  br label %.lr.ph501.preheader

bb.dh:                                            ; preds = %.unr-lcssa947
  %i.ahe = mul nuw nsw i64 %spec.select.i68, 2832
  %i.ahf = add nuw nsw i64 %i.ahe, 2832
  %i.ahg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ahf) ; 20 uses
  %xtraiter950 = and i64 %spec.select.i68, 3      ; 3 uses
  %i.ahh = icmp samesign ult i64 %spec.select.i68, 4
  br i1 %i.ahh, label %.epil.preheader949, label %.new948

.new948:                                          ; preds = %bb.dh
  %unroll_iter954 = and i64 %spec.select.i68, 252
  br label %bb.dj

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.preheader.i.i.unr-lcssa: ; preds = %bb.dj
  %lcmp.mod952.not = icmp eq i64 %xtraiter950, 0
  br i1 %lcmp.mod952.not, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.preheader.i.i, label %.epil.preheader949

.epil.preheader949:                               ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.preheader.i.i.unr-lcssa, %bb.dh
  %.0.i28.i.i69.epil.init = phi i64 [ 0, %bb.dh ], [ %i.ahy, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod953 = icmp ne i64 %xtraiter950, 0
  tail call void @llvm.assume(i1 %lcmp.mod953)
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.epil.preheader949
  %.0.i28.i.i69.epil = phi i64 [ %.0.i28.i.i69.epil.init, %.epil.preheader949 ], [ %i.ahk, %bb.di ] ; 2 uses
  %epil.iter951 = phi i64 [ 0, %.epil.preheader949 ], [ %epil.iter951.next, %bb.di ]
  %i.ahi = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i28.i.i69.epil ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ahi, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.ahj, align 8, !tbaa !203
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  store i32 %i.aym, ptr %i.ayk, align 4, !tbaa !6
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.asg, i64 56
  %i.ayo = load i16, ptr %i.ayh, align 2, !tbaa !194
  %i.ayp = zext i16 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.ayp ; 2 uses
  %i.ayr = load i32, ptr %i.ayq, align 4, !tbaa !6
  %i.ays = add i32 %i.ayr, 1
  store i32 %i.ays, ptr %i.ayq, align 4, !tbaa !6
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.asg, i64 58
  %i.ayu = load i16, ptr %i.ayn, align 2, !tbaa !194
  %i.ayv = zext i16 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.ayv ; 2 uses
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !6
  %i.ayy = add i32 %i.ayx, 1
  store i32 %i.ayy, ptr %i.ayw, align 4, !tbaa !6
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.asg, i64 60
  %i.aza = load i16, ptr %i.ayt, align 2, !tbaa !194
  %i.azb = zext i16 %i.aza to i64
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.azb ; 2 uses
  %i.azd = load i32, ptr %i.azc, align 4, !tbaa !6
  %i.aze = add i32 %i.azd, 1
  store i32 %i.aze, ptr %i.azc, align 4, !tbaa !6
  %i.azf = getelementptr inbounds nuw i8, ptr %i.asg, i64 62
  %i.azg = load i16, ptr %i.ayz, align 2, !tbaa !194
  %i.azh = zext i16 %i.azg to i64
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.azh ; 2 uses
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !6
  %i.azk = add i32 %i.azj, 1
  store i32 %i.azk, ptr %i.azi, align 4, !tbaa !6
  %i.azl = getelementptr inbounds nuw i8, ptr %i.asg, i64 64
  %i.azm = load i16, ptr %i.azf, align 2, !tbaa !194
  %i.azn = zext i16 %i.azm to i64
  %i.azo = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.azn ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !6
  %i.azq = add i32 %i.azp, 1
  store i32 %i.azq, ptr %i.azo, align 4, !tbaa !6
  %i.azr = getelementptr inbounds nuw i8, ptr %i.asg, i64 66
  %i.azs = load i16, ptr %i.azl, align 2, !tbaa !194
  %i.azt = zext i16 %i.azs to i64
  %i.azu = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.azt ; 2 uses
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !6
  %i.azw = add i32 %i.azv, 1
  store i32 %i.azw, ptr %i.azu, align 4, !tbaa !6
  %i.azx = getelementptr inbounds nuw i8, ptr %i.asg, i64 68
  %i.azy = load i16, ptr %i.azr, align 2, !tbaa !194
  %i.azz = zext i16 %i.azy to i64
  %i.baa = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.azz ; 2 uses
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !6
  %i.bac = add i32 %i.bab, 1
  store i32 %i.bac, ptr %i.baa, align 4, !tbaa !6
  %i.bad = getelementptr inbounds nuw i8, ptr %i.asg, i64 70
  %i.bae = load i16, ptr %i.azx, align 2, !tbaa !194
  %i.baf = zext i16 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.baf ; 2 uses
  %i.bah = load i32, ptr %i.bag, align 4, !tbaa !6
  %i.bai = add i32 %i.bah, 1
  store i32 %i.bai, ptr %i.bag, align 4, !tbaa !6
  %i.baj = getelementptr inbounds nuw i8, ptr %i.asg, i64 72
  %i.bak = load i16, ptr %i.bad, align 2, !tbaa !194
  %i.bal = zext i16 %i.bak to i64
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bal ; 2 uses
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !6
  %i.bao = add i32 %i.ban, 1
  store i32 %i.bao, ptr %i.bam, align 4, !tbaa !6
  %i.bap = getelementptr inbounds nuw i8, ptr %i.asg, i64 74
  %i.baq = load i16, ptr %i.baj, align 2, !tbaa !194
  %i.bar = zext i16 %i.baq to i64
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bar ; 2 uses
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !6
  %i.bau = add i32 %i.bat, 1
  store i32 %i.bau, ptr %i.bas, align 4, !tbaa !6
  %i.bav = getelementptr inbounds nuw i8, ptr %i.asg, i64 76
  %i.baw = load i16, ptr %i.bap, align 2, !tbaa !194
  %i.bax = zext i16 %i.baw to i64
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bax ; 2 uses
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !6
  %i.bba = add i32 %i.baz, 1
  store i32 %i.bba, ptr %i.bay, align 4, !tbaa !6
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.asg, i64 78
  %i.bbc = load i16, ptr %i.bav, align 2, !tbaa !194
  %i.bbd = zext i16 %i.bbc to i64
  %i.bbe = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bbd ; 2 uses
  %i.bbf = load i32, ptr %i.bbe, align 4, !tbaa !6
  %i.bbg = add i32 %i.bbf, 1
  store i32 %i.bbg, ptr %i.bbe, align 4, !tbaa !6
  %i.bbh = load i16, ptr %i.bbb, align 2, !tbaa !194
  %i.bbi = zext i16 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bbi ; 2 uses
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !6
  %i.bbl = add i32 %i.bbk, 1
  store i32 %i.bbl, ptr %i.bbj, align 4, !tbaa !6
  %i.bbm = urem i64 %.020.i.i79, %spec.select.i68
  %.idx853 = mul nuw nsw i64 %i.bbm, 2832         ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %.idx853 ; 8 uses
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 2816 ; 2 uses
  %i.bbp = load i64, ptr %i.bbo, align 8, !tbaa !204
  %i.bbq = add i64 %i.bbp, 40
  store i64 %i.bbq, ptr %i.bbo, align 8, !tbaa !204
  %bound0749 = icmp ult ptr %i.bbn, %scevgep748
  %i.bbr = add nuw nsw i64 %.idx853, 2816
  %bound1750 = icmp samesign ult i64 %.idx852, %i.bbr
  %found.conflict751 = and i1 %bound0749, %bound1750
  br i1 %found.conflict751, label %scalar.ph752, label %vector.body754

vector.body754:                                   ; preds = %vector.memcheck747, %vector.body754
  %index755 = phi i64 [ %index.next760.1, %vector.body754 ], [ 0, %vector.memcheck747 ] ; 4 uses
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index755 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16
  %wide.load756 = load <4 x i32>, ptr %i.bbs, align 4, !tbaa !6, !alias.scope !205
  %wide.load757 = load <4 x i32>, ptr %i.bbt, align 4, !tbaa !6, !alias.scope !205
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %index755 ; 3 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16 ; 2 uses
  %wide.load758 = load <4 x i32>, ptr %i.bbu, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %wide.load759 = load <4 x i32>, ptr %i.bbv, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %i.bbw = add <4 x i32> %wide.load758, %wide.load756
  %i.bbx = add <4 x i32> %wide.load759, %wide.load757
  store <4 x i32> %i.bbw, ptr %i.bbu, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  store <4 x i32> %i.bbx, ptr %i.bbv, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %index.next760 = or disjoint i64 %index755, 8   ; 2 uses
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index.next760 ; 2 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 16
  %wide.load756.1 = load <4 x i32>, ptr %i.bby, align 4, !tbaa !6, !alias.scope !205
  %wide.load757.1 = load <4 x i32>, ptr %i.bbz, align 4, !tbaa !6, !alias.scope !205
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %index.next760 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 16 ; 2 uses
  %wide.load758.1 = load <4 x i32>, ptr %i.bca, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %wide.load759.1 = load <4 x i32>, ptr %i.bcb, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %i.bcc = add <4 x i32> %wide.load758.1, %wide.load756.1
  %i.bcd = add <4 x i32> %wide.load759.1, %wide.load757.1
  store <4 x i32> %i.bcc, ptr %i.bca, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  store <4 x i32> %i.bcd, ptr %i.bcb, align 4, !tbaa !6, !alias.scope !206, !noalias !205
  %index.next760.1 = add nuw nsw i64 %index755, 16 ; 2 uses
  %i.bce = icmp eq i64 %index.next760.1, 704
  br i1 %i.bce, label %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i, label %vector.body754, !llvm.loop !76

scalar.ph752:                                     ; preds = %vector.memcheck747, %scalar.ph752
  %.0.i18.i.i81 = phi i64 [ %i.bdc, %scalar.ph752 ], [ 0, %vector.memcheck747 ] ; 6 uses
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %.0.i18.i.i81
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !6
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %.0.i18.i.i81 ; 2 uses
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !6
  %i.bcj = add i32 %i.bci, %i.bcg
  store i32 %i.bcj, ptr %i.bch, align 4, !tbaa !6
  %i.bck = or disjoint i64 %.0.i18.i.i81, 1       ; 2 uses
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bck
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !6
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.bck ; 2 uses
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !6
  %i.bcp = add i32 %i.bco, %i.bcm
  store i32 %i.bcp, ptr %i.bcn, align 4, !tbaa !6
  %i.bcq = or disjoint i64 %.0.i18.i.i81, 2       ; 2 uses
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bcq
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !6
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.bcq ; 2 uses
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !6
  %i.bcv = add i32 %i.bcu, %i.bcs
  store i32 %i.bcv, ptr %i.bct, align 4, !tbaa !6
  %i.bcw = or disjoint i64 %.0.i18.i.i81, 3       ; 2 uses
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %i.bcw
  %i.bcy = load i32, ptr %i.bcx, align 4, !tbaa !6
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bbn, i64 %i.bcw ; 2 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !6
  %i.bdb = add i32 %i.bda, %i.bcy
  store i32 %i.bdb, ptr %i.bcz, align 4, !tbaa !6
  %i.bdc = add nuw nsw i64 %.0.i18.i.i81, 4       ; 2 uses
  %exitcond.not.i155.i82.3 = icmp eq i64 %i.bdc, 704
  br i1 %exitcond.not.i155.i82.3, label %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i, label %scalar.ph752, !llvm.loop !77

_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i: ; preds = %vector.body754, %scalar.ph752
  %i.bdd = add nuw i64 %.020.i.i79, 1             ; 2 uses
  %exitcond21.not.i.i83 = icmp eq i64 %i.bdd, %i.arx
  br i1 %exitcond21.not.i.i83, label %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i, label %vector.memcheck747, !llvm.loop !78

_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i: ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i
  %i.bde = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %2) ; 23 uses
  %i.bdf = add nuw nsw i64 %spec.select.i68, 7
  %i.bdg = lshr i64 %i.bdf, 3
  %i.bdh = mul nuw nsw i64 %spec.select.i68, 5632
  %i.bdi = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdh) ; 6 uses
  %i.bdj = shl nuw nsw i64 %spec.select.i68, 3
  %i.bdk = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdj) ; 6 uses
  %i.bdl = mul i64 %i.bdg, %2                     ; 2 uses
  %.not.i84 = icmp eq i64 %i.bdl, 0
  br i1 %.not.i84, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i
  %i.bdm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdl)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i
  %i.bdn = phi ptr [ %i.bdm, %bb.dm ], [ null, %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i ] ; 4 uses
  %i.bdo = shl nuw nsw i64 %spec.select.i68, 1
  %i.bdp = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdo) ; 12 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !192
  %.inv.i85 = icmp sgt i32 %i.bdr, 10
  %i.bds = select i1 %.inv.i85, i64 10, i64 3
  %i.bdt = add i64 %2, -1                         ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bdt
  %xtraiter967 = and i64 %2, 1
  %unroll_iter972 = and i64 %2, -2
  %lcmp.mod969.not = icmp eq i64 %xtraiter967, 0
  %lcmp.mod971 = trunc i64 %2 to i1
  %xtraiter974 = and i64 %2, 3                    ; 3 uses
  %i.bdv = icmp ult i64 %i.aej, 3
  %unroll_iter978 = and i64 %2, -4
  %lcmp.mod976.not = icmp eq i64 %xtraiter974, 0
  %lcmp.mod977 = icmp ne i64 %xtraiter974, 0
  %xtraiter986 = and i64 %2, 1
  %unroll_iter990 = and i64 %2, -2
  %lcmp.mod988.not = icmp eq i64 %xtraiter986, 0
  %lcmp.mod989 = trunc i64 %2 to i1
  br label %bb.do

bb.do:                                            ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i, %bb.dn
  %.0181.i = phi i64 [ 0, %bb.dn ], [ %i.bmm, %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i ]
  %.1180.i = phi i64 [ %spec.select.i68, %bb.dn ], [ %i.bkg, %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i ] ; 21 uses
  %i.bdw = add nuw nsw i64 %.1180.i, 7
  %i.bdx = lshr i64 %i.bdw, 3                     ; 4 uses
  %i.bdy = icmp samesign ult i64 %.1180.i, 2
  br i1 %i.bdy, label %.preheader.preheader.i.i229, label %bb.dp

.preheader.preheader.i.i229:                      ; preds = %bb.do
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bde, i8 0, i64 range(i64 128, 0) %2, i1 false), !tbaa !167
  br label %_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i

bb.dp:                                            ; preds = %bb.do
  %i.bdz = mul nuw nsw i64 %.1180.i, 5632
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdi, i8 0, i64 %i.bdz, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87, %bb.dp
  %.1116131.i.i86 = phi i64 [ 0, %bb.dp ], [ %i.bek, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87 ] ; 3 uses
  %i.bea = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.1116131.i.i86
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 2816
  %i.bec = load i64, ptr %i.beb, align 8, !tbaa !204
  %i.bed = and i64 %i.bec, 4294967295             ; 3 uses
  %i.bee = icmp samesign ult i64 %i.bed, 256
  br i1 %i.bee, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bef = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bed
  %i.beg = load double, ptr %i.bef, align 8, !tbaa !193
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87

bb.ds:                                            ; preds = %bb.dq
  %i.beh = uitofp nneg i64 %i.bed to double
  %i.bei = tail call double @log2(double noundef %i.beh) #8, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87:        ; preds = %bb.ds, %bb.dr
  %.0.i.i.i88 = phi double [ %i.beg, %bb.dr ], [ %i.bei, %bb.ds ]
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.bdi, i64 %.1116131.i.i86
  store double %.0.i.i.i88, ptr %i.bej, align 8, !tbaa !193
  %i.bek = add nuw nsw i64 %.1116131.i.i86, 1     ; 2 uses
  %exitcond.not.i156.i89 = icmp eq i64 %i.bek, %.1180.i
  br i1 %exitcond.not.i156.i89, label %.preheader130.i.i90, label %bb.dq, !llvm.loop !79

.loopexit129.i.i97:                               ; preds = %_ZL7BitCostm.exit.i.i95
  %.not.i157.i98 = icmp eq i64 %i.bel, 0
  br i1 %.not.i157.i98, label %bb.dx, label %.preheader130.i.i90, !llvm.loop !80

.preheader130.i.i90:                              ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87, %.loopexit129.i.i97
  %.2133.i.i91 = phi i64 [ %i.bel, %.loopexit129.i.i97 ], [ 704, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i87 ]
  %i.bel = add nsw i64 %.2133.i.i91, -1           ; 4 uses
  %invariant.gep.i.i92 = getelementptr [4 x i8], ptr %i.ahg, i64 %i.bel
  %i.bem = mul i64 %i.bel, %.1180.i
  %i.ben = getelementptr [8 x i8], ptr %i.bdi, i64 %i.bem
  br label %bb.dt

bb.dt:                                            ; preds = %_ZL7BitCostm.exit.i.i95, %.preheader130.i.i90
  %.0114132.i.i93 = phi i64 [ 0, %.preheader130.i.i90 ], [ %i.bfb, %_ZL7BitCostm.exit.i.i95 ] ; 4 uses
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %i.bdi, i64 %.0114132.i.i93
  %i.bep = load double, ptr %i.beo, align 8, !tbaa !193
  %gep.i.i94 = getelementptr [2832 x i8], ptr %invariant.gep.i.i92, i64 %.0114132.i.i93
  %i.beq = load i32, ptr %gep.i.i94, align 4, !tbaa !6 ; 4 uses
  %i.ber = zext nneg i32 %i.beq to i64
  %i.bes = icmp eq i32 %i.beq, 0
  br i1 %i.bes, label %_ZL7BitCostm.exit.i.i95, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bet = icmp ult i32 %i.beq, 256
  br i1 %i.bet, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.beu = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ber
  %i.bev = load double, ptr %i.beu, align 8, !tbaa !193
  br label %_ZL7BitCostm.exit.i.i95

bb.dw:                                            ; preds = %bb.du
  %i.bew = uitofp i32 %i.beq to double
  %i.bex = tail call double @log2(double noundef %i.bew) #8, !tbaa !6
  br label %_ZL7BitCostm.exit.i.i95

_ZL7BitCostm.exit.i.i95:                          ; preds = %bb.dw, %bb.dv, %bb.dt
  %i.bey = phi double [ -2.000000e+00, %bb.dt ], [ %i.bev, %bb.dv ], [ %i.bex, %bb.dw ]
  %i.bez = fsub double %i.bep, %i.bey
  %i.bfa = getelementptr [8 x i8], ptr %i.ben, i64 %.0114132.i.i93
  store double %i.bez, ptr %i.bfa, align 8, !tbaa !193
  %i.bfb = add nuw nsw i64 %.0114132.i.i93, 1     ; 2 uses
  %exitcond145.not.i.i96 = icmp eq i64 %i.bfb, %.1180.i
  br i1 %exitcond145.not.i.i96, label %.loopexit129.i.i97, label %bb.dt, !llvm.loop !81

bb.dx:                                            ; preds = %.loopexit129.i.i97
  %i.bfc = shl nuw nsw i64 %.1180.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdk, i8 0, i64 %i.bfc, i1 false)
  %i.bfd = mul i64 %i.bdx, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bdn, i8 0, i64 %i.bfd, i1 false)
  %xtraiter959 = and i64 %.1180.i, 1
  %unroll_iter965 = and i64 %.1180.i, -2
  %lcmp.mod961.not = icmp eq i64 %xtraiter959, 0
  %lcmp.mod964 = trunc i64 %.1180.i to i1
  br label %.new956

.new956:                                          ; preds = %bb.ej, %bb.dx
  %.0117137.i.i99 = phi i64 [ 0, %bb.dx ], [ %i.bhb, %bb.ej ] ; 6 uses
  %i.bfe = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %.0117137.i.i99
  %i.bff = load i16, ptr %i.bfe, align 2, !tbaa !194
  %i.bfg = zext i16 %i.bff to i64
  %i.bfh = mul nuw nsw i64 %.1180.i, %i.bfg
  %i.bfi = getelementptr inbounds nuw [8 x i8], ptr %i.bdi, i64 %i.bfh ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.0117137.i.i99 ; 3 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ec, %.new956
  %.0109135.i.i100 = phi i64 [ 0, %.new956 ], [ %i.bfz, %bb.ec ] ; 5 uses
  %.0112134.i.i101 = phi double [ f0x547D42AEA2879F2E, %.new956 ], [ %.1113.i.i102.1, %bb.ec ] ; 2 uses
  %niter966 = phi i64 [ 0, %.new956 ], [ %niter966.next.1, %bb.ec ]
  %i.bfk = getelementptr inbounds nuw [8 x i8], ptr %i.bfi, i64 %.0109135.i.i100
  %i.bfl = load double, ptr %i.bfk, align 8, !tbaa !193
  %i.bfm = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %.0109135.i.i100 ; 2 uses
  %i.bfn = load double, ptr %i.bfm, align 8, !tbaa !193
  %i.bfo = fadd double %i.bfl, %i.bfn             ; 3 uses
  store double %i.bfo, ptr %i.bfm, align 8, !tbaa !193
  %i.bfp = fcmp olt double %i.bfo, %.0112134.i.i101
  br i1 %i.bfp, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bfq = trunc i64 %.0109135.i.i100 to i8
  store i8 %i.bfq, ptr %i.bfj, align 1, !tbaa !167
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1113.i.i102 = phi double [ %i.bfo, %bb.dz ], [ %.0112134.i.i101, %bb.dy ] ; 2 uses
  %i.bfr = or disjoint i64 %.0109135.i.i100, 1    ; 3 uses
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %i.bfi, i64 %i.bfr
  %i.bft = load double, ptr %i.bfs, align 8, !tbaa !193
  %i.bfu = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %i.bfr ; 2 uses
  %i.bfv = load double, ptr %i.bfu, align 8, !tbaa !193
  %i.bfw = fadd double %i.bft, %i.bfv             ; 3 uses
  store double %i.bfw, ptr %i.bfu, align 8, !tbaa !193
  %i.bfx = fcmp olt double %i.bfw, %.1113.i.i102
  br i1 %i.bfx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bfy = trunc i64 %i.bfr to i8
  store i8 %i.bfy, ptr %i.bfj, align 1, !tbaa !167
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.1113.i.i102.1 = phi double [ %i.bfw, %bb.eb ], [ %.1113.i.i102, %bb.ea ] ; 4 uses
  %i.bfz = add nuw nsw i64 %.0109135.i.i100, 2    ; 4 uses
  %niter966.next.1 = add nuw i64 %niter966, 2     ; 2 uses
  %niter966.ncmp.1 = icmp eq i64 %niter966.next.1, %unroll_iter965
  br i1 %niter966.ncmp.1, label %.unr-lcssa957, label %bb.dy, !llvm.loop !82

.unr-lcssa957:                                    ; preds = %bb.ec
  br i1 %lcmp.mod961.not, label %.epilog-lcssa962, label %.epil.preheader958

.epil.preheader958:                               ; preds = %.unr-lcssa957
  tail call void @llvm.assume(i1 %lcmp.mod964)
  %i.bga = getelementptr inbounds nuw [8 x i8], ptr %i.bfi, i64 %i.bfz
  %i.bgb = load double, ptr %i.bga, align 8, !tbaa !193
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %i.bfz ; 2 uses
  %i.bgd = load double, ptr %i.bgc, align 8, !tbaa !193
  %i.bge = fadd double %i.bgb, %i.bgd             ; 3 uses
  store double %i.bge, ptr %i.bgc, align 8, !tbaa !193
  %i.bgf = fcmp olt double %i.bge, %.1113.i.i102.1
  br i1 %i.bgf, label %bb.ed, label %.epilog-lcssa962

bb.ed:                                            ; preds = %.epil.preheader958
  %i.bgg = trunc i64 %i.bfz to i8
  store i8 %i.bgg, ptr %i.bfj, align 1, !tbaa !167
  br label %.epilog-lcssa962

.epilog-lcssa962:                                 ; preds = %.epil.preheader958, %bb.ed, %.unr-lcssa957
  %.1113.i.i102.lcssa = phi double [ %.1113.i.i102.1, %.unr-lcssa957 ], [ %i.bge, %bb.ed ], [ %.1113.i.i102.1, %.epil.preheader958 ]
  %i.bgh = mul i64 %.0117137.i.i99, %i.bdx
  %i.bgi = icmp ult i64 %.0117137.i.i99, 2000
  br i1 %i.bgi, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %.epilog-lcssa962
  %i.bgj = uitofp nneg i64 %.0117137.i.i99 to double
  %i.bgk = fmul nnan double %i.bgj, 7.000000e-02
  %i.bgl = fdiv nnan double %i.bgk, 2.000000e+03
  %i.bgm = fadd nnan double %i.bgl, 7.700000e-01
  %i.bgn = fmul nnan double %i.bgm, 1.350000e+01
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %.epilog-lcssa962
  %.0111.i.i104 = phi double [ %i.bgn, %bb.ee ], [ 1.350000e+01, %.epilog-lcssa962 ] ; 2 uses
  %i.bgo = getelementptr i8, ptr %i.bdn, i64 %i.bgh
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ei, %bb.ef
  %.1110136.i.i105 = phi i64 [ 0, %bb.ef ], [ %i.bha, %bb.ei ] ; 4 uses
  %i.bgp = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %.1110136.i.i105 ; 3 uses
  %i.bgq = load double, ptr %i.bgp, align 8, !tbaa !193
  %i.bgr = fsub double %i.bgq, %.1113.i.i102.lcssa ; 2 uses
  store double %i.bgr, ptr %i.bgp, align 8, !tbaa !193
  %i.bgs = fcmp ult double %i.bgr, %.0111.i.i104
  br i1 %i.bgs, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.bgt = trunc i64 %.1110136.i.i105 to i8
  %i.bgu = and i8 %i.bgt, 7
  %i.bgv = shl nuw i8 1, %i.bgu
  store double %.0111.i.i104, ptr %i.bgp, align 8, !tbaa !193
  %i.bgw = lshr i64 %.1110136.i.i105, 3
  %i.bgx = getelementptr i8, ptr %i.bgo, i64 %i.bgw ; 2 uses
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !167
  %i.bgz = or i8 %i.bgy, %i.bgv
  store i8 %i.bgz, ptr %i.bgx, align 1, !tbaa !167
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.bha = add nuw nsw i64 %.1110136.i.i105, 1    ; 2 uses
  %exitcond147.not.i.i106 = icmp eq i64 %i.bha, %.1180.i
  br i1 %exitcond147.not.i.i106, label %bb.ej, label %bb.eg, !llvm.loop !83

bb.ej:                                            ; preds = %bb.ei
  %i.bhb = add nuw i64 %.0117137.i.i99, 1         ; 2 uses
  %exitcond148.not.i.i107 = icmp eq i64 %i.bhb, %2
  br i1 %exitcond148.not.i.i107, label %.lr.ph.preheader.i.i108, label %.new956, !llvm.loop !84

.lr.ph.preheader.i.i108:                          ; preds = %bb.ej
  %i.bhc = load i8, ptr %i.bdu, align 1, !tbaa !167
  %i.bhd = mul i64 %i.bdx, %i.bdt
  br label %.lr.ph.i.i109

.lr.ph.i.i109:                                    ; preds = %bb.el, %.lr.ph.preheader.i.i108
  %.0142.i.i110 = phi i8 [ %.1.i159.i118, %bb.el ], [ %i.bhc, %.lr.ph.preheader.i.i108 ] ; 4 uses
  %.0107141.i.i111 = phi i64 [ %i.bhh, %bb.el ], [ %i.bhd, %.lr.ph.preheader.i.i108 ]
  %.1118140.i.i112 = phi i64 [ %i.bhg, %bb.el ], [ %i.bdt, %.lr.ph.preheader.i.i108 ]
  %.0119139.i.i113 = phi i64 [ %.1120.i.i117, %bb.el ], [ 1, %.lr.ph.preheader.i.i108 ] ; 2 uses
  %i.bhe = and i8 %.0142.i.i110, 7
  %i.bhf = shl nuw i8 1, %i.bhe
  %i.bhg = add i64 %.1118140.i.i112, -1           ; 4 uses
  %i.bhh = sub i64 %.0107141.i.i111, %i.bdx       ; 2 uses
  %i.bhi = lshr i8 %.0142.i.i110, 3
  %i.bhj = zext nneg i8 %i.bhi to i64
  %i.bhk = getelementptr i8, ptr %i.bdn, i64 %i.bhh
  %i.bhl = getelementptr i8, ptr %i.bhk, i64 %i.bhj
  %i.bhm = load i8, ptr %i.bhl, align 1, !tbaa !167
  %i.bhn = and i8 %i.bhm, %i.bhf
  %.not125.i.i114 = icmp eq i8 %i.bhn, 0
  br i1 %.not125.i.i114, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i.i109
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bhg
  %i.bhp = load i8, ptr %i.bho, align 1, !tbaa !167 ; 2 uses
  %.not126.i.i115 = icmp ne i8 %.0142.i.i110, %i.bhp
  %i.bhq = zext i1 %.not126.i.i115 to i64
  %spec.select.i158.i116 = add i64 %.0119139.i.i113, %i.bhq
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.lr.ph.i.i109
  %.1120.i.i117 = phi i64 [ %.0119139.i.i113, %.lr.ph.i.i109 ], [ %spec.select.i158.i116, %bb.ek ] ; 2 uses
  %.1.i159.i118 = phi i8 [ %.0142.i.i110, %.lr.ph.i.i109 ], [ %i.bhp, %bb.ek ] ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bhg
  store i8 %.1.i159.i118, ptr %i.bhr, align 1, !tbaa !167
  %.not124.i.i119 = icmp eq i64 %i.bhg, 0
  br i1 %.not124.i.i119, label %_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i, label %.lr.ph.i.i109, !llvm.loop !85

_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i: ; preds = %bb.el, %.preheader.preheader.i.i229
  %.0108.i.i120 = phi i64 [ 1, %.preheader.preheader.i.i229 ], [ %.1120.i.i117, %bb.el ] ; 19 uses
  %.not.i160.i121 = icmp eq i64 %.1180.i, 0
  br i1 %.not.i160.i121, label %.preheader26.i.i125.preheader, label %iter.check774

iter.check774:                                    ; preds = %_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i
  %min.iters.check763 = icmp ult i64 %.1180.i, 4
  br i1 %min.iters.check763, label %.lr.ph.i161.i122.preheader, label %vector.main.loop.iter.check764

vector.main.loop.iter.check764:                   ; preds = %iter.check774
  %min.iters.check765 = icmp ult i64 %.1180.i, 16
  br i1 %min.iters.check765, label %vec.epilog.ph778, label %vector.ph766

vector.ph766:                                     ; preds = %vector.main.loop.iter.check764
  %i.bhs = and i64 %.1180.i, 12
  %n.vec767 = and i64 %.1180.i, -16               ; 4 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.body768, %vector.ph766
  %index769 = phi i64 [ 0, %vector.ph766 ], [ %index.next770, %vector.body768 ] ; 2 uses
  %i.bht = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %index769 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 16
  store <8 x i16> splat (i16 256), ptr %i.bht, align 2, !tbaa !194
  store <8 x i16> splat (i16 256), ptr %i.bhu, align 2, !tbaa !194
  %index.next770 = add nuw i64 %index769, 16      ; 2 uses
  %i.bhv = icmp eq i64 %index.next770, %n.vec767
  br i1 %i.bhv, label %middle.block771, label %vector.body768, !llvm.loop !86

middle.block771:                                  ; preds = %vector.body768
  %cmp.n772 = icmp eq i64 %.1180.i, %n.vec767
  br i1 %cmp.n772, label %.preheader26.i.i125.preheader, label %vec.epilog.iter.check776

vec.epilog.iter.check776:                         ; preds = %middle.block771
  %min.epilog.iters.check777 = icmp eq i64 %i.bhs, 0
  br i1 %min.epilog.iters.check777, label %.lr.ph.i161.i122.preheader, label %vec.epilog.ph778, !prof !195

vec.epilog.ph778:                                 ; preds = %vector.main.loop.iter.check764, %vec.epilog.iter.check776
  %vec.epilog.resume.val773 = phi i64 [ %n.vec767, %vec.epilog.iter.check776 ], [ 0, %vector.main.loop.iter.check764 ]
  %n.vec779 = and i64 %.1180.i, -4                ; 3 uses
  br label %vec.epilog.vector.body780

vec.epilog.vector.body780:                        ; preds = %vec.epilog.vector.body780, %vec.epilog.ph778
  %index781 = phi i64 [ %vec.epilog.resume.val773, %vec.epilog.ph778 ], [ %index.next782, %vec.epilog.vector.body780 ] ; 2 uses
  %i.bhw = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %index781
  store <4 x i16> splat (i16 256), ptr %i.bhw, align 2, !tbaa !194
  %index.next782 = add nuw i64 %index781, 4       ; 2 uses
  %i.bhx = icmp eq i64 %index.next782, %n.vec779
  br i1 %i.bhx, label %vec.epilog.middle.block783, label %vec.epilog.vector.body780, !llvm.loop !87

vec.epilog.middle.block783:                       ; preds = %vec.epilog.vector.body780
  %cmp.n784 = icmp eq i64 %.1180.i, %n.vec779
  br i1 %cmp.n784, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122.preheader

.lr.ph.i161.i122.preheader:                       ; preds = %iter.check774, %vec.epilog.iter.check776, %vec.epilog.middle.block783
  %.027.i.i123.ph = phi i64 [ 0, %iter.check774 ], [ %n.vec767, %vec.epilog.iter.check776 ], [ %n.vec779, %vec.epilog.middle.block783 ]
  br label %.lr.ph.i161.i122

.lr.ph.i161.i122:                                 ; preds = %.lr.ph.i161.i122.preheader, %.lr.ph.i161.i122
  %.027.i.i123 = phi i64 [ %i.bhz, %.lr.ph.i161.i122 ], [ %.027.i.i123.ph, %.lr.ph.i161.i122.preheader ] ; 2 uses
  %i.bhy = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %.027.i.i123
  store i16 256, ptr %i.bhy, align 2, !tbaa !194
  %i.bhz = add nuw nsw i64 %.027.i.i123, 1        ; 2 uses
  %exitcond.not.i162.i124 = icmp eq i64 %i.bhz, %.1180.i
  br i1 %exitcond.not.i162.i124, label %.preheader26.i.i125.preheader, label %.lr.ph.i161.i122, !llvm.loop !88

.preheader26.i.i125.preheader:                    ; preds = %_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i, %vec.epilog.middle.block783, %middle.block771, %.lr.ph.i161.i122
  br label %.preheader26.i.i125

.preheader26.i.i125:                              ; preds = %bb.eo, %.preheader26.i.i125.preheader
  %.129.i.i126 = phi i64 [ 0, %.preheader26.i.i125.preheader ], [ %i.bip, %bb.eo ] ; 3 uses
  %.02328.i.i127 = phi i16 [ 0, %.preheader26.i.i125.preheader ], [ %.124.i.i128.1, %bb.eo ] ; 3 uses
  %niter973 = phi i64 [ 0, %.preheader26.i.i125.preheader ], [ %niter973.next.1, %bb.eo ]
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.129.i.i126
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !167
  %i.bic = zext i8 %i.bib to i64
  %i.bid = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bic ; 2 uses
  %i.bie = load i16, ptr %i.bid, align 2, !tbaa !194
  %i.bif = icmp eq i16 %i.bie, 256
  br i1 %i.bif, label %bb.em, label %.preheader26.i.i125.1

bb.em:                                            ; preds = %.preheader26.i.i125
  %i.big = add i16 %.02328.i.i127, 1
  store i16 %.02328.i.i127, ptr %i.bid, align 2, !tbaa !194
  br label %.preheader26.i.i125.1

.preheader26.i.i125.1:                            ; preds = %bb.em, %.preheader26.i.i125
  %.124.i.i128 = phi i16 [ %i.big, %bb.em ], [ %.02328.i.i127, %.preheader26.i.i125 ] ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.129.i.i126
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 1
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !167
  %i.bik = zext i8 %i.bij to i64
  %i.bil = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bik ; 2 uses
  %i.bim = load i16, ptr %i.bil, align 2, !tbaa !194
  %i.bin = icmp eq i16 %i.bim, 256
  br i1 %i.bin, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.preheader26.i.i125.1
  %i.bio = add i16 %.124.i.i128, 1
  store i16 %.124.i.i128, ptr %i.bil, align 2, !tbaa !194
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.preheader26.i.i125.1
  %.124.i.i128.1 = phi i16 [ %i.bio, %bb.en ], [ %.124.i.i128, %.preheader26.i.i125.1 ] ; 5 uses
  %i.bip = add nuw i64 %.129.i.i126, 2            ; 2 uses
  %niter973.next.1 = add i64 %niter973, 2         ; 2 uses
  %niter973.ncmp.1 = icmp eq i64 %niter973.next.1, %unroll_iter972
  br i1 %niter973.ncmp.1, label %.preheader.i.i131.preheader.unr-lcssa, label %.preheader26.i.i125, !llvm.loop !89

.preheader.i.i131.preheader.unr-lcssa:            ; preds = %bb.eo
  br i1 %lcmp.mod969.not, label %.preheader.i.i131.preheader, label %.preheader26.i.i125.epil.preheader

.preheader26.i.i125.epil.preheader:               ; preds = %.preheader.i.i131.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod971)
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bip
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !167
  %i.bis = zext i8 %i.bir to i64
  %i.bit = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bis ; 2 uses
  %i.biu = load i16, ptr %i.bit, align 2, !tbaa !194
  %i.biv = icmp eq i16 %i.biu, 256
  br i1 %i.biv, label %bb.ep, label %.preheader.i.i131.preheader

bb.ep:                                            ; preds = %.preheader26.i.i125.epil.preheader
  %i.biw = add i16 %.124.i.i128.1, 1
  store i16 %.124.i.i128.1, ptr %i.bit, align 2, !tbaa !194
  br label %.preheader.i.i131.preheader

.preheader.i.i131.preheader:                      ; preds = %.preheader26.i.i125.epil.preheader, %bb.ep, %.preheader.i.i131.preheader.unr-lcssa
  %.124.i.i128.lcssa = phi i16 [ %.124.i.i128.1, %.preheader.i.i131.preheader.unr-lcssa ], [ %i.biw, %bb.ep ], [ %.124.i.i128.1, %.preheader26.i.i125.epil.preheader ] ; 3 uses
  br i1 %i.bdv, label %.preheader.i.i131.epil.preheader, label %.preheader.i.i131

.preheader.i.i131:                                ; preds = %.preheader.i.i131.preheader, %.preheader.i.i131
  %.230.i.i132 = phi i64 [ %i.bjy, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ] ; 5 uses
  %niter979 = phi i64 [ %niter979.next.3, %.preheader.i.i131 ], [ 0, %.preheader.i.i131.preheader ]
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.230.i.i132 ; 2 uses
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !167
  %i.biz = zext i8 %i.biy to i64
  %i.bja = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.biz
  %i.bjb = load i16, ptr %i.bja, align 2, !tbaa !194
  %i.bjc = trunc i16 %i.bjb to i8
  store i8 %i.bjc, ptr %i.bix, align 1, !tbaa !167
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.230.i.i132
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 1 ; 2 uses
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !167
  %i.bjg = zext i8 %i.bjf to i64
  %i.bjh = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bjg
  %i.bji = load i16, ptr %i.bjh, align 2, !tbaa !194
  %i.bjj = trunc i16 %i.bji to i8
  store i8 %i.bjj, ptr %i.bje, align 1, !tbaa !167
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.230.i.i132
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 2 ; 2 uses
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !167
  %i.bjn = zext i8 %i.bjm to i64
  %i.bjo = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bjn
  %i.bjp = load i16, ptr %i.bjo, align 2, !tbaa !194
  %i.bjq = trunc i16 %i.bjp to i8
  store i8 %i.bjq, ptr %i.bjl, align 1, !tbaa !167
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.230.i.i132
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjr, i64 3 ; 2 uses
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !167
  %i.bju = zext i8 %i.bjt to i64
  %i.bjv = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bju
  %i.bjw = load i16, ptr %i.bjv, align 2, !tbaa !194
  %i.bjx = trunc i16 %i.bjw to i8
  store i8 %i.bjx, ptr %i.bjs, align 1, !tbaa !167
  %i.bjy = add nuw i64 %.230.i.i132, 4            ; 2 uses
  %niter979.next.3 = add i64 %niter979, 4         ; 2 uses
  %niter979.ncmp.3 = icmp eq i64 %niter979.next.3, %unroll_iter978
  br i1 %niter979.ncmp.3, label %_ZL20RemapBlockIdsCommandPhmPtm.exit.i.unr-lcssa, label %.preheader.i.i131, !llvm.loop !90

_ZL20RemapBlockIdsCommandPhmPtm.exit.i.unr-lcssa: ; preds = %.preheader.i.i131
  br i1 %lcmp.mod976.not, label %_ZL20RemapBlockIdsCommandPhmPtm.exit.i, label %.preheader.i.i131.epil.preheader

.preheader.i.i131.epil.preheader:                 ; preds = %_ZL20RemapBlockIdsCommandPhmPtm.exit.i.unr-lcssa, %.preheader.i.i131.preheader
  %.230.i.i132.epil.init = phi i64 [ 0, %.preheader.i.i131.preheader ], [ %i.bjy, %_ZL20RemapBlockIdsCommandPhmPtm.exit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod977)
  br label %.preheader.i.i131.epil

.preheader.i.i131.epil:                           ; preds = %.preheader.i.i131.epil, %.preheader.i.i131.epil.preheader
  %.230.i.i132.epil = phi i64 [ %i.bkf, %.preheader.i.i131.epil ], [ %.230.i.i132.epil.init, %.preheader.i.i131.epil.preheader ] ; 2 uses
  %epil.iter975 = phi i64 [ %epil.iter975.next, %.preheader.i.i131.epil ], [ 0, %.preheader.i.i131.epil.preheader ]
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.230.i.i132.epil ; 2 uses
  %i.bka = load i8, ptr %i.bjz, align 1, !tbaa !167
  %i.bkb = zext i8 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw [2 x i8], ptr %i.bdp, i64 %i.bkb
  %i.bkd = load i16, ptr %i.bkc, align 2, !tbaa !194
  %i.bke = trunc i16 %i.bkd to i8
  store i8 %i.bke, ptr %i.bjz, align 1, !tbaa !167
  %i.bkf = add nuw i64 %.230.i.i132.epil, 1
  %epil.iter975.next = add i64 %epil.iter975, 1   ; 2 uses
  %epil.iter975.cmp.not = icmp eq i64 %epil.iter975.next, %xtraiter974
  br i1 %epil.iter975.cmp.not, label %_ZL20RemapBlockIdsCommandPhmPtm.exit.i, label %.preheader.i.i131.epil, !llvm.loop !91

_ZL20RemapBlockIdsCommandPhmPtm.exit.i:           ; preds = %.preheader.i.i131.epil, %_ZL20RemapBlockIdsCommandPhmPtm.exit.i.unr-lcssa
  %i.bkg = zext i16 %.124.i.i128.lcssa to i64     ; 3 uses
  %.not.i164.i134 = icmp eq i16 %.124.i.i128.lcssa, 0
  br i1 %.not.i164.i134, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader, label %.lr.ph.i165.i135.preheader

.lr.ph.i165.i135.preheader:                       ; preds = %_ZL20RemapBlockIdsCommandPhmPtm.exit.i
  %xtraiter980 = and i64 %i.bkg, 3                ; 3 uses
  %i.bkh = icmp ult i16 %.124.i.i128.lcssa, 4
  br i1 %i.bkh, label %.lr.ph.i165.i135.epil.preheader, label %.lr.ph.i165.i135.preheader.new

.lr.ph.i165.i135.preheader.new:                   ; preds = %.lr.ph.i165.i135.preheader
  %unroll_iter984 = and i64 %i.bkg, 65532
  br label %.lr.ph.i165.i135

.lr.ph.i165.i135:                                 ; preds = %.lr.ph.i165.i135, %.lr.ph.i165.i135.preheader.new
  %.0.i9.i.i136 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %i.bkt, %.lr.ph.i165.i135 ] ; 5 uses
  %niter985 = phi i64 [ 0, %.lr.ph.i165.i135.preheader.new ], [ %niter985.next.3, %.lr.ph.i165.i135 ]
  %i.bki = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bki, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bki, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkj, align 8, !tbaa !203
  %i.bkk = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 2832
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkk, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkl, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkm, align 8, !tbaa !203
  %i.bkn = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i9.i.i136 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 5664
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bkn, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bko, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkp, align 8, !tbaa !203
  %i.bkq = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i9.i.i136 ; 2 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 8496
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkq, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bkr, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bks, align 8, !tbaa !203
  %i.bkt = add nuw nsw i64 %.0.i9.i.i136, 4       ; 2 uses
  %niter985.next.3 = add i64 %niter985, 4         ; 2 uses
  %niter985.ncmp.3 = icmp eq i64 %niter985.next.3, %unroll_iter984
  br i1 %niter985.ncmp.3, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i135, !llvm.loop !71

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i135
  %lcmp.mod982.not = icmp eq i64 %xtraiter980, 0
  br i1 %lcmp.mod982.not, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader, label %.lr.ph.i165.i135.epil.preheader

.lr.ph.i165.i135.epil.preheader:                  ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i135.preheader
  %.0.i9.i.i136.epil.init = phi i64 [ 0, %.lr.ph.i165.i135.preheader ], [ %i.bkt, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod983 = icmp ne i64 %xtraiter980, 0
  tail call void @llvm.assume(i1 %lcmp.mod983)
  br label %.lr.ph.i165.i135.epil

.lr.ph.i165.i135.epil:                            ; preds = %.lr.ph.i165.i135.epil, %.lr.ph.i165.i135.epil.preheader
  %.0.i9.i.i136.epil = phi i64 [ %i.bkw, %.lr.ph.i165.i135.epil ], [ %.0.i9.i.i136.epil.init, %.lr.ph.i165.i135.epil.preheader ] ; 2 uses
  %epil.iter981 = phi i64 [ %epil.iter981.next, %.lr.ph.i165.i135.epil ], [ 0, %.lr.ph.i165.i135.epil.preheader ]
  %i.bku = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %.0.i9.i.i136.epil ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bku, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bkv, align 8, !tbaa !203
  %i.bkw = add nuw nsw i64 %.0.i9.i.i136.epil, 1
  %epil.iter981.next = add i64 %epil.iter981, 1   ; 2 uses
  %epil.iter981.cmp.not = icmp eq i64 %epil.iter981.next, %xtraiter980
  br i1 %epil.iter981.cmp.not, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader, label %.lr.ph.i165.i135.epil, !llvm.loop !92

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader: ; preds = %_ZL20RemapBlockIdsCommandPhmPtm.exit.i, %.lr.ph.i165.i135.epil, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa
  br label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader
  %.010.i.i138 = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader ], [ %i.bly, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i ] ; 4 uses
  %niter991 = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader ], [ %niter991.next.1, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i ]
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.010.i.i138
  %i.bky = load i8, ptr %i.bkx, align 1, !tbaa !167
  %i.bkz = zext i8 %i.bky to i64
  %i.bla = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %i.bkz ; 2 uses
  %i.blb = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %.010.i.i138
  %i.blc = load i16, ptr %i.blb, align 2, !tbaa !194
  %i.bld = zext i16 %i.blc to i64
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bla, i64 %i.bld ; 2 uses
  %i.blf = load i32, ptr %i.ble, align 4, !tbaa !6
  %i.blg = add i32 %i.blf, 1
  store i32 %i.blg, ptr %i.ble, align 4, !tbaa !6
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bla, i64 2816 ; 2 uses
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !204
  %i.blj = add i64 %i.bli, 1
  store i64 %i.blj, ptr %i.blh, align 8, !tbaa !204
  %i.blk = or disjoint i64 %.010.i.i138, 1        ; 2 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.blk
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !167
  %i.bln = zext i8 %i.blm to i64
  %i.blo = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %i.bln ; 2 uses
  %i.blp = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %i.blk
  %i.blq = load i16, ptr %i.blp, align 2, !tbaa !194
  %i.blr = zext i16 %i.blq to i64
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.blo, i64 %i.blr ; 2 uses
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !6
  %i.blu = add i32 %i.blt, 1
  store i32 %i.blu, ptr %i.bls, align 4, !tbaa !6
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blo, i64 2816 ; 2 uses
  %i.blw = load i64, ptr %i.blv, align 8, !tbaa !204
  %i.blx = add i64 %i.blw, 1
  store i64 %i.blx, ptr %i.blv, align 8, !tbaa !204
  %i.bly = add nuw i64 %.010.i.i138, 2            ; 3 uses
  %niter991.next.1 = add i64 %niter991, 2         ; 2 uses
  %niter991.ncmp.1 = icmp eq i64 %niter991.next.1, %unroll_iter990
  br i1 %niter991.ncmp.1, label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i, !llvm.loop !93

_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i
  br i1 %lcmp.mod988.not, label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader: ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod989)
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bly
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !167
  %i.bmb = zext i8 %i.bma to i64
  %i.bmc = getelementptr inbounds nuw [2832 x i8], ptr %i.ahg, i64 %i.bmb ; 2 uses
  %i.bmd = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %i.bly
  %i.bme = load i16, ptr %i.bmd, align 2, !tbaa !194
  %i.bmf = zext i16 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %i.bmc, i64 %i.bmf ; 2 uses
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !6
  %i.bmi = add i32 %i.bmh, 1
  store i32 %i.bmi, ptr %i.bmg, align 4, !tbaa !6
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmc, i64 2816 ; 2 uses
  %i.bmk = load i64, ptr %i.bmj, align 8, !tbaa !204
  %i.bml = add i64 %i.bmk, 1
  store i64 %i.bml, ptr %i.bmj, align 8, !tbaa !204
  br label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i

_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i: ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader
  %i.bmm = add nuw nsw i64 %.0181.i, 1            ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.bmm, %i.bds
  br i1 %exitcond.not.i140, label %bb.eq, label %bb.do, !llvm.loop !94

bb.eq:                                            ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdi)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdk)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdn)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.bdp)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.ahg)
  %.not.i168.i141 = icmp eq i64 %.0108.i.i120, 0  ; 5 uses
  br i1 %.not.i168.i141, label %.thread.i.i143, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bmn = shl i64 %.0108.i.i120, 2
  %i.bmo = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bmn) ; 2 uses
  %i.bmp = add i64 %.0108.i.i120, 256             ; 2 uses
  %.not383.i.i142 = icmp eq i64 %i.bmp, 0
  br i1 %.not383.i.i142, label %.thread405.i.i145, label %.thread.i.i143

.thread.i.i143:                                   ; preds = %bb.er, %bb.eq
  %i.bmq = phi i64 [ %i.bmp, %bb.er ], [ 256, %bb.eq ] ; 3 uses
  %i.bmr = phi ptr [ %i.bmo, %bb.er ], [ null, %bb.eq ] ; 2 uses
  %i.bms = shl i64 %i.bmq, 2
  %i.bmt = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bms) ; 2 uses
  %i.bmu = shl i64 %.0108.i.i120, 4
  %i.bmv = add i64 %i.bmu, 1008
  %i.bmw = lshr i64 %i.bmv, 6                     ; 2 uses
  %.not384.i.i144 = icmp eq i64 %i.bmw, 0
  br i1 %.not384.i.i144, label %.thread403.i.i146, label %.thread405.i.i145

.thread405.i.i145:                                ; preds = %.thread.i.i143, %bb.er
  %.sink557.i.i = phi i64 [ %i.bmw, %.thread.i.i143 ], [ 288230376151711695, %bb.er ] ; 3 uses
  %i.bmx = phi i64 [ %i.bmq, %.thread.i.i143 ], [ 0, %bb.er ]
  %i.bmy = phi ptr [ %i.bmr, %.thread.i.i143 ], [ %i.bmo, %bb.er ]
  %i.bmz = phi ptr [ %i.bmt, %.thread.i.i143 ], [ null, %bb.er ]
  %i.bna = mul i64 %.sink557.i.i, 2832
  %i.bnb = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bna)
  %i.bnc = shl nuw nsw i64 %.sink557.i.i, 2
  %i.bnd = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bnc)
  br label %.thread403.i.i146

.thread403.i.i146:                                ; preds = %.thread405.i.i145, %.thread.i.i143
  %i.bne = phi ptr [ %i.bnb, %.thread405.i.i145 ], [ null, %.thread.i.i143 ] ; 2 uses
  %i.bnf = phi i64 [ %i.bmx, %.thread405.i.i145 ], [ %i.bmq, %.thread.i.i143 ]
  %i.bng = phi ptr [ %i.bmy, %.thread405.i.i145 ], [ %i.bmr, %.thread.i.i143 ] ; 9 uses
  %i.bnh = phi ptr [ %i.bmz, %.thread405.i.i145 ], [ %i.bmt, %.thread.i.i143 ] ; 9 uses
  %i.bni = phi i64 [ %.sink557.i.i, %.thread405.i.i145 ], [ 0, %.thread.i.i143 ] ; 2 uses
  %i.bnj = phi ptr [ %i.bnd, %.thread405.i.i145 ], [ null, %.thread.i.i143 ] ; 2 uses
  br i1 %.not.i168.i141, label %.new992, label %bb.es

bb.es:                                            ; preds = %.thread403.i.i146
  %i.bnk = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i120, i64 64)
  %i.bnl = mul nuw nsw i64 %i.bnk, 2832
  %i.bnm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bnl)
  br label %.new992

.new992:                                          ; preds = %bb.es, %.thread403.i.i146
  %i.bnn = phi ptr [ %i.bnm, %bb.es ], [ null, %.thread403.i.i146 ] ; 4 uses
  %i.bno = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bnh, i64 1024 ; 8 uses
  %i.bnq = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 5664) ; 10 uses
  %i.bnr = shl i64 %i.bnf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bnh, i8 0, i64 %i.bnr, i1 false)
  %xtraiter994 = and i64 %i.aej, 1
  %unroll_iter999 = and i64 %i.aej, -2
  br label %bb.et

.preheader408.peel.begin.i.i152.unr-lcssa:        ; preds = %bb.et
  %lcmp.mod996.not = icmp eq i64 %xtraiter994, 0
  br i1 %lcmp.mod996.not, label %.preheader408.peel.begin.i.i152, label %.epil.preheader993

.epil.preheader993:                               ; preds = %.preheader408.peel.begin.i.i152.unr-lcssa
  %lcmp.mod998 = trunc i64 %i.aej to i1
  tail call void @llvm.assume(i1 %lcmp.mod998)
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %spec.select.i169.i150.1 ; 2 uses
  %i.bnt = load i32, ptr %i.bns, align 4, !tbaa !6
  %i.bnu = add i32 %i.bnt, 1
  store i32 %i.bnu, ptr %i.bns, align 4, !tbaa !6
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bot
  %i.bnw = load i8, ptr %i.bnv, align 1, !tbaa !167
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bot
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 1
  %i.bnz = load i8, ptr %i.bny, align 1, !tbaa !167
  %.not396.i.i149.epil = icmp ne i8 %i.bnw, %i.bnz
  %i.boa = zext i1 %.not396.i.i149.epil to i64
  %spec.select.i169.i150.epil = add i64 %spec.select.i169.i150.1, %i.boa
  br label %.preheader408.peel.begin.i.i152

.preheader408.peel.begin.i.i152:                  ; preds = %.preheader408.peel.begin.i.i152.unr-lcssa, %.epil.preheader993
  %spec.select.i169.i150.lcssa = phi i64 [ %spec.select.i169.i150.1, %.preheader408.peel.begin.i.i152.unr-lcssa ], [ %spec.select.i169.i150.epil, %.epil.preheader993 ]
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %spec.select.i169.i150.lcssa ; 2 uses
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !6
  %i.bod = add i32 %i.boc, 1
  store i32 %i.bod, ptr %i.bob, align 4, !tbaa !6
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnh, i64 256 ; 3 uses
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnh, i64 512 ; 7 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bnh, i64 768 ; 6 uses
  br i1 %.not.i168.i141, label %._crit_edge439.i.i188, label %.lr.ph416.i.i153

bb.et:                                            ; preds = %bb.et, %.new992
  %.0340410.i.i147 = phi i64 [ 0, %.new992 ], [ %spec.select.i169.i150.1, %bb.et ] ; 2 uses
  %.0342409.i.i148 = phi i64 [ 0, %.new992 ], [ %i.bot, %bb.et ] ; 3 uses
  %niter1000 = phi i64 [ 0, %.new992 ], [ %niter1000.next.1, %bb.et ]
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %.0340410.i.i147 ; 2 uses
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !6
  %i.boj = add i32 %i.boi, 1
  store i32 %i.boj, ptr %i.boh, align 4, !tbaa !6
  %i.bok = or disjoint i64 %.0342409.i.i148, 1    ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bde, i64 %.0342409.i.i148
  %i.bom = load i8, ptr %i.bol, align 1, !tbaa !167
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bok
  %i.boo = load i8, ptr %i.bon, align 1, !tbaa !167
  %.not396.i.i149 = icmp ne i8 %i.bom, %i.boo
  %i.bop = zext i1 %.not396.i.i149 to i64
  %spec.select.i169.i150 = add i64 %.0340410.i.i147, %i.bop ; 2 uses
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %spec.select.i169.i150 ; 2 uses
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !6
  %i.bos = add i32 %i.bor, 1
  store i32 %i.bos, ptr %i.boq, align 4, !tbaa !6
  %i.bot = add nuw i64 %.0342409.i.i148, 2        ; 4 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bok
  %i.bov = load i8, ptr %i.bou, align 1, !tbaa !167
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bot
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !167
  %.not396.i.i149.1 = icmp ne i8 %i.bov, %i.box
  %i.boy = zext i1 %.not396.i.i149.1 to i64
  %spec.select.i169.i150.1 = add i64 %spec.select.i169.i150, %i.boy ; 4 uses
  %niter1000.next.1 = add nuw i64 %niter1000, 2   ; 2 uses
  %niter1000.ncmp.1 = icmp eq i64 %niter1000.next.1, %unroll_iter999
  br i1 %niter1000.ncmp.1, label %.preheader408.peel.begin.i.i152.unr-lcssa, label %bb.et, !llvm.loop !95

.lr.ph416.i.i153:                                 ; preds = %.preheader408.peel.begin.i.i152, %._crit_edge428.i.i186
  %indvars.iv.i.i154 = phi i64 [ %indvars.iv.next.i.i187, %._crit_edge428.i.i186 ], [ %.0108.i.i120, %.preheader408.peel.begin.i.i152 ] ; 3 uses
  %.1343437.i.i155 = phi i64 [ %i.btn, %._crit_edge428.i.i186 ], [ 0, %.preheader408.peel.begin.i.i152 ] ; 4 uses
  %.0345436.i.i156 = phi i64 [ %.2347.lcssa.i.i170, %._crit_edge428.i.i186 ], [ 0, %.preheader408.peel.begin.i.i152 ]
  %.0351435.i.i157 = phi i64 [ %i.btm, %._crit_edge428.i.i186 ], [ 0, %.preheader408.peel.begin.i.i152 ] ; 2 uses
  %.0352434.i.i158 = phi ptr [ %.1353.i.i175, %._crit_edge428.i.i186 ], [ %i.bnj, %.preheader408.peel.begin.i.i152 ] ; 3 uses
  %.0354433.i.i159 = phi i64 [ %.1355.i.i174, %._crit_edge428.i.i186 ], [ %i.bni, %.preheader408.peel.begin.i.i152 ] ; 5 uses
  %.0356432.i.i160 = phi i64 [ %.1357.lcssa.i.i183, %._crit_edge428.i.i186 ], [ 0, %.preheader408.peel.begin.i.i152 ] ; 3 uses
  %.0358431.i.i161 = phi ptr [ %.1359.i.i173, %._crit_edge428.i.i186 ], [ %i.bne, %.preheader408.peel.begin.i.i152 ] ; 3 uses
  %.0360430.i.i162 = phi i64 [ %.1361.i.i172, %._crit_edge428.i.i186 ], [ %i.bni, %.preheader408.peel.begin.i.i152 ] ; 5 uses
  %.0362429.i.i163 = phi i64 [ %.1363.lcssa.i.i182, %._crit_edge428.i.i186 ], [ 0, %.preheader408.peel.begin.i.i152 ] ; 3 uses
  %i.boz = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i154, i64 1)
  %umax500.i.i = tail call i64 @llvm.umin.i64(i64 %i.boz, i64 64) ; 3 uses
  %i.bpa = getelementptr [4 x i8], ptr %i.bnp, i64 %.1343437.i.i155
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ev, %.lr.ph416.i.i153
  %.0338414.i.i164 = phi i64 [ 0, %.lr.ph416.i.i153 ], [ %i.bqi, %bb.ev ] ; 7 uses
  %.1346413.i.i165 = phi i64 [ %.0345436.i.i156, %.lr.ph416.i.i153 ], [ %.2347.lcssa.i.i170, %bb.ev ] ; 3 uses
  %i.bpb = getelementptr [4 x i8], ptr %i.bpa, i64 %.0338414.i.i164
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !6 ; 4 uses
  %i.bpd = zext i32 %i.bpc to i64                 ; 3 uses
  %i.bpe = getelementptr inbounds nuw [2832 x i8], ptr %i.bnn, i64 %.0338414.i.i164 ; 7 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 2816
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpe, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpe, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bpg, align 8, !tbaa !203
  %.not481.i.i166 = icmp eq i32 %i.bpc, 0
  br i1 %.not481.i.i166, label %bb.ev, label %.lr.ph.i171.i167.preheader

.lr.ph.i171.i167.preheader:                       ; preds = %bb.eu
  %xtraiter1001 = and i64 %i.bpd, 1
  %i.bph = icmp eq i32 %i.bpc, 1
  br i1 %i.bph, label %.lr.ph.i171.i167.epil.preheader, label %.lr.ph.i171.i167.preheader.new

.lr.ph.i171.i167.preheader.new:                   ; preds = %.lr.ph.i171.i167.preheader
  %unroll_iter1006 = and i64 %i.bpd, 4294967294
  br label %.lr.ph.i171.i167

.lr.ph.i171.i167:                                 ; preds = %.lr.ph.i171.i167, %.lr.ph.i171.i167.preheader.new
  %.2347411.i.i168 = phi i64 [ %.1346413.i.i165, %.lr.ph.i171.i167.preheader.new ], [ %i.bpo, %.lr.ph.i171.i167 ] ; 3 uses
  %niter1007 = phi i64 [ 0, %.lr.ph.i171.i167.preheader.new ], [ %niter1007.next.1, %.lr.ph.i171.i167 ]
  %i.bpi = getelementptr inbounds nuw [2 x i8], ptr %i.acu, i64 %.2347411.i.i168
  %i.bpj = load i16, ptr %i.bpi, align 2, !tbaa !194
  %i.bpk = zext i16 %i.bpj to i64
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bpe, i64 %i.bpk ; 2 uses
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !6
  %i.bpn = add i32 %i.bpm, 1
  store i32 %i.bpn, ptr %i.bpl, align 4, !tbaa !6
  %i.bpo = add i64 %.2347411.i.i168, 2            ; 3 uses
  %i.bpp = getelementptr [2 x i8], ptr %i.acu, i64 %.2347411.i.i168
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 2
  %i.bpr = load i16, ptr %i.bpq, align 2, !tbaa !194
  %i.bps = zext i16 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %i.bpe, i64 %i.bps ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.csa = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.crz ; 2 uses
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !6
  %i.csc = add i32 %i.csb, 1
  store i32 %i.csc, ptr %i.csa, align 4, !tbaa !6
  %i.csd = getelementptr inbounds nuw i8, ptr %i.clw, i64 56
  %i.cse = load i16, ptr %i.crx, align 2, !tbaa !194
  %i.csf = zext i16 %i.cse to i64
  %i.csg = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.csf ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !6
  %i.csi = add i32 %i.csh, 1
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !6
  %i.csj = getelementptr inbounds nuw i8, ptr %i.clw, i64 58
  %i.csk = load i16, ptr %i.csd, align 2, !tbaa !194
  %i.csl = zext i16 %i.csk to i64
  %i.csm = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.csl ; 2 uses
  %i.csn = load i32, ptr %i.csm, align 4, !tbaa !6
  %i.cso = add i32 %i.csn, 1
  store i32 %i.cso, ptr %i.csm, align 4, !tbaa !6
  %i.csp = getelementptr inbounds nuw i8, ptr %i.clw, i64 60
  %i.csq = load i16, ptr %i.csj, align 2, !tbaa !194
  %i.csr = zext i16 %i.csq to i64
  %i.css = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.csr ; 2 uses
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !6
  %i.csu = add i32 %i.cst, 1
  store i32 %i.csu, ptr %i.css, align 4, !tbaa !6
  %i.csv = getelementptr inbounds nuw i8, ptr %i.clw, i64 62
  %i.csw = load i16, ptr %i.csp, align 2, !tbaa !194
  %i.csx = zext i16 %i.csw to i64
  %i.csy = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.csx ; 2 uses
  %i.csz = load i32, ptr %i.csy, align 4, !tbaa !6
  %i.cta = add i32 %i.csz, 1
  store i32 %i.cta, ptr %i.csy, align 4, !tbaa !6
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.clw, i64 64
  %i.ctc = load i16, ptr %i.csv, align 2, !tbaa !194
  %i.ctd = zext i16 %i.ctc to i64
  %i.cte = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.ctd ; 2 uses
  %i.ctf = load i32, ptr %i.cte, align 4, !tbaa !6
  %i.ctg = add i32 %i.ctf, 1
  store i32 %i.ctg, ptr %i.cte, align 4, !tbaa !6
  %i.cth = getelementptr inbounds nuw i8, ptr %i.clw, i64 66
  %i.cti = load i16, ptr %i.ctb, align 2, !tbaa !194
  %i.ctj = zext i16 %i.cti to i64
  %i.ctk = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.ctj ; 2 uses
  %i.ctl = load i32, ptr %i.ctk, align 4, !tbaa !6
  %i.ctm = add i32 %i.ctl, 1
  store i32 %i.ctm, ptr %i.ctk, align 4, !tbaa !6
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.clw, i64 68
  %i.cto = load i16, ptr %i.cth, align 2, !tbaa !194
  %i.ctp = zext i16 %i.cto to i64
  %i.ctq = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.ctp ; 2 uses
  %i.ctr = load i32, ptr %i.ctq, align 4, !tbaa !6
  %i.cts = add i32 %i.ctr, 1
  store i32 %i.cts, ptr %i.ctq, align 4, !tbaa !6
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.clw, i64 70
  %i.ctu = load i16, ptr %i.ctn, align 2, !tbaa !194
  %i.ctv = zext i16 %i.ctu to i64
  %i.ctw = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.ctv ; 2 uses
  %i.ctx = load i32, ptr %i.ctw, align 4, !tbaa !6
  %i.cty = add i32 %i.ctx, 1
  store i32 %i.cty, ptr %i.ctw, align 4, !tbaa !6
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.clw, i64 72
  %i.cua = load i16, ptr %i.ctt, align 2, !tbaa !194
  %i.cub = zext i16 %i.cua to i64
  %i.cuc = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cub ; 2 uses
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !6
  %i.cue = add i32 %i.cud, 1
  store i32 %i.cue, ptr %i.cuc, align 4, !tbaa !6
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.clw, i64 74
  %i.cug = load i16, ptr %i.ctz, align 2, !tbaa !194
  %i.cuh = zext i16 %i.cug to i64
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cuh ; 2 uses
  %i.cuj = load i32, ptr %i.cui, align 4, !tbaa !6
  %i.cuk = add i32 %i.cuj, 1
  store i32 %i.cuk, ptr %i.cui, align 4, !tbaa !6
  %i.cul = getelementptr inbounds nuw i8, ptr %i.clw, i64 76
  %i.cum = load i16, ptr %i.cuf, align 2, !tbaa !194
  %i.cun = zext i16 %i.cum to i64
  %i.cuo = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cun ; 2 uses
  %i.cup = load i32, ptr %i.cuo, align 4, !tbaa !6
  %i.cuq = add i32 %i.cup, 1
  store i32 %i.cuq, ptr %i.cuo, align 4, !tbaa !6
  %i.cur = getelementptr inbounds nuw i8, ptr %i.clw, i64 78
  %i.cus = load i16, ptr %i.cul, align 2, !tbaa !194
  %i.cut = zext i16 %i.cus to i64
  %i.cuu = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cut ; 2 uses
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !6
  %i.cuw = add i32 %i.cuv, 1
  store i32 %i.cuw, ptr %i.cuu, align 4, !tbaa !6
  %i.cux = load i16, ptr %i.cur, align 2, !tbaa !194
  %i.cuy = zext i16 %i.cux to i64
  %i.cuz = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cuy ; 2 uses
  %i.cva = load i32, ptr %i.cuz, align 4, !tbaa !6
  %i.cvb = add i32 %i.cva, 1
  store i32 %i.cvb, ptr %i.cuz, align 4, !tbaa !6
  %i.cvc = urem i64 %.020.i.i251, %spec.select
  %.idx855 = mul nuw nsw i64 %i.cvc, 2192         ; 2 uses
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.caw, i64 %.idx855 ; 8 uses
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 2176 ; 2 uses
  %i.cvf = load i64, ptr %i.cve, align 8, !tbaa !211
  %i.cvg = add i64 %i.cvf, 40
  store i64 %i.cvg, ptr %i.cve, align 8, !tbaa !211
  %bound0801 = icmp ult ptr %i.cvd, %scevgep800
  %i.cvh = add nuw nsw i64 %.idx855, 2176
  %bound1802 = icmp samesign ult i64 %.idx854, %i.cvh
  %found.conflict803 = and i1 %bound0801, %bound1802
  br i1 %found.conflict803, label %scalar.ph804, label %vector.body806

vector.body806:                                   ; preds = %vector.memcheck799, %vector.body806
  %index807 = phi i64 [ %index.next812.1, %vector.body806 ], [ 0, %vector.memcheck799 ] ; 4 uses
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %index807 ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 16
  %wide.load808 = load <4 x i32>, ptr %i.cvi, align 4, !tbaa !6, !alias.scope !212
  %wide.load809 = load <4 x i32>, ptr %i.cvj, align 4, !tbaa !6, !alias.scope !212
  %i.cvk = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %index807 ; 3 uses
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 16 ; 2 uses
  %wide.load810 = load <4 x i32>, ptr %i.cvk, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %wide.load811 = load <4 x i32>, ptr %i.cvl, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %i.cvm = add <4 x i32> %wide.load810, %wide.load808
  %i.cvn = add <4 x i32> %wide.load811, %wide.load809
  store <4 x i32> %i.cvm, ptr %i.cvk, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  store <4 x i32> %i.cvn, ptr %i.cvl, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %index.next812 = or disjoint i64 %index807, 8   ; 2 uses
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %index.next812 ; 2 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16
  %wide.load808.1 = load <4 x i32>, ptr %i.cvo, align 4, !tbaa !6, !alias.scope !212
  %wide.load809.1 = load <4 x i32>, ptr %i.cvp, align 4, !tbaa !6, !alias.scope !212
  %i.cvq = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %index.next812 ; 3 uses
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvq, i64 16 ; 2 uses
  %wide.load810.1 = load <4 x i32>, ptr %i.cvq, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %wide.load811.1 = load <4 x i32>, ptr %i.cvr, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %i.cvs = add <4 x i32> %wide.load810.1, %wide.load808.1
  %i.cvt = add <4 x i32> %wide.load811.1, %wide.load809.1
  store <4 x i32> %i.cvs, ptr %i.cvq, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  store <4 x i32> %i.cvt, ptr %i.cvr, align 4, !tbaa !6, !alias.scope !213, !noalias !212
  %index.next812.1 = add nuw nsw i64 %index807, 16 ; 2 uses
  %i.cvu = icmp eq i64 %index.next812.1, 544
  br i1 %i.cvu, label %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i, label %vector.body806, !llvm.loop !121

scalar.ph804:                                     ; preds = %vector.memcheck799, %scalar.ph804
  %.0.i18.i.i253 = phi i64 [ %i.cws, %scalar.ph804 ], [ 0, %vector.memcheck799 ] ; 6 uses
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %.0.i18.i.i253
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !6
  %i.cvx = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %.0.i18.i.i253 ; 2 uses
  %i.cvy = load i32, ptr %i.cvx, align 4, !tbaa !6
  %i.cvz = add i32 %i.cvy, %i.cvw
  store i32 %i.cvz, ptr %i.cvx, align 4, !tbaa !6
  %i.cwa = or disjoint i64 %.0.i18.i.i253, 1      ; 2 uses
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cwa
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !6
  %i.cwd = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %i.cwa ; 2 uses
  %i.cwe = load i32, ptr %i.cwd, align 4, !tbaa !6
  %i.cwf = add i32 %i.cwe, %i.cwc
  store i32 %i.cwf, ptr %i.cwd, align 4, !tbaa !6
  %i.cwg = or disjoint i64 %.0.i18.i.i253, 2      ; 2 uses
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cwg
  %i.cwi = load i32, ptr %i.cwh, align 4, !tbaa !6
  %i.cwj = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %i.cwg ; 2 uses
  %i.cwk = load i32, ptr %i.cwj, align 4, !tbaa !6
  %i.cwl = add i32 %i.cwk, %i.cwi
  store i32 %i.cwl, ptr %i.cwj, align 4, !tbaa !6
  %i.cwm = or disjoint i64 %.0.i18.i.i253, 3      ; 2 uses
  %i.cwn = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cwm
  %i.cwo = load i32, ptr %i.cwn, align 4, !tbaa !6
  %i.cwp = getelementptr inbounds nuw [4 x i8], ptr %i.cvd, i64 %i.cwm ; 2 uses
  %i.cwq = load i32, ptr %i.cwp, align 4, !tbaa !6
  %i.cwr = add i32 %i.cwq, %i.cwo
  store i32 %i.cwr, ptr %i.cwp, align 4, !tbaa !6
  %i.cws = add nuw nsw i64 %.0.i18.i.i253, 4      ; 2 uses
  %exitcond.not.i155.i254.3 = icmp eq i64 %i.cws, 544
  br i1 %exitcond.not.i155.i254.3, label %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i, label %scalar.ph804, !llvm.loop !122

_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i: ; preds = %vector.body806, %scalar.ph804
  %i.cwt = add nuw i64 %.020.i.i251, 1            ; 2 uses
  %exitcond21.not.i.i255 = icmp eq i64 %i.cwt, %i.cln
  br i1 %exitcond21.not.i.i255, label %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i, label %vector.memcheck799, !llvm.loop !123

_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i: ; preds = %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i
  %i.cwu = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.1) ; 23 uses
  %i.cwv = add nuw nsw i64 %spec.select, 7
  %i.cww = lshr i64 %i.cwv, 3
  %i.cwx = mul nuw nsw i64 %spec.select, 4352
  %i.cwy = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cwx) ; 6 uses
  %i.cwz = shl nuw nsw i64 %spec.select, 3
  %i.cxa = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cwz) ; 6 uses
  %i.cxb = mul i64 %i.cww, %.1                    ; 2 uses
  %.not.i256 = icmp eq i64 %i.cxb, 0
  br i1 %.not.i256, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i
  %i.cxc = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxb)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i
  %i.cxd = phi ptr [ %i.cxc, %bb.hd ], [ null, %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i ] ; 4 uses
  %i.cxe = shl nuw nsw i64 %spec.select, 1
  %i.cxf = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxe) ; 12 uses
  %i.cxg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cxh = load i32, ptr %i.cxg, align 4, !tbaa !192
  %.inv.i257 = icmp sgt i32 %i.cxh, 10
  %i.cxi = select i1 %.inv.i257, i64 10, i64 3
  %i.cxj = add i64 %.1, -1                        ; 6 uses
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.cxj
  %xtraiter1037 = and i64 %.1, 1
  %unroll_iter1042 = and i64 %.1, -2
  %lcmp.mod1039.not = icmp eq i64 %xtraiter1037, 0
  %lcmp.mod1041 = trunc i64 %.1 to i1
  %xtraiter1045 = and i64 %.1, 3                  ; 3 uses
  %unroll_iter1049 = and i64 %.1, -4
  %lcmp.mod1047.not = icmp eq i64 %xtraiter1045, 0
  %lcmp.mod1048 = icmp ne i64 %xtraiter1045, 0
  %xtraiter1058 = and i64 %.1, 1
  %unroll_iter1062 = and i64 %.1, -2
  %lcmp.mod1060.not = icmp eq i64 %xtraiter1058, 0
  %lcmp.mod1061 = trunc i64 %.1 to i1
  br label %bb.hf

bb.hf:                                            ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i, %bb.he
  %.0181.i258 = phi i64 [ 0, %bb.he ], [ %i.dgb, %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i ]
  %.1180.i259 = phi i64 [ %spec.select, %bb.he ], [ %i.ddv, %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i ] ; 21 uses
  %i.cxl = add nuw nsw i64 %.1180.i259, 7
  %i.cxm = lshr i64 %i.cxl, 3                     ; 4 uses
  %i.cxn = icmp samesign ult i64 %.1180.i259, 2
  br i1 %i.cxn, label %.preheader.preheader.i.i442, label %bb.hg

.preheader.preheader.i.i442:                      ; preds = %bb.hf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cwu, i8 0, i64 range(i64 128, 0) %.1, i1 false), !tbaa !167
  br label %_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.cxo = mul nuw nsw i64 %.1180.i259, 4352
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cwy, i8 0, i64 %i.cxo, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261, %bb.hg
  %.1116131.i.i260 = phi i64 [ 0, %bb.hg ], [ %i.cxz, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261 ] ; 3 uses
  %i.cxp = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.1116131.i.i260
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxp, i64 2176
  %i.cxr = load i64, ptr %i.cxq, align 8, !tbaa !211
  %i.cxs = and i64 %i.cxr, 4294967295             ; 3 uses
  %i.cxt = icmp samesign ult i64 %i.cxs, 256
  br i1 %i.cxt, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.cxu = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.cxs
  %i.cxv = load double, ptr %i.cxu, align 8, !tbaa !193
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261

bb.hj:                                            ; preds = %bb.hh
  %i.cxw = uitofp nneg i64 %i.cxs to double
  %i.cxx = tail call double @log2(double noundef %i.cxw) #8, !tbaa !6
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261:       ; preds = %bb.hj, %bb.hi
  %.0.i.i.i262 = phi double [ %i.cxv, %bb.hi ], [ %i.cxx, %bb.hj ]
  %i.cxy = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %.1116131.i.i260
  store double %.0.i.i.i262, ptr %i.cxy, align 8, !tbaa !193
  %i.cxz = add nuw nsw i64 %.1116131.i.i260, 1    ; 2 uses
  %exitcond.not.i156.i263 = icmp eq i64 %i.cxz, %.1180.i259
  br i1 %exitcond.not.i156.i263, label %.preheader130.i.i264, label %bb.hh, !llvm.loop !124

.loopexit129.i.i271:                              ; preds = %_ZL7BitCostm.exit.i.i269
  %.not.i157.i272 = icmp eq i64 %i.cya, 0
  br i1 %.not.i157.i272, label %bb.ho, label %.preheader130.i.i264, !llvm.loop !125

.preheader130.i.i264:                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261, %.loopexit129.i.i271
  %.2133.i.i265 = phi i64 [ %i.cya, %.loopexit129.i.i271 ], [ 544, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i261 ]
  %i.cya = add nsw i64 %.2133.i.i265, -1          ; 4 uses
  %invariant.gep.i.i266 = getelementptr [4 x i8], ptr %i.caw, i64 %i.cya
  %i.cyb = mul i64 %i.cya, %.1180.i259
  %i.cyc = getelementptr [8 x i8], ptr %i.cwy, i64 %i.cyb
  br label %bb.hk

bb.hk:                                            ; preds = %_ZL7BitCostm.exit.i.i269, %.preheader130.i.i264
  %.0114132.i.i267 = phi i64 [ 0, %.preheader130.i.i264 ], [ %i.cyq, %_ZL7BitCostm.exit.i.i269 ] ; 4 uses
  %i.cyd = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %.0114132.i.i267
  %i.cye = load double, ptr %i.cyd, align 8, !tbaa !193
  %gep.i.i268 = getelementptr [2192 x i8], ptr %invariant.gep.i.i266, i64 %.0114132.i.i267
  %i.cyf = load i32, ptr %gep.i.i268, align 4, !tbaa !6 ; 4 uses
  %i.cyg = zext nneg i32 %i.cyf to i64
  %i.cyh = icmp eq i32 %i.cyf, 0
  br i1 %i.cyh, label %_ZL7BitCostm.exit.i.i269, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cyi = icmp ult i32 %i.cyf, 256
  br i1 %i.cyi, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.cyj = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.cyg
  %i.cyk = load double, ptr %i.cyj, align 8, !tbaa !193
  br label %_ZL7BitCostm.exit.i.i269

bb.hn:                                            ; preds = %bb.hl
  %i.cyl = uitofp i32 %i.cyf to double
  %i.cym = tail call double @log2(double noundef %i.cyl) #8, !tbaa !6
  br label %_ZL7BitCostm.exit.i.i269

_ZL7BitCostm.exit.i.i269:                         ; preds = %bb.hn, %bb.hm, %bb.hk
  %i.cyn = phi double [ -2.000000e+00, %bb.hk ], [ %i.cyk, %bb.hm ], [ %i.cym, %bb.hn ]
  %i.cyo = fsub double %i.cye, %i.cyn
  %i.cyp = getelementptr [8 x i8], ptr %i.cyc, i64 %.0114132.i.i267
  store double %i.cyo, ptr %i.cyp, align 8, !tbaa !193
  %i.cyq = add nuw nsw i64 %.0114132.i.i267, 1    ; 2 uses
  %exitcond145.not.i.i270 = icmp eq i64 %i.cyq, %.1180.i259
  br i1 %exitcond145.not.i.i270, label %.loopexit129.i.i271, label %bb.hk, !llvm.loop !126

bb.ho:                                            ; preds = %.loopexit129.i.i271
  %i.cyr = shl nuw nsw i64 %.1180.i259, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cxa, i8 0, i64 %i.cyr, i1 false)
  %i.cys = mul i64 %i.cxm, %.1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cxd, i8 0, i64 %i.cys, i1 false)
  %xtraiter1028 = and i64 %.1180.i259, 1
  %unroll_iter1034 = and i64 %.1180.i259, -2
  %lcmp.mod1030.not = icmp eq i64 %xtraiter1028, 0
  %lcmp.mod1033 = trunc i64 %.1180.i259 to i1
  br label %.new1025

.new1025:                                         ; preds = %bb.ia, %bb.ho
  %.0117137.i.i273 = phi i64 [ 0, %bb.ho ], [ %i.daq, %bb.ia ] ; 6 uses
  %i.cyt = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %.0117137.i.i273
  %i.cyu = load i16, ptr %i.cyt, align 2, !tbaa !194
  %i.cyv = zext i16 %i.cyu to i64
  %i.cyw = mul nuw nsw i64 %.1180.i259, %i.cyv
  %i.cyx = getelementptr inbounds nuw [8 x i8], ptr %i.cwy, i64 %i.cyw ; 3 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.0117137.i.i273 ; 3 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ht, %.new1025
  %.0109135.i.i274 = phi i64 [ 0, %.new1025 ], [ %i.czo, %bb.ht ] ; 5 uses
  %.0112134.i.i275 = phi double [ f0x547D42AEA2879F2E, %.new1025 ], [ %.1113.i.i276.1, %bb.ht ] ; 2 uses
  %niter1035 = phi i64 [ 0, %.new1025 ], [ %niter1035.next.1, %bb.ht ]
  %i.cyz = getelementptr inbounds nuw [8 x i8], ptr %i.cyx, i64 %.0109135.i.i274
  %i.cza = load double, ptr %i.cyz, align 8, !tbaa !193
  %i.czb = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %.0109135.i.i274 ; 2 uses
  %i.czc = load double, ptr %i.czb, align 8, !tbaa !193
  %i.czd = fadd double %i.cza, %i.czc             ; 3 uses
  store double %i.czd, ptr %i.czb, align 8, !tbaa !193
  %i.cze = fcmp olt double %i.czd, %.0112134.i.i275
  br i1 %i.cze, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.czf = trunc i64 %.0109135.i.i274 to i8
  store i8 %i.czf, ptr %i.cyy, align 1, !tbaa !167
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.1113.i.i276 = phi double [ %i.czd, %bb.hq ], [ %.0112134.i.i275, %bb.hp ] ; 2 uses
  %i.czg = or disjoint i64 %.0109135.i.i274, 1    ; 3 uses
  %i.czh = getelementptr inbounds nuw [8 x i8], ptr %i.cyx, i64 %i.czg
  %i.czi = load double, ptr %i.czh, align 8, !tbaa !193
  %i.czj = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %i.czg ; 2 uses
  %i.czk = load double, ptr %i.czj, align 8, !tbaa !193
  %i.czl = fadd double %i.czi, %i.czk             ; 3 uses
  store double %i.czl, ptr %i.czj, align 8, !tbaa !193
  %i.czm = fcmp olt double %i.czl, %.1113.i.i276
  br i1 %i.czm, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.czn = trunc i64 %i.czg to i8
  store i8 %i.czn, ptr %i.cyy, align 1, !tbaa !167
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.1113.i.i276.1 = phi double [ %i.czl, %bb.hs ], [ %.1113.i.i276, %bb.hr ] ; 4 uses
  %i.czo = add nuw nsw i64 %.0109135.i.i274, 2    ; 4 uses
  %niter1035.next.1 = add nuw i64 %niter1035, 2   ; 2 uses
  %niter1035.ncmp.1 = icmp eq i64 %niter1035.next.1, %unroll_iter1034
  br i1 %niter1035.ncmp.1, label %.unr-lcssa1026, label %bb.hp, !llvm.loop !127

.unr-lcssa1026:                                   ; preds = %bb.ht
  br i1 %lcmp.mod1030.not, label %.epilog-lcssa1031, label %.epil.preheader1027

.epil.preheader1027:                              ; preds = %.unr-lcssa1026
  tail call void @llvm.assume(i1 %lcmp.mod1033)
  %i.czp = getelementptr inbounds nuw [8 x i8], ptr %i.cyx, i64 %i.czo
  %i.czq = load double, ptr %i.czp, align 8, !tbaa !193
  %i.czr = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %i.czo ; 2 uses
  %i.czs = load double, ptr %i.czr, align 8, !tbaa !193
  %i.czt = fadd double %i.czq, %i.czs             ; 3 uses
  store double %i.czt, ptr %i.czr, align 8, !tbaa !193
  %i.czu = fcmp olt double %i.czt, %.1113.i.i276.1
  br i1 %i.czu, label %bb.hu, label %.epilog-lcssa1031

bb.hu:                                            ; preds = %.epil.preheader1027
  %i.czv = trunc i64 %i.czo to i8
  store i8 %i.czv, ptr %i.cyy, align 1, !tbaa !167
  br label %.epilog-lcssa1031

.epilog-lcssa1031:                                ; preds = %.epil.preheader1027, %bb.hu, %.unr-lcssa1026
  %.1113.i.i276.lcssa = phi double [ %.1113.i.i276.1, %.unr-lcssa1026 ], [ %i.czt, %bb.hu ], [ %.1113.i.i276.1, %.epil.preheader1027 ]
  %i.czw = mul i64 %.0117137.i.i273, %i.cxm
  %i.czx = icmp ult i64 %.0117137.i.i273, 2000
  br i1 %i.czx, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %.epilog-lcssa1031
  %i.czy = uitofp nneg i64 %.0117137.i.i273 to double
  %i.czz = fmul nnan double %i.czy, 7.000000e-02
  %i.daa = fdiv nnan double %i.czz, 2.000000e+03
  %i.dab = fadd nnan double %i.daa, 7.700000e-01
  %i.dac = fmul nnan double %i.dab, 1.460000e+01
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.epilog-lcssa1031
  %.0111.i.i278 = phi double [ %i.dac, %bb.hv ], [ 1.460000e+01, %.epilog-lcssa1031 ] ; 2 uses
  %i.dad = getelementptr i8, ptr %i.cxd, i64 %i.czw
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %bb.hw
  %.1110136.i.i279 = phi i64 [ 0, %bb.hw ], [ %i.dap, %bb.hz ] ; 4 uses
  %i.dae = getelementptr inbounds nuw [8 x i8], ptr %i.cxa, i64 %.1110136.i.i279 ; 3 uses
  %i.daf = load double, ptr %i.dae, align 8, !tbaa !193
  %i.dag = fsub double %i.daf, %.1113.i.i276.lcssa ; 2 uses
  store double %i.dag, ptr %i.dae, align 8, !tbaa !193
  %i.dah = fcmp ult double %i.dag, %.0111.i.i278
  br i1 %i.dah, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.dai = trunc i64 %.1110136.i.i279 to i8
  %i.daj = and i8 %i.dai, 7
  %i.dak = shl nuw i8 1, %i.daj
  store double %.0111.i.i278, ptr %i.dae, align 8, !tbaa !193
  %i.dal = lshr i64 %.1110136.i.i279, 3
  %i.dam = getelementptr i8, ptr %i.dad, i64 %i.dal ; 2 uses
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !167
  %i.dao = or i8 %i.dan, %i.dak
  store i8 %i.dao, ptr %i.dam, align 1, !tbaa !167
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.dap = add nuw nsw i64 %.1110136.i.i279, 1    ; 2 uses
  %exitcond147.not.i.i280 = icmp eq i64 %i.dap, %.1180.i259
  br i1 %exitcond147.not.i.i280, label %bb.ia, label %bb.hx, !llvm.loop !128

bb.ia:                                            ; preds = %bb.hz
  %i.daq = add nuw i64 %.0117137.i.i273, 1        ; 2 uses
  %exitcond148.not.i.i281 = icmp eq i64 %i.daq, %.1
  br i1 %exitcond148.not.i.i281, label %.lr.ph.preheader.i.i282, label %.new1025, !llvm.loop !129

.lr.ph.preheader.i.i282:                          ; preds = %bb.ia
  %i.dar = load i8, ptr %i.cxk, align 1, !tbaa !167
  %i.das = mul i64 %i.cxm, %i.cxj
  br label %.lr.ph.i.i283

.lr.ph.i.i283:                                    ; preds = %bb.ic, %.lr.ph.preheader.i.i282
  %.0142.i.i284 = phi i8 [ %.1.i159.i292, %bb.ic ], [ %i.dar, %.lr.ph.preheader.i.i282 ] ; 4 uses
  %.0107141.i.i285 = phi i64 [ %i.daw, %bb.ic ], [ %i.das, %.lr.ph.preheader.i.i282 ]
  %.1118140.i.i286 = phi i64 [ %i.dav, %bb.ic ], [ %i.cxj, %.lr.ph.preheader.i.i282 ]
  %.0119139.i.i287 = phi i64 [ %.1120.i.i291, %bb.ic ], [ 1, %.lr.ph.preheader.i.i282 ] ; 2 uses
  %i.dat = and i8 %.0142.i.i284, 7
  %i.dau = shl nuw i8 1, %i.dat
  %i.dav = add i64 %.1118140.i.i286, -1           ; 4 uses
  %i.daw = sub i64 %.0107141.i.i285, %i.cxm       ; 2 uses
  %i.dax = lshr i8 %.0142.i.i284, 3
  %i.day = zext nneg i8 %i.dax to i64
  %i.daz = getelementptr i8, ptr %i.cxd, i64 %i.daw
  %i.dba = getelementptr i8, ptr %i.daz, i64 %i.day
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !167
  %i.dbc = and i8 %i.dbb, %i.dau
  %.not125.i.i288 = icmp eq i8 %i.dbc, 0
  br i1 %.not125.i.i288, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph.i.i283
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dav
  %i.dbe = load i8, ptr %i.dbd, align 1, !tbaa !167 ; 2 uses
  %.not126.i.i289 = icmp ne i8 %.0142.i.i284, %i.dbe
  %i.dbf = zext i1 %.not126.i.i289 to i64
  %spec.select.i158.i290 = add i64 %.0119139.i.i287, %i.dbf
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %.lr.ph.i.i283
  %.1120.i.i291 = phi i64 [ %.0119139.i.i287, %.lr.ph.i.i283 ], [ %spec.select.i158.i290, %bb.ib ] ; 2 uses
  %.1.i159.i292 = phi i8 [ %.0142.i.i284, %.lr.ph.i.i283 ], [ %i.dbe, %bb.ib ] ; 2 uses
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dav
  store i8 %.1.i159.i292, ptr %i.dbg, align 1, !tbaa !167
  %.not124.i.i293 = icmp eq i64 %i.dav, 0
  br i1 %.not124.i.i293, label %_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i, label %.lr.ph.i.i283, !llvm.loop !130

_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i: ; preds = %bb.ic, %.preheader.preheader.i.i442
  %.0108.i.i294 = phi i64 [ 1, %.preheader.preheader.i.i442 ], [ %.1120.i.i291, %bb.ic ] ; 19 uses
  %.not.i160.i295 = icmp eq i64 %.1180.i259, 0
  br i1 %.not.i160.i295, label %.preheader26.i.i299.preheader, label %iter.check826

iter.check826:                                    ; preds = %_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i
  %min.iters.check815 = icmp ult i64 %.1180.i259, 4
  br i1 %min.iters.check815, label %.lr.ph.i161.i296.preheader, label %vector.main.loop.iter.check816

vector.main.loop.iter.check816:                   ; preds = %iter.check826
  %min.iters.check817 = icmp ult i64 %.1180.i259, 16
  br i1 %min.iters.check817, label %vec.epilog.ph830, label %vector.ph818

vector.ph818:                                     ; preds = %vector.main.loop.iter.check816
  %i.dbh = and i64 %.1180.i259, 12
  %n.vec819 = and i64 %.1180.i259, -16            ; 4 uses
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next822, %vector.body820 ] ; 2 uses
  %i.dbi = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %index821 ; 2 uses
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbi, i64 16
  store <8 x i16> splat (i16 256), ptr %i.dbi, align 2, !tbaa !194
  store <8 x i16> splat (i16 256), ptr %i.dbj, align 2, !tbaa !194
  %index.next822 = add nuw i64 %index821, 16      ; 2 uses
  %i.dbk = icmp eq i64 %index.next822, %n.vec819
  br i1 %i.dbk, label %middle.block823, label %vector.body820, !llvm.loop !131

middle.block823:                                  ; preds = %vector.body820
  %cmp.n824 = icmp eq i64 %.1180.i259, %n.vec819
  br i1 %cmp.n824, label %.preheader26.i.i299.preheader, label %vec.epilog.iter.check828

vec.epilog.iter.check828:                         ; preds = %middle.block823
  %min.epilog.iters.check829 = icmp eq i64 %i.dbh, 0
  br i1 %min.epilog.iters.check829, label %.lr.ph.i161.i296.preheader, label %vec.epilog.ph830, !prof !195

vec.epilog.ph830:                                 ; preds = %vector.main.loop.iter.check816, %vec.epilog.iter.check828
  %vec.epilog.resume.val825 = phi i64 [ %n.vec819, %vec.epilog.iter.check828 ], [ 0, %vector.main.loop.iter.check816 ]
  %n.vec831 = and i64 %.1180.i259, -4             ; 3 uses
  br label %vec.epilog.vector.body832

vec.epilog.vector.body832:                        ; preds = %vec.epilog.vector.body832, %vec.epilog.ph830
  %index833 = phi i64 [ %vec.epilog.resume.val825, %vec.epilog.ph830 ], [ %index.next834, %vec.epilog.vector.body832 ] ; 2 uses
  %i.dbl = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %index833
  store <4 x i16> splat (i16 256), ptr %i.dbl, align 2, !tbaa !194
  %index.next834 = add nuw i64 %index833, 4       ; 2 uses
  %i.dbm = icmp eq i64 %index.next834, %n.vec831
  br i1 %i.dbm, label %vec.epilog.middle.block835, label %vec.epilog.vector.body832, !llvm.loop !132

vec.epilog.middle.block835:                       ; preds = %vec.epilog.vector.body832
  %cmp.n836 = icmp eq i64 %.1180.i259, %n.vec831
  br i1 %cmp.n836, label %.preheader26.i.i299.preheader, label %.lr.ph.i161.i296.preheader

.lr.ph.i161.i296.preheader:                       ; preds = %iter.check826, %vec.epilog.iter.check828, %vec.epilog.middle.block835
  %.027.i.i297.ph = phi i64 [ 0, %iter.check826 ], [ %n.vec819, %vec.epilog.iter.check828 ], [ %n.vec831, %vec.epilog.middle.block835 ]
  br label %.lr.ph.i161.i296

.lr.ph.i161.i296:                                 ; preds = %.lr.ph.i161.i296.preheader, %.lr.ph.i161.i296
  %.027.i.i297 = phi i64 [ %i.dbo, %.lr.ph.i161.i296 ], [ %.027.i.i297.ph, %.lr.ph.i161.i296.preheader ] ; 2 uses
  %i.dbn = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %.027.i.i297
  store i16 256, ptr %i.dbn, align 2, !tbaa !194
  %i.dbo = add nuw nsw i64 %.027.i.i297, 1        ; 2 uses
  %exitcond.not.i162.i298 = icmp eq i64 %i.dbo, %.1180.i259
  br i1 %exitcond.not.i162.i298, label %.preheader26.i.i299.preheader, label %.lr.ph.i161.i296, !llvm.loop !133

.preheader26.i.i299.preheader:                    ; preds = %_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i, %vec.epilog.middle.block835, %middle.block823, %.lr.ph.i161.i296
  br label %.preheader26.i.i299

.preheader26.i.i299:                              ; preds = %bb.if, %.preheader26.i.i299.preheader
  %.129.i.i300 = phi i64 [ 0, %.preheader26.i.i299.preheader ], [ %i.dce, %bb.if ] ; 3 uses
  %.02328.i.i301 = phi i16 [ 0, %.preheader26.i.i299.preheader ], [ %.124.i.i302.1, %bb.if ] ; 3 uses
  %niter1043 = phi i64 [ 0, %.preheader26.i.i299.preheader ], [ %niter1043.next.1, %bb.if ]
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.129.i.i300
  %i.dbq = load i8, ptr %i.dbp, align 1, !tbaa !167
  %i.dbr = zext i8 %i.dbq to i64
  %i.dbs = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.dbr ; 2 uses
  %i.dbt = load i16, ptr %i.dbs, align 2, !tbaa !194
  %i.dbu = icmp eq i16 %i.dbt, 256
  br i1 %i.dbu, label %bb.id, label %.preheader26.i.i299.1

bb.id:                                            ; preds = %.preheader26.i.i299
  %i.dbv = add i16 %.02328.i.i301, 1
  store i16 %.02328.i.i301, ptr %i.dbs, align 2, !tbaa !194
  br label %.preheader26.i.i299.1

.preheader26.i.i299.1:                            ; preds = %bb.id, %.preheader26.i.i299
  %.124.i.i302 = phi i16 [ %i.dbv, %bb.id ], [ %.02328.i.i301, %.preheader26.i.i299 ] ; 3 uses
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.129.i.i300
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.dbw, i64 1
  %i.dby = load i8, ptr %i.dbx, align 1, !tbaa !167
  %i.dbz = zext i8 %i.dby to i64
  %i.dca = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.dbz ; 2 uses
  %i.dcb = load i16, ptr %i.dca, align 2, !tbaa !194
  %i.dcc = icmp eq i16 %i.dcb, 256
  br i1 %i.dcc, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %.preheader26.i.i299.1
  %i.dcd = add i16 %.124.i.i302, 1
  store i16 %.124.i.i302, ptr %i.dca, align 2, !tbaa !194
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %.preheader26.i.i299.1
  %.124.i.i302.1 = phi i16 [ %i.dcd, %bb.ie ], [ %.124.i.i302, %.preheader26.i.i299.1 ] ; 5 uses
  %i.dce = add nuw i64 %.129.i.i300, 2            ; 2 uses
  %niter1043.next.1 = add i64 %niter1043, 2       ; 2 uses
  %niter1043.ncmp.1 = icmp eq i64 %niter1043.next.1, %unroll_iter1042
  br i1 %niter1043.ncmp.1, label %.preheader.i.i305.preheader.unr-lcssa, label %.preheader26.i.i299, !llvm.loop !134

.preheader.i.i305.preheader.unr-lcssa:            ; preds = %bb.if
  br i1 %lcmp.mod1039.not, label %.preheader.i.i305.preheader.new, label %.preheader26.i.i299.epil.preheader

.preheader26.i.i299.epil.preheader:               ; preds = %.preheader.i.i305.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1041)
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dce
  %i.dcg = load i8, ptr %i.dcf, align 1, !tbaa !167
  %i.dch = zext i8 %i.dcg to i64
  %i.dci = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.dch ; 2 uses
  %i.dcj = load i16, ptr %i.dci, align 2, !tbaa !194
  %i.dck = icmp eq i16 %i.dcj, 256
  br i1 %i.dck, label %bb.ig, label %.preheader.i.i305.preheader.new

bb.ig:                                            ; preds = %.preheader26.i.i299.epil.preheader
  %i.dcl = add i16 %.124.i.i302.1, 1
  store i16 %.124.i.i302.1, ptr %i.dci, align 2, !tbaa !194
  br label %.preheader.i.i305.preheader.new

.preheader.i.i305.preheader.new:                  ; preds = %.preheader.i.i305.preheader.unr-lcssa, %bb.ig, %.preheader26.i.i299.epil.preheader
  %.124.i.i302.lcssa = phi i16 [ %.124.i.i302.1, %.preheader.i.i305.preheader.unr-lcssa ], [ %i.dcl, %bb.ig ], [ %.124.i.i302.1, %.preheader26.i.i299.epil.preheader ] ; 3 uses
  br label %.preheader.i.i305

.preheader.i.i305:                                ; preds = %.preheader.i.i305, %.preheader.i.i305.preheader.new
  %.230.i.i306 = phi i64 [ 0, %.preheader.i.i305.preheader.new ], [ %i.ddn, %.preheader.i.i305 ] ; 5 uses
  %niter1050 = phi i64 [ 0, %.preheader.i.i305.preheader.new ], [ %niter1050.next.3, %.preheader.i.i305 ]
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.230.i.i306 ; 2 uses
  %i.dcn = load i8, ptr %i.dcm, align 1, !tbaa !167
  %i.dco = zext i8 %i.dcn to i64
  %i.dcp = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.dco
  %i.dcq = load i16, ptr %i.dcp, align 2, !tbaa !194
  %i.dcr = trunc i16 %i.dcq to i8
  store i8 %i.dcr, ptr %i.dcm, align 1, !tbaa !167
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.230.i.i306
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 1 ; 2 uses
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !167
  %i.dcv = zext i8 %i.dcu to i64
  %i.dcw = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.dcv
  %i.dcx = load i16, ptr %i.dcw, align 2, !tbaa !194
  %i.dcy = trunc i16 %i.dcx to i8
  store i8 %i.dcy, ptr %i.dct, align 1, !tbaa !167
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.230.i.i306
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcz, i64 2 ; 2 uses
  %i.ddb = load i8, ptr %i.dda, align 1, !tbaa !167
  %i.ddc = zext i8 %i.ddb to i64
  %i.ddd = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.ddc
  %i.dde = load i16, ptr %i.ddd, align 2, !tbaa !194
  %i.ddf = trunc i16 %i.dde to i8
  store i8 %i.ddf, ptr %i.dda, align 1, !tbaa !167
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.230.i.i306
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 3 ; 2 uses
  %i.ddi = load i8, ptr %i.ddh, align 1, !tbaa !167
  %i.ddj = zext i8 %i.ddi to i64
  %i.ddk = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.ddj
  %i.ddl = load i16, ptr %i.ddk, align 2, !tbaa !194
  %i.ddm = trunc i16 %i.ddl to i8
  store i8 %i.ddm, ptr %i.ddh, align 1, !tbaa !167
  %i.ddn = add nuw i64 %.230.i.i306, 4            ; 2 uses
  %niter1050.next.3 = add i64 %niter1050, 4       ; 2 uses
  %niter1050.ncmp.3 = icmp eq i64 %niter1050.next.3, %unroll_iter1049
  br i1 %niter1050.ncmp.3, label %_ZL21RemapBlockIdsDistancePhmPtm.exit.i.unr-lcssa, label %.preheader.i.i305, !llvm.loop !135

_ZL21RemapBlockIdsDistancePhmPtm.exit.i.unr-lcssa: ; preds = %.preheader.i.i305
  br i1 %lcmp.mod1047.not, label %_ZL21RemapBlockIdsDistancePhmPtm.exit.i, label %.preheader.i.i305.epil.preheader

.preheader.i.i305.epil.preheader:                 ; preds = %_ZL21RemapBlockIdsDistancePhmPtm.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1048)
  br label %.preheader.i.i305.epil

.preheader.i.i305.epil:                           ; preds = %.preheader.i.i305.epil, %.preheader.i.i305.epil.preheader
  %.230.i.i306.epil = phi i64 [ %i.ddu, %.preheader.i.i305.epil ], [ %i.ddn, %.preheader.i.i305.epil.preheader ] ; 2 uses
  %epil.iter1046 = phi i64 [ %epil.iter1046.next, %.preheader.i.i305.epil ], [ 0, %.preheader.i.i305.epil.preheader ]
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.230.i.i306.epil ; 2 uses
  %i.ddp = load i8, ptr %i.ddo, align 1, !tbaa !167
  %i.ddq = zext i8 %i.ddp to i64
  %i.ddr = getelementptr inbounds nuw [2 x i8], ptr %i.cxf, i64 %i.ddq
  %i.dds = load i16, ptr %i.ddr, align 2, !tbaa !194
  %i.ddt = trunc i16 %i.dds to i8
  store i8 %i.ddt, ptr %i.ddo, align 1, !tbaa !167
  %i.ddu = add nuw i64 %.230.i.i306.epil, 1
  %epil.iter1046.next = add i64 %epil.iter1046, 1 ; 2 uses
  %epil.iter1046.cmp.not = icmp eq i64 %epil.iter1046.next, %xtraiter1045
  br i1 %epil.iter1046.cmp.not, label %_ZL21RemapBlockIdsDistancePhmPtm.exit.i, label %.preheader.i.i305.epil, !llvm.loop !136

_ZL21RemapBlockIdsDistancePhmPtm.exit.i:          ; preds = %.preheader.i.i305.epil, %_ZL21RemapBlockIdsDistancePhmPtm.exit.i.unr-lcssa
  %i.ddv = zext i16 %.124.i.i302.lcssa to i64     ; 3 uses
  %.not.i164.i308 = icmp eq i16 %.124.i.i302.lcssa, 0
  br i1 %.not.i164.i308, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader, label %.lr.ph.i165.i309.preheader

.lr.ph.i165.i309.preheader:                       ; preds = %_ZL21RemapBlockIdsDistancePhmPtm.exit.i
  %xtraiter1051 = and i64 %i.ddv, 3               ; 3 uses
  %i.ddw = icmp ult i16 %.124.i.i302.lcssa, 4
  br i1 %i.ddw, label %.lr.ph.i165.i309.epil.preheader, label %.lr.ph.i165.i309.preheader.new

.lr.ph.i165.i309.preheader.new:                   ; preds = %.lr.ph.i165.i309.preheader
  %unroll_iter1055 = and i64 %i.ddv, 65532
  br label %.lr.ph.i165.i309

.lr.ph.i165.i309:                                 ; preds = %.lr.ph.i165.i309, %.lr.ph.i165.i309.preheader.new
  %.0.i9.i.i310 = phi i64 [ 0, %.lr.ph.i165.i309.preheader.new ], [ %i.dei, %.lr.ph.i165.i309 ] ; 5 uses
  %niter1056 = phi i64 [ 0, %.lr.ph.i165.i309.preheader.new ], [ %niter1056.next.3, %.lr.ph.i165.i309 ]
  %i.ddx = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.0.i9.i.i310 ; 2 uses
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddx, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddx, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.ddy, align 8, !tbaa !210
  %i.ddz = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.0.i9.i.i310 ; 2 uses
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ddz, i64 2192
  %i.deb = getelementptr inbounds nuw i8, ptr %i.ddz, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dea, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.deb, align 8, !tbaa !210
  %i.dec = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.0.i9.i.i310 ; 2 uses
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 4384
  %i.dee = getelementptr inbounds nuw i8, ptr %i.dec, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ded, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dee, align 8, !tbaa !210
  %i.def = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.0.i9.i.i310 ; 2 uses
  %i.deg = getelementptr inbounds nuw i8, ptr %i.def, i64 6576
  %i.deh = getelementptr inbounds nuw i8, ptr %i.def, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.deg, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.deh, align 8, !tbaa !210
  %i.dei = add nuw nsw i64 %.0.i9.i.i310, 4       ; 2 uses
  %niter1056.next.3 = add i64 %niter1056, 4       ; 2 uses
  %niter1056.ncmp.3 = icmp eq i64 %niter1056.next.3, %unroll_iter1055
  br i1 %niter1056.ncmp.3, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i165.i309, !llvm.loop !116

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i165.i309
  %lcmp.mod1053.not = icmp eq i64 %xtraiter1051, 0
  br i1 %lcmp.mod1053.not, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader, label %.lr.ph.i165.i309.epil.preheader

.lr.ph.i165.i309.epil.preheader:                  ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i309.preheader
  %.0.i9.i.i310.epil.init = phi i64 [ 0, %.lr.ph.i165.i309.preheader ], [ %i.dei, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1054 = icmp ne i64 %xtraiter1051, 0
  tail call void @llvm.assume(i1 %lcmp.mod1054)
  br label %.lr.ph.i165.i309.epil

.lr.ph.i165.i309.epil:                            ; preds = %.lr.ph.i165.i309.epil, %.lr.ph.i165.i309.epil.preheader
  %.0.i9.i.i310.epil = phi i64 [ %i.del, %.lr.ph.i165.i309.epil ], [ %.0.i9.i.i310.epil.init, %.lr.ph.i165.i309.epil.preheader ] ; 2 uses
  %epil.iter1052 = phi i64 [ %epil.iter1052.next, %.lr.ph.i165.i309.epil ], [ 0, %.lr.ph.i165.i309.epil.preheader ]
  %i.dej = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %.0.i9.i.i310.epil ; 2 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dej, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dej, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dek, align 8, !tbaa !210
  %i.del = add nuw nsw i64 %.0.i9.i.i310.epil, 1
  %epil.iter1052.next = add i64 %epil.iter1052, 1 ; 2 uses
  %epil.iter1052.cmp.not = icmp eq i64 %epil.iter1052.next, %xtraiter1051
  br i1 %epil.iter1052.cmp.not, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader, label %.lr.ph.i165.i309.epil, !llvm.loop !137

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader: ; preds = %_ZL21RemapBlockIdsDistancePhmPtm.exit.i, %.lr.ph.i165.i309.epil, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa
  br label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader
  %.010.i.i312 = phi i64 [ 0, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader ], [ %i.dfn, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i ] ; 4 uses
  %niter1063 = phi i64 [ 0, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader ], [ %niter1063.next.1, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i ]
  %i.dem = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.010.i.i312
  %i.den = load i8, ptr %i.dem, align 1, !tbaa !167
  %i.deo = zext i8 %i.den to i64
  %i.dep = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %i.deo ; 2 uses
  %i.deq = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %.010.i.i312
  %i.der = load i16, ptr %i.deq, align 2, !tbaa !194
  %i.des = zext i16 %i.der to i64
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.dep, i64 %i.des ; 2 uses
  %i.deu = load i32, ptr %i.det, align 4, !tbaa !6
  %i.dev = add i32 %i.deu, 1
  store i32 %i.dev, ptr %i.det, align 4, !tbaa !6
  %i.dew = getelementptr inbounds nuw i8, ptr %i.dep, i64 2176 ; 2 uses
  %i.dex = load i64, ptr %i.dew, align 8, !tbaa !211
  %i.dey = add i64 %i.dex, 1
  store i64 %i.dey, ptr %i.dew, align 8, !tbaa !211
  %i.dez = or disjoint i64 %.010.i.i312, 1        ; 2 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dez
  %i.dfb = load i8, ptr %i.dfa, align 1, !tbaa !167
  %i.dfc = zext i8 %i.dfb to i64
  %i.dfd = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %i.dfc ; 2 uses
  %i.dfe = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.dez
  %i.dff = load i16, ptr %i.dfe, align 2, !tbaa !194
  %i.dfg = zext i16 %i.dff to i64
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.dfd, i64 %i.dfg ; 2 uses
  %i.dfi = load i32, ptr %i.dfh, align 4, !tbaa !6
  %i.dfj = add i32 %i.dfi, 1
  store i32 %i.dfj, ptr %i.dfh, align 4, !tbaa !6
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dfd, i64 2176 ; 2 uses
  %i.dfl = load i64, ptr %i.dfk, align 8, !tbaa !211
  %i.dfm = add i64 %i.dfl, 1
  store i64 %i.dfm, ptr %i.dfk, align 8, !tbaa !211
  %i.dfn = add nuw i64 %.010.i.i312, 2            ; 3 uses
  %niter1063.next.1 = add i64 %niter1063, 2       ; 2 uses
  %niter1063.ncmp.1 = icmp eq i64 %niter1063.next.1, %unroll_iter1062
  br i1 %niter1063.ncmp.1, label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i, !llvm.loop !138

_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i
  br i1 %lcmp.mod1060.not, label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader: ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod1061)
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dfn
  %i.dfp = load i8, ptr %i.dfo, align 1, !tbaa !167
  %i.dfq = zext i8 %i.dfp to i64
  %i.dfr = getelementptr inbounds nuw [2192 x i8], ptr %i.caw, i64 %i.dfq ; 2 uses
  %i.dfs = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %i.dfn
  %i.dft = load i16, ptr %i.dfs, align 2, !tbaa !194
  %i.dfu = zext i16 %i.dft to i64
  %i.dfv = getelementptr inbounds nuw [4 x i8], ptr %i.dfr, i64 %i.dfu ; 2 uses
  %i.dfw = load i32, ptr %i.dfv, align 4, !tbaa !6
  %i.dfx = add i32 %i.dfw, 1
  store i32 %i.dfx, ptr %i.dfv, align 4, !tbaa !6
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfr, i64 2176 ; 2 uses
  %i.dfz = load i64, ptr %i.dfy, align 8, !tbaa !211
  %i.dga = add i64 %i.dfz, 1
  store i64 %i.dga, ptr %i.dfy, align 8, !tbaa !211
  br label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i

_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i: ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader
  %i.dgb = add nuw nsw i64 %.0181.i258, 1         ; 2 uses
  %exitcond.not.i314 = icmp eq i64 %i.dgb, %i.cxi
  br i1 %exitcond.not.i314, label %bb.ih, label %bb.hf, !llvm.loop !139

bb.ih:                                            ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cwy)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cxa)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cxd)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.cxf)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.caw)
  %.not.i168.i315 = icmp eq i64 %.0108.i.i294, 0  ; 5 uses
  br i1 %.not.i168.i315, label %.thread.i.i317, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.dgc = shl i64 %.0108.i.i294, 2
  %i.dgd = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgc) ; 2 uses
  %i.dge = add i64 %.0108.i.i294, 256             ; 2 uses
  %.not383.i.i316 = icmp eq i64 %i.dge, 0
  br i1 %.not383.i.i316, label %.thread405.i.i319, label %.thread.i.i317

.thread.i.i317:                                   ; preds = %bb.ii, %bb.ih
  %i.dgf = phi i64 [ %i.dge, %bb.ii ], [ 256, %bb.ih ] ; 3 uses
  %i.dgg = phi ptr [ %i.dgd, %bb.ii ], [ null, %bb.ih ] ; 2 uses
  %i.dgh = shl i64 %i.dgf, 2
  %i.dgi = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgh) ; 2 uses
  %i.dgj = shl i64 %.0108.i.i294, 4
  %i.dgk = add i64 %i.dgj, 1008
  %i.dgl = lshr i64 %i.dgk, 6                     ; 2 uses
  %.not384.i.i318 = icmp eq i64 %i.dgl, 0
  br i1 %.not384.i.i318, label %.thread403.i.i321, label %.thread405.i.i319

.thread405.i.i319:                                ; preds = %.thread.i.i317, %bb.ii
  %.sink557.i.i320 = phi i64 [ %i.dgl, %.thread.i.i317 ], [ 288230376151711695, %bb.ii ] ; 3 uses
  %i.dgm = phi i64 [ %i.dgf, %.thread.i.i317 ], [ 0, %bb.ii ]
  %i.dgn = phi ptr [ %i.dgg, %.thread.i.i317 ], [ %i.dgd, %bb.ii ]
  %i.dgo = phi ptr [ %i.dgi, %.thread.i.i317 ], [ null, %bb.ii ]
  %i.dgp = mul i64 %.sink557.i.i320, 2192
  %i.dgq = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgp)
  %i.dgr = shl nuw nsw i64 %.sink557.i.i320, 2
  %i.dgs = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgr)
  br label %.thread403.i.i321

.thread403.i.i321:                                ; preds = %.thread405.i.i319, %.thread.i.i317
  %i.dgt = phi ptr [ %i.dgq, %.thread405.i.i319 ], [ null, %.thread.i.i317 ] ; 2 uses
  %i.dgu = phi i64 [ %i.dgm, %.thread405.i.i319 ], [ %i.dgf, %.thread.i.i317 ]
  %i.dgv = phi ptr [ %i.dgn, %.thread405.i.i319 ], [ %i.dgg, %.thread.i.i317 ] ; 9 uses
  %i.dgw = phi ptr [ %i.dgo, %.thread405.i.i319 ], [ %i.dgi, %.thread.i.i317 ] ; 9 uses
  %i.dgx = phi i64 [ %.sink557.i.i320, %.thread405.i.i319 ], [ 0, %.thread.i.i317 ] ; 2 uses
  %i.dgy = phi ptr [ %i.dgs, %.thread405.i.i319 ], [ null, %.thread.i.i317 ] ; 2 uses
  br i1 %.not.i168.i315, label %.new1064, label %bb.ij

bb.ij:                                            ; preds = %.thread403.i.i321
  %i.dgz = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i294, i64 64)
  %i.dha = mul nuw nsw i64 %i.dgz, 2192
  %i.dhb = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dha)
  br label %.new1064

.new1064:                                         ; preds = %bb.ij, %.thread403.i.i321
  %i.dhc = phi ptr [ %i.dhb, %bb.ij ], [ null, %.thread403.i.i321 ] ; 4 uses
  %i.dhd = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dgw, i64 1024 ; 8 uses
  %i.dhf = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 4384) ; 10 uses
  %i.dhg = shl i64 %i.dgu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dgw, i8 0, i64 %i.dhg, i1 false)
  %xtraiter1066 = and i64 %i.cxj, 1
  %unroll_iter1071 = and i64 %i.cxj, -2
  br label %bb.ik

.preheader408.peel.begin.i.i327.unr-lcssa:        ; preds = %bb.ik
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1066, 0
  br i1 %lcmp.mod1068.not, label %.preheader408.peel.begin.i.i327, label %.epil.preheader1065

.epil.preheader1065:                              ; preds = %.preheader408.peel.begin.i.i327.unr-lcssa
  %lcmp.mod1070 = trunc i64 %i.cxj to i1
  tail call void @llvm.assume(i1 %lcmp.mod1070)
  %i.dhh = getelementptr inbounds nuw [4 x i8], ptr %i.dhe, i64 %spec.select.i169.i325.1 ; 2 uses
  %i.dhi = load i32, ptr %i.dhh, align 4, !tbaa !6
  %i.dhj = add i32 %i.dhi, 1
  store i32 %i.dhj, ptr %i.dhh, align 4, !tbaa !6
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dii
  %i.dhl = load i8, ptr %i.dhk, align 1, !tbaa !167
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dii
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhm, i64 1
  %i.dho = load i8, ptr %i.dhn, align 1, !tbaa !167
  %.not396.i.i324.epil = icmp ne i8 %i.dhl, %i.dho
  %i.dhp = zext i1 %.not396.i.i324.epil to i64
  %spec.select.i169.i325.epil = add i64 %spec.select.i169.i325.1, %i.dhp
  br label %.preheader408.peel.begin.i.i327

.preheader408.peel.begin.i.i327:                  ; preds = %.preheader408.peel.begin.i.i327.unr-lcssa, %.epil.preheader1065
  %spec.select.i169.i325.lcssa = phi i64 [ %spec.select.i169.i325.1, %.preheader408.peel.begin.i.i327.unr-lcssa ], [ %spec.select.i169.i325.epil, %.epil.preheader1065 ]
  %i.dhq = getelementptr inbounds nuw [4 x i8], ptr %i.dhe, i64 %spec.select.i169.i325.lcssa ; 2 uses
  %i.dhr = load i32, ptr %i.dhq, align 4, !tbaa !6
  %i.dhs = add i32 %i.dhr, 1
  store i32 %i.dhs, ptr %i.dhq, align 4, !tbaa !6
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dgw, i64 256 ; 3 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.dgw, i64 512 ; 7 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dgw, i64 768 ; 6 uses
  br i1 %.not.i168.i315, label %._crit_edge439.i.i368, label %.lr.ph416.i.i328

bb.ik:                                            ; preds = %bb.ik, %.new1064
  %.0340410.i.i322 = phi i64 [ 0, %.new1064 ], [ %spec.select.i169.i325.1, %bb.ik ] ; 2 uses
  %.0342409.i.i323 = phi i64 [ 0, %.new1064 ], [ %i.dii, %bb.ik ] ; 3 uses
  %niter1072 = phi i64 [ 0, %.new1064 ], [ %niter1072.next.1, %bb.ik ]
  %i.dhw = getelementptr inbounds nuw [4 x i8], ptr %i.dhe, i64 %.0340410.i.i322 ; 2 uses
  %i.dhx = load i32, ptr %i.dhw, align 4, !tbaa !6
  %i.dhy = add i32 %i.dhx, 1
  store i32 %i.dhy, ptr %i.dhw, align 4, !tbaa !6
  %i.dhz = or disjoint i64 %.0342409.i.i323, 1    ; 2 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %.0342409.i.i323
  %i.dib = load i8, ptr %i.dia, align 1, !tbaa !167
  %i.dic = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dhz
  %i.did = load i8, ptr %i.dic, align 1, !tbaa !167
  %.not396.i.i324 = icmp ne i8 %i.dib, %i.did
  %i.die = zext i1 %.not396.i.i324 to i64
  %spec.select.i169.i325 = add i64 %.0340410.i.i322, %i.die ; 2 uses
  %i.dif = getelementptr inbounds nuw [4 x i8], ptr %i.dhe, i64 %spec.select.i169.i325 ; 2 uses
  %i.dig = load i32, ptr %i.dif, align 4, !tbaa !6
  %i.dih = add i32 %i.dig, 1
  store i32 %i.dih, ptr %i.dif, align 4, !tbaa !6
  %i.dii = add nuw i64 %.0342409.i.i323, 2        ; 4 uses
  %i.dij = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dhz
  %i.dik = load i8, ptr %i.dij, align 1, !tbaa !167
  %i.dil = getelementptr inbounds nuw i8, ptr %i.cwu, i64 %i.dii
  %i.dim = load i8, ptr %i.dil, align 1, !tbaa !167
  %.not396.i.i324.1 = icmp ne i8 %i.dik, %i.dim
  %i.din = zext i1 %.not396.i.i324.1 to i64
  %spec.select.i169.i325.1 = add i64 %spec.select.i169.i325, %i.din ; 4 uses
  %niter1072.next.1 = add nuw i64 %niter1072, 2   ; 2 uses
  %niter1072.ncmp.1 = icmp eq i64 %niter1072.next.1, %unroll_iter1071
  br i1 %niter1072.ncmp.1, label %.preheader408.peel.begin.i.i327.unr-lcssa, label %bb.ik, !llvm.loop !140

.lr.ph416.i.i328:                                 ; preds = %.preheader408.peel.begin.i.i327, %._crit_edge428.i.i366
  %indvars.iv.i.i329 = phi i64 [ %indvars.iv.next.i.i367, %._crit_edge428.i.i366 ], [ %.0108.i.i294, %.preheader408.peel.begin.i.i327 ] ; 3 uses
  %.1343437.i.i330 = phi i64 [ %i.dnc, %._crit_edge428.i.i366 ], [ 0, %.preheader408.peel.begin.i.i327 ] ; 4 uses
  %.0345436.i.i331 = phi i64 [ %.2347.lcssa.i.i348, %._crit_edge428.i.i366 ], [ 0, %.preheader408.peel.begin.i.i327 ]
  %.0351435.i.i332 = phi i64 [ %i.dnb, %._crit_edge428.i.i366 ], [ 0, %.preheader408.peel.begin.i.i327 ] ; 2 uses
  %.0352434.i.i333 = phi ptr [ %.1353.i.i354, %._crit_edge428.i.i366 ], [ %i.dgy, %.preheader408.peel.begin.i.i327 ] ; 3 uses
  %.0354433.i.i334 = phi i64 [ %.1355.i.i353, %._crit_edge428.i.i366 ], [ %i.dgx, %.preheader408.peel.begin.i.i327 ] ; 5 uses
  %.0356432.i.i335 = phi i64 [ %.1357.lcssa.i.i363, %._crit_edge428.i.i366 ], [ 0, %.preheader408.peel.begin.i.i327 ] ; 3 uses
  %.0358431.i.i336 = phi ptr [ %.1359.i.i352, %._crit_edge428.i.i366 ], [ %i.dgt, %.preheader408.peel.begin.i.i327 ] ; 3 uses
  %.0360430.i.i337 = phi i64 [ %.1361.i.i351, %._crit_edge428.i.i366 ], [ %i.dgx, %.preheader408.peel.begin.i.i327 ] ; 5 uses
  %.0362429.i.i338 = phi i64 [ %.1363.lcssa.i.i362, %._crit_edge428.i.i366 ], [ 0, %.preheader408.peel.begin.i.i327 ] ; 3 uses
  %i.dio = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i329, i64 1)
  %umax500.i.i339 = tail call i64 @llvm.umin.i64(i64 %i.dio, i64 64) ; 3 uses
  %i.dip = getelementptr [4 x i8], ptr %i.dhe, i64 %.1343437.i.i330
  br label %bb.il

bb.il:                                            ; preds = %bb.im, %.lr.ph416.i.i328
  %.0338414.i.i340 = phi i64 [ 0, %.lr.ph416.i.i328 ], [ %i.djx, %bb.im ] ; 7 uses
  %.1346413.i.i341 = phi i64 [ %.0345436.i.i331, %.lr.ph416.i.i328 ], [ %.2347.lcssa.i.i348, %bb.im ] ; 3 uses
  %i.diq = getelementptr [4 x i8], ptr %i.dip, i64 %.0338414.i.i340
  %i.dir = load i32, ptr %i.diq, align 4, !tbaa !6 ; 4 uses
  %i.dis = zext i32 %i.dir to i64                 ; 3 uses
  %i.dit = getelementptr inbounds nuw [2192 x i8], ptr %i.dhc, i64 %.0338414.i.i340 ; 7 uses
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 2176
  %i.div = getelementptr inbounds nuw i8, ptr %i.dit, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dit, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.div, align 8, !tbaa !210
  %.not481.i.i342 = icmp eq i32 %i.dir, 0
  br i1 %.not481.i.i342, label %bb.im, label %.lr.ph.i171.i343.preheader

.lr.ph.i171.i343.preheader:                       ; preds = %bb.il
  %xtraiter1073 = and i64 %i.dis, 1
  %i.diw = icmp eq i32 %i.dir, 1
  br i1 %i.diw, label %.lr.ph.i171.i343.epil.preheader, label %.lr.ph.i171.i343.preheader.new

.lr.ph.i171.i343.preheader.new:                   ; preds = %.lr.ph.i171.i343.preheader
  %unroll_iter1078 = and i64 %i.dis, 4294967294
  br label %.lr.ph.i171.i343

.lr.ph.i171.i343:                                 ; preds = %.lr.ph.i171.i343, %.lr.ph.i171.i343.preheader.new
  %.2347411.i.i345 = phi i64 [ %.1346413.i.i341, %.lr.ph.i171.i343.preheader.new ], [ %i.djd, %.lr.ph.i171.i343 ] ; 3 uses
  %niter1079 = phi i64 [ 0, %.lr.ph.i171.i343.preheader.new ], [ %niter1079.next.1, %.lr.ph.i171.i343 ]
  %i.dix = getelementptr inbounds nuw [2 x i8], ptr %i.bym, i64 %.2347411.i.i345
  %i.diy = load i16, ptr %i.dix, align 2, !tbaa !194
  %i.diz = zext i16 %i.diy to i64
  %i.dja = getelementptr inbounds nuw [4 x i8], ptr %i.dit, i64 %i.diz ; 2 uses
  %i.djb = load i32, ptr %i.dja, align 4, !tbaa !6
  %i.djc = add i32 %i.djb, 1
  store i32 %i.djc, ptr %i.dja, align 4, !tbaa !6
  %i.djd = add i64 %.2347411.i.i345, 2            ; 3 uses
  %i.dje = getelementptr [2 x i8], ptr %i.bym, i64 %.2347411.i.i345
  %i.djf = getelementptr i8, ptr %i.dje, i64 2
  %i.djg = load i16, ptr %i.djf, align 2, !tbaa !194
  %i.djh = zext i16 %i.djg to i64
  %i.dji = getelementptr inbounds nuw [4 x i8], ptr %i.dit, i64 %i.djh ; 2 uses
end_hunk_3
