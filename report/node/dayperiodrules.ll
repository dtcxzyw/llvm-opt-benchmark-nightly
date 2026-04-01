begin_hunk_0

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 3, %.preheader.i.i ]
  %i.an = phi i8 [ %i.at, %bb.d ], [ %i.am, %.preheader.i.i ] ; 2 uses
  %.01932.i.i = phi i32 [ %i.ar, %bb.d ], [ 0, %.preheader.i.i ]
  %i.ao = add i8 %i.an, -48
  %or.cond.i.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i.i, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ap = zext nneg i8 %i.an to i32
  %i.aq = mul nsw i32 %.01932.i.i, 10
  %11 = add nsw i32 %i.ap, -48
  %i.ar = add i32 %11, %i.aq                      ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next.i.i
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
end_hunk_0
begin_hunk_1

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 3, %.preheader.i ]
  %i.s = phi i8 [ %i.y, %bb.b ], [ %i.r, %.preheader.i ] ; 2 uses
  %.01932.i = phi i32 [ %i.w, %bb.b ], [ 0, %.preheader.i ]
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = zext nneg i8 %i.s to i32
  %i.v = mul nsw i32 %.01932.i, 10
  %6 = add nsw i32 %i.u, -48
  %i.w = add i32 %6, %i.v                         ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next.i
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
end_hunk_1
begin_hunk_2

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 3, %.preheader.i ]
  %i.ae = phi i8 [ %i.ak, %bb.c ], [ %i.ad, %.preheader.i ] ; 2 uses
  %.01932.i = phi i32 [ %i.ai, %bb.c ], [ 0, %.preheader.i ]
  %i.af = add i8 %i.ae, -48
  %or.cond.i = icmp ult i8 %i.af, 10
  br i1 %or.cond.i, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i32
  %i.ah = mul nsw i32 %.01932.i, 10
  %12 = add nsw i32 %i.ag, -48
  %i.ai = add i32 %12, %i.ah                      ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
end_hunk_2
