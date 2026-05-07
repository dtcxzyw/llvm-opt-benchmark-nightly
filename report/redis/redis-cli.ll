inline.NumInlined: 395
inline.NumDeleted: 110
begin_hunk_0_@clusterManagerCheckCluster:bb.a
  %wide.load853 = load <4 x i8>, ptr %i.tl, align 1, !tbaa !73
  %i.tm = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.tn = icmp ne <4 x i8> %wide.load853, zeroinitializer ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %wide.load854 = load <4 x i8>, ptr %i.to, align 8, !tbaa !73
  %wide.load855 = load <4 x i8>, ptr %i.tp, align 4, !tbaa !73
  %i.tq = icmp eq <4 x i8> %wide.load854, zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@clusterManagerCheckCluster:bb.a
  br i1 %i.tv, label %pred.store.if856, label %pred.store.continue857

pred.store.if856:                                 ; preds = %pred.store.continue
  %i.tw = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 1, ptr %i.tx, align 1, !tbaa !73
  br label %pred.store.continue857

end_hunk_1
begin_hunk_2_@clusterManagerCheckCluster:bb.a
  br i1 %i.ty, label %pred.store.if858, label %pred.store.continue859

pred.store.if858:                                 ; preds = %pred.store.continue857
  %i.tz = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  store i8 1, ptr %i.ua, align 2, !tbaa !73
  br label %pred.store.continue859

end_hunk_2
begin_hunk_3_@clusterManagerCheckCluster:bb.a
  br i1 %i.ub, label %pred.store.if860, label %pred.store.continue861

pred.store.if860:                                 ; preds = %pred.store.continue859
  %i.uc = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 1, ptr %i.ud, align 1, !tbaa !73
  br label %pred.store.continue861

end_hunk_3
begin_hunk_4_@clusterManagerCheckCluster:bb.a
  br i1 %i.ue, label %pred.store.if862, label %pred.store.continue863

pred.store.if862:                                 ; preds = %pred.store.continue861
  %i.uf = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  store i8 1, ptr %i.ug, align 4, !tbaa !73
  br label %pred.store.continue863

end_hunk_4
begin_hunk_5_@clusterManagerCheckCluster:bb.a
  br i1 %i.uh, label %pred.store.if864, label %pred.store.continue865

pred.store.if864:                                 ; preds = %pred.store.continue863
  %i.ui = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 5
  store i8 1, ptr %i.uj, align 1, !tbaa !73
  br label %pred.store.continue865

end_hunk_5
begin_hunk_6_@clusterManagerCheckCluster:bb.a
  br i1 %i.uk, label %pred.store.if866, label %pred.store.continue867

pred.store.if866:                                 ; preds = %pred.store.continue865
  %i.ul = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 6
  store i8 1, ptr %i.um, align 2, !tbaa !73
  br label %pred.store.continue867

end_hunk_6
begin_hunk_7_@clusterManagerCheckCluster:bb.a
  br i1 %i.un, label %pred.store.if868, label %pred.store.continue869

pred.store.if868:                                 ; preds = %pred.store.continue867
  %i.uo = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 7
  store i8 1, ptr %i.up, align 1, !tbaa !73
  br label %pred.store.continue869

end_hunk_7
