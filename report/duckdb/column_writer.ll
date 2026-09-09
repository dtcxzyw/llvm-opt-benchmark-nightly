Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/column_writer?download=true
inline.NumInlined: 9971
inline.NumDeleted: 4725
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN6duckdb20StandardColumnWriterIaiNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit116

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit116: ; preds = %bb.aa, %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ex = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ew)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIiEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store i8 1, ptr %i.dz, align 8, !tbaa !548
  %i.ey = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit148

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115
  %i.ez = add i64 %.098155, 1                     ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ez, %6
  br i1 %exitcond195.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115, !llvm.loop !1502

.loopexit148:                                     ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit116, %bb.y
  %.199 = phi i64 [ %5, %bb.y ], [ %i.ey, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit116 ] ; 2 uses
  %i.fa = icmp ult i64 %.199, %6
  br i1 %i.fa, label %.lr.ph158, label %.loopexit

.lr.ph158:                                        ; preds = %.loopexit148
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph158, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117
  %.2157 = phi i64 [ %.199, %.lr.ph158 ], [ %i.fl, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2157
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !127
  %i.fg = sext i8 %i.ff to i32                    ; 5 uses
  store i32 %i.fg, ptr %i.f, align 4, !tbaa !119
  %i.fh = load i32, ptr %i.fb, align 4, !tbaa !119
  %i.fi = icmp sgt i32 %i.fh, %i.fg
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !517
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !119
  %i.fk = icmp slt i32 %i.fj, %i.fg
  br i1 %i.fk, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.fl = add i64 %.2157, 1                       ; 2 uses
  %exitcond196.not = icmp eq i64 %i.fl, %6
  br i1 %exitcond196.not, label %.loopexit, label %bb.ad, !llvm.loop !1503

bb.ah:                                            ; preds = %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !550, !range !337, !noundef !189
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ft = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fs) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fu = load i64, ptr %i.fp, align 8, !tbaa !551
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !552
  %i.fx = mul i64 %i.fw, %i.fu
  %i.fy = add i64 %i.fx, 1                        ; 2 uses
  %i.fz = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i64 noundef %i.fy), !noalias !1507
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef %i.fz, i64 noundef %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fm, align 8, !tbaa !550
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = icmp ult i64 %5, %6
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097154 = phi i64 [ %5, %.lr.ph ], [ %i.hl, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.i, i64 %.097154
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !127 ; 3 uses
  %i.gk = sext i8 %i.gj to i32                    ; 4 uses
  %.sroa.4.0.extract.trunc = ashr i8 %i.gj, 7     ; 3 uses
  %i.gl = load i32, ptr %i.gd, align 4, !tbaa !119
  %i.gm = icmp sgt i32 %i.gl, %i.gk
  br i1 %i.gm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gk, ptr %i.gd, align 8, !tbaa !517
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !119
  %i.go = icmp slt i32 %i.gn, %i.gk
  br i1 %i.go, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gp = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gq = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.gr = getelementptr i8, ptr %i.gp, i64 %i.gq
  store i8 %i.gj, ptr %i.gr, align 1, !tbaa !127
  %i.gs = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gt = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.gv = getelementptr i8, ptr %i.gs, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gw, align 1, !tbaa !127
  %i.gx = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gy = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.gz = shl i64 %i.gy, 1
  %i.ha = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hb = getelementptr i8, ptr %i.gx, i64 %i.gz
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.ha
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hc, align 1, !tbaa !127
  %i.hd = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.he = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.hf = mul i64 %i.he, 3
  %i.hg = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hh = getelementptr i8, ptr %i.hd, i64 %i.hf
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.hg
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hi, align 1, !tbaa !127
  %i.hj = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.gh, align 8, !tbaa !600
  %i.hl = add nuw i64 %.097154, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hl, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !1506

bb.ao:                                            ; preds = %bb.a
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hm, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hn = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.ho = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.ho, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.hr = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.ie, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.02.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !127
  %i.hu = sext i8 %i.ht to i32                    ; 5 uses
  %i.hv = load i32, ptr %i.hp, align 4, !tbaa !119
  %i.hw = icmp sgt i32 %i.hv, %i.hu
  br i1 %i.hw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.hu, ptr %i.hp, align 8, !tbaa !517
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hx = load i32, ptr %i.hq, align 4, !tbaa !119
  %i.hy = icmp slt i32 %i.hx, %i.hu
  br i1 %i.hy, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.hu, ptr %i.hq, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.hz = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.hu, ptr %i.ia, align 4, !tbaa !119
  %i.ib = icmp eq i64 %i.hz, 2048
  br i1 %i.ib, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ic = load ptr, ptr %1, align 8, !tbaa !129
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !20
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.hz, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.ie = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.ie, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !21

_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.hr, %._crit_edge.loopexit.i ]
  %i.if = load ptr, ptr %1, align 8, !tbaa !129
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.ho, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.ij = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jd, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.ik = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.il = lshr i64 %.022.i, 6
  %i.im = and i64 %.022.i, 63
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.il
  %i.io = load i64, ptr %i.in, align 8, !tbaa !301
  %i.ip = shl nuw i64 1, %i.im
  %i.iq = and i64 %i.io, %i.ip
  %.not.i123 = icmp eq i64 %i.iq, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.022.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !127
  %i.it = sext i8 %i.is to i32                    ; 5 uses
  %i.iu = load i32, ptr %i.ih, align 4, !tbaa !119
  %i.iv = icmp sgt i32 %i.iu, %i.it
  br i1 %i.iv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.it, ptr %i.ih, align 8, !tbaa !517
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iw = load i32, ptr %i.ii, align 4, !tbaa !119
  %i.ix = icmp slt i32 %i.iw, %i.it
  br i1 %i.ix, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i32 %i.it, ptr %i.ii, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.iy = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.it, ptr %i.iz, align 4, !tbaa !119
  %i.ja = icmp eq i64 %i.iy, 2048
  br i1 %i.ja, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.jb = load ptr, ptr %1, align 8, !tbaa !129
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.iy, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jd = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jd, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !23

_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ij, %._crit_edge.loopexit.i126 ]
  %i.je = load ptr, ptr %1, align 8, !tbaa !129
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.jg = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.jg, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jj = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.jj) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn139 = phi { ptr, i32 } [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jg) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %.pn139, %bb.bh ], [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn138

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit148, %.loopexit145, %.loopexit142, %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIaiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %i.b = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !543
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !545, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit170, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph194, %bb.c
  %.0111193 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph194 ] ; 4 uses
  %i.q = lshr i64 %.0111193, 6
  %i.r = and i64 %.0111193, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not168 = icmp eq i64 %i.v, 0
  br i1 %.not168, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph194
  %.us-phi196 = phi i64 [ %5, %.lr.ph194 ], [ %.0111193, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !546
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.y, ptr %i.d, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !545
  br label %.loopexit170

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111193, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond227.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1508

.loopexit170:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi196, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.loopexit170
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph203, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113202 = phi i64 [ %.1112, %.lr.ph203 ], [ %i.ch, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113202, 6
  %i.ap = and i64 %.2113202, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not169 = icmp eq i64 %i.at, 0
  br i1 %.not169, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2113202
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !608, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !127 ; 3 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = mul i64 %i.ay, -2960836687051489901     ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -2960836687051489901     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb20StandardColumnWriterIaiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133: ; preds = %bb.ad
  %i.ft = lshr i64 %.2185, 6
  %i.fu = and i64 %.2185, 63
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !301
  %i.fx = shl nuw i64 1, %i.fu
  %i.fy = and i64 %i.fw, %i.fx
  %.not165 = icmp eq i64 %i.fy, 0
  br i1 %.not165, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread: ; preds = %bb.ad, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2185
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !127
  %i.gb = sext i8 %i.ga to i32                    ; 5 uses
  store i32 %i.gb, ptr %i.f, align 4, !tbaa !119
  %i.gc = load i32, ptr %i.fp, align 4, !tbaa !119
  %i.gd = icmp sgt i32 %i.gc, %i.gb
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !517
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  %i.ge = load i32, ptr %i.fq, align 4, !tbaa !119
  %i.gf = icmp slt i32 %i.ge, %i.gb
  br i1 %i.gf, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit134

bb.ag:                                            ; preds = %bb.af
  store i32 %i.gb, ptr %i.fq, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit134

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit134: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit134
  %i.gg = add i64 %.2185, 1                       ; 2 uses
  %exitcond224.not = icmp eq i64 %i.gg, %6
  br i1 %exitcond224.not, label %.loopexit, label %bb.ad, !llvm.loop !1513

bb.ai:                                            ; preds = %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !550, !range !337, !noundef !189
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.go = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gn) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !551
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !552
  %i.gs = mul i64 %i.gr, %i.gp
  %i.gt = add i64 %i.gs, 1                        ; 2 uses
  %i.gu = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef %i.gt), !noalias !1517
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef %i.gu, i64 noundef %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gh, align 8, !tbaa !550
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gx = icmp ult i64 %5, %6
  br i1 %i.gx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105182 = phi i64 [ %5, %.lr.ph ], [ %i.in, %bb.ap ] ; 4 uses
  %i.hd = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hd, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.he = lshr i64 %.0105182, 6
  %i.hf = and i64 %.0105182, 63
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !301
  %i.hi = shl nuw i64 1, %i.hf
  %i.hj = and i64 %i.hh, %i.hi
  %.not = icmp eq i64 %i.hj, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0105182
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !127 ; 3 uses
  %i.hm = sext i8 %i.hl to i32                    ; 4 uses
  %.sroa.4.0.extract.trunc = ashr i8 %i.hl, 7     ; 3 uses
  %i.hn = load i32, ptr %i.gy, align 4, !tbaa !119
  %i.ho = icmp sgt i32 %i.hn, %i.hm
  br i1 %i.ho, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i32 %i.hm, ptr %i.gy, align 8, !tbaa !517
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.hp = load i32, ptr %i.gz, align 4, !tbaa !119
  %i.hq = icmp slt i32 %i.hp, %i.hm
  br i1 %i.hq, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i32 %i.hm, ptr %i.gz, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hr = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.hs = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.ht = getelementptr i8, ptr %i.hr, i64 %i.hs
  store i8 %i.hl, ptr %i.ht, align 1, !tbaa !127
  %i.hu = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.hv = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.hw = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.hx = getelementptr i8, ptr %i.hu, i64 %i.hv
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hw
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hy, align 1, !tbaa !127
  %i.hz = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.ia = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.ib = shl i64 %i.ia, 1
  %i.ic = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.id = getelementptr i8, ptr %i.hz, i64 %i.ib
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.ic
  store i8 %.sroa.4.0.extract.trunc, ptr %i.ie, align 1, !tbaa !127
  %i.if = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.ig = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.ih = mul i64 %i.ig, 3
  %i.ii = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.ij = getelementptr i8, ptr %i.if, i64 %i.ih
  %i.ik = getelementptr i8, ptr %i.ij, i64 %i.ii
  store i8 %.sroa.4.0.extract.trunc, ptr %i.ik, align 1, !tbaa !127
  %i.il = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.im = add i64 %i.il, 1
  store i64 %i.im, ptr %i.hc, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.in = add nuw i64 %.0105182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.in, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !1516

bb.aq:                                            ; preds = %bb.a
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.io, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ip = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.iq = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.iq, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.it = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.jg, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.02.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !127
  %i.iw = sext i8 %i.iv to i32                    ; 5 uses
  %i.ix = load i32, ptr %i.ir, align 4, !tbaa !119
  %i.iy = icmp sgt i32 %i.ix, %i.iw
  br i1 %i.iy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.iw, ptr %i.ir, align 8, !tbaa !517
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.iz = load i32, ptr %i.is, align 4, !tbaa !119
  %i.ja = icmp slt i32 %i.iz, %i.iw
  br i1 %i.ja, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.iw, ptr %i.is, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.jb = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.iw, ptr %i.jc, align 4, !tbaa !119
  %i.jd = icmp eq i64 %i.jb, 2048
  br i1 %i.jd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.je = load ptr, ptr %1, align 8, !tbaa !129
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.jb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.jg = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.jg, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !21

_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.it, %._crit_edge.loopexit.i ]
  %i.jh = load ptr, ptr %1, align 8, !tbaa !129
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.iq, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.jl = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.kf, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.jn = lshr i64 %.022.i, 6
  %i.jo = and i64 %.022.i, 63
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !301
  %i.jr = shl nuw i64 1, %i.jo
  %i.js = and i64 %i.jq, %i.jr
  %.not.i143 = icmp eq i64 %i.js, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.022.i
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !127
  %i.jv = sext i8 %i.ju to i32                    ; 5 uses
  %i.jw = load i32, ptr %i.jj, align 4, !tbaa !119
  %i.jx = icmp sgt i32 %i.jw, %i.jv
  br i1 %i.jx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.jv, ptr %i.jj, align 8, !tbaa !517
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jy = load i32, ptr %i.jk, align 4, !tbaa !119
  %i.jz = icmp slt i32 %i.jy, %i.jv
  br i1 %i.jz, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.jv, ptr %i.jk, align 4, !tbaa !518
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.ka = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.jv, ptr %i.kb, align 4, !tbaa !119
  %i.kc = icmp eq i64 %i.ka, 2048
  br i1 %i.kc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kd = load ptr, ptr %1, align 8, !tbaa !129
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !22
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.ka, %_ZN6duckdb19ParquetCastOperator11HandleStatsIaiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.kf = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.kf, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !23

_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.jl, %._crit_edge.loopexit.i146 ]
  %i.kg = load ptr, ptr %1, align 8, !tbaa !129
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.ki = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.ki, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kl = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.kl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn163 = phi { ptr, i32 } [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ki) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %.pn163, %bb.bj ], [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn162

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit176, %.loopexit173, %.loopexit170, %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIaiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteIiEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
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
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
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
begin_hunk_2_@_ZN6duckdb20StandardColumnWriterIsiNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ex = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ew)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIiEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store i8 1, ptr %i.dz, align 8, !tbaa !630
  %i.ey = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit148

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115
  %i.ez = add i64 %.098155, 1                     ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ez, %6
  br i1 %exitcond195.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115, !llvm.loop !1567

.loopexit148:                                     ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit116, %bb.y
  %.199 = phi i64 [ %5, %bb.y ], [ %i.ey, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit116 ] ; 2 uses
  %i.fa = icmp ult i64 %.199, %6
  br i1 %i.fa, label %.lr.ph158, label %.loopexit

.lr.ph158:                                        ; preds = %.loopexit148
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph158, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117
  %.2157 = phi i64 [ %.199, %.lr.ph158 ], [ %i.fl, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2157
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !319
  %i.fg = sext i16 %i.ff to i32                   ; 5 uses
  store i32 %i.fg, ptr %i.f, align 4, !tbaa !119
  %i.fh = load i32, ptr %i.fb, align 4, !tbaa !119
  %i.fi = icmp sgt i32 %i.fh, %i.fg
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.fg, ptr %i.fb, align 8, !tbaa !622
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fj = load i32, ptr %i.fc, align 4, !tbaa !119
  %i.fk = icmp slt i32 %i.fj, %i.fg
  br i1 %i.fk, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.fl = add i64 %.2157, 1                       ; 2 uses
  %exitcond196.not = icmp eq i64 %i.fl, %6
  br i1 %exitcond196.not, label %.loopexit, label %bb.ad, !llvm.loop !1568

bb.ah:                                            ; preds = %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !631, !range !337, !noundef !189
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ft = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fs) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fu = load i64, ptr %i.fp, align 8, !tbaa !551
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !552
  %i.fx = mul i64 %i.fw, %i.fu
  %i.fy = add i64 %i.fx, 1                        ; 2 uses
  %i.fz = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, i64 noundef %i.fy), !noalias !1572
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef %i.fz, i64 noundef %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fm, align 8, !tbaa !631
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = icmp ult i64 %5, %6
  br i1 %i.gc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097154 = phi i64 [ %5, %.lr.ph ], [ %i.hm, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.097154
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !319 ; 4 uses
  %i.gk = sext i16 %i.gj to i32                   ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.gj to i8
  %.sroa.4.0.extract.shift = lshr i16 %i.gj, 8
  %.sroa.4.0.extract.trunc = trunc nuw i16 %.sroa.4.0.extract.shift to i8
  %i.gl = ashr i16 %i.gj, 15
  %.sroa.5.0.extract.trunc = trunc nsw i16 %i.gl to i8
  %.sroa.6.0.extract.shift = lshr i32 %i.gk, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !119
  %i.gn = icmp sgt i32 %i.gm, %i.gk
  br i1 %i.gn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gk, ptr %i.gd, align 8, !tbaa !622
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.go = load i32, ptr %i.ge, align 4, !tbaa !119
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gr = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.gs = getelementptr i8, ptr %i.gq, i64 %i.gr
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gs, align 1, !tbaa !127
  %i.gt = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gu = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.gv = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.gw = getelementptr i8, ptr %i.gt, i64 %i.gu
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gv
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gx, align 1, !tbaa !127
  %i.gy = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.gz = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.ha = shl i64 %i.gz, 1
  %i.hb = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hc = getelementptr i8, ptr %i.gy, i64 %i.ha
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.hb
  store i8 %.sroa.5.0.extract.trunc, ptr %i.hd, align 1, !tbaa !127
  %i.he = load ptr, ptr %i.gg, align 8, !tbaa !307
  %i.hf = load i64, ptr %i.gf, align 8, !tbaa !551
  %i.hg = mul i64 %i.hf, 3
  %i.hh = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hi = getelementptr i8, ptr %i.he, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.hi, i64 %i.hh
  store i8 %.sroa.6.0.extract.trunc, ptr %i.hj, align 1, !tbaa !127
  %i.hk = load i64, ptr %i.gh, align 8, !tbaa !600
  %i.hl = add i64 %i.hk, 1
  store i64 %i.hl, ptr %i.gh, align 8, !tbaa !600
  %i.hm = add nuw i64 %.097154, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hm, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !1571

bb.ao:                                            ; preds = %bb.a
  %i.hn = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hn, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.hp = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hp, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.hs = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.if, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.02.i
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !319
  %i.hv = sext i16 %i.hu to i32                   ; 5 uses
  %i.hw = load i32, ptr %i.hq, align 4, !tbaa !119
  %i.hx = icmp sgt i32 %i.hw, %i.hv
  br i1 %i.hx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.hv, ptr %i.hq, align 8, !tbaa !622
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hy = load i32, ptr %i.hr, align 4, !tbaa !119
  %i.hz = icmp slt i32 %i.hy, %i.hv
  br i1 %i.hz, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.hv, ptr %i.hr, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.ia = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.hv, ptr %i.ib, align 4, !tbaa !119
  %i.ic = icmp eq i64 %i.ia, 2048
  br i1 %i.ic, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.id = load ptr, ptr %1, align 8, !tbaa !129
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.ia, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.if = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.if, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !26

_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.hs, %._crit_edge.loopexit.i ]
  %i.ig = load ptr, ptr %1, align 8, !tbaa !129
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.hp, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.ik = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.je, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.il, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.im = lshr i64 %.022.i, 6
  %i.in = and i64 %.022.i, 63
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !301
  %i.iq = shl nuw i64 1, %i.in
  %i.ir = and i64 %i.ip, %i.iq
  %.not.i123 = icmp eq i64 %i.ir, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.022.i
  %i.it = load i16, ptr %i.is, align 2, !tbaa !319
  %i.iu = sext i16 %i.it to i32                   ; 5 uses
  %i.iv = load i32, ptr %i.ii, align 4, !tbaa !119
  %i.iw = icmp sgt i32 %i.iv, %i.iu
  br i1 %i.iw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.iu, ptr %i.ii, align 8, !tbaa !622
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ix = load i32, ptr %i.ij, align 4, !tbaa !119
  %i.iy = icmp slt i32 %i.ix, %i.iu
  br i1 %i.iy, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i32 %i.iu, ptr %i.ij, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.iz = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.iu, ptr %i.ja, align 4, !tbaa !119
  %i.jb = icmp eq i64 %i.iz, 2048
  br i1 %i.jb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.jc = load ptr, ptr %1, align 8, !tbaa !129
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !27
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.iz, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.je = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.je, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !28

_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ik, %._crit_edge.loopexit.i126 ]
  %i.jf = load ptr, ptr %1, align 8, !tbaa !129
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.jh = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jk = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.jk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn139 = phi { ptr, i32 } [ %i.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jh) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %.pn139, %bb.bh ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn138

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit148, %.loopexit145, %.loopexit142, %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIsiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %i.b = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !626
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !628, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit170, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph194, %bb.c
  %.0111193 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph194 ] ; 4 uses
  %i.q = lshr i64 %.0111193, 6
  %i.r = and i64 %.0111193, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not168 = icmp eq i64 %i.v, 0
  br i1 %.not168, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph194
  %.us-phi196 = phi i64 [ %5, %.lr.ph194 ], [ %.0111193, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !629
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.y, ptr %i.d, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !628
  br label %.loopexit170

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111193, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond227.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1573

.loopexit170:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi196, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.loopexit170
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph203, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113202 = phi i64 [ %.1112, %.lr.ph203 ], [ %i.ch, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113202, 6
  %i.ap = and i64 %.2113202, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not169 = icmp eq i64 %i.at, 0
  br i1 %.not169, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2113202
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !639, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i16, ptr %i.au, align 2, !tbaa !319 ; 3 uses
  %i.ax = sext i16 %i.aw to i64
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = mul i64 %i.ay, -2960836687051489901     ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -2960836687051489901     ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb20StandardColumnWriterIsiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.fy = and i64 %i.fw, %i.fx
  %.not165 = icmp eq i64 %i.fy, 0
  br i1 %.not165, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread: ; preds = %bb.ad, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2185
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !319
  %i.gb = sext i16 %i.ga to i32                   ; 5 uses
  store i32 %i.gb, ptr %i.f, align 4, !tbaa !119
  %i.gc = load i32, ptr %i.fp, align 4, !tbaa !119
  %i.gd = icmp sgt i32 %i.gc, %i.gb
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  store i32 %i.gb, ptr %i.fp, align 8, !tbaa !622
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  %i.ge = load i32, ptr %i.fq, align 4, !tbaa !119
  %i.gf = icmp slt i32 %i.ge, %i.gb
  br i1 %i.gf, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit134

bb.ag:                                            ; preds = %bb.af
  store i32 %i.gb, ptr %i.fq, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit134

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit134: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit134
  %i.gg = add i64 %.2185, 1                       ; 2 uses
  %exitcond224.not = icmp eq i64 %i.gg, %6
  br i1 %exitcond224.not, label %.loopexit, label %bb.ad, !llvm.loop !1578

bb.ai:                                            ; preds = %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !631, !range !337, !noundef !189
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.go = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gn) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.gp = load i64, ptr %i.gk, align 8, !tbaa !551
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !552
  %i.gs = mul i64 %i.gr, %i.gp
  %i.gt = add i64 %i.gs, 1                        ; 2 uses
  %i.gu = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef %i.gt), !noalias !1582
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef %i.gu, i64 noundef %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gh, align 8, !tbaa !631
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gx = icmp ult i64 %5, %6
  br i1 %i.gx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105182 = phi i64 [ %5, %.lr.ph ], [ %i.io, %bb.ap ] ; 4 uses
  %i.hd = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hd, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.he = lshr i64 %.0105182, 6
  %i.hf = and i64 %.0105182, 63
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.he
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !301
  %i.hi = shl nuw i64 1, %i.hf
  %i.hj = and i64 %i.hh, %i.hi
  %.not = icmp eq i64 %i.hj, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.0105182
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !319 ; 4 uses
  %i.hm = sext i16 %i.hl to i32                   ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.hl to i8
  %.sroa.4.0.extract.shift = lshr i16 %i.hl, 8
  %.sroa.4.0.extract.trunc = trunc nuw i16 %.sroa.4.0.extract.shift to i8
  %i.hn = ashr i16 %i.hl, 15
  %.sroa.5.0.extract.trunc = trunc nsw i16 %i.hn to i8
  %.sroa.6.0.extract.shift = lshr i32 %i.hm, 24
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i8
  %i.ho = load i32, ptr %i.gy, align 4, !tbaa !119
  %i.hp = icmp sgt i32 %i.ho, %i.hm
  br i1 %i.hp, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i32 %i.hm, ptr %i.gy, align 8, !tbaa !622
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.hq = load i32, ptr %i.gz, align 4, !tbaa !119
  %i.hr = icmp slt i32 %i.hq, %i.hm
  br i1 %i.hr, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i32 %i.hm, ptr %i.gz, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hs = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.ht = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.hu = getelementptr i8, ptr %i.hs, i64 %i.ht
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hu, align 1, !tbaa !127
  %i.hv = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.hw = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.hx = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.hy = getelementptr i8, ptr %i.hv, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hz, align 1, !tbaa !127
  %i.ia = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.ib = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.ic = shl i64 %i.ib, 1
  %i.id = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.ie = getelementptr i8, ptr %i.ia, i64 %i.ic
  %i.if = getelementptr i8, ptr %i.ie, i64 %i.id
  store i8 %.sroa.5.0.extract.trunc, ptr %i.if, align 1, !tbaa !127
  %i.ig = load ptr, ptr %i.hb, align 8, !tbaa !307
  %i.ih = load i64, ptr %i.ha, align 8, !tbaa !551
  %i.ii = mul i64 %i.ih, 3
  %i.ij = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.ik = getelementptr i8, ptr %i.ig, i64 %i.ii
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ij
  store i8 %.sroa.6.0.extract.trunc, ptr %i.il, align 1, !tbaa !127
  %i.im = load i64, ptr %i.hc, align 8, !tbaa !600
  %i.in = add i64 %i.im, 1
  store i64 %i.in, ptr %i.hc, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.io = add nuw i64 %.0105182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.io, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !1581

bb.aq:                                            ; preds = %bb.a
  %i.ip = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.ip, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.ir = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.ir, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.iu = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.jh, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %.02.i
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !319
  %i.ix = sext i16 %i.iw to i32                   ; 5 uses
  %i.iy = load i32, ptr %i.is, align 4, !tbaa !119
  %i.iz = icmp sgt i32 %i.iy, %i.ix
  br i1 %i.iz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.ix, ptr %i.is, align 8, !tbaa !622
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ja = load i32, ptr %i.it, align 4, !tbaa !119
  %i.jb = icmp slt i32 %i.ja, %i.ix
  br i1 %i.jb, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.ix, ptr %i.it, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.jc = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.ix, ptr %i.jd, align 4, !tbaa !119
  %i.je = icmp eq i64 %i.jc, 2048
  br i1 %i.je, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jf = load ptr, ptr %1, align 8, !tbaa !129
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !25
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.jc, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.jh = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.jh, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !26

_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.iu, %._crit_edge.loopexit.i ]
  %i.ji = load ptr, ptr %1, align 8, !tbaa !129
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.ir, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.jm = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.kg, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.jn = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.jo = lshr i64 %.022.i, 6
  %i.jp = and i64 %.022.i, 63
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jo
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !301
  %i.js = shl nuw i64 1, %i.jp
  %i.jt = and i64 %i.jr, %i.js
  %.not.i143 = icmp eq i64 %i.jt, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %.022.i
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !319
  %i.jw = sext i16 %i.jv to i32                   ; 5 uses
  %i.jx = load i32, ptr %i.jk, align 4, !tbaa !119
  %i.jy = icmp sgt i32 %i.jx, %i.jw
  br i1 %i.jy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !622
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jz = load i32, ptr %i.jl, align 4, !tbaa !119
  %i.ka = icmp slt i32 %i.jz, %i.jw
  br i1 %i.ka, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.jw, ptr %i.jl, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.kb = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.jw, ptr %i.kc, align 4, !tbaa !119
  %i.kd = icmp eq i64 %i.kb, 2048
  br i1 %i.kd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.ke = load ptr, ptr %1, align 8, !tbaa !129
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.kb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.kg = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.kg, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !28

_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.jm, %._crit_edge.loopexit.i146 ]
  %i.kh = load ptr, ptr %1, align 8, !tbaa !129
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.kj = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.kj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.km = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.km) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn163 = phi { ptr, i32 } [ %i.kk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kj) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %.pn163, %bb.bj ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn162

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit176, %.loopexit173, %.loopexit170, %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIsiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryIsiNS_19ParquetCastOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1585 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1585

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !1585
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !1585
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKsRKiEZN6duckdb20StandardColumnWriterIsiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E9_M_invokeERKSt9_Any_dataS1_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1587, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !119    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119
  %i.f = icmp sgt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !622
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !119
  %i.i = icmp sgt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.g, align 4, !tbaa !623
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1588, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIsiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKsRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1588, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIsiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKsRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIsiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKsRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIsiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKsRKiEZN6duckdb20StandardColumnWriterIsiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIsiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKsRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterIsiNS_19ParquetCastOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKsRKiE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIsiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKsRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIsiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKsRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1589
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIsiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKsRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb20StandardColumnWriterIiiNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

bb.an:                                            ; preds = %bb.am
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.gj
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gk, align 1, !tbaa !127
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gm = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gn = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.go = getelementptr i8, ptr %i.gl, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gp, align 1, !tbaa !127
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gr = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gs = shl i64 %i.gr, 1
  %i.gt = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gu = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store i8 %.sroa.5.0.extract.trunc, ptr %i.gv, align 1, !tbaa !127
  %i.gw = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gx = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gy = mul i64 %i.gx, 3
  %i.gz = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gz
  store i8 %.sroa.6.0.extract.trunc, ptr %i.hb, align 1, !tbaa !127
  %i.hc = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.gb, align 8, !tbaa !600
  %i.he = add nuw i64 %.097153, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.he, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !1636

bb.ao:                                            ; preds = %bb.a
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hf, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i119, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.hh = icmp ult i64 %5, %6
  br i1 %i.hh, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %.promoted.i = load i32, ptr %i.hi, align 4, !tbaa !119 ; 3 uses
  %.promoted2.i = load i32, ptr %i.hj, align 4, !tbaa !119 ; 3 uses
  %i.hk = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.hk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %5
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !119 ; 6 uses
  %i.hn = icmp sgt i32 %.promoted.i, %i.hm
  br i1 %i.hn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.prol.preheader
  store i32 %i.hm, ptr %i.hi, align 8, !tbaa !650
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.prol.preheader
  %i.ho = phi i32 [ %i.hm, %bb.aq ], [ %.promoted.i, %.prol.preheader ]
  %i.hp = icmp sgt i32 %i.hm, %.promoted2.i
  br i1 %i.hp, label %bb.as, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.as:                                            ; preds = %bb.ar
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.as, %bb.ar
  %i.hq = phi i32 [ %.promoted2.i, %bb.ar ], [ %i.hm, %bb.as ]
  %i.hr = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i32 [ %.promoted2.i, %.lr.ph.i ], [ %i.hq, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr276 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ho, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.hr, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.hs = icmp eq i64 %6, %.neg
  br i1 %i.hs, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.ht = phi i32 [ %i.ih, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.hu = phi i32 [ %i.if, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr276, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.ii, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.01.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !119 ; 6 uses
  %i.hx = icmp sgt i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.new
  store i32 %i.hw, ptr %i.hi, align 8, !tbaa !650
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.new
  %i.hy = phi i32 [ %i.hw, %bb.at ], [ %i.hu, %.lr.ph.i.new ] ; 2 uses
  %i.hz = icmp sgt i32 %i.hw, %i.ht
  br i1 %i.hz, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.hw, ptr %i.hj, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ia = phi i32 [ %i.ht, %bb.au ], [ %i.hw, %bb.av ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.01.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !119 ; 6 uses
  %i.ie = icmp sgt i32 %i.hy, %i.id
  br i1 %i.ie, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i32 %i.id, ptr %i.hi, align 8, !tbaa !650
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.if = phi i32 [ %i.id, %bb.aw ], [ %i.hy, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.ig = icmp sgt i32 %i.id, %i.ia
  br i1 %i.ig, label %bb.ay, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.id, ptr %i.hj, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ay, %bb.ax
  %i.ih = phi i32 [ %i.ia, %bb.ax ], [ %i.id, %bb.ay ]
  %i.ii = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i120.1 = icmp eq i64 %i.ii, %6
  br i1 %exitcond.not.i120.1, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !30

_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ap
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %5
  %i.ik = sub i64 %6, %5
  %i.il = shl i64 %i.ik, 2
  %i.im = load ptr, ptr %1, align 8, !tbaa !129
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ij, i64 noundef %i.il), !inline_history !31
  br label %.loopexit

bb.az:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.io = icmp ult i64 %5, %6
  br i1 %i.io, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ba

._crit_edge.loopexit.i:                           ; preds = %bb.bf
  %i.ir = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jk, %bb.bf ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bf ] ; 3 uses
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.is, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ba
  %i.it = lshr i64 %.022.i, 6
  %i.iu = and i64 %.022.i, 63
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !301
  %i.ix = shl nuw i64 1, %i.iu
  %i.iy = and i64 %i.iw, %i.ix
  %.not.i123 = icmp eq i64 %i.iy, 0
  br i1 %.not.i123, label %bb.bf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ba
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.022.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !119 ; 5 uses
  %i.jb = load i32, ptr %i.ip, align 4, !tbaa !119
  %i.jc = icmp sgt i32 %i.jb, %i.ja
  br i1 %i.jc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.ja, ptr %i.ip, align 8, !tbaa !650
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jd = load i32, ptr %i.iq, align 4, !tbaa !119
  %i.je = icmp sgt i32 %i.ja, %i.jd
  br i1 %i.je, label %bb.bd, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ja, ptr %i.iq, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.bd, %bb.bc
  %i.jf = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.ja, ptr %i.jg, align 4, !tbaa !119
  %i.jh = icmp eq i64 %i.jf, 2048
  br i1 %i.jh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.ji = load ptr, ptr %1, align 8, !tbaa !129
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.be ], [ %i.jf, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jk = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jk, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i, label %bb.ba, !llvm.loop !33

_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.az, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.az ], [ %i.ir, %._crit_edge.loopexit.i ]
  %i.jl = load ptr, ptr %1, align 8, !tbaa !129
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bg:                                            ; preds = %bb.a
  %i.jn = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.jn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bm unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bg
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jq = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.jq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jn) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.bk ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bm:                                            ; preds = %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIiiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !479  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !654
  switch i32 %i.j, label %bb.bi [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !656, !range !337, !noundef !189
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.n, %i.m
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0111192 = phi i64 [ %i.ac, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.p = lshr i64 %.0111192, 6
  %i.q = and i64 %.0111192, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !301
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not167 = icmp eq i64 %i.u, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0111192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.w = load i32, ptr %i.v, align 4, !tbaa !657
  %i.x = trunc i32 %i.w to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.x, ptr %i.c, align 1, !tbaa !127
  %i.y = load ptr, ptr %1, align 8, !tbaa !129
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aa, align 8, !tbaa !547
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ab, align 8, !tbaa !607
  store i8 1, ptr %i.k, align 8, !tbaa !656
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = add i64 %.0111192, 1                    ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ac, %6
  br i1 %exitcond226.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1638

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ad = icmp ult i64 %.1112, %6
  br i1 %i.ad, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.loopexit169
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113201 = phi i64 [ %.1112, %.lr.ph202 ], [ %i.cf, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.am, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.an = lshr i64 %.2113201, 6
  %i.ao = and i64 %.2113201, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !301
  %i.ar = shl nuw i64 1, %i.ao
  %i.as = and i64 %i.aq, %i.ar
  %.not168 = icmp eq i64 %i.as, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.2113201
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !667, !nonnull !189, !align !190 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !119 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul i64 %i.aw, -2960836687051489901     ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -2960836687051489901     ; 2 uses
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = xor i64 %i.bb, %i.ba
end_hunk_4
begin_hunk_5_@_ZN6duckdb20StandardColumnWriterIiiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hl = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hp = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hq = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.hp
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hr, align 1, !tbaa !127
  %i.hs = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ht = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hu = shl i64 %i.ht, 1
  %i.hv = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hw = getelementptr i8, ptr %i.hs, i64 %i.hu
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hv
  store i8 %.sroa.5.0.extract.trunc, ptr %i.hx, align 1, !tbaa !127
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hz = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.ia = mul i64 %i.hz, 3
  %i.ib = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib
  store i8 %.sroa.6.0.extract.trunc, ptr %i.id, align 1, !tbaa !127
  %i.ie = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.gw, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.ig = add nuw i64 %.0105181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ig, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !1646

bb.aq:                                            ; preds = %bb.a
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.ih, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i139, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.ij = icmp ult i64 %5, %6
  br i1 %i.ij, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %.promoted.i = load i32, ptr %i.ik, align 4, !tbaa !119 ; 3 uses
  %.promoted2.i = load i32, ptr %i.il, align 4, !tbaa !119 ; 3 uses
  %i.im = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.im, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %5
  %i.io = load i32, ptr %i.in, align 4, !tbaa !119 ; 6 uses
  %i.ip = icmp sgt i32 %.promoted.i, %i.io
  br i1 %i.ip, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.prol.preheader
  store i32 %i.io, ptr %i.ik, align 8, !tbaa !650
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.prol.preheader
  %i.iq = phi i32 [ %i.io, %bb.as ], [ %.promoted.i, %.prol.preheader ]
  %i.ir = icmp sgt i32 %i.io, %.promoted2.i
  br i1 %i.ir, label %bb.au, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.au:                                            ; preds = %bb.at
  store i32 %i.io, ptr %i.il, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.au, %bb.at
  %i.is = phi i32 [ %.promoted2.i, %bb.at ], [ %i.io, %bb.au ]
  %i.it = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i32 [ %.promoted2.i, %.lr.ph.i ], [ %i.is, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr308 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.iq, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.it, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.iu = icmp eq i64 %6, %.neg
  br i1 %i.iu, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.iv = phi i32 [ %i.jj, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.iw = phi i32 [ %i.jh, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr308, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.jk, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.01.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !119 ; 6 uses
  %i.iz = icmp sgt i32 %i.iw, %i.iy
  br i1 %i.iz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i.new
  store i32 %i.iy, ptr %i.ik, align 8, !tbaa !650
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i.new
  %i.ja = phi i32 [ %i.iy, %bb.av ], [ %i.iw, %.lr.ph.i.new ] ; 2 uses
  %i.jb = icmp sgt i32 %i.iy, %i.iv
  br i1 %i.jb, label %bb.ax, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.iy, ptr %i.il, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.ax, %bb.aw
  %i.jc = phi i32 [ %i.iv, %bb.aw ], [ %i.iy, %bb.ax ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.01.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !119 ; 6 uses
  %i.jg = icmp sgt i32 %i.ja, %i.jf
  br i1 %i.jg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i32 %i.jf, ptr %i.ik, align 8, !tbaa !650
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jh = phi i32 [ %i.jf, %bb.ay ], [ %i.ja, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.ji = icmp sgt i32 %i.jf, %i.jc
  br i1 %i.ji, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ba:                                            ; preds = %bb.az
  store i32 %i.jf, ptr %i.il, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ba, %bb.az
  %i.jj = phi i32 [ %i.jc, %bb.az ], [ %i.jf, %bb.ba ]
  %i.jk = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %i.jk, %6
  br i1 %exitcond.not.i140.1, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !30

_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ar
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %5
  %i.jm = sub i64 %6, %5
  %i.jn = shl i64 %i.jm, 2
  %i.jo = load ptr, ptr %1, align 8, !tbaa !129
  %i.jp = load ptr, ptr %i.jo, align 8
  tail call void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jl, i64 noundef %i.jn), !inline_history !31
  br label %.loopexit

bb.bb:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jq = icmp ult i64 %5, %6
  br i1 %i.jq, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.bc

._crit_edge.loopexit.i:                           ; preds = %bb.bh
  %i.jt = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.km, %bb.bh ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.bh ] ; 3 uses
  %i.ju = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.bc
  %i.jv = lshr i64 %.022.i, 6
  %i.jw = and i64 %.022.i, 63
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jv
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !301
  %i.jz = shl nuw i64 1, %i.jw
  %i.ka = and i64 %i.jy, %i.jz
  %.not.i143 = icmp eq i64 %i.ka, 0
  br i1 %.not.i143, label %bb.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.bc
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.022.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !119 ; 5 uses
  %i.kd = load i32, ptr %i.jr, align 4, !tbaa !119
  %i.ke = icmp sgt i32 %i.kd, %i.kc
  br i1 %i.ke, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.kc, ptr %i.jr, align 8, !tbaa !650
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.kf = load i32, ptr %i.js, align 4, !tbaa !119
  %i.kg = icmp sgt i32 %i.kc, %i.kf
  br i1 %i.kg, label %bb.bf, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bf:                                            ; preds = %bb.be
  store i32 %i.kc, ptr %i.js, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bf, %bb.be
  %i.kh = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.kc, ptr %i.ki, align 4, !tbaa !119
  %i.kj = icmp eq i64 %i.kh, 2048
  br i1 %i.kj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kk = load ptr, ptr %1, align 8, !tbaa !129
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bg ], [ %i.kh, %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.km = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.km, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i, label %bb.bc, !llvm.loop !33

_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.bb, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.jt, %._crit_edge.loopexit.i ]
  %i.kn = load ptr, ptr %1, align 8, !tbaa !129
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bi:                                            ; preds = %bb.a
  %i.kp = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.kp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bo unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bi
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ks = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.ks) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kp) #25
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.bm ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIiiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bo:                                            ; preds = %bb.bk
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryIiiNS_19ParquetCastOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1650 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1650

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !1650
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !1650
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKiS1_EZN6duckdb20StandardColumnWriterIiiNS3_19ParquetCastOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataS1_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1652, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !119    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119
  %i.f = icmp sgt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !650
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !119
  %i.i = icmp sgt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.g, align 4, !tbaa !651
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1653, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIiiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKiS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1653, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIiiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKiS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIiiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKiS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIiiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKiS1_EZN6duckdb20StandardColumnWriterIiiNS3_19ParquetCastOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIiiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKiSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterIiiNS_19ParquetCastOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKiS8_E_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIiiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKiSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIiiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKiSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1654
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIiiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKiSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit
end_hunk_5
begin_hunk_6_@_ZN6duckdb20StandardColumnWriterIllNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  store i8 %.sroa.6.0.extract.trunc, ptr %i.ha, align 1, !tbaa !127
  %i.hb = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hc = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hd = shl i64 %i.hc, 2
  %i.he = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  store i8 %.sroa.7.0.extract.trunc, ptr %i.hg, align 1, !tbaa !127
  %i.hh = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hi = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hj = mul i64 %i.hi, 5
  %i.hk = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  store i8 %.sroa.8.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hp = mul i64 %i.ho, 6
  %i.hq = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store i8 %.sroa.9.0.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hu = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hv = mul i64 %i.hu, 7
  %i.hw = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hx = getelementptr i8, ptr %i.ht, i64 %i.hv
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hw
  store i8 %.sroa.10.0.extract.trunc, ptr %i.hy, align 1, !tbaa !127
  %i.hz = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.ga, align 8, !tbaa !600
  %i.ib = add nuw i64 %.097152, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !1699

bb.ao:                                            ; preds = %bb.a
  %i.ic = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.ic, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i119, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.ie = icmp ult i64 %5, %6
  br i1 %i.ie, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.promoted.i = load i64, ptr %i.if, align 8, !tbaa !301 ; 3 uses
  %.promoted2.i = load i64, ptr %i.ig, align 8, !tbaa !301 ; 3 uses
  %i.ih = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.ih, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %5
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !301 ; 6 uses
  %i.ik = icmp sgt i64 %.promoted.i, %i.ij
  br i1 %i.ik, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.prol.preheader
  store i64 %i.ij, ptr %i.if, align 8, !tbaa !678
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.prol.preheader
  %i.il = phi i64 [ %i.ij, %bb.aq ], [ %.promoted.i, %.prol.preheader ]
  %i.im = icmp sgt i64 %i.ij, %.promoted2.i
  br i1 %i.im, label %bb.as, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ij, ptr %i.ig, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.as, %bb.ar
  %i.in = phi i64 [ %.promoted2.i, %bb.ar ], [ %i.ij, %bb.as ]
  %i.io = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i64 [ %.promoted2.i, %.lr.ph.i ], [ %i.in, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr275 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.il, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.io, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.ip = icmp eq i64 %6, %.neg
  br i1 %i.ip, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.iq = phi i64 [ %i.je, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.ir = phi i64 [ %i.jc, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr275, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.jf, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.01.i
  %i.it = load i64, ptr %i.is, align 8, !tbaa !301 ; 6 uses
  %i.iu = icmp sgt i64 %i.ir, %i.it
  br i1 %i.iu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.new
  store i64 %i.it, ptr %i.if, align 8, !tbaa !678
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.new
  %i.iv = phi i64 [ %i.it, %bb.at ], [ %i.ir, %.lr.ph.i.new ] ; 2 uses
  %i.iw = icmp sgt i64 %i.it, %i.iq
  br i1 %i.iw, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i64 %i.it, ptr %i.ig, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ix = phi i64 [ %i.iq, %bb.au ], [ %i.it, %bb.av ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.01.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !301 ; 6 uses
  %i.jb = icmp sgt i64 %i.iv, %i.ja
  br i1 %i.jb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i64 %i.ja, ptr %i.if, align 8, !tbaa !678
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jc = phi i64 [ %i.ja, %bb.aw ], [ %i.iv, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.jd = icmp sgt i64 %i.ja, %i.ix
  br i1 %i.jd, label %bb.ay, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.ja, ptr %i.ig, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ay, %bb.ax
  %i.je = phi i64 [ %i.ix, %bb.ax ], [ %i.ja, %bb.ay ]
  %i.jf = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i120.1 = icmp eq i64 %i.jf, %6
  br i1 %exitcond.not.i120.1, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !35

_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ap
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %5
  %i.jh = sub i64 %6, %5
  %i.ji = shl i64 %i.jh, 3
  %i.jj = load ptr, ptr %1, align 8, !tbaa !129
  %i.jk = load ptr, ptr %i.jj, align 8
  tail call void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jg, i64 noundef %i.ji), !inline_history !36
  br label %.loopexit

bb.az:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jl = icmp ult i64 %5, %6
  br i1 %i.jl, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.az
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ba

._crit_edge.loopexit.i:                           ; preds = %bb.bf
  %i.jo = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.kh, %bb.bf ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bf ] ; 3 uses
  %i.jp = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ba
  %i.jq = lshr i64 %.022.i, 6
  %i.jr = and i64 %.022.i, 63
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !301
  %i.ju = shl nuw i64 1, %i.jr
  %i.jv = and i64 %i.jt, %i.ju
  %.not.i123 = icmp eq i64 %i.jv, 0
  br i1 %.not.i123, label %bb.bf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ba
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.022.i
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !301 ; 5 uses
  %i.jy = load i64, ptr %i.jm, align 8, !tbaa !301
  %i.jz = icmp sgt i64 %i.jy, %i.jx
  br i1 %i.jz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.jx, ptr %i.jm, align 8, !tbaa !678
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ka = load i64, ptr %i.jn, align 8, !tbaa !301
  %i.kb = icmp sgt i64 %i.jx, %i.ka
  br i1 %i.kb, label %bb.bd, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.jx, ptr %i.jn, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.bd, %bb.bc
  %i.kc = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.jx, ptr %i.kd, align 8, !tbaa !301
  %i.ke = icmp eq i64 %i.kc, 2048
  br i1 %i.ke, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.kf = load ptr, ptr %1, align 8, !tbaa !129
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !37
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.be ], [ %i.kc, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.kh = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.kh, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i, label %bb.ba, !llvm.loop !38

_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.az, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.az ], [ %i.jo, %._crit_edge.loopexit.i ]
  %i.ki = load ptr, ptr %1, align 8, !tbaa !129
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bg:                                            ; preds = %bb.a
  %i.kk = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bm unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bg
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kn = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.kn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kk) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn136 = phi { ptr, i32 } [ %.pn137, %bb.bk ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn136

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit146, %.loopexit143, %.loopexit140, %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bm:                                            ; preds = %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIllNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !479  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !682
  switch i32 %i.j, label %bb.bi [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !684, !range !337, !noundef !189
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.n, %i.m
  br i1 %or.cond.not, label %.loopexit168, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph192, %bb.c
  %.0111191 = phi i64 [ %i.ac, %bb.c ], [ %5, %.lr.ph192 ] ; 4 uses
  %i.p = lshr i64 %.0111191, 6
  %i.q = and i64 %.0111191, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !301
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not166 = icmp eq i64 %i.u, 0
  br i1 %.not166, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph192
  %.us-phi194 = phi i64 [ %5, %.lr.ph192 ], [ %.0111191, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.w = load i32, ptr %i.v, align 4, !tbaa !685
  %i.x = trunc i32 %i.w to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.x, ptr %i.b, align 1, !tbaa !127
  %i.y = load ptr, ptr %1, align 8, !tbaa !129
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aa, align 8, !tbaa !547
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ab, align 8, !tbaa !607
  store i8 1, ptr %i.k, align 8, !tbaa !684
  br label %.loopexit168

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = add i64 %.0111191, 1                    ; 2 uses
  %exitcond225.not = icmp eq i64 %i.ac, %6
  br i1 %exitcond225.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1701

.loopexit168:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi194, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ad = icmp ult i64 %.1112, %6
  br i1 %i.ad, label %.lr.ph201, label %.loopexit

.lr.ph201:                                        ; preds = %.loopexit168
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph201, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113200 = phi i64 [ %.1112, %.lr.ph201 ], [ %i.cg, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.am, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.an = lshr i64 %.2113200, 6
  %i.ao = and i64 %.2113200, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !301
  %i.ar = shl nuw i64 1, %i.ao
  %i.as = and i64 %i.aq, %i.ar
  %.not167 = icmp eq i64 %i.as, 0
  br i1 %.not167, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2113200
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !697, !nonnull !189, !align !190 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !301 ; 4 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -2960836687051489901     ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -2960836687051489901     ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
end_hunk_6
begin_hunk_7_@_ZN6duckdb20StandardColumnWriterIllNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ie = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.if = shl i64 %i.ie, 2
  %i.ig = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.ih = getelementptr i8, ptr %i.id, i64 %i.if
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ig
  store i8 %.sroa.7.0.extract.trunc, ptr %i.ii, align 1, !tbaa !127
  %i.ij = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.ik = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.il = mul i64 %i.ik, 5
  %i.im = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.in = getelementptr i8, ptr %i.ij, i64 %i.il
  %i.io = getelementptr i8, ptr %i.in, i64 %i.im
  store i8 %.sroa.8.0.extract.trunc, ptr %i.io, align 1, !tbaa !127
  %i.ip = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.iq = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.ir = mul i64 %i.iq, 6
  %i.is = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.it = getelementptr i8, ptr %i.ip, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.is
  store i8 %.sroa.9.0.extract.trunc, ptr %i.iu, align 1, !tbaa !127
  %i.iv = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.iw = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.ix = mul i64 %i.iw, 7
  %i.iy = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.iz = getelementptr i8, ptr %i.iv, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.iy
  store i8 %.sroa.10.0.extract.trunc, ptr %i.ja, align 1, !tbaa !127
  %i.jb = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.gv, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.jd = add nuw i64 %.0105180, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jd, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !1709

bb.aq:                                            ; preds = %bb.a
  %i.je = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.je, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i139, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.jg = icmp ult i64 %5, %6
  br i1 %i.jg, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.promoted.i = load i64, ptr %i.jh, align 8, !tbaa !301 ; 3 uses
  %.promoted2.i = load i64, ptr %i.ji, align 8, !tbaa !301 ; 3 uses
  %i.jj = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.jj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %5
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !301 ; 6 uses
  %i.jm = icmp sgt i64 %.promoted.i, %i.jl
  br i1 %i.jm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.prol.preheader
  store i64 %i.jl, ptr %i.jh, align 8, !tbaa !678
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.prol.preheader
  %i.jn = phi i64 [ %i.jl, %bb.as ], [ %.promoted.i, %.prol.preheader ]
  %i.jo = icmp sgt i64 %i.jl, %.promoted2.i
  br i1 %i.jo, label %bb.au, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.au:                                            ; preds = %bb.at
  store i64 %i.jl, ptr %i.ji, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.au, %bb.at
  %i.jp = phi i64 [ %.promoted2.i, %bb.at ], [ %i.jl, %bb.au ]
  %i.jq = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i64 [ %.promoted2.i, %.lr.ph.i ], [ %i.jp, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr307 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.jn, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.jq, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.jr = icmp eq i64 %6, %.neg
  br i1 %i.jr, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.js = phi i64 [ %i.kg, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.jt = phi i64 [ %i.ke, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr307, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.kh, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.01.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !301 ; 6 uses
  %i.jw = icmp sgt i64 %i.jt, %i.jv
  br i1 %i.jw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i.new
  store i64 %i.jv, ptr %i.jh, align 8, !tbaa !678
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i.new
  %i.jx = phi i64 [ %i.jv, %bb.av ], [ %i.jt, %.lr.ph.i.new ] ; 2 uses
  %i.jy = icmp sgt i64 %i.jv, %i.js
  br i1 %i.jy, label %bb.ax, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.jv, ptr %i.ji, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.ax, %bb.aw
  %i.jz = phi i64 [ %i.js, %bb.aw ], [ %i.jv, %bb.ax ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.01.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !301 ; 6 uses
  %i.kd = icmp sgt i64 %i.jx, %i.kc
  br i1 %i.kd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i64 %i.kc, ptr %i.jh, align 8, !tbaa !678
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ke = phi i64 [ %i.kc, %bb.ay ], [ %i.jx, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.kf = icmp sgt i64 %i.kc, %i.jz
  br i1 %i.kf, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ba:                                            ; preds = %bb.az
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ba, %bb.az
  %i.kg = phi i64 [ %i.jz, %bb.az ], [ %i.kc, %bb.ba ]
  %i.kh = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %i.kh, %6
  br i1 %exitcond.not.i140.1, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !35

_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ar
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %5
  %i.kj = sub i64 %6, %5
  %i.kk = shl i64 %i.kj, 3
  %i.kl = load ptr, ptr %1, align 8, !tbaa !129
  %i.km = load ptr, ptr %i.kl, align 8
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ki, i64 noundef %i.kk), !inline_history !36
  br label %.loopexit

bb.bb:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.kn = icmp ult i64 %5, %6
  br i1 %i.kn, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.bb
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.bc

._crit_edge.loopexit.i:                           ; preds = %bb.bh
  %i.kq = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.lj, %bb.bh ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.bh ] ; 3 uses
  %i.kr = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.bc
  %i.ks = lshr i64 %.022.i, 6
  %i.kt = and i64 %.022.i, 63
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ks
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !301
  %i.kw = shl nuw i64 1, %i.kt
  %i.kx = and i64 %i.kv, %i.kw
  %.not.i143 = icmp eq i64 %i.kx, 0
  br i1 %.not.i143, label %bb.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.bc
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.022.i
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !301 ; 5 uses
  %i.la = load i64, ptr %i.ko, align 8, !tbaa !301
  %i.lb = icmp sgt i64 %i.la, %i.kz
  br i1 %i.lb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.kz, ptr %i.ko, align 8, !tbaa !678
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.lc = load i64, ptr %i.kp, align 8, !tbaa !301
  %i.ld = icmp sgt i64 %i.kz, %i.lc
  br i1 %i.ld, label %bb.bf, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bf:                                            ; preds = %bb.be
  store i64 %i.kz, ptr %i.kp, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bf, %bb.be
  %i.le = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.kz, ptr %i.lf, align 8, !tbaa !301
  %i.lg = icmp eq i64 %i.le, 2048
  br i1 %i.lg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.lh = load ptr, ptr %1, align 8, !tbaa !129
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !37
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bg ], [ %i.le, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.lj = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.lj, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i, label %bb.bc, !llvm.loop !38

_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.bb, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.kq, %._crit_edge.loopexit.i ]
  %i.lk = load ptr, ptr %1, align 8, !tbaa !129
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bi:                                            ; preds = %bb.a
  %i.lm = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.lm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bo unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bi
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lp = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.lp) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.lm) #25
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn160 = phi { ptr, i32 } [ %.pn161, %bb.bm ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn160

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit174, %.loopexit171, %.loopexit168, %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bo:                                            ; preds = %bb.bk
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteIlEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
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
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
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

end_hunk_7
begin_hunk_8_@_ZN6duckdb20StandardColumnWriterINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !713, !range !337, !noundef !189
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = icmp uge i64 %5, %6
  %or.cond180.not = or i1 %i.df, %i.de
  br i1 %or.cond180.not, label %.loopexit147, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.t
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i116 = icmp eq ptr %i.dg, null
  br i1 %.not.i116, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118: ; preds = %.lr.ph155, %bb.u
  %.0102154 = phi i64 [ %i.dv, %bb.u ], [ %5, %.lr.ph155 ] ; 4 uses
  %i.dh = lshr i64 %.0102154, 6
  %i.di = and i64 %.0102154, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !301
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dk, %i.dl
  %.not = icmp eq i64 %i.dm, 0
  br i1 %.not, label %bb.u, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118, %.lr.ph155
  %.us-phi = phi i64 [ %5, %.lr.ph155 ], [ %.0102154, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.us-phi
  %.sroa.06.0.copyload = load i64, ptr %i.dn, align 8, !tbaa !301
  %i.do = lshr i64 %.sroa.06.0.copyload, 24
  store i64 %i.do, ptr %i.e, align 8, !tbaa !301
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.dt = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ds)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIlEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  store i8 1, ptr %i.dc, align 8, !tbaa !713
  %i.du = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit147

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118
  %i.dv = add i64 %.0102154, 1                    ; 2 uses
  %exitcond195.not = icmp eq i64 %i.dv, %6
  br i1 %exitcond195.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118, !llvm.loop !1757

.loopexit147:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118.thread, %bb.t
  %.1103 = phi i64 [ %5, %bb.t ], [ %i.du, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit118.thread ] ; 2 uses
  %i.dw = icmp ult i64 %.1103, %6
  br i1 %i.dw, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.loopexit147
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph157, %bb.v
  %.2156 = phi i64 [ %.1103, %.lr.ph157 ], [ %i.ea, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2156
  %.sroa.05.0.copyload = load i64, ptr %i.dy, align 8, !tbaa !301
  %i.dz = lshr i64 %.sroa.05.0.copyload, 24
  store i64 %i.dz, ptr %i.f, align 8, !tbaa !301
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.ea = add i64 %.2156, 1                       ; 2 uses
  %exitcond196.not = icmp eq i64 %i.ea, %6
  br i1 %exitcond196.not, label %.loopexit, label %bb.v, !llvm.loop !1758

bb.w:                                             ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !714, !range !337, !noundef !189
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ei = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.eh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ej = load i64, ptr %i.ee, align 8, !tbaa !551
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !552
  %i.em = mul i64 %i.el, %i.ej
  %i.en = add i64 %i.em, 1                        ; 2 uses
  %i.eo = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 noundef %i.en), !noalias !1762
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef %i.eo, i64 noundef %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.eq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.eb, align 8, !tbaa !714
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.er = icmp ult i64 %5, %6
  br i1 %i.er, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  %.pre = load i64, ptr %i.eu, align 8, !tbaa !600
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %i.ev = phi i64 [ %.pre, %.lr.ph ], [ %i.gq, %bb.z ]
  %.0101153 = phi i64 [ %5, %.lr.ph ], [ %i.gr, %bb.z ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0101153
  %.sroa.0.0.copyload = load i64, ptr %i.ew, align 8, !tbaa !301 ; 5 uses
  %i.ex = lshr i64 %.sroa.0.0.copyload, 24
  %.sroa.0.0.extract.trunc = trunc i64 %i.ex to i8
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 40
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 48
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 56
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i8
  %i.ey = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ev
  store i8 %.sroa.0.0.extract.trunc, ptr %i.ez, align 1, !tbaa !127
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.fb = load i64, ptr %i.es, align 8, !tbaa !551
  %i.fc = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.fd = getelementptr i8, ptr %i.fa, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fc
  store i8 %.sroa.4.0.extract.trunc, ptr %i.fe, align 1, !tbaa !127
  %i.ff = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.fg = load i64, ptr %i.es, align 8, !tbaa !551
  %i.fh = shl i64 %i.fg, 1
  %i.fi = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.fj = getelementptr i8, ptr %i.ff, i64 %i.fh
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fi
  store i8 %.sroa.5.0.extract.trunc, ptr %i.fk, align 1, !tbaa !127
  %i.fl = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.fm = load i64, ptr %i.es, align 8, !tbaa !551
  %i.fn = mul i64 %i.fm, 3
  %i.fo = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.fp = getelementptr i8, ptr %i.fl, i64 %i.fn
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fo
  store i8 %.sroa.6.0.extract.trunc, ptr %i.fq, align 1, !tbaa !127
  %i.fr = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.fs = load i64, ptr %i.es, align 8, !tbaa !551
  %i.ft = shl i64 %i.fs, 2
  %i.fu = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.fv = getelementptr i8, ptr %i.fr, i64 %i.ft
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.fu
  store i8 %.sroa.7.0.extract.trunc, ptr %i.fw, align 1, !tbaa !127
  %i.fx = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.fy = load i64, ptr %i.es, align 8, !tbaa !551
  %i.fz = mul i64 %i.fy, 5
  %i.ga = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.gb = getelementptr i8, ptr %i.fx, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.ga
  store i8 0, ptr %i.gc, align 1, !tbaa !127
  %i.gd = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.ge = load i64, ptr %i.es, align 8, !tbaa !551
  %i.gf = mul i64 %i.ge, 6
  %i.gg = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.gh = getelementptr i8, ptr %i.gd, i64 %i.gf
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gg
  store i8 0, ptr %i.gi, align 1, !tbaa !127
  %i.gj = load ptr, ptr %i.et, align 8, !tbaa !307
  %i.gk = load i64, ptr %i.es, align 8, !tbaa !551
  %i.gl = mul i64 %i.gk, 7
  %i.gm = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.gn = getelementptr i8, ptr %i.gj, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gm
  store i8 0, ptr %i.go, align 1, !tbaa !127
  %i.gp = load i64, ptr %i.eu, align 8, !tbaa !600
  %i.gq = add i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.eu, align 8, !tbaa !600
  %i.gr = add nuw i64 %.0101153, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gr, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.z, !llvm.loop !1761

bb.aa:                                            ; preds = %bb.a
  %i.gs = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.gs, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.gt = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.gu = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.gu, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.ad
  %i.gv = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ad
  %.02.i = phi i64 [ %i.hd, %bb.ad ], [ %5, %bb.ab ] ; 2 uses
  %.0151.i = phi i64 [ %.1.i, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.02.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.gw, align 8, !tbaa !301
  %i.gx = lshr i64 %.sroa.0.0.copyload.i, 24
  %i.gy = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.gx, ptr %i.gz, align 8, !tbaa !301
  %i.ha = icmp eq i64 %i.gy, 2048
  br i1 %i.ha, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hb = load ptr, ptr %1, align 8, !tbaa !129
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ac ], [ %i.gy, %.lr.ph.i ] ; 2 uses
  %i.hd = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.hd, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !41

_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ab, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ab ], [ %i.gv, %._crit_edge.loopexit.i ]
  %i.he = load ptr, ptr %1, align 8, !tbaa !129
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.gu, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i126:                        ; preds = %bb.ag
  %i.hg = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.ae, %bb.ag
  %.03.i = phi i64 [ %i.hv, %bb.ag ], [ %5, %bb.ae ] ; 4 uses
  %.0172.i = phi i64 [ %.2.i, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i121
  %i.hi = lshr i64 %.03.i, 6
  %i.hj = and i64 %.03.i, 63
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !301
  %i.hm = shl nuw i64 1, %i.hj
  %i.hn = and i64 %i.hl, %i.hm
  %.not.i123 = icmp eq i64 %i.hn, 0
  br i1 %.not.i123, label %bb.ag, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i121
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.03.i
  %.sroa.0.0.copyload.i124 = load i64, ptr %i.ho, align 8, !tbaa !301
  %i.hp = lshr i64 %.sroa.0.0.copyload.i124, 24
  %i.hq = add nsw i64 %.0172.i, 1                 ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0172.i
  store i64 %i.hp, ptr %i.hr, align 8, !tbaa !301
  %i.hs = icmp eq i64 %i.hq, 2048
  br i1 %i.hs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ht = load ptr, ptr %1, align 8, !tbaa !129
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !42
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.0172.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.af ], [ %i.hq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.hv = add i64 %.03.i, 1                       ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.hv, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %.lr.ph.i121, !llvm.loop !43

_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ae, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.ae ], [ %i.hg, %._crit_edge.loopexit.i126 ]
  %i.hw = load ptr, ptr %1, align 8, !tbaa !129
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.hy = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.hy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.an unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ah
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ib = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.ib) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.al, label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.hy) #25
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.al ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %bb.z, %bb.u, %bb.v, %bb.q, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.y, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.an:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 5 uses
  %i.b = alloca [2048 x i64], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !709
  switch i32 %i.k, label %bb.aj [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.p
    i32 6, label %bb.t
    i32 9, label %bb.x
    i32 0, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !711, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0112192 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.q = lshr i64 %.0112192, 6
  %i.r = and i64 %.0112192, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not167 = icmp eq i64 %i.v, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0112192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !712
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.y, ptr %i.c, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !711
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0112192, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond227.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1763

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1113 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1113, %6
  br i1 %i.ae, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.loopexit169
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph203, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2114202 = phi i64 [ %.1113, %.lr.ph203 ], [ %i.ca, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i119 = icmp eq ptr %i.an, null
  br i1 %.not.i119, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121: ; preds = %bb.d
  %i.ao = lshr i64 %.2114202, 6
  %i.ap = and i64 %.2114202, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not168 = icmp eq i64 %i.at, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit121
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2114202 ; 2 uses
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !723, !nonnull !189, !align !190 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.au, align 8, !tbaa !301
  %i.aw = call noundef i64 @_ZN6duckdb4HashINS_10dtime_tz_tEEEmT_(i64 %.sroa.0.0.copyload.i.i)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !721 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !716 ; 2 uses
  %.07.i.i = and i64 %i.ay, %i.aw                 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb20StandardColumnWriterINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  store i8 1, ptr %i.dq, align 8, !tbaa !713
  %i.ei = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit175

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit132
  %i.ej = add i64 %.0110182, 1                    ; 2 uses
  %exitcond223.not = icmp eq i64 %i.ej, %6
  br i1 %exitcond223.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit132, !llvm.loop !1767

.loopexit175:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit132.thread, %bb.t
  %.1111 = phi i64 [ %5, %bb.t ], [ %i.ei, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit132.thread ] ; 2 uses
  %i.ek = icmp ult i64 %.1111, %6
  br i1 %i.ek, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.loopexit175
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph185, %bb.w
  %.2184 = phi i64 [ %.1111, %.lr.ph185 ], [ %i.ev, %bb.w ] ; 4 uses
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i133, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135: ; preds = %bb.v
  %i.en = lshr i64 %.2184, 6
  %i.eo = and i64 %.2184, 63
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !301
  %i.er = shl nuw i64 1, %i.eo
  %i.es = and i64 %i.eq, %i.er
  %.not164 = icmp eq i64 %i.es, 0
  br i1 %.not164, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread: ; preds = %bb.v, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2184
  %.sroa.06.0.copyload = load i64, ptr %i.et, align 8, !tbaa !301
  %i.eu = lshr i64 %.sroa.06.0.copyload, 24
  store i64 %i.eu, ptr %i.f, align 8, !tbaa !301
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.el, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit135.thread
  %i.ev = add i64 %.2184, 1                       ; 2 uses
  %exitcond224.not = icmp eq i64 %i.ev, %6
  br i1 %exitcond224.not, label %.loopexit, label %bb.v, !llvm.loop !1768

bb.x:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !714, !range !337, !noundef !189
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fd = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fe = load i64, ptr %i.ez, align 8, !tbaa !551
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !552
  %i.fh = mul i64 %i.fg, %i.fe
  %i.fi = add i64 %i.fh, 1                        ; 2 uses
  %i.fj = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i64 noundef %i.fi), !noalias !1772
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef %i.fj, i64 noundef %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.fl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.ew, align 8, !tbaa !714
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fm = icmp ult i64 %5, %6
  br i1 %i.fm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ab
  %.0109181 = phi i64 [ %5, %.lr.ph ], [ %i.ht, %bb.ab ] ; 4 uses
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i136 = icmp eq ptr %i.fq, null
  br i1 %.not.i136, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138: ; preds = %bb.aa
  %i.fr = lshr i64 %.0109181, 6
  %i.fs = and i64 %.0109181, 63
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !301
  %i.fv = shl nuw i64 1, %i.fs
  %i.fw = and i64 %i.fu, %i.fv
  %.not = icmp eq i64 %i.fw, 0
  br i1 %.not, label %bb.ab, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread: ; preds = %bb.aa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0109181
  %.sroa.0.0.copyload = load i64, ptr %i.fx, align 8, !tbaa !301 ; 5 uses
  %i.fy = lshr i64 %.sroa.0.0.copyload, 24
  %.sroa.0.0.extract.trunc = trunc i64 %i.fy to i8
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 40
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 48
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 56
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i8
  %i.fz = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.ga = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gb, align 1, !tbaa !127
  %i.gc = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.gd = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.ge = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.gf = getelementptr i8, ptr %i.gc, i64 %i.gd
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.ge
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gg, align 1, !tbaa !127
  %i.gh = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.gi = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.gj = shl i64 %i.gi, 1
  %i.gk = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.gl = getelementptr i8, ptr %i.gh, i64 %i.gj
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.gk
  store i8 %.sroa.5.0.extract.trunc, ptr %i.gm, align 1, !tbaa !127
  %i.gn = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.go = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.gp = mul i64 %i.go, 3
  %i.gq = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.gr = getelementptr i8, ptr %i.gn, i64 %i.gp
  %i.gs = getelementptr i8, ptr %i.gr, i64 %i.gq
  store i8 %.sroa.6.0.extract.trunc, ptr %i.gs, align 1, !tbaa !127
  %i.gt = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.gu = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.gv = shl i64 %i.gu, 2
  %i.gw = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.gx = getelementptr i8, ptr %i.gt, i64 %i.gv
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gw
  store i8 %.sroa.7.0.extract.trunc, ptr %i.gy, align 1, !tbaa !127
  %i.gz = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.ha = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.hb = mul i64 %i.ha, 5
  %i.hc = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.hd = getelementptr i8, ptr %i.gz, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.hc
  store i8 0, ptr %i.he, align 1, !tbaa !127
  %i.hf = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.hg = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.hh = mul i64 %i.hg, 6
  %i.hi = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.hj = getelementptr i8, ptr %i.hf, i64 %i.hh
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !127
  %i.hl = load ptr, ptr %i.fo, align 8, !tbaa !307
  %i.hm = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.hn = mul i64 %i.hm, 7
  %i.ho = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.hp = getelementptr i8, ptr %i.hl, i64 %i.hn
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.ho
  store i8 0, ptr %i.hq, align 1, !tbaa !127
  %i.hr = load i64, ptr %i.fp, align 8, !tbaa !600
  %i.hs = add i64 %i.hr, 1
  store i64 %i.hs, ptr %i.fp, align 8, !tbaa !600
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit138.thread
  %i.ht = add nuw i64 %.0109181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ht, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !1771

bb.ac:                                            ; preds = %bb.a
  %i.hu = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.hu, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10dtime_tz_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.hw = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hw, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i:                           ; preds = %bb.af
  %i.hx = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ad, %bb.af
  %.02.i = phi i64 [ %i.if, %bb.af ], [ %5, %bb.ad ] ; 2 uses
  %.0151.i = phi i64 [ %.1.i, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.02.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.hy, align 8, !tbaa !301
  %i.hz = lshr i64 %.sroa.0.0.copyload.i, 24
  %i.ia = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.hz, ptr %i.ib, align 8, !tbaa !301
  %i.ic = icmp eq i64 %i.ia, 2048
  br i1 %i.ic, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i
  %i.id = load ptr, ptr %1, align 8, !tbaa !129
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !40
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.1.i = phi i64 [ 0, %bb.ae ], [ %i.ia, %.lr.ph.i ] ; 2 uses
  %i.if = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.if, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !41

_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ad, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ad ], [ %i.hx, %._crit_edge.loopexit.i ]
  %i.ig = load ptr, ptr %1, align 8, !tbaa !129
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.hw, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

._crit_edge.loopexit.i146:                        ; preds = %bb.ai
  %i.ii = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ag, %bb.ai
  %.03.i = phi i64 [ %i.ix, %bb.ai ], [ %5, %bb.ag ] ; 4 uses
  %.0172.i = phi i64 [ %.2.i, %bb.ai ], [ 0, %bb.ag ] ; 3 uses
  %i.ij = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i141
  %i.ik = lshr i64 %.03.i, 6
  %i.il = and i64 %.03.i, 63
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik
  %i.in = load i64, ptr %i.im, align 8, !tbaa !301
  %i.io = shl nuw i64 1, %i.il
  %i.ip = and i64 %i.in, %i.io
  %.not.i143 = icmp eq i64 %i.ip, 0
  br i1 %.not.i143, label %bb.ai, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i141
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.03.i
  %.sroa.0.0.copyload.i144 = load i64, ptr %i.iq, align 8, !tbaa !301
  %i.ir = lshr i64 %.sroa.0.0.copyload.i144, 24
  %i.is = add nsw i64 %.0172.i, 1                 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0172.i
  store i64 %i.ir, ptr %i.it, align 8, !tbaa !301
  %i.iu = icmp eq i64 %i.is, 2048
  br i1 %i.iu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iv = load ptr, ptr %1, align 8, !tbaa !129
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !42
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.0172.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.ah ], [ %i.is, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ] ; 2 uses
  %i.ix = add i64 %.03.i, 1                       ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.ix, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %.lr.ph.i141, !llvm.loop !43

_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ag, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ag ], [ %i.ii, %._crit_edge.loopexit.i146 ]
  %i.iy = load ptr, ptr %1, align 8, !tbaa !129
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.aj:                                            ; preds = %bb.a
  %i.ja = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.ja, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ap unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aj
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jd = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.jd) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ja) #25
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.an ], [ %i.jc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ab, %bb.u, %bb.w, %bb.q, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.z, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.ap:                                            ; preds = %bb.al
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1775 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1775

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !1775
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !1775
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN6duckdb10dtime_tz_tERKlEZNS0_20StandardColumnWriterIS1_lNS0_21ParquetTimeTZOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E9_M_invokeERKSt9_Any_dataS3_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1777, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10dtime_tz_tElNS0_21ParquetTimeTZOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKlE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 0)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1777, !nonnull !189, !align !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.e)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10dtime_tz_tElNS0_21ParquetTimeTZOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKlE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterINS0_10dtime_tz_tElNS0_21ParquetTimeTZOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKlE_JSA_SC_EENSt9enable_ifIXsr7is_voidIT_EE5valueESG_E4typeEOT0_DpOT1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN6duckdb10dtime_tz_tERKlEZNS0_20StandardColumnWriterIS1_lNS0_21ParquetTimeTZOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10dtime_tz_tElNS1_21ParquetTimeTZOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKlE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterINS_10dtime_tz_tElNS_21ParquetTimeTZOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKS1_RKlE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10dtime_tz_tElNS1_21ParquetTimeTZOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKlE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10dtime_tz_tElNS1_21ParquetTimeTZOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKlE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1778
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10dtime_tz_tElNS1_21ParquetTimeTZOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKlE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_10dtime_tz_tElNS1_21ParquetTimeTZOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKlE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_9hugeint_tEdNS_22ParquetHugeintOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_9hugeint_tEdNS_22ParquetHugeintOperatorEE20InitializeWriteStateERN14duckdb_parquet8RowGroupE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.598") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(91) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.893", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427
end_hunk_9
begin_hunk_10_@_ZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.fa, ptr %i.ew, align 8, !tbaa !678
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !301
  %i.fe = icmp sgt i64 %i.fa, %i.fd
  br i1 %i.fe, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.ff = add i64 %.2156, 1                       ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ff, %6
  br i1 %exitcond195.not, label %.loopexit, label %bb.ad, !llvm.loop !1950

bb.ah:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !792, !range !337, !noundef !189
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fm) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fo = load i64, ptr %i.fj, align 8, !tbaa !551
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !552
  %i.fr = mul i64 %i.fq, %i.fo
  %i.fs = add i64 %i.fr, 1                        ; 2 uses
  %i.ft = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i64 noundef %i.fs), !noalias !1954
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef %i.ft, i64 noundef %i.fs)
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.fv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fg, align 8, !tbaa !792
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fw = icmp ult i64 %5, %6
  br i1 %i.fw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097153 = phi i64 [ %5, %.lr.ph ], [ %i.ic, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.097153
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !301 ; 12 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.gd to i8
  %.sroa.4.0.extract.shift = lshr i64 %i.gd, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %i.gd, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.gd, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.gd, 32
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.gd, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8
  %.sroa.9.0.extract.shift = lshr i64 %i.gd, 48
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i64 %i.gd, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8
  %i.ge = load i64, ptr %i.fx, align 8, !tbaa !301
  %i.gf = icmp sgt i64 %i.ge, %i.gd
  br i1 %i.gf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 %i.gd, ptr %i.fx, align 8, !tbaa !678
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gg = load i64, ptr %i.fy, align 8, !tbaa !301
  %i.gh = icmp sgt i64 %i.gd, %i.gg
  br i1 %i.gh, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i64 %i.gd, ptr %i.fy, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.gj
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gk, align 1, !tbaa !127
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gm = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gn = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.go = getelementptr i8, ptr %i.gl, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gp, align 1, !tbaa !127
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gr = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gs = shl i64 %i.gr, 1
  %i.gt = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gu = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store i8 %.sroa.5.0.extract.trunc, ptr %i.gv, align 1, !tbaa !127
  %i.gw = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gx = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gy = mul i64 %i.gx, 3
  %i.gz = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gz
  store i8 %.sroa.6.0.extract.trunc, ptr %i.hb, align 1, !tbaa !127
  %i.hc = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.hd = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.he = shl i64 %i.hd, 2
  %i.hf = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.hf
  store i8 %.sroa.7.0.extract.trunc, ptr %i.hh, align 1, !tbaa !127
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.hj = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.hk = mul i64 %i.hj, 5
  %i.hl = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hm = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hl
  store i8 %.sroa.8.0.extract.trunc, ptr %i.hn, align 1, !tbaa !127
  %i.ho = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.hp = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.hq = mul i64 %i.hp, 6
  %i.hr = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hs = getelementptr i8, ptr %i.ho, i64 %i.hq
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hr
  store i8 %.sroa.9.0.extract.trunc, ptr %i.ht, align 1, !tbaa !127
  %i.hu = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.hv = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.hw = mul i64 %i.hv, 7
  %i.hx = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hy = getelementptr i8, ptr %i.hu, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  store i8 %.sroa.10.0.extract.trunc, ptr %i.hz, align 1, !tbaa !127
  %i.ia = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.ib = add i64 %i.ia, 1
  store i64 %i.ib, ptr %i.gb, align 8, !tbaa !600
  %i.ic = add nuw i64 %.097153, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ic, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !1953

bb.ao:                                            ; preds = %bb.a
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.id, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ie = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.if = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.if, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.ii = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.iu, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.02.i
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !301 ; 5 uses
  %i.il = load i64, ptr %i.ig, align 8, !tbaa !301
  %i.im = icmp sgt i64 %i.il, %i.ik
  br i1 %i.im, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.ik, ptr %i.ig, align 8, !tbaa !678
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.in = load i64, ptr %i.ih, align 8, !tbaa !301
  %i.io = icmp sgt i64 %i.ik, %i.in
  br i1 %i.io, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i64 %i.ik, ptr %i.ih, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.ip = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.ik, ptr %i.iq, align 8, !tbaa !301
  %i.ir = icmp eq i64 %i.ip, 2048
  br i1 %i.ir, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.is = load ptr, ptr %1, align 8, !tbaa !129
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !55
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.ip, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.iu = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.iu, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !56

_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.ii, %._crit_edge.loopexit.i ]
  %i.iv = load ptr, ptr %1, align 8, !tbaa !129
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.if, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.iz = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.js, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.ja = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.jb = lshr i64 %.022.i, 6
  %i.jc = and i64 %.022.i, 63
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !301
  %i.jf = shl nuw i64 1, %i.jc
  %i.jg = and i64 %i.je, %i.jf
  %.not.i123 = icmp eq i64 %i.jg, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.022.i
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !301 ; 5 uses
  %i.jj = load i64, ptr %i.ix, align 8, !tbaa !301
  %i.jk = icmp sgt i64 %i.jj, %i.ji
  br i1 %i.jk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.ji, ptr %i.ix, align 8, !tbaa !678
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jl = load i64, ptr %i.iy, align 8, !tbaa !301
  %i.jm = icmp sgt i64 %i.ji, %i.jl
  br i1 %i.jm, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i64 %i.ji, ptr %i.iy, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.jn = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.ji, ptr %i.jo, align 8, !tbaa !301
  %i.jp = icmp eq i64 %i.jn, 2048
  br i1 %i.jp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.jq = load ptr, ptr %1, align 8, !tbaa !129
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !57
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.jn, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.js = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.js, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !58

_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.iz, %._crit_edge.loopexit.i126 ]
  %i.jt = load ptr, ptr %1, align 8, !tbaa !129
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.jv = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.jv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jy = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.jy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jv) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.bh ], [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 5 uses
  %i.b = alloca [2048 x i64], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !787
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !789, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0111192 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.q = lshr i64 %.0111192, 6
  %i.r = and i64 %.0111192, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not167 = icmp eq i64 %i.v, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0111192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !790
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.y, ptr %i.c, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !789
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111192, 1                    ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond226.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1955

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.loopexit169
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113201 = phi i64 [ %.1112, %.lr.ph202 ], [ %i.ch, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113201, 6
  %i.ap = and i64 %.2113201, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not168 = icmp eq i64 %i.at, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2113201
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !800, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !301 ; 4 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -2960836687051489901     ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -2960836687051489901     ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %exitcond223.not = icmp eq i64 %i.ga, %6
  br i1 %exitcond223.not, label %.loopexit, label %bb.ad, !llvm.loop !1960

bb.ai:                                            ; preds = %bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !792, !range !337, !noundef !189
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.gi = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gh) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.gj = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !552
  %i.gm = mul i64 %i.gl, %i.gj
  %i.gn = add i64 %i.gm, 1                        ; 2 uses
  %i.go = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i64 noundef %i.gn), !noalias !1964
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, ptr noundef %i.go, i64 noundef %i.gn)
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gb, align 8, !tbaa !792
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gr = icmp ult i64 %5, %6
  br i1 %i.gr, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105181 = phi i64 [ %5, %.lr.ph ], [ %i.je, %bb.ap ] ; 4 uses
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gx, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.gy = lshr i64 %.0105181, 6
  %i.gz = and i64 %.0105181, 63
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !301
  %i.hc = shl nuw i64 1, %i.gz
  %i.hd = and i64 %i.hb, %i.hc
  %.not = icmp eq i64 %i.hd, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0105181
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !301 ; 12 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.hf to i8
  %.sroa.4.0.extract.shift = lshr i64 %i.hf, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %i.hf, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.hf, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.hf, 32
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.hf, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8
  %.sroa.9.0.extract.shift = lshr i64 %i.hf, 48
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i64 %i.hf, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8
  %i.hg = load i64, ptr %i.gs, align 8, !tbaa !301
  %i.hh = icmp sgt i64 %i.hg, %i.hf
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i64 %i.hf, ptr %i.gs, align 8, !tbaa !678
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.hi = load i64, ptr %i.gt, align 8, !tbaa !301
  %i.hj = icmp sgt i64 %i.hf, %i.hi
  br i1 %i.hj, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i64 %i.hf, ptr %i.gt, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hl = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hp = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hq = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.hp
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hr, align 1, !tbaa !127
  %i.hs = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ht = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hu = shl i64 %i.ht, 1
  %i.hv = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hw = getelementptr i8, ptr %i.hs, i64 %i.hu
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hv
  store i8 %.sroa.5.0.extract.trunc, ptr %i.hx, align 1, !tbaa !127
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hz = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.ia = mul i64 %i.hz, 3
  %i.ib = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib
  store i8 %.sroa.6.0.extract.trunc, ptr %i.id, align 1, !tbaa !127
  %i.ie = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.if = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.ig = shl i64 %i.if, 2
  %i.ih = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ig
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ih
  store i8 %.sroa.7.0.extract.trunc, ptr %i.ij, align 1, !tbaa !127
  %i.ik = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.il = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.im = mul i64 %i.il, 5
  %i.in = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.io = getelementptr i8, ptr %i.ik, i64 %i.im
  %i.ip = getelementptr i8, ptr %i.io, i64 %i.in
  store i8 %.sroa.8.0.extract.trunc, ptr %i.ip, align 1, !tbaa !127
  %i.iq = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ir = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.is = mul i64 %i.ir, 6
  %i.it = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.iu = getelementptr i8, ptr %i.iq, i64 %i.is
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.it
  store i8 %.sroa.9.0.extract.trunc, ptr %i.iv, align 1, !tbaa !127
  %i.iw = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ix = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.iy = mul i64 %i.ix, 7
  %i.iz = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.ja = getelementptr i8, ptr %i.iw, i64 %i.iy
  %i.jb = getelementptr i8, ptr %i.ja, i64 %i.iz
  store i8 %.sroa.10.0.extract.trunc, ptr %i.jb, align 1, !tbaa !127
  %i.jc = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.jd = add i64 %i.jc, 1
  store i64 %i.jd, ptr %i.gw, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.je = add nuw i64 %.0105181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.je, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !1963

bb.aq:                                            ; preds = %bb.a
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.jf, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.jg = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.jh = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.jh, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.jk = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.jw, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.02.i
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !301 ; 5 uses
  %i.jn = load i64, ptr %i.ji, align 8, !tbaa !301
  %i.jo = icmp sgt i64 %i.jn, %i.jm
  br i1 %i.jo, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i64 %i.jm, ptr %i.ji, align 8, !tbaa !678
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jp = load i64, ptr %i.jj, align 8, !tbaa !301
  %i.jq = icmp sgt i64 %i.jm, %i.jp
  br i1 %i.jq, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i64 %i.jm, ptr %i.jj, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.jr = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.jm, ptr %i.js, align 8, !tbaa !301
  %i.jt = icmp eq i64 %i.jr, 2048
  br i1 %i.jt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ju = load ptr, ptr %1, align 8, !tbaa !129
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.jr, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.jw = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.jw, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !56

_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.jk, %._crit_edge.loopexit.i ]
  %i.jx = load ptr, ptr %1, align 8, !tbaa !129
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.jh, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.kb = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.ku, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.kc = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.kd = lshr i64 %.022.i, 6
  %i.ke = and i64 %.022.i, 63
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kd
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !301
  %i.kh = shl nuw i64 1, %i.ke
  %i.ki = and i64 %i.kg, %i.kh
  %.not.i143 = icmp eq i64 %i.ki, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %.022.i
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !301 ; 5 uses
  %i.kl = load i64, ptr %i.jz, align 8, !tbaa !301
  %i.km = icmp sgt i64 %i.kl, %i.kk
  br i1 %i.km, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.kk, ptr %i.jz, align 8, !tbaa !678
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.kn = load i64, ptr %i.ka, align 8, !tbaa !301
  %i.ko = icmp sgt i64 %i.kk, %i.kn
  br i1 %i.ko, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.kk, ptr %i.ka, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.kp = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.kk, ptr %i.kq, align 8, !tbaa !301
  %i.kr = icmp eq i64 %i.kp, 2048
  br i1 %i.kr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.ks = load ptr, ptr %1, align 8, !tbaa !129
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !57
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.kp, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.ku = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.ku, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !58

_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.kb, %._crit_edge.loopexit.i146 ]
  %i.kv = load ptr, ptr %1, align 8, !tbaa !129
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.kx = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.kx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.la = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.la) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kx) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.bj ], [ %i.kz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_26ParquetTimestampNSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryIllNS_26ParquetTimestampNSOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !1967 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1967

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !1967
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !1967
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKlS1_EZN6duckdb20StandardColumnWriterIllNS3_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataS1_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1969, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !301    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !301
  %i.f = icmp sgt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.d, align 8, !tbaa !678
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !301
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i64 %i.c, ptr %i.g, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1970, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1970, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKlS1_EZN6duckdb20StandardColumnWriterIllNS3_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterIllNS_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKlS8_E_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1971
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_26ParquetTimestampNSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit
end_hunk_11
begin_hunk_12_@_ZN6duckdb20StandardColumnWriterIllNS_25ParquetTimestampSOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  store i64 %i.fe, ptr %i.ez, align 8, !tbaa !678
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fh = load i64, ptr %i.fa, align 8, !tbaa !301
  %i.fi = icmp sgt i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i64 %i.fe, ptr %i.fa, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.fj = add i64 %.2156, 1                       ; 2 uses
  %exitcond195.not = icmp eq i64 %i.fj, %6
  br i1 %exitcond195.not, label %.loopexit, label %bb.ad, !llvm.loop !2013

bb.ah:                                            ; preds = %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !817, !range !337, !noundef !189
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fq) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.fs = load i64, ptr %i.fn, align 8, !tbaa !551
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !552
  %i.fv = mul i64 %i.fu, %i.fs
  %i.fw = add i64 %i.fv, 1                        ; 2 uses
  %i.fx = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fr, i64 noundef %i.fw), !noalias !2017
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef %i.fx, i64 noundef %i.fw)
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.fz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fk, align 8, !tbaa !817
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ga = icmp ult i64 %5, %6
  br i1 %i.ga, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097153 = phi i64 [ %5, %.lr.ph ], [ %i.ih, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.097153
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !301
  %i.gi = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.gh) ; 12 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.gi to i8
  %.sroa.4.0.extract.shift = lshr i64 %i.gi, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %i.gi, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.gi, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.gi, 32
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.gi, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8
  %.sroa.9.0.extract.shift = lshr i64 %i.gi, 48
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i64 %i.gi, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !301
  %i.gk = icmp sgt i64 %i.gj, %i.gi
  br i1 %i.gk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i64 %i.gi, ptr %i.gb, align 8, !tbaa !678
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gl = load i64, ptr %i.gc, align 8, !tbaa !301
  %i.gm = icmp sgt i64 %i.gi, %i.gl
  br i1 %i.gm, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i64 %i.gi, ptr %i.gc, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.go = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.gp = getelementptr i8, ptr %i.gn, i64 %i.go
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gp, align 1, !tbaa !127
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.gr = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.gs = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.gt = getelementptr i8, ptr %i.gq, i64 %i.gr
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gs
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gu, align 1, !tbaa !127
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.gw = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.gx = shl i64 %i.gw, 1
  %i.gy = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.gz = getelementptr i8, ptr %i.gv, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ha, align 1, !tbaa !127
  %i.hb = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.hc = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.hd = mul i64 %i.hc, 3
  %i.he = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  store i8 %.sroa.6.0.extract.trunc, ptr %i.hg, align 1, !tbaa !127
  %i.hh = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.hi = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.hj = shl i64 %i.hi, 2
  %i.hk = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  store i8 %.sroa.7.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.hp = mul i64 %i.ho, 5
  %i.hq = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store i8 %.sroa.8.0.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.hu = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.hv = mul i64 %i.hu, 6
  %i.hw = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.hx = getelementptr i8, ptr %i.ht, i64 %i.hv
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hw
  store i8 %.sroa.9.0.extract.trunc, ptr %i.hy, align 1, !tbaa !127
  %i.hz = load ptr, ptr %i.ge, align 8, !tbaa !307
  %i.ia = load i64, ptr %i.gd, align 8, !tbaa !551
  %i.ib = mul i64 %i.ia, 7
  %i.ic = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.id = getelementptr i8, ptr %i.hz, i64 %i.ib
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.ic
  store i8 %.sroa.10.0.extract.trunc, ptr %i.ie, align 1, !tbaa !127
  %i.if = load i64, ptr %i.gf, align 8, !tbaa !600
  %i.ig = add i64 %i.if, 1
  store i64 %i.ig, ptr %i.gf, align 8, !tbaa !600
  %i.ih = add i64 %.097153, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !2016

bb.ao:                                            ; preds = %bb.a
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.ii, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ij = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.ik = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.ik, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.in = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.ja, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.02.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !301
  %i.iq = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.ip) ; 5 uses
  %i.ir = load i64, ptr %i.il, align 8, !tbaa !301
  %i.is = icmp sgt i64 %i.ir, %i.iq
  br i1 %i.is, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.iq, ptr %i.il, align 8, !tbaa !678
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.it = load i64, ptr %i.im, align 8, !tbaa !301
  %i.iu = icmp sgt i64 %i.iq, %i.it
  br i1 %i.iu, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i64 %i.iq, ptr %i.im, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.iv = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.iq, ptr %i.iw, align 8, !tbaa !301
  %i.ix = icmp eq i64 %i.iv, 2048
  br i1 %i.ix, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.iy = load ptr, ptr %1, align 8, !tbaa !129
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !60
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.iv, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.ja = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.ja, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !61

_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.in, %._crit_edge.loopexit.i ]
  %i.jb = load ptr, ptr %1, align 8, !tbaa !129
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.ik, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.jf = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jz, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.jg = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.jh = lshr i64 %.022.i, 6
  %i.ji = and i64 %.022.i, 63
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jh
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !301
  %i.jl = shl nuw i64 1, %i.ji
  %i.jm = and i64 %i.jk, %i.jl
  %.not.i123 = icmp eq i64 %i.jm, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.022.i
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !301
  %i.jp = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.jo) ; 5 uses
  %i.jq = load i64, ptr %i.jd, align 8, !tbaa !301
  %i.jr = icmp sgt i64 %i.jq, %i.jp
  br i1 %i.jr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.jp, ptr %i.jd, align 8, !tbaa !678
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.js = load i64, ptr %i.je, align 8, !tbaa !301
  %i.jt = icmp sgt i64 %i.jp, %i.js
  br i1 %i.jt, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i64 %i.jp, ptr %i.je, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.ju = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.jp, ptr %i.jv, align 8, !tbaa !301
  %i.jw = icmp eq i64 %i.ju, 2048
  br i1 %i.jw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.jx = load ptr, ptr %1, align 8, !tbaa !129
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !62
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.ju, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jz = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jz, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !63

_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.jf, %._crit_edge.loopexit.i126 ]
  %i.ka = load ptr, ptr %1, align 8, !tbaa !129
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.kc = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kf = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.kf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kc) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.bh ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIllNS_25ParquetTimestampSOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 5 uses
  %i.b = alloca [2048 x i64], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !812
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !814, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0111192 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.q = lshr i64 %.0111192, 6
  %i.r = and i64 %.0111192, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not167 = icmp eq i64 %i.v, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0111192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !815
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.y, ptr %i.c, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !814
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111192, 1                    ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond226.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2018

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.loopexit169
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113201 = phi i64 [ %.1112, %.lr.ph202 ], [ %i.ch, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113201, 6
  %i.ap = and i64 %.2113201, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not168 = icmp eq i64 %i.at, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2113201
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !825, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !301 ; 4 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -2960836687051489901     ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -2960836687051489901     ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb20StandardColumnWriterIllNS_25ParquetTimestampSOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

bb.ai:                                            ; preds = %bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !817, !range !337, !noundef !189
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.gm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gl) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.gn = load i64, ptr %i.gi, align 8, !tbaa !551
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !552
  %i.gq = mul i64 %i.gp, %i.gn
  %i.gr = add i64 %i.gq, 1                        ; 2 uses
  %i.gs = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef %i.gr), !noalias !2027
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef %i.gs, i64 noundef %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gf, align 8, !tbaa !817
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gv = icmp ult i64 %5, %6
  br i1 %i.gv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 10 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105181 = phi i64 [ %5, %.lr.ph ], [ %i.jj, %bb.ap ] ; 4 uses
  %i.hb = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hb, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.hc = lshr i64 %.0105181, 6
  %i.hd = and i64 %.0105181, 63
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hc
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !301
  %i.hg = shl nuw i64 1, %i.hd
  %i.hh = and i64 %i.hf, %i.hg
  %.not = icmp eq i64 %i.hh, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0105181
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !301
  %i.hk = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.hj) ; 12 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.hk to i8
  %.sroa.4.0.extract.shift = lshr i64 %i.hk, 8
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %i.hk, 16
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %i.hk, 24
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i8
  %.sroa.7.0.extract.shift = lshr i64 %i.hk, 32
  %.sroa.7.0.extract.trunc = trunc i64 %.sroa.7.0.extract.shift to i8
  %.sroa.8.0.extract.shift = lshr i64 %i.hk, 40
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i8
  %.sroa.9.0.extract.shift = lshr i64 %i.hk, 48
  %.sroa.9.0.extract.trunc = trunc i64 %.sroa.9.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i64 %i.hk, 56
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i8
  %i.hl = load i64, ptr %i.gw, align 8, !tbaa !301
  %i.hm = icmp sgt i64 %i.hl, %i.hk
  br i1 %i.hm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i64 %i.hk, ptr %i.gw, align 8, !tbaa !678
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.hn = load i64, ptr %i.gx, align 8, !tbaa !301
  %i.ho = icmp sgt i64 %i.hk, %i.hn
  br i1 %i.ho, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i64 %i.hk, ptr %i.gx, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hp = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.hq = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hp, i64 %i.hq
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hr, align 1, !tbaa !127
  %i.hs = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.ht = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.hu = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.hv = getelementptr i8, ptr %i.hs, i64 %i.ht
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hu
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hw, align 1, !tbaa !127
  %i.hx = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.hy = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.hz = shl i64 %i.hy, 1
  %i.ia = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.ib = getelementptr i8, ptr %i.hx, i64 %i.hz
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.ia
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ic, align 1, !tbaa !127
  %i.id = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.ie = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.if = mul i64 %i.ie, 3
  %i.ig = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.ih = getelementptr i8, ptr %i.id, i64 %i.if
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ig
  store i8 %.sroa.6.0.extract.trunc, ptr %i.ii, align 1, !tbaa !127
  %i.ij = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.ik = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.il = shl i64 %i.ik, 2
  %i.im = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.in = getelementptr i8, ptr %i.ij, i64 %i.il
  %i.io = getelementptr i8, ptr %i.in, i64 %i.im
  store i8 %.sroa.7.0.extract.trunc, ptr %i.io, align 1, !tbaa !127
  %i.ip = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.iq = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.ir = mul i64 %i.iq, 5
  %i.is = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.it = getelementptr i8, ptr %i.ip, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.is
  store i8 %.sroa.8.0.extract.trunc, ptr %i.iu, align 1, !tbaa !127
  %i.iv = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.iw = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.ix = mul i64 %i.iw, 6
  %i.iy = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.iz = getelementptr i8, ptr %i.iv, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.iy
  store i8 %.sroa.9.0.extract.trunc, ptr %i.ja, align 1, !tbaa !127
  %i.jb = load ptr, ptr %i.gz, align 8, !tbaa !307
  %i.jc = load i64, ptr %i.gy, align 8, !tbaa !551
  %i.jd = mul i64 %i.jc, 7
  %i.je = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.jf = getelementptr i8, ptr %i.jb, i64 %i.jd
  %i.jg = getelementptr i8, ptr %i.jf, i64 %i.je
  store i8 %.sroa.10.0.extract.trunc, ptr %i.jg, align 1, !tbaa !127
  %i.jh = load i64, ptr %i.ha, align 8, !tbaa !600
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.ha, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.jj = add i64 %.0105181, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jj, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !2026

bb.aq:                                            ; preds = %bb.a
  %i.jk = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.jk, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.jl = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.jm = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.jm, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.jp = shl i64 %.1.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.kc, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.02.i
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !301
  %i.js = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.jr) ; 5 uses
  %i.jt = load i64, ptr %i.jn, align 8, !tbaa !301
  %i.ju = icmp sgt i64 %i.jt, %i.js
  br i1 %i.ju, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i64 %i.js, ptr %i.jn, align 8, !tbaa !678
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.jv = load i64, ptr %i.jo, align 8, !tbaa !301
  %i.jw = icmp sgt i64 %i.js, %i.jv
  br i1 %i.jw, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i64 %i.js, ptr %i.jo, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.jx = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151.i
  store i64 %i.js, ptr %i.jy, align 8, !tbaa !301
  %i.jz = icmp eq i64 %i.jx, 2048
  br i1 %i.jz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ka = load ptr, ptr %1, align 8, !tbaa !129
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 16384), !inline_history !60
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.jx, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.kc = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.kc, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !61

_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.jp, %._crit_edge.loopexit.i ]
  %i.kd = load ptr, ptr %1, align 8, !tbaa !129
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.jm, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.kh = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.lb, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.ki = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.kj = lshr i64 %.022.i, 6
  %i.kk = and i64 %.022.i, 63
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kj
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !301
  %i.kn = shl nuw i64 1, %i.kk
  %i.ko = and i64 %i.km, %i.kn
  %.not.i143 = icmp eq i64 %i.ko, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %.022.i
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !301
  %i.kr = call noundef i64 @_ZN6duckdb9Timestamp32FromEpochSecondsPossiblyInfiniteEl(i64 noundef %i.kq) ; 5 uses
  %i.ks = load i64, ptr %i.kf, align 8, !tbaa !301
  %i.kt = icmp sgt i64 %i.ks, %i.kr
  br i1 %i.kt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.kr, ptr %i.kf, align 8, !tbaa !678
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ku = load i64, ptr %i.kg, align 8, !tbaa !301
  %i.kv = icmp sgt i64 %i.kr, %i.ku
  br i1 %i.kv, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.kr, ptr %i.kg, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.kw = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.kr, ptr %i.kx, align 8, !tbaa !301
  %i.ky = icmp eq i64 %i.kw, 2048
  br i1 %i.ky, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kz = load ptr, ptr %1, align 8, !tbaa !129
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !62
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.kw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.lb = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.lb, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !63

_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.kh, %._crit_edge.loopexit.i146 ]
  %i.lc = load ptr, ptr %1, align 8, !tbaa !129
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.le = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.le, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lh = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.lh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.le) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.bj ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIlEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIllNS_25ParquetTimestampSOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryIllNS_25ParquetTimestampSOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2030 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2030

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !2030
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !2030
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKlS1_EZN6duckdb20StandardColumnWriterIllNS3_25ParquetTimestampSOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataS1_S1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2032, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !301    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !301
  %i.f = icmp sgt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.d, align 8, !tbaa !678
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !301
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i64 %i.c, ptr %i.g, align 8, !tbaa !679
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2033, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_25ParquetTimestampSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2033, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_25ParquetTimestampSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIllNS0_25ParquetTimestampSOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKlS9_E_JS9_S9_EENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIllEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKlS1_EZN6duckdb20StandardColumnWriterIllNS3_25ParquetTimestampSOperatorEE15FlushDictionaryERNS3_26PrimitiveColumnWriterStateEPNS3_22ColumnWriterStatisticsEEUlS1_S1_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_25ParquetTimestampSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterIllNS_25ParquetTimestampSOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKlS8_E_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_25ParquetTimestampSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_25ParquetTimestampSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2034
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIllNS1_25ParquetTimestampSOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit
end_hunk_13
begin_hunk_14_@_ZN6duckdb20StandardColumnWriterIhiNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  store i32 %i.el, ptr %i.ep, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit116

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit116: ; preds = %bb.aa, %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ew = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ev)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIiEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store i8 1, ptr %i.dy, align 8, !tbaa !844
  %i.ex = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit148

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115
  %i.ey = add i64 %.098155, 1                     ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ey, %6
  br i1 %exitcond195.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115, !llvm.loop !2077

.loopexit148:                                     ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit116, %bb.y
  %.199 = phi i64 [ %5, %bb.y ], [ %i.ex, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit116 ] ; 2 uses
  %i.ez = icmp ult i64 %.199, %6
  br i1 %i.ez, label %.lr.ph158, label %.loopexit

.lr.ph158:                                        ; preds = %.loopexit148
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph158, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117
  %.2157 = phi i64 [ %.199, %.lr.ph158 ], [ %i.fk, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2157
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !127
  %i.ff = zext i8 %i.fe to i32                    ; 5 uses
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !119
  %i.fg = load i32, ptr %i.fa, align 4, !tbaa !119
  %i.fh = icmp sgt i32 %i.fg, %i.ff
  br i1 %i.fh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ff, ptr %i.fa, align 8, !tbaa !836
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fi = load i32, ptr %i.fb, align 4, !tbaa !119
  %i.fj = icmp slt i32 %i.fi, %i.ff
  br i1 %i.fj, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.fk = add i64 %.2157, 1                       ; 2 uses
  %exitcond196.not = icmp eq i64 %i.fk, %6
  br i1 %exitcond196.not, label %.loopexit, label %bb.ad, !llvm.loop !2078

bb.ah:                                            ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !845, !range !337, !noundef !189
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fs = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ft = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !552
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = add i64 %i.fw, 1                        ; 2 uses
  %i.fy = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 noundef %i.fx), !noalias !2082
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef %i.fy, i64 noundef %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.ga = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fl, align 8, !tbaa !845
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gb = icmp ult i64 %5, %6
  br i1 %i.gb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097154 = phi i64 [ %5, %.lr.ph ], [ %i.hk, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 %.097154
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !127 ; 2 uses
  %i.gj = zext i8 %i.gi to i32                    ; 4 uses
  %i.gk = load i32, ptr %i.gc, align 4, !tbaa !119
  %i.gl = icmp sgt i32 %i.gk, %i.gj
  br i1 %i.gl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gj, ptr %i.gc, align 8, !tbaa !836
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !119
  %i.gn = icmp slt i32 %i.gm, %i.gj
  br i1 %i.gn, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gp = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.gq = getelementptr i8, ptr %i.go, i64 %i.gp
  store i8 %i.gi, ptr %i.gq, align 1, !tbaa !127
  %i.gr = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gs = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.gt = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store i8 0, ptr %i.gv, align 1, !tbaa !127
  %i.gw = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gx = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.gy = shl i64 %i.gx, 1
  %i.gz = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !127
  %i.hc = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.hd = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.he = mul i64 %i.hd, 3
  %i.hf = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.hf
  store i8 0, ptr %i.hh, align 1, !tbaa !127
  %i.hi = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.gg, align 8, !tbaa !600
  %i.hk = add nuw i64 %.097154, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hk, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !2081

bb.ao:                                            ; preds = %bb.a
  %i.hl = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hl, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.hn = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hn, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.hq = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.id, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.02.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !127
  %i.ht = zext i8 %i.hs to i32                    ; 5 uses
  %i.hu = load i32, ptr %i.ho, align 4, !tbaa !119
  %i.hv = icmp sgt i32 %i.hu, %i.ht
  br i1 %i.hv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ht, ptr %i.ho, align 8, !tbaa !836
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hw = load i32, ptr %i.hp, align 4, !tbaa !119
  %i.hx = icmp slt i32 %i.hw, %i.ht
  br i1 %i.hx, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.ht, ptr %i.hp, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.hy = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.ht, ptr %i.hz, align 4, !tbaa !119
  %i.ia = icmp eq i64 %i.hy, 2048
  br i1 %i.ia, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ib = load ptr, ptr %1, align 8, !tbaa !129
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !65
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.hy, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.id = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.id, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !66

_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.hq, %._crit_edge.loopexit.i ]
  %i.ie = load ptr, ptr %1, align 8, !tbaa !129
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.hn, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.ii = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jc, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.ij = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.ik = lshr i64 %.022.i, 6
  %i.il = and i64 %.022.i, 63
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik
  %i.in = load i64, ptr %i.im, align 8, !tbaa !301
  %i.io = shl nuw i64 1, %i.il
  %i.ip = and i64 %i.in, %i.io
  %.not.i123 = icmp eq i64 %i.ip, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.022.i
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !127
  %i.is = zext i8 %i.ir to i32                    ; 5 uses
  %i.it = load i32, ptr %i.ig, align 4, !tbaa !119
  %i.iu = icmp sgt i32 %i.it, %i.is
  br i1 %i.iu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !836
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iv = load i32, ptr %i.ih, align 4, !tbaa !119
  %i.iw = icmp slt i32 %i.iv, %i.is
  br i1 %i.iw, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i32 %i.is, ptr %i.ih, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.ix = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.is, ptr %i.iy, align 4, !tbaa !119
  %i.iz = icmp eq i64 %i.ix, 2048
  br i1 %i.iz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.ja = load ptr, ptr %1, align 8, !tbaa !129
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !67
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.ix, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jc = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jc, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !68

_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ii, %._crit_edge.loopexit.i126 ]
  %i.jd = load ptr, ptr %1, align 8, !tbaa !129
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.jf = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ji = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.ji) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn139 = phi { ptr, i32 } [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jf) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %.pn139, %bb.bh ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn138

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit148, %.loopexit145, %.loopexit142, %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIhiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %i.b = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !840
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !842, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit170, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph194, %bb.c
  %.0111193 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph194 ] ; 4 uses
  %i.q = lshr i64 %.0111193, 6
  %i.r = and i64 %.0111193, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not168 = icmp eq i64 %i.v, 0
  br i1 %.not168, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph194
  %.us-phi196 = phi i64 [ %5, %.lr.ph194 ], [ %.0111193, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !843
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.y, ptr %i.d, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !842
  br label %.loopexit170

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111193, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond227.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2083

.loopexit170:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi196, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.loopexit170
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph203, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113202 = phi i64 [ %.1112, %.lr.ph203 ], [ %i.cg, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113202, 6
  %i.ap = and i64 %.2113202, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not169 = icmp eq i64 %i.at, 0
  br i1 %.not169, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2113202
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !853, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !127 ; 3 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = mul i64 %i.ax, -2960836687051489901     ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -2960836687051489901     ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
end_hunk_14
begin_hunk_15_@_ZN6duckdb20StandardColumnWriterIhiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133: ; preds = %bb.ad
  %i.fs = lshr i64 %.2185, 6
  %i.ft = and i64 %.2185, 63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !301
  %i.fw = shl nuw i64 1, %i.ft
  %i.fx = and i64 %i.fv, %i.fw
  %.not165 = icmp eq i64 %i.fx, 0
  br i1 %.not165, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread: ; preds = %bb.ad, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.2185
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !127
  %i.ga = zext i8 %i.fz to i32                    ; 5 uses
  store i32 %i.ga, ptr %i.f, align 4, !tbaa !119
  %i.gb = load i32, ptr %i.fo, align 4, !tbaa !119
  %i.gc = icmp sgt i32 %i.gb, %i.ga
  br i1 %i.gc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !836
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  %i.gd = load i32, ptr %i.fp, align 4, !tbaa !119
  %i.ge = icmp slt i32 %i.gd, %i.ga
  br i1 %i.ge, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit134

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ga, ptr %i.fp, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit134

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit134: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit134
  %i.gf = add i64 %.2185, 1                       ; 2 uses
  %exitcond224.not = icmp eq i64 %i.gf, %6
  br i1 %exitcond224.not, label %.loopexit, label %bb.ad, !llvm.loop !2088

bb.ai:                                            ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !845, !range !337, !noundef !189
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.gn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gm) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.go = load i64, ptr %i.gj, align 8, !tbaa !551
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !552
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = add i64 %i.gr, 1                        ; 2 uses
  %i.gt = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i64 noundef %i.gs), !noalias !2092
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef %i.gt, i64 noundef %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gg, align 8, !tbaa !845
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gw = icmp ult i64 %5, %6
  br i1 %i.gw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105182 = phi i64 [ %5, %.lr.ph ], [ %i.im, %bb.ap ] ; 4 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hc, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.hd = lshr i64 %.0105182, 6
  %i.he = and i64 %.0105182, 63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !301
  %i.hh = shl nuw i64 1, %i.he
  %i.hi = and i64 %i.hg, %i.hh
  %.not = icmp eq i64 %i.hi, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0105182
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !127 ; 2 uses
  %i.hl = zext i8 %i.hk to i32                    ; 4 uses
  %i.hm = load i32, ptr %i.gx, align 4, !tbaa !119
  %i.hn = icmp sgt i32 %i.hm, %i.hl
  br i1 %i.hn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i32 %i.hl, ptr %i.gx, align 8, !tbaa !836
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.ho = load i32, ptr %i.gy, align 4, !tbaa !119
  %i.hp = icmp slt i32 %i.ho, %i.hl
  br i1 %i.hp, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i32 %i.hl, ptr %i.gy, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hq = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hr = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.hr
  store i8 %i.hk, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hu = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.hv = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.hw = getelementptr i8, ptr %i.ht, i64 %i.hu
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hv
  store i8 0, ptr %i.hx, align 1, !tbaa !127
  %i.hy = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hz = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.ia = shl i64 %i.hz, 1
  %i.ib = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib
  store i8 0, ptr %i.id, align 1, !tbaa !127
  %i.ie = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.if = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.ig = mul i64 %i.if, 3
  %i.ih = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ig
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !127
  %i.ik = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.hb, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.im = add nuw i64 %.0105182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !2091

bb.aq:                                            ; preds = %bb.a
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.in, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.ip = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.ip, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.is = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.jf, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %.02.i
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !127
  %i.iv = zext i8 %i.iu to i32                    ; 5 uses
  %i.iw = load i32, ptr %i.iq, align 4, !tbaa !119
  %i.ix = icmp sgt i32 %i.iw, %i.iv
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.iv, ptr %i.iq, align 8, !tbaa !836
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.iy = load i32, ptr %i.ir, align 4, !tbaa !119
  %i.iz = icmp slt i32 %i.iy, %i.iv
  br i1 %i.iz, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.iv, ptr %i.ir, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ja = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !119
  %i.jc = icmp eq i64 %i.ja, 2048
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jd = load ptr, ptr %1, align 8, !tbaa !129
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !65
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.ja, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.jf = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.jf, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !66

_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.is, %._crit_edge.loopexit.i ]
  %i.jg = load ptr, ptr %1, align 8, !tbaa !129
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.ip, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.jk = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.ke, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.jm = lshr i64 %.022.i, 6
  %i.jn = and i64 %.022.i, 63
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !301
  %i.jq = shl nuw i64 1, %i.jn
  %i.jr = and i64 %i.jp, %i.jq
  %.not.i143 = icmp eq i64 %i.jr, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.js = getelementptr inbounds nuw i8, ptr %i.io, i64 %.022.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !127
  %i.ju = zext i8 %i.jt to i32                    ; 5 uses
  %i.jv = load i32, ptr %i.ji, align 4, !tbaa !119
  %i.jw = icmp sgt i32 %i.jv, %i.ju
  br i1 %i.jw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !836
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jx = load i32, ptr %i.jj, align 4, !tbaa !119
  %i.jy = icmp slt i32 %i.jx, %i.ju
  br i1 %i.jy, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.ju, ptr %i.jj, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.jz = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.ju, ptr %i.ka, align 4, !tbaa !119
  %i.kb = icmp eq i64 %i.jz, 2048
  br i1 %i.kb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kc = load ptr, ptr %1, align 8, !tbaa !129
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !67
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.jz, %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.ke = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.ke, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !68

_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.jk, %._crit_edge.loopexit.i146 ]
  %i.kf = load ptr, ptr %1, align 8, !tbaa !129
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.kh = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.kh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kk = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.kk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn163 = phi { ptr, i32 } [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kh) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %.pn163, %bb.bj ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn162

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit176, %.loopexit173, %.loopexit170, %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIhiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryIhiNS_19ParquetCastOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2095 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2095

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !2095
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !2095
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKhRKiEZN6duckdb20StandardColumnWriterIhiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E9_M_invokeERKSt9_Any_dataS1_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2097, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !119    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119
  %i.f = icmp sgt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !836
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !119
  %i.i = icmp sgt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.g, align 4, !tbaa !837
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2098, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIhiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKhRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2098, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIhiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKhRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterIhiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKhRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIhiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKhRKiEZN6duckdb20StandardColumnWriterIhiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIhiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKhRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterIhiNS_19ParquetCastOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKhRKiE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIhiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKhRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIhiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKhRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2099
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterIhiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKhRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit
end_hunk_15
begin_hunk_16_@_ZN6duckdb20StandardColumnWriterItiNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit116: ; preds = %bb.aa, %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 18504
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.ew = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.ev)
  call void @_ZN6duckdb11DlbaEncoder10BeginWriteIiEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  store i8 1, ptr %i.dy, align 8, !tbaa !872
  %i.ex = add nuw i64 %.us-phi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %.loopexit148

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115
  %i.ey = add i64 %.098155, 1                     ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ey, %6
  br i1 %exitcond195.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit115, !llvm.loop !2142

.loopexit148:                                     ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit116, %bb.y
  %.199 = phi i64 [ %5, %bb.y ], [ %i.ex, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit116 ] ; 2 uses
  %i.ez = icmp ult i64 %.199, %6
  br i1 %i.ez, label %.lr.ph158, label %.loopexit

.lr.ph158:                                        ; preds = %.loopexit148
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 18504
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph158, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117
  %.2157 = phi i64 [ %.199, %.lr.ph158 ], [ %i.fk, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2157
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !319
  %i.ff = zext i16 %i.fe to i32                   ; 5 uses
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !119
  %i.fg = load i32, ptr %i.fa, align 4, !tbaa !119
  %i.fh = icmp sgt i32 %i.fg, %i.ff
  br i1 %i.fh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ff, ptr %i.fa, align 8, !tbaa !864
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fi = load i32, ptr %i.fb, align 4, !tbaa !119
  %i.fj = icmp slt i32 %i.fi, %i.ff
  br i1 %i.fj, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.fk = add i64 %.2157, 1                       ; 2 uses
  %exitcond196.not = icmp eq i64 %i.fk, %6
  br i1 %exitcond196.not, label %.loopexit, label %bb.ad, !llvm.loop !2143

bb.ah:                                            ; preds = %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !873, !range !337, !noundef !189
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.fs = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fr) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ft = load i64, ptr %i.fo, align 8, !tbaa !551
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !552
  %i.fw = mul i64 %i.fv, %i.ft
  %i.fx = add i64 %i.fw, 1                        ; 2 uses
  %i.fy = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, i64 noundef %i.fx), !noalias !2147
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef %i.fy, i64 noundef %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.ga = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.fl, align 8, !tbaa !873
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gb = icmp ult i64 %5, %6
  br i1 %i.gb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aj
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118
  %.097154 = phi i64 [ %5, %.lr.ph ], [ %i.hk, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.097154
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !319 ; 3 uses
  %i.gj = zext i16 %i.gi to i32                   ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.gi to i8
  %.sroa.4.0.extract.shift = lshr i16 %i.gi, 8
  %.sroa.4.0.extract.trunc = trunc nuw i16 %.sroa.4.0.extract.shift to i8
  %i.gk = load i32, ptr %i.gc, align 4, !tbaa !119
  %i.gl = icmp sgt i32 %i.gk, %i.gj
  br i1 %i.gl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gj, ptr %i.gc, align 8, !tbaa !864
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !119
  %i.gn = icmp slt i32 %i.gm, %i.gj
  br i1 %i.gn, label %bb.an, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118

bb.an:                                            ; preds = %bb.am
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gp = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.gq = getelementptr i8, ptr %i.go, i64 %i.gp
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gq, align 1, !tbaa !127
  %i.gr = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gs = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.gt = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gv, align 1, !tbaa !127
  %i.gw = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.gx = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.gy = shl i64 %i.gx, 1
  %i.gz = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gz
  store i8 0, ptr %i.hb, align 1, !tbaa !127
  %i.hc = load ptr, ptr %i.gf, align 8, !tbaa !307
  %i.hd = load i64, ptr %i.ge, align 8, !tbaa !551
  %i.he = mul i64 %i.hd, 3
  %i.hf = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.hg = getelementptr i8, ptr %i.hc, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.hf
  store i8 0, ptr %i.hh, align 1, !tbaa !127
  %i.hi = load i64, ptr %i.gg, align 8, !tbaa !600
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.gg, align 8, !tbaa !600
  %i.hk = add nuw i64 %.097154, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hk, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !2146

bb.ao:                                            ; preds = %bb.a
  %i.hl = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hl, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.hn = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i119, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.hn, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.aq

._crit_edge.loopexit.i:                           ; preds = %bb.av
  %i.hq = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.aq:                                            ; preds = %bb.av, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.id, %bb.av ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.av ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.02.i
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !319
  %i.ht = zext i16 %i.hs to i32                   ; 5 uses
  %i.hu = load i32, ptr %i.ho, align 4, !tbaa !119
  %i.hv = icmp sgt i32 %i.hu, %i.ht
  br i1 %i.hv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ht, ptr %i.ho, align 8, !tbaa !864
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hw = load i32, ptr %i.hp, align 4, !tbaa !119
  %i.hx = icmp slt i32 %i.hw, %i.ht
  br i1 %i.hx, label %bb.at, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.at:                                            ; preds = %bb.as
  store i32 %i.ht, ptr %i.hp, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.at, %bb.as
  %i.hy = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.ht, ptr %i.hz, align 4, !tbaa !119
  %i.ia = icmp eq i64 %i.hy, 2048
  br i1 %i.ia, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ib = load ptr, ptr %1, align 8, !tbaa !129
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !70
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.au ], [ %i.hy, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.id = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.id, %6
  br i1 %exitcond.not.i120, label %._crit_edge.loopexit.i, label %bb.aq, !llvm.loop !71

_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ap, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ap ], [ %i.hq, %._crit_edge.loopexit.i ]
  %i.ie = load ptr, ptr %1, align 8, !tbaa !129
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.aw:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.hn, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ax

._crit_edge.loopexit.i126:                        ; preds = %bb.bc
  %i.ii = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ax:                                            ; preds = %bb.bc, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jc, %bb.bc ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bc ] ; 3 uses
  %i.ij = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ax
  %i.ik = lshr i64 %.022.i, 6
  %i.il = and i64 %.022.i, 63
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik
  %i.in = load i64, ptr %i.im, align 8, !tbaa !301
  %i.io = shl nuw i64 1, %i.il
  %i.ip = and i64 %i.in, %i.io
  %.not.i123 = icmp eq i64 %i.ip, 0
  br i1 %.not.i123, label %bb.bc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ax
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %.022.i
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !319
  %i.is = zext i16 %i.ir to i32                   ; 5 uses
  %i.it = load i32, ptr %i.ig, align 4, !tbaa !119
  %i.iu = icmp sgt i32 %i.it, %i.is
  br i1 %i.iu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !864
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.iv = load i32, ptr %i.ih, align 4, !tbaa !119
  %i.iw = icmp slt i32 %i.iv, %i.is
  br i1 %i.iw, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.ba:                                            ; preds = %bb.az
  store i32 %i.is, ptr %i.ih, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.ba, %bb.az
  %i.ix = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.is, ptr %i.iy, align 4, !tbaa !119
  %i.iz = icmp eq i64 %i.ix, 2048
  br i1 %i.iz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.ja = load ptr, ptr %1, align 8, !tbaa !129
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !72
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bb ], [ %i.ix, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jc = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jc, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i126, label %bb.ax, !llvm.loop !73

_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.aw, %._crit_edge.loopexit.i126
  %.017.lcssa.i = phi i64 [ 0, %bb.aw ], [ %i.ii, %._crit_edge.loopexit.i126 ]
  %i.jd = load ptr, ptr %1, align 8, !tbaa !129
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bd:                                            ; preds = %bb.a
  %i.jf = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.be unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @__cxa_throw(ptr nonnull %i.jf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bj unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bd
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0 = phi i1 [ false, %bb.bf ], [ true, %bb.be ] ; 2 uses
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ji = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.ji) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn139 = phi { ptr, i32 } [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jf) #25
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %.pn139, %bb.bh ], [ %i.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn138

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit148, %.loopexit145, %.loopexit142, %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bj:                                            ; preds = %bb.bf
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterItiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %i.b = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !868
  switch i32 %i.k, label %bb.bf [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !870, !range !337, !noundef !189
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.o, %i.n
  br i1 %or.cond.not, label %.loopexit170, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph194, %bb.c
  %.0111193 = phi i64 [ %i.ad, %bb.c ], [ %5, %.lr.ph194 ] ; 4 uses
  %i.q = lshr i64 %.0111193, 6
  %i.r = and i64 %.0111193, 63
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !301
  %i.u = shl nuw i64 1, %i.r
  %i.v = and i64 %i.t, %i.u
  %.not168 = icmp eq i64 %i.v, 0
  br i1 %.not168, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph194
  %.us-phi196 = phi i64 [ %5, %.lr.ph194 ], [ %.0111193, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.x = load i32, ptr %i.w, align 4, !tbaa !871
  %i.y = trunc i32 %i.x to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.y, ptr %i.d, align 1, !tbaa !127
  %i.z = load ptr, ptr %1, align 8, !tbaa !129
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.ab, align 8, !tbaa !547
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ac, align 8, !tbaa !607
  store i8 1, ptr %i.l, align 8, !tbaa !870
  br label %.loopexit170

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ad = add i64 %.0111193, 1                    ; 2 uses
  %exitcond227.not = icmp eq i64 %i.ad, %6
  br i1 %exitcond227.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2148

.loopexit170:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi196, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ae = icmp ult i64 %.1112, %6
  br i1 %i.ae, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.loopexit170
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph203, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113202 = phi i64 [ %.1112, %.lr.ph203 ], [ %i.cg, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.an, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.ao = lshr i64 %.2113202, 6
  %i.ap = and i64 %.2113202, 63
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !301
  %i.as = shl nuw i64 1, %i.ap
  %i.at = and i64 %i.ar, %i.as
  %.not169 = icmp eq i64 %i.at, 0
  br i1 %.not169, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2113202
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !881, !nonnull !189, !align !190 ; 2 uses
  %i.aw = load i16, ptr %i.au, align 2, !tbaa !319 ; 3 uses
  %i.ax = zext i16 %i.aw to i64
  %i.ay = mul i64 %i.ax, -2960836687051489901     ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -2960836687051489901     ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
end_hunk_16
begin_hunk_17_@_ZN6duckdb20StandardColumnWriterItiNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ft = and i64 %.2185, 63
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !301
  %i.fw = shl nuw i64 1, %i.ft
  %i.fx = and i64 %i.fv, %i.fw
  %.not165 = icmp eq i64 %i.fx, 0
  br i1 %.not165, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread: ; preds = %bb.ad, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.2185
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !319
  %i.ga = zext i16 %i.fz to i32                   ; 5 uses
  store i32 %i.ga, ptr %i.f, align 4, !tbaa !119
  %i.gb = load i32, ptr %i.fo, align 4, !tbaa !119
  %i.gc = icmp sgt i32 %i.gb, %i.ga
  br i1 %i.gc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !864
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133.thread
  %i.gd = load i32, ptr %i.fp, align 4, !tbaa !119
  %i.ge = icmp slt i32 %i.gd, %i.ga
  br i1 %i.ge, label %bb.ag, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit134

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ga, ptr %i.fp, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit134

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit134: ; preds = %bb.af, %bb.ag
  call void @_ZN6duckdb11DlbaEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %i.fq, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit133, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit134
  %i.gf = add i64 %.2185, 1                       ; 2 uses
  %exitcond224.not = icmp eq i64 %i.gf, %6
  br i1 %exitcond224.not, label %.loopexit, label %bb.ad, !llvm.loop !2153

bb.ai:                                            ; preds = %bb.a
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 37024 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !873, !range !337, !noundef !189
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 37032
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !303, !nonnull !189, !align !190
  %i.gn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gm) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.go = load i64, ptr %i.gj, align 8, !tbaa !551
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 37040
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !552
  %i.gr = mul i64 %i.gq, %i.go
  %i.gs = add i64 %i.gr, 1                        ; 2 uses
  %i.gt = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i64 noundef %i.gs), !noalias !2157
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef %i.gt, i64 noundef %i.gs)
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 37056
  %i.gv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %7) #25 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store i8 1, ptr %i.gg, align 8, !tbaa !873
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gw = icmp ult i64 %5, %6
  br i1 %i.gw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ak
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 37032 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 37064 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 37048 ; 6 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.ap
  %.0105182 = phi i64 [ %5, %.lr.ph ], [ %i.im, %bb.ap ] ; 4 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i135 = icmp eq ptr %i.hc, null
  br i1 %.not.i135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137: ; preds = %bb.al
  %i.hd = lshr i64 %.0105182, 6
  %i.he = and i64 %.0105182, 63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !301
  %i.hh = shl nuw i64 1, %i.he
  %i.hi = and i64 %i.hg, %i.hh
  %.not = icmp eq i64 %i.hi, 0
  br i1 %.not, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread: ; preds = %bb.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.0105182
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !319 ; 3 uses
  %i.hl = zext i16 %i.hk to i32                   ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.hk to i8
  %.sroa.4.0.extract.shift = lshr i16 %i.hk, 8
  %.sroa.4.0.extract.trunc = trunc nuw i16 %.sroa.4.0.extract.shift to i8
  %i.hm = load i32, ptr %i.gx, align 4, !tbaa !119
  %i.hn = icmp sgt i32 %i.hm, %i.hl
  br i1 %i.hn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  store i32 %i.hl, ptr %i.gx, align 8, !tbaa !864
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137.thread
  %i.ho = load i32, ptr %i.gy, align 4, !tbaa !119
  %i.hp = icmp slt i32 %i.ho, %i.hl
  br i1 %i.hp, label %bb.ao, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit138

bb.ao:                                            ; preds = %bb.an
  store i32 %i.hl, ptr %i.gy, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hq = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hr = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.hs = getelementptr i8, ptr %i.hq, i64 %i.hr
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hu = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.hv = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.hw = getelementptr i8, ptr %i.ht, i64 %i.hu
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hv
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hx, align 1, !tbaa !127
  %i.hy = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.hz = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.ia = shl i64 %i.hz, 1
  %i.ib = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib
  store i8 0, ptr %i.id, align 1, !tbaa !127
  %i.ie = load ptr, ptr %i.ha, align 8, !tbaa !307
  %i.if = load i64, ptr %i.gz, align 8, !tbaa !551
  %i.ig = mul i64 %i.if, 3
  %i.ih = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ig
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !127
  %i.ik = load i64, ptr %i.hb, align 8, !tbaa !600
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.hb, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.im = add nuw i64 %.0105182, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !2156

bb.aq:                                            ; preds = %bb.a
  %i.in = load ptr, ptr %i.g, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.in, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeItEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.io = load ptr, ptr %i.h, align 8, !tbaa !479 ; 2 uses
  %i.ip = icmp ult i64 %5, %6                     ; 2 uses
  br i1 %.not.i139, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  br i1 %i.ip, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.as

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %i.is = shl i64 %.1.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i
  %.02.i = phi i64 [ %5, %.lr.ph.i ], [ %i.jf, %bb.ax ] ; 2 uses
  %.0151.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ax ] ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %.02.i
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !319
  %i.iv = zext i16 %i.iu to i32                   ; 5 uses
  %i.iw = load i32, ptr %i.iq, align 4, !tbaa !119
  %i.ix = icmp sgt i32 %i.iw, %i.iv
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.iv, ptr %i.iq, align 8, !tbaa !864
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.iy = load i32, ptr %i.ir, align 4, !tbaa !119
  %i.iz = icmp slt i32 %i.iy, %i.iv
  br i1 %i.iz, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.iv, ptr %i.ir, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ja = add nsw i64 %.0151.i, 1                 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151.i
  store i32 %i.iv, ptr %i.jb, align 4, !tbaa !119
  %i.jc = icmp eq i64 %i.ja, 2048
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jd = load ptr, ptr %1, align 8, !tbaa !129
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 8192), !inline_history !70
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %.1.i = phi i64 [ 0, %bb.aw ], [ %i.ja, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i ] ; 2 uses
  %i.jf = add i64 %.02.i, 1                       ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %i.jf, %6
  br i1 %exitcond.not.i140, label %._crit_edge.loopexit.i, label %bb.as, !llvm.loop !71

_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ar, %._crit_edge.loopexit.i
  %.015.lcssa.i = phi i64 [ 0, %bb.ar ], [ %i.is, %._crit_edge.loopexit.i ]
  %i.jg = load ptr, ptr %1, align 8, !tbaa !129
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa.i), !inline_history !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.ip, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.az

._crit_edge.loopexit.i146:                        ; preds = %bb.be
  %i.jk = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.az:                                            ; preds = %bb.be, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.ke, %bb.be ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.be ] ; 3 uses
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.az
  %i.jm = lshr i64 %.022.i, 6
  %i.jn = and i64 %.022.i, 63
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !301
  %i.jq = shl nuw i64 1, %i.jn
  %i.jr = and i64 %i.jp, %i.jq
  %.not.i143 = icmp eq i64 %i.jr, 0
  br i1 %.not.i143, label %bb.be, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.az
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %.022.i
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !319
  %i.ju = zext i16 %i.jt to i32                   ; 5 uses
  %i.jv = load i32, ptr %i.ji, align 4, !tbaa !119
  %i.jw = icmp sgt i32 %i.jv, %i.ju
  br i1 %i.jw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !864
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jx = load i32, ptr %i.jj, align 4, !tbaa !119
  %i.jy = icmp slt i32 %i.jx, %i.ju
  br i1 %i.jy, label %bb.bc, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.ju, ptr %i.jj, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bc, %bb.bb
  %i.jz = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.ju, ptr %i.ka, align 4, !tbaa !119
  %i.kb = icmp eq i64 %i.jz, 2048
  br i1 %i.kb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kc = load ptr, ptr %1, align 8, !tbaa !129
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !72
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bd ], [ %i.jz, %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.ke = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.ke, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i146, label %bb.az, !llvm.loop !73

_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.ay, %._crit_edge.loopexit.i146
  %.017.lcssa.i = phi i64 [ 0, %bb.ay ], [ %i.jk, %._crit_edge.loopexit.i146 ]
  %i.kf = load ptr, ptr %1, align 8, !tbaa !129
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bf:                                            ; preds = %bb.a
  %i.kh = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_throw(ptr nonnull %i.kh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bl unwind label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bf
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0 = phi i1 [ false, %bb.bh ], [ true, %bb.bg ] ; 2 uses
  %i.kj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kk = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef %i.kk) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn163 = phi { ptr, i32 } [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kh) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %.pn163, %bb.bj ], [ %i.kj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn162

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIiEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit176, %.loopexit173, %.loopexit170, %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainItiNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bl:                                            ; preds = %bb.bh
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryItiNS_19ParquetCastOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2160 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2160

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !2160
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !2160
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKtRKiEZN6duckdb20StandardColumnWriterItiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E9_M_invokeERKSt9_Any_dataS1_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2162, !nonnull !189, !align !190
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !553  ; 2 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !119    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !119
  %i.f = icmp sgt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !864
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !119
  %i.i = icmp sgt i32 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.g, align 4, !tbaa !865
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i

_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2163, !nonnull !189, !align !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !556
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterItiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKtRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4, i64 noundef 0)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !2163, !nonnull !189, !align !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  tail call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %i.n)
  br label %_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterItiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKtRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb20StandardColumnWriterItiNS0_19ParquetCastOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKtRKiE_JS9_SB_EENSt9enable_ifIXsr7is_voidIT_EE5valueESF_E4typeEOT0_DpOT1_.exit: ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsItiEEvPNS_22ColumnWriterStatisticsET0_.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKtRKiEZN6duckdb20StandardColumnWriterItiNS5_19ParquetCastOperatorEE15FlushDictionaryERNS5_26PrimitiveColumnWriterStateEPNS5_22ColumnWriterStatisticsEEUlS1_S3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterItiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKtRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterItiNS_19ParquetCastOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKtRKiE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterItiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKtRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterItiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKtRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2164
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterItiNS1_19ParquetCastOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKtRKiE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit
end_hunk_17
begin_hunk_18_@_ZN6duckdb20StandardColumnWriterIjjNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a

bb.an:                                            ; preds = %bb.am
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit118

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit118: ; preds = %bb.am, %bb.an
  %i.gi = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.gj
  store i8 %.sroa.0.0.extract.trunc, ptr %i.gk, align 1, !tbaa !127
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gm = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gn = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.go = getelementptr i8, ptr %i.gl, i64 %i.gm
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  store i8 %.sroa.4.0.extract.trunc, ptr %i.gp, align 1, !tbaa !127
  %i.gq = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gr = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gs = shl i64 %i.gr, 1
  %i.gt = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.gu = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store i8 %.sroa.5.0.extract.trunc, ptr %i.gv, align 1, !tbaa !127
  %i.gw = load ptr, ptr %i.ga, align 8, !tbaa !307
  %i.gx = load i64, ptr %i.fz, align 8, !tbaa !551
  %i.gy = mul i64 %i.gx, 3
  %i.gz = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gz
  store i8 %.sroa.6.0.extract.trunc, ptr %i.hb, align 1, !tbaa !127
  %i.hc = load i64, ptr %i.gb, align 8, !tbaa !600
  %i.hd = add i64 %i.hc, 1
  store i64 %i.hd, ptr %i.gb, align 8, !tbaa !600
  %i.he = add nuw i64 %.097153, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.he, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !2211

bb.ao:                                            ; preds = %bb.a
  %i.hf = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.hf, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i119, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.hh = icmp ult i64 %5, %6
  br i1 %i.hh, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %.promoted.i = load i32, ptr %i.hi, align 4, !tbaa !119 ; 3 uses
  %.promoted2.i = load i32, ptr %i.hj, align 4, !tbaa !119 ; 3 uses
  %i.hk = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.hk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %5
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !119 ; 6 uses
  %i.hn = icmp ugt i32 %.promoted.i, %i.hm
  br i1 %i.hn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.prol.preheader
  store i32 %i.hm, ptr %i.hi, align 8, !tbaa !892
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.prol.preheader
  %i.ho = phi i32 [ %i.hm, %bb.aq ], [ %.promoted.i, %.prol.preheader ]
  %i.hp = icmp ugt i32 %i.hm, %.promoted2.i
  br i1 %i.hp, label %bb.as, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.as:                                            ; preds = %bb.ar
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.as, %bb.ar
  %i.hq = phi i32 [ %.promoted2.i, %bb.ar ], [ %i.hm, %bb.as ]
  %i.hr = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i32 [ %.promoted2.i, %.lr.ph.i ], [ %i.hq, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr276 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ho, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.hr, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.hs = icmp eq i64 %6, %.neg
  br i1 %i.hs, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.ht = phi i32 [ %i.ih, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.hu = phi i32 [ %i.if, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr276, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.ii, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.01.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !119 ; 6 uses
  %i.hx = icmp ugt i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.new
  store i32 %i.hw, ptr %i.hi, align 8, !tbaa !892
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.new
  %i.hy = phi i32 [ %i.hw, %bb.at ], [ %i.hu, %.lr.ph.i.new ] ; 2 uses
  %i.hz = icmp ugt i32 %i.hw, %i.ht
  br i1 %i.hz, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i32 %i.hw, ptr %i.hj, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ia = phi i32 [ %i.ht, %bb.au ], [ %i.hw, %bb.av ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.01.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !119 ; 6 uses
  %i.ie = icmp ugt i32 %i.hy, %i.id
  br i1 %i.ie, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i32 %i.id, ptr %i.hi, align 8, !tbaa !892
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.if = phi i32 [ %i.id, %bb.aw ], [ %i.hy, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.ig = icmp ugt i32 %i.id, %i.ia
  br i1 %i.ig, label %bb.ay, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.id, ptr %i.hj, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ay, %bb.ax
  %i.ih = phi i32 [ %i.ia, %bb.ax ], [ %i.id, %bb.ay ]
  %i.ii = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i120.1 = icmp eq i64 %i.ii, %6
  br i1 %exitcond.not.i120.1, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !75

_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ap
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %5
  %i.ik = sub i64 %6, %5
  %i.il = shl i64 %i.ik, 2
  %i.im = load ptr, ptr %1, align 8, !tbaa !129
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ij, i64 noundef %i.il), !inline_history !76
  br label %.loopexit

bb.az:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.io = icmp ult i64 %5, %6
  br i1 %i.io, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.ba

._crit_edge.loopexit.i:                           ; preds = %bb.bf
  %i.ir = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.jk, %bb.bf ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bf ] ; 3 uses
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.is, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ba
  %i.it = lshr i64 %.022.i, 6
  %i.iu = and i64 %.022.i, 63
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !301
  %i.ix = shl nuw i64 1, %i.iu
  %i.iy = and i64 %i.iw, %i.ix
  %.not.i123 = icmp eq i64 %i.iy, 0
  br i1 %.not.i123, label %bb.bf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ba
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.022.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !119 ; 5 uses
  %i.jb = load i32, ptr %i.ip, align 4, !tbaa !119
  %i.jc = icmp ugt i32 %i.jb, %i.ja
  br i1 %i.jc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.ja, ptr %i.ip, align 8, !tbaa !892
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.jd = load i32, ptr %i.iq, align 4, !tbaa !119
  %i.je = icmp ugt i32 %i.ja, %i.jd
  br i1 %i.je, label %bb.bd, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ja, ptr %i.iq, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.bd, %bb.bc
  %i.jf = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.ja, ptr %i.jg, align 4, !tbaa !119
  %i.jh = icmp eq i64 %i.jf, 2048
  br i1 %i.jh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.ji = load ptr, ptr %1, align 8, !tbaa !129
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !77
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.be ], [ %i.jf, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.jk = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.jk, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i, label %bb.ba, !llvm.loop !78

_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.az, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.az ], [ %i.ir, %._crit_edge.loopexit.i ]
  %i.jl = load ptr, ptr %1, align 8, !tbaa !129
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bg:                                            ; preds = %bb.a
  %i.jn = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.jn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bm unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bg
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jq = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.jq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jn) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.bk ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIjEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bm:                                            ; preds = %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterIjjNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !479  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !896
  switch i32 %i.j, label %bb.bi [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !898, !range !337, !noundef !189
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.n, %i.m
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0111192 = phi i64 [ %i.ac, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.p = lshr i64 %.0111192, 6
  %i.q = and i64 %.0111192, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !301
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not167 = icmp eq i64 %i.u, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0111192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.w = load i32, ptr %i.v, align 4, !tbaa !899
  %i.x = trunc i32 %i.w to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.x, ptr %i.c, align 1, !tbaa !127
  %i.y = load ptr, ptr %1, align 8, !tbaa !129
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aa, align 8, !tbaa !547
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ab, align 8, !tbaa !607
  store i8 1, ptr %i.k, align 8, !tbaa !898
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = add i64 %.0111192, 1                    ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ac, %6
  br i1 %exitcond226.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2213

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ad = icmp ult i64 %.1112, %6
  br i1 %i.ad, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.loopexit169
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113201 = phi i64 [ %.1112, %.lr.ph202 ], [ %i.cf, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.am, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.an = lshr i64 %.2113201, 6
  %i.ao = and i64 %.2113201, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !301
  %i.ar = shl nuw i64 1, %i.ao
  %i.as = and i64 %i.aq, %i.ar
  %.not168 = icmp eq i64 %i.as, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.2113201
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !909, !nonnull !189, !align !190 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !119 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul i64 %i.aw, -2960836687051489901     ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, -2960836687051489901     ; 2 uses
  %i.bb = lshr i64 %i.ba, 32
  %i.bc = xor i64 %i.bb, %i.ba
end_hunk_18
begin_hunk_19_@_ZN6duckdb20StandardColumnWriterIjjNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit138

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit138: ; preds = %bb.an, %bb.ao
  %i.hk = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hl = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hm = getelementptr i8, ptr %i.hk, i64 %i.hl
  store i8 %.sroa.0.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hp = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hq = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.hp
  store i8 %.sroa.4.0.extract.trunc, ptr %i.hr, align 1, !tbaa !127
  %i.hs = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.ht = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.hu = shl i64 %i.ht, 1
  %i.hv = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.hw = getelementptr i8, ptr %i.hs, i64 %i.hu
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hv
  store i8 %.sroa.5.0.extract.trunc, ptr %i.hx, align 1, !tbaa !127
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !307
  %i.hz = load i64, ptr %i.gu, align 8, !tbaa !551
  %i.ia = mul i64 %i.hz, 3
  %i.ib = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.ic = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib
  store i8 %.sroa.6.0.extract.trunc, ptr %i.id, align 1, !tbaa !127
  %i.ie = load i64, ptr %i.gw, align 8, !tbaa !600
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.gw, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.ig = add nuw i64 %.0105181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ig, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !2221

bb.aq:                                            ; preds = %bb.a
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.ih, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.ii = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i139, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.ij = icmp ult i64 %5, %6
  br i1 %i.ij, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %.promoted.i = load i32, ptr %i.ik, align 4, !tbaa !119 ; 3 uses
  %.promoted2.i = load i32, ptr %i.il, align 4, !tbaa !119 ; 3 uses
  %i.im = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.im, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %5
  %i.io = load i32, ptr %i.in, align 4, !tbaa !119 ; 6 uses
  %i.ip = icmp ugt i32 %.promoted.i, %i.io
  br i1 %i.ip, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.prol.preheader
  store i32 %i.io, ptr %i.ik, align 8, !tbaa !892
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.prol.preheader
  %i.iq = phi i32 [ %i.io, %bb.as ], [ %.promoted.i, %.prol.preheader ]
  %i.ir = icmp ugt i32 %i.io, %.promoted2.i
  br i1 %i.ir, label %bb.au, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.au:                                            ; preds = %bb.at
  store i32 %i.io, ptr %i.il, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.au, %bb.at
  %i.is = phi i32 [ %.promoted2.i, %bb.at ], [ %i.io, %bb.au ]
  %i.it = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i32 [ %.promoted2.i, %.lr.ph.i ], [ %i.is, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr308 = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.iq, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.it, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.iu = icmp eq i64 %6, %.neg
  br i1 %i.iu, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.iv = phi i32 [ %i.jj, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.iw = phi i32 [ %i.jh, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr308, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.jk, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.01.i
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !119 ; 6 uses
  %i.iz = icmp ugt i32 %i.iw, %i.iy
  br i1 %i.iz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i.new
  store i32 %i.iy, ptr %i.ik, align 8, !tbaa !892
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i.new
  %i.ja = phi i32 [ %i.iy, %bb.av ], [ %i.iw, %.lr.ph.i.new ] ; 2 uses
  %i.jb = icmp ugt i32 %i.iy, %i.iv
  br i1 %i.jb, label %bb.ax, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.iy, ptr %i.il, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.ax, %bb.aw
  %i.jc = phi i32 [ %i.iv, %bb.aw ], [ %i.iy, %bb.ax ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.01.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !119 ; 6 uses
  %i.jg = icmp ugt i32 %i.ja, %i.jf
  br i1 %i.jg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i32 %i.jf, ptr %i.ik, align 8, !tbaa !892
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jh = phi i32 [ %i.jf, %bb.ay ], [ %i.ja, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.ji = icmp ugt i32 %i.jf, %i.jc
  br i1 %i.ji, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ba:                                            ; preds = %bb.az
  store i32 %i.jf, ptr %i.il, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ba, %bb.az
  %i.jj = phi i32 [ %i.jc, %bb.az ], [ %i.jf, %bb.ba ]
  %i.jk = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %i.jk, %6
  br i1 %exitcond.not.i140.1, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !75

_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ar
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %5
  %i.jm = sub i64 %6, %5
  %i.jn = shl i64 %i.jm, 2
  %i.jo = load ptr, ptr %1, align 8, !tbaa !129
  %i.jp = load ptr, ptr %i.jo, align 8
  tail call void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jl, i64 noundef %i.jn), !inline_history !76
  br label %.loopexit

bb.bb:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jq = icmp ult i64 %5, %6
  br i1 %i.jq, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.bb
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.bc

._crit_edge.loopexit.i:                           ; preds = %bb.bh
  %i.jt = shl i64 %.2.i, 2
  br label %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.km, %bb.bh ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.bh ] ; 3 uses
  %i.ju = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.bc
  %i.jv = lshr i64 %.022.i, 6
  %i.jw = and i64 %.022.i, 63
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jv
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !301
  %i.jz = shl nuw i64 1, %i.jw
  %i.ka = and i64 %i.jy, %i.jz
  %.not.i143 = icmp eq i64 %i.ka, 0
  br i1 %.not.i143, label %bb.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.bc
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.022.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !119 ; 5 uses
  %i.kd = load i32, ptr %i.jr, align 4, !tbaa !119
  %i.ke = icmp ugt i32 %i.kd, %i.kc
  br i1 %i.ke, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i32 %i.kc, ptr %i.jr, align 8, !tbaa !892
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.kf = load i32, ptr %i.js, align 4, !tbaa !119
  %i.kg = icmp ugt i32 %i.kc, %i.kf
  br i1 %i.kg, label %bb.bf, label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bf:                                            ; preds = %bb.be
  store i32 %i.kc, ptr %i.js, align 4, !tbaa !893
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bf, %bb.be
  %i.kh = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01721.i
  store i32 %i.kc, ptr %i.ki, align 4, !tbaa !119
  %i.kj = icmp eq i64 %i.kh, 2048
  br i1 %i.kj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.kk = load ptr, ptr %1, align 8, !tbaa !129
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8192), !inline_history !77
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bg ], [ %i.kh, %_ZN6duckdb19ParquetCastOperator11HandleStatsIjjEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.km = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.km, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i, label %bb.bc, !llvm.loop !78

_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.bb, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.jt, %._crit_edge.loopexit.i ]
  %i.kn = load ptr, ptr %1, align 8, !tbaa !129
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bi:                                            ; preds = %bb.a
  %i.kp = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.kp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bo unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bi
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ks = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.ks) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kp) #25
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.bm ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueIjEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainIjjNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bo:                                            ; preds = %bb.bk
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteIjEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
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
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10WriteValueIjEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
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

end_hunk_19
begin_hunk_20_@_ZN6duckdb20StandardColumnWriterImmNS_19ParquetCastOperatorEE19WriteVectorInternalILb1EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  store i8 %.sroa.6.0.extract.trunc, ptr %i.ha, align 1, !tbaa !127
  %i.hb = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hc = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hd = shl i64 %i.hc, 2
  %i.he = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  store i8 %.sroa.7.0.extract.trunc, ptr %i.hg, align 1, !tbaa !127
  %i.hh = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hi = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hj = mul i64 %i.hi, 5
  %i.hk = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hl = getelementptr i8, ptr %i.hh, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  store i8 %.sroa.8.0.extract.trunc, ptr %i.hm, align 1, !tbaa !127
  %i.hn = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.ho = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hp = mul i64 %i.ho, 6
  %i.hq = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hr = getelementptr i8, ptr %i.hn, i64 %i.hp
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hq
  store i8 %.sroa.9.0.extract.trunc, ptr %i.hs, align 1, !tbaa !127
  %i.ht = load ptr, ptr %i.fz, align 8, !tbaa !307
  %i.hu = load i64, ptr %i.fy, align 8, !tbaa !551
  %i.hv = mul i64 %i.hu, 7
  %i.hw = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.hx = getelementptr i8, ptr %i.ht, i64 %i.hv
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.hw
  store i8 %.sroa.10.0.extract.trunc, ptr %i.hy, align 1, !tbaa !127
  %i.hz = load i64, ptr %i.ga, align 8, !tbaa !600
  %i.ia = add i64 %i.hz, 1
  store i64 %i.ia, ptr %i.ga, align 8, !tbaa !600
  %i.ib = add nuw i64 %.097153, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.ak, !llvm.loop !2276

bb.ao:                                            ; preds = %bb.a
  %i.ic = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i119 = icmp eq ptr %i.ic, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.id = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i119, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.ie = icmp ult i64 %5, %6
  br i1 %i.ie, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ap
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.promoted.i = load i64, ptr %i.if, align 8, !tbaa !301 ; 3 uses
  %.promoted2.i = load i64, ptr %i.ig, align 8, !tbaa !301 ; 3 uses
  %i.ih = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.ih, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %5
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !301 ; 6 uses
  %i.ik = icmp ugt i64 %.promoted.i, %i.ij
  br i1 %i.ik, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.prol.preheader
  store i64 %i.ij, ptr %i.if, align 8, !tbaa !920
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.prol.preheader
  %i.il = phi i64 [ %i.ij, %bb.aq ], [ %.promoted.i, %.prol.preheader ]
  %i.im = icmp ugt i64 %i.ij, %.promoted2.i
  br i1 %i.im, label %bb.as, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ij, ptr %i.ig, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.as, %bb.ar
  %i.in = phi i64 [ %.promoted2.i, %bb.ar ], [ %i.ij, %bb.as ]
  %i.io = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i64 [ %.promoted2.i, %.lr.ph.i ], [ %i.in, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr276 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.il, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.io, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.ip = icmp eq i64 %6, %.neg
  br i1 %i.ip, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.iq = phi i64 [ %i.je, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.ir = phi i64 [ %i.jc, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr276, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.jf, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.01.i
  %i.it = load i64, ptr %i.is, align 8, !tbaa !301 ; 6 uses
  %i.iu = icmp ugt i64 %i.ir, %i.it
  br i1 %i.iu, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.new
  store i64 %i.it, ptr %i.if, align 8, !tbaa !920
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.new
  %i.iv = phi i64 [ %i.it, %bb.at ], [ %i.ir, %.lr.ph.i.new ] ; 2 uses
  %i.iw = icmp ugt i64 %i.it, %i.iq
  br i1 %i.iw, label %bb.av, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.av:                                            ; preds = %bb.au
  store i64 %i.it, ptr %i.ig, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.av, %bb.au
  %i.ix = phi i64 [ %i.iq, %bb.au ], [ %i.it, %bb.av ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.01.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !301 ; 6 uses
  %i.jb = icmp ugt i64 %i.iv, %i.ja
  br i1 %i.jb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i64 %i.ja, ptr %i.if, align 8, !tbaa !920
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.jc = phi i64 [ %i.ja, %bb.aw ], [ %i.iv, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.jd = icmp ugt i64 %i.ja, %i.ix
  br i1 %i.jd, label %bb.ay, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ay:                                            ; preds = %bb.ax
  store i64 %i.ja, ptr %i.ig, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ay, %bb.ax
  %i.je = phi i64 [ %i.ix, %bb.ax ], [ %i.ja, %bb.ay ]
  %i.jf = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i120.1 = icmp eq i64 %i.jf, %6
  br i1 %exitcond.not.i120.1, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !80

_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ap
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %5
  %i.jh = sub i64 %6, %5
  %i.ji = shl i64 %i.jh, 3
  %i.jj = load ptr, ptr %1, align 8, !tbaa !129
  %i.jk = load ptr, ptr %i.jj, align 8
  tail call void %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jg, i64 noundef %i.ji), !inline_history !81
  br label %.loopexit

bb.az:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.jl = icmp ult i64 %5, %6
  br i1 %i.jl, label %.lr.ph.i121, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i121:                                      ; preds = %bb.az
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ba

._crit_edge.loopexit.i:                           ; preds = %bb.bf
  %i.jo = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i121
  %.022.i = phi i64 [ %5, %.lr.ph.i121 ], [ %i.kh, %bb.bf ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i121 ], [ %.2.i, %bb.bf ] ; 3 uses
  %i.jp = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i122, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.ba
  %i.jq = lshr i64 %.022.i, 6
  %i.jr = and i64 %.022.i, 63
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !301
  %i.ju = shl nuw i64 1, %i.jr
  %i.jv = and i64 %i.jt, %i.ju
  %.not.i123 = icmp eq i64 %i.jv, 0
  br i1 %.not.i123, label %bb.bf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.ba
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.022.i
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !301 ; 5 uses
  %i.jy = load i64, ptr %i.jm, align 8, !tbaa !301
  %i.jz = icmp ugt i64 %i.jy, %i.jx
  br i1 %i.jz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.jx, ptr %i.jm, align 8, !tbaa !920
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.ka = load i64, ptr %i.jn, align 8, !tbaa !301
  %i.kb = icmp ugt i64 %i.jx, %i.ka
  br i1 %i.kb, label %bb.bd, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.jx, ptr %i.jn, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124: ; preds = %bb.bd, %bb.bc
  %i.kc = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.jx, ptr %i.kd, align 8, !tbaa !301
  %i.ke = icmp eq i64 %i.kc, 2048
  br i1 %i.ke, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124
  %i.kf = load ptr, ptr %1, align 8, !tbaa !129
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !82
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.be ], [ %i.kc, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i124 ] ; 2 uses
  %i.kh = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %i.kh, %6
  br i1 %exitcond.not.i125, label %._crit_edge.loopexit.i, label %bb.ba, !llvm.loop !83

_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.az, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.az ], [ %i.jo, %._crit_edge.loopexit.i ]
  %i.ki = load ptr, ptr %1, align 8, !tbaa !129
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bg:                                            ; preds = %bb.a
  %i.kk = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.kk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bm unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bg
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kn = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.kn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn138 = phi { ptr, i32 } [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.kk) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn137 = phi { ptr, i32 } [ %.pn138, %bb.bk ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn137

.loopexit:                                        ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit118, %bb.ac, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit117, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueImEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.aj, %.loopexit147, %.loopexit144, %.loopexit141, %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bm:                                            ; preds = %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterImmNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 5 uses
  %7 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !479  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !924
  switch i32 %i.j, label %bb.bi [
    i32 2, label %bb.b
    i32 8, label %bb.b
    i32 5, label %bb.o
    i32 6, label %bb.y
    i32 9, label %bb.ai
    i32 0, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37088 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !926, !range !337, !noundef !189
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp uge i64 %5, %6
  %or.cond.not = or i1 %i.n, %i.m
  br i1 %or.cond.not, label %.loopexit169, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph193, %bb.c
  %.0111192 = phi i64 [ %i.ac, %bb.c ], [ %5, %.lr.ph193 ] ; 4 uses
  %i.p = lshr i64 %.0111192, 6
  %i.q = and i64 %.0111192, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !301
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not167 = icmp eq i64 %i.u, 0
  br i1 %.not167, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph193
  %.us-phi195 = phi i64 [ %5, %.lr.ph193 ], [ %.0111192, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 37092
  %i.w = load i32, ptr %i.v, align 4, !tbaa !927
  %i.x = trunc i32 %i.w to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.x, ptr %i.c, align 1, !tbaa !127
  %i.y = load ptr, ptr %1, align 8, !tbaa !129
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 37112
  store i64 0, ptr %i.aa, align 8, !tbaa !547
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 39168
  store i64 0, ptr %i.ab, align 8, !tbaa !607
  store i8 1, ptr %i.k, align 8, !tbaa !926
  br label %.loopexit169

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ac = add i64 %.0111192, 1                    ; 2 uses
  %exitcond226.not = icmp eq i64 %i.ac, %6
  br i1 %exitcond226.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !2278

.loopexit169:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.b
  %.1112 = phi i64 [ %5, %bb.b ], [ %.us-phi195, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.ad = icmp ult i64 %.1112, %6
  br i1 %i.ad, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.loopexit169
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 37080
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 37096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 39168 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 37120 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37112 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 37104 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 37124
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 37128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph202, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit
  %.2113201 = phi i64 [ %.1112, %.lr.ph202 ], [ %i.cg, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit ] ; 4 uses
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i115 = icmp eq ptr %i.am, null
  br i1 %.not.i115, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117: ; preds = %bb.d
  %i.an = lshr i64 %.2113201, 6
  %i.ao = and i64 %.2113201, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !301
  %i.ar = shl nuw i64 1, %i.ao
  %i.as = and i64 %i.aq, %i.ar
  %.not168 = icmp eq i64 %i.as, 0
  br i1 %.not168, label %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2113201
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !937, !nonnull !189, !align !190 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !301 ; 4 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = mul i64 %i.ax, -2960836687051489901     ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = mul i64 %i.ba, -2960836687051489901     ; 2 uses
  %i.bc = lshr i64 %i.bb, 32
end_hunk_20
begin_hunk_21_@_ZN6duckdb20StandardColumnWriterImmNS_19ParquetCastOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  %i.ie = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.if = shl i64 %i.ie, 2
  %i.ig = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.ih = getelementptr i8, ptr %i.id, i64 %i.if
  %i.ii = getelementptr i8, ptr %i.ih, i64 %i.ig
  store i8 %.sroa.7.0.extract.trunc, ptr %i.ii, align 1, !tbaa !127
  %i.ij = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.ik = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.il = mul i64 %i.ik, 5
  %i.im = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.in = getelementptr i8, ptr %i.ij, i64 %i.il
  %i.io = getelementptr i8, ptr %i.in, i64 %i.im
  store i8 %.sroa.8.0.extract.trunc, ptr %i.io, align 1, !tbaa !127
  %i.ip = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.iq = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.ir = mul i64 %i.iq, 6
  %i.is = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.it = getelementptr i8, ptr %i.ip, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.is
  store i8 %.sroa.9.0.extract.trunc, ptr %i.iu, align 1, !tbaa !127
  %i.iv = load ptr, ptr %i.gu, align 8, !tbaa !307
  %i.iw = load i64, ptr %i.gt, align 8, !tbaa !551
  %i.ix = mul i64 %i.iw, 7
  %i.iy = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.iz = getelementptr i8, ptr %i.iv, i64 %i.ix
  %i.ja = getelementptr i8, ptr %i.iz, i64 %i.iy
  store i8 %.sroa.10.0.extract.trunc, ptr %i.ja, align 1, !tbaa !127
  %i.jb = load i64, ptr %i.gv, align 8, !tbaa !600
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.gv, align 8, !tbaa !600
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit137, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit138
  %i.jd = add nuw i64 %.0105181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jd, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.al, !llvm.loop !2286

bb.aq:                                            ; preds = %bb.a
  %i.je = load ptr, ptr %i.f, align 8, !tbaa !336
  %.not.i139 = icmp eq ptr %i.je, null
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !479 ; 5 uses
  br i1 %.not.i139, label %bb.ar, label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %i.jg = icmp ult i64 %5, %6
  br i1 %i.jg, label %.lr.ph.i, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i:                                         ; preds = %bb.ar
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.promoted.i = load i64, ptr %i.jh, align 8, !tbaa !301 ; 3 uses
  %.promoted2.i = load i64, ptr %i.ji, align 8, !tbaa !301 ; 3 uses
  %i.jj = sub nuw i64 %6, %5
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.jj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %5
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !301 ; 6 uses
  %i.jm = icmp ugt i64 %.promoted.i, %i.jl
  br i1 %i.jm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.prol.preheader
  store i64 %i.jl, ptr %i.jh, align 8, !tbaa !920
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.prol.preheader
  %i.jn = phi i64 [ %i.jl, %bb.as ], [ %.promoted.i, %.prol.preheader ]
  %i.jo = icmp ugt i64 %i.jl, %.promoted2.i
  br i1 %i.jo, label %bb.au, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

bb.au:                                            ; preds = %bb.at
  store i64 %i.jl, ptr %i.ji, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol: ; preds = %bb.au, %bb.at
  %i.jp = phi i64 [ %.promoted2.i, %bb.at ], [ %i.jl, %bb.au ]
  %i.jq = add nuw i64 %5, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol, %.lr.ph.i
  %.unr = phi i64 [ %.promoted2.i, %.lr.ph.i ], [ %i.jp, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.unr308 = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.jn, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %.01.i.unr = phi i64 [ %5, %.lr.ph.i ], [ %i.jq, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.prol ]
  %i.jr = icmp eq i64 %6, %.neg
  br i1 %i.jr, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1
  %i.js = phi i64 [ %i.kg, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.jt = phi i64 [ %i.ke, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.unr308, %.prol.loopexit ] ; 2 uses
  %.01.i = phi i64 [ %i.kh, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1 ], [ %.01.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.01.i
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !301 ; 6 uses
  %i.jw = icmp ugt i64 %i.jt, %i.jv
  br i1 %i.jw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i.new
  store i64 %i.jv, ptr %i.jh, align 8, !tbaa !920
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i.new
  %i.jx = phi i64 [ %i.jv, %bb.av ], [ %i.jt, %.lr.ph.i.new ] ; 2 uses
  %i.jy = icmp ugt i64 %i.jv, %i.js
  br i1 %i.jy, label %bb.ax, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.ax:                                            ; preds = %bb.aw
  store i64 %i.jv, ptr %i.ji, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.ax, %bb.aw
  %i.jz = phi i64 [ %i.js, %bb.aw ], [ %i.jv, %bb.ax ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.01.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !301 ; 6 uses
  %i.kd = icmp ugt i64 %i.jx, %i.kc
  br i1 %i.kd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  store i64 %i.kc, ptr %i.jh, align 8, !tbaa !920
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.ke = phi i64 [ %i.kc, %bb.ay ], [ %i.jx, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i ]
  %i.kf = icmp ugt i64 %i.kc, %i.jz
  br i1 %i.kf, label %bb.ba, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

bb.ba:                                            ; preds = %bb.az
  store i64 %i.kc, ptr %i.ji, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1: ; preds = %bb.ba, %bb.az
  %i.kg = phi i64 [ %i.jz, %bb.az ], [ %i.kc, %bb.ba ]
  %i.kh = add nuw i64 %.01.i, 2                   ; 2 uses
  %exitcond.not.i140.1 = icmp eq i64 %i.kh, %6
  br i1 %exitcond.not.i140.1, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, label %.lr.ph.i.new, !llvm.loop !80

_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %.prol.loopexit, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i.1, %bb.ar
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %5
  %i.kj = sub i64 %6, %5
  %i.kk = shl i64 %i.kj, 3
  %i.kl = load ptr, ptr %1, align 8, !tbaa !129
  %i.km = load ptr, ptr %i.kl, align 8
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ki, i64 noundef %i.kk), !inline_history !81
  br label %.loopexit

bb.bb:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.kn = icmp ult i64 %5, %6
  br i1 %i.kn, label %.lr.ph.i141, label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

.lr.ph.i141:                                      ; preds = %bb.bb
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.bc

._crit_edge.loopexit.i:                           ; preds = %bb.bh
  %i.kq = shl i64 %.2.i, 3
  br label %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit

bb.bc:                                            ; preds = %bb.bh, %.lr.ph.i141
  %.022.i = phi i64 [ %5, %.lr.ph.i141 ], [ %i.lj, %bb.bh ] ; 4 uses
  %.01721.i = phi i64 [ 0, %.lr.ph.i141 ], [ %.2.i, %bb.bh ] ; 3 uses
  %i.kr = load ptr, ptr %i.f, align 8, !tbaa !336 ; 2 uses
  %.not.i.i142 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i142, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.bc
  %i.ks = lshr i64 %.022.i, 6
  %i.kt = and i64 %.022.i, 63
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ks
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !301
  %i.kw = shl nuw i64 1, %i.kt
  %i.kx = and i64 %i.kv, %i.kw
  %.not.i143 = icmp eq i64 %i.kx, 0
  br i1 %.not.i143, label %bb.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %bb.bc
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.022.i
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !301 ; 5 uses
  %i.la = load i64, ptr %i.ko, align 8, !tbaa !301
  %i.lb = icmp ugt i64 %i.la, %i.kz
  br i1 %i.lb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  store i64 %i.kz, ptr %i.ko, align 8, !tbaa !920
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %i.lc = load i64, ptr %i.kp, align 8, !tbaa !301
  %i.ld = icmp ugt i64 %i.kz, %i.lc
  br i1 %i.ld, label %bb.bf, label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

bb.bf:                                            ; preds = %bb.be
  store i64 %i.kz, ptr %i.kp, align 8, !tbaa !921
  br label %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144

_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144: ; preds = %bb.bf, %bb.be
  %i.le = add nsw i64 %.01721.i, 1                ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01721.i
  store i64 %i.kz, ptr %i.lf, align 8, !tbaa !301
  %i.lg = icmp eq i64 %i.le, 2048
  br i1 %i.lg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144
  %i.lh = load ptr, ptr %1, align 8, !tbaa !129
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 16384), !inline_history !82
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.2.i = phi i64 [ %.01721.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ], [ 0, %bb.bg ], [ %i.le, %_ZN6duckdb19ParquetCastOperator11HandleStatsImmEEvPNS_22ColumnWriterStatisticsET0_.exit.i144 ] ; 2 uses
  %i.lj = add i64 %.022.i, 1                      ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.lj, %6
  br i1 %exitcond.not.i145, label %._crit_edge.loopexit.i, label %bb.bc, !llvm.loop !83

_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit: ; preds = %bb.bb, %._crit_edge.loopexit.i
  %.017.lcssa.i = phi i64 [ 0, %bb.bb ], [ %i.kq, %._crit_edge.loopexit.i ]
  %i.lk = load ptr, ptr %1, align 8, !tbaa !129
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %.017.lcssa.i), !inline_history !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.bi:                                            ; preds = %bb.a
  %i.lm = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.lm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bo unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bi
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lp = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.lp) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn162 = phi { ptr, i32 } [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.lm) #25
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn161 = phi { ptr, i32 } [ %.pn162, %bb.bm ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn161

.loopexit:                                        ; preds = %bb.ap, %bb.ac, %bb.ah, %bb.s, %_ZN6duckdb10DbpEncoder10WriteValueImEEvRNS_11WriteStreamERKT_.exit, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.ak, %.loopexit175, %.loopexit172, %.loopexit169, %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit, %_ZN6duckdbL19TemplatedWritePlainImmNS_19ParquetCastOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE.exit
  ret void

bb.bo:                                            ; preds = %bb.bk
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteImEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
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
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10WriteValueImEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
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

end_hunk_21
begin_hunk_22_@_ZN6duckdb10DbpEncoder10WriteValueIfEEvRNS_11WriteStreamERKT_:.noexc.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10BeginWriteIfEEvRNS_9AllocatorERNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 44, ptr %i.a, align 8, !tbaa !301
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !135
  %i.e = load i64, ptr %i.a, align 8, !tbaa !301  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !135    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
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
define linkonce_odr hidden void @_ZN6duckdb11DlbaEncoder10WriteValueIfEEvRNS_11WriteStreamERKT_(ptr noundef nonnull align 8 dereferenceable(18520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.d, ptr noundef nonnull align 1 dereferenceable(44) @.str.42, i64 44, i1 false)
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
define internal fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_14float_na_equalEfNS_21FloatingPointOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = alloca [2048 x float], align 16          ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14float_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = icmp ult i64 %2, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.i = shl i64 %.1, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = load ptr, ptr %4, align 8, !tbaa !129
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.02 = phi i64 [ %2, %.lr.ph ], [ %i.w, %bb.i ] ; 2 uses
  %.0151 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02
  %.sroa.0.0.copyload = load float, ptr %i.l, align 4, !tbaa !944 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.sroa.0.0.copyload, ptr %i.a, align 4, !tbaa !944
  %i.m = call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %.sroa.0.0.copyload)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 8, !tbaa !968
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.o, ptr %i.f, align 8, !tbaa !965
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br i1 %i.p, label %bb.g, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.q, ptr %i.g, align 4, !tbaa !966
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add nsw i64 %.0151, 1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0151
  store float %.sroa.0.0.copyload, ptr %i.s, align 4, !tbaa !944
  %i.t = icmp eq i64 %i.r, 2048
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !129
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef 8192)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit
  %.1 = phi i64 [ 0, %bb.h ], [ %i.r, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit ] ; 2 uses
  %i.w = add i64 %.02, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !2353
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_14float_na_equalEfNS_21FloatingPointOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = alloca [2048 x float], align 16          ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_14float_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = icmp ult i64 %2, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.i = shl i64 %.2, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = load ptr, ptr %5, align 8, !tbaa !129
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef %.017.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.022 = phi i64 [ %2, %.lr.ph ], [ %i.ad, %bb.i ] ; 4 uses
  %.01721 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.i ] ; 3 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !336    ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.b
  %i.m = lshr i64 %.022, 6
  %i.n = and i64 %.022, 63
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !301
  %i.q = shl nuw i64 1, %i.n
  %i.r = and i64 %i.p, %i.q
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.022
  %.sroa.0.0.copyload = load float, ptr %i.s, align 4, !tbaa !944 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %.sroa.0.0.copyload, ptr %i.a, align 4, !tbaa !944
  %i.t = call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %.sroa.0.0.copyload)
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.h, align 8, !tbaa !968
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.u = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.v, ptr %i.f, align 8, !tbaa !965
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br i1 %i.w, label %bb.g, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.x, ptr %i.g, align 4, !tbaa !966
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = add nsw i64 %.01721, 1                   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01721
  store float %.sroa.0.0.copyload, ptr %i.z, align 4, !tbaa !944
  %i.aa = icmp eq i64 %i.y, 2048
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit
  %i.ab = load ptr, ptr %5, align 8, !tbaa !129
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef 8192)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit, %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.2 = phi i64 [ %.01721, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ 0, %bb.h ], [ %i.y, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit ] ; 2 uses
  %i.ad = add i64 %.022, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !2354
}

declare noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryINS_14float_na_equalEfNS_21FloatingPointOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2357)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2357 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2357

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !2357
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !2357
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN6duckdb14float_na_equalERKfEZNS0_20StandardColumnWriterIS1_fNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E9_M_invokeERKSt9_Any_dataS3_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #7 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN6duckdb20StandardColumnWriterINS0_14float_na_equalEfNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKfE_JSA_SC_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN6duckdb14float_na_equalERKfEZNS0_20StandardColumnWriterIS1_fNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_14float_na_equalEfNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKfE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterINS_14float_na_equalEfNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKS1_RKfE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_14float_na_equalEfNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKfE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_14float_na_equalEfNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKfE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2358
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_14float_na_equalEfNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKfE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_14float_na_equalEfNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKfE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN6duckdb20StandardColumnWriterINS0_14float_na_equalEfNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKfE_JSA_SC_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2360, !nonnull !189, !align !190
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !553  ; 3 uses
  %i.d = load float, ptr %2, align 4, !tbaa !944  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.d, ptr %i.a, align 4, !tbaa !944
  %i.e = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 1, ptr %i.f, align 8, !tbaa !968
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.i, ptr %i.g, align 8, !tbaa !965
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  br i1 %i.k, label %bb.f, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !944
  store float %i.l, ptr %i.j, align 4, !tbaa !966
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2361, !nonnull !189, !align !190
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !556
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZZN6duckdb20StandardColumnWriterINS_14float_na_equalEfNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKfE_clES9_SB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.q = call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 4 dereferenceable(4) %2, i64 noundef 4, i64 noundef 0)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !2361, !nonnull !189, !align !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.t = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.q)
  br label %_ZZN6duckdb20StandardColumnWriterINS_14float_na_equalEfNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKfE_clES9_SB_.exit

_ZZN6duckdb20StandardColumnWriterINS_14float_na_equalEfNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKfE_clES9_SB_.exit: ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_14float_na_equalEfEEvPNS_22ColumnWriterStatisticsET0_.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE20InitializeWriteStateERN14duckdb_parquet8RowGroupE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.598") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(91) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.1226", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !428
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.k = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #28, !noalias !2365 ; 3 uses
  invoke void @_ZN6duckdb25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm(ptr noundef nonnull align 8 dereferenceable(380) %i.k, ptr noundef nonnull align 8 dereferenceable(744) %i.b, ptr noundef nonnull align 8 dereferenceable(91) %2, i64 noundef %i.j)
          to label %_ZN6duckdb9make_uniqINS_25StandardColumnWriterStateINS_15double_na_equalEdNS_21FloatingPointOperatorEEEJRNS_13ParquetWriterERN14duckdb_parquet8RowGroupEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2365

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb25StandardColumnWriterStateINS0_15double_na_equalEdNS0_21FloatingPointOperatorEEESt14default_deleteIS4_EED2Ev.exit7, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.u, %_ZNSt10unique_ptrIN6duckdb25StandardColumnWriterStateINS0_15double_na_equalEdNS0_21FloatingPointOperatorEEESt14default_deleteIS4_EED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #24, !noalias !2365
end_hunk_22
begin_hunk_23_@_ZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE19WriteVectorInternalILb0EEEvRNS_11WriteStreamEPNS_22ColumnWriterStatisticsEPNS_21ColumnWriterPageStateERNS_6VectorEmm:bb.a
  store i8 %.1.extract.trunc, ptr %i.hn, align 1, !tbaa !127
  %.2.extract.shift = lshr i64 %i.hf, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8
  %i.ho = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.hp = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.hq = shl i64 %i.hp, 1
  %i.hr = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.hs = getelementptr i8, ptr %i.ho, i64 %i.hq
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hr
  store i8 %.2.extract.trunc, ptr %i.ht, align 1, !tbaa !127
  %.3.extract.shift = lshr i64 %i.hf, 24
  %.3.extract.trunc = trunc i64 %.3.extract.shift to i8
  %i.hu = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.hv = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.hw = mul i64 %i.hv, 3
  %i.hx = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.hy = getelementptr i8, ptr %i.hu, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hx
  store i8 %.3.extract.trunc, ptr %i.hz, align 1, !tbaa !127
  %.4.extract.shift = lshr i64 %i.hf, 32
  %.4.extract.trunc = trunc i64 %.4.extract.shift to i8
  %i.ia = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.ib = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.ic = shl i64 %i.ib, 2
  %i.id = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.ie = getelementptr i8, ptr %i.ia, i64 %i.ic
  %i.if = getelementptr i8, ptr %i.ie, i64 %i.id
  store i8 %.4.extract.trunc, ptr %i.if, align 1, !tbaa !127
  %.5.extract.shift = lshr i64 %i.hf, 40
  %.5.extract.trunc = trunc i64 %.5.extract.shift to i8
  %i.ig = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.ih = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.ii = mul i64 %i.ih, 5
  %i.ij = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.ik = getelementptr i8, ptr %i.ig, i64 %i.ii
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.ij
  store i8 %.5.extract.trunc, ptr %i.il, align 1, !tbaa !127
  %.6.extract.shift = lshr i64 %i.hf, 48
  %.6.extract.trunc = trunc i64 %.6.extract.shift to i8
  %i.im = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.in = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.io = mul i64 %i.in, 6
  %i.ip = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.iq = getelementptr i8, ptr %i.im, i64 %i.io
  %i.ir = getelementptr i8, ptr %i.iq, i64 %i.ip
  store i8 %.6.extract.trunc, ptr %i.ir, align 1, !tbaa !127
  %.7.extract.shift = lshr i64 %i.hf, 56
  %.7.extract.trunc = trunc nuw i64 %.7.extract.shift to i8
  %i.is = load ptr, ptr %i.gq, align 8, !tbaa !307
  %i.it = load i64, ptr %i.gp, align 8, !tbaa !551
  %i.iu = mul i64 %i.it, 7
  %i.iv = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.iw = getelementptr i8, ptr %i.is, i64 %i.iu
  %i.ix = getelementptr i8, ptr %i.iw, i64 %i.iv
  store i8 %.7.extract.trunc, ptr %i.ix, align 1, !tbaa !127
  %i.iy = load i64, ptr %i.gr, align 8, !tbaa !600
  %i.iz = add i64 %i.iy, 1
  store i64 %i.iz, ptr %i.gr, align 8, !tbaa !600
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit140, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit141
  %i.ja = add i64 %.0109177, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ja, %6
  br i1 %exitcond.not, label %.loopexit, label %bb.au, !llvm.loop !2418

bb.bb:                                            ; preds = %bb.a
  %i.jb = load ptr, ptr %i.k, align 8, !tbaa !336
  %.not.i142 = icmp eq ptr %i.jb, null
  br i1 %.not.i142, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_15double_na_equalEdNS_21FloatingPointOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.bd:                                            ; preds = %bb.bb
  tail call fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_15double_na_equalEdNS_21FloatingPointOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %2, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %.loopexit

bb.be:                                            ; preds = %bb.a
  %i.jc = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @__cxa_throw(ptr nonnull %i.jc, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bk unwind label %bb.bh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.be
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0 = phi i1 [ false, %bb.bg ], [ true, %bb.bf ] ; 2 uses
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jf = load ptr, ptr %8, align 8, !tbaa !135   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.jf) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bi, label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn158 = phi { ptr, i32 } [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.jc) #25
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn157 = phi { ptr, i32 } [ %.pn158, %bb.bi ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn157

.loopexit:                                        ; preds = %bb.ba, %bb.aj, %bb.aq, %bb.v, %bb.ac, %bb.c, %_ZN6duckdb12RleBpEncoder10WriteValueERNS_11WriteStreamERKj.exit, %bb.at, %.loopexit171, %.loopexit168, %.loopexit165, %bb.bc, %bb.bd
  ret void

bb.bk:                                            ; preds = %bb.bg
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_15double_na_equalEdNS_21FloatingPointOperatorELb1EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca [2048 x double], align 16         ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_15double_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = icmp ult i64 %2, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.i = shl i64 %.1, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = load ptr, ptr %4, align 8, !tbaa !129
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef %.015.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.02 = phi i64 [ %2, %.lr.ph ], [ %i.w, %bb.i ] ; 2 uses
  %.0151 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02
  %.sroa.0.0.copyload = load double, ptr %i.l, align 8, !tbaa !748 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !748
  %i.m = call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %.sroa.0.0.copyload)
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 8, !tbaa !999
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.o, ptr %i.f, align 8, !tbaa !996
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.p, label %bb.g, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.q, ptr %i.g, align 8, !tbaa !997
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = add nsw i64 %.0151, 1                    ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0151
  store double %.sroa.0.0.copyload, ptr %i.s, align 8, !tbaa !748
  %i.t = icmp eq i64 %i.r, 2048
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !129
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.b, i64 noundef 16384)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit
  %.1 = phi i64 [ 0, %bb.h ], [ %i.r, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit ] ; 2 uses
  %i.w = add i64 %.02, 1                          ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !2420
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL19TemplatedWritePlainINS_15double_na_equalEdNS_21FloatingPointOperatorELb0EEEvRNS_6VectorEPNS_22ColumnWriterStatisticsEmmRKNS_12ValidityMaskERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca [2048 x double], align 16         ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_15double_na_equalEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.e = icmp ult i64 %2, %3
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.i = shl i64 %.2, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.017.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %._crit_edge.loopexit ]
  %i.j = load ptr, ptr %5, align 8, !tbaa !129
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef %.017.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.022 = phi i64 [ %2, %.lr.ph ], [ %i.ad, %bb.i ] ; 4 uses
  %.01721 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.i ] ; 3 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !336    ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.b
  %i.m = lshr i64 %.022, 6
  %i.n = and i64 %.022, 63
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !301
  %i.q = shl nuw i64 1, %i.n
  %i.r = and i64 %i.p, %i.q
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022
  %.sroa.0.0.copyload = load double, ptr %i.s, align 8, !tbaa !748 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !748
  %i.t = call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %.sroa.0.0.copyload)
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  store i8 1, ptr %i.h, align 8, !tbaa !999
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.u = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.v, ptr %i.f, align 8, !tbaa !996
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.w, label %bb.g, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.x, ptr %i.g, align 8, !tbaa !997
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = add nsw i64 %.01721, 1                   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.01721
  store double %.sroa.0.0.copyload, ptr %i.z, align 8, !tbaa !748
  %i.aa = icmp eq i64 %i.y, 2048
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit
  %i.ab = load ptr, ptr %5, align 8, !tbaa !129
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef 16384)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit, %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.2 = phi i64 [ %.01721, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ 0, %bb.h ], [ %i.y, %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit ] ; 2 uses
  %i.ad = add i64 %.022, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !2421
}

declare noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb19PrimitiveDictionaryINS_15double_na_equalEdNS_21FloatingPointOperatorEE21GetTargetMemoryStreamEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.683") align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb12MemoryStream7GetDataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb12MemoryStream11GetCapacityEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2424)
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28, !noalias !2424 ; 3 uses
  invoke void @_ZN6duckdb12MemoryStreamC1EPhm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2424

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i, %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %_ZNKSt14default_deleteIN6duckdb12MemoryStreamEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24, !noalias !2424
  br label %common.resume

_ZN6duckdb9make_uniqINS_12MemoryStreamEJPhmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !549, !alias.scope !2424
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
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN6duckdb15double_na_equalERKdEZNS0_20StandardColumnWriterIS1_dNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E9_M_invokeERKSt9_Any_dataS3_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7 comdat align 2 {
bb.a:
  tail call void @_ZSt13__invoke_implIvRZN6duckdb20StandardColumnWriterINS0_15double_na_equalEdNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKdE_JSA_SC_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN6duckdb15double_na_equalERKdEZNS0_20StandardColumnWriterIS1_dNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlS3_S5_E_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_15double_na_equalEdNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEEUlRKS1_RKdE_, ptr %0, align 8, !tbaa !610
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_15double_na_equalEdNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !611
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_15double_na_equalEdNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2425
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_15double_na_equalEdNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb20StandardColumnWriterINS1_15double_na_equalEdNS1_21FloatingPointOperatorEE15FlushDictionaryERNS1_26PrimitiveColumnWriterStateEPNS1_22ColumnWriterStatisticsEEUlRKS3_RKdE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN6duckdb20StandardColumnWriterINS0_15double_na_equalEdNS0_21FloatingPointOperatorEE15FlushDictionaryERNS0_26PrimitiveColumnWriterStateEPNS0_22ColumnWriterStatisticsEEUlRKS2_RKdE_JSA_SC_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2427, !nonnull !189, !align !190
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !553  ; 3 uses
  %i.d = load double, ptr %2, align 8, !tbaa !748 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.d, ptr %i.a, align 8, !tbaa !748
  %i.e = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.f, align 8, !tbaa !999
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.i, ptr %i.g, align 8, !tbaa !996
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.k = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.k, label %bb.f, label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.l = load double, ptr %i.a, align 8, !tbaa !748
  store double %i.l, ptr %i.j, align 8, !tbaa !997
  br label %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i

_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i: ; preds = %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2428, !nonnull !189, !align !190
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !556
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKdE_clES9_SB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i
  %i.q = call noundef i64 @_ZN11duckdb_zstd5XXH64EPKvmy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 0)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !2428, !nonnull !189, !align !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  %i.t = call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ParquetBloomFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  call void @_ZN6duckdb18ParquetBloomFilter12FilterInsertEm(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef %i.q)
  br label %_ZZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKdE_clES9_SB_.exit

_ZZN6duckdb20StandardColumnWriterINS_15double_na_equalEdNS_21FloatingPointOperatorEE15FlushDictionaryERNS_26PrimitiveColumnWriterStateEPNS_22ColumnWriterStatisticsEENKUlRKS1_RKdE_clES9_SB_.exit: ; preds = %_ZN6duckdb21FloatingPointOperator11HandleStatsINS_15double_na_equalEdEEvPNS_22ColumnWriterStatisticsET0_.exit.i, %bb.g
  ret void
}

declare void @_ZN6duckdb24FixedDecimalColumnWriterC1ERNS_13ParquetWriterEONS_19ParquetColumnSchemaENS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(157), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_8string_tES1_NS_19ParquetBlobOperatorEED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb20StandardColumnWriterINS_8string_tES1_NS_19ParquetBlobOperatorEE20InitializeWriteStateERN14duckdb_parquet8RowGroupE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.598") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(91) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.1271", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188, !nonnull !189, !align !190
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !428
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432)
  %i.k = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #28, !noalias !2432 ; 3 uses
  invoke void @_ZN6duckdb25StandardColumnWriterStateINS_8string_tES1_NS_19ParquetBlobOperatorEEC2ERNS_13ParquetWriterERN14duckdb_parquet8RowGroupEm(ptr noundef nonnull align 8 dereferenceable(380) %i.k, ptr noundef nonnull align 8 dereferenceable(744) %i.b, ptr noundef nonnull align 8 dereferenceable(91) %2, i64 noundef %i.j)
          to label %_ZN6duckdb9make_uniqINS_25StandardColumnWriterStateINS_8string_tES2_NS_19ParquetBlobOperatorEEEJRNS_13ParquetWriterERN14duckdb_parquet8RowGroupEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !2432

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb25StandardColumnWriterStateINS0_8string_tES2_NS0_19ParquetBlobOperatorEEESt14default_deleteIS4_EED2Ev.exit7, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.b ], [ %i.u, %_ZNSt10unique_ptrIN6duckdb25StandardColumnWriterStateINS0_8string_tES2_NS0_19ParquetBlobOperatorEEESt14default_deleteIS4_EED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
end_hunk_23
