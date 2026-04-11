inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@exprParseString:bb.a
  %.not18 = icmp eq i8 %i.n, 0
  br i1 %.not18, label %bb.d, label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 2, %bb.c ], [ 1, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !31
  br label %bb.b, !llvm.loop !50
end_hunk_0
begin_hunk_1_@exprParseTuple:bb.a
  br i1 %.not18.i, label %bb.l, label %.backedge.i

.backedge.i:                                      ; preds = %bb.l, %bb.k
  %.sink.i = phi i64 [ 2, %bb.k ], [ 1, %bb.l ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink.i ; 2 uses
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !31
  br label %bb.j, !llvm.loop !50
end_hunk_1
begin_hunk_2_@exprTokenize:bb.a
  br i1 %.not18.i, label %bb.p, label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %bb.o
  %.sink.i = phi i64 [ 2, %bb.o ], [ 1, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.sink.i ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !31
  br label %bb.n, !llvm.loop !50
end_hunk_2
begin_hunk_3_@jsonExtractField:bb.a
.lr.ph.i47.i:                                     ; preds = %bb.h, %.backedge.i.i
  %i.z = phi ptr [ %i.ab, %.backedge.i.i ], [ %i.x, %bb.h ] ; 5 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  switch i8 %i.aa, label %4 [
    i8 92, label %.backedge.i.i
    i8 34, label %bb.i
  ]

.backedge.i.i:                                    ; preds = %4, %.lr.ph.i47.i
  %.sink.i.i = phi i64 [ 1, %4 ], [ 2, %.lr.ph.i47.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.i.i ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.b
  br i1 %i.ac, label %.lr.ph.i47.i, label %jsonSeekField.exit.thread, !llvm.loop !68

4:                                                ; preds = %.lr.ph.i47.i
  br label %.backedge.i.i

bb.i:                                             ; preds = %.lr.ph.i47.i
  %.lcssa170173.i = ptrtoint ptr %i.z to i64      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
end_hunk_3
begin_hunk_4_@jsonExtractField:bb.a
.lr.ph.i22.i.i:                                   ; preds = %bb.u, %.backedge.i.i.i
  %i.bq = phi ptr [ %i.bs, %.backedge.i.i.i ], [ %i.bo, %bb.u ] ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  switch i8 %i.br, label %5 [
    i8 92, label %.backedge.i.i.i
    i8 34, label %bb.v
  ]

.backedge.i.i.i:                                  ; preds = %5, %.lr.ph.i22.i.i
  %.sink.i.i.i = phi i64 [ 1, %5 ], [ 2, %.lr.ph.i22.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink.i.i.i ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.b
  br i1 %i.bt, label %.lr.ph.i22.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68
end_hunk_4
begin_hunk_5_@jsonExtractField:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  br label %jsonSkipValue.exit.thread86.i

5:                                                ; preds = %.lr.ph.i22.i.i
  br label %.backedge.i.i.i

bb.w:                                             ; preds = %bb.t
  %storemerge2833.i.i.i = getelementptr inbounds nuw i8, ptr %.10.i, i64 1 ; 2 uses
  %i.bv = icmp ult ptr %storemerge2833.i.i.i, %i.b
end_hunk_5
begin_hunk_6_@jsonExtractField:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %bb.x, %.backedge.i.i.i.i
  %i.ca = phi ptr [ %i.cc, %.backedge.i.i.i.i ], [ %i.by, %bb.x ] ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  switch i8 %i.cb, label %6 [
    i8 92, label %.backedge.i.i.i.i
    i8 34, label %jsonSkipString.exit.i.i.i
  ]

.backedge.i.i.i.i:                                ; preds = %6, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 1, %6 ], [ 2, %.lr.ph.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sink.i.i.i.i ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.b
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

6:                                                ; preds = %.lr.ph.i.i.i.i
  br label %.backedge.i.i.i.i

bb.y:                                             ; preds = %.lr.ph.i23.i.i
  %i.ce = icmp eq i8 %i.bw, 123
  %i.cf = icmp eq i8 %i.bw, 125
end_hunk_6
begin_hunk_7_@jsonExtractField:bb.a
.lr.ph.i.i36.i.i:                                 ; preds = %bb.aa, %.backedge.i.i37.i.i
  %i.cp = phi ptr [ %i.cr, %.backedge.i.i37.i.i ], [ %i.cn, %bb.aa ] ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  switch i8 %i.cq, label %7 [
    i8 92, label %.backedge.i.i37.i.i
    i8 34, label %jsonSkipString.exit.i31.i.i
  ]

.backedge.i.i37.i.i:                              ; preds = %7, %.lr.ph.i.i36.i.i
  %.sink.i.i38.i.i = phi i64 [ 1, %7 ], [ 2, %.lr.ph.i.i36.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sink.i.i38.i.i ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.b
  br i1 %i.cs, label %.lr.ph.i.i36.i.i, label %jsonSeekField.exit.thread, !llvm.loop !68

7:                                                ; preds = %.lr.ph.i.i36.i.i
  br label %.backedge.i.i37.i.i

bb.ab:                                            ; preds = %.lr.ph.i26.i.i
  %i.ct = icmp eq i8 %i.cl, 91
  %i.cu = icmp eq i8 %i.cl, 93
end_hunk_7
