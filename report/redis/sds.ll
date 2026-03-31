begin_hunk_0
  br label %sdsReqType.exit

sdsReqType.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i8 [ 2, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ %..i, %bb.d ] ; 2 uses
  %i.f = icmp eq i8 %.0.i, 0
  %i.g = icmp eq i64 %1, 0
  %or.cond = and i1 %i.g, %i.f
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i ; 4 uses
  %i.h = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
end_hunk_0
begin_hunk_1
  br label %adjustTypeIfNeeded.exit

adjustTypeIfNeeded.exit:                          ; preds = %bb.j, %sdsReqType.exit.i, %bb.k, %switch.lookup
  %.1 = phi i8 [ %spec.store.select, %bb.j ], [ %spec.store.select, %switch.lookup ], [ %..i.i, %sdsReqType.exit.i ], [ 2, %bb.k ]
  %i.z = call ptr @sdsnewplacement(ptr noundef nonnull %i.o, i64 noundef %i.q, i8 noundef signext %.1, ptr noundef %0, i64 noundef %1)
  br label %bb.l

end_hunk_1
begin_hunk_2
  br label %sdsReqType.exit

sdsReqType.exit:                                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i62 = phi i8 [ 2, %bb.d ], [ 0, %bb.b ], [ 1, %bb.c ], [ %..i, %bb.e ] ; 2 uses
  %i.ai = icmp ne i32 %2, 0
  %i.aj = icmp eq i8 %.0.i62, 0
  %or.cond = and i1 %i.ai, %i.aj
  %spec.store.select = select i1 %or.cond, i8 1, i8 %.0.i62 ; 7 uses
  %i.ak = zext nneg i8 %spec.store.select to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.sdsResize, i64 %i.ak
  %switch.load = load i32, ptr %switch.gep, align 4 ; 4 uses
end_hunk_2
begin_hunk_3
  br label %adjustTypeIfNeeded.exit79

adjustTypeIfNeeded.exit79:                        ; preds = %bb.r, %sdsReqType.exit.i73, %bb.s, %switch.lookup175
  %.1111 = phi i8 [ %spec.store.select, %bb.r ], [ %spec.store.select, %switch.lookup175 ], [ %..i.i74, %sdsReqType.exit.i73 ], [ 2, %bb.s ] ; 2 uses
  %.0107 = phi i32 [ %switch.load, %bb.r ], [ %switch.load, %switch.lookup175 ], [ %..i75, %sdsReqType.exit.i73 ], [ 5, %bb.s ] ; 2 uses
  %i.cw = zext nneg i32 %.0107 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cw ; 3 uses
end_hunk_3
