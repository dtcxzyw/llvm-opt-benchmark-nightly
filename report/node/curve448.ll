inline.NumInlined: 75
inline.NumDeleted: 30
begin_hunk_0_@ossl_curve448_base_double_scalarmul_non_secret:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %15 = trunc i64 %index to i32
  %16 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %index ; 2 uses
  %i.ar = add i32 %i.aj, %15
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x i64>, ptr %i.at, align 8
  %wide.load107 = load <2 x i64>, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <2 x i64> %wide.load, ptr %16, align 16
  store <2 x i64> %wide.load107, ptr %i.av, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
end_hunk_0
begin_hunk_1_@ossl_curve448_base_double_scalarmul_non_secret:bb.a

vector.body114:                                   ; preds = %vector.body114, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %17 = trunc i64 %index115 to i32
  %18 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index115 ; 2 uses
  %i.du = add i32 %i.dm, %17
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load116 = load <2 x i64>, ptr %i.dw, align 8
  %wide.load117 = load <2 x i64>, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <2 x i64> %wide.load116, ptr %18, align 16
  store <2 x i64> %wide.load117, ptr %i.dy, align 16
  %index.next118 = add nuw i64 %index115, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next118, %n.vec113
end_hunk_1
