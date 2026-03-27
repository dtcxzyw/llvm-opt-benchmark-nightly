begin_hunk_0
  %index113 = phi i64 [ 0, %vector.ph111 ], [ %index.next115.3, %vector.body.interim.3 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index113
  %wide.load114 = load <4 x i32>, ptr %i.do, align 8, !tbaa !3
  %i.dp = icmp ne <4 x i32> %wide.load114, zeroinitializer ; 2 uses
  %i.dq = bitcast <4 x i1> %i.dp to i4
  %.not129 = icmp eq i4 %i.dq, 0
  br i1 %.not129, label %vector.body.interim, label %vector.early.exit
end_hunk_0
begin_hunk_1
  %index.next115 = or disjoint i64 %index113, 4   ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next115
  %wide.load114.1 = load <4 x i32>, ptr %i.dr, align 8, !tbaa !3
  %i.ds = icmp ne <4 x i32> %wide.load114.1, zeroinitializer ; 2 uses
  %i.dt = bitcast <4 x i1> %i.ds to i4
  %.not129.1 = icmp eq i4 %i.dt, 0
  br i1 %.not129.1, label %vector.body.interim.1, label %vector.early.exit
end_hunk_1
begin_hunk_2
  %index.next115.1 = or disjoint i64 %index113, 8 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next115.1
  %wide.load114.2 = load <4 x i32>, ptr %i.du, align 8, !tbaa !3
  %i.dv = icmp ne <4 x i32> %wide.load114.2, zeroinitializer ; 2 uses
  %i.dw = bitcast <4 x i1> %i.dv to i4
  %.not129.2 = icmp eq i4 %i.dw, 0
  br i1 %.not129.2, label %vector.body.interim.2, label %vector.early.exit
end_hunk_2
begin_hunk_3
  %index.next115.2 = or disjoint i64 %index113, 12 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index.next115.2
  %wide.load114.3 = load <4 x i32>, ptr %i.dx, align 8, !tbaa !3
  %i.dy = icmp ne <4 x i32> %wide.load114.3, zeroinitializer ; 2 uses
  %i.dz = bitcast <4 x i1> %i.dy to i4
  %.not129.3 = icmp eq i4 %i.dz, 0
  br i1 %.not129.3, label %vector.body.interim.3, label %vector.early.exit
end_hunk_3
