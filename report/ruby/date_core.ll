inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@date_strftime_internal:bb.a
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44   ; 3 uses
  %i.w = icmp eq i64 %2, 0
  %i.x = and i64 %2, 7
  %i.y = icmp ne i64 %i.x, 0
end_hunk_0
begin_hunk_1_@date_strftime_internal:bb.a
  br i1 %i.au, label %.lr.ph13, label %._crit_edge

.lr.ph13:                                         ; preds = %bb.i, %.critedge.thread
  %.03512 = phi ptr [ %.1.lcssa31, %.critedge.thread ], [ %i.t, %bb.i ] ; 3 uses
  %i.av = call fastcc i64 @date_strftime_alloc(ptr noundef %i.c, ptr noundef %.03512, ptr noundef %4)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !86  ; 3 uses
  %i.ax = call i64 @rb_str_cat(i64 noundef %i.at, ptr noundef %i.aw, i64 noundef %i.av) #20 ; 0 uses
end_hunk_1
begin_hunk_2_@date_strftime_internal:bb.a

bb.k:                                             ; preds = %bb.j, %.lr.ph13
  %i.ba = icmp ult ptr %i.az, %i.as
  br i1 %i.ba, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.19 = phi ptr [ %i.bc, %bb.l ], [ %i.az, %bb.k ] ; 3 uses
  %i.bb = load i8, ptr %.19, align 1, !tbaa !41
  %.not43 = icmp eq i8 %i.bb, 0
  br i1 %.not43, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.19, i64 1 ; 3 uses
  %i.bd = icmp ult ptr %i.bc, %i.as
  br i1 %i.bd, label %.lr.ph, label %.critedge, !llvm.loop !92

.critedge:                                        ; preds = %.lr.ph, %bb.l
  %.1.lcssa = phi ptr [ %i.bc, %bb.l ], [ %.19, %.lr.ph ] ; 4 uses
  %i.be = icmp ugt ptr %.1.lcssa, %i.az
  br i1 %i.be, label %bb.m, label %.critedge.thread

end_hunk_2
