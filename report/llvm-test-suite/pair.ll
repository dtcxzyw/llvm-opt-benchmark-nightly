inline.NumInlined: 21
begin_hunk_0_@set_pair1:bb.a
  %i.jm = shl nsw i32 %.lcssa, 2
  %i.jn = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !18
  %i.jo = shl nsw i32 %i.jn, 1
  %invariant.op = add i32 %i.jm, %i.jo            ; 4 uses
  %.reass = sub i32 %invariant.op, %i.do          ; 4 uses
  %i.jp = sext i32 %i.do to i64                   ; 9 uses
  %wide.trip.count270 = sext i32 %i.dj to i64     ; 7 uses
  %i.jq = sub nsw i64 %wide.trip.count270, %i.jp  ; 3 uses
end_hunk_0
begin_hunk_1_@set_pair1:bb.a
vector.ph343:                                     ; preds = %vector.memcheck337
  %n.vec345 = and i64 %i.jq, -4                   ; 3 uses
  %i.kf = add nsw i64 %n.vec345, %i.jp
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph343
  %index347 = phi i64 [ 0, %vector.ph343 ], [ %index.next351, %vector.body346 ] ; 2 uses
  %2 = add i64 %index347, %i.jp                   ; 2 uses
  %i.kg = trunc i64 %2 to i32
  %gep373 = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %2 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %gep373, i64 16 ; 2 uses
  %wide.load349.a = load <2 x ptr>, ptr %gep373, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  %wide.load350 = load <2 x ptr>, ptr %i.kh, align 8, !tbaa !43, !alias.scope !44, !noalias !47
  %i.ki = add i32 %.reass, %i.kg
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
end_hunk_1
