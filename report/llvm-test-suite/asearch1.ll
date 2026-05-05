begin_hunk_0_@asearch1:bb.a
vector.body449:                                   ; preds = %vector.body449, %vector.ph440
  %index450 = phi i64 [ 0, %vector.ph440 ], [ %index.next459, %vector.body449 ] ; 2 uses
  %i.ed = add i64 %index450, %i.bq                ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load451 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !4 ; 2 uses
end_hunk_0
begin_hunk_1_@asearch1:bb.a
  %i.ej = lshr <4 x i32> %wide.load452, splat (i32 1)
  %i.ek = and <4 x i32> %i.ei, %broadcast.splat446
  %i.el = and <4 x i32> %i.ej, %broadcast.splat446
  %3 = trunc nuw i64 %i.ed to i32                 ; 3 uses
  %i.em = sub i32 %3, %i.dr
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en ; 2 uses
end_hunk_1
begin_hunk_2_@asearch1:bb.a
vector.body405:                                   ; preds = %vector.body405, %vector.ph396
  %index406 = phi i64 [ 0, %vector.ph396 ], [ %index.next415, %vector.body405 ] ; 2 uses
  %i.if = add i64 %index406, %i.bq                ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load407 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !4 ; 2 uses
end_hunk_2
begin_hunk_3_@asearch1:bb.a
  %i.il = lshr <4 x i32> %wide.load408, splat (i32 1)
  %i.im = and <4 x i32> %i.ik, %broadcast.splat402
  %i.in = and <4 x i32> %i.il, %broadcast.splat402
  %4 = trunc nuw i64 %i.if to i32                 ; 3 uses
  %i.io = sub i32 %4, %i.ht
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ip ; 2 uses
end_hunk_3
begin_hunk_4_@asearch1:bb.a
vector.body375:                                   ; preds = %vector.body375, %vector.ph366
  %index376 = phi i64 [ 0, %vector.ph366 ], [ %index.next385, %vector.body375 ] ; 2 uses
  %i.ln = add i64 %index376, %i.bq                ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load377 = load <4 x i32>, ptr %i.lo, align 4, !tbaa !4 ; 2 uses
end_hunk_4
begin_hunk_5_@asearch1:bb.a
  %i.lt = lshr <4 x i32> %wide.load378, splat (i32 1)
  %i.lu = and <4 x i32> %i.ls, %broadcast.splat372
  %i.lv = and <4 x i32> %i.lt, %broadcast.splat372
  %5 = trunc nuw i64 %i.ln to i32                 ; 3 uses
  %i.lw = sub i32 %5, %i.lb
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lx ; 2 uses
end_hunk_5
begin_hunk_6_@asearch1:bb.a
vector.body332:                                   ; preds = %vector.body332, %vector.ph323
  %index333 = phi i64 [ 0, %vector.ph323 ], [ %index.next341, %vector.body332 ] ; 2 uses
  %i.pp = add i64 %index333, %i.bq                ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pp ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %wide.load = load <4 x i32>, ptr %i.pq, align 4, !tbaa !4 ; 2 uses
end_hunk_6
begin_hunk_7_@asearch1:bb.a
  %i.pv = lshr <4 x i32> %wide.load334, splat (i32 1)
  %i.pw = and <4 x i32> %i.pu, %broadcast.splat329
  %i.px = and <4 x i32> %i.pv, %broadcast.splat329
  %6 = trunc nuw i64 %i.pp to i32                 ; 3 uses
  %i.py = sub i32 %6, %i.pd
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pz ; 2 uses
end_hunk_7
