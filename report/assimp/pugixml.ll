begin_hunk_0
  store i8 %i.bm, ptr %i.bn, align 16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bq = extractelement <16 x i1> %i.bo, i64 1
  br i1 %i.bq, label %pred.store.if27, label %pred.store.continue28

end_hunk_0
begin_hunk_1
  store i8 %i.bt, ptr %i.bs, align 1
  br label %pred.store.continue28

pred.store.continue28:                            ; preds = %pred.store.if27, %pred.store.continue
  %i.bu = extractelement <16 x i1> %i.bo, i64 2
  br i1 %i.bu, label %pred.store.if29, label %pred.store.continue30

end_hunk_1
begin_hunk_2
  store i8 %i.bx, ptr %i.bw, align 2
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue28
  %i.by = extractelement <16 x i1> %i.bo, i64 3
  br i1 %i.by, label %pred.store.if31, label %pred.store.continue32

end_hunk_2
begin_hunk_3
  store i8 %i.cb, ptr %i.ca, align 1
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.cc = extractelement <16 x i1> %i.bo, i64 4
  br i1 %i.cc, label %pred.store.if33, label %pred.store.continue34

end_hunk_3
begin_hunk_4
  store i8 %i.cf, ptr %i.ce, align 4
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.cg = extractelement <16 x i1> %i.bo, i64 5
  br i1 %i.cg, label %pred.store.if35, label %pred.store.continue36

end_hunk_4
begin_hunk_5
  store i8 %i.cj, ptr %i.ci, align 1
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.ck = extractelement <16 x i1> %i.bo, i64 6
  br i1 %i.ck, label %pred.store.if37, label %pred.store.continue38

end_hunk_5
begin_hunk_6
  store i8 %i.cn, ptr %i.cm, align 2
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.co = extractelement <16 x i1> %i.bo, i64 7
  br i1 %i.co, label %pred.store.if39, label %pred.store.continue40

end_hunk_6
begin_hunk_7
  store i8 %i.cr, ptr %i.cq, align 1
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.cs = extractelement <16 x i1> %i.bo, i64 8
  br i1 %i.cs, label %pred.store.if41, label %pred.store.continue42

end_hunk_7
begin_hunk_8
  store i8 %i.cv, ptr %i.cu, align 8
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.cw = extractelement <16 x i1> %i.bo, i64 9
  br i1 %i.cw, label %pred.store.if43, label %pred.store.continue44

end_hunk_8
begin_hunk_9
  store i8 %i.cz, ptr %i.cy, align 1
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.da = extractelement <16 x i1> %i.bo, i64 10
  br i1 %i.da, label %pred.store.if45, label %pred.store.continue46

end_hunk_9
begin_hunk_10
  store i8 %i.dd, ptr %i.dc, align 2
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.de = extractelement <16 x i1> %i.bo, i64 11
  br i1 %i.de, label %pred.store.if47, label %pred.store.continue48

end_hunk_10
begin_hunk_11
  store i8 %i.dh, ptr %i.dg, align 1
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.di = extractelement <16 x i1> %i.bo, i64 12
  br i1 %i.di, label %pred.store.if49, label %pred.store.continue50

end_hunk_11
begin_hunk_12
  store i8 %i.dl, ptr %i.dk, align 4
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.dm = extractelement <16 x i1> %i.bo, i64 13
  br i1 %i.dm, label %pred.store.if51, label %pred.store.continue52

end_hunk_12
begin_hunk_13
  store i8 %i.dp, ptr %i.do, align 1
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.dq = extractelement <16 x i1> %i.bo, i64 14
  br i1 %i.dq, label %pred.store.if53, label %pred.store.continue54

end_hunk_13
begin_hunk_14
  store i8 %i.dt, ptr %i.ds, align 2
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.du = extractelement <16 x i1> %i.bo, i64 15
  br i1 %i.du, label %pred.store.if55, label %pred.store.continue56

end_hunk_14
begin_hunk_15
  store i8 %i.dx, ptr %i.dw, align 1
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dy = icmp eq i64 %index.next, 128
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !199
end_hunk_15
