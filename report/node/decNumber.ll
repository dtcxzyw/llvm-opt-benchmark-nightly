begin_hunk_0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph312, !llvm.loop !25

.loopexit:                                        ; preds = %bb.ah, %.lr.ph312, %bb.af
  %.6187 = phi i32 [ %.3184, %bb.af ], [ %.4185309, %.lr.ph312 ], [ %.5186, %bb.ah ] ; 8 uses
  %.5178 = phi ptr [ %.3176, %bb.af ], [ %.6311, %.lr.ph312 ], [ %scevgep, %bb.ah ] ; 2 uses
  %.not234 = icmp ne ptr %.0179.lcssa358, null
  %i.ch = icmp ult ptr %.0179.lcssa358, %.3172
end_hunk_0
begin_hunk_1
  br i1 %i.cm, label %bb.ak, label %.thread265

bb.ak:                                            ; preds = %bb.aj
  %i.cn = sext i32 %.6187 to i64                  ; 2 uses
  %i.co = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %3 = add nsw i64 %i.cn, -46
  %4 = icmp ult i64 %3, 4
  br i1 %4, label %.thread265, label %.thread267

.thread265:                                       ; preds = %bb.aj, %bb.ak
  %i.cr = phi i32 [ %i.cq, %bb.ak ], [ %.6187, %bb.aj ]
end_hunk_1
begin_hunk_2
  br label %bb.ao

bb.y:                                             ; preds = %bb.e
  %6 = add nsw i8 %4, -7
  %or.cond = icmp ult i8 %6, 2
  %.198 = zext i1 %or.cond to i8
  %i.ax = tail call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %.198) ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -2147483648
  br i1 %i.ay, label %bb.z, label %.thread139
end_hunk_2
begin_hunk_3
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4                ; 3 uses
  %i.g = icmp slt i32 %i.f, 50
  br i1 %i.g, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = sext i32 %i.f to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %6 = add nsw i64 %i.h, -38
  %7 = icmp ult i64 %6, 12
  br i1 %7, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ %i.f, %bb.b ]
end_hunk_3
begin_hunk_4
  br i1 %.not52, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %2, align 4               ; 3 uses
  %i.ap = icmp slt i32 %i.ao, 50
  br i1 %i.ap, label %bb.j, label %.thread64

bb.j:                                             ; preds = %bb.i
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %8 = add nsw i64 %i.aq, -38
  %9 = icmp ult i64 %8, 12
  br i1 %9, label %.thread64, label %bb.l

.thread64:                                        ; preds = %bb.i, %bb.j
  %i.au = phi i32 [ %i.at, %bb.j ], [ %i.ao, %bb.i ]
end_hunk_4
