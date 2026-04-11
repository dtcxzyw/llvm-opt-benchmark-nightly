inline.NumInlined: 16
inline.NumDeleted: 2
begin_hunk_0_@yylex:bb.a
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.preheader, %bb.af
  %.277.ph664 = phi ptr [ %.277.ph, %.loopexit.preheader ], [ %3, %bb.af ]
  %.073.ph = phi ptr [ %i.eb, %.loopexit.preheader ], [ %4, %bb.af ] ; 3 uses
  %line_no.promoted1123 = load i32, ptr @line_no, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %bb.ae
  %0 = phi i32 [ %2, %bb.ae ], [ %line_no.promoted1123, %.loopexit.outer ]
  %.277 = phi ptr [ %i.ef, %bb.ae ], [ %.277.ph664, %.loopexit.outer ] ; 3 uses
  %1 = load i8, ptr %.277, align 1, !tbaa !17     ; 2 uses
  switch i8 %1, label %bb.af [
    i8 0, label %bb.ag
    i8 92, label %bb.ae
  ]

bb.ae:                                            ; preds = %.loopexit
  %i.ef = getelementptr inbounds nuw i8, ptr %.277, i64 2
  %2 = add nsw i32 %0, 1                          ; 2 uses
  store i32 %2, ptr @line_no, align 4, !tbaa !4
  br label %.loopexit, !llvm.loop !33

bb.af:                                            ; preds = %.loopexit
  %3 = getelementptr inbounds nuw i8, ptr %.277, i64 1
  %4 = getelementptr inbounds nuw i8, ptr %.073.ph, i64 1
  store i8 %1, ptr %.073.ph, align 1, !tbaa !17
  br label %.loopexit.outer, !llvm.loop !33

bb.ag:                                            ; preds = %.loopexit
  store i8 0, ptr %.073.ph, align 1, !tbaa !17
  %i.eg = load ptr, ptr @yytext, align 8, !tbaa !21
  %i.eh = tail call ptr @strcopyof(ptr noundef %i.eg) #14
end_hunk_0
