begin_hunk_0
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %1, align 8, !tbaa !15
  %i.g = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  br label %._crit_edge.loopexit.i.a

.lr.ph.i:                                         ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1
  %i.i = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %2 = shl i64 %i.s, 4
  br label %._crit_edge.loopexit.i.a

._crit_edge.loopexit.i.a:                         ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %.sroa.4.0.copyload16 = phi float [ %.sroa.4.0.copyload, %._crit_edge ], [ %.sroa.4.0.copyload15, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %2, %._crit_edge.loopexit.i ] ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %.032.lcssa.i) #14 ; 5 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !15
  %i.l = add i64 %i.k, %.032.lcssa.i
  store i64 %i.l, ptr %1, align 8, !tbaa !15
  br i1 %i.g, label %.lr.ph41.i.preheader, label %generate_2D_segments.exit

.lr.ph41.i.preheader:                             ; preds = %._crit_edge.loopexit.i.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %3 = icmp ult i64 %i.b, 4
  br i1 %3, label %.lr.ph41.i.epil.preheader, label %._crit_edge.loopexit.i.new

._crit_edge.loopexit.i.new:                       ; preds = %.lr.ph41.i.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41.i

end_hunk_1
begin_hunk_2
  %i.s = add nsw i64 %.03236.i, %i.p              ; 2 uses
  %i.t = add nuw nsw i64 %.03335.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %._crit_edge.loopexit.i.new
  %.03039.i = phi i64 [ 0, %._crit_edge.loopexit.i.new ], [ %i.as, %.lr.ph41.i ] ; 5 uses
end_hunk_2
begin_hunk_3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.preheader, label %.lr.ph41.i.epil.preheader

.lr.ph41.i.epil.preheader:                        ; preds = %.preheader.i.preheader.unr-lcssa, %.lr.ph41.i.preheader
  %.03039.i.epil.init = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.as, %.preheader.i.preheader.unr-lcssa ]
  %.03138.i.epil.init = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.ar, %.preheader.i.preheader.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph41.i.epil
end_hunk_3
begin_hunk_4
bb.c:                                             ; preds = %bb.c, %.lr.ph43.i
  %.042.i = phi i64 [ 0, %.lr.ph43.i ], [ %i.bm, %bb.c ] ; 2 uses
  %i.bh = tail call float @urand() #15
  %i.bi = fmul float %.sroa.4.0.copyload16, %i.bh
  %i.bj = fdiv float %i.bi, %i.bf
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.042.i
end_hunk_4
begin_hunk_5
  %exitcond11.not = icmp eq i64 %i.bm, %i.bc
  br i1 %exitcond11.not, label %._crit_edge44.i, label %bb.c

generate_2D_segments.exit:                        ; preds = %._crit_edge44.i, %._crit_edge.loopexit.i.a
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
end_hunk_5
begin_hunk_6
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge.loopexit.a

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_6
begin_hunk_7
  %i.e = sitofp i64 %.sroa.3.0.copyload to double
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %3 = shl i64 %i.o, 4
  br label %._crit_edge.loopexit.a

._crit_edge.loopexit.a:                           ; preds = %._crit_edge.loopexit, %bb.a
  %.032.lcssa = phi i64 [ 0, %bb.a ], [ %3, %._crit_edge.loopexit ] ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %.032.lcssa) #14 ; 5 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !15
  %i.h = add i64 %i.g, %.032.lcssa
  store i64 %i.h, ptr %2, align 8, !tbaa !15
  br i1 %i.c, label %.lr.ph41.preheader, label %._crit_edge46

.lr.ph41.preheader:                               ; preds = %._crit_edge.loopexit.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %4 = icmp ult i64 %i.b, 4
  br i1 %4, label %.lr.ph41.epil.preheader, label %._crit_edge.loopexit.new

._crit_edge.loopexit.new:                         ; preds = %.lr.ph41.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %.lr.ph41

end_hunk_7
begin_hunk_8
  %i.o = add nsw i64 %.03236, %i.l                ; 2 uses
  %i.p = add nuw nsw i64 %.03335, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b

.preheader.lr.ph.unr-lcssa:                       ; preds = %.lr.ph41
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.lr.ph, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %.preheader.lr.ph.unr-lcssa, %.lr.ph41.preheader
  %.03039.epil.init = phi i64 [ 0, %.lr.ph41.preheader ], [ %i.ax, %.preheader.lr.ph.unr-lcssa ]
  %.03138.epil.init = phi i64 [ 0, %.lr.ph41.preheader ], [ %i.aw, %.preheader.lr.ph.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph41.epil
end_hunk_8
begin_hunk_9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %bb.c

._crit_edge46:                                    ; preds = %._crit_edge44, %._crit_edge.loopexit.a
  ret void

._crit_edge44:                                    ; preds = %bb.c, %.preheader
end_hunk_9
begin_hunk_10
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 5 uses
  %i.l = add i64 %i.j, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = mul i64 %i.n, 40                         ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #14 ; 3 uses
  %i.q = add i64 %i.o, %i.l
  %i.r = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge84

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
end_hunk_10
begin_hunk_11
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader78.lr.ph.unr-lcssa, label %.lr.ph

._crit_edge84:                                    ; preds = %._crit_edge.us, %.preheader78.lr.ph, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %.fr125 = freeze i32 %i.bi                      ; 6 uses
end_hunk_11
begin_hunk_12
  %i.bm = tail call noalias ptr @malloc(i64 noundef %i.bl) #14 ; 8 uses
  %i.bn = add i64 %i.bl, %i.q
  store i64 %i.bn, ptr %2, align 8, !tbaa !15
  br i1 %i.r, label %.preheader77.lr.ph, label %._crit_edge112

.preheader77.lr.ph:                               ; preds = %._crit_edge84
  %3 = icmp sgt i32 %i.h, 0
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %5 = load i32, ptr %4, align 8                  ; 4 uses
end_hunk_12
begin_hunk_13
  %or.cond = select i1 %3, i1 %8, i1 false
  br i1 %or.cond, label %.preheader77.lr.ph.split.us.split.us, label %._crit_edge112

.preheader77.lr.ph.split.us.split.us:             ; preds = %.preheader77.lr.ph
  %i.bo = icmp sgt i32 %.fr125, 0
  %i.bp = lshr i32 %i.h, 1
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
end_hunk_13
begin_hunk_14
  %exitcond155.not = icmp eq i64 %i.gq, %i.b
  br i1 %exitcond155.not, label %._crit_edge112, label %.preheader77.us.us

._crit_edge112:                                   ; preds = %._crit_edge.split.us.us.us.split, %._crit_edge.split.us.us.us.split.us.us.split.us.us, %.preheader77.lr.ph, %._crit_edge84
  ret ptr %i.d
}

end_hunk_14
