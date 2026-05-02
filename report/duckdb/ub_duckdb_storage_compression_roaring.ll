inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring19RoaringAnalyzeState7AnalyzeILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.cr = shl nuw i8 %i.cq, 7
  %i.cs = or i8 %i.cn, %i.cr
  %i.ct = zext nneg i8 %i.cq to i32
  %5 = trunc nuw i8 %i.cq to i1
  br label %.thread.i34

._crit_edge.i33:                                  ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %.lr.ph.i31.us.preheader, %.lr.ph.i31.us.1, %.lr.ph.i31.us.2, %.lr.ph.i31.us.3, %.lr.ph.i31.us.4, %.lr.ph.i31.us.5, %.lr.ph.i31.us.6
end_hunk_0
begin_hunk_1_@_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt:bb.a
  %i.g = icmp ne i16 %i.d, 0                      ; 2 uses
  %or.cond4 = select i1 %or.cond, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !312  ; 2 uses
  br i1 %or.cond4, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %3 = trunc nuw i8 %i.i to i1
  br label %bb.e

4:                                                ; preds = %bb.a
  %.not42 = icmp eq i8 %i.i, 0
  br i1 %.not42, label %bb.e, label %bb.b

bb.b:                                             ; preds = %4
  %i.j = icmp samesign ult i16 %i.b, 4
  br i1 %i.j, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt:bb.a
  store i16 %i.ah, ptr %i.a, align 8, !tbaa !324
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge, %4
  %.not43.not = phi i1 [ %3, %._crit_edge ], [ false, %4 ]
  %or.cond7 = select i1 %1, i1 %i.f, i1 false
  %or.cond7.not = xor i1 %or.cond7, true
  %or.cond46.not = select i1 %i.g, i1 %.not43.not, i1 false
  %or.cond46.not.a = select i1 %or.cond7.not, i1 true, i1 %or.cond46.not
  br i1 %or.cond46.not.a, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN6duckdb7roaring9AppendRunERNS0_25ContainerCompressionStateEbt:bb.a
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !177
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.d
  ret void
}

end_hunk_3
begin_hunk_4_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %.promoted54 = load i8, ptr %i.cv, align 1, !tbaa !230 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03043.ph.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %5 = trunc nuw i8 %i.df to i1                   ; 2 uses
  %i.dg = trunc nuw i8 %.promoted to i1
  %not..i.i.i.i.i.i32.us = xor i1 %5, true
  %i.dh = select i1 %not..i.i.i.i.i.i32.us, i1 %i.dg, i1 false
  %.in.sroa.speculated.i.i.i.i33.us = select i1 %i.dh, i8 %i.df, i8 %.promoted ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us, ptr %i.cu, align 1, !tbaa !230
  %i.di = trunc nuw i8 %.promoted54 to i1
  %not..i.i.i.i.i34.us = xor i1 %i.di, true
  %6 = and i1 %5, %not..i.i.i.i.i34.us
  %.in6.sroa.speculated.i.i.i.i35.us = select i1 %6, i8 %i.df, i8 %.promoted54 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dj = add nuw i64 %.03043.ph.i, 1             ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.dm = shl nuw nsw i8 %i.dl, 1
  %i.dn = or disjoint i8 %i.df, %i.dm             ; 2 uses
  %7 = trunc nuw i8 %i.dl to i1                   ; 2 uses
  %i.do = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us to i1
  %not..i.i.i.i.i.i32.us.1 = xor i1 %7, true
  %i.dp = select i1 %not..i.i.i.i.i.i32.us.1, i1 %i.do, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.1 = select i1 %i.dp, i8 %i.dl, i8 %.in.sroa.speculated.i.i.i.i33.us ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.1, ptr %i.cu, align 1, !tbaa !230
  %i.dq = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us to i1
  %not..i.i.i.i.i34.us.1 = xor i1 %i.dq, true
  %8 = and i1 %7, %not..i.i.i.i.i34.us.1
  %.in6.sroa.speculated.i.i.i.i35.us.1 = select i1 %8, i8 %i.dl, i8 %.in6.sroa.speculated.i.i.i.i35.us ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.1, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dr = add nuw i64 %.03043.ph.i, 2             ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.du = shl nuw nsw i8 %i.dt, 2
  %i.dv = or disjoint i8 %i.dn, %i.du             ; 2 uses
  %9 = trunc nuw i8 %i.dt to i1                   ; 2 uses
  %i.dw = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.1 to i1
  %not..i.i.i.i.i.i32.us.2 = xor i1 %9, true
  %i.dx = select i1 %not..i.i.i.i.i.i32.us.2, i1 %i.dw, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.2 = select i1 %i.dx, i8 %i.dt, i8 %.in.sroa.speculated.i.i.i.i33.us.1 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.2, ptr %i.cu, align 1, !tbaa !230
  %i.dy = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.1 to i1
  %not..i.i.i.i.i34.us.2 = xor i1 %i.dy, true
  %10 = and i1 %9, %not..i.i.i.i.i34.us.2
  %.in6.sroa.speculated.i.i.i.i35.us.2 = select i1 %10, i8 %i.dt, i8 %.in6.sroa.speculated.i.i.i.i35.us.1 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.2, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.dz = add nuw i64 %.03043.ph.i, 3             ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.ec = shl nuw nsw i8 %i.eb, 3
  %i.ed = or disjoint i8 %i.dv, %i.ec             ; 2 uses
  %11 = trunc nuw i8 %i.eb to i1                  ; 2 uses
  %i.ee = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.2 to i1
  %not..i.i.i.i.i.i32.us.3 = xor i1 %11, true
  %i.ef = select i1 %not..i.i.i.i.i.i32.us.3, i1 %i.ee, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.3 = select i1 %i.ef, i8 %i.eb, i8 %.in.sroa.speculated.i.i.i.i33.us.2 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.3, ptr %i.cu, align 1, !tbaa !230
  %i.eg = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.2 to i1
  %not..i.i.i.i.i34.us.3 = xor i1 %i.eg, true
  %12 = and i1 %11, %not..i.i.i.i.i34.us.3
  %.in6.sroa.speculated.i.i.i.i35.us.3 = select i1 %12, i8 %i.eb, i8 %.in6.sroa.speculated.i.i.i.i35.us.2 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.3, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.eh = add nuw i64 %.03043.ph.i, 4             ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.ek = shl nuw nsw i8 %i.ej, 4
  %i.el = or disjoint i8 %i.ed, %i.ek             ; 2 uses
  %13 = trunc nuw i8 %i.ej to i1                  ; 2 uses
  %i.em = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.3 to i1
  %not..i.i.i.i.i.i32.us.4 = xor i1 %13, true
  %i.en = select i1 %not..i.i.i.i.i.i32.us.4, i1 %i.em, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.4 = select i1 %i.en, i8 %i.ej, i8 %.in.sroa.speculated.i.i.i.i33.us.3 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.4, ptr %i.cu, align 1, !tbaa !230
  %i.eo = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.3 to i1
  %not..i.i.i.i.i34.us.4 = xor i1 %i.eo, true
  %14 = and i1 %13, %not..i.i.i.i.i34.us.4
  %.in6.sroa.speculated.i.i.i.i35.us.4 = select i1 %14, i8 %i.ej, i8 %.in6.sroa.speculated.i.i.i.i35.us.3 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.4, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ep = add nuw i64 %.03043.ph.i, 5             ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.es = shl nuw nsw i8 %i.er, 5
  %i.et = or i8 %i.el, %i.es                      ; 2 uses
  %15 = trunc nuw i8 %i.er to i1                  ; 2 uses
  %i.eu = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.4 to i1
  %not..i.i.i.i.i.i32.us.5 = xor i1 %15, true
  %i.ev = select i1 %not..i.i.i.i.i.i32.us.5, i1 %i.eu, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.5 = select i1 %i.ev, i8 %i.er, i8 %.in.sroa.speculated.i.i.i.i33.us.4 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.5, ptr %i.cu, align 1, !tbaa !230
  %i.ew = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.4 to i1
  %not..i.i.i.i.i34.us.5 = xor i1 %i.ew, true
  %16 = and i1 %15, %not..i.i.i.i.i34.us.5
  %.in6.sroa.speculated.i.i.i.i35.us.5 = select i1 %16, i8 %i.er, i8 %.in6.sroa.speculated.i.i.i.i35.us.4 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.5, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ex = add nuw i64 %.03043.ph.i, 6             ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !230, !range !312, !noundef !91 ; 4 uses
  %i.fa = shl nuw nsw i8 %i.ez, 6
  %i.fb = or i8 %i.et, %i.fa                      ; 2 uses
  %17 = trunc nuw i8 %i.ez to i1                  ; 2 uses
  %i.fc = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.5 to i1
  %not..i.i.i.i.i.i32.us.6 = xor i1 %17, true
  %i.fd = select i1 %not..i.i.i.i.i.i32.us.6, i1 %i.fc, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.6 = select i1 %i.fd, i8 %i.ez, i8 %.in.sroa.speculated.i.i.i.i33.us.5 ; 3 uses
  store i8 %.in.sroa.speculated.i.i.i.i33.us.6, ptr %i.cu, align 1, !tbaa !230
  %i.fe = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.5 to i1
  %not..i.i.i.i.i34.us.6 = xor i1 %i.fe, true
  %18 = and i1 %17, %not..i.i.i.i.i34.us.6
  %.in6.sroa.speculated.i.i.i.i35.us.6 = select i1 %18, i8 %i.ez, i8 %.in6.sroa.speculated.i.i.i.i35.us.5 ; 3 uses
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.6, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
  %i.ff = add nuw i64 %.03043.ph.i, 7             ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03043.ph.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %i.fi = zext nneg i8 %i.fh to i32
  %19 = trunc nuw i8 %i.fh to i1                  ; 3 uses
  %i.fj = load i8, ptr %i.cu, align 1             ; 2 uses
  %i.fk = trunc nuw i8 %i.fj to i1
  %not..i.i.i.i.i.i32 = xor i1 %19, true
  %i.fl = select i1 %not..i.i.i.i.i.i32, i1 %i.fk, i1 false
  %.in.sroa.speculated.i.i.i.i33 = select i1 %i.fl, i8 %i.fh, i8 %i.fj
  store i8 %.in.sroa.speculated.i.i.i.i33, ptr %i.cu, align 1, !tbaa !230
  %i.fm = load i8, ptr %i.cv, align 1, !tbaa !230, !range !312, !noundef !91 ; 2 uses
  %i.fn = trunc nuw i8 %i.fm to i1
  %not..i.i.i.i.i34 = xor i1 %i.fn, true
  %i.fo = and i1 %19, %not..i.i.i.i.i34
  %.in6.sroa.speculated.i.i.i.i35 = select i1 %i.fo, i8 %i.fh, i8 %i.fm
  store i8 %.in6.sroa.speculated.i.i.i.i35, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
end_hunk_11
begin_hunk_12_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fr = phi i1 [ %i.fq, %bb.t ], [ %19, %bb.s ]
  %i.fs = phi i8 [ %i.fp, %bb.t ], [ %i.fh, %bb.s ] ; 2 uses
  %i.ft = phi i32 [ %.03241.ph.i, %bb.t ], [ %i.fi, %bb.s ]
  %i.fu = add nuw i64 %.03043.ph.i, 1             ; 4 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
.thread.i31.loopexit:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.us.6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !230, !range !312, !noundef !91 ; 5 uses
  %20 = trunc nuw i8 %i.mv to i1                  ; 3 uses
  %i.mw = trunc nuw i8 %.in.sroa.speculated.i.i.i.i33.us.6 to i1
  %not..i.i.i.i.i.i32.us.7 = xor i1 %20, true
  %i.mx = select i1 %not..i.i.i.i.i.i32.us.7, i1 %i.mw, i1 false
  %.in.sroa.speculated.i.i.i.i33.us.7 = select i1 %i.mx, i8 %i.mv, i8 %.in.sroa.speculated.i.i.i.i33.us.6
  store i8 %.in.sroa.speculated.i.i.i.i33.us.7, ptr %i.cu, align 1, !tbaa !230
  %i.my = trunc nuw i8 %.in6.sroa.speculated.i.i.i.i35.us.6 to i1
  %not..i.i.i.i.i34.us.7 = xor i1 %i.my, true
  %i.mz = and i1 %20, %not..i.i.i.i.i34.us.7
  %.in6.sroa.speculated.i.i.i.i35.us.7 = select i1 %i.mz, i8 %i.mv, i8 %.in6.sroa.speculated.i.i.i.i35.us.6
  store i8 %.in6.sroa.speculated.i.i.i.i35.us.7, ptr %i.cv, align 1, !tbaa !230
  store i8 1, ptr %i.cw, align 1, !tbaa !406
end_hunk_13
begin_hunk_14_@_ZN6duckdb7roaring20RoaringCompressState8CompressILNS_12PhysicalTypeE1EEEvRNS_6VectorEm:bb.a
.thread.i31:                                      ; preds = %bb.av, %bb.au, %.thread.i31.loopexit
  %.us-phi = phi i32 [ %i.nc, %.thread.i31.loopexit ], [ %i.me, %bb.au ], [ %i.me, %bb.av ]
  %.us-phi48 = phi i8 [ %i.nb, %.thread.i31.loopexit ], [ %i.ml, %bb.au ], [ %i.ml, %bb.av ]
  %.us-phi49 = phi i1 [ %20, %.thread.i31.loopexit ], [ %i.mm, %bb.au ], [ %i.mm, %bb.av ]
  %.us-phi50 = phi i64 [ %i.ff, %.thread.i31.loopexit ], [ %i.lu, %bb.au ], [ %i.lu, %bb.av ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.045.ph.i, i64 1
  store i8 %.us-phi48, ptr %.045.ph.i, align 1, !tbaa !177
end_hunk_14
