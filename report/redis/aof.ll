begin_hunk_0
  br i1 %i.au, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %2 = icmp samesign ugt i32 %i.at, 4
  %or.cond3 = and i1 %i.ar, %2
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.aw = icmp slt i32 %i.av, 3
  %or.cond21.not = select i1 %or.cond3, i1 %i.aw, i1 false
end_hunk_0
begin_hunk_1
  br i1 %i.bv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %3 = icmp samesign ugt i32 %i.bu, 4
  %or.cond13 = select i1 %3, i1 %i.bs, i1 false
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.bx = icmp slt i32 %i.bw, 3
  %or.cond24.not = select i1 %or.cond13, i1 %i.bx, i1 false
end_hunk_1
