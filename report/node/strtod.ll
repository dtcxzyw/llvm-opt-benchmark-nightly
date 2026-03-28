begin_hunk_0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast double %3 to i64                 ; 11 uses
  %i.c = and i64 %i.b, 9218868437227405312
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.e = shl i64 %i.b, 1
end_hunk_0
begin_hunk_1
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %6 = fcmp oeq double %3, 0.000000e+00
  br i1 %6, label %_ZNK2v84base6Double10NextDoubleEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = add i64 %i.b, -1
  %i.w = bitcast i64 %i.v to double
  br label %_ZNK2v84base6Double10NextDoubleEv.exit

end_hunk_1
begin_hunk_2

bb.p:                                             ; preds = %bb.o
  %i.ab = icmp slt i64 %i.b, 0
  br i1 %i.ab, label %7, label %bb.r

7:                                                ; preds = %bb.p
  %8 = fcmp oeq double %3, 0.000000e+00
  br i1 %8, label %_ZNK2v84base6Double10NextDoubleEv.exit, label %bb.q

bb.q:                                             ; preds = %7
  %i.ac = add nsw i64 %i.b, -1
  %i.ad = bitcast i64 %i.ac to double
  br label %_ZNK2v84base6Double10NextDoubleEv.exit
end_hunk_2
begin_hunk_3
  %i.af = bitcast i64 %i.ae to double
  br label %_ZNK2v84base6Double10NextDoubleEv.exit

_ZNK2v84base6Double10NextDoubleEv.exit:           ; preds = %bb.r, %bb.q, %7, %bb.n, %bb.m, %bb.l, %bb.j, %bb.o, %bb.h
  %.0 = phi double [ 0x7FF0000000000000, %bb.j ], [ %3, %bb.o ], [ %3, %bb.h ], [ 0.000000e+00, %bb.l ], [ %i.y, %bb.n ], [ %i.w, %bb.m ], [ 0.000000e+00, %7 ], [ %i.af, %bb.r ], [ %i.ad, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.s
end_hunk_3
