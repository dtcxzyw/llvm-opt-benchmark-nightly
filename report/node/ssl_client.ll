begin_hunk_0
  br label %mbedtls_ssl_get_groups.exit

mbedtls_ssl_get_groups.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 5 uses
  store i64 0, ptr %4, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 231, ptr noundef nonnull @.str.22) #8
  %i.h = icmp ule ptr %1, %2
end_hunk_0
begin_hunk_1

.preheader:                                       ; preds = %bb.d
  %.051.ptr81 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.n = load i16, ptr %.0.i, align 2, !tbaa !78  ; 4 uses
  %.not5782 = icmp eq i16 %i.n, 0
  br i1 %.not5782, label %._crit_edge.thread, label %select.unfold.us.us

select.unfold.us.us:                              ; preds = %.preheader
  %.not57.us.us = icmp eq i32 %3, 2
  br i1 %.not57.us.us, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %select.unfold.us.us, %bb.f
  %i.o = phi i16 [ %i.ag, %bb.f ], [ %i.n, %select.unfold.us.us ]
  %.051.ptr85.us = phi ptr [ %.051.ptr.us, %bb.f ], [ %.051.ptr81, %select.unfold.us.us ] ; 3 uses
  %.04784.us = phi ptr [ %i.af, %bb.f ], [ %.0.i, %select.unfold.us.us ] ; 5 uses
  %.051.idx83.us = phi i64 [ %.253.idx.us, %bb.f ], [ 6, %select.unfold.us.us ] ; 2 uses
  %i.p = zext i16 %i.o to i32
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 250, ptr noundef nonnull @.str.23, i32 noundef %i.p) #8
  %i.q = load i16, ptr %.04784.us, align 2, !tbaa !78 ; 3 uses
end_hunk_1
begin_hunk_2
  %.not57.us = icmp eq i16 %i.ag, 0
  br i1 %.not57.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !79

.lr.ph.split:                                     ; preds = %select.unfold.us.us
  %.not59 = icmp samesign ult i32 %3, 2
  br i1 %.not59, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %select.unfold.us90
end_hunk_2
begin_hunk_3
  %i.ca = icmp eq i64 %.051.idx.lcssa, 6
  br i1 %i.ca, label %._crit_edge.thread, label %bb.m

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @.str.25) #8
  br label %.critedge

end_hunk_3
