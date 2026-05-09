inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit322: ; preds = %.lr.ph.i.i319, %bb.bz, %.critedge.i318, %bb.ca
  %i.sq = phi ptr [ %i.sc, %bb.ca ], [ %i.sj, %.critedge.i318 ], [ %i.sl, %.lr.ph.i.i319 ], [ %i.sp, %bb.bz ] ; 5 uses
  %.not11.i316 = phi i1 [ false, %bb.ca ], [ true, %.critedge.i318 ], [ true, %bb.bz ], [ true, %.lr.ph.i.i319 ] ; 5 uses
  %i.sr = icmp ult ptr %i.sq, %.pre.i313
  br i1 %i.sr, label %bb.cb, label %bb.cd

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.vg = zext i1 %.not11.i327 to i32
  %i.vh = add nuw nsw i32 %i.vf, %i.vg            ; 8 uses
  %i.vi = zext nneg i8 %.0177 to i32
  %i.vj = select i1 %.not11.i316, i32 1000, i32 0 ; 4 uses
  %i.vk = or disjoint i32 %i.vj, %i.vi
  %i.vl = select i1 %.not11.i327, i32 2000, i32 0 ; 4 uses
  %i.vm = add nuw nsw i32 %i.vk, %i.vl
end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.ael = add i64 %i.aek, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ael)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %24 = or disjoint i32 %i.vj, 1
  %i.aem = add nuw nsw i32 %24, %i.vl
  %i.aen = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_2
begin_hunk_3_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.aja = add i64 %i.aiz, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aja)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %25 = or disjoint i32 %i.vj, 2
  %i.ajb = add nuw nsw i32 %25, %i.vl
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.anq = add i64 %i.anp, 4
  call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.anq)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_110TextReader5MatchEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext 40)
  %26 = or disjoint i32 %i.vj, 3
  %i.anr = add nuw nsw i32 %26, %i.vl
  %i.ans = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ant = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
end_hunk_4
