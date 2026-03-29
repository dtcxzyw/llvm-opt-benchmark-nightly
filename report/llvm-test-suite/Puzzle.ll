begin_hunk_0
  store i32 1, ptr %i.l, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.m = extractelement <4 x i1> %i.i, i64 1
  br i1 %i.m, label %pred.store.if37, label %pred.store.continue38

end_hunk_0
begin_hunk_1
  store i32 1, ptr %i.o, align 4, !tbaa !4
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.continue, %pred.store.if37
  %i.p = extractelement <4 x i1> %i.i, i64 2
  br i1 %i.p, label %pred.store.if39, label %pred.store.continue40

end_hunk_1
begin_hunk_2
  store i32 1, ptr %i.r, align 4, !tbaa !4
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.continue38, %pred.store.if39
  %i.s = extractelement <4 x i1> %i.i, i64 3
  br i1 %i.s, label %pred.store.if41, label %pred.store.continue42

end_hunk_2
begin_hunk_3
  store i32 1, ptr %i.u, align 4, !tbaa !4
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.continue40, %pred.store.if41
  %i.v = extractelement <4 x i1> %i.j, i64 0
  br i1 %i.v, label %pred.store.if43, label %pred.store.continue44

end_hunk_3
begin_hunk_4
  store i32 1, ptr %i.x, align 4, !tbaa !4
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.continue42, %pred.store.if43
  %i.y = extractelement <4 x i1> %i.j, i64 1
  br i1 %i.y, label %pred.store.if45, label %pred.store.continue46

end_hunk_4
begin_hunk_5
  store i32 1, ptr %i.aa, align 4, !tbaa !4
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.continue44, %pred.store.if45
  %i.ab = extractelement <4 x i1> %i.j, i64 2
  br i1 %i.ab, label %pred.store.if47, label %pred.store.continue48

end_hunk_5
begin_hunk_6
  store i32 1, ptr %i.ad, align 4, !tbaa !4
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.continue46, %pred.store.if47
  %i.ae = extractelement <4 x i1> %i.j, i64 3
  br i1 %i.ae, label %pred.store.if49, label %pred.store.continue50

end_hunk_6
begin_hunk_7
  store i32 1, ptr %i.ag, align 4, !tbaa !4
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.continue48, %pred.store.if49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !12
end_hunk_7
begin_hunk_8
  store i32 0, ptr %i.l, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.m = extractelement <4 x i1> %i.i, i64 1
  br i1 %i.m, label %pred.store.if14, label %pred.store.continue15

end_hunk_8
begin_hunk_9
  store i32 0, ptr %i.o, align 4, !tbaa !4
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.continue, %pred.store.if14
  %i.p = extractelement <4 x i1> %i.i, i64 2
  br i1 %i.p, label %pred.store.if16, label %pred.store.continue17

end_hunk_9
begin_hunk_10
  store i32 0, ptr %i.r, align 4, !tbaa !4
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.continue15, %pred.store.if16
  %i.s = extractelement <4 x i1> %i.i, i64 3
  br i1 %i.s, label %pred.store.if18, label %pred.store.continue19

end_hunk_10
begin_hunk_11
  store i32 0, ptr %i.u, align 4, !tbaa !4
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.continue17, %pred.store.if18
  %i.v = extractelement <4 x i1> %i.j, i64 0
  br i1 %i.v, label %pred.store.if20, label %pred.store.continue21

end_hunk_11
begin_hunk_12
  store i32 0, ptr %i.x, align 4, !tbaa !4
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.continue19, %pred.store.if20
  %i.y = extractelement <4 x i1> %i.j, i64 1
  br i1 %i.y, label %pred.store.if22, label %pred.store.continue23

end_hunk_12
begin_hunk_13
  store i32 0, ptr %i.aa, align 4, !tbaa !4
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.continue21, %pred.store.if22
  %i.ab = extractelement <4 x i1> %i.j, i64 2
  br i1 %i.ab, label %pred.store.if24, label %pred.store.continue25

end_hunk_13
begin_hunk_14
  store i32 0, ptr %i.ad, align 4, !tbaa !4
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.continue23, %pred.store.if24
  %i.ae = extractelement <4 x i1> %i.j, i64 3
  br i1 %i.ae, label %pred.store.if26, label %pred.store.continue27

end_hunk_14
begin_hunk_15
  store i32 0, ptr %i.ag, align 4, !tbaa !4
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.continue25, %pred.store.if26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !17
end_hunk_15
begin_hunk_16
  store i32 1, ptr %i.v, align 4, !tbaa !4
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %vector.body63, %pred.store.if67
  %i.w = extractelement <4 x i1> %i.s, i64 1
  br i1 %i.w, label %pred.store.if69, label %pred.store.continue70

end_hunk_16
begin_hunk_17
  store i32 1, ptr %i.y, align 4, !tbaa !4
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.continue68, %pred.store.if69
  %i.z = extractelement <4 x i1> %i.s, i64 2
  br i1 %i.z, label %pred.store.if71, label %pred.store.continue72

end_hunk_17
begin_hunk_18
  store i32 1, ptr %i.ab, align 4, !tbaa !4
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.continue70, %pred.store.if71
  %i.ac = extractelement <4 x i1> %i.s, i64 3
  br i1 %i.ac, label %pred.store.if73, label %pred.store.continue74

end_hunk_18
begin_hunk_19
  store i32 1, ptr %i.ae, align 4, !tbaa !4
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.continue72, %pred.store.if73
  %i.af = extractelement <4 x i1> %i.t, i64 0
  br i1 %i.af, label %pred.store.if75, label %pred.store.continue76

end_hunk_19
begin_hunk_20
  store i32 1, ptr %i.ah, align 4, !tbaa !4
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.continue74, %pred.store.if75
  %i.ai = extractelement <4 x i1> %i.t, i64 1
  br i1 %i.ai, label %pred.store.if77, label %pred.store.continue78

end_hunk_20
begin_hunk_21
  store i32 1, ptr %i.ak, align 4, !tbaa !4
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.continue76, %pred.store.if77
  %i.al = extractelement <4 x i1> %i.t, i64 2
  br i1 %i.al, label %pred.store.if79, label %pred.store.continue80

end_hunk_21
begin_hunk_22
  store i32 1, ptr %i.an, align 4, !tbaa !4
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.continue78, %pred.store.if79
  %i.ao = extractelement <4 x i1> %i.t, i64 3
  br i1 %i.ao, label %pred.store.if81, label %pred.store.continue82

end_hunk_22
begin_hunk_23
  store i32 1, ptr %i.aq, align 4, !tbaa !4
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.continue80, %pred.store.if81
  %index.next83 = add nuw i64 %index64, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next83, %n.vec62
  br i1 %i.ar, label %middle.block84, label %vector.body63, !llvm.loop !19
end_hunk_23
begin_hunk_24
  store i32 0, ptr %i.bk, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.bl = extractelement <4 x i1> %i.bh, i64 1
  br i1 %i.bl, label %pred.store.if44, label %pred.store.continue45

end_hunk_24
begin_hunk_25
  store i32 0, ptr %i.bn, align 4, !tbaa !4
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.continue, %pred.store.if44
  %i.bo = extractelement <4 x i1> %i.bh, i64 2
  br i1 %i.bo, label %pred.store.if46, label %pred.store.continue47

end_hunk_25
begin_hunk_26
  store i32 0, ptr %i.bq, align 4, !tbaa !4
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.continue45, %pred.store.if46
  %i.br = extractelement <4 x i1> %i.bh, i64 3
  br i1 %i.br, label %pred.store.if48, label %pred.store.continue49

end_hunk_26
begin_hunk_27
  store i32 0, ptr %i.bt, align 4, !tbaa !4
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.continue47, %pred.store.if48
  %i.bu = extractelement <4 x i1> %i.bi, i64 0
  br i1 %i.bu, label %pred.store.if50, label %pred.store.continue51

end_hunk_27
begin_hunk_28
  store i32 0, ptr %i.bw, align 4, !tbaa !4
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.continue49, %pred.store.if50
  %i.bx = extractelement <4 x i1> %i.bi, i64 1
  br i1 %i.bx, label %pred.store.if52, label %pred.store.continue53

end_hunk_28
begin_hunk_29
  store i32 0, ptr %i.bz, align 4, !tbaa !4
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.continue51, %pred.store.if52
  %i.ca = extractelement <4 x i1> %i.bi, i64 2
  br i1 %i.ca, label %pred.store.if54, label %pred.store.continue55

end_hunk_29
begin_hunk_30
  store i32 0, ptr %i.cc, align 4, !tbaa !4
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.continue53, %pred.store.if54
  %i.cd = extractelement <4 x i1> %i.bi, i64 3
  br i1 %i.cd, label %pred.store.if56, label %pred.store.continue57

end_hunk_30
begin_hunk_31
  store i32 0, ptr %i.cf, align 4, !tbaa !4
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.continue55, %pred.store.if56
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !21
end_hunk_31
