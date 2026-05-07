begin_hunk_0_@consensus:bb.a
vector.body:                                      ; preds = %pred.store.continue154, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue154 ] ; 5 uses
  %i.al = or disjoint i64 %index, 1               ; 3 uses
  %i.am = getelementptr [4 x i8], ptr %1, i64 %i.al ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !35
  %i.an = getelementptr [4 x i8], ptr %2, i64 %i.al ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.an, align 4, !tbaa !4, !alias.scope !38
  %i.ao = and <4 x i32> %wide.load146, %wide.load ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
end_hunk_0
