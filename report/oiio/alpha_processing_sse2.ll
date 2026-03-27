begin_hunk_0

vector.body:                                      ; preds = %pred.store.continue64, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue64 ] ; 2 uses
  %offset.idx = add i64 %index, %i.f              ; 9 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %offset.idx ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !3
  %wide.load50 = load <4 x i32>, ptr %i.j, align 4, !tbaa !3
end_hunk_0
begin_hunk_1
  br i1 %i.m, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %3 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %offset.idx
  store i32 %2, ptr %3, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.n = extractelement <4 x i1> %i.k, i64 1
  br i1 %i.n, label %pred.store.if51, label %pred.store.continue52

end_hunk_1
begin_hunk_2
  store i32 %2, ptr %i.p, align 4, !tbaa !3
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue
  %i.q = extractelement <4 x i1> %i.k, i64 2
  br i1 %i.q, label %pred.store.if53, label %pred.store.continue54

end_hunk_2
begin_hunk_3
  store i32 %2, ptr %i.s, align 4, !tbaa !3
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.t = extractelement <4 x i1> %i.k, i64 3
  br i1 %i.t, label %pred.store.if55, label %pred.store.continue56

end_hunk_3
begin_hunk_4
  store i32 %2, ptr %i.v, align 4, !tbaa !3
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.w = extractelement <4 x i1> %i.l, i64 0
  br i1 %i.w, label %pred.store.if57, label %pred.store.continue58

end_hunk_4
begin_hunk_5
  store i32 %2, ptr %i.y, align 4, !tbaa !3
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.z = extractelement <4 x i1> %i.l, i64 1
  br i1 %i.z, label %pred.store.if59, label %pred.store.continue60

end_hunk_5
begin_hunk_6
  store i32 %2, ptr %i.ab, align 4, !tbaa !3
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.ac = extractelement <4 x i1> %i.l, i64 2
  br i1 %i.ac, label %pred.store.if61, label %pred.store.continue62

end_hunk_6
begin_hunk_7
  store i32 %2, ptr %i.ae, align 4, !tbaa !3
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.af = extractelement <4 x i1> %i.l, i64 3
  br i1 %i.af, label %pred.store.if63, label %pred.store.continue64

end_hunk_7
begin_hunk_8
  store i32 %2, ptr %i.ah, align 4, !tbaa !3
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !42
end_hunk_8
