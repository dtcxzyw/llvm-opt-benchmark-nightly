begin_hunk_0
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <2 x i1> %i.ap, i64 1
  br i1 %i.as, label %pred.store.if74, label %pred.store.continue75

end_hunk_0
begin_hunk_1
  store ptr %2, ptr %next.gep70, align 8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue
  %i.at = extractelement <2 x i1> %i.aq, i64 0
  br i1 %i.at, label %pred.store.if76, label %pred.store.continue77

end_hunk_1
begin_hunk_2
  store ptr %2, ptr %next.gep71, align 8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.au = extractelement <2 x i1> %i.aq, i64 1
  br i1 %i.au, label %pred.store.if78, label %pred.store.continue79

end_hunk_2
begin_hunk_3
  store ptr %2, ptr %next.gep72, align 8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !12
end_hunk_3
begin_hunk_4
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ao = extractelement <2 x i1> %i.al, i64 1
  br i1 %i.ao, label %pred.store.if41, label %pred.store.continue42

end_hunk_4
begin_hunk_5
  store ptr %2, ptr %next.gep37, align 8
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue
  %i.ap = extractelement <2 x i1> %i.am, i64 0
  br i1 %i.ap, label %pred.store.if43, label %pred.store.continue44

end_hunk_5
begin_hunk_6
  store ptr %2, ptr %next.gep38, align 8
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.aq = extractelement <2 x i1> %i.am, i64 1
  br i1 %i.aq, label %pred.store.if45, label %pred.store.continue46

end_hunk_6
begin_hunk_7
  store ptr %2, ptr %next.gep39, align 8
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !16
end_hunk_7
begin_hunk_8
  store ptr %2, ptr %next.gep, align 8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <2 x i1> %i.ap, i64 1
  br i1 %i.as, label %pred.store.if71, label %pred.store.continue72

end_hunk_8
begin_hunk_9
  store ptr %2, ptr %next.gep67, align 8
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue
  %i.at = extractelement <2 x i1> %i.aq, i64 0
  br i1 %i.at, label %pred.store.if73, label %pred.store.continue74

end_hunk_9
begin_hunk_10
  store ptr %2, ptr %next.gep68, align 8
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.au = extractelement <2 x i1> %i.aq, i64 1
  br i1 %i.au, label %pred.store.if75, label %pred.store.continue76

end_hunk_10
begin_hunk_11
  store ptr %2, ptr %next.gep69, align 8
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !18
end_hunk_11
