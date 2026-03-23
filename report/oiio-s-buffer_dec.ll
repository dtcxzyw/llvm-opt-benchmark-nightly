begin_hunk_0
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %65 = load ptr, ptr %64, align 8, !tbaa !23
  %66 = icmp ne ptr %65, null
  %67 = and i1 %66, %63
  %cond.fr = freeze i1 %67                        ; 2 uses
  %68 = icmp eq i32 %2, 12
  br i1 %68, label %69, label %111

end_hunk_0
begin_hunk_1
  %82 = load ptr, ptr %81, align 8, !tbaa !24
  %83 = icmp ne ptr %82, null
  %84 = and i1 %83, %80
  %.fr = freeze i1 %84
  %85 = and i1 %cond.fr, %.fr
  br i1 %85, label %112, label %.thread

86:                                               ; preds = %8
end_hunk_1
begin_hunk_2
  %108 = load ptr, ptr %10, align 8, !tbaa !16
  %109 = icmp ne ptr %108, null
  %110 = and i1 %109, %107
  %cond.fr75 = freeze i1 %110
  br i1 %cond.fr75, label %112, label %.thread

111:                                              ; preds = %11
  br i1 %cond.fr, label %112, label %.thread

112:                                              ; preds = %69, %86, %111
  br label %.thread
end_hunk_2
