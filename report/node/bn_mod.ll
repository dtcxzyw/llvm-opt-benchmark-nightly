begin_hunk_0
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14   ; 9 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.e = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.c) #5
end_hunk_0
begin_hunk_1
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi ptr [ %i.i, %bb.c ], [ %i.a, %bb.b ] ; 9 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  %.067. = select i1 %.not, ptr %.067, ptr %i.k
  %i.l = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not76 = icmp eq ptr %i.l, null
  %i.m = select i1 %.not76, ptr %.067, ptr %i.l
  %.not87 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_1
begin_hunk_2
  %exitcond.not = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.070.lcssa = phi i64 [ 0, %bb.d ], [ %i.ao, %bb.e ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !15
  %i.ay = call i64 @bn_sub_words(ptr noundef %i.aw, ptr noundef nonnull %.067, ptr noundef %i.ax, i32 noundef %i.c) #5
  %i.az = sub i64 %.070.lcssa, %i.ay              ; 4 uses
  br i1 %.not87, label %._crit_edge86, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge
  %4 = xor i64 %i.az, -1                          ; 3 uses
  %5 = icmp eq i32 %i.c, 1
  br i1 %5, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %.lr.ph85
  %unroll_iter = and i64 %i.d, -2
  br label %bb.f

end_hunk_2
begin_hunk_3
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge86.loopexit.unr-lcssa, label %bb.f, !llvm.loop !21

._crit_edge86.loopexit.unr-lcssa:                 ; preds = %bb.f
  %i.bq = and i32 %i.c, 1
  %lcmp.mod.not = icmp eq i32 %i.bq, 0
  br i1 %lcmp.mod.not, label %._crit_edge86, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge86.loopexit.unr-lcssa, %.lr.ph85
  %.183.epil.init = phi i64 [ 0, %.lr.ph85 ], [ %i.bp, %._crit_edge86.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.067, i64 %.183.epil.init ; 2 uses
end_hunk_3
begin_hunk_4
  store volatile i64 0, ptr %i.br, align 8, !tbaa !17
  br label %._crit_edge86

._crit_edge86:                                    ; preds = %.epil.preheader, %._crit_edge86.loopexit.unr-lcssa, %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.by, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_4
