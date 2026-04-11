inline.NumInlined: 74
inline.NumDeleted: 35
begin_hunk_0_@binascii_b2a_ascii85:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i
  %.11113.i = phi ptr [ %.0110.i, %.lr.ph.i ], [ %.2112.i, %bb.ae ] ; 6 uses
  %.01132.i = phi ptr [ %.val64, %.lr.ph.i ], [ %i.cm, %bb.ae ] ; 2 uses
  %.01161.i = phi i64 [ %.val65, %.lr.ph.i ], [ %i.cl, %bb.ae ] ; 2 uses
  %i.bg = load i32, ptr %.01132.i, align 1        ; 3 uses
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)     ; 5 uses
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = icmp eq i32 %i.bg, 538976288
  %or.cond7.i = and i1 %i.bf, %i.bj
  br i1 %or.cond7.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = urem i32 %i.bh, 85
end_hunk_0
begin_hunk_1_@binascii_b2a_ascii85:bb.a
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sink.i = phi i8 [ 122, %bb.ab ], [ %i.ck, %bb.ad ], [ 121, %bb.ac ]
  %.pn.i = phi i64 [ 1, %bb.ab ], [ 5, %bb.ad ], [ 1, %bb.ac ]
  store i8 %.sink.i, ptr %.11113.i, align 1, !tbaa !16
  %.2112.i = getelementptr i8, ptr %.11113.i, i64 %.pn.i ; 2 uses
  %i.cl = add nsw i64 %.01161.i, -4               ; 2 uses
  %i.cm = getelementptr i8, ptr %.01132.i, i64 4  ; 2 uses
  %i.cn = icmp sgt i64 %.01161.i, 7
end_hunk_1
