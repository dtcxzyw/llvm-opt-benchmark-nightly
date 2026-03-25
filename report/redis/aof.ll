begin_hunk_0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = icmp samesign ugt i32 %68, 4
  %or.cond3 = and i1 %66, %71
  %72 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %73 = icmp slt i32 %72, 3
  %or.cond21.not = select i1 %or.cond3, i1 %73, i1 false
end_hunk_0
begin_hunk_1
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = icmp samesign ugt i32 %107, 4
  %or.cond13 = select i1 %110, i1 %105, i1 false
  %111 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %112 = icmp slt i32 %111, 3
  %or.cond24.not = select i1 %or.cond13, i1 %112, i1 false
end_hunk_1
