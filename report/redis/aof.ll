begin_hunk_0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = add nsw i32 %62, -5
  %or.cond = icmp ult i32 %65, 2
  %or.cond3 = and i1 %60, %or.cond
  %66 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %67 = icmp slt i32 %66, 3
  %or.cond21.not = select i1 %or.cond3, i1 %67, i1 false
end_hunk_0
begin_hunk_1
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = add nsw i32 %99, -5
  %or.cond11 = icmp ult i32 %102, 2
  %or.cond13 = select i1 %or.cond11, i1 %97, i1 false
  %103 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %104 = icmp slt i32 %103, 3
  %or.cond24.not = select i1 %or.cond13, i1 %104, i1 false
end_hunk_1
