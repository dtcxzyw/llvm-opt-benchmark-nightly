begin_hunk_0
  ]

bb.a:                                             ; preds = %.peel.begin
  %3 = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %4 = icmp ne i64 %i.d, 0
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
end_hunk_0
begin_hunk_1
  %.not73.peel = icmp eq i64 %i.g, %i.y
  br i1 %.not73.peel, label %.loopexit118.a, label %bb.i

6:                                                ; preds = %bb.a
  %7 = trunc i64 %2 to i1
  br i1 %7, label %.loopexit119.a, label %8

8:                                                ; preds = %6
  %9 = and i64 %2, 2
  %.not.peel = icmp eq i64 %9, 0
  br i1 %.not.peel, label %10, label %.loopexit120.a

10:                                               ; preds = %8
  %11 = and i64 %2, 252
  %12 = icmp eq i64 %11, 12
  br i1 %12, label %.loopexit121.a, label %bb.i

bb.i:                                             ; preds = %10, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !50, !range !48, !noundef !49
end_hunk_1
begin_hunk_2
  br label %.backedge.peel

.backedge.peel:                                   ; preds = %valid_json_string_p.exit.thread77.peel, %bb.k
  %.0.be.peel = phi i64 [ %i.ag, %bb.k ], [ %i.w, %valid_json_string_p.exit.thread77.peel ] ; 22 uses
  switch i64 %.0.be.peel, label %bb.o [
    i64 4, label %.loopexit
    i64 0, label %.loopexit110
end_hunk_2
begin_hunk_3
  br label %generate_json_symbol.exit

bb.o:                                             ; preds = %.backedge.peel
  %13 = icmp eq i64 %.0.be.peel, 0
  %i.br = and i64 %.0.be.peel, 7
  %14 = icmp ne i64 %i.br, 0
  %15 = or i1 %13, %14
  br i1 %15, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bs = trunc i64 %.0.be.peel to i1
  br i1 %i.bs, label %.loopexit119.a, label %bb.q

.loopexit119.a:                                   ; preds = %bb.p, %6
  %.0.lcssa104.a = phi i64 [ %2, %6 ], [ %.0.be.peel, %bb.p ]
  call fastcc void @generate_json_fixnum(ptr noundef %0, i64 noundef %.0.lcssa104.a)
  br label %generate_json_symbol.exit

end_hunk_3
begin_hunk_4
  %.not.a = icmp eq i64 %i.bt, 0
  br i1 %.not.a, label %bb.r, label %.loopexit120.a

.loopexit120.a:                                   ; preds = %bb.q, %8
  %.0.lcssa105 = phi i64 [ %2, %8 ], [ %.0.be.peel, %bb.q ]
  call void @generate_json_float(ptr noundef %0, ptr noundef %1, i64 noundef %.0.lcssa105)
  br label %generate_json_symbol.exit

end_hunk_4
begin_hunk_5
  %i.bv = icmp eq i64 %i.bu, 12
  br i1 %i.bv, label %.loopexit121.a, label %bb.ab

.loopexit121.a:                                   ; preds = %bb.r, %10
  %.0.lcssa106.a = phi i64 [ %2, %10 ], [ %.0.be.peel, %bb.r ] ; 2 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !50, !range !48, !noundef !49
end_hunk_5
