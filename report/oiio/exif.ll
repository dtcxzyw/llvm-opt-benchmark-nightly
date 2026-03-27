begin_hunk_0
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.al = extractelement <8 x i1> %i.aj, i64 1
  br i1 %i.al, label %pred.store.if10, label %pred.store.continue11

end_hunk_0
begin_hunk_1
  store i16 -1, ptr %next.gep3, align 8, !tbaa !16
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.am = extractelement <8 x i1> %i.aj, i64 2
  br i1 %i.am, label %pred.store.if12, label %pred.store.continue13

end_hunk_1
begin_hunk_2
  store i16 -1, ptr %next.gep4, align 8, !tbaa !16
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.an = extractelement <8 x i1> %i.aj, i64 3
  br i1 %i.an, label %pred.store.if14, label %pred.store.continue15

end_hunk_2
begin_hunk_3
  store i16 -1, ptr %next.gep5, align 8, !tbaa !16
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.ao = extractelement <8 x i1> %i.aj, i64 4
  br i1 %i.ao, label %pred.store.if16, label %pred.store.continue17

end_hunk_3
begin_hunk_4
  store i16 -1, ptr %next.gep6, align 8, !tbaa !16
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ap = extractelement <8 x i1> %i.aj, i64 5
  br i1 %i.ap, label %pred.store.if18, label %pred.store.continue19

end_hunk_4
begin_hunk_5
  store i16 -1, ptr %next.gep7, align 8, !tbaa !16
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.aq = extractelement <8 x i1> %i.aj, i64 6
  br i1 %i.aq, label %pred.store.if20, label %pred.store.continue21

end_hunk_5
begin_hunk_6
  store i16 -1, ptr %next.gep8, align 8, !tbaa !16
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ar = extractelement <8 x i1> %i.aj, i64 7
  br i1 %i.ar, label %pred.store.if22, label %pred.store.continue23

end_hunk_6
begin_hunk_7
  store i16 -1, ptr %next.gep9, align 8, !tbaa !16
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !175
end_hunk_7
begin_hunk_8
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bu = extractelement <8 x i1> %i.bs, i64 1
  br i1 %i.bu, label %pred.store.if36, label %pred.store.continue37

end_hunk_8
begin_hunk_9
  store i16 -1, ptr %next.gep29, align 8, !tbaa !16
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue
  %i.bv = extractelement <8 x i1> %i.bs, i64 2
  br i1 %i.bv, label %pred.store.if38, label %pred.store.continue39

end_hunk_9
begin_hunk_10
  store i16 -1, ptr %next.gep30, align 8, !tbaa !16
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bw = extractelement <8 x i1> %i.bs, i64 3
  br i1 %i.bw, label %pred.store.if40, label %pred.store.continue41

end_hunk_10
begin_hunk_11
  store i16 -1, ptr %next.gep31, align 8, !tbaa !16
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.bx = extractelement <8 x i1> %i.bs, i64 4
  br i1 %i.bx, label %pred.store.if42, label %pred.store.continue43

end_hunk_11
begin_hunk_12
  store i16 -1, ptr %next.gep32, align 8, !tbaa !16
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.by = extractelement <8 x i1> %i.bs, i64 5
  br i1 %i.by, label %pred.store.if44, label %pred.store.continue45

end_hunk_12
begin_hunk_13
  store i16 -1, ptr %next.gep33, align 8, !tbaa !16
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bz = extractelement <8 x i1> %i.bs, i64 6
  br i1 %i.bz, label %pred.store.if46, label %pred.store.continue47

end_hunk_13
begin_hunk_14
  store i16 -1, ptr %next.gep34, align 8, !tbaa !16
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.ca = extractelement <8 x i1> %i.bs, i64 7
  br i1 %i.ca, label %pred.store.if48, label %pred.store.continue49

end_hunk_14
begin_hunk_15
  store i16 -1, ptr %next.gep35, align 8, !tbaa !16
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !195
end_hunk_15
begin_hunk_16
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bm = extractelement <8 x i1> %i.bk, i64 1
  br i1 %i.bm, label %pred.store.if20, label %pred.store.continue21

end_hunk_16
begin_hunk_17
  store i16 -1, ptr %next.gep13, align 8, !tbaa !16
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.bn = extractelement <8 x i1> %i.bk, i64 2
  br i1 %i.bn, label %pred.store.if22, label %pred.store.continue23

end_hunk_17
begin_hunk_18
  store i16 -1, ptr %next.gep14, align 8, !tbaa !16
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bo = extractelement <8 x i1> %i.bk, i64 3
  br i1 %i.bo, label %pred.store.if24, label %pred.store.continue25

end_hunk_18
begin_hunk_19
  store i16 -1, ptr %next.gep15, align 8, !tbaa !16
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bp = extractelement <8 x i1> %i.bk, i64 4
  br i1 %i.bp, label %pred.store.if26, label %pred.store.continue27

end_hunk_19
begin_hunk_20
  store i16 -1, ptr %next.gep16, align 8, !tbaa !16
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.bq = extractelement <8 x i1> %i.bk, i64 5
  br i1 %i.bq, label %pred.store.if28, label %pred.store.continue29

end_hunk_20
begin_hunk_21
  store i16 -1, ptr %next.gep17, align 8, !tbaa !16
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.br = extractelement <8 x i1> %i.bk, i64 6
  br i1 %i.br, label %pred.store.if30, label %pred.store.continue31

end_hunk_21
begin_hunk_22
  store i16 -1, ptr %next.gep18, align 8, !tbaa !16
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.bs = extractelement <8 x i1> %i.bk, i64 7
  br i1 %i.bs, label %pred.store.if32, label %pred.store.continue33

end_hunk_22
begin_hunk_23
  store i16 -1, ptr %next.gep19, align 8, !tbaa !16
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !228
end_hunk_23
