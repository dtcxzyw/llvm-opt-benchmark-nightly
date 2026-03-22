begin_hunk_0
  %index113 = phi i64 [ 0, %vector.ph111 ], [ %index.next115.3, %vector.body.interim.3 ] ; [#uses=6 type=i64]
  %129 = getelementptr inbounds nuw [4 x i8], ptr %126, i64 %index113 ; [#uses=1 type=ptr]
  %wide.load114 = load <4 x i32>, ptr %129, align 8, !tbaa !3 ; [#uses=1 type=<4 x i32>]
  %wide.load114.fr = freeze <4 x i32> %wide.load114 ; [#uses=1 type=<4 x i32>]
  %130 = icmp ne <4 x i32> %wide.load114.fr, zeroinitializer ; [#uses=2 type=<4 x i1>]
  %131 = bitcast <4 x i1> %130 to i4              ; [#uses=1 type=i4]
  %.not129 = icmp eq i4 %131, 0                   ; [#uses=1 type=i1]
  br i1 %.not129, label %vector.body.interim, label %vector.early.exit
end_hunk_0
begin_hunk_1
  %index.next115 = or disjoint i64 %index113, 4   ; [#uses=2 type=i64]
  %132 = getelementptr inbounds nuw [4 x i8], ptr %126, i64 %index.next115 ; [#uses=1 type=ptr]
  %wide.load114.1 = load <4 x i32>, ptr %132, align 8, !tbaa !3 ; [#uses=1 type=<4 x i32>]
  %wide.load114.fr.1 = freeze <4 x i32> %wide.load114.1 ; [#uses=1 type=<4 x i32>]
  %133 = icmp ne <4 x i32> %wide.load114.fr.1, zeroinitializer ; [#uses=2 type=<4 x i1>]
  %134 = bitcast <4 x i1> %133 to i4              ; [#uses=1 type=i4]
  %.not129.1 = icmp eq i4 %134, 0                 ; [#uses=1 type=i1]
  br i1 %.not129.1, label %vector.body.interim.1, label %vector.early.exit
end_hunk_1
begin_hunk_2
  %index.next115.1 = or disjoint i64 %index113, 8 ; [#uses=2 type=i64]
  %135 = getelementptr inbounds nuw [4 x i8], ptr %126, i64 %index.next115.1 ; [#uses=1 type=ptr]
  %wide.load114.2 = load <4 x i32>, ptr %135, align 8, !tbaa !3 ; [#uses=1 type=<4 x i32>]
  %wide.load114.fr.2 = freeze <4 x i32> %wide.load114.2 ; [#uses=1 type=<4 x i32>]
  %136 = icmp ne <4 x i32> %wide.load114.fr.2, zeroinitializer ; [#uses=2 type=<4 x i1>]
  %137 = bitcast <4 x i1> %136 to i4              ; [#uses=1 type=i4]
  %.not129.2 = icmp eq i4 %137, 0                 ; [#uses=1 type=i1]
  br i1 %.not129.2, label %vector.body.interim.2, label %vector.early.exit
end_hunk_2
begin_hunk_3
  %index.next115.2 = or disjoint i64 %index113, 12 ; [#uses=2 type=i64]
  %138 = getelementptr inbounds nuw [4 x i8], ptr %126, i64 %index.next115.2 ; [#uses=1 type=ptr]
  %wide.load114.3 = load <4 x i32>, ptr %138, align 8, !tbaa !3 ; [#uses=1 type=<4 x i32>]
  %wide.load114.fr.3 = freeze <4 x i32> %wide.load114.3 ; [#uses=1 type=<4 x i32>]
  %139 = icmp ne <4 x i32> %wide.load114.fr.3, zeroinitializer ; [#uses=2 type=<4 x i1>]
  %140 = bitcast <4 x i1> %139 to i4              ; [#uses=1 type=i4]
  %.not129.3 = icmp eq i4 %140, 0                 ; [#uses=1 type=i1]
  br i1 %.not129.3, label %vector.body.interim.3, label %vector.early.exit
end_hunk_3
