Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/block_splitter?download=true
inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  store ptr %i.bl, ptr %i.bp, align 8, !tbaa !7
  store i64 %.0136.i, ptr %i.bc, align 8, !tbaa !24
  %.pre.i = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %.pre187.i = add i64 %.pre.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.pre-phi.i = phi i64 [ %.pre187.i, %bb.n ], [ %i.bg, %bb.i ] ; 3 uses
  %i.br = phi i64 [ %.pre.i, %bb.n ], [ %i.bf, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !27 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, %.pre-phi.i
  br i1 %i.bu, label %bb.p, label %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp eq i64 %i.bt, 0
  %.154.i = select i1 %i.bv, i64 %.pre-phi.i, i64 %i.bt
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0135.i = phi i64 [ %.154.i, %bb.p ], [ %i.bx, %bb.q ] ; 4 uses
  %i.bw = icmp ult i64 %.0135.i, %.pre-phi.i
  %i.bx = shl i64 %.0135.i, 1
  br i1 %i.bw, label %bb.q, label %bb.r, !llvm.loop !28

bb.r:                                             ; preds = %bb.q
  %i.by = shl i64 %.0135.i, 2
  %i.bz = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.by) ; 2 uses
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !27 ; 2 uses
  %.not153.i = icmp eq i64 %i.ca, 0
  br i1 %.not153.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = shl i64 %i.ca, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.cc, i64 %i.cd, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cf)
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !13
  store i64 %.0135.i, ptr %i.bs, align 8, !tbaa !27
  %.pre186.i = load i64, ptr %i.be, align 8, !tbaa !25
  br label %_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit.thread

_ZL22SplitByteVectorLiteralPN13duckdb_brotli13MemoryManagerEPKhmmmmdPK19BrotliEncoderParamsPNS_10BlockSplitE.exit.thread: ; preds = %bb.o, %bb.t
  %i.cg = phi i64 [ %.pre186.i, %bb.t ], [ %i.br, %bb.o ]
  store i64 1, ptr %7, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !29
  %i.ck = trunc nuw nsw i64 %.lcssa882 to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !13
  %i.cn = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !3
  %i.cp = add i64 %i.cn, 1
  store i64 %i.cp, ptr %i.be, align 8, !tbaa !25
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.ph)
  br label %.lr.ph.preheader

bb.u:                                             ; preds = %bb.h
  %i.cq = mul nuw nsw i64 %., 1040
  %i.cr = add nuw nsw i64 %i.cq, 1040
  %i.cs = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cr) ; 20 uses
  %xtraiter885 = and i64 %., 3                    ; 3 uses
  %i.ct = icmp samesign ult i64 %., 4
  br i1 %i.ct, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.u
  %unroll_iter889 = and i64 %., 252
  br label %bb.w

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i.unr-lcssa: ; preds = %bb.w
  %lcmp.mod887.not = icmp eq i64 %xtraiter885, 0
  br i1 %lcmp.mod887.not, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i.unr-lcssa, %bb.u
  %.0.i28.i.i.epil.init = phi i64 [ 0, %bb.u ], [ %i.dk, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i.unr-lcssa ]
  %lcmp.mod888 = icmp ne i64 %xtraiter885, 0
  tail call void @llvm.assume(i1 %lcmp.mod888)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %.0.i28.i.i.epil = phi i64 [ %.0.i28.i.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.v ] ; 2 uses
  %epil.iter886 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter886.next, %bb.v ]
  %i.cu = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i.epil ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.cv, align 8, !tbaa !30
  %i.cw = add nuw nsw i64 %.0.i28.i.i.epil, 1
  %epil.iter886.next = add i64 %epil.iter886, 1   ; 2 uses
  %epil.iter886.cmp.not = icmp eq i64 %epil.iter886.next, %xtraiter885
  br i1 %epil.iter886.cmp.not, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i, label %bb.v, !llvm.loop !33

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i: ; preds = %bb.v, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i.unr-lcssa
  %i.cx = udiv i64 %.lcssa882, %.
  %i.cy = add i64 %.lcssa882, -71
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.new
  %.0.i28.i.i = phi i64 [ 0, %.new ], [ %i.dk, %bb.w ] ; 5 uses
  %niter890 = phi i64 [ 0, %.new ], [ %niter890.next.3, %bb.w ]
  %i.cz = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1040
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.dc, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dd, align 8, !tbaa !30
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2080
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.df, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.0.i28.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 3120
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.di, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.dj, align 8, !tbaa !30
  %i.dk = add nuw nsw i64 %.0.i28.i.i, 4          ; 2 uses
  %niter890.next.3 = add i64 %niter890, 4         ; 2 uses
  %niter890.ncmp.3 = icmp eq i64 %niter890.next.3, %unroll_iter889
  br i1 %niter890.ncmp.3, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i.unr-lcssa, label %bb.w, !llvm.loop !34

bb.x:                                             ; preds = %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i
  %.02231.i.i = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i ], [ %i.el, %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i ] ; 4 uses
  %.02730.i.i = phi i32 [ 7, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.preheader.i.i ], [ %.1.i.i, %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i ] ; 2 uses
  %i.dl = mul i64 %.02231.i.i, %.lcssa882
  %i.dm = udiv i64 %i.dl, %.                      ; 2 uses
  %.not.i.i = icmp eq i64 %.02231.i.i, 0
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = mul i32 %.02730.i.i, 16807              ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = urem i64 %i.do, %i.cx
  %i.dq = add i64 %i.dp, %i.dm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1.i.i = phi i32 [ %.02730.i.i, %bb.x ], [ %i.dn, %bb.y ]
  %.0.i.i = phi i64 [ %i.dm, %bb.x ], [ %i.dq, %bb.y ] ; 2 uses
  %i.dr = add i64 %.0.i.i, 70
  %.not25.i.i = icmp ult i64 %i.dr, %.lcssa882
  %spec.select.i.i = select i1 %.not25.i.i, i64 %.0.i.i, i64 %i.cy
  %i.ds = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.02231.i.i ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.ph, i64 %spec.select.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1024 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !35
  %i.dw = add i64 %i.dv, 70
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %i.dx = phi i64 [ 70, %bb.z ], [ %i.ek, %bb.aa ]
  %.05.i29.i.i = phi ptr [ %i.dt, %bb.z ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 1
  %i.dz = load i8, ptr %.05.i29.i.i, align 1, !tbaa !29
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i29.i.i, i64 2
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !3
  %i.ek = add nsw i64 %i.dx, -2                   ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.1, label %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i, label %bb.aa, !llvm.loop !36

_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i: ; preds = %bb.aa
  %i.el = add nuw nsw i64 %.02231.i.i, 1          ; 2 uses
  %exitcond32.not.i.i = icmp eq i64 %i.el, %.
  br i1 %exitcond32.not.i.i, label %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i, label %bb.x, !llvm.loop !37

_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i: ; preds = %_ZN13duckdb_brotliL25HistogramAddVectorLiteralEPNS_16HistogramLiteralEPKhm.exit.i.i
  %.idx = mul nuw nsw i64 %., 1040                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx ; 11 uses
  %i.en = shl i64 %.lcssa882, 1
  %i.eo = udiv i64 %i.en, 70
  %i.ep = add nuw nsw i64 %i.eo, 99
  %i.eq = add nuw nsw i64 %i.ep, %.               ; 2 uses
  %i.er = urem i64 %i.eq, %.
  %i.es = sub nuw nsw i64 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1024
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1032
  store double +inf, ptr %i.eu, align 8, !tbaa !30
  %i.ev = add i64 %.lcssa882, -69
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
  store i64 70, ptr %i.et, align 8, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.fc = phi i64 [ 70, %bb.ab ], [ %i.fp, %bb.ac ]
  %.05.i12.i.i.i = phi ptr [ %i.fb, %bb.ab ], [ %i.fj, %bb.ac ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 1
  %i.fe = load i8, ptr %.05.i12.i.i.i, align 1, !tbaa !29
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !3
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i12.i.i.i, i64 2
  %i.fk = load i8, ptr %i.fd, align 1, !tbaa !29
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !3
  %i.fp = add nsw i64 %i.fc, -2                   ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.1, label %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, label %bb.ac, !llvm.loop !36

_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i: ; preds = %bb.ac
  %i.fq = urem i64 %.020.i.i, %.
  %.idx854.a = mul nuw nsw i64 %i.fq, 1040        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx854.a ; 8 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1024 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !35
  %i.fu = add i64 %i.ft, 70
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !35
  %bound0 = icmp ult ptr %i.fr, %scevgep
  %i.fv = add nuw nsw i64 %.idx854.a, 1024
  %bound1 = icmp samesign ult i64 %.idx, %i.fv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i ] ; 4 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3, !alias.scope !38
  %wide.load710.a = load <4 x i32>, ptr %i.fx, align 4, !tbaa !3, !alias.scope !38
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load711 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %wide.load712 = load <4 x i32>, ptr %i.fz, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %i.ga = add <4 x i32> %wide.load711, %wide.load
  %i.gb = add <4 x i32> %wide.load712, %wide.load710.a
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  store <4 x i32> %i.gb, ptr %i.fz, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index.next ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !3, !alias.scope !38
  %wide.load710.1.a = load <4 x i32>, ptr %i.gd, align 4, !tbaa !3, !alias.scope !38
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index.next ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load711.1 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %wide.load712.1 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %i.gg = add <4 x i32> %wide.load711.1, %wide.load.1
  %i.gh = add <4 x i32> %wide.load712.1, %wide.load710.1.a
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !3, !alias.scope !41, !noalias !38
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.gi = icmp eq i64 %index.next.1, 256
  br i1 %i.gi, label %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i, label %vector.body, !llvm.loop !43

scalar.ph:                                        ; preds = %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i, %scalar.ph
  %.0.i18.i.i = phi i64 [ %i.hg, %scalar.ph ], [ 0, %_ZL19RandomSampleLiteralPjPKhmmPN13duckdb_brotli16HistogramLiteralE.exit.i.i ] ; 6 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.0.i18.i.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0.i18.i.i ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = add i32 %i.gm, %i.gk
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !3
  %i.go = or disjoint i64 %.0.i18.i.i, 1          ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.go ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = add i32 %i.gs, %i.gq
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !3
  %i.gu = or disjoint i64 %.0.i18.i.i, 2          ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gu ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = add i32 %i.gy, %i.gw
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !3
  %i.ha = or disjoint i64 %.0.i18.i.i, 3          ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.ha ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = add i32 %i.he, %i.hc
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !3
  %i.hg = add nuw nsw i64 %.0.i18.i.i, 4          ; 2 uses
  %exitcond.not.i155.i.3 = icmp eq i64 %i.hg, 256
  br i1 %exitcond.not.i155.i.3, label %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i, label %scalar.ph, !llvm.loop !46

_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i: ; preds = %vector.body, %scalar.ph
  %i.hh = add nuw i64 %.020.i.i, 1                ; 2 uses
  %exitcond21.not.i.i = icmp eq i64 %i.hh, %i.es
  br i1 %exitcond21.not.i.i, label %_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i, label %bb.ab, !llvm.loop !47

_ZL25RefineEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralES3_.exit.i: ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i
  %i.hi = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.lcssa882) ; 23 uses
  %i.hj = add nuw nsw i64 %., 7
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = shl nuw nsw i64 %., 11
  %i.hm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hl) ; 6 uses
  %i.hn = shl nuw nsw i64 %., 3
  %i.ho = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.hn) ; 6 uses
  %i.hp = mul i64 %i.hk, %.lcssa882               ; 2 uses
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
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !48
  %.inv.i = icmp sgt i32 %i.hv, 10
  %i.hw = select i1 %.inv.i, i64 10, i64 3
  %i.hx = add i64 %.lcssa882, -1                  ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hx
  %xtraiter900 = and i64 %.lcssa882, 1
  %i.hz = icmp eq i64 %i.hx, 0
  %unroll_iter905 = and i64 %.lcssa882, -2
  %lcmp.mod902.not = icmp eq i64 %xtraiter900, 0
  %lcmp.mod904 = trunc i64 %.lcssa882 to i1
  %xtraiter907 = and i64 %.lcssa882, 3            ; 3 uses
  %unroll_iter911 = and i64 %.lcssa882, -4
  %lcmp.mod909.not = icmp eq i64 %xtraiter907, 0
  %lcmp.mod910 = icmp ne i64 %xtraiter907, 0
  %xtraiter919 = and i64 %.lcssa882, 1
  %i.ia = icmp eq i64 %i.hx, 0
  %unroll_iter923 = and i64 %.lcssa882, -2
  %lcmp.mod921.not = icmp eq i64 %xtraiter919, 0
  %lcmp.mod922 = trunc i64 %.lcssa882 to i1
  br label %bb.af

bb.af:                                            ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i, %bb.ae
  %.0180.i = phi i64 [ 0, %bb.ae ], [ %i.qr, %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i ]
  %.1179.i = phi i64 [ %., %bb.ae ], [ %i.ol, %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i ] ; 21 uses
  %i.ib = add nuw nsw i64 %.1179.i, 7
  %i.ic = lshr i64 %i.ib, 3                       ; 4 uses
  %i.id = icmp samesign ult i64 %.1179.i, 2
  br i1 %i.id, label %.preheader.preheader.i.i, label %bb.ag

.preheader.preheader.i.i:                         ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hi, i8 0, i64 range(i64 128, 0) %.lcssa882, i1 false), !tbaa !29
  br label %_ZL17FindBlocksLiteralPKhmdmPKN13duckdb_brotli16HistogramLiteralEPdS5_PhS6_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ie = shl nuw nsw i64 %.1179.i, 11
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hm, i8 0, i64 %i.ie, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i, %bb.ag
  %.1116131.i.i = phi i64 [ 0, %bb.ag ], [ %i.ip, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ] ; 3 uses
  %i.if = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %.1116131.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1024
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !35
  %i.ii = and i64 %i.ih, 4294967295               ; 3 uses
  %i.ij = icmp samesign ult i64 %i.ii, 256
  br i1 %i.ij, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.ii
  %i.il = load double, ptr %i.ik, align 8, !tbaa !65
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.im = uitofp nneg i64 %i.ii to double
  %i.in = tail call double @log2(double noundef %i.im) #8, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i:          ; preds = %bb.aj, %bb.ai
  %.0.i.i.i = phi double [ %i.il, %bb.ai ], [ %i.in, %bb.aj ]
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.1116131.i.i
  store double %.0.i.i.i, ptr %i.io, align 8, !tbaa !65
  %i.ip = add nuw nsw i64 %.1116131.i.i, 1        ; 2 uses
  %exitcond.not.i156.i = icmp eq i64 %i.ip, %.1179.i
  br i1 %exitcond.not.i156.i, label %.preheader130.i.i, label %bb.ah, !llvm.loop !66

.loopexit129.i.i:                                 ; preds = %_ZL7BitCostm.exit.i.i
  %.not.i157.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i157.i, label %bb.ao, label %.preheader130.i.i, !llvm.loop !67

.preheader130.i.i:                                ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i, %.loopexit129.i.i
  %.2133.i.i = phi i64 [ %i.iq, %.loopexit129.i.i ], [ 256, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i ]
  %i.iq = add nsw i64 %.2133.i.i, -1              ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.cs, i64 %i.iq
  %i.ir = mul i64 %i.iq, %.1179.i
  %i.is = getelementptr [8 x i8], ptr %i.hm, i64 %i.ir
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL7BitCostm.exit.i.i, %.preheader130.i.i
  %.0114132.i.i = phi i64 [ 0, %.preheader130.i.i ], [ %i.jg, %_ZL7BitCostm.exit.i.i ] ; 4 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.0114132.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !65
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.0114132.i.i
  %i.iv = load i32, ptr %gep.i.i, align 4, !tbaa !3 ; 4 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = icmp eq i32 %i.iv, 0
  br i1 %i.ix, label %_ZL7BitCostm.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iy = icmp ult i32 %i.iv, 256
  br i1 %i.iy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.iw
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !65
  br label %_ZL7BitCostm.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.jb = uitofp i32 %i.iv to double
  %i.jc = tail call double @log2(double noundef %i.jb) #8, !tbaa !3
  br label %_ZL7BitCostm.exit.i.i

_ZL7BitCostm.exit.i.i:                            ; preds = %bb.an, %bb.am, %bb.ak
  %i.jd = phi double [ -2.000000e+00, %bb.ak ], [ %i.ja, %bb.am ], [ %i.jc, %bb.an ]
  %i.je = fsub double %i.iu, %i.jd
  %i.jf = getelementptr [8 x i8], ptr %i.is, i64 %.0114132.i.i
  store double %i.je, ptr %i.jf, align 8, !tbaa !65
  %i.jg = add nuw nsw i64 %.0114132.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.jg, %.1179.i
  br i1 %exitcond145.not.i.i, label %.loopexit129.i.i, label %bb.ak, !llvm.loop !68

bb.ao:                                            ; preds = %.loopexit129.i.i
  %i.jh = shl nuw nsw i64 %.1179.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ho, i8 0, i64 %i.jh, i1 false)
  %i.ji = mul i64 %i.ic, %.lcssa882
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hr, i8 0, i64 %i.ji, i1 false)
  %xtraiter893 = and i64 %.1179.i, 1
  %unroll_iter898 = and i64 %.1179.i, -2
  %lcmp.mod895.not = icmp eq i64 %xtraiter893, 0
  %lcmp.mod897 = trunc i64 %.1179.i to i1
  br label %.new891

.new891:                                          ; preds = %bb.ba, %bb.ao
  %.0117137.i.i = phi i64 [ 0, %bb.ao ], [ %i.lg, %bb.ba ] ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.ph, i64 %.0117137.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !29
  %i.jl = zext i8 %i.jk to i64
  %i.jm = mul nuw nsw i64 %.1179.i, %i.jl
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.jm ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0117137.i.i ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.new891
  %.0109135.i.i = phi i64 [ 0, %.new891 ], [ %i.ke, %bb.at ] ; 5 uses
  %.0112134.i.i = phi double [ f0x547D42AEA2879F2E, %.new891 ], [ %.1113.i.i.1, %bb.at ] ; 2 uses
  %niter899 = phi i64 [ 0, %.new891 ], [ %niter899.next.1, %bb.at ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.0109135.i.i
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !65
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.0109135.i.i ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !65
  %i.jt = fadd double %i.jq, %i.js                ; 3 uses
  store double %i.jt, ptr %i.jr, align 8, !tbaa !65
  %i.ju = fcmp olt double %i.jt, %.0112134.i.i
  br i1 %i.ju, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.jv = trunc i64 %.0109135.i.i to i8
  store i8 %i.jv, ptr %i.jo, align 1, !tbaa !29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1113.i.i = phi double [ %i.jt, %bb.aq ], [ %.0112134.i.i, %bb.ap ] ; 2 uses
  %i.jw = or disjoint i64 %.0109135.i.i, 1        ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jw
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !65
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.jw ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !65
  %i.kb = fadd double %i.jy, %i.ka                ; 3 uses
  store double %i.kb, ptr %i.jz, align 8, !tbaa !65
  %i.kc = fcmp olt double %i.kb, %.1113.i.i
  br i1 %i.kc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.kd = trunc i64 %i.jw to i8
  store i8 %i.kd, ptr %i.jo, align 1, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1113.i.i.1 = phi double [ %i.kb, %bb.as ], [ %.1113.i.i, %bb.ar ] ; 4 uses
  %i.ke = add nuw nsw i64 %.0109135.i.i, 2        ; 4 uses
  %niter899.next.1 = add nuw i64 %niter899, 2     ; 2 uses
  %niter899.ncmp.1 = icmp eq i64 %niter899.next.1, %unroll_iter898
  br i1 %niter899.ncmp.1, label %.unr-lcssa, label %bb.ap, !llvm.loop !69

.unr-lcssa:                                       ; preds = %bb.at
  br i1 %lcmp.mod895.not, label %.epilog-lcssa, label %.epil.preheader892

.epil.preheader892:                               ; preds = %.unr-lcssa
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.als = add i32 %i.alr, 1
  store i32 %i.als, ptr %i.alq, align 4, !tbaa !3
  %i.alt = getelementptr inbounds nuw i8, ptr %i.aij, i64 30
  %i.alu = load i16, ptr %i.aln, align 2, !tbaa !73
  %i.alv = zext i16 %i.alu to i64
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.alv ; 2 uses
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !3
  %i.aly = add i32 %i.alx, 1
  store i32 %i.aly, ptr %i.alw, align 4, !tbaa !3
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aij, i64 32
  %i.ama = load i16, ptr %i.alt, align 2, !tbaa !73
  %i.amb = zext i16 %i.ama to i64
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.amb ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !3
  %i.ame = add i32 %i.amd, 1
  store i32 %i.ame, ptr %i.amc, align 4, !tbaa !3
  %i.amf = getelementptr inbounds nuw i8, ptr %i.aij, i64 34
  %i.amg = load i16, ptr %i.alz, align 2, !tbaa !73
  %i.amh = zext i16 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.amh ; 2 uses
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !3
  %i.amk = add i32 %i.amj, 1
  store i32 %i.amk, ptr %i.ami, align 4, !tbaa !3
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aij, i64 36
  %i.amm = load i16, ptr %i.amf, align 2, !tbaa !73
  %i.amn = zext i16 %i.amm to i64
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.amn ; 2 uses
  %i.amp = load i32, ptr %i.amo, align 4, !tbaa !3
  %i.amq = add i32 %i.amp, 1
  store i32 %i.amq, ptr %i.amo, align 4, !tbaa !3
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aij, i64 38
  %i.ams = load i16, ptr %i.aml, align 2, !tbaa !73
  %i.amt = zext i16 %i.ams to i64
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.amt ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !3
  %i.amw = add i32 %i.amv, 1
  store i32 %i.amw, ptr %i.amu, align 4, !tbaa !3
  %i.amx = getelementptr inbounds nuw i8, ptr %i.aij, i64 40
  %i.amy = load i16, ptr %i.amr, align 2, !tbaa !73
  %i.amz = zext i16 %i.amy to i64
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.amz ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !3
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !3
  %i.and = getelementptr inbounds nuw i8, ptr %i.aij, i64 42
  %i.ane = load i16, ptr %i.amx, align 2, !tbaa !73
  %i.anf = zext i16 %i.ane to i64
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.anf ; 2 uses
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !3
  %i.ani = add i32 %i.anh, 1
  store i32 %i.ani, ptr %i.ang, align 4, !tbaa !3
  %i.anj = getelementptr inbounds nuw i8, ptr %i.aij, i64 44
  %i.ank = load i16, ptr %i.and, align 2, !tbaa !73
  %i.anl = zext i16 %i.ank to i64
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.anl ; 2 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !3
  %i.ano = add i32 %i.ann, 1
  store i32 %i.ano, ptr %i.anm, align 4, !tbaa !3
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aij, i64 46
  %i.anq = load i16, ptr %i.anj, align 2, !tbaa !73
  %i.anr = zext i16 %i.anq to i64
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.anr ; 2 uses
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !3
  %i.anu = add i32 %i.ant, 1
  store i32 %i.anu, ptr %i.ans, align 4, !tbaa !3
  %i.anv = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.anw = load i16, ptr %i.anp, align 2, !tbaa !73
  %i.anx = zext i16 %i.anw to i64
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.anx ; 2 uses
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !3
  %i.aoa = add i32 %i.anz, 1
  store i32 %i.aoa, ptr %i.any, align 4, !tbaa !3
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aij, i64 50
  %i.aoc = load i16, ptr %i.anv, align 2, !tbaa !73
  %i.aod = zext i16 %i.aoc to i64
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aod ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !3
  %i.aog = add i32 %i.aof, 1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !3
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aij, i64 52
  %i.aoi = load i16, ptr %i.aob, align 2, !tbaa !73
  %i.aoj = zext i16 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aoj ; 2 uses
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !3
  %i.aom = add i32 %i.aol, 1
  store i32 %i.aom, ptr %i.aok, align 4, !tbaa !3
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aij, i64 54
  %i.aoo = load i16, ptr %i.aoh, align 2, !tbaa !73
  %i.aop = zext i16 %i.aoo to i64
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aop ; 2 uses
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !3
  %i.aos = add i32 %i.aor, 1
  store i32 %i.aos, ptr %i.aoq, align 4, !tbaa !3
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.aou = load i16, ptr %i.aon, align 2, !tbaa !73
  %i.aov = zext i16 %i.aou to i64
  %i.aow = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aov ; 2 uses
  %i.aox = load i32, ptr %i.aow, align 4, !tbaa !3
  %i.aoy = add i32 %i.aox, 1
  store i32 %i.aoy, ptr %i.aow, align 4, !tbaa !3
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aij, i64 58
  %i.apa = load i16, ptr %i.aot, align 2, !tbaa !73
  %i.apb = zext i16 %i.apa to i64
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.apb ; 2 uses
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !3
  %i.ape = add i32 %i.apd, 1
  store i32 %i.ape, ptr %i.apc, align 4, !tbaa !3
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aij, i64 60
  %i.apg = load i16, ptr %i.aoz, align 2, !tbaa !73
  %i.aph = zext i16 %i.apg to i64
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aph ; 2 uses
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !3
  %i.apk = add i32 %i.apj, 1
  store i32 %i.apk, ptr %i.api, align 4, !tbaa !3
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aij, i64 62
  %i.apm = load i16, ptr %i.apf, align 2, !tbaa !73
  %i.apn = zext i16 %i.apm to i64
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.apn ; 2 uses
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !3
  %i.apq = add i32 %i.app, 1
  store i32 %i.apq, ptr %i.apo, align 4, !tbaa !3
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aij, i64 64
  %i.aps = load i16, ptr %i.apl, align 2, !tbaa !73
  %i.apt = zext i16 %i.aps to i64
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.apt ; 2 uses
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !3
  %i.apw = add i32 %i.apv, 1
  store i32 %i.apw, ptr %i.apu, align 4, !tbaa !3
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aij, i64 66
  %i.apy = load i16, ptr %i.apr, align 2, !tbaa !73
  %i.apz = zext i16 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.apz ; 2 uses
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !3
  %i.aqc = add i32 %i.aqb, 1
  store i32 %i.aqc, ptr %i.aqa, align 4, !tbaa !3
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aij, i64 68
  %i.aqe = load i16, ptr %i.apx, align 2, !tbaa !73
  %i.aqf = zext i16 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aqf ; 2 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !3
  %i.aqi = add i32 %i.aqh, 1
  store i32 %i.aqi, ptr %i.aqg, align 4, !tbaa !3
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aij, i64 70
  %i.aqk = load i16, ptr %i.aqd, align 2, !tbaa !73
  %i.aql = zext i16 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aql ; 2 uses
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !3
  %i.aqo = add i32 %i.aqn, 1
  store i32 %i.aqo, ptr %i.aqm, align 4, !tbaa !3
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aij, i64 72
  %i.aqq = load i16, ptr %i.aqj, align 2, !tbaa !73
  %i.aqr = zext i16 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aqr ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !3
  %i.aqu = add i32 %i.aqt, 1
  store i32 %i.aqu, ptr %i.aqs, align 4, !tbaa !3
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aij, i64 74
  %i.aqw = load i16, ptr %i.aqp, align 2, !tbaa !73
  %i.aqx = zext i16 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aqx ; 2 uses
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !3
  %i.ara = add i32 %i.aqz, 1
  store i32 %i.ara, ptr %i.aqy, align 4, !tbaa !3
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aij, i64 76
  %i.arc = load i16, ptr %i.aqv, align 2, !tbaa !73
  %i.ard = zext i16 %i.arc to i64
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.ard ; 2 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !3
  %i.arg = add i32 %i.arf, 1
  store i32 %i.arg, ptr %i.are, align 4, !tbaa !3
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aij, i64 78
  %i.ari = load i16, ptr %i.arb, align 2, !tbaa !73
  %i.arj = zext i16 %i.ari to i64
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.arj ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !3
  %i.arm = add i32 %i.arl, 1
  store i32 %i.arm, ptr %i.ark, align 4, !tbaa !3
  %i.arn = load i16, ptr %i.arh, align 2, !tbaa !73
  %i.aro = zext i16 %i.arn to i64
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.aro ; 2 uses
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !3
  %i.arr = add i32 %i.arq, 1
  store i32 %i.arr, ptr %i.arp, align 4, !tbaa !3
  %i.ars = add nuw nsw i64 %.02231.i.i71, 1       ; 2 uses
  %exitcond32.not.i.i78 = icmp eq i64 %i.ars, %spec.select.i68
  br i1 %exitcond32.not.i.i78, label %_ZL26InitialEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandE.exit.i, label %bb.dk, !llvm.loop !120

_ZL26InitialEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandE.exit.i: ; preds = %_ZN13duckdb_brotliL25HistogramAddVectorCommandEPNS_16HistogramCommandEPKtm.exit.i.i
  %.idx855.a = mul nuw nsw i64 %spec.select.i68, 2832 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %.idx855.a ; 49 uses
  %i.aru = shl i64 %2, 1                          ; 2 uses
  %i.arv = udiv i64 %i.aru, 40
  %i.arw = add nuw nsw i64 %i.arv, 99
  %i.arx = add nuw nsw i64 %i.arw, %spec.select.i68 ; 2 uses
  %i.ary = urem i64 %i.arx, %spec.select.i68
  %i.arz = sub nuw nsw i64 %i.arx, %i.ary
  %i.asa = getelementptr inbounds nuw i8, ptr %i.art, i64 2816
  %i.asb = getelementptr inbounds nuw i8, ptr %i.art, i64 2824
  store double +inf, ptr %i.asb, align 8, !tbaa !115
  %i.asc = add i64 %2, -39
  %i.asd = mul nuw nsw i64 %spec.select.i68, 2832
  %i.ase = getelementptr i8, ptr %i.ahi, i64 %i.asd
  %scevgep751 = getelementptr i8, ptr %i.ase, i64 2816
  br label %vector.memcheck750

vector.memcheck750:                               ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i, %_ZL26InitialEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandE.exit.i
  %.020.i.i80 = phi i64 [ 0, %_ZL26InitialEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandE.exit.i ], [ %i.bdf, %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i ] ; 2 uses
  %.01719.i.i81 = phi i32 [ 7, %_ZL26InitialEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandE.exit.i ], [ %i.asf, %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.art, i8 0, i64 2816, i1 false)
  %i.asf = mul i32 %.01719.i.i81, 16807           ; 2 uses
  %i.asg = zext i32 %i.asf to i64
  %i.ash = urem i64 %i.asg, %i.asc
  %i.asi = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.ash ; 40 uses
  store i64 40, ptr %i.asa, align 8, !tbaa !119
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 2
  %i.ask = load i16, ptr %i.asi, align 2, !tbaa !73
  %i.asl = zext i16 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.asl ; 2 uses
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !3
  %i.aso = add i32 %i.asn, 1
  store i32 %i.aso, ptr %i.asm, align 4, !tbaa !3
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asi, i64 4
  %i.asq = load i16, ptr %i.asj, align 2, !tbaa !73
  %i.asr = zext i16 %i.asq to i64
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.asr ; 2 uses
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !3
  %i.asu = add i32 %i.ast, 1
  store i32 %i.asu, ptr %i.ass, align 4, !tbaa !3
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asi, i64 6
  %i.asw = load i16, ptr %i.asp, align 2, !tbaa !73
  %i.asx = zext i16 %i.asw to i64
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.asx ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !3
  %i.ata = add i32 %i.asz, 1
  store i32 %i.ata, ptr %i.asy, align 4, !tbaa !3
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.atc = load i16, ptr %i.asv, align 2, !tbaa !73
  %i.atd = zext i16 %i.atc to i64
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.atd ; 2 uses
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !3
  %i.atg = add i32 %i.atf, 1
  store i32 %i.atg, ptr %i.ate, align 4, !tbaa !3
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asi, i64 10
  %i.ati = load i16, ptr %i.atb, align 2, !tbaa !73
  %i.atj = zext i16 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.atj ; 2 uses
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !3
  %i.atm = add i32 %i.atl, 1
  store i32 %i.atm, ptr %i.atk, align 4, !tbaa !3
  %i.atn = getelementptr inbounds nuw i8, ptr %i.asi, i64 12
  %i.ato = load i16, ptr %i.ath, align 2, !tbaa !73
  %i.atp = zext i16 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.atp ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !3
  %i.ats = add i32 %i.atr, 1
  store i32 %i.ats, ptr %i.atq, align 4, !tbaa !3
  %i.att = getelementptr inbounds nuw i8, ptr %i.asi, i64 14
  %i.atu = load i16, ptr %i.atn, align 2, !tbaa !73
  %i.atv = zext i16 %i.atu to i64
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.atv ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !3
  %i.aty = add i32 %i.atx, 1
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !3
  %i.atz = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  %i.aua = load i16, ptr %i.att, align 2, !tbaa !73
  %i.aub = zext i16 %i.aua to i64
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.aub ; 2 uses
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !3
  %i.aue = add i32 %i.aud, 1
  store i32 %i.aue, ptr %i.auc, align 4, !tbaa !3
  %i.auf = getelementptr inbounds nuw i8, ptr %i.asi, i64 18
  %i.aug = load i16, ptr %i.atz, align 2, !tbaa !73
  %i.auh = zext i16 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.auh ; 2 uses
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !3
  %i.auk = add i32 %i.auj, 1
  store i32 %i.auk, ptr %i.aui, align 4, !tbaa !3
  %i.aul = getelementptr inbounds nuw i8, ptr %i.asi, i64 20
  %i.aum = load i16, ptr %i.auf, align 2, !tbaa !73
  %i.aun = zext i16 %i.aum to i64
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.aun ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !3
  %i.auq = add i32 %i.aup, 1
  store i32 %i.auq, ptr %i.auo, align 4, !tbaa !3
  %i.aur = getelementptr inbounds nuw i8, ptr %i.asi, i64 22
  %i.aus = load i16, ptr %i.aul, align 2, !tbaa !73
  %i.aut = zext i16 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.aut ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !3
  %i.auw = add i32 %i.auv, 1
  store i32 %i.auw, ptr %i.auu, align 4, !tbaa !3
  %i.aux = getelementptr inbounds nuw i8, ptr %i.asi, i64 24
  %i.auy = load i16, ptr %i.aur, align 2, !tbaa !73
  %i.auz = zext i16 %i.auy to i64
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.auz ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !3
  %i.avc = add i32 %i.avb, 1
  store i32 %i.avc, ptr %i.ava, align 4, !tbaa !3
  %i.avd = getelementptr inbounds nuw i8, ptr %i.asi, i64 26
  %i.ave = load i16, ptr %i.aux, align 2, !tbaa !73
  %i.avf = zext i16 %i.ave to i64
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.avf ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !3
  %i.avi = add i32 %i.avh, 1
  store i32 %i.avi, ptr %i.avg, align 4, !tbaa !3
  %i.avj = getelementptr inbounds nuw i8, ptr %i.asi, i64 28
  %i.avk = load i16, ptr %i.avd, align 2, !tbaa !73
  %i.avl = zext i16 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.avl ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !3
  %i.avo = add i32 %i.avn, 1
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !3
  %i.avp = getelementptr inbounds nuw i8, ptr %i.asi, i64 30
  %i.avq = load i16, ptr %i.avj, align 2, !tbaa !73
  %i.avr = zext i16 %i.avq to i64
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.avr ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !3
  %i.avu = add i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !tbaa !3
  %i.avv = getelementptr inbounds nuw i8, ptr %i.asi, i64 32
  %i.avw = load i16, ptr %i.avp, align 2, !tbaa !73
  %i.avx = zext i16 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.avx ; 2 uses
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !3
  %i.awa = add i32 %i.avz, 1
  store i32 %i.awa, ptr %i.avy, align 4, !tbaa !3
  %i.awb = getelementptr inbounds nuw i8, ptr %i.asi, i64 34
  %i.awc = load i16, ptr %i.avv, align 2, !tbaa !73
  %i.awd = zext i16 %i.awc to i64
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.awd ; 2 uses
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !3
  %i.awg = add i32 %i.awf, 1
  store i32 %i.awg, ptr %i.awe, align 4, !tbaa !3
  %i.awh = getelementptr inbounds nuw i8, ptr %i.asi, i64 36
  %i.awi = load i16, ptr %i.awb, align 2, !tbaa !73
  %i.awj = zext i16 %i.awi to i64
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.awj ; 2 uses
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !3
  %i.awm = add i32 %i.awl, 1
  store i32 %i.awm, ptr %i.awk, align 4, !tbaa !3
  %i.awn = getelementptr inbounds nuw i8, ptr %i.asi, i64 38
  %i.awo = load i16, ptr %i.awh, align 2, !tbaa !73
  %i.awp = zext i16 %i.awo to i64
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.awp ; 2 uses
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !3
  %i.aws = add i32 %i.awr, 1
  store i32 %i.aws, ptr %i.awq, align 4, !tbaa !3
  %i.awt = getelementptr inbounds nuw i8, ptr %i.asi, i64 40
  %i.awu = load i16, ptr %i.awn, align 2, !tbaa !73
  %i.awv = zext i16 %i.awu to i64
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.awv ; 2 uses
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !3
  %i.awy = add i32 %i.awx, 1
  store i32 %i.awy, ptr %i.aww, align 4, !tbaa !3
  %i.awz = getelementptr inbounds nuw i8, ptr %i.asi, i64 42
  %i.axa = load i16, ptr %i.awt, align 2, !tbaa !73
  %i.axb = zext i16 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.axb ; 2 uses
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !3
  %i.axe = add i32 %i.axd, 1
  store i32 %i.axe, ptr %i.axc, align 4, !tbaa !3
  %i.axf = getelementptr inbounds nuw i8, ptr %i.asi, i64 44
  %i.axg = load i16, ptr %i.awz, align 2, !tbaa !73
  %i.axh = zext i16 %i.axg to i64
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.axh ; 2 uses
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !3
  %i.axk = add i32 %i.axj, 1
  store i32 %i.axk, ptr %i.axi, align 4, !tbaa !3
  %i.axl = getelementptr inbounds nuw i8, ptr %i.asi, i64 46
  %i.axm = load i16, ptr %i.axf, align 2, !tbaa !73
  %i.axn = zext i16 %i.axm to i64
  %i.axo = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.axn ; 2 uses
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !3
  %i.axq = add i32 %i.axp, 1
  store i32 %i.axq, ptr %i.axo, align 4, !tbaa !3
  %i.axr = getelementptr inbounds nuw i8, ptr %i.asi, i64 48
  %i.axs = load i16, ptr %i.axl, align 2, !tbaa !73
  %i.axt = zext i16 %i.axs to i64
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.axt ; 2 uses
  %i.axv = load i32, ptr %i.axu, align 4, !tbaa !3
  %i.axw = add i32 %i.axv, 1
  store i32 %i.axw, ptr %i.axu, align 4, !tbaa !3
  %i.axx = getelementptr inbounds nuw i8, ptr %i.asi, i64 50
  %i.axy = load i16, ptr %i.axr, align 2, !tbaa !73
  %i.axz = zext i16 %i.axy to i64
  %i.aya = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.axz ; 2 uses
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !3
  %i.ayc = add i32 %i.ayb, 1
  store i32 %i.ayc, ptr %i.aya, align 4, !tbaa !3
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.asi, i64 52
  %i.aye = load i16, ptr %i.axx, align 2, !tbaa !73
  %i.ayf = zext i16 %i.aye to i64
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ayf ; 2 uses
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !3
  %i.ayi = add i32 %i.ayh, 1
  store i32 %i.ayi, ptr %i.ayg, align 4, !tbaa !3
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.asi, i64 54
  %i.ayk = load i16, ptr %i.ayd, align 2, !tbaa !73
  %i.ayl = zext i16 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ayl ; 2 uses
  %i.ayn = load i32, ptr %i.aym, align 4, !tbaa !3
  %i.ayo = add i32 %i.ayn, 1
  store i32 %i.ayo, ptr %i.aym, align 4, !tbaa !3
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.asi, i64 56
  %i.ayq = load i16, ptr %i.ayj, align 2, !tbaa !73
  %i.ayr = zext i16 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ayr ; 2 uses
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !3
  %i.ayu = add i32 %i.ayt, 1
  store i32 %i.ayu, ptr %i.ays, align 4, !tbaa !3
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.asi, i64 58
  %i.ayw = load i16, ptr %i.ayp, align 2, !tbaa !73
  %i.ayx = zext i16 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ayx ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !3
  %i.aza = add i32 %i.ayz, 1
  store i32 %i.aza, ptr %i.ayy, align 4, !tbaa !3
  %i.azb = getelementptr inbounds nuw i8, ptr %i.asi, i64 60
  %i.azc = load i16, ptr %i.ayv, align 2, !tbaa !73
  %i.azd = zext i16 %i.azc to i64
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.azd ; 2 uses
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !3
  %i.azg = add i32 %i.azf, 1
  store i32 %i.azg, ptr %i.aze, align 4, !tbaa !3
  %i.azh = getelementptr inbounds nuw i8, ptr %i.asi, i64 62
  %i.azi = load i16, ptr %i.azb, align 2, !tbaa !73
  %i.azj = zext i16 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.azj ; 2 uses
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !3
  %i.azm = add i32 %i.azl, 1
  store i32 %i.azm, ptr %i.azk, align 4, !tbaa !3
  %i.azn = getelementptr inbounds nuw i8, ptr %i.asi, i64 64
  %i.azo = load i16, ptr %i.azh, align 2, !tbaa !73
  %i.azp = zext i16 %i.azo to i64
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.azp ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !3
  %i.azs = add i32 %i.azr, 1
  store i32 %i.azs, ptr %i.azq, align 4, !tbaa !3
  %i.azt = getelementptr inbounds nuw i8, ptr %i.asi, i64 66
  %i.azu = load i16, ptr %i.azn, align 2, !tbaa !73
  %i.azv = zext i16 %i.azu to i64
  %i.azw = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.azv ; 2 uses
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !3
  %i.azy = add i32 %i.azx, 1
  store i32 %i.azy, ptr %i.azw, align 4, !tbaa !3
  %i.azz = getelementptr inbounds nuw i8, ptr %i.asi, i64 68
  %i.baa = load i16, ptr %i.azt, align 2, !tbaa !73
  %i.bab = zext i16 %i.baa to i64
  %i.bac = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bab ; 2 uses
  %i.bad = load i32, ptr %i.bac, align 4, !tbaa !3
  %i.bae = add i32 %i.bad, 1
  store i32 %i.bae, ptr %i.bac, align 4, !tbaa !3
  %i.baf = getelementptr inbounds nuw i8, ptr %i.asi, i64 70
  %i.bag = load i16, ptr %i.azz, align 2, !tbaa !73
  %i.bah = zext i16 %i.bag to i64
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bah ; 2 uses
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !3
  %i.bak = add i32 %i.baj, 1
  store i32 %i.bak, ptr %i.bai, align 4, !tbaa !3
  %i.bal = getelementptr inbounds nuw i8, ptr %i.asi, i64 72
  %i.bam = load i16, ptr %i.baf, align 2, !tbaa !73
  %i.ban = zext i16 %i.bam to i64
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ban ; 2 uses
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !3
  %i.baq = add i32 %i.bap, 1
  store i32 %i.baq, ptr %i.bao, align 4, !tbaa !3
  %i.bar = getelementptr inbounds nuw i8, ptr %i.asi, i64 74
  %i.bas = load i16, ptr %i.bal, align 2, !tbaa !73
  %i.bat = zext i16 %i.bas to i64
  %i.bau = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bat ; 2 uses
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !3
  %i.baw = add i32 %i.bav, 1
  store i32 %i.baw, ptr %i.bau, align 4, !tbaa !3
  %i.bax = getelementptr inbounds nuw i8, ptr %i.asi, i64 76
  %i.bay = load i16, ptr %i.bar, align 2, !tbaa !73
  %i.baz = zext i16 %i.bay to i64
  %i.bba = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.baz ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !3
  %i.bbc = add i32 %i.bbb, 1
  store i32 %i.bbc, ptr %i.bba, align 4, !tbaa !3
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.asi, i64 78
  %i.bbe = load i16, ptr %i.bax, align 2, !tbaa !73
  %i.bbf = zext i16 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bbf ; 2 uses
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !3
  %i.bbi = add i32 %i.bbh, 1
  store i32 %i.bbi, ptr %i.bbg, align 4, !tbaa !3
  %i.bbj = load i16, ptr %i.bbd, align 2, !tbaa !73
  %i.bbk = zext i16 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bbk ; 2 uses
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !3
  %i.bbn = add i32 %i.bbm, 1
  store i32 %i.bbn, ptr %i.bbl, align 4, !tbaa !3
  %i.bbo = urem i64 %.020.i.i80, %spec.select.i68
  %.idx856.a = mul nuw nsw i64 %i.bbo, 2832       ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %.idx856.a ; 8 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 2816 ; 2 uses
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !119
  %i.bbs = add i64 %i.bbr, 40
  store i64 %i.bbs, ptr %i.bbq, align 8, !tbaa !119
  %bound0752 = icmp ult ptr %i.bbp, %scevgep751
  %i.bbt = add nuw nsw i64 %.idx856.a, 2816
  %bound1753 = icmp samesign ult i64 %.idx855.a, %i.bbt
  %found.conflict754 = and i1 %bound0752, %bound1753
  br i1 %found.conflict754, label %scalar.ph755, label %vector.body757

vector.body757:                                   ; preds = %vector.memcheck750, %vector.body757
  %index758 = phi i64 [ %index.next763.1, %vector.body757 ], [ 0, %vector.memcheck750 ] ; 4 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %index758 ; 2 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16
  %wide.load759.a = load <4 x i32>, ptr %i.bbu, align 4, !tbaa !3, !alias.scope !121
  %wide.load760.a = load <4 x i32>, ptr %i.bbv, align 4, !tbaa !3, !alias.scope !121
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %index758 ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 16 ; 2 uses
  %wide.load761 = load <4 x i32>, ptr %i.bbw, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %wide.load762 = load <4 x i32>, ptr %i.bbx, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %i.bby = add <4 x i32> %wide.load761, %wide.load759.a
  %i.bbz = add <4 x i32> %wide.load762, %wide.load760.a
  store <4 x i32> %i.bby, ptr %i.bbw, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  store <4 x i32> %i.bbz, ptr %i.bbx, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %index.next763 = or disjoint i64 %index758, 8   ; 2 uses
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %index.next763 ; 2 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 16
  %wide.load759.1.a = load <4 x i32>, ptr %i.bca, align 4, !tbaa !3, !alias.scope !121
  %wide.load760.1.a = load <4 x i32>, ptr %i.bcb, align 4, !tbaa !3, !alias.scope !121
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %index.next763 ; 3 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 16 ; 2 uses
  %wide.load761.1 = load <4 x i32>, ptr %i.bcc, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %wide.load762.1 = load <4 x i32>, ptr %i.bcd, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %i.bce = add <4 x i32> %wide.load761.1, %wide.load759.1.a
  %i.bcf = add <4 x i32> %wide.load762.1, %wide.load760.1.a
  store <4 x i32> %i.bce, ptr %i.bcc, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  store <4 x i32> %i.bcf, ptr %i.bcd, align 4, !tbaa !3, !alias.scope !124, !noalias !121
  %index.next763.1 = add nuw nsw i64 %index758, 16 ; 2 uses
  %i.bcg = icmp eq i64 %index.next763.1, 704
  br i1 %i.bcg, label %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i, label %vector.body757, !llvm.loop !126

scalar.ph755:                                     ; preds = %vector.memcheck750, %scalar.ph755
  %.0.i18.i.i82 = phi i64 [ %i.bde, %scalar.ph755 ], [ 0, %vector.memcheck750 ] ; 6 uses
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %.0.i18.i.i82
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !3
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %.0.i18.i.i82 ; 2 uses
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !3
  %i.bcl = add i32 %i.bck, %i.bci
  store i32 %i.bcl, ptr %i.bcj, align 4, !tbaa !3
  %i.bcm = or disjoint i64 %.0.i18.i.i82, 1       ; 2 uses
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bcm
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !3
  %i.bcp = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.bcm ; 2 uses
  %i.bcq = load i32, ptr %i.bcp, align 4, !tbaa !3
  %i.bcr = add i32 %i.bcq, %i.bco
  store i32 %i.bcr, ptr %i.bcp, align 4, !tbaa !3
  %i.bcs = or disjoint i64 %.0.i18.i.i82, 2       ; 2 uses
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bcs
  %i.bcu = load i32, ptr %i.bct, align 4, !tbaa !3
  %i.bcv = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.bcs ; 2 uses
  %i.bcw = load i32, ptr %i.bcv, align 4, !tbaa !3
  %i.bcx = add i32 %i.bcw, %i.bcu
  store i32 %i.bcx, ptr %i.bcv, align 4, !tbaa !3
  %i.bcy = or disjoint i64 %.0.i18.i.i82, 3       ; 2 uses
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.bcy
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !3
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.bbp, i64 %i.bcy ; 2 uses
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !3
  %i.bdd = add i32 %i.bdc, %i.bda
  store i32 %i.bdd, ptr %i.bdb, align 4, !tbaa !3
  %i.bde = add nuw nsw i64 %.0.i18.i.i82, 4       ; 2 uses
  %exitcond.not.i155.i83.3 = icmp eq i64 %i.bde, 704
  br i1 %exitcond.not.i155.i83.3, label %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i, label %scalar.ph755, !llvm.loop !127

_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i: ; preds = %vector.body757, %scalar.ph755
  %i.bdf = add nuw i64 %.020.i.i80, 1             ; 2 uses
  %exitcond21.not.i.i84 = icmp eq i64 %i.bdf, %i.arz
  br i1 %exitcond21.not.i.i84, label %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i, label %vector.memcheck750, !llvm.loop !128

_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i: ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i
  %i.bdg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %2) ; 23 uses
  %i.bdh = add nuw nsw i64 %spec.select.i68, 7
  %i.bdi = lshr i64 %i.bdh, 3
  %i.bdj = mul nuw nsw i64 %spec.select.i68, 5632
  %i.bdk = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdj) ; 6 uses
  %i.bdl = shl nuw nsw i64 %spec.select.i68, 3
  %i.bdm = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdl) ; 6 uses
  %i.bdn = mul i64 %i.bdi, %2                     ; 2 uses
  %.not.i85 = icmp eq i64 %i.bdn, 0
  br i1 %.not.i85, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i
  %i.bdo = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdn)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i
  %i.bdp = phi ptr [ %i.bdo, %bb.dm ], [ null, %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i ] ; 4 uses
  %i.bdq = shl nuw nsw i64 %spec.select.i68, 1
  %i.bdr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bdq) ; 12 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !48
  %.inv.i86 = icmp sgt i32 %i.bdt, 10
  %i.bdu = select i1 %.inv.i86, i64 10, i64 3
  %i.bdv = add i64 %2, -1                         ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bdv
  %xtraiter970 = and i64 %2, 1
  %i.bdx = icmp eq i64 %i.ael, 0
  %unroll_iter975 = and i64 %2, -2
  %lcmp.mod972.not = icmp eq i64 %xtraiter970, 0
  %lcmp.mod974 = trunc i64 %2 to i1
  %xtraiter977 = and i64 %2, 3                    ; 3 uses
  %i.bdy = icmp ult i64 %i.ael, 3
  %unroll_iter981 = and i64 %2, -4
  %lcmp.mod979.not = icmp eq i64 %xtraiter977, 0
  %lcmp.mod980 = icmp ne i64 %xtraiter977, 0
  %xtraiter989 = and i64 %2, 1
  %i.bdz = icmp eq i64 %i.ael, 0
  %unroll_iter993 = and i64 %2, -2
  %lcmp.mod991.not = icmp eq i64 %xtraiter989, 0
  %lcmp.mod992 = trunc i64 %2 to i1
  br label %bb.do

bb.do:                                            ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i, %bb.dn
  %.0181.i = phi i64 [ 0, %bb.dn ], [ %i.bmq, %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i ]
  %.1180.i = phi i64 [ %spec.select.i68, %bb.dn ], [ %i.bkk, %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i ] ; 21 uses
  %i.bea = add nuw nsw i64 %.1180.i, 7
  %i.beb = lshr i64 %i.bea, 3                     ; 4 uses
  %i.bec = icmp samesign ult i64 %.1180.i, 2
  br i1 %i.bec, label %.preheader.preheader.i.i230, label %bb.dp

.preheader.preheader.i.i230:                      ; preds = %bb.do
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bdg, i8 0, i64 range(i64 128, 0) %2, i1 false), !tbaa !29
  br label %_ZL17FindBlocksCommandPKtmdmPKN13duckdb_brotli16HistogramCommandEPdS5_PhS6_.exit.i

bb.dp:                                            ; preds = %bb.do
  %i.bed = mul nuw nsw i64 %.1180.i, 5632
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdk, i8 0, i64 %i.bed, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88, %bb.dp
  %.1116131.i.i87 = phi i64 [ 0, %bb.dp ], [ %i.beo, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88 ] ; 3 uses
  %i.bee = getelementptr inbounds nuw [2832 x i8], ptr %i.ahi, i64 %.1116131.i.i87
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 2816
  %i.beg = load i64, ptr %i.bef, align 8, !tbaa !119
  %i.beh = and i64 %i.beg, 4294967295             ; 3 uses
  %i.bei = icmp samesign ult i64 %i.beh, 256
  br i1 %i.bei, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.beh
  %i.bek = load double, ptr %i.bej, align 8, !tbaa !65
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88

bb.ds:                                            ; preds = %bb.dq
  %i.bel = uitofp nneg i64 %i.beh to double
  %i.bem = tail call double @log2(double noundef %i.bel) #8, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88:        ; preds = %bb.ds, %bb.dr
  %.0.i.i.i89 = phi double [ %i.bek, %bb.dr ], [ %i.bem, %bb.ds ]
  %i.ben = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %.1116131.i.i87
  store double %.0.i.i.i89, ptr %i.ben, align 8, !tbaa !65
  %i.beo = add nuw nsw i64 %.1116131.i.i87, 1     ; 2 uses
  %exitcond.not.i156.i90 = icmp eq i64 %i.beo, %.1180.i
  br i1 %exitcond.not.i156.i90, label %.preheader130.i.i91, label %bb.dq, !llvm.loop !129

.loopexit129.i.i98:                               ; preds = %_ZL7BitCostm.exit.i.i96
  %.not.i157.i99 = icmp eq i64 %i.bep, 0
  br i1 %.not.i157.i99, label %bb.dx, label %.preheader130.i.i91, !llvm.loop !130

.preheader130.i.i91:                              ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88, %.loopexit129.i.i98
  %.2133.i.i92 = phi i64 [ %i.bep, %.loopexit129.i.i98 ], [ 704, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i88 ]
  %i.bep = add nsw i64 %.2133.i.i92, -1           ; 4 uses
  %invariant.gep.i.i93 = getelementptr [4 x i8], ptr %i.ahi, i64 %i.bep
  %i.beq = mul i64 %i.bep, %.1180.i
  %i.ber = getelementptr [8 x i8], ptr %i.bdk, i64 %i.beq
  br label %bb.dt

bb.dt:                                            ; preds = %_ZL7BitCostm.exit.i.i96, %.preheader130.i.i91
  %.0114132.i.i94 = phi i64 [ 0, %.preheader130.i.i91 ], [ %i.bff, %_ZL7BitCostm.exit.i.i96 ] ; 4 uses
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %.0114132.i.i94
  %i.bet = load double, ptr %i.bes, align 8, !tbaa !65
  %gep.i.i95 = getelementptr [2832 x i8], ptr %invariant.gep.i.i93, i64 %.0114132.i.i94
  %i.beu = load i32, ptr %gep.i.i95, align 4, !tbaa !3 ; 4 uses
  %i.bev = zext nneg i32 %i.beu to i64
  %i.bew = icmp eq i32 %i.beu, 0
  br i1 %i.bew, label %_ZL7BitCostm.exit.i.i96, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bex = icmp ult i32 %i.beu, 256
  br i1 %i.bex, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bey = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.bev
  %i.bez = load double, ptr %i.bey, align 8, !tbaa !65
  br label %_ZL7BitCostm.exit.i.i96

bb.dw:                                            ; preds = %bb.du
  %i.bfa = uitofp i32 %i.beu to double
  %i.bfb = tail call double @log2(double noundef %i.bfa) #8, !tbaa !3
  br label %_ZL7BitCostm.exit.i.i96

_ZL7BitCostm.exit.i.i96:                          ; preds = %bb.dw, %bb.dv, %bb.dt
  %i.bfc = phi double [ -2.000000e+00, %bb.dt ], [ %i.bez, %bb.dv ], [ %i.bfb, %bb.dw ]
  %i.bfd = fsub double %i.bet, %i.bfc
  %i.bfe = getelementptr [8 x i8], ptr %i.ber, i64 %.0114132.i.i94
  store double %i.bfd, ptr %i.bfe, align 8, !tbaa !65
  %i.bff = add nuw nsw i64 %.0114132.i.i94, 1     ; 2 uses
  %exitcond145.not.i.i97 = icmp eq i64 %i.bff, %.1180.i
  br i1 %exitcond145.not.i.i97, label %.loopexit129.i.i98, label %bb.dt, !llvm.loop !131

bb.dx:                                            ; preds = %.loopexit129.i.i98
  %i.bfg = shl nuw nsw i64 %.1180.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bdm, i8 0, i64 %i.bfg, i1 false)
  %i.bfh = mul i64 %i.beb, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bdp, i8 0, i64 %i.bfh, i1 false)
  %xtraiter962 = and i64 %.1180.i, 1
  %unroll_iter968 = and i64 %.1180.i, -2
  %lcmp.mod964.not = icmp eq i64 %xtraiter962, 0
  %lcmp.mod967 = trunc i64 %.1180.i to i1
  br label %.new959

.new959:                                          ; preds = %bb.ej, %bb.dx
  %.0117137.i.i100 = phi i64 [ 0, %bb.dx ], [ %i.bhf, %bb.ej ] ; 6 uses
  %i.bfi = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %.0117137.i.i100
  %i.bfj = load i16, ptr %i.bfi, align 2, !tbaa !73
  %i.bfk = zext i16 %i.bfj to i64
  %i.bfl = mul nuw nsw i64 %.1180.i, %i.bfk
  %i.bfm = getelementptr inbounds nuw [8 x i8], ptr %i.bdk, i64 %i.bfl ; 3 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %.0117137.i.i100 ; 3 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ec, %.new959
  %.0109135.i.i101 = phi i64 [ 0, %.new959 ], [ %i.bgd, %bb.ec ] ; 5 uses
  %.0112134.i.i102 = phi double [ f0x547D42AEA2879F2E, %.new959 ], [ %.1113.i.i103.1, %bb.ec ] ; 2 uses
  %niter969 = phi i64 [ 0, %.new959 ], [ %niter969.next.1, %bb.ec ]
  %i.bfo = getelementptr inbounds nuw [8 x i8], ptr %i.bfm, i64 %.0109135.i.i101
  %i.bfp = load double, ptr %i.bfo, align 8, !tbaa !65
  %i.bfq = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %.0109135.i.i101 ; 2 uses
  %i.bfr = load double, ptr %i.bfq, align 8, !tbaa !65
  %i.bfs = fadd double %i.bfp, %i.bfr             ; 3 uses
  store double %i.bfs, ptr %i.bfq, align 8, !tbaa !65
  %i.bft = fcmp olt double %i.bfs, %.0112134.i.i102
  br i1 %i.bft, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bfu = trunc i64 %.0109135.i.i101 to i8
  store i8 %i.bfu, ptr %i.bfn, align 1, !tbaa !29
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.1113.i.i103 = phi double [ %i.bfs, %bb.dz ], [ %.0112134.i.i102, %bb.dy ] ; 2 uses
  %i.bfv = or disjoint i64 %.0109135.i.i101, 1    ; 3 uses
  %i.bfw = getelementptr inbounds nuw [8 x i8], ptr %i.bfm, i64 %i.bfv
  %i.bfx = load double, ptr %i.bfw, align 8, !tbaa !65
  %i.bfy = getelementptr inbounds nuw [8 x i8], ptr %i.bdm, i64 %i.bfv ; 2 uses
  %i.bfz = load double, ptr %i.bfy, align 8, !tbaa !65
  %i.bga = fadd double %i.bfx, %i.bfz             ; 3 uses
  store double %i.bga, ptr %i.bfy, align 8, !tbaa !65
  %i.bgb = fcmp olt double %i.bga, %.1113.i.i103
  br i1 %i.bgb, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bgc = trunc i64 %i.bfv to i8
  store i8 %i.bgc, ptr %i.bfn, align 1, !tbaa !29
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.1113.i.i103.1 = phi double [ %i.bga, %bb.eb ], [ %.1113.i.i103, %bb.ea ] ; 4 uses
  %i.bgd = add nuw nsw i64 %.0109135.i.i101, 2    ; 4 uses
  %niter969.next.1 = add nuw i64 %niter969, 2     ; 2 uses
  %niter969.ncmp.1 = icmp eq i64 %niter969.next.1, %unroll_iter968
  br i1 %niter969.ncmp.1, label %.unr-lcssa960, label %bb.dy, !llvm.loop !132

.unr-lcssa960:                                    ; preds = %bb.ec
  br i1 %lcmp.mod964.not, label %.epilog-lcssa965, label %.epil.preheader961

end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.cfk = add i32 %i.cfj, 1
  store i32 %i.cfk, ptr %i.cfi, align 4, !tbaa !3
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.ccb, i64 30
  %i.cfm = load i16, ptr %i.cff, align 2, !tbaa !73
  %i.cfn = zext i16 %i.cfm to i64
  %i.cfo = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cfn ; 2 uses
  %i.cfp = load i32, ptr %i.cfo, align 4, !tbaa !3
  %i.cfq = add i32 %i.cfp, 1
  store i32 %i.cfq, ptr %i.cfo, align 4, !tbaa !3
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.ccb, i64 32
  %i.cfs = load i16, ptr %i.cfl, align 2, !tbaa !73
  %i.cft = zext i16 %i.cfs to i64
  %i.cfu = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cft ; 2 uses
  %i.cfv = load i32, ptr %i.cfu, align 4, !tbaa !3
  %i.cfw = add i32 %i.cfv, 1
  store i32 %i.cfw, ptr %i.cfu, align 4, !tbaa !3
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.ccb, i64 34
  %i.cfy = load i16, ptr %i.cfr, align 2, !tbaa !73
  %i.cfz = zext i16 %i.cfy to i64
  %i.cga = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cfz ; 2 uses
  %i.cgb = load i32, ptr %i.cga, align 4, !tbaa !3
  %i.cgc = add i32 %i.cgb, 1
  store i32 %i.cgc, ptr %i.cga, align 4, !tbaa !3
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.ccb, i64 36
  %i.cge = load i16, ptr %i.cfx, align 2, !tbaa !73
  %i.cgf = zext i16 %i.cge to i64
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cgf ; 2 uses
  %i.cgh = load i32, ptr %i.cgg, align 4, !tbaa !3
  %i.cgi = add i32 %i.cgh, 1
  store i32 %i.cgi, ptr %i.cgg, align 4, !tbaa !3
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.ccb, i64 38
  %i.cgk = load i16, ptr %i.cgd, align 2, !tbaa !73
  %i.cgl = zext i16 %i.cgk to i64
  %i.cgm = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cgl ; 2 uses
  %i.cgn = load i32, ptr %i.cgm, align 4, !tbaa !3
  %i.cgo = add i32 %i.cgn, 1
  store i32 %i.cgo, ptr %i.cgm, align 4, !tbaa !3
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.ccb, i64 40
  %i.cgq = load i16, ptr %i.cgj, align 2, !tbaa !73
  %i.cgr = zext i16 %i.cgq to i64
  %i.cgs = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cgr ; 2 uses
  %i.cgt = load i32, ptr %i.cgs, align 4, !tbaa !3
  %i.cgu = add i32 %i.cgt, 1
  store i32 %i.cgu, ptr %i.cgs, align 4, !tbaa !3
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.ccb, i64 42
  %i.cgw = load i16, ptr %i.cgp, align 2, !tbaa !73
  %i.cgx = zext i16 %i.cgw to i64
  %i.cgy = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cgx ; 2 uses
  %i.cgz = load i32, ptr %i.cgy, align 4, !tbaa !3
  %i.cha = add i32 %i.cgz, 1
  store i32 %i.cha, ptr %i.cgy, align 4, !tbaa !3
  %i.chb = getelementptr inbounds nuw i8, ptr %i.ccb, i64 44
  %i.chc = load i16, ptr %i.cgv, align 2, !tbaa !73
  %i.chd = zext i16 %i.chc to i64
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.chd ; 2 uses
  %i.chf = load i32, ptr %i.che, align 4, !tbaa !3
  %i.chg = add i32 %i.chf, 1
  store i32 %i.chg, ptr %i.che, align 4, !tbaa !3
  %i.chh = getelementptr inbounds nuw i8, ptr %i.ccb, i64 46
  %i.chi = load i16, ptr %i.chb, align 2, !tbaa !73
  %i.chj = zext i16 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.chj ; 2 uses
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !3
  %i.chm = add i32 %i.chl, 1
  store i32 %i.chm, ptr %i.chk, align 4, !tbaa !3
  %i.chn = getelementptr inbounds nuw i8, ptr %i.ccb, i64 48
  %i.cho = load i16, ptr %i.chh, align 2, !tbaa !73
  %i.chp = zext i16 %i.cho to i64
  %i.chq = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.chp ; 2 uses
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !3
  %i.chs = add i32 %i.chr, 1
  store i32 %i.chs, ptr %i.chq, align 4, !tbaa !3
  %i.cht = getelementptr inbounds nuw i8, ptr %i.ccb, i64 50
  %i.chu = load i16, ptr %i.chn, align 2, !tbaa !73
  %i.chv = zext i16 %i.chu to i64
  %i.chw = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.chv ; 2 uses
  %i.chx = load i32, ptr %i.chw, align 4, !tbaa !3
  %i.chy = add i32 %i.chx, 1
  store i32 %i.chy, ptr %i.chw, align 4, !tbaa !3
  %i.chz = getelementptr inbounds nuw i8, ptr %i.ccb, i64 52
  %i.cia = load i16, ptr %i.cht, align 2, !tbaa !73
  %i.cib = zext i16 %i.cia to i64
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cib ; 2 uses
  %i.cid = load i32, ptr %i.cic, align 4, !tbaa !3
  %i.cie = add i32 %i.cid, 1
  store i32 %i.cie, ptr %i.cic, align 4, !tbaa !3
  %i.cif = getelementptr inbounds nuw i8, ptr %i.ccb, i64 54
  %i.cig = load i16, ptr %i.chz, align 2, !tbaa !73
  %i.cih = zext i16 %i.cig to i64
  %i.cii = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cih ; 2 uses
  %i.cij = load i32, ptr %i.cii, align 4, !tbaa !3
  %i.cik = add i32 %i.cij, 1
  store i32 %i.cik, ptr %i.cii, align 4, !tbaa !3
  %i.cil = getelementptr inbounds nuw i8, ptr %i.ccb, i64 56
  %i.cim = load i16, ptr %i.cif, align 2, !tbaa !73
  %i.cin = zext i16 %i.cim to i64
  %i.cio = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cin ; 2 uses
  %i.cip = load i32, ptr %i.cio, align 4, !tbaa !3
  %i.ciq = add i32 %i.cip, 1
  store i32 %i.ciq, ptr %i.cio, align 4, !tbaa !3
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ccb, i64 58
  %i.cis = load i16, ptr %i.cil, align 2, !tbaa !73
  %i.cit = zext i16 %i.cis to i64
  %i.ciu = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cit ; 2 uses
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !3
  %i.ciw = add i32 %i.civ, 1
  store i32 %i.ciw, ptr %i.ciu, align 4, !tbaa !3
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ccb, i64 60
  %i.ciy = load i16, ptr %i.cir, align 2, !tbaa !73
  %i.ciz = zext i16 %i.ciy to i64
  %i.cja = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.ciz ; 2 uses
  %i.cjb = load i32, ptr %i.cja, align 4, !tbaa !3
  %i.cjc = add i32 %i.cjb, 1
  store i32 %i.cjc, ptr %i.cja, align 4, !tbaa !3
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.ccb, i64 62
  %i.cje = load i16, ptr %i.cix, align 2, !tbaa !73
  %i.cjf = zext i16 %i.cje to i64
  %i.cjg = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cjf ; 2 uses
  %i.cjh = load i32, ptr %i.cjg, align 4, !tbaa !3
  %i.cji = add i32 %i.cjh, 1
  store i32 %i.cji, ptr %i.cjg, align 4, !tbaa !3
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.ccb, i64 64
  %i.cjk = load i16, ptr %i.cjd, align 2, !tbaa !73
  %i.cjl = zext i16 %i.cjk to i64
  %i.cjm = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cjl ; 2 uses
  %i.cjn = load i32, ptr %i.cjm, align 4, !tbaa !3
  %i.cjo = add i32 %i.cjn, 1
  store i32 %i.cjo, ptr %i.cjm, align 4, !tbaa !3
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.ccb, i64 66
  %i.cjq = load i16, ptr %i.cjj, align 2, !tbaa !73
  %i.cjr = zext i16 %i.cjq to i64
  %i.cjs = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cjr ; 2 uses
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !3
  %i.cju = add i32 %i.cjt, 1
  store i32 %i.cju, ptr %i.cjs, align 4, !tbaa !3
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.ccb, i64 68
  %i.cjw = load i16, ptr %i.cjp, align 2, !tbaa !73
  %i.cjx = zext i16 %i.cjw to i64
  %i.cjy = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.cjx ; 2 uses
  %i.cjz = load i32, ptr %i.cjy, align 4, !tbaa !3
  %i.cka = add i32 %i.cjz, 1
  store i32 %i.cka, ptr %i.cjy, align 4, !tbaa !3
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.ccb, i64 70
  %i.ckc = load i16, ptr %i.cjv, align 2, !tbaa !73
  %i.ckd = zext i16 %i.ckc to i64
  %i.cke = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.ckd ; 2 uses
  %i.ckf = load i32, ptr %i.cke, align 4, !tbaa !3
  %i.ckg = add i32 %i.ckf, 1
  store i32 %i.ckg, ptr %i.cke, align 4, !tbaa !3
  %i.ckh = getelementptr inbounds nuw i8, ptr %i.ccb, i64 72
  %i.cki = load i16, ptr %i.ckb, align 2, !tbaa !73
  %i.ckj = zext i16 %i.cki to i64
  %i.ckk = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.ckj ; 2 uses
  %i.ckl = load i32, ptr %i.ckk, align 4, !tbaa !3
  %i.ckm = add i32 %i.ckl, 1
  store i32 %i.ckm, ptr %i.ckk, align 4, !tbaa !3
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ccb, i64 74
  %i.cko = load i16, ptr %i.ckh, align 2, !tbaa !73
  %i.ckp = zext i16 %i.cko to i64
  %i.ckq = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.ckp ; 2 uses
  %i.ckr = load i32, ptr %i.ckq, align 4, !tbaa !3
  %i.cks = add i32 %i.ckr, 1
  store i32 %i.cks, ptr %i.ckq, align 4, !tbaa !3
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ccb, i64 76
  %i.cku = load i16, ptr %i.ckn, align 2, !tbaa !73
  %i.ckv = zext i16 %i.cku to i64
  %i.ckw = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.ckv ; 2 uses
  %i.ckx = load i32, ptr %i.ckw, align 4, !tbaa !3
  %i.cky = add i32 %i.ckx, 1
  store i32 %i.cky, ptr %i.ckw, align 4, !tbaa !3
  %i.ckz = getelementptr inbounds nuw i8, ptr %i.ccb, i64 78
  %i.cla = load i16, ptr %i.ckt, align 2, !tbaa !73
  %i.clb = zext i16 %i.cla to i64
  %i.clc = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.clb ; 2 uses
  %i.cld = load i32, ptr %i.clc, align 4, !tbaa !3
  %i.cle = add i32 %i.cld, 1
  store i32 %i.cle, ptr %i.clc, align 4, !tbaa !3
  %i.clf = load i16, ptr %i.ckz, align 2, !tbaa !73
  %i.clg = zext i16 %i.clf to i64
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.cca, i64 %i.clg ; 2 uses
  %i.cli = load i32, ptr %i.clh, align 4, !tbaa !3
  %i.clj = add i32 %i.cli, 1
  store i32 %i.clj, ptr %i.clh, align 4, !tbaa !3
  %i.clk = add nuw nsw i64 %.02231.i.i244, 1      ; 2 uses
  %exitcond32.not.i.i251 = icmp eq i64 %i.clk, %spec.select
  br i1 %exitcond32.not.i.i251, label %_ZL27InitialEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceE.exit.i, label %bb.hb, !llvm.loop !172

_ZL27InitialEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceE.exit.i: ; preds = %_ZN13duckdb_brotliL26HistogramAddVectorDistanceEPNS_17HistogramDistanceEPKtm.exit.i.i
  %.idx857 = mul nuw nsw i64 %spec.select, 2192   ; 2 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %i.cba, i64 %.idx857 ; 49 uses
  %i.clm = shl i64 %.1, 1
  %i.cln = udiv i64 %i.clm, 40
  %i.clo = add nuw nsw i64 %i.cln, 99
  %i.clp = add nuw nsw i64 %i.clo, %spec.select   ; 2 uses
  %i.clq = urem i64 %i.clp, %spec.select
  %i.clr = sub nuw nsw i64 %i.clp, %i.clq
  %i.cls = getelementptr inbounds nuw i8, ptr %i.cll, i64 2176
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cll, i64 2184
  store double +inf, ptr %i.clt, align 8, !tbaa !167
  %i.clu = add i64 %.1, -39
  %i.clv = mul nuw nsw i64 %spec.select, 2192
  %i.clw = getelementptr i8, ptr %i.cba, i64 %i.clv
  %scevgep803 = getelementptr i8, ptr %i.clw, i64 2176
  br label %vector.memcheck802

vector.memcheck802:                               ; preds = %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i, %_ZL27InitialEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceE.exit.i
  %.020.i.i253 = phi i64 [ 0, %_ZL27InitialEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceE.exit.i ], [ %i.cwx, %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i ] ; 2 uses
  %.01719.i.i254 = phi i32 [ 7, %_ZL27InitialEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceE.exit.i ], [ %i.clx, %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.cll, i8 0, i64 2176, i1 false)
  %i.clx = mul i32 %.01719.i.i254, 16807          ; 2 uses
  %i.cly = zext i32 %i.clx to i64
  %i.clz = urem i64 %i.cly, %i.clu
  %i.cma = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.clz ; 40 uses
  store i64 40, ptr %i.cls, align 8, !tbaa !171
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cma, i64 2
  %i.cmc = load i16, ptr %i.cma, align 2, !tbaa !73
  %i.cmd = zext i16 %i.cmc to i64
  %i.cme = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cmd ; 2 uses
  %i.cmf = load i32, ptr %i.cme, align 4, !tbaa !3
  %i.cmg = add i32 %i.cmf, 1
  store i32 %i.cmg, ptr %i.cme, align 4, !tbaa !3
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.cma, i64 4
  %i.cmi = load i16, ptr %i.cmb, align 2, !tbaa !73
  %i.cmj = zext i16 %i.cmi to i64
  %i.cmk = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cmj ; 2 uses
  %i.cml = load i32, ptr %i.cmk, align 4, !tbaa !3
  %i.cmm = add i32 %i.cml, 1
  store i32 %i.cmm, ptr %i.cmk, align 4, !tbaa !3
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cma, i64 6
  %i.cmo = load i16, ptr %i.cmh, align 2, !tbaa !73
  %i.cmp = zext i16 %i.cmo to i64
  %i.cmq = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cmp ; 2 uses
  %i.cmr = load i32, ptr %i.cmq, align 4, !tbaa !3
  %i.cms = add i32 %i.cmr, 1
  store i32 %i.cms, ptr %i.cmq, align 4, !tbaa !3
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cma, i64 8
  %i.cmu = load i16, ptr %i.cmn, align 2, !tbaa !73
  %i.cmv = zext i16 %i.cmu to i64
  %i.cmw = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cmv ; 2 uses
  %i.cmx = load i32, ptr %i.cmw, align 4, !tbaa !3
  %i.cmy = add i32 %i.cmx, 1
  store i32 %i.cmy, ptr %i.cmw, align 4, !tbaa !3
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cma, i64 10
  %i.cna = load i16, ptr %i.cmt, align 2, !tbaa !73
  %i.cnb = zext i16 %i.cna to i64
  %i.cnc = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cnb ; 2 uses
  %i.cnd = load i32, ptr %i.cnc, align 4, !tbaa !3
  %i.cne = add i32 %i.cnd, 1
  store i32 %i.cne, ptr %i.cnc, align 4, !tbaa !3
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cma, i64 12
  %i.cng = load i16, ptr %i.cmz, align 2, !tbaa !73
  %i.cnh = zext i16 %i.cng to i64
  %i.cni = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cnh ; 2 uses
  %i.cnj = load i32, ptr %i.cni, align 4, !tbaa !3
  %i.cnk = add i32 %i.cnj, 1
  store i32 %i.cnk, ptr %i.cni, align 4, !tbaa !3
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cma, i64 14
  %i.cnm = load i16, ptr %i.cnf, align 2, !tbaa !73
  %i.cnn = zext i16 %i.cnm to i64
  %i.cno = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cnn ; 2 uses
  %i.cnp = load i32, ptr %i.cno, align 4, !tbaa !3
  %i.cnq = add i32 %i.cnp, 1
  store i32 %i.cnq, ptr %i.cno, align 4, !tbaa !3
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cma, i64 16
  %i.cns = load i16, ptr %i.cnl, align 2, !tbaa !73
  %i.cnt = zext i16 %i.cns to i64
  %i.cnu = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cnt ; 2 uses
  %i.cnv = load i32, ptr %i.cnu, align 4, !tbaa !3
  %i.cnw = add i32 %i.cnv, 1
  store i32 %i.cnw, ptr %i.cnu, align 4, !tbaa !3
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cma, i64 18
  %i.cny = load i16, ptr %i.cnr, align 2, !tbaa !73
  %i.cnz = zext i16 %i.cny to i64
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cnz ; 2 uses
  %i.cob = load i32, ptr %i.coa, align 4, !tbaa !3
  %i.coc = add i32 %i.cob, 1
  store i32 %i.coc, ptr %i.coa, align 4, !tbaa !3
  %i.cod = getelementptr inbounds nuw i8, ptr %i.cma, i64 20
  %i.coe = load i16, ptr %i.cnx, align 2, !tbaa !73
  %i.cof = zext i16 %i.coe to i64
  %i.cog = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cof ; 2 uses
  %i.coh = load i32, ptr %i.cog, align 4, !tbaa !3
  %i.coi = add i32 %i.coh, 1
  store i32 %i.coi, ptr %i.cog, align 4, !tbaa !3
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cma, i64 22
  %i.cok = load i16, ptr %i.cod, align 2, !tbaa !73
  %i.col = zext i16 %i.cok to i64
  %i.com = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.col ; 2 uses
  %i.con = load i32, ptr %i.com, align 4, !tbaa !3
  %i.coo = add i32 %i.con, 1
  store i32 %i.coo, ptr %i.com, align 4, !tbaa !3
  %i.cop = getelementptr inbounds nuw i8, ptr %i.cma, i64 24
  %i.coq = load i16, ptr %i.coj, align 2, !tbaa !73
  %i.cor = zext i16 %i.coq to i64
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cor ; 2 uses
  %i.cot = load i32, ptr %i.cos, align 4, !tbaa !3
  %i.cou = add i32 %i.cot, 1
  store i32 %i.cou, ptr %i.cos, align 4, !tbaa !3
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cma, i64 26
  %i.cow = load i16, ptr %i.cop, align 2, !tbaa !73
  %i.cox = zext i16 %i.cow to i64
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cox ; 2 uses
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !3
  %i.cpa = add i32 %i.coz, 1
  store i32 %i.cpa, ptr %i.coy, align 4, !tbaa !3
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cma, i64 28
  %i.cpc = load i16, ptr %i.cov, align 2, !tbaa !73
  %i.cpd = zext i16 %i.cpc to i64
  %i.cpe = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cpd ; 2 uses
  %i.cpf = load i32, ptr %i.cpe, align 4, !tbaa !3
  %i.cpg = add i32 %i.cpf, 1
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !3
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cma, i64 30
  %i.cpi = load i16, ptr %i.cpb, align 2, !tbaa !73
  %i.cpj = zext i16 %i.cpi to i64
  %i.cpk = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cpj ; 2 uses
  %i.cpl = load i32, ptr %i.cpk, align 4, !tbaa !3
  %i.cpm = add i32 %i.cpl, 1
  store i32 %i.cpm, ptr %i.cpk, align 4, !tbaa !3
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cma, i64 32
  %i.cpo = load i16, ptr %i.cph, align 2, !tbaa !73
  %i.cpp = zext i16 %i.cpo to i64
  %i.cpq = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cpp ; 2 uses
  %i.cpr = load i32, ptr %i.cpq, align 4, !tbaa !3
  %i.cps = add i32 %i.cpr, 1
  store i32 %i.cps, ptr %i.cpq, align 4, !tbaa !3
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cma, i64 34
  %i.cpu = load i16, ptr %i.cpn, align 2, !tbaa !73
  %i.cpv = zext i16 %i.cpu to i64
  %i.cpw = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cpv ; 2 uses
  %i.cpx = load i32, ptr %i.cpw, align 4, !tbaa !3
  %i.cpy = add i32 %i.cpx, 1
  store i32 %i.cpy, ptr %i.cpw, align 4, !tbaa !3
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cma, i64 36
  %i.cqa = load i16, ptr %i.cpt, align 2, !tbaa !73
  %i.cqb = zext i16 %i.cqa to i64
  %i.cqc = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cqb ; 2 uses
  %i.cqd = load i32, ptr %i.cqc, align 4, !tbaa !3
  %i.cqe = add i32 %i.cqd, 1
  store i32 %i.cqe, ptr %i.cqc, align 4, !tbaa !3
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cma, i64 38
  %i.cqg = load i16, ptr %i.cpz, align 2, !tbaa !73
  %i.cqh = zext i16 %i.cqg to i64
  %i.cqi = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cqh ; 2 uses
  %i.cqj = load i32, ptr %i.cqi, align 4, !tbaa !3
  %i.cqk = add i32 %i.cqj, 1
  store i32 %i.cqk, ptr %i.cqi, align 4, !tbaa !3
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cma, i64 40
  %i.cqm = load i16, ptr %i.cqf, align 2, !tbaa !73
  %i.cqn = zext i16 %i.cqm to i64
  %i.cqo = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cqn ; 2 uses
  %i.cqp = load i32, ptr %i.cqo, align 4, !tbaa !3
  %i.cqq = add i32 %i.cqp, 1
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !3
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cma, i64 42
  %i.cqs = load i16, ptr %i.cql, align 2, !tbaa !73
  %i.cqt = zext i16 %i.cqs to i64
  %i.cqu = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cqt ; 2 uses
  %i.cqv = load i32, ptr %i.cqu, align 4, !tbaa !3
  %i.cqw = add i32 %i.cqv, 1
  store i32 %i.cqw, ptr %i.cqu, align 4, !tbaa !3
  %i.cqx = getelementptr inbounds nuw i8, ptr %i.cma, i64 44
  %i.cqy = load i16, ptr %i.cqr, align 2, !tbaa !73
  %i.cqz = zext i16 %i.cqy to i64
  %i.cra = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cqz ; 2 uses
  %i.crb = load i32, ptr %i.cra, align 4, !tbaa !3
  %i.crc = add i32 %i.crb, 1
  store i32 %i.crc, ptr %i.cra, align 4, !tbaa !3
  %i.crd = getelementptr inbounds nuw i8, ptr %i.cma, i64 46
  %i.cre = load i16, ptr %i.cqx, align 2, !tbaa !73
  %i.crf = zext i16 %i.cre to i64
  %i.crg = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.crf ; 2 uses
  %i.crh = load i32, ptr %i.crg, align 4, !tbaa !3
  %i.cri = add i32 %i.crh, 1
  store i32 %i.cri, ptr %i.crg, align 4, !tbaa !3
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cma, i64 48
  %i.crk = load i16, ptr %i.crd, align 2, !tbaa !73
  %i.crl = zext i16 %i.crk to i64
  %i.crm = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.crl ; 2 uses
  %i.crn = load i32, ptr %i.crm, align 4, !tbaa !3
  %i.cro = add i32 %i.crn, 1
  store i32 %i.cro, ptr %i.crm, align 4, !tbaa !3
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cma, i64 50
  %i.crq = load i16, ptr %i.crj, align 2, !tbaa !73
  %i.crr = zext i16 %i.crq to i64
  %i.crs = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.crr ; 2 uses
  %i.crt = load i32, ptr %i.crs, align 4, !tbaa !3
  %i.cru = add i32 %i.crt, 1
  store i32 %i.cru, ptr %i.crs, align 4, !tbaa !3
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cma, i64 52
  %i.crw = load i16, ptr %i.crp, align 2, !tbaa !73
  %i.crx = zext i16 %i.crw to i64
  %i.cry = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.crx ; 2 uses
  %i.crz = load i32, ptr %i.cry, align 4, !tbaa !3
  %i.csa = add i32 %i.crz, 1
  store i32 %i.csa, ptr %i.cry, align 4, !tbaa !3
  %i.csb = getelementptr inbounds nuw i8, ptr %i.cma, i64 54
  %i.csc = load i16, ptr %i.crv, align 2, !tbaa !73
  %i.csd = zext i16 %i.csc to i64
  %i.cse = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.csd ; 2 uses
  %i.csf = load i32, ptr %i.cse, align 4, !tbaa !3
  %i.csg = add i32 %i.csf, 1
  store i32 %i.csg, ptr %i.cse, align 4, !tbaa !3
  %i.csh = getelementptr inbounds nuw i8, ptr %i.cma, i64 56
  %i.csi = load i16, ptr %i.csb, align 2, !tbaa !73
  %i.csj = zext i16 %i.csi to i64
  %i.csk = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.csj ; 2 uses
  %i.csl = load i32, ptr %i.csk, align 4, !tbaa !3
  %i.csm = add i32 %i.csl, 1
  store i32 %i.csm, ptr %i.csk, align 4, !tbaa !3
  %i.csn = getelementptr inbounds nuw i8, ptr %i.cma, i64 58
  %i.cso = load i16, ptr %i.csh, align 2, !tbaa !73
  %i.csp = zext i16 %i.cso to i64
  %i.csq = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.csp ; 2 uses
  %i.csr = load i32, ptr %i.csq, align 4, !tbaa !3
  %i.css = add i32 %i.csr, 1
  store i32 %i.css, ptr %i.csq, align 4, !tbaa !3
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cma, i64 60
  %i.csu = load i16, ptr %i.csn, align 2, !tbaa !73
  %i.csv = zext i16 %i.csu to i64
  %i.csw = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.csv ; 2 uses
  %i.csx = load i32, ptr %i.csw, align 4, !tbaa !3
  %i.csy = add i32 %i.csx, 1
  store i32 %i.csy, ptr %i.csw, align 4, !tbaa !3
  %i.csz = getelementptr inbounds nuw i8, ptr %i.cma, i64 62
  %i.cta = load i16, ptr %i.cst, align 2, !tbaa !73
  %i.ctb = zext i16 %i.cta to i64
  %i.ctc = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.ctb ; 2 uses
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !3
  %i.cte = add i32 %i.ctd, 1
  store i32 %i.cte, ptr %i.ctc, align 4, !tbaa !3
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cma, i64 64
  %i.ctg = load i16, ptr %i.csz, align 2, !tbaa !73
  %i.cth = zext i16 %i.ctg to i64
  %i.cti = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cth ; 2 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !3
  %i.ctk = add i32 %i.ctj, 1
  store i32 %i.ctk, ptr %i.cti, align 4, !tbaa !3
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cma, i64 66
  %i.ctm = load i16, ptr %i.ctf, align 2, !tbaa !73
  %i.ctn = zext i16 %i.ctm to i64
  %i.cto = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.ctn ; 2 uses
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !3
  %i.ctq = add i32 %i.ctp, 1
  store i32 %i.ctq, ptr %i.cto, align 4, !tbaa !3
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cma, i64 68
  %i.cts = load i16, ptr %i.ctl, align 2, !tbaa !73
  %i.ctt = zext i16 %i.cts to i64
  %i.ctu = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.ctt ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !3
  %i.ctw = add i32 %i.ctv, 1
  store i32 %i.ctw, ptr %i.ctu, align 4, !tbaa !3
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.cma, i64 70
  %i.cty = load i16, ptr %i.ctr, align 2, !tbaa !73
  %i.ctz = zext i16 %i.cty to i64
  %i.cua = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.ctz ; 2 uses
  %i.cub = load i32, ptr %i.cua, align 4, !tbaa !3
  %i.cuc = add i32 %i.cub, 1
  store i32 %i.cuc, ptr %i.cua, align 4, !tbaa !3
  %i.cud = getelementptr inbounds nuw i8, ptr %i.cma, i64 72
  %i.cue = load i16, ptr %i.ctx, align 2, !tbaa !73
  %i.cuf = zext i16 %i.cue to i64
  %i.cug = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cuf ; 2 uses
  %i.cuh = load i32, ptr %i.cug, align 4, !tbaa !3
  %i.cui = add i32 %i.cuh, 1
  store i32 %i.cui, ptr %i.cug, align 4, !tbaa !3
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cma, i64 74
  %i.cuk = load i16, ptr %i.cud, align 2, !tbaa !73
  %i.cul = zext i16 %i.cuk to i64
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cul ; 2 uses
  %i.cun = load i32, ptr %i.cum, align 4, !tbaa !3
  %i.cuo = add i32 %i.cun, 1
  store i32 %i.cuo, ptr %i.cum, align 4, !tbaa !3
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cma, i64 76
  %i.cuq = load i16, ptr %i.cuj, align 2, !tbaa !73
  %i.cur = zext i16 %i.cuq to i64
  %i.cus = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cur ; 2 uses
  %i.cut = load i32, ptr %i.cus, align 4, !tbaa !3
  %i.cuu = add i32 %i.cut, 1
  store i32 %i.cuu, ptr %i.cus, align 4, !tbaa !3
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cma, i64 78
  %i.cuw = load i16, ptr %i.cup, align 2, !tbaa !73
  %i.cux = zext i16 %i.cuw to i64
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cux ; 2 uses
  %i.cuz = load i32, ptr %i.cuy, align 4, !tbaa !3
  %i.cva = add i32 %i.cuz, 1
  store i32 %i.cva, ptr %i.cuy, align 4, !tbaa !3
  %i.cvb = load i16, ptr %i.cuv, align 2, !tbaa !73
  %i.cvc = zext i16 %i.cvb to i64
  %i.cvd = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cvc ; 2 uses
  %i.cve = load i32, ptr %i.cvd, align 4, !tbaa !3
  %i.cvf = add i32 %i.cve, 1
  store i32 %i.cvf, ptr %i.cvd, align 4, !tbaa !3
  %i.cvg = urem i64 %.020.i.i253, %spec.select
  %.idx858 = mul nuw nsw i64 %i.cvg, 2192         ; 2 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cba, i64 %.idx858 ; 8 uses
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvh, i64 2176 ; 2 uses
  %i.cvj = load i64, ptr %i.cvi, align 8, !tbaa !171
  %i.cvk = add i64 %i.cvj, 40
  store i64 %i.cvk, ptr %i.cvi, align 8, !tbaa !171
  %bound0804 = icmp ult ptr %i.cvh, %scevgep803
  %i.cvl = add nuw nsw i64 %.idx858, 2176
  %bound1805 = icmp samesign ult i64 %.idx857, %i.cvl
  %found.conflict806 = and i1 %bound0804, %bound1805
  br i1 %found.conflict806, label %scalar.ph807, label %vector.body809

vector.body809:                                   ; preds = %vector.memcheck802, %vector.body809
  %index810 = phi i64 [ %index.next815.1, %vector.body809 ], [ 0, %vector.memcheck802 ] ; 4 uses
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %index810 ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 16
  %wide.load811.a = load <4 x i32>, ptr %i.cvm, align 4, !tbaa !3, !alias.scope !173
  %wide.load812.a = load <4 x i32>, ptr %i.cvn, align 4, !tbaa !3, !alias.scope !173
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %index810 ; 3 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 16 ; 2 uses
  %wide.load813 = load <4 x i32>, ptr %i.cvo, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %wide.load814 = load <4 x i32>, ptr %i.cvp, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %i.cvq = add <4 x i32> %wide.load813, %wide.load811.a
  %i.cvr = add <4 x i32> %wide.load814, %wide.load812.a
  store <4 x i32> %i.cvq, ptr %i.cvo, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  store <4 x i32> %i.cvr, ptr %i.cvp, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %index.next815 = or disjoint i64 %index810, 8   ; 2 uses
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %index.next815 ; 2 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 16
  %wide.load811.1.a = load <4 x i32>, ptr %i.cvs, align 4, !tbaa !3, !alias.scope !173
  %wide.load812.1.a = load <4 x i32>, ptr %i.cvt, align 4, !tbaa !3, !alias.scope !173
  %i.cvu = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %index.next815 ; 3 uses
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 16 ; 2 uses
  %wide.load813.1 = load <4 x i32>, ptr %i.cvu, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %wide.load814.1 = load <4 x i32>, ptr %i.cvv, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %i.cvw = add <4 x i32> %wide.load813.1, %wide.load811.1.a
  %i.cvx = add <4 x i32> %wide.load814.1, %wide.load812.1.a
  store <4 x i32> %i.cvw, ptr %i.cvu, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  store <4 x i32> %i.cvx, ptr %i.cvv, align 4, !tbaa !3, !alias.scope !176, !noalias !173
  %index.next815.1 = add nuw nsw i64 %index810, 16 ; 2 uses
  %i.cvy = icmp eq i64 %index.next815.1, 544
  br i1 %i.cvy, label %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i, label %vector.body809, !llvm.loop !178

scalar.ph807:                                     ; preds = %vector.memcheck802, %scalar.ph807
  %.0.i18.i.i255 = phi i64 [ %i.cww, %scalar.ph807 ], [ 0, %vector.memcheck802 ] ; 6 uses
  %i.cvz = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %.0.i18.i.i255
  %i.cwa = load i32, ptr %i.cvz, align 4, !tbaa !3
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %.0.i18.i.i255 ; 2 uses
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !3
  %i.cwd = add i32 %i.cwc, %i.cwa
  store i32 %i.cwd, ptr %i.cwb, align 4, !tbaa !3
  %i.cwe = or disjoint i64 %.0.i18.i.i255, 1      ; 2 uses
  %i.cwf = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cwe
  %i.cwg = load i32, ptr %i.cwf, align 4, !tbaa !3
  %i.cwh = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %i.cwe ; 2 uses
  %i.cwi = load i32, ptr %i.cwh, align 4, !tbaa !3
  %i.cwj = add i32 %i.cwi, %i.cwg
  store i32 %i.cwj, ptr %i.cwh, align 4, !tbaa !3
  %i.cwk = or disjoint i64 %.0.i18.i.i255, 2      ; 2 uses
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cwk
  %i.cwm = load i32, ptr %i.cwl, align 4, !tbaa !3
  %i.cwn = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %i.cwk ; 2 uses
  %i.cwo = load i32, ptr %i.cwn, align 4, !tbaa !3
  %i.cwp = add i32 %i.cwo, %i.cwm
  store i32 %i.cwp, ptr %i.cwn, align 4, !tbaa !3
  %i.cwq = or disjoint i64 %.0.i18.i.i255, 3      ; 2 uses
  %i.cwr = getelementptr inbounds nuw [4 x i8], ptr %i.cll, i64 %i.cwq
  %i.cws = load i32, ptr %i.cwr, align 4, !tbaa !3
  %i.cwt = getelementptr inbounds nuw [4 x i8], ptr %i.cvh, i64 %i.cwq ; 2 uses
  %i.cwu = load i32, ptr %i.cwt, align 4, !tbaa !3
  %i.cwv = add i32 %i.cwu, %i.cws
  store i32 %i.cwv, ptr %i.cwt, align 4, !tbaa !3
  %i.cww = add nuw nsw i64 %.0.i18.i.i255, 4      ; 2 uses
  %exitcond.not.i155.i256.3 = icmp eq i64 %i.cww, 544
  br i1 %exitcond.not.i155.i256.3, label %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i, label %scalar.ph807, !llvm.loop !179

_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i: ; preds = %vector.body809, %scalar.ph807
  %i.cwx = add nuw i64 %.020.i.i253, 1            ; 2 uses
  %exitcond21.not.i.i257 = icmp eq i64 %i.cwx, %i.clr
  br i1 %exitcond21.not.i.i257, label %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i, label %vector.memcheck802, !llvm.loop !180

_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i: ; preds = %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i
  %i.cwy = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.1) ; 23 uses
  %i.cwz = add nuw nsw i64 %spec.select, 7
  %i.cxa = lshr i64 %i.cwz, 3
  %i.cxb = mul nuw nsw i64 %spec.select, 4352
  %i.cxc = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxb) ; 6 uses
  %i.cxd = shl nuw nsw i64 %spec.select, 3
  %i.cxe = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxd) ; 6 uses
  %i.cxf = mul i64 %i.cxa, %.1                    ; 2 uses
  %.not.i258 = icmp eq i64 %i.cxf, 0
  br i1 %.not.i258, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i
  %i.cxg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxf)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i
  %i.cxh = phi ptr [ %i.cxg, %bb.hd ], [ null, %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i ] ; 4 uses
  %i.cxi = shl nuw nsw i64 %spec.select, 1
  %i.cxj = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.cxi) ; 12 uses
  %i.cxk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cxl = load i32, ptr %i.cxk, align 4, !tbaa !48
  %.inv.i259 = icmp sgt i32 %i.cxl, 10
  %i.cxm = select i1 %.inv.i259, i64 10, i64 3
  %i.cxn = add i64 %.1, -1                        ; 8 uses
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.cxn
  %xtraiter1040 = and i64 %.1, 1
  %i.cxp = icmp eq i64 %i.cxn, 0
  %unroll_iter1045 = and i64 %.1, -2
  %lcmp.mod1042.not = icmp eq i64 %xtraiter1040, 0
  %lcmp.mod1044 = trunc i64 %.1 to i1
  %xtraiter1048 = and i64 %.1, 3                  ; 3 uses
  %unroll_iter1052 = and i64 %.1, -4
  %lcmp.mod1050.not = icmp eq i64 %xtraiter1048, 0
  %lcmp.mod1051 = icmp ne i64 %xtraiter1048, 0
  %xtraiter1061 = and i64 %.1, 1
  %i.cxq = icmp eq i64 %i.cxn, 0
  %unroll_iter1065 = and i64 %.1, -2
  %lcmp.mod1063.not = icmp eq i64 %xtraiter1061, 0
  %lcmp.mod1064 = trunc i64 %.1 to i1
  br label %bb.hf

bb.hf:                                            ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i, %bb.he
  %.0181.i260 = phi i64 [ 0, %bb.he ], [ %i.dgh, %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i ]
  %.1180.i261 = phi i64 [ %spec.select, %bb.he ], [ %i.deb, %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i ] ; 21 uses
  %i.cxr = add nuw nsw i64 %.1180.i261, 7
  %i.cxs = lshr i64 %i.cxr, 3                     ; 4 uses
  %i.cxt = icmp samesign ult i64 %.1180.i261, 2
  br i1 %i.cxt, label %.preheader.preheader.i.i444, label %bb.hg

.preheader.preheader.i.i444:                      ; preds = %bb.hf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cwy, i8 0, i64 range(i64 128, 0) %.1, i1 false), !tbaa !29
  br label %_ZL18FindBlocksDistancePKtmdmPKN13duckdb_brotli17HistogramDistanceEPdS5_PhS6_.exit.i

bb.hg:                                            ; preds = %bb.hf
  %i.cxu = mul nuw nsw i64 %.1180.i261, 4352
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cxc, i8 0, i64 %i.cxu, i1 false)
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263, %bb.hg
  %.1116131.i.i262 = phi i64 [ 0, %bb.hg ], [ %i.cyf, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263 ] ; 3 uses
  %i.cxv = getelementptr inbounds nuw [2192 x i8], ptr %i.cba, i64 %.1116131.i.i262
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxv, i64 2176
  %i.cxx = load i64, ptr %i.cxw, align 8, !tbaa !171
  %i.cxy = and i64 %i.cxx, 4294967295             ; 3 uses
  %i.cxz = icmp samesign ult i64 %i.cxy, 256
  br i1 %i.cxz, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.cya = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.cxy
  %i.cyb = load double, ptr %i.cya, align 8, !tbaa !65
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263

bb.hj:                                            ; preds = %bb.hh
  %i.cyc = uitofp nneg i64 %i.cxy to double
  %i.cyd = tail call double @log2(double noundef %i.cyc) #8, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263

_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263:       ; preds = %bb.hj, %bb.hi
  %.0.i.i.i264 = phi double [ %i.cyb, %bb.hi ], [ %i.cyd, %bb.hj ]
  %i.cye = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %.1116131.i.i262
  store double %.0.i.i.i264, ptr %i.cye, align 8, !tbaa !65
  %i.cyf = add nuw nsw i64 %.1116131.i.i262, 1    ; 2 uses
  %exitcond.not.i156.i265 = icmp eq i64 %i.cyf, %.1180.i261
  br i1 %exitcond.not.i156.i265, label %.preheader130.i.i266, label %bb.hh, !llvm.loop !181

.loopexit129.i.i273:                              ; preds = %_ZL7BitCostm.exit.i.i271
  %.not.i157.i274 = icmp eq i64 %i.cyg, 0
  br i1 %.not.i157.i274, label %bb.ho, label %.preheader130.i.i266, !llvm.loop !182

.preheader130.i.i266:                             ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263, %.loopexit129.i.i273
  %.2133.i.i267 = phi i64 [ %i.cyg, %.loopexit129.i.i273 ], [ 544, %_ZN13duckdb_brotliL8FastLog2Em.exit.i.i263 ]
  %i.cyg = add nsw i64 %.2133.i.i267, -1          ; 4 uses
  %invariant.gep.i.i268 = getelementptr [4 x i8], ptr %i.cba, i64 %i.cyg
  %i.cyh = mul i64 %i.cyg, %.1180.i261
  %i.cyi = getelementptr [8 x i8], ptr %i.cxc, i64 %i.cyh
  br label %bb.hk

bb.hk:                                            ; preds = %_ZL7BitCostm.exit.i.i271, %.preheader130.i.i266
  %.0114132.i.i269 = phi i64 [ 0, %.preheader130.i.i266 ], [ %i.cyw, %_ZL7BitCostm.exit.i.i271 ] ; 4 uses
  %i.cyj = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %.0114132.i.i269
  %i.cyk = load double, ptr %i.cyj, align 8, !tbaa !65
  %gep.i.i270 = getelementptr [2192 x i8], ptr %invariant.gep.i.i268, i64 %.0114132.i.i269
  %i.cyl = load i32, ptr %gep.i.i270, align 4, !tbaa !3 ; 4 uses
  %i.cym = zext nneg i32 %i.cyl to i64
  %i.cyn = icmp eq i32 %i.cyl, 0
  br i1 %i.cyn, label %_ZL7BitCostm.exit.i.i271, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cyo = icmp ult i32 %i.cyl, 256
  br i1 %i.cyo, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.cyp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.cym
  %i.cyq = load double, ptr %i.cyp, align 8, !tbaa !65
  br label %_ZL7BitCostm.exit.i.i271

bb.hn:                                            ; preds = %bb.hl
  %i.cyr = uitofp i32 %i.cyl to double
  %i.cys = tail call double @log2(double noundef %i.cyr) #8, !tbaa !3
  br label %_ZL7BitCostm.exit.i.i271

_ZL7BitCostm.exit.i.i271:                         ; preds = %bb.hn, %bb.hm, %bb.hk
  %i.cyt = phi double [ -2.000000e+00, %bb.hk ], [ %i.cyq, %bb.hm ], [ %i.cys, %bb.hn ]
  %i.cyu = fsub double %i.cyk, %i.cyt
  %i.cyv = getelementptr [8 x i8], ptr %i.cyi, i64 %.0114132.i.i269
  store double %i.cyu, ptr %i.cyv, align 8, !tbaa !65
  %i.cyw = add nuw nsw i64 %.0114132.i.i269, 1    ; 2 uses
  %exitcond145.not.i.i272 = icmp eq i64 %i.cyw, %.1180.i261
  br i1 %exitcond145.not.i.i272, label %.loopexit129.i.i273, label %bb.hk, !llvm.loop !183

bb.ho:                                            ; preds = %.loopexit129.i.i273
  %i.cyx = shl nuw nsw i64 %.1180.i261, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cxe, i8 0, i64 %i.cyx, i1 false)
  %i.cyy = mul i64 %i.cxs, %.1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cxh, i8 0, i64 %i.cyy, i1 false)
  %xtraiter1031 = and i64 %.1180.i261, 1
  %unroll_iter1037 = and i64 %.1180.i261, -2
  %lcmp.mod1033.not = icmp eq i64 %xtraiter1031, 0
  %lcmp.mod1036 = trunc i64 %.1180.i261 to i1
  br label %.new1028

.new1028:                                         ; preds = %bb.ia, %bb.ho
  %.0117137.i.i275 = phi i64 [ 0, %bb.ho ], [ %i.daw, %bb.ia ] ; 6 uses
  %i.cyz = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %.0117137.i.i275
  %i.cza = load i16, ptr %i.cyz, align 2, !tbaa !73
  %i.czb = zext i16 %i.cza to i64
  %i.czc = mul nuw nsw i64 %.1180.i261, %i.czb
  %i.czd = getelementptr inbounds nuw [8 x i8], ptr %i.cxc, i64 %i.czc ; 3 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %.0117137.i.i275 ; 3 uses
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ht, %.new1028
  %.0109135.i.i276 = phi i64 [ 0, %.new1028 ], [ %i.czu, %bb.ht ] ; 5 uses
  %.0112134.i.i277 = phi double [ f0x547D42AEA2879F2E, %.new1028 ], [ %.1113.i.i278.1, %bb.ht ] ; 2 uses
  %niter1038 = phi i64 [ 0, %.new1028 ], [ %niter1038.next.1, %bb.ht ]
  %i.czf = getelementptr inbounds nuw [8 x i8], ptr %i.czd, i64 %.0109135.i.i276
  %i.czg = load double, ptr %i.czf, align 8, !tbaa !65
  %i.czh = getelementptr inbounds nuw [8 x i8], ptr %i.cxe, i64 %.0109135.i.i276 ; 2 uses
  %i.czi = load double, ptr %i.czh, align 8, !tbaa !65
  %i.czj = fadd double %i.czg, %i.czi             ; 3 uses
  store double %i.czj, ptr %i.czh, align 8, !tbaa !65
  %i.czk = fcmp olt double %i.czj, %.0112134.i.i277
  br i1 %i.czk, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.czl = trunc i64 %.0109135.i.i276 to i8
  store i8 %i.czl, ptr %i.cze, align 1, !tbaa !29
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.1113.i.i278 = phi double [ %i.czj, %bb.hq ], [ %.0112134.i.i277, %bb.hp ] ; 2 uses
  %i.czm = or disjoint i64 %.0109135.i.i276, 1    ; 3 uses
  %i.czn = getelementptr inbounds nuw [8 x i8], ptr %i.czd, i64 %i.czm
  %i.czo = load double, ptr %i.czn, align 8, !tbaa !65
  %i.czp = getelementptr inbounds nuw [8 x i8], ptr %i.cxe, i64 %i.czm ; 2 uses
  %i.czq = load double, ptr %i.czp, align 8, !tbaa !65
  %i.czr = fadd double %i.czo, %i.czq             ; 3 uses
  store double %i.czr, ptr %i.czp, align 8, !tbaa !65
  %i.czs = fcmp olt double %i.czr, %.1113.i.i278
  br i1 %i.czs, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.czt = trunc i64 %i.czm to i8
  store i8 %i.czt, ptr %i.cze, align 1, !tbaa !29
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.1113.i.i278.1 = phi double [ %i.czr, %bb.hs ], [ %.1113.i.i278, %bb.hr ] ; 4 uses
  %i.czu = add nuw nsw i64 %.0109135.i.i276, 2    ; 4 uses
  %niter1038.next.1 = add nuw i64 %niter1038, 2   ; 2 uses
  %niter1038.ncmp.1 = icmp eq i64 %niter1038.next.1, %unroll_iter1037
  br i1 %niter1038.ncmp.1, label %.unr-lcssa1029, label %bb.hp, !llvm.loop !184

.unr-lcssa1029:                                   ; preds = %bb.ht
  br i1 %lcmp.mod1033.not, label %.epilog-lcssa1034, label %.epil.preheader1030

.epil.preheader1030:                              ; preds = %.unr-lcssa1029
end_hunk_2
