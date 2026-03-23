begin_hunk_0
  %19 = load i64, ptr %18, align 8, !tbaa !174    ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %21 = zext i32 %13 to i64                       ; 8 uses
  br label %22

22:                                               ; preds = %9, %.loopexit133
end_hunk_0
begin_hunk_1
  br i1 %56, label %.lr.ph146, label %.loopexit133

.lr.ph146:                                        ; preds = %55
  switch i32 %15, label %.lr.ph146.split [
    i32 1, label %.preheader.us.preheader
    i32 2, label %.preheader127.us.preheader
    i32 3, label %.preheader129.us.preheader
end_hunk_1
begin_hunk_2

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %24 = load i32, ptr %23, align 4, !tbaa !119    ; 4 uses
  %25 = and i32 %24, 1
  %26 = and i32 %24, 5
  %or.cond.not = icmp eq i32 %26, 1
  br i1 %or.cond.not, label %27, label %28

end_hunk_2
begin_hunk_3

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge231, %128, %.preheader, %47
  %178 = add nuw nsw i32 %.0234, 1                ; 2 uses
  %exitcond240.not = icmp eq i32 %178, %.0173
  br i1 %exitcond240.not, label %.loopexit211, label %44, !llvm.loop !207

179:                                              ; preds = %33
  %180 = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_3
begin_hunk_4
  %182 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %183 = load i64, ptr %182, align 8, !tbaa !174
  %184 = sdiv i64 %183, 2                         ; 2 uses
  %185 = trunc i32 %24 to i1
  %186 = add nuw nsw i32 %25, 1                   ; 7 uses
  %187 = and i32 %24, 33
  %or.cond208.not = icmp eq i32 %187, 33          ; 2 uses
  %188 = mul i32 %186, %10
  %189 = zext i32 %188 to i64                     ; 4 uses
end_hunk_4
begin_hunk_5

.loopexit212.us:                                  ; preds = %._crit_edge.split.us.us.us, %226, %196
  %228 = add nuw nsw i32 %.1219.us, 1             ; 2 uses
  %exitcond239.not = icmp eq i32 %228, %.0173
  br i1 %exitcond239.not, label %.loopexit211, label %.split.us, !llvm.loop !208

.lr.ph218.us:                                     ; preds = %226
  %229 = zext nneg i32 %.0179.us to i64
  %.pre241 = load ptr, ptr %190, align 8, !tbaa !175
  %230 = icmp samesign ult i64 %.0180.us, %189
  br label %231

231:                                              ; preds = %._crit_edge.split.us.us.us, %.lr.ph218.us
  %232 = phi ptr [ %.pre241, %.lr.ph218.us ], [ %237, %._crit_edge.split.us.us.us ]
  %.1177216.us.us = phi i32 [ %.0176.us, %.lr.ph218.us ], [ %239, %._crit_edge.split.us.us.us ] ; 2 uses
  %233 = zext i32 %.1177216.us.us to i64
  %234 = mul nsw i64 %184, %233
end_hunk_5
