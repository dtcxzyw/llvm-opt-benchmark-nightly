begin_hunk_0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = add nsw i32 %64, -5
  %or.cond = icmp ult i32 %67, 2
  %or.cond3 = and i1 %62, %or.cond
  %68 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %69 = icmp slt i32 %68, 3
  %or.cond21.not = select i1 %or.cond3, i1 %69, i1 false
end_hunk_0
begin_hunk_1
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = add nsw i32 %103, -5
  %or.cond11 = icmp ult i32 %106, 2
  %or.cond13 = select i1 %or.cond11, i1 %101, i1 false
  %107 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %108 = icmp slt i32 %107, 3
  %or.cond24.not = select i1 %or.cond13, i1 %108, i1 false
end_hunk_1
