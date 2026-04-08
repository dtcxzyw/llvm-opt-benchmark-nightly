inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm:bb.a
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %.021.i, i64 %i.l) ; 3 uses
  %i.n = add i64 %.01820.i, %4
  tail call void @_ZN6duckdb13ZSTDScanState12ScanInternalERNS_19ZSTDVectorScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.n)
  %i.o = sub i64 %.021.i, %i.m                    ; 2 uses
  %i.p = add i64 %i.m, %.01820.i
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZN6duckdb13ZSTDScanState11ScanPartialEmRNS_6VectorEmm.exit, label %.lr.ph.i, !llvm.loop !757
end_hunk_0
begin_hunk_1_@_ZN6duckdb11ZSTDStorage10StringScanERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE:bb.a
  %i.l = sub i64 %i.i, %i.k
  %i.m = tail call noundef i64 @llvm.umin.i64(i64 %.021.i.i, i64 %i.l) ; 3 uses
  tail call void @_ZN6duckdb13ZSTDScanState12ScanInternalERNS_19ZSTDVectorScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.01820.i.i)
  %i.n = sub i64 %.021.i.i, %i.m                  ; 2 uses
  %i.o = add i64 %i.m, %.01820.i.i
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN6duckdb11ZSTDStorage17StringScanPartialERNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.exit, label %.lr.ph.i.i, !llvm.loop !757
end_hunk_1
begin_hunk_2_@_ZN6duckdb13AlpRDFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
end_hunk_2
begin_hunk_3_@_ZN6duckdb9AlpRDSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb14AlpRDScanStateIfE10ScanVectorIjLb1EEEvPT_m(ptr noundef nonnull align 8 dereferenceable(24680) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
end_hunk_3
begin_hunk_4_@_ZN6duckdb13AlpRDFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
end_hunk_4
begin_hunk_5_@_ZN6duckdb9AlpRDSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb14AlpRDScanStateIdE10ScanVectorImLb1EEEvPT_m(ptr noundef nonnull align 8 dereferenceable(28776) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
end_hunk_5
begin_hunk_6_@_ZN6duckdb13ZSTDScanState4SkipERNS_19ZSTDVectorScanStateEm:bb.a
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %.01825) ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1011
  call void @_ZN6duckdb13ZSTDScanState16DecompressStringERNS_19ZSTDVectorScanStateEPhm(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %i.ac, i64 noundef %i.ab)
  %i.ad = sub i64 %.01825, %i.ab                  ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !1239

end_hunk_6
begin_hunk_7_@_ZN6duckdb11RLEFetchRowIaEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_7
begin_hunk_8_@_ZN6duckdb7RLESkipIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_8
begin_hunk_9_@_ZN6duckdb9RLESelectIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = sub i64 %i.aq, %i.am
  %i.as = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.ar) ; 2 uses
  %i.at = sub i64 %.010.i, %i.as                  ; 2 uses
  %i.au = add i64 %i.as, %i.am                    ; 2 uses
  %.not8.i = icmp ult i64 %i.au, %i.aq
  br i1 %.not8.i, label %bb.g, label %bb.f
end_hunk_9
begin_hunk_10_@_ZN6duckdb9RLESelectIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bq) ; 2 uses
  %i.bs = sub i64 %.010.i52, %i.br                ; 2 uses
  %i.bt = add i64 %i.br, %i.bl                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bt, %i.bp
  br i1 %.not8.i53, label %bb.r, label %bb.q
end_hunk_10
begin_hunk_11_@_ZN6duckdb9RLEFilterIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_11
begin_hunk_12_@_ZN6duckdb9RLEFilterIaEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i163, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i164, label %bb.ay, label %bb.ax
end_hunk_12
begin_hunk_13_@_ZN6duckdb11RLEFetchRowIsEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_13
begin_hunk_14_@_ZN6duckdb7RLESkipIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_14
begin_hunk_15_@_ZN6duckdb9RLESelectIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_15
begin_hunk_16_@_ZN6duckdb9RLESelectIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_16
begin_hunk_17_@_ZN6duckdb9RLESelectIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_17
begin_hunk_18_@_ZN6duckdb9RLEFilterIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gy) ; 2 uses
  %i.ha = sub i64 %.010.i, %i.gz                  ; 2 uses
  %i.hb = add i64 %i.gz, %i.gt                    ; 2 uses
  %.not8.i = icmp ult i64 %i.hb, %i.gx
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_18
begin_hunk_19_@_ZN6duckdb9RLEFilterIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hq
  %i.hw = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hv) ; 2 uses
  %i.hx = sub i64 %.010.i163, %i.hw               ; 2 uses
  %i.hy = add i64 %i.hw, %i.hq                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hy, %i.hu
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_19
begin_hunk_20_@_ZN6duckdb11RLEFetchRowIiEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_20
begin_hunk_21_@_ZN6duckdb7RLESkipIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_21
begin_hunk_22_@_ZN6duckdb9RLESelectIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_22
begin_hunk_23_@_ZN6duckdb9RLESelectIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_23
begin_hunk_24_@_ZN6duckdb9RLESelectIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_24
begin_hunk_25_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hk = zext i16 %i.hj to i64                   ; 2 uses
  %i.hl = sub i64 %i.hk, %i.hg
  %i.hm = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.hl) ; 2 uses
  %i.hn = sub i64 %.010.i, %i.hm                  ; 2 uses
  %i.ho = add i64 %i.hm, %i.hg                    ; 2 uses
  %.not8.i = icmp ult i64 %i.ho, %i.hk
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_25
begin_hunk_26_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ih = zext i16 %i.ig to i64                   ; 2 uses
  %i.ii = sub i64 %i.ih, %i.id
  %i.ij = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.ii) ; 2 uses
  %i.ik = sub i64 %.010.i163, %i.ij               ; 2 uses
  %i.il = add i64 %i.ij, %i.id                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.il, %i.ih
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_26
begin_hunk_27_@_ZN6duckdb11RLEFetchRowIlEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_27
begin_hunk_28_@_ZN6duckdb7RLESkipIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_28
begin_hunk_29_@_ZN6duckdb9RLESelectIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.as = zext i16 %i.ar to i64                   ; 2 uses
  %i.at = sub i64 %i.as, %i.ao
  %i.au = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.at) ; 2 uses
  %i.av = sub i64 %.010.i52.us, %i.au             ; 2 uses
  %i.aw = add i64 %i.au, %i.ao                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.aw, %i.as
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_29
begin_hunk_30_@_ZN6duckdb9RLESelectIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bg
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bl) ; 2 uses
  %i.bn = sub i64 %.010.i, %i.bm                  ; 2 uses
  %i.bo = add i64 %i.bm, %i.bg                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bo, %i.bk
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_30
begin_hunk_31_@_ZN6duckdb9RLESelectIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.ci) ; 2 uses
  %i.ck = sub i64 %.010.i52, %i.cj                ; 2 uses
  %i.cl = add i64 %i.cj, %i.cd                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cl, %i.ch
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_31
begin_hunk_32_@_ZN6duckdb9RLEFilterIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gy) ; 2 uses
  %i.ha = sub i64 %.010.i, %i.gz                  ; 2 uses
  %i.hb = add i64 %i.gz, %i.gt                    ; 2 uses
  %.not8.i = icmp ult i64 %i.hb, %i.gx
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_32
begin_hunk_33_@_ZN6duckdb9RLEFilterIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hq
  %i.hw = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hv) ; 2 uses
  %i.hx = sub i64 %.010.i163, %i.hw               ; 2 uses
  %i.hy = add i64 %i.hw, %i.hq                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hy, %i.hu
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_33
begin_hunk_34_@_ZN6duckdb11RLEFetchRowINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_34
begin_hunk_35_@_ZN6duckdb7RLESkipINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_35
begin_hunk_36_@_ZN6duckdb9RLESelectINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.aq) ; 2 uses
  %i.as = sub i64 %.010.i, %i.ar                  ; 2 uses
  %i.at = add i64 %i.ar, %i.al                    ; 2 uses
  %.not8.i = icmp ult i64 %i.at, %i.ap
  br i1 %.not8.i, label %bb.g, label %bb.f
end_hunk_36
begin_hunk_37_@_ZN6duckdb9RLESelectINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bp) ; 2 uses
  %i.br = sub i64 %.010.i52, %i.bq                ; 2 uses
  %i.bs = add i64 %i.bq, %i.bk                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bs, %i.bo
  br i1 %.not8.i53, label %bb.r, label %bb.q
end_hunk_37
begin_hunk_38_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_38
begin_hunk_39_@_ZN6duckdb9RLEFilterINS_9hugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i161, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i161, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i162 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i162, label %bb.ay, label %bb.ax
end_hunk_39
begin_hunk_40_@_ZN6duckdb11RLEFetchRowINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_40
begin_hunk_41_@_ZN6duckdb7RLESkipINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_41
begin_hunk_42_@_ZN6duckdb9RLESelectINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.aq) ; 2 uses
  %i.as = sub i64 %.010.i, %i.ar                  ; 2 uses
  %i.at = add i64 %i.ar, %i.al                    ; 2 uses
  %.not8.i = icmp ult i64 %i.at, %i.ap
  br i1 %.not8.i, label %bb.g, label %bb.f
end_hunk_42
begin_hunk_43_@_ZN6duckdb9RLESelectINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bp) ; 2 uses
  %i.br = sub i64 %.010.i52, %i.bq                ; 2 uses
  %i.bs = add i64 %i.bq, %i.bk                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bs, %i.bo
  br i1 %.not8.i53, label %bb.r, label %bb.q
end_hunk_43
begin_hunk_44_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_44
begin_hunk_45_@_ZN6duckdb9RLEFilterINS_10uhugeint_tEEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i161, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i161, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i162 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i162, label %bb.ay, label %bb.ax
end_hunk_45
begin_hunk_46_@_ZN6duckdb11RLEFetchRowIhEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_46
begin_hunk_47_@_ZN6duckdb7RLESkipIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_47
begin_hunk_48_@_ZN6duckdb9RLESelectIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = sub i64 %i.aq, %i.am
  %i.as = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.ar) ; 2 uses
  %i.at = sub i64 %.010.i, %i.as                  ; 2 uses
  %i.au = add i64 %i.as, %i.am                    ; 2 uses
  %.not8.i = icmp ult i64 %i.au, %i.aq
  br i1 %.not8.i, label %bb.g, label %bb.f
end_hunk_48
begin_hunk_49_@_ZN6duckdb9RLESelectIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.bq) ; 2 uses
  %i.bs = sub i64 %.010.i52, %i.br                ; 2 uses
  %i.bt = add i64 %i.br, %i.bl                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.bt, %i.bp
  br i1 %.not8.i53, label %bb.r, label %bb.q
end_hunk_49
begin_hunk_50_@_ZN6duckdb9RLEFilterIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_50
begin_hunk_51_@_ZN6duckdb9RLEFilterIhEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hi = zext i16 %i.hh to i64                   ; 2 uses
  %i.hj = sub i64 %i.hi, %i.he
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hj) ; 2 uses
  %i.hl = sub i64 %.010.i163, %i.hk               ; 2 uses
  %i.hm = add i64 %i.hk, %i.he                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hm, %i.hi
  br i1 %.not8.i164, label %bb.ay, label %bb.ax
end_hunk_51
begin_hunk_52_@_ZN6duckdb11RLEFetchRowItEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_52
begin_hunk_53_@_ZN6duckdb7RLESkipItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_53
begin_hunk_54_@_ZN6duckdb9RLESelectItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_54
begin_hunk_55_@_ZN6duckdb9RLESelectItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_55
begin_hunk_56_@_ZN6duckdb9RLESelectItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_56
begin_hunk_57_@_ZN6duckdb9RLEFilterItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gy) ; 2 uses
  %i.ha = sub i64 %.010.i, %i.gz                  ; 2 uses
  %i.hb = add i64 %i.gz, %i.gt                    ; 2 uses
  %.not8.i = icmp ult i64 %i.hb, %i.gx
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_57
begin_hunk_58_@_ZN6duckdb9RLEFilterItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hq
  %i.hw = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hv) ; 2 uses
  %i.hx = sub i64 %.010.i163, %i.hw               ; 2 uses
  %i.hy = add i64 %i.hw, %i.hq                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hy, %i.hu
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_58
begin_hunk_59_@_ZN6duckdb11RLEFetchRowIjEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_59
begin_hunk_60_@_ZN6duckdb7RLESkipIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_60
begin_hunk_61_@_ZN6duckdb9RLESelectIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_61
begin_hunk_62_@_ZN6duckdb9RLESelectIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_62
begin_hunk_63_@_ZN6duckdb9RLESelectIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_63
begin_hunk_64_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hk = zext i16 %i.hj to i64                   ; 2 uses
  %i.hl = sub i64 %i.hk, %i.hg
  %i.hm = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.hl) ; 2 uses
  %i.hn = sub i64 %.010.i, %i.hm                  ; 2 uses
  %i.ho = add i64 %i.hm, %i.hg                    ; 2 uses
  %.not8.i = icmp ult i64 %i.ho, %i.hk
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_64
begin_hunk_65_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.ih = zext i16 %i.ig to i64                   ; 2 uses
  %i.ii = sub i64 %i.ih, %i.id
  %i.ij = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.ii) ; 2 uses
  %i.ik = sub i64 %.010.i163, %i.ij               ; 2 uses
  %i.il = add i64 %i.ij, %i.id                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.il, %i.ih
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_65
begin_hunk_66_@_ZN6duckdb11RLEFetchRowImEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_66
begin_hunk_67_@_ZN6duckdb7RLESkipImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_67
begin_hunk_68_@_ZN6duckdb9RLESelectImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.as = zext i16 %i.ar to i64                   ; 2 uses
  %i.at = sub i64 %i.as, %i.ao
  %i.au = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.at) ; 2 uses
  %i.av = sub i64 %.010.i52.us, %i.au             ; 2 uses
  %i.aw = add i64 %i.au, %i.ao                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.aw, %i.as
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_68
begin_hunk_69_@_ZN6duckdb9RLESelectImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bg
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bl) ; 2 uses
  %i.bn = sub i64 %.010.i, %i.bm                  ; 2 uses
  %i.bo = add i64 %i.bm, %i.bg                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bo, %i.bk
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_69
begin_hunk_70_@_ZN6duckdb9RLESelectImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ch = zext i16 %i.cg to i64                   ; 2 uses
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.ci) ; 2 uses
  %i.ck = sub i64 %.010.i52, %i.cj                ; 2 uses
  %i.cl = add i64 %i.cj, %i.cd                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cl, %i.ch
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_70
begin_hunk_71_@_ZN6duckdb9RLEFilterImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gy) ; 2 uses
  %i.ha = sub i64 %.010.i, %i.gz                  ; 2 uses
  %i.hb = add i64 %i.gz, %i.gt                    ; 2 uses
  %.not8.i = icmp ult i64 %i.hb, %i.gx
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_71
begin_hunk_72_@_ZN6duckdb9RLEFilterImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hq
  %i.hw = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hv) ; 2 uses
  %i.hx = sub i64 %.010.i163, %i.hw               ; 2 uses
  %i.hy = add i64 %i.hw, %i.hq                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hy, %i.hu
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_72
begin_hunk_73_@_ZN6duckdb11RLEFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_73
begin_hunk_74_@_ZN6duckdb7RLESkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_74
begin_hunk_75_@_ZN6duckdb9RLESelectIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_75
begin_hunk_76_@_ZN6duckdb9RLESelectIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_76
begin_hunk_77_@_ZN6duckdb9RLESelectIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_77
begin_hunk_78_@_ZN6duckdb9RLEFilterIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gx = zext i16 %i.gw to i64                   ; 2 uses
  %i.gy = sub i64 %i.gx, %i.gt
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gy) ; 2 uses
  %i.ha = sub i64 %.010.i, %i.gz                  ; 2 uses
  %i.hb = add i64 %i.gz, %i.gt                    ; 2 uses
  %.not8.i = icmp ult i64 %i.hb, %i.gx
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_78
begin_hunk_79_@_ZN6duckdb9RLEFilterIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hu = zext i16 %i.ht to i64                   ; 2 uses
  %i.hv = sub i64 %i.hu, %i.hq
  %i.hw = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hv) ; 2 uses
  %i.hx = sub i64 %.010.i163, %i.hw               ; 2 uses
  %i.hy = add i64 %i.hw, %i.hq                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hy, %i.hu
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_79
begin_hunk_80_@_ZN6duckdb11RLEFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm:bb.a
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = sub i64 %i.s, %i.o
  %i.u = call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.t) ; 2 uses
  %i.v = sub i64 %.010.i.i, %i.u                  ; 2 uses
  %i.w = add i64 %i.u, %i.o                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.w, %i.s
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_80
begin_hunk_81_@_ZN6duckdb7RLESkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm:bb.a
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = sub i64 %i.t, %i.p
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %.010.i.i, i64 %i.u) ; 2 uses
  %i.w = sub i64 %.010.i.i, %i.v                  ; 2 uses
  %i.x = add i64 %i.v, %i.p                       ; 2 uses
  %.not8.i.i = icmp ult i64 %i.x, %i.t
  br i1 %.not8.i.i, label %bb.d, label %bb.c
end_hunk_81
begin_hunk_82_@_ZN6duckdb9RLESelectIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.ar = zext i16 %i.aq to i64                   ; 2 uses
  %i.as = sub i64 %i.ar, %i.an
  %i.at = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52.us, i64 %i.as) ; 2 uses
  %i.au = sub i64 %.010.i52.us, %i.at             ; 2 uses
  %i.av = add i64 %i.at, %i.an                    ; 2 uses
  %.not8.i53.us = icmp ult i64 %i.av, %i.ar
  br i1 %.not8.i53.us, label %bb.h, label %bb.g
end_hunk_82
begin_hunk_83_@_ZN6duckdb9RLESelectIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = sub i64 %i.bi, %i.be
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.bj) ; 2 uses
  %i.bl = sub i64 %.010.i, %i.bk                  ; 2 uses
  %i.bm = add i64 %i.bk, %i.be                    ; 2 uses
  %.not8.i = icmp ult i64 %i.bm, %i.bi
  br i1 %.not8.i, label %bb.k, label %bb.j
end_hunk_83
begin_hunk_84_@_ZN6duckdb9RLESelectIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERKNS_15SelectionVectorEm:bb.a
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = sub i64 %i.cf, %i.cb
  %i.ch = tail call noundef i64 @llvm.umin.i64(i64 %.010.i52, i64 %i.cg) ; 2 uses
  %i.ci = sub i64 %.010.i52, %i.ch                ; 2 uses
  %i.cj = add i64 %i.ch, %i.cb                    ; 2 uses
  %.not8.i53 = icmp ult i64 %i.cj, %i.cf
  br i1 %.not8.i53, label %bb.t, label %bb.s
end_hunk_84
begin_hunk_85_@_ZN6duckdb9RLEFilterIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.gv = zext i16 %i.gu to i64                   ; 2 uses
  %i.gw = sub i64 %i.gv, %i.gr
  %i.gx = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gw) ; 2 uses
  %i.gy = sub i64 %.010.i, %i.gx                  ; 2 uses
  %i.gz = add i64 %i.gx, %i.gr                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gz, %i.gv
  br i1 %.not8.i, label %bb.an, label %bb.am
end_hunk_85
begin_hunk_86_@_ZN6duckdb9RLEFilterIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.hs = zext i16 %i.hr to i64                   ; 2 uses
  %i.ht = sub i64 %i.hs, %i.ho
  %i.hu = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.ht) ; 2 uses
  %i.hv = sub i64 %.010.i163, %i.hu               ; 2 uses
  %i.hw = add i64 %i.hu, %i.ho                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hw, %i.hs
  br i1 %.not8.i164, label %bb.ax, label %bb.aw
end_hunk_86
begin_hunk_87_@_ZN6duckdb19BitpackingScanStateIaaE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.de = load i64, ptr %i.a, align 8, !tbaa !2043
  %i.df = add i64 %i.de, %i.al                    ; 2 uses
  store i64 %i.df, ptr %i.a, align 8, !tbaa !2043
  %i.dg = sub i64 %.03238, %i.al
  %i.dh = icmp ult i64 %i.dd, %2
  br i1 %i.dh, label %bb.e, label %.loopexit, !llvm.loop !2129

end_hunk_87
begin_hunk_88_@_ZN6duckdb19BitpackingScanStateIssE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.db = load i64, ptr %i.a, align 8, !tbaa !2201
  %i.dc = add i64 %i.db, %i.aj                    ; 2 uses
  store i64 %i.dc, ptr %i.a, align 8, !tbaa !2201
  %i.dd = sub i64 %.03238, %i.aj
  %i.de = icmp ult i64 %i.da, %2
  br i1 %i.de, label %bb.e, label %.loopexit, !llvm.loop !2286

end_hunk_88
begin_hunk_89_@_ZN6duckdb19BitpackingScanStateIiiE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !2312
  %i.dh = add i64 %i.dg, %i.ai                    ; 2 uses
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !2312
  %i.di = sub i64 %.03238, %i.ai
  %i.dj = icmp ult i64 %i.df, %2
  br i1 %i.dj, label %bb.e, label %.loopexit, !llvm.loop !2388

end_hunk_89
begin_hunk_90_@_ZN6duckdb19BitpackingScanStateIllE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !2416
  %i.eb = add i64 %i.ea, %i.ai                    ; 2 uses
  store i64 %i.eb, ptr %i.a, align 8, !tbaa !2416
  %i.ec = sub i64 %.03238, %i.ai
  %i.ed = icmp ult i64 %i.dz, %2
  br i1 %i.ed, label %bb.e, label %.loopexit, !llvm.loop !2476

end_hunk_90
begin_hunk_91_@_ZN6duckdb19BitpackingScanStateIhaE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.de = load i64, ptr %i.a, align 8, !tbaa !2498
  %i.df = add i64 %i.de, %i.al                    ; 2 uses
  store i64 %i.df, ptr %i.a, align 8, !tbaa !2498
  %i.dg = sub i64 %.03238, %i.al
  %i.dh = icmp ult i64 %i.dd, %2
  br i1 %i.dh, label %bb.e, label %.loopexit, !llvm.loop !2560

end_hunk_91
begin_hunk_92_@_ZN6duckdb19BitpackingScanStateItsE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.db = load i64, ptr %i.a, align 8, !tbaa !2586
  %i.dc = add i64 %i.db, %i.aj                    ; 2 uses
  store i64 %i.dc, ptr %i.a, align 8, !tbaa !2586
  %i.dd = sub i64 %.03238, %i.aj
  %i.de = icmp ult i64 %i.da, %2
  br i1 %i.de, label %bb.e, label %.loopexit, !llvm.loop !2666

end_hunk_92
begin_hunk_93_@_ZN6duckdb19BitpackingScanStateIjiE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !2692
  %i.dh = add i64 %i.dg, %i.ai                    ; 2 uses
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !2692
  %i.di = sub i64 %.03238, %i.ai
  %i.dj = icmp ult i64 %i.df, %2
  br i1 %i.dj, label %bb.e, label %.loopexit, !llvm.loop !2762

end_hunk_93
begin_hunk_94_@_ZN6duckdb19BitpackingScanStateImlE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !2790
  %i.eb = add i64 %i.ea, %i.ai                    ; 2 uses
  store i64 %i.eb, ptr %i.a, align 8, !tbaa !2790
  %i.ec = sub i64 %.03238, %i.ai
  %i.ed = icmp ult i64 %i.dz, %2
  br i1 %i.ed, label %bb.e, label %.loopexit, !llvm.loop !2846

end_hunk_94
begin_hunk_95_@_ZN6duckdb19BitpackingScanStateINS_9hugeint_tES1_E4SkipERNS_13ColumnSegmentEm:bb.a
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !2861
  %i.ay = add i64 %i.ax, %i.aj                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !2861
  %i.az = sub i64 %.03539, %i.aj
  %i.ba = icmp ult i64 %i.aw, %2
  br i1 %i.ba, label %bb.e, label %.loopexit, !llvm.loop !2909

end_hunk_95
begin_hunk_96_@_ZN6duckdb19BitpackingScanStateINS_10uhugeint_tENS_9hugeint_tEE4SkipERNS_13ColumnSegmentEm:bb.a
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !2932
  %i.be = add i64 %i.bd, %i.ak                    ; 2 uses
  store i64 %i.be, ptr %i.a, align 8, !tbaa !2932
  %i.bf = sub i64 %.03539, %i.ak
  %i.bg = icmp ult i64 %i.bc, %2
  br i1 %i.bg, label %bb.e, label %.loopexit, !llvm.loop !2972

end_hunk_96
begin_hunk_97_@_ZN6duckdb21AlpRDCompressionStateIfE6AppendERNS_19UnifiedVectorFormatEm:bb.a

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %.loopexit.loopexit83.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %.preheader43, %.preheader
  %i.cx = add i64 %i.m, %.03449
  %i.cy = sub i64 %.053, %i.m                     ; 2 uses
  %i.cz = add i64 %i.m, %i.k                      ; 2 uses
  store i64 %i.cz, ptr %i.e, align 8, !tbaa !823
  %i.da = icmp eq i64 %i.cz, 1024
end_hunk_97
begin_hunk_98_@_ZN6duckdb21AlpRDCompressionStateIdE6AppendERNS_19UnifiedVectorFormatEm:bb.a

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %.loopexit.loopexit80.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader43, %.preheader
  %i.df = add i64 %i.j, %.03449
  %i.dg = sub i64 %.053, %i.j                     ; 2 uses
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !863
  %i.di = add i64 %i.dh, %i.j                     ; 2 uses
  store i64 %i.di, ptr %i.c, align 8, !tbaa !863
end_hunk_98
