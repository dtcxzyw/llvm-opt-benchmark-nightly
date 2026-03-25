begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %min.iters.check24 = icmp ult i32 %1, 17
  %n.mod.vf27 = and i64 %38, 12
  %n.vec28 = and i64 %38, -16                     ; 4 uses
  %cmp.n37 = icmp eq i64 %38, %n.vec28
  %ind.end = or disjoint i64 %n.vec28, 1
  %min.epilog.iters.check41 = icmp eq i64 %n.mod.vf27, 0
  %n.vec44 = and i64 %38, -4                      ; 3 uses
  %39 = or disjoint i64 %n.vec44, 1
  %cmp.n53 = icmp eq i64 %38, %n.vec44
  br label %iter.check23

iter.check23:                                     ; preds = %PredictLine_C.exit50._crit_edge.us.i, %.lr.ph57.i
  %40 = phi i8 [ %41, %PredictLine_C.exit50._crit_edge.us.i ], [ %6, %.lr.ph57.i ]
  %.04456.us.pn.i = phi ptr [ %.04456.us.i, %PredictLine_C.exit50._crit_edge.us.i ], [ %4, %.lr.ph57.i ]
  %.055.us.pn.i = phi ptr [ %.055.us.i, %PredictLine_C.exit50._crit_edge.us.i ], [ %0, %.lr.ph57.i ] ; 4 uses
  %.04254.us.i = phi i32 [ %92, %PredictLine_C.exit50._crit_edge.us.i ], [ 1, %.lr.ph57.i ]
  %.055.us.i = getelementptr i8, ptr %.055.us.pn.i, i64 %31 ; 5 uses
  %.04456.us.i = getelementptr inbounds i8, ptr %.04456.us.pn.i, i64 %31 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %41 = load i8, ptr %.055.us.i, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %42 = sub i8 %41, %40
  store i8 %42, ptr %.04456.us.i, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  br i1 %min.iters.check21, label %PredictLine_C.exit50.us.i.preheader, label %vector.main.loop.iter.check25

vector.main.loop.iter.check25:                    ; preds = %iter.check23
  br i1 %min.iters.check24, label %vec.epilog.ph42, label %vector.body29

vector.body29:                                    ; preds = %vector.main.loop.iter.check25, %vector.body29
  %index30 = phi i64 [ %index.next35, %vector.body29 ], [ 0, %vector.main.loop.iter.check25 ] ; 2 uses
  %43 = or disjoint i64 %index30, 1               ; 3 uses
  %44 = getelementptr i8, ptr %.055.us.i, i64 %43 ; 2 uses
  %45 = getelementptr i8, ptr %44, i64 -1
  %wide.load31 = load <16 x i8>, ptr %45, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %46 = getelementptr i8, ptr %.055.us.pn.i, i64 %43 ; 2 uses
  %wide.load32 = load <16 x i8>, ptr %46, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %47 = getelementptr i8, ptr %46, i64 -1
  %wide.load33 = load <16 x i8>, ptr %47, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %48 = zext <16 x i8> %wide.load31 to <16 x i32>
  %49 = zext <16 x i8> %wide.load32 to <16 x i32>
  %50 = add nuw nsw <16 x i32> %49, %48
  %51 = zext <16 x i8> %wide.load33 to <16 x i32>
  %52 = sub nsw <16 x i32> %50, %51
  %53 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %52, <16 x i32> zeroinitializer)
  %54 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %53, <16 x i32> splat (i32 255))
  %wide.load34 = load <16 x i8>, ptr %44, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %55 = trunc nuw <16 x i32> %54 to <16 x i8>
  %56 = sub <16 x i8> %wide.load34, %55
  %57 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %43
  store <16 x i8> %56, ptr %57, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %index.next35 = add nuw i64 %index30, 16        ; 2 uses
  %58 = icmp eq i64 %index.next35, %n.vec28
  br i1 %58, label %middle.block36, label %vector.body29, !llvm.loop !166

middle.block36:                                   ; preds = %vector.body29
  br i1 %cmp.n37, label %PredictLine_C.exit50._crit_edge.us.i, label %vec.epilog.iter.check40

vec.epilog.iter.check40:                          ; preds = %middle.block36
  br i1 %min.epilog.iters.check41, label %PredictLine_C.exit50.us.i.preheader, label %vec.epilog.ph42, !prof !167

vec.epilog.ph42:                                  ; preds = %vector.main.loop.iter.check25, %vec.epilog.iter.check40
  %vec.epilog.resume.val38 = phi i64 [ %n.vec28, %vec.epilog.iter.check40 ], [ 0, %vector.main.loop.iter.check25 ]
  br label %vec.epilog.vector.body45

vec.epilog.vector.body45:                         ; preds = %vec.epilog.vector.body45, %vec.epilog.ph42
  %index46 = phi i64 [ %vec.epilog.resume.val38, %vec.epilog.ph42 ], [ %index.next51, %vec.epilog.vector.body45 ] ; 2 uses
  %offset.idx = or disjoint i64 %index46, 1       ; 3 uses
  %59 = getelementptr i8, ptr %.055.us.i, i64 %offset.idx ; 2 uses
  %60 = getelementptr i8, ptr %59, i64 -1
  %wide.load47 = load <4 x i8>, ptr %60, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %61 = getelementptr i8, ptr %.055.us.pn.i, i64 %offset.idx ; 2 uses
  %wide.load48 = load <4 x i8>, ptr %61, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %62 = getelementptr i8, ptr %61, i64 -1
  %wide.load49 = load <4 x i8>, ptr %62, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %63 = zext <4 x i8> %wide.load47 to <4 x i32>
  %64 = zext <4 x i8> %wide.load48 to <4 x i32>
  %65 = add nuw nsw <4 x i32> %64, %63
  %66 = zext <4 x i8> %wide.load49 to <4 x i32>
  %67 = sub nsw <4 x i32> %65, %66
  %68 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %67, <4 x i32> zeroinitializer)
  %69 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %68, <4 x i32> splat (i32 255))
  %wide.load50 = load <4 x i8>, ptr %59, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %70 = trunc nuw <4 x i32> %69 to <4 x i8>
  %71 = sub <4 x i8> %wide.load50, %70
  %72 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %offset.idx
  store <4 x i8> %71, ptr %72, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %73 = icmp eq i64 %index.next51, %n.vec44
  br i1 %73, label %vec.epilog.middle.block52, label %vec.epilog.vector.body45, !llvm.loop !168

vec.epilog.middle.block52:                        ; preds = %vec.epilog.vector.body45
  br i1 %cmp.n53, label %PredictLine_C.exit50._crit_edge.us.i, label %PredictLine_C.exit50.us.i.preheader

PredictLine_C.exit50.us.i.preheader:              ; preds = %iter.check23, %vec.epilog.iter.check40, %vec.epilog.middle.block52
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check23 ], [ %ind.end, %vec.epilog.iter.check40 ], [ %39, %vec.epilog.middle.block52 ]
  br label %PredictLine_C.exit50.us.i

PredictLine_C.exit50.us.i:                        ; preds = %PredictLine_C.exit50.us.i.preheader, %PredictLine_C.exit50.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %PredictLine_C.exit50.us.i ], [ %indvars.iv.i.ph, %PredictLine_C.exit50.us.i.preheader ] ; 4 uses
  %74 = getelementptr i8, ptr %.055.us.i, i64 %indvars.iv.i ; 2 uses
  %75 = getelementptr i8, ptr %74, i64 -1
  %76 = load i8, ptr %75, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %77 = getelementptr i8, ptr %.055.us.pn.i, i64 %indvars.iv.i ; 2 uses
  %78 = load i8, ptr %77, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %79 = getelementptr i8, ptr %77, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %81 = zext i8 %76 to i32
  %82 = zext i8 %78 to i32
  %83 = add nuw nsw i32 %82, %81
  %84 = zext i8 %80 to i32
  %85 = sub nsw i32 %83, %84
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 0)
  %87 = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %86, i32 255)
  %88 = load i8, ptr %74, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %89 = trunc nuw i32 %87 to i8
  %90 = sub i8 %88, %89
  %91 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %indvars.iv.i
  store i8 %90, ptr %91, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond60.not.i, label %PredictLine_C.exit50._crit_edge.us.i, label %PredictLine_C.exit50.us.i, !llvm.loop !169

PredictLine_C.exit50._crit_edge.us.i:             ; preds = %PredictLine_C.exit50.us.i, %vec.epilog.middle.block52, %middle.block36
  %92 = add nuw nsw i32 %.04254.us.i, 1           ; 2 uses
  %exitcond61.not.i = icmp eq i32 %92, %2
  br i1 %exitcond61.not.i, label %DoGradientFilter_C.exit, label %iter.check23, !llvm.loop !170

.lr.ph57.split.i:                                 ; preds = %.lr.ph57.split.i, %.lr.ph57.thread.i.new
  %93 = phi i8 [ %6, %.lr.ph57.thread.i.new ], [ %100, %.lr.ph57.split.i ]
  %.04456.i.pn = phi ptr [ %4, %.lr.ph57.thread.i.new ], [ %.04456.i.3, %.lr.ph57.split.i ]
  %.055.i.pn = phi ptr [ %0, %.lr.ph57.thread.i.new ], [ %.055.i.3, %.lr.ph57.split.i ]
  %niter = phi i32 [ 0, %.lr.ph57.thread.i.new ], [ %niter.next.3, %.lr.ph57.split.i ]
end_hunk_1
begin_hunk_2
  %.04456.i = getelementptr inbounds i8, ptr %.04456.i.pn, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %94 = load i8, ptr %.055.i, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %95 = sub i8 %94, %93
  store i8 %95, ptr %.04456.i, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  %.055.i.1 = getelementptr i8, ptr %.055.i, i64 %34 ; 2 uses
  %.04456.i.1 = getelementptr inbounds i8, ptr %.04456.i, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %96 = load i8, ptr %.055.i.1, align 1, !tbaa !9, !alias.scope !175, !noalias !176 ; 2 uses
  %97 = sub i8 %96, %94
  store i8 %97, ptr %.04456.i.1, align 1, !tbaa !9, !alias.scope !177, !noalias !178
  %.055.i.2 = getelementptr i8, ptr %.055.i.1, i64 %34 ; 2 uses
  %.04456.i.2 = getelementptr inbounds i8, ptr %.04456.i.1, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %98 = load i8, ptr %.055.i.2, align 1, !tbaa !9, !alias.scope !183, !noalias !184 ; 2 uses
  %99 = sub i8 %98, %96
  store i8 %99, ptr %.04456.i.2, align 1, !tbaa !9, !alias.scope !185, !noalias !186
  %.055.i.3 = getelementptr i8, ptr %.055.i.2, i64 %34 ; 3 uses
  %.04456.i.3 = getelementptr inbounds i8, ptr %.04456.i.2, i64 %34 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %100 = load i8, ptr %.055.i.3, align 1, !tbaa !9, !alias.scope !191, !noalias !192 ; 3 uses
  %101 = sub i8 %100, %98
  store i8 %101, ptr %.04456.i.3, align 1, !tbaa !9, !alias.scope !193, !noalias !194
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %DoGradientFilter_C.exit.loopexit55.unr-lcssa, label %.lr.ph57.split.i, !llvm.loop !170

DoGradientFilter_C.exit.loopexit55.unr-lcssa:     ; preds = %.lr.ph57.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %DoGradientFilter_C.exit, label %.lr.ph57.split.i.epil.preheader

.lr.ph57.split.i.epil.preheader:                  ; preds = %DoGradientFilter_C.exit.loopexit55.unr-lcssa, %.lr.ph57.thread.i
  %.epil.init = phi i8 [ %6, %.lr.ph57.thread.i ], [ %100, %DoGradientFilter_C.exit.loopexit55.unr-lcssa ]
  %.04456.i.pn.epil.init = phi ptr [ %4, %.lr.ph57.thread.i ], [ %.04456.i.3, %DoGradientFilter_C.exit.loopexit55.unr-lcssa ]
  %.055.i.pn.epil.init = phi ptr [ %0, %.lr.ph57.thread.i ], [ %.055.i.3, %DoGradientFilter_C.exit.loopexit55.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph57.split.i.epil

.lr.ph57.split.i.epil:                            ; preds = %.lr.ph57.split.i.epil, %.lr.ph57.split.i.epil.preheader
  %102 = phi i8 [ %103, %.lr.ph57.split.i.epil ], [ %.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %.04456.i.pn.epil = phi ptr [ %.04456.i.epil, %.lr.ph57.split.i.epil ], [ %.04456.i.pn.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %.055.i.pn.epil = phi ptr [ %.055.i.epil, %.lr.ph57.split.i.epil ], [ %.055.i.pn.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph57.split.i.epil ], [ 0, %.lr.ph57.split.i.epil.preheader ]
end_hunk_2
begin_hunk_3
  %.04456.i.epil = getelementptr inbounds i8, ptr %.04456.i.pn.epil, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %103 = load i8, ptr %.055.i.epil, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %104 = sub i8 %103, %102
  store i8 %104, ptr %.04456.i.epil, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %DoGradientFilter_C.exit, label %.lr.ph57.split.i.epil, !llvm.loop !195

DoGradientFilter_C.exit:                          ; preds = %DoGradientFilter_C.exit.loopexit55.unr-lcssa, %.lr.ph57.split.i.epil, %PredictLine_C.exit50._crit_edge.us.i, %PredictLine_C.exit.i, %PredictLine_C.exit.thread.i
  ret void
}

end_hunk_3
