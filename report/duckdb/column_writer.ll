Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/column_writer?download=true
inline.NumInlined: 9971
inline.NumDeleted: 4725
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN6duckdb20StandardColumnWriterINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !748
  %i.dn = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  %i.do = load double, ptr %i.g, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  store double %i.do, ptr %i.m, align 8, !tbaa !748
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.dt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ds)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIdEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  store i8 1, ptr %i.db, align 8, !tbaa !739
  %i.du = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  br label %.loopexit153

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121
  %i.dv = add i64 %.0111162, 1                    ; 2 uses
  %exitcond198.not = icmp eq i64 %i.dv, %6
  br i1 %exitcond198.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121, !llvm.loop !1822

.loopexit153:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread, %bb.s
  %.1112 = phi i64 [ %5, %bb.s ], [ %i.du, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread ] ; 2 uses
  %i.dw = icmp ult i64 %.1112, %6
  br i1 %i.dw, label %.lr.ph165, label %.loopexit

.lr.ph165:                                        ; preds = %.loopexit153
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph165, %bb.u
  %.2113164 = phi i64 [ %.1112, %.lr.ph165 ], [ %i.eb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2113164 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.dy, align 8, !tbaa !301
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !748
  %i.dz = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  %i.ea = load double, ptr %i.f, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  store double %i.ea, ptr %i.n, align 8, !tbaa !748
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  %i.eb = add i64 %.2113164, 1                    ; 2 uses
  %exitcond199.not = icmp eq i64 %i.eb, %6
  br i1 %exitcond199.not, label %.loopexit, label %bb.u, !llvm.loop !1823

bb.v:                                             ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !740, !range !337, !noundef !189
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ej = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ei) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ek = load i64, ptr %i.ef, align 8, !tbaa !551
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.em = load i64, ptr %i.el, align 8, !tbaa !552
  %i.en = mul i64 %i.em, %i.ek
  %i.eo = add i64 %i.en, 1                        ; 2 uses
  %i.ep = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.eo), !noalias !1827
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef %i.ep, i64 noundef %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.er = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.ec, align 8, !tbaa !740
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.es = icmp ult i64 %5, %6
  br i1 %i.es, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.0105161 = phi i64 [ %5, %.lr.ph ], [ %i.gt, %bb.y ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.0105161 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ew, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !748
  %i.ex = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !748 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.0.extract.trunc = trunc i64 %i.ey to i8
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fa = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fb = getelementptr i8, ptr %i.ez, i64 %i.fa
  store i8 %.0.extract.trunc, ptr %i.fb, align 1, !tbaa !127
  %.1.extract.shift = lshr i64 %i.ey, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fd = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fe = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.fd
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fe
  store i8 %.1.extract.trunc, ptr %i.fg, align 1, !tbaa !127
  %.2.extract.shift = lshr i64 %i.ey, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %i.fh = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fi = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fj = shl i64 %i.fi, 1
  %i.fk = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fl = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.fk
  store i8 %.2.extract.trunc, ptr %i.fm, align 1, !tbaa !127
  %.3.extract.shift = lshr i64 %i.ey, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fo = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fp = mul i64 %i.fo, 3
  %i.fq = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fr = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq
  store i8 %.3.extract.trunc, ptr %i.fs, align 1, !tbaa !127
  %.4.extract.shift = lshr i64 %i.ey, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %i.ft = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fu = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fv = shl i64 %i.fu, 2
  %i.fw = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fx = getelementptr i8, ptr %i.ft, i64 %i.fv
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  store i8 %.4.extract.trunc, ptr %i.fy, align 1, !tbaa !127
  %.5.extract.shift = lshr i64 %i.ey, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gb = mul i64 %i.ga, 5
  %i.gc = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gd = getelementptr i8, ptr %i.fz, i64 %i.gb
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.gc
  store i8 %.5.extract.trunc, ptr %i.ge, align 1, !tbaa !127
  %.6.extract.shift = lshr i64 %i.ey, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %i.gf = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.gg = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gh = mul i64 %i.gg, 6
  %i.gi = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi
  store i8 %.6.extract.trunc, ptr %i.gk, align 1, !tbaa !127
  %.7.extract.shift = lshr i64 %i.ey, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  %i.gl = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.gm = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gn = mul i64 %i.gm, 7
  %i.go = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gp = getelementptr i8, ptr %i.gl, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.go
  store i8 %.7.extract.trunc, ptr %i.gq, align 1, !tbaa !127
  %i.gr = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.ev, align 8, !tbaa !600
  %i.gt = add i64 %.0105161, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.y, !llvm.loop !1826

bb.z:                                             ; preds = %bb.a
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !336
  %.not.i122 = icmp eq ptr %i.gu, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.gv = load ptr, ptr %i.p, align 8, !tbaa !479 ; 2 uses
  %i.gw = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i122, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br i1 %i.gw, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.ac
  %i.gx = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ac
  %.02.i = phi i64 [ %.1.i, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.0151.i = phi i64 [ %i.hg, %bb.ac ], [ %5, %bb.aa ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0151.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.gy, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !748
  %i.gz = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ha = load double, ptr %i.c, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.hb = add nuw nsw i64 %.02.i, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02.i
  store double %i.ha, ptr %i.hc, align 8, !tbaa !748
  %i.hd = icmp eq i64 %i.hb, 2048
  br i1 %i.hd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i
  %i.he = load ptr, ptr %1, align 8, !tbaa !129
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 16384), !inline_history !45
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ab ], [ %i.hb, %.lr.ph.i ] ; 2 uses
  %i.hg = add i64 %.0151.i, 1                     ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %i.hg, %6
  br i1 %exitcond.not.i123, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !46

_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aa, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.aa ], [ %i.gx, %._crit_edge.loopexit.i ]
  %i.hh = load ptr, ptr %1, align 8, !tbaa !129
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.0.lcssa.i), !inline_history !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.gw, label %.lr.ph.i125, label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i132:                        ; preds = %bb.af
  %i.hj = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i125:                                      ; preds = %bb.ad, %bb.af
  %.03.i = phi i64 [ %.2.i, %bb.af ], [ 0, %bb.ad ] ; 3 uses
  %.0172.i = phi i64 [ %i.hz, %bb.af ], [ %5, %bb.ad ] ; 4 uses
  %i.hk = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i126, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i125
  %i.hl = lshr i64 %.0172.i, 6
  %i.hm = and i64 %.0172.i, 63
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hl
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !301
  %i.hp = shl nuw i64 1, %i.hm
  %i.hq = and i64 %i.ho, %i.hp
  %.not.i127 = icmp eq i64 %i.hq, 0
  br i1 %.not.i127, label %bb.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i125
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0172.i ; 2 uses
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.hr, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.2.0.copyload.i130 = load i64, ptr %.sroa.2.0..sroa_idx.i129, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !748
  %i.hs = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload.i128, i64 %.sroa.2.0.copyload.i130, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ht = load double, ptr %i.a, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hu = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03.i
  store double %i.ht, ptr %i.hv, align 8, !tbaa !748
  %i.hw = icmp eq i64 %i.hu, 2048
  br i1 %i.hw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.hx = load ptr, ptr %1, align 8, !tbaa !129
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.03.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.ae ], [ %i.hu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.hz = add i64 %.0172.i, 1                     ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %i.hz, %6
  br i1 %exitcond.not.i131, label %._crit_edge.loopexit.i132, label %.lr.ph.i125, !llvm.loop !48

_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ad, %._crit_edge.loopexit.i132
  %.0.lcssa.i124 = phi i64 [ 0, %bb.ad ], [ %i.hj, %._crit_edge.loopexit.i132 ]
  %i.ia = load ptr, ptr %1, align 8, !tbaa !129
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa.i124), !inline_history !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ag:                                            ; preds = %bb.a
  %i.ic = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.am unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ag
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.if = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.if) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ak, label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn144 = phi { ptr, i32 } [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ic) #25
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn143 = phi { ptr, i32 } [ %.pn144, %bb.ak ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn143

.loopexit:                                        ; preds = %bb.y, %bb.t, %bb.u, %bb.q, %bb.r, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.x, %.loopexit153, %.loopexit150, %.loopexit147, %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.am:                                            ; preds = %bb.ai
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca [2048 x double], align 16         ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca [2048 x double], align 16         ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !479  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !735
  switch i32 %i.s, label %bb.aj [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.p
    i32 6, label %bb.t
    i32 9, label %bb.x
    i32 0, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !737, !range !337, !noundef !189
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.w, %i.v
  br i1 %or.cond.not, label %.loopexit175, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.b
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph201, %bb.c
  %.0114200 = phi i64 [ %i.al, %bb.c ], [ %5, %.lr.ph201 ] ; 4 uses
  %i.y = lshr i64 %.0114200, 6
  %i.z = and i64 %.0114200, 63
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !301
  %i.ac = shl nuw i64 1, %i.z
  %i.ad = and i64 %i.ab, %i.ac
  %.not173 = icmp eq i64 %i.ad, 0
  br i1 %.not173, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph201
  %.us-phi203 = phi i64 [ %5, %.lr.ph201 ], [ %.0114200, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !738
  %i.ag = trunc i32 %i.af to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.ag, ptr %i.j, align 1, !tbaa !127
  %i.ah = load ptr, ptr %1, align 8, !tbaa !129
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aj, align 8, !tbaa !547
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ak, align 8, !tbaa !607
  store i8 1, ptr %i.t, align 8, !tbaa !737
  br label %.loopexit175

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.al = add i64 %.0114200, 1                    ; 2 uses
  %exitcond230.not = icmp eq i64 %i.al, %6
  br i1 %exitcond230.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1828

.loopexit175:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1115 = phi i64 [ %5, %bb.b ], [ %.us-phi203, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.am = icmp ult i64 %.1115, %6
  br i1 %i.am, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.loopexit175
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph205, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2204 = phi i64 [ %.1115, %.lr.ph205 ], [ %i.ck, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i123 = icmp eq ptr %i.av, null
  br i1 %.not.i123, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125: ; preds = %bb.d
  %i.aw = lshr i64 %.2204, 6
  %i.ax = and i64 %.2204, 63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !301
  %i.ba = shl nuw i64 1, %i.ax
  %i.bb = and i64 %i.az, %i.ba
  %.not174 = icmp eq i64 %i.bb, 0
  br i1 %.not174, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2204 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StandardColumnWriterINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138: ; preds = %bb.v
  %i.en = lshr i64 %.2121192, 6
  %i.eo = and i64 %.2121192, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !301
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.not170 = icmp eq i64 %i.es, 0
  br i1 %.not170, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread: ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2121192 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.et, align 8, !tbaa !301
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !748
  %i.eu = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.06.0.copyload, i64 %.sroa.27.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  %i.ev = load double, ptr %i.f, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  store double %i.ev, ptr %i.n, align 8, !tbaa !748
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread
  %i.ew = add i64 %.2121192, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ew, %6
  br i1 %exitcond227.not, label %.loopexit, label %bb.v, !llvm.loop !1833

bb.x:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !740, !range !337, !noundef !189
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fe = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ff = load i64, ptr %i.fa, align 8, !tbaa !551
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !552
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  %i.fk = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, i64 noundef %i.fj), !noalias !1837
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %i.fk, i64 noundef %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.fm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.ex, align 8, !tbaa !740
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp ult i64 %5, %6
  br i1 %i.fn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %.0113189 = phi i64 [ %5, %.lr.ph ], [ %i.hv, %bb.ab ] ; 4 uses
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i139 = icmp eq ptr %i.fr, null
  br i1 %.not.i139, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141: ; preds = %bb.aa
  %i.fs = lshr i64 %.0113189, 6
  %i.ft = and i64 %.0113189, 63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !301
  %i.fw = shl nuw i64 1, %i.ft
  %i.fx = and i64 %i.fv, %i.fw
  %.not = icmp eq i64 %i.fx, 0
  br i1 %.not, label %bb.ab, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread: ; preds = %bb.aa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.0113189 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.fy, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !748
  %i.fz = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !748 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.0.extract.trunc = trunc i64 %i.ga to i8
  %i.gb = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gc = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gd = getelementptr i8, ptr %i.gb, i64 %i.gc
  store i8 %.0.extract.trunc, ptr %i.gd, align 1, !tbaa !127
  %.1.extract.shift = lshr i64 %i.ga, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  %i.ge = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gf = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gg = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gh = getelementptr i8, ptr %i.ge, i64 %i.gf
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  store i8 %.1.extract.trunc, ptr %i.gi, align 1, !tbaa !127
  %.2.extract.shift = lshr i64 %i.ga, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %i.gj = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gk = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gl = shl i64 %i.gk, 1
  %i.gm = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gn = getelementptr i8, ptr %i.gj, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gm
  store i8 %.2.extract.trunc, ptr %i.go, align 1, !tbaa !127
  %.3.extract.shift = lshr i64 %i.ga, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %i.gp = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gq = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gr = mul i64 %i.gq, 3
  %i.gs = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gt = getelementptr i8, ptr %i.gp, i64 %i.gr
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gs
  store i8 %.3.extract.trunc, ptr %i.gu, align 1, !tbaa !127
  %.4.extract.shift = lshr i64 %i.ga, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %i.gv = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gw = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gx = shl i64 %i.gw, 2
  %i.gy = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gz = getelementptr i8, ptr %i.gv, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  store i8 %.4.extract.trunc, ptr %i.ha, align 1, !tbaa !127
  %.5.extract.shift = lshr i64 %i.ga, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %i.hb = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.hc = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hd = mul i64 %i.hc, 5
  %i.he = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  store i8 %.5.extract.trunc, ptr %i.hg, align 1, !tbaa !127
  %.6.extract.shift = lshr i64 %i.ga, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %i.hh = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.hi = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hj = mul i64 %i.hi, 6
  %i.hk = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  store i8 %.6.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %.7.extract.shift = lshr i64 %i.ga, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  %i.hn = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hp = mul i64 %i.ho, 7
  %i.hq = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store i8 %.7.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.fq, align 8, !tbaa !600
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread
  %i.hv = add i64 %.0113189, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hv, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !1836

bb.ac:                                            ; preds = %bb.a
  %i.hw = load ptr, ptr %i.o, align 8, !tbaa !336
  %.not.i142 = icmp eq ptr %i.hw, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !479 ; 2 uses
  %i.hy = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i142, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br i1 %i.hy, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.af
  %i.hz = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ad, %bb.af
  %.02.i = phi i64 [ %.1.i, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.0151.i = phi i64 [ %i.ii, %bb.af ], [ %5, %bb.ad ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %.0151.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ia, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !748
  %i.ib = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ic = load double, ptr %i.c, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.id = add nuw nsw i64 %.02.i, 1               ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02.i
  store double %i.ic, ptr %i.ie, align 8, !tbaa !748
  %i.if = icmp eq i64 %i.id, 2048
  br i1 %i.if, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ig = load ptr, ptr %1, align 8, !tbaa !129
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 16384), !inline_history !45
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ae ], [ %i.id, %.lr.ph.i ] ; 2 uses
  %i.ii = add i64 %.0151.i, 1                     ; 2 uses
  %exitcond.not.i143 = icmp eq i64 %i.ii, %6
  br i1 %exitcond.not.i143, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !46

_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ad, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.ad ], [ %i.hz, %._crit_edge.loopexit.i ]
  %i.ij = load ptr, ptr %1, align 8, !tbaa !129
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.0.lcssa.i), !inline_history !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hy, label %.lr.ph.i145, label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i152:                        ; preds = %bb.ai
  %i.il = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i145:                                      ; preds = %bb.ag, %bb.ai
  %.03.i = phi i64 [ %.2.i, %bb.ai ], [ 0, %bb.ag ] ; 3 uses
  %.0172.i = phi i64 [ %i.jb, %bb.ai ], [ %5, %bb.ag ] ; 4 uses
  %i.im = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.im, null
  br i1 %.not.i.i146, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i145
  %i.in = lshr i64 %.0172.i, 6
  %i.io = and i64 %.0172.i, 63
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !301
  %i.ir = shl nuw i64 1, %i.io
  %i.is = and i64 %i.iq, %i.ir
  %.not.i147 = icmp eq i64 %i.is, 0
  br i1 %.not.i147, label %bb.ai, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i145
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %.0172.i ; 2 uses
  %.sroa.0.0.copyload.i148 = load i64, ptr %i.it, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.sroa.2.0.copyload.i150 = load i64, ptr %.sroa.2.0..sroa_idx.i149, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !748
  %i.iu = call noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIdEEbNS_9hugeint_tERT_(i64 %.sroa.0.0.copyload.i148, i64 %.sroa.2.0.copyload.i150, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.iv = load double, ptr %i.a, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.iw = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03.i
  store double %i.iv, ptr %i.ix, align 8, !tbaa !748
  %i.iy = icmp eq i64 %i.iw, 2048
  br i1 %i.iy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iz = load ptr, ptr %1, align 8, !tbaa !129
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.03.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.ah ], [ %i.iw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.jb = add i64 %.0172.i, 1                     ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %i.jb, %6
  br i1 %exitcond.not.i151, label %._crit_edge.loopexit.i152, label %.lr.ph.i145, !llvm.loop !48

_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ag, %._crit_edge.loopexit.i152
  %.0.lcssa.i144 = phi i64 [ 0, %bb.ag ], [ %i.il, %._crit_edge.loopexit.i152 ]
  %i.jc = load ptr, ptr %1, align 8, !tbaa !129
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa.i144), !inline_history !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aj:                                            ; preds = %bb.a
  %i.je = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.je, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ap unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aj
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jh = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.jh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn168 = phi { ptr, i32 } [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.je) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn167 = phi { ptr, i32 } [ %.pn168, %bb.an ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn167

.loopexit:                                        ; preds = %bb.ab, %bb.u, %bb.w, %bb.q, %bb.s, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.z, %.loopexit181, %.loopexit178, %.loopexit175, %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_9hugeint_tEdNS_22ParquetHugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.ap:                                            ; preds = %bb.al
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder10BeginWriteIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.43, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb10DbpEncoder10WriteValueIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18480) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %3, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.43, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6duckdb20StandardColumnWriterINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !748
  %i.dn = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.07.0.copyload, i64 %.sroa.28.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  %i.do = load double, ptr %i.g, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  store double %i.do, ptr %i.m, align 8, !tbaa !748
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.dt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ds)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIdEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  store i8 1, ptr %i.db, align 8, !tbaa !766
  %i.du = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  br label %.loopexit153

bb.t:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121
  %i.dv = add i64 %.0111162, 1                    ; 2 uses
  %exitcond198.not = icmp eq i64 %i.dv, %6
  br i1 %exitcond198.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121, !llvm.loop !1887

.loopexit153:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread, %bb.s
  %.1112 = phi i64 [ %5, %bb.s ], [ %i.du, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread ] ; 2 uses
  %i.dw = icmp ult i64 %.1112, %6
  br i1 %i.dw, label %.lr.ph165, label %.loopexit

.lr.ph165:                                        ; preds = %.loopexit153
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph165, %bb.u
  %.2113164 = phi i64 [ %.1112, %.lr.ph165 ], [ %i.eb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2113164 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.dy, align 8, !tbaa !301
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !748
  %i.dz = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  %i.ea = load double, ptr %i.f, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  store double %i.ea, ptr %i.n, align 8, !tbaa !748
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  %i.eb = add i64 %.2113164, 1                    ; 2 uses
  %exitcond199.not = icmp eq i64 %i.eb, %6
  br i1 %exitcond199.not, label %.loopexit, label %bb.u, !llvm.loop !1888

bb.v:                                             ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !767, !range !337, !noundef !189
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ej = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ei) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ek = load i64, ptr %i.ef, align 8, !tbaa !551
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.em = load i64, ptr %i.el, align 8, !tbaa !552
  %i.en = mul i64 %i.em, %i.ek
  %i.eo = add i64 %i.en, 1                        ; 2 uses
  %i.ep = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 noundef %i.eo), !noalias !1892
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef %i.ep, i64 noundef %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.er = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.ec, align 8, !tbaa !767
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.es = icmp ult i64 %5, %6
  br i1 %i.es, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %.0105161 = phi i64 [ %5, %.lr.ph ], [ %i.gt, %bb.y ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.0105161 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ew, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !748
  %i.ex = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ey = load i64, ptr %i.e, align 8, !tbaa !748 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.0.extract.trunc = trunc i64 %i.ey to i8
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fa = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fb = getelementptr i8, ptr %i.ez, i64 %i.fa
  store i8 %.0.extract.trunc, ptr %i.fb, align 1, !tbaa !127
  %.1.extract.shift = lshr i64 %i.ey, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fd = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fe = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.fd
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fe
  store i8 %.1.extract.trunc, ptr %i.fg, align 1, !tbaa !127
  %.2.extract.shift = lshr i64 %i.ey, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %i.fh = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fi = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fj = shl i64 %i.fi, 1
  %i.fk = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fl = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.fk
  store i8 %.2.extract.trunc, ptr %i.fm, align 1, !tbaa !127
  %.3.extract.shift = lshr i64 %i.ey, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fo = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fp = mul i64 %i.fo, 3
  %i.fq = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fr = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.fq
  store i8 %.3.extract.trunc, ptr %i.fs, align 1, !tbaa !127
  %.4.extract.shift = lshr i64 %i.ey, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %i.ft = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.fu = load i64, ptr %i.et, align 8, !tbaa !551
  %i.fv = shl i64 %i.fu, 2
  %i.fw = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.fx = getelementptr i8, ptr %i.ft, i64 %i.fv
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fw
  store i8 %.4.extract.trunc, ptr %i.fy, align 1, !tbaa !127
  %.5.extract.shift = lshr i64 %i.ey, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %i.fz = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.ga = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gb = mul i64 %i.ga, 5
  %i.gc = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gd = getelementptr i8, ptr %i.fz, i64 %i.gb
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.gc
  store i8 %.5.extract.trunc, ptr %i.ge, align 1, !tbaa !127
  %.6.extract.shift = lshr i64 %i.ey, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %i.gf = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.gg = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gh = mul i64 %i.gg, 6
  %i.gi = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.gi
  store i8 %.6.extract.trunc, ptr %i.gk, align 1, !tbaa !127
  %.7.extract.shift = lshr i64 %i.ey, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  %i.gl = load ptr, ptr %i.eu, align 8, !tbaa !307
  %i.gm = load i64, ptr %i.et, align 8, !tbaa !551
  %i.gn = mul i64 %i.gm, 7
  %i.go = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gp = getelementptr i8, ptr %i.gl, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.go
  store i8 %.7.extract.trunc, ptr %i.gq, align 1, !tbaa !127
  %i.gr = load i64, ptr %i.ev, align 8, !tbaa !600
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.ev, align 8, !tbaa !600
  %i.gt = add i64 %.0105161, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.y, !llvm.loop !1891

bb.z:                                             ; preds = %bb.a
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !336
  %.not.i122 = icmp eq ptr %i.gu, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.gv = load ptr, ptr %i.p, align 8, !tbaa !479 ; 2 uses
  %i.gw = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i122, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br i1 %i.gw, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.ac
  %i.gx = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ac
  %.02.i = phi i64 [ %.1.i, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.0151.i = phi i64 [ %i.hg, %bb.ac ], [ %5, %bb.aa ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0151.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.gy, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !748
  %i.gz = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ha = load double, ptr %i.c, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.hb = add nuw nsw i64 %.02.i, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02.i
  store double %i.ha, ptr %i.hc, align 8, !tbaa !748
  %i.hd = icmp eq i64 %i.hb, 2048
  br i1 %i.hd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i
  %i.he = load ptr, ptr %1, align 8, !tbaa !129
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 16384), !inline_history !50
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ab ], [ %i.hb, %.lr.ph.i ] ; 2 uses
  %i.hg = add i64 %.0151.i, 1                     ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %i.hg, %6
  br i1 %exitcond.not.i123, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !51

_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aa, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.aa ], [ %i.gx, %._crit_edge.loopexit.i ]
  %i.hh = load ptr, ptr %1, align 8, !tbaa !129
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.0.lcssa.i), !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.gw, label %.lr.ph.i125, label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i132:                        ; preds = %bb.af
  %i.hj = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i125:                                      ; preds = %bb.ad, %bb.af
  %.03.i = phi i64 [ %.2.i, %bb.af ], [ 0, %bb.ad ] ; 3 uses
  %.0172.i = phi i64 [ %i.hz, %bb.af ], [ %5, %bb.ad ] ; 4 uses
  %i.hk = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i126, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i125
  %i.hl = lshr i64 %.0172.i, 6
  %i.hm = and i64 %.0172.i, 63
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hl
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !301
  %i.hp = shl nuw i64 1, %i.hm
  %i.hq = and i64 %i.ho, %i.hp
  %.not.i127 = icmp eq i64 %i.hq, 0
  br i1 %.not.i127, label %bb.af, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i125
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %.0172.i ; 2 uses
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.hr, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %.sroa.2.0.copyload.i130 = load i64, ptr %.sroa.2.0..sroa_idx.i129, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !748
  %i.hs = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload.i128, i64 %.sroa.2.0.copyload.i130, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ht = load double, ptr %i.a, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.hu = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03.i
  store double %i.ht, ptr %i.hv, align 8, !tbaa !748
  %i.hw = icmp eq i64 %i.hu, 2048
  br i1 %i.hw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.hx = load ptr, ptr %1, align 8, !tbaa !129
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.03.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.ae ], [ %i.hu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.hz = add i64 %.0172.i, 1                     ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %i.hz, %6
  br i1 %exitcond.not.i131, label %._crit_edge.loopexit.i132, label %.lr.ph.i125, !llvm.loop !53

_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ad, %._crit_edge.loopexit.i132
  %.0.lcssa.i124 = phi i64 [ 0, %bb.ad ], [ %i.hj, %._crit_edge.loopexit.i132 ]
  %i.ia = load ptr, ptr %1, align 8, !tbaa !129
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa.i124), !inline_history !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ag:                                            ; preds = %bb.a
  %i.ic = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.am unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ag
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.ie = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.if = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.if) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ak, label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn144 = phi { ptr, i32 } [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ic) #25
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn143 = phi { ptr, i32 } [ %.pn144, %bb.ak ], [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn143

.loopexit:                                        ; preds = %bb.y, %bb.t, %bb.u, %bb.q, %bb.r, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.x, %.loopexit153, %.loopexit150, %.loopexit147, %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.am:                                            ; preds = %bb.ai
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca [2048 x double], align 16         ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca [2048 x double], align 16         ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca double, align 8                   ; 4 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !479  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !762
  switch i32 %i.s, label %bb.aj [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.p
    i32 6, label %bb.t
    i32 9, label %bb.x
    i32 0, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !764, !range !337, !noundef !189
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.w, %i.v
  br i1 %or.cond.not, label %.loopexit175, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.b
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph201, %bb.c
  %.0114200 = phi i64 [ %i.al, %bb.c ], [ %5, %.lr.ph201 ] ; 4 uses
  %i.y = lshr i64 %.0114200, 6
  %i.z = and i64 %.0114200, 63
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !301
  %i.ac = shl nuw i64 1, %i.z
  %i.ad = and i64 %i.ab, %i.ac
  %.not173 = icmp eq i64 %i.ad, 0
  br i1 %.not173, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph201
  %.us-phi203 = phi i64 [ %5, %.lr.ph201 ], [ %.0114200, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !765
  %i.ag = trunc i32 %i.af to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.ag, ptr %i.j, align 1, !tbaa !127
  %i.ah = load ptr, ptr %1, align 8, !tbaa !129
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aj, align 8, !tbaa !547
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ak, align 8, !tbaa !607
  store i8 1, ptr %i.t, align 8, !tbaa !764
  br label %.loopexit175

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.al = add i64 %.0114200, 1                    ; 2 uses
  %exitcond230.not = icmp eq i64 %i.al, %6
  br i1 %exitcond230.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1893

.loopexit175:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1115 = phi i64 [ %5, %bb.b ], [ %.us-phi203, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.am = icmp ult i64 %.1115, %6
  br i1 %i.am, label %.lr.ph205, label %.loopexit

.lr.ph205:                                        ; preds = %.loopexit175
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph205, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2204 = phi i64 [ %.1115, %.lr.ph205 ], [ %i.ck, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i123 = icmp eq ptr %i.av, null
  br i1 %.not.i123, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125: ; preds = %bb.d
  %i.aw = lshr i64 %.2204, 6
  %i.ax = and i64 %.2204, 63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !301
  %i.ba = shl nuw i64 1, %i.ax
  %i.bb = and i64 %i.az, %i.ba
  %.not174 = icmp eq i64 %i.bb, 0
  br i1 %.not174, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit125
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2204 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb20StandardColumnWriterINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138: ; preds = %bb.v
  %i.en = lshr i64 %.2121192, 6
  %i.eo = and i64 %.2121192, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !301
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.not170 = icmp eq i64 %i.es, 0
  br i1 %.not170, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread: ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.2121192 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.et, align 8, !tbaa !301
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !748
  %i.eu = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.06.0.copyload, i64 %.sroa.27.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 0 uses
  %i.ev = load double, ptr %i.f, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  store double %i.ev, ptr %i.n, align 8, !tbaa !748
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIdEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread
  %i.ew = add i64 %.2121192, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ew, %6
  br i1 %exitcond227.not, label %.loopexit, label %bb.v, !llvm.loop !1898

bb.x:                                             ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !767, !range !337, !noundef !189
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fe = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ff = load i64, ptr %i.fa, align 8, !tbaa !551
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !552
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  %i.fk = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, i64 noundef %i.fj), !noalias !1902
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %i.fk, i64 noundef %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.fm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.ex, align 8, !tbaa !767
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fn = icmp ult i64 %5, %6
  br i1 %i.fn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %.0113189 = phi i64 [ %5, %.lr.ph ], [ %i.hv, %bb.ab ] ; 4 uses
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i139 = icmp eq ptr %i.fr, null
  br i1 %.not.i139, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141: ; preds = %bb.aa
  %i.fs = lshr i64 %.0113189, 6
  %i.ft = and i64 %.0113189, 63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !301
  %i.fw = shl nuw i64 1, %i.ft
  %i.fx = and i64 %i.fv, %i.fw
  %.not = icmp eq i64 %i.fx, 0
  br i1 %.not, label %bb.ab, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread: ; preds = %bb.aa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.0113189 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.fy, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !748
  %i.fz = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  %i.ga = load i64, ptr %i.e, align 8, !tbaa !748 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.0.extract.trunc = trunc i64 %i.ga to i8
  %i.gb = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gc = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gd = getelementptr i8, ptr %i.gb, i64 %i.gc
  store i8 %.0.extract.trunc, ptr %i.gd, align 1, !tbaa !127
  %.1.extract.shift = lshr i64 %i.ga, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8
  %i.ge = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gf = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gg = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gh = getelementptr i8, ptr %i.ge, i64 %i.gf
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  store i8 %.1.extract.trunc, ptr %i.gi, align 1, !tbaa !127
  %.2.extract.shift = lshr i64 %i.ga, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %i.gj = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gk = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gl = shl i64 %i.gk, 1
  %i.gm = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gn = getelementptr i8, ptr %i.gj, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gm
  store i8 %.2.extract.trunc, ptr %i.go, align 1, !tbaa !127
  %.3.extract.shift = lshr i64 %i.ga, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %i.gp = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gq = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gr = mul i64 %i.gq, 3
  %i.gs = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gt = getelementptr i8, ptr %i.gp, i64 %i.gr
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gs
  store i8 %.3.extract.trunc, ptr %i.gu, align 1, !tbaa !127
  %.4.extract.shift = lshr i64 %i.ga, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %i.gv = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.gw = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.gx = shl i64 %i.gw, 2
  %i.gy = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.gz = getelementptr i8, ptr %i.gv, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  store i8 %.4.extract.trunc, ptr %i.ha, align 1, !tbaa !127
  %.5.extract.shift = lshr i64 %i.ga, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %i.hb = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.hc = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hd = mul i64 %i.hc, 5
  %i.he = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  store i8 %.5.extract.trunc, ptr %i.hg, align 1, !tbaa !127
  %.6.extract.shift = lshr i64 %i.ga, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %i.hh = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.hi = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hj = mul i64 %i.hi, 6
  %i.hk = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  store i8 %.6.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %.7.extract.shift = lshr i64 %i.ga, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  %i.hn = load ptr, ptr %i.fp, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.hp = mul i64 %i.ho, 7
  %i.hq = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store i8 %.7.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load i64, ptr %i.fq, align 8, !tbaa !600
  %i.hu = add i64 %i.ht, 1
  store i64 %i.hu, ptr %i.fq, align 8, !tbaa !600
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread
  %i.hv = add i64 %.0113189, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.hv, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !1901

bb.ac:                                            ; preds = %bb.a
  %i.hw = load ptr, ptr %i.o, align 8, !tbaa !336
  %.not.i142 = icmp eq ptr %i.hw, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hx = load ptr, ptr %i.p, align 8, !tbaa !479 ; 2 uses
  %i.hy = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i142, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  br i1 %i.hy, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.af
  %i.hz = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ad, %bb.af
  %.02.i = phi i64 [ %.1.i, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.0151.i = phi i64 [ %i.ii, %bb.af ], [ %5, %bb.ad ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %.0151.i ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ia, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !748
  %i.ib = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ic = load double, ptr %i.c, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.id = add nuw nsw i64 %.02.i, 1               ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02.i
  store double %i.ic, ptr %i.ie, align 8, !tbaa !748
  %i.if = icmp eq i64 %i.id, 2048
  br i1 %i.if, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.ig = load ptr, ptr %1, align 8, !tbaa !129
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 16384), !inline_history !50
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ae ], [ %i.id, %.lr.ph.i ] ; 2 uses
  %i.ii = add i64 %.0151.i, 1                     ; 2 uses
  %exitcond.not.i143 = icmp eq i64 %i.ii, %6
  br i1 %exitcond.not.i143, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !51

_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ad, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.ad ], [ %i.hz, %._crit_edge.loopexit.i ]
  %i.ij = load ptr, ptr %1, align 8, !tbaa !129
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %.0.lcssa.i), !inline_history !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hy, label %.lr.ph.i145, label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i152:                        ; preds = %bb.ai
  %i.il = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i145:                                      ; preds = %bb.ag, %bb.ai
  %.03.i = phi i64 [ %.2.i, %bb.ai ], [ 0, %bb.ag ] ; 3 uses
  %.0172.i = phi i64 [ %i.jb, %bb.ai ], [ %5, %bb.ag ] ; 4 uses
  %i.im = load ptr, ptr %i.o, align 8, !tbaa !336 ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.im, null
  br i1 %.not.i.i146, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i145
  %i.in = lshr i64 %.0172.i, 6
  %i.io = and i64 %.0172.i, 63
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !301
  %i.ir = shl nuw i64 1, %i.io
  %i.is = and i64 %i.iq, %i.ir
  %.not.i147 = icmp eq i64 %i.is, 0
  br i1 %.not.i147, label %bb.ai, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i145
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %.0172.i ; 2 uses
  %.sroa.0.0.copyload.i148 = load i64, ptr %i.it, align 8, !tbaa !301
  %.sroa.2.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.sroa.2.0.copyload.i150 = load i64, ptr %.sroa.2.0..sroa_idx.i149, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !748
  %i.iu = call noundef zeroext i1 @_ZN6duckdb8Uhugeint7TryCastIdEEbNS_10uhugeint_tERT_(i64 %.sroa.0.0.copyload.i148, i64 %.sroa.2.0.copyload.i150, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.iv = load double, ptr %i.a, align 8, !tbaa !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.iw = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.03.i
  store double %i.iv, ptr %i.ix, align 8, !tbaa !748
  %i.iy = icmp eq i64 %i.iw, 2048
  br i1 %i.iy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iz = load ptr, ptr %1, align 8, !tbaa !129
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !52
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.03.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.ah ], [ %i.iw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.jb = add i64 %.0172.i, 1                     ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %i.jb, %6
  br i1 %exitcond.not.i151, label %._crit_edge.loopexit.i152, label %.lr.ph.i145, !llvm.loop !53

_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ag, %._crit_edge.loopexit.i152
  %.0.lcssa.i144 = phi i64 [ 0, %bb.ag ], [ %i.il, %._crit_edge.loopexit.i152 ]
  %i.jc = load ptr, ptr %1, align 8, !tbaa !129
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa.i144), !inline_history !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aj:                                            ; preds = %bb.a
  %i.je = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.je, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ap unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aj
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jh = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.jh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn168 = phi { ptr, i32 } [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.je) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn167 = phi { ptr, i32 } [ %.pn168, %bb.an ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn167

.loopexit:                                        ; preds = %bb.ab, %bb.u, %bb.w, %bb.q, %bb.s, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.z, %.loopexit181, %.loopexit178, %.loopexit175, %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.ap:                                            ; preds = %bb.al
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1905 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1905

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !1905
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !1905
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12MemoryStreamESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.g = invoke noundef i64 @_ZNK6duckdb12MemoryStream11GetPositionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb12MemoryStream11SetPositionEm(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !549    ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i: ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(48) %i.i) #25, !inline_history !13
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN6duckdb10uhugeint_tERKdEZNS0_20StandardColumnWriterIS1_dNS0_23ParquetUhugeintOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E9_M_invokeERKSt9_Any_dataS3_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1907, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10uhugeint_tEdNS0_23ParquetUhugeintOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKdE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 0)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1907, !nonnull !189, !align !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.e)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10uhugeint_tEdNS0_23ParquetUhugeintOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKdE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10uhugeint_tEdNS0_23ParquetUhugeintOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKdE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN6duckdb10uhugeint_tERKdEZNS0_20StandardColumnWriterIS1_dNS0_23ParquetUhugeintOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10uhugeint_tEdNS1_23ParquetUhugeintOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterINS_10uhugeint_tEdNS_23ParquetUhugeintOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKS1_RKdE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10uhugeint_tEdNS1_23ParquetUhugeintOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10uhugeint_tEdNS1_23ParquetUhugeintOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1908
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10uhugeint_tEdNS1_23ParquetUhugeintOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10uhugeint_tEdNS1_23ParquetUhugeintOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEE20InitializeWriteStateERN14duckdb_parquet8RowGroupE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.598") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(91) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.955", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427
end_hunk_3
