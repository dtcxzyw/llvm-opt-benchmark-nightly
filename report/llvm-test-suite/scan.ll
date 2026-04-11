inline.NumInlined: 16
inline.NumDeleted: 2
begin_hunk_0_@yylex:bb.a
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.preheader, %bb.af
  %.277.ph664 = phi ptr [ %.378, %bb.af ], [ %.277.ph, %.loopexit.preheader ] ; 2 uses
  %.073.ph = phi ptr [ %.174, %bb.af ], [ %i.eb, %.loopexit.preheader ] ; 4 uses
  %0 = load i8, ptr %.277.ph664, align 1, !tbaa !17 ; 2 uses
  switch i8 %0, label %bb.ae [
    i8 0, label %bb.ag
    i8 92, label %.loopexit
  ]

.loopexit:                                        ; preds = %.loopexit.outer
  %1 = load i32, ptr @line_no, align 4, !tbaa !4
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @line_no, align 4, !tbaa !4
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit.outer
  %i.ef = getelementptr inbounds nuw i8, ptr %.073.ph, i64 1
  store i8 %0, ptr %.073.ph, align 1, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit
  %.pn = phi i64 [ 2, %.loopexit ], [ 1, %bb.ae ]
  %.174 = phi ptr [ %.073.ph, %.loopexit ], [ %i.ef, %bb.ae ]
  %.378 = getelementptr inbounds nuw i8, ptr %.277.ph664, i64 %.pn
  br label %.loopexit.outer, !llvm.loop !33

bb.ag:                                            ; preds = %.loopexit.outer
  store i8 0, ptr %.073.ph, align 1, !tbaa !17
  %i.eg = load ptr, ptr @yytext, align 8, !tbaa !21
  %i.eh = tail call ptr @strcopyof(ptr noundef %i.eg) #14
end_hunk_0
