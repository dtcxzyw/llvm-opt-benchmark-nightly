inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb9RLEFilterIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.du = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.gd, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.gc, %.loopexit ] ; 9 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb9RLEFilterIsEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fi = insertelement <4 x i64> poison, i64 %.0135210, i64 0
  %i.fj = shufflevector <4 x i64> %i.fi, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.dg, i64 %.0135210
  %i.fk = getelementptr [4 x i8], ptr %i.ds, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.fm = shufflevector <4 x i64> %i.fl, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fn = or disjoint <4 x i64> %i.fm, <i64 4, i64 5, i64 6, i64 7>
  %15 = or disjoint <4 x i64> %i.fm, <i64 0, i64 1, i64 2, i64 3>
  %16 = add <4 x i64> %15, %i.fj
  %i.fo = add <4 x i64> %i.fn, %i.fj
  %i.fp = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store <4 x i16> %broadcast.splat, ptr %i.fp, align 2, !tbaa !670
  store <4 x i16> %broadcast.splat, ptr %i.fq, align 2, !tbaa !670
  %i.fr = trunc <4 x i64> %16 to <4 x i32>
  %i.fs = trunc <4 x i64> %i.fo to <4 x i32>
  %i.ft = getelementptr [4 x i8], ptr %i.fk, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.dw = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dx = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 12 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.hr, %.loopexit ] ; 17 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !670
  %i.ea = zext i16 %i.dz to i64                   ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gj = insertelement <4 x i64> poison, i64 %.0135210, i64 0
  %i.gk = shufflevector <4 x i64> %i.gj, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dg, i64 %.0135210
  %i.gl = getelementptr [4 x i8], ptr %i.dt, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gm = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.gn = shufflevector <4 x i64> %i.gm, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.go = or disjoint <4 x i64> %i.gn, <i64 4, i64 5, i64 6, i64 7>
  %15 = or disjoint <4 x i64> %i.gn, <i64 0, i64 1, i64 2, i64 3>
  %16 = add <4 x i64> %15, %i.gk
  %i.gp = add <4 x i64> %i.go, %i.gk
  %i.gq = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gq, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !3
  %i.gs = trunc <4 x i64> %16 to <4 x i32>
  %i.gt = trunc <4 x i64> %i.gp to <4 x i32>
  %i.gu = getelementptr [4 x i8], ptr %i.gl, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
end_hunk_3
begin_hunk_4_@_ZN6duckdb9RLEFilterItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.du = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.gd, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.gc, %.loopexit ] ; 9 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb9RLEFilterItEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fi = insertelement <4 x i64> poison, i64 %.0135210, i64 0
  %i.fj = shufflevector <4 x i64> %i.fi, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.dg, i64 %.0135210
  %i.fk = getelementptr [4 x i8], ptr %i.ds, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.fm = shufflevector <4 x i64> %i.fl, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fn = or disjoint <4 x i64> %i.fm, <i64 4, i64 5, i64 6, i64 7>
  %15 = or disjoint <4 x i64> %i.fm, <i64 0, i64 1, i64 2, i64 3>
  %16 = add <4 x i64> %15, %i.fj
  %i.fo = add <4 x i64> %i.fn, %i.fj
  %i.fp = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store <4 x i16> %broadcast.splat, ptr %i.fp, align 2, !tbaa !670
  store <4 x i16> %broadcast.splat, ptr %i.fq, align 2, !tbaa !670
  %i.fr = trunc <4 x i64> %16 to <4 x i32>
  %i.fs = trunc <4 x i64> %i.fo to <4 x i32>
  %i.ft = getelementptr [4 x i8], ptr %i.fk, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
end_hunk_5
begin_hunk_6_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.dw = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dx = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 12 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.hr, %.loopexit ] ; 17 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !670
  %i.ea = zext i16 %i.dz to i64                   ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gj = insertelement <4 x i64> poison, i64 %.0135210, i64 0
  %i.gk = shufflevector <4 x i64> %i.gj, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dg, i64 %.0135210
  %i.gl = getelementptr [4 x i8], ptr %i.dt, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gm = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.gn = shufflevector <4 x i64> %i.gm, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.go = or disjoint <4 x i64> %i.gn, <i64 4, i64 5, i64 6, i64 7>
  %15 = or disjoint <4 x i64> %i.gn, <i64 0, i64 1, i64 2, i64 3>
  %16 = add <4 x i64> %15, %i.gk
  %i.gp = add <4 x i64> %i.go, %i.gk
  %i.gq = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gq, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !3
  %i.gs = trunc <4 x i64> %16 to <4 x i32>
  %i.gt = trunc <4 x i64> %i.gp to <4 x i32>
  %i.gu = getelementptr [4 x i8], ptr %i.gl, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
end_hunk_7
begin_hunk_8_@_ZN6duckdb9RLEFilterIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %i.du = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.gd, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.gc, %.loopexit ] ; 9 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb9RLEFilterIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ec, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fi = insertelement <4 x i64> poison, i64 %.0135210, i64 0
  %i.fj = shufflevector <4 x i64> %i.fi, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dg, i64 %.0135210
  %i.fk = getelementptr [4 x i8], ptr %i.ds, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fl = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.fm = shufflevector <4 x i64> %i.fl, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fn = or disjoint <4 x i64> %i.fm, <i64 4, i64 5, i64 6, i64 7>
  %15 = or disjoint <4 x i64> %i.fm, <i64 0, i64 1, i64 2, i64 3>
  %16 = add <4 x i64> %15, %i.fj
  %i.fo = add <4 x i64> %i.fn, %i.fj
  %i.fp = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x float> %broadcast.splat, ptr %i.fp, align 4, !tbaa !1396
  store <4 x float> %broadcast.splat, ptr %i.fq, align 4, !tbaa !1396
  %i.fr = trunc <4 x i64> %16 to <4 x i32>
  %i.fs = trunc <4 x i64> %i.fo to <4 x i32>
  %i.ft = getelementptr [4 x i8], ptr %i.fk, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
end_hunk_9
