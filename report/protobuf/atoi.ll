inline.NumInlined: 1
begin_hunk_0_@upb_BufToInt64:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !7
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.015 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %.0 = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]  ; 3 uses
  %i.c = icmp ult ptr %.015, %1
  br i1 %i.c, label %.lr.ph.preheader.i, label %upb_BufToUint64.exit

end_hunk_0
begin_hunk_1_@upb_BufToInt64:bb.a
upb_BufToUint64.exit.thread27:                    ; preds = %.lr.ph.i, %upb_BufToUint64.exit
  %.2.i32 = phi ptr [ %.2.i, %upb_BufToUint64.exit ], [ %.01933.i, %.lr.ph.i ] ; 2 uses
  %.02331 = phi i64 [ %.023, %upb_BufToUint64.exit ], [ %.01634.i, %.lr.ph.i ] ; 3 uses
  %4 = select i1 %.0, i64 -9223372036854775808, i64 9223372036854775807
  %i.r = icmp ugt i64 %.02331, %4
  br i1 %i.r, label %upb_BufToUint64.exit.thread, label %bb.g

bb.g:                                             ; preds = %upb_BufToUint64.exit.thread27
  %i.s = sub i64 0, %.02331
  %i.t = select i1 %.0, i64 %i.s, i64 %.02331
  store i64 %i.t, ptr %2, align 8, !tbaa !8
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %upb_BufToUint64.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %5 = zext i1 %.0 to i8
  store i8 %5, ptr %3, align 1, !tbaa !10
  br label %upb_BufToUint64.exit.thread

upb_BufToUint64.exit.thread:                      ; preds = %bb.e, %bb.d, %bb.g, %bb.h, %upb_BufToUint64.exit, %upb_BufToUint64.exit.thread27
end_hunk_1
