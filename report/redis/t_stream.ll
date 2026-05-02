inline.NumInlined: 278
inline.NumDeleted: 15
begin_hunk_0_@xgroupCommand:bb.a

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.r = phi i32 [ %i.aj, %bb.h ], [ %i.m, %.lr.ph ] ; 2 uses
  %.0161251.us = phi i1 [ %.1162.us, %bb.h ], [ false, %.lr.ph ]
  %.0164250.us = phi i32 [ %.1165.us, %bb.h ], [ 5, %.lr.ph ] ; 4 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !204  ; 2 uses
  %i.t = sext i32 %.0164250.us to i64
end_hunk_0
begin_hunk_1_@xgroupCommand:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %.pre, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %.1165.us = phi i32 [ %i.ah, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %.1162.us = phi i1 [ %.0161251.us, %bb.f ], [ true, %bb.g ] ; 2 uses
  %i.ak = icmp slt i32 %.1165.us, %i.aj
  br i1 %i.ak, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !248

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not177, label %.critedge, label %.split.us
end_hunk_1
begin_hunk_2_@xgroupCommand:bb.a
  call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #20
  br label %.thread

._crit_edge:                                      ; preds = %bb.l, %bb.h, %bb.b
  %.0161.lcssa = phi i1 [ false, %bb.b ], [ %.1162.us, %bb.h ], [ false, %bb.l ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !174
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !204
end_hunk_2
begin_hunk_3_@xclaimCommand:bb.a

._crit_edge274:                                   ; preds = %bb.ab
  %.pre293 = load i64, ptr %4, align 8, !tbaa !50 ; 3 uses
  %6 = trunc nuw i32 %.1181 to i1                 ; 2 uses
  %i.dq = icmp eq i32 %.1185, 0                   ; 2 uses
  %i.dr = load i64, ptr %i.ar, align 8, !tbaa !50 ; 3 uses
  %i.ds = icmp ugt i64 %.pre293, %i.dr
end_hunk_3
