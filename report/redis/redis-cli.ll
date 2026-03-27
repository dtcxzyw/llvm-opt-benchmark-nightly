begin_hunk_0
  %16 = alloca %struct.listIter, align 8          ; 5 uses
  %17 = alloca %struct.listIter, align 8          ; 5 uses
  %18 = alloca %struct.dictIterator, align 8      ; 11 uses
  %i.d = alloca [16384 x i8], align 16            ; 12 uses
  %19 = alloca %struct.dictType, align 8          ; 6 uses
  %20 = alloca %struct.listIter, align 8          ; 9 uses
  %i.e = load ptr, ptr @cluster_manager.0, align 8, !tbaa !76
end_hunk_0
begin_hunk_1
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue869, %.lr.ph.i155
  %index = phi i64 [ 0, %.lr.ph.i155 ], [ %index.next, %pred.store.continue869 ] ; 10 uses
  %vec.phi = phi <4 x i32> [ %i.tj, %.lr.ph.i155 ], [ %predphi870, %pred.store.continue869 ]
  %vec.phi852 = phi <4 x i32> [ zeroinitializer, %.lr.ph.i155 ], [ %predphi872, %pred.store.continue869 ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %index ; 2 uses
end_hunk_1
begin_hunk_2
  %wide.load853 = load <4 x i8>, ptr %i.tl, align 1, !tbaa !72
  %i.tm = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.tn = icmp ne <4 x i8> %wide.load853, zeroinitializer ; 2 uses
  %i.to = getelementptr i8, ptr %i.d, i64 %index  ; 3 uses
  %i.tp = getelementptr i8, ptr %i.to, i64 4
  %wide.load854 = load <4 x i8>, ptr %i.to, align 8, !tbaa !72
  %wide.load855 = load <4 x i8>, ptr %i.tp, align 4, !tbaa !72
end_hunk_2
begin_hunk_3
  br i1 %i.tu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 1, ptr %i.to, align 8, !tbaa !72
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.tv = extractelement <4 x i1> %i.ts, i64 1
  br i1 %i.tv, label %pred.store.if856, label %pred.store.continue857

end_hunk_3
begin_hunk_4
  store i8 1, ptr %i.tx, align 1, !tbaa !72
  br label %pred.store.continue857

pred.store.continue857:                           ; preds = %pred.store.continue, %pred.store.if856
  %i.ty = extractelement <4 x i1> %i.ts, i64 2
  br i1 %i.ty, label %pred.store.if858, label %pred.store.continue859

end_hunk_4
begin_hunk_5
  store i8 1, ptr %i.ua, align 2, !tbaa !72
  br label %pred.store.continue859

pred.store.continue859:                           ; preds = %pred.store.continue857, %pred.store.if858
  %i.ub = extractelement <4 x i1> %i.ts, i64 3
  br i1 %i.ub, label %pred.store.if860, label %pred.store.continue861

end_hunk_5
begin_hunk_6
  store i8 1, ptr %i.ud, align 1, !tbaa !72
  br label %pred.store.continue861

pred.store.continue861:                           ; preds = %pred.store.continue859, %pred.store.if860
  %i.ue = extractelement <4 x i1> %i.tt, i64 0
  br i1 %i.ue, label %pred.store.if862, label %pred.store.continue863

end_hunk_6
begin_hunk_7
  store i8 1, ptr %i.ug, align 4, !tbaa !72
  br label %pred.store.continue863

pred.store.continue863:                           ; preds = %pred.store.continue861, %pred.store.if862
  %i.uh = extractelement <4 x i1> %i.tt, i64 1
  br i1 %i.uh, label %pred.store.if864, label %pred.store.continue865

end_hunk_7
begin_hunk_8
  store i8 1, ptr %i.uj, align 1, !tbaa !72
  br label %pred.store.continue865

pred.store.continue865:                           ; preds = %pred.store.continue863, %pred.store.if864
  %i.uk = extractelement <4 x i1> %i.tt, i64 2
  br i1 %i.uk, label %pred.store.if866, label %pred.store.continue867

end_hunk_8
begin_hunk_9
  store i8 1, ptr %i.um, align 2, !tbaa !72
  br label %pred.store.continue867

pred.store.continue867:                           ; preds = %pred.store.continue865, %pred.store.if866
  %i.un = extractelement <4 x i1> %i.tt, i64 3
  br i1 %i.un, label %pred.store.if868, label %pred.store.continue869

end_hunk_9
begin_hunk_10
  store i8 1, ptr %i.up, align 1, !tbaa !72
  br label %pred.store.continue869

pred.store.continue869:                           ; preds = %pred.store.continue867, %pred.store.if868
  %narrow = select <4 x i1> %i.tm, <4 x i1> %i.tq, <4 x i1> zeroinitializer
  %predphi = zext <4 x i1> %narrow to <4 x i32>
  %predphi870 = add <4 x i32> %vec.phi, %predphi  ; 2 uses
end_hunk_10
