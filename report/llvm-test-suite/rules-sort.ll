begin_hunk_0
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val52 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add nsw i32 %.val52, -1                  ; 2 uses
  %.not76 = icmp sgt i32 %.val52, 0
  br i1 %.not76, label %.lr.ph, label %list_Delete.exit75

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val55 = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.d = load i32, ptr @fol_NOT, align 4          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %.03877 = phi i32 [ 0, %.lr.ph ], [ %.139, %clause_GetLiteralAtom.exit ] ; 2 uses
  %i.e = zext nneg i32 %.03877 to i64             ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
end_hunk_0
begin_hunk_1
  br i1 %i.m, label %list_Delete.exit75, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = zext nneg i32 %.139 to i64               ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val55, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %.val1.i56 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val5.val.i.i57.a = load i32, ptr %.val1.i56, align 8
  %.not.i.i58 = icmp eq i32 %.val5.val.i.i57.a, %i.d
  br i1 %.not.i.i58, label %bb.e, label %clause_GetLiteralAtom.exit62

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2

.lr.ph84:                                         ; preds = %clause_GetLiteralAtom.exit62
  %i.x = getelementptr i8, ptr %.0.i.i59, i64 16
  %sext = sext i32 %i.b to i64
  %.pre87 = load i32, ptr @fol_NOT, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph84, %bb.i
  %i.y = phi i32 [ %.pre87, %.lr.ph84 ], [ %i.al, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ %i.e, %.lr.ph84 ], [ %indvars.iv.next, %bb.i ]
  %.04182 = phi ptr [ %i.v, %.lr.ph84 ], [ %.142, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %.val53 = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv.next
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
end_hunk_2
begin_hunk_3
bb.i:                                             ; preds = %clause_GetLiteralAtom.exit69, %bb.h
  %i.al = phi i32 [ %.pre, %bb.h ], [ %i.y, %clause_GetLiteralAtom.exit69 ]
  %.142 = phi ptr [ %i.aj, %bb.h ], [ %.04182, %clause_GetLiteralAtom.exit69 ] ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %sext
  br i1 %6, label %bb.f, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit62
  %.041.lcssa = phi ptr [ %i.v, %clause_GetLiteralAtom.exit62 ], [ %.142, %bb.i ] ; 5 uses
end_hunk_3
begin_hunk_4
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val75 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = add nsw i32 %.val75, -1                  ; 2 uses
  %.not109 = icmp sgt i32 %.val75, 0
  br i1 %.not109, label %.lr.ph111, label %list_Delete.exit106

.lr.ph111:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %i.e = getelementptr i8, ptr %0, i64 72
  br label %bb.b
end_hunk_4
begin_hunk_5
bb.b:                                             ; preds = %.lr.ph111, %.loopexit
  %.055110 = phi i32 [ 0, %.lr.ph111 ], [ %spec.select66, %.loopexit ] ; 3 uses
  %.val79 = load ptr, ptr %i.c, align 8
  %i.f = zext nneg i32 %.055110 to i64            ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 24
end_hunk_5
begin_hunk_6

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %spec.select66135138 = phi i32 [ %spec.select66, %.critedge ], [ %.055110, %bb.d ] ; 2 uses
  %.val77 = load ptr, ptr %i.c, align 8
  %i.af = zext nneg i32 %spec.select66135138 to i64 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val77, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
end_hunk_6
begin_hunk_7
  br i1 %.not59.not115, label %.lr.ph118.preheader, label %._crit_edge

.lr.ph118.preheader:                              ; preds = %clause_GetLiteralAtom.exit93
  %sext = sext i32 %i.b to i64
  %.pre126 = load i32, ptr @fol_NOT, align 4
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %bb.i
  %i.ar = phi i32 [ %.pre126, %.lr.ph118.preheader ], [ %i.bc, %bb.i ] ; 2 uses
  %indvars.iv123 = phi i64 [ %i.f, %.lr.ph118.preheader ], [ %indvars.iv.next124, %bb.i ]
  %.051116 = phi ptr [ %i.ap, %.lr.ph118.preheader ], [ %.152, %bb.i ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 4 uses
  %.val76 = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val76, i64 %indvars.iv.next124
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 24
end_hunk_7
begin_hunk_8
bb.i:                                             ; preds = %bb.h, %clause_GetLiteralAtom.exit100
  %i.bc = phi i32 [ %.pre, %bb.h ], [ %i.ar, %clause_GetLiteralAtom.exit100 ]
  %.152 = phi ptr [ %i.ba, %bb.h ], [ %.051116, %clause_GetLiteralAtom.exit100 ] ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next124, %sext
  br i1 %6, label %.lr.ph118, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.i, %clause_GetLiteralAtom.exit93
  %.051.lcssa = phi ptr [ %i.ap, %clause_GetLiteralAtom.exit93 ], [ %.152, %bb.i ] ; 5 uses
end_hunk_8
