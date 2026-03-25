begin_hunk_0
inline.NumInlined: 15
inline.NumDeleted: 6
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %min.iters.check24 = icmp ult i32 %1, 17
  %n.mod.vf27 = and i64 %38, 12
  %n.vec28 = and i64 %38, -16                     ; 4 uses
  %39 = or disjoint i64 %n.vec28, 1
  %cmp.n37 = icmp eq i64 %38, %n.vec28
  %min.epilog.iters.check42 = icmp eq i64 %n.mod.vf27, 0
  %n.vec45 = and i64 %38, -4                      ; 3 uses
  %40 = or disjoint i64 %n.vec45, 1
  %cmp.n54 = icmp eq i64 %38, %n.vec45
  br label %iter.check23

iter.check23:                                     ; preds = %PredictLine_C.exit50._crit_edge.us.i, %.lr.ph57.i
  %41 = phi i8 [ %42, %PredictLine_C.exit50._crit_edge.us.i ], [ %6, %.lr.ph57.i ]
  %.04456.us.pn.i = phi ptr [ %.04456.us.i, %PredictLine_C.exit50._crit_edge.us.i ], [ %4, %.lr.ph57.i ]
  %.055.us.pn.i = phi ptr [ %.055.us.i, %PredictLine_C.exit50._crit_edge.us.i ], [ %0, %.lr.ph57.i ] ; 4 uses
  %.04254.us.i = phi i32 [ %93, %PredictLine_C.exit50._crit_edge.us.i ], [ 1, %.lr.ph57.i ]
  %.055.us.i = getelementptr i8, ptr %.055.us.pn.i, i64 %31 ; 5 uses
  %.04456.us.i = getelementptr inbounds i8, ptr %.04456.us.pn.i, i64 %31 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %42 = load i8, ptr %.055.us.i, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %43 = sub i8 %42, %41
  store i8 %43, ptr %.04456.us.i, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  br i1 %min.iters.check21, label %PredictLine_C.exit50.us.i.preheader, label %vector.main.loop.iter.check25

vector.main.loop.iter.check25:                    ; preds = %iter.check23
  br i1 %min.iters.check24, label %vec.epilog.ph43, label %vector.body29

vector.body29:                                    ; preds = %vector.main.loop.iter.check25, %vector.body29
  %index30 = phi i64 [ %index.next35, %vector.body29 ], [ 0, %vector.main.loop.iter.check25 ] ; 2 uses
  %44 = or disjoint i64 %index30, 1               ; 3 uses
  %45 = getelementptr i8, ptr %.055.us.i, i64 %44 ; 2 uses
  %46 = getelementptr i8, ptr %45, i64 -1
  %wide.load31 = load <16 x i8>, ptr %46, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %47 = getelementptr i8, ptr %.055.us.pn.i, i64 %44 ; 2 uses
  %wide.load32 = load <16 x i8>, ptr %47, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %48 = getelementptr i8, ptr %47, i64 -1
  %wide.load33 = load <16 x i8>, ptr %48, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %49 = zext <16 x i8> %wide.load31 to <16 x i32>
  %50 = zext <16 x i8> %wide.load32 to <16 x i32>
  %51 = add nuw nsw <16 x i32> %50, %49
  %52 = zext <16 x i8> %wide.load33 to <16 x i32>
  %53 = sub nsw <16 x i32> %51, %52
  %54 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %53, <16 x i32> zeroinitializer)
  %55 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %54, <16 x i32> splat (i32 255))
  %wide.load34 = load <16 x i8>, ptr %45, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %56 = trunc nuw <16 x i32> %55 to <16 x i8>
  %57 = sub <16 x i8> %wide.load34, %56
  %58 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %44
  store <16 x i8> %57, ptr %58, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %index.next35 = add nuw i64 %index30, 16        ; 2 uses
  %59 = icmp eq i64 %index.next35, %n.vec28
  br i1 %59, label %middle.block36, label %vector.body29, !llvm.loop !166

middle.block36:                                   ; preds = %vector.body29
  br i1 %cmp.n37, label %PredictLine_C.exit50._crit_edge.us.i, label %vec.epilog.iter.check41

vec.epilog.iter.check41:                          ; preds = %middle.block36
  br i1 %min.epilog.iters.check42, label %PredictLine_C.exit50.us.i.preheader, label %vec.epilog.ph43, !prof !167

vec.epilog.ph43:                                  ; preds = %vector.main.loop.iter.check25, %vec.epilog.iter.check41
  %vec.epilog.resume.val38 = phi i64 [ %n.vec28, %vec.epilog.iter.check41 ], [ 0, %vector.main.loop.iter.check25 ]
  br label %vec.epilog.vector.body46

vec.epilog.vector.body46:                         ; preds = %vec.epilog.vector.body46, %vec.epilog.ph43
  %index47 = phi i64 [ %vec.epilog.resume.val38, %vec.epilog.ph43 ], [ %index.next52, %vec.epilog.vector.body46 ] ; 2 uses
  %offset.idx = or disjoint i64 %index47, 1       ; 3 uses
  %60 = getelementptr i8, ptr %.055.us.i, i64 %offset.idx ; 2 uses
  %61 = getelementptr i8, ptr %60, i64 -1
  %wide.load48 = load <4 x i8>, ptr %61, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %62 = getelementptr i8, ptr %.055.us.pn.i, i64 %offset.idx ; 2 uses
  %wide.load49 = load <4 x i8>, ptr %62, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %63 = getelementptr i8, ptr %62, i64 -1
  %wide.load50 = load <4 x i8>, ptr %63, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %64 = zext <4 x i8> %wide.load48 to <4 x i32>
  %65 = zext <4 x i8> %wide.load49 to <4 x i32>
  %66 = add nuw nsw <4 x i32> %65, %64
  %67 = zext <4 x i8> %wide.load50 to <4 x i32>
  %68 = sub nsw <4 x i32> %66, %67
  %69 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %68, <4 x i32> zeroinitializer)
  %70 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %69, <4 x i32> splat (i32 255))
  %wide.load51 = load <4 x i8>, ptr %60, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %71 = trunc nuw <4 x i32> %70 to <4 x i8>
  %72 = sub <4 x i8> %wide.load51, %71
  %73 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %offset.idx
  store <4 x i8> %72, ptr %73, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %index.next52 = add nuw i64 %index47, 4         ; 2 uses
  %74 = icmp eq i64 %index.next52, %n.vec45
  br i1 %74, label %vec.epilog.middle.block53, label %vec.epilog.vector.body46, !llvm.loop !168

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body46
  br i1 %cmp.n54, label %PredictLine_C.exit50._crit_edge.us.i, label %PredictLine_C.exit50.us.i.preheader

PredictLine_C.exit50.us.i.preheader:              ; preds = %iter.check23, %vec.epilog.iter.check41, %vec.epilog.middle.block53
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check23 ], [ %39, %vec.epilog.iter.check41 ], [ %40, %vec.epilog.middle.block53 ]
  br label %PredictLine_C.exit50.us.i

PredictLine_C.exit50.us.i:                        ; preds = %PredictLine_C.exit50.us.i.preheader, %PredictLine_C.exit50.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %PredictLine_C.exit50.us.i ], [ %indvars.iv.i.ph, %PredictLine_C.exit50.us.i.preheader ] ; 4 uses
  %75 = getelementptr i8, ptr %.055.us.i, i64 %indvars.iv.i ; 2 uses
  %76 = getelementptr i8, ptr %75, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %78 = getelementptr i8, ptr %.055.us.pn.i, i64 %indvars.iv.i ; 2 uses
  %79 = load i8, ptr %78, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %80 = getelementptr i8, ptr %78, i64 -1
  %81 = load i8, ptr %80, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %82 = zext i8 %77 to i32
  %83 = zext i8 %79 to i32
  %84 = add nuw nsw i32 %83, %82
  %85 = zext i8 %81 to i32
  %86 = sub nsw i32 %84, %85
  %87 = tail call i32 @llvm.smax.i32(i32 %86, i32 0)
  %88 = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %87, i32 255)
  %89 = load i8, ptr %75, align 1, !tbaa !9, !alias.scope !135, !noalias !138
  %90 = trunc nuw i32 %88 to i8
  %91 = sub i8 %89, %90
  %92 = getelementptr inbounds nuw i8, ptr %.04456.us.i, i64 %indvars.iv.i
  store i8 %91, ptr %92, align 1, !tbaa !9, !alias.scope !138, !noalias !135
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond60.not.i, label %PredictLine_C.exit50._crit_edge.us.i, label %PredictLine_C.exit50.us.i, !llvm.loop !169

PredictLine_C.exit50._crit_edge.us.i:             ; preds = %PredictLine_C.exit50.us.i, %vec.epilog.middle.block53, %middle.block36
  %93 = add nuw nsw i32 %.04254.us.i, 1           ; 2 uses
  %exitcond61.not.i = icmp eq i32 %93, %2
  br i1 %exitcond61.not.i, label %DoGradientFilter_C.exit, label %iter.check23, !llvm.loop !170

.lr.ph57.split.i:                                 ; preds = %.lr.ph57.split.i, %.lr.ph57.thread.i.new
  %94 = phi i8 [ %6, %.lr.ph57.thread.i.new ], [ %101, %.lr.ph57.split.i ]
  %.04456.i.pn = phi ptr [ %4, %.lr.ph57.thread.i.new ], [ %.04456.i.3, %.lr.ph57.split.i ]
  %.055.i.pn = phi ptr [ %0, %.lr.ph57.thread.i.new ], [ %.055.i.3, %.lr.ph57.split.i ]
  %niter = phi i32 [ 0, %.lr.ph57.thread.i.new ], [ %niter.next.3, %.lr.ph57.split.i ]
end_hunk_1
begin_hunk_2
  %.04456.i = getelementptr inbounds i8, ptr %.04456.i.pn, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %95 = load i8, ptr %.055.i, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %96 = sub i8 %95, %94
  store i8 %96, ptr %.04456.i, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  %.055.i.1 = getelementptr i8, ptr %.055.i, i64 %34 ; 2 uses
  %.04456.i.1 = getelementptr inbounds i8, ptr %.04456.i, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %97 = load i8, ptr %.055.i.1, align 1, !tbaa !9, !alias.scope !175, !noalias !176 ; 2 uses
  %98 = sub i8 %97, %95
  store i8 %98, ptr %.04456.i.1, align 1, !tbaa !9, !alias.scope !177, !noalias !178
  %.055.i.2 = getelementptr i8, ptr %.055.i.1, i64 %34 ; 2 uses
  %.04456.i.2 = getelementptr inbounds i8, ptr %.04456.i.1, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %99 = load i8, ptr %.055.i.2, align 1, !tbaa !9, !alias.scope !183, !noalias !184 ; 2 uses
  %100 = sub i8 %99, %97
  store i8 %100, ptr %.04456.i.2, align 1, !tbaa !9, !alias.scope !185, !noalias !186
  %.055.i.3 = getelementptr i8, ptr %.055.i.2, i64 %34 ; 3 uses
  %.04456.i.3 = getelementptr inbounds i8, ptr %.04456.i.2, i64 %34 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %101 = load i8, ptr %.055.i.3, align 1, !tbaa !9, !alias.scope !191, !noalias !192 ; 3 uses
  %102 = sub i8 %101, %99
  store i8 %102, ptr %.04456.i.3, align 1, !tbaa !9, !alias.scope !193, !noalias !194
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %DoGradientFilter_C.exit.loopexit56.unr-lcssa, label %.lr.ph57.split.i, !llvm.loop !170

DoGradientFilter_C.exit.loopexit56.unr-lcssa:     ; preds = %.lr.ph57.split.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %DoGradientFilter_C.exit, label %.lr.ph57.split.i.epil.preheader

.lr.ph57.split.i.epil.preheader:                  ; preds = %DoGradientFilter_C.exit.loopexit56.unr-lcssa, %.lr.ph57.thread.i
  %.epil.init = phi i8 [ %6, %.lr.ph57.thread.i ], [ %101, %DoGradientFilter_C.exit.loopexit56.unr-lcssa ]
  %.04456.i.pn.epil.init = phi ptr [ %4, %.lr.ph57.thread.i ], [ %.04456.i.3, %DoGradientFilter_C.exit.loopexit56.unr-lcssa ]
  %.055.i.pn.epil.init = phi ptr [ %0, %.lr.ph57.thread.i ], [ %.055.i.3, %DoGradientFilter_C.exit.loopexit56.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph57.split.i.epil

.lr.ph57.split.i.epil:                            ; preds = %.lr.ph57.split.i.epil, %.lr.ph57.split.i.epil.preheader
  %103 = phi i8 [ %104, %.lr.ph57.split.i.epil ], [ %.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %.04456.i.pn.epil = phi ptr [ %.04456.i.epil, %.lr.ph57.split.i.epil ], [ %.04456.i.pn.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %.055.i.pn.epil = phi ptr [ %.055.i.epil, %.lr.ph57.split.i.epil ], [ %.055.i.pn.epil.init, %.lr.ph57.split.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph57.split.i.epil ], [ 0, %.lr.ph57.split.i.epil.preheader ]
end_hunk_2
begin_hunk_3
  %.04456.i.epil = getelementptr inbounds i8, ptr %.04456.i.pn.epil, i64 %34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %104 = load i8, ptr %.055.i.epil, align 1, !tbaa !9, !alias.scope !161, !noalias !162 ; 2 uses
  %105 = sub i8 %104, %103
  store i8 %105, ptr %.04456.i.epil, align 1, !tbaa !9, !alias.scope !164, !noalias !165
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %DoGradientFilter_C.exit, label %.lr.ph57.split.i.epil, !llvm.loop !195

DoGradientFilter_C.exit:                          ; preds = %DoGradientFilter_C.exit.loopexit56.unr-lcssa, %.lr.ph57.split.i.epil, %PredictLine_C.exit50._crit_edge.us.i, %PredictLine_C.exit.i, %PredictLine_C.exit.thread.i
  ret void
}

end_hunk_3
