begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.1 = phi i32 [ %53, %37 ], [ %5, %35 ]         ; 2 uses
  %55 = and i32 %3, 15                            ; 5 uses
  switch i32 %55, label %iter.check [
    i32 8, label %85
    i32 0, label %.loopexit
  ]

end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %59, 28
  %n.vec = and i64 %59, 8589934560                ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %60 = add i64 %index, %56                       ; 3 uses
  %61 = getelementptr inbounds [4 x i8], ptr %0, i64 %60 ; 4 uses
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 32
  %63 = getelementptr inbounds nuw i8, ptr %61, i64 64
  %64 = getelementptr inbounds nuw i8, ptr %61, i64 96
  %wide.load = load <8 x i32>, ptr %61, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %62, align 4, !tbaa !3
  %wide.load85 = load <8 x i32>, ptr %63, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %64, align 4, !tbaa !3
  %65 = getelementptr inbounds [4 x i8], ptr %1, i64 %60 ; 4 uses
  %66 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %67 = getelementptr inbounds nuw i8, ptr %65, i64 64
  %68 = getelementptr inbounds nuw i8, ptr %65, i64 96
  %wide.load87 = load <8 x i32>, ptr %65, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %66, align 4, !tbaa !3
  %wide.load89 = load <8 x i32>, ptr %67, align 4, !tbaa !3
  %wide.load90 = load <8 x i32>, ptr %68, align 4, !tbaa !3
  %69 = add <8 x i32> %wide.load87, %wide.load
  %70 = add <8 x i32> %wide.load88, %wide.load84
  %71 = add <8 x i32> %wide.load89, %wide.load85
  %72 = add <8 x i32> %wide.load90, %wide.load86
  %73 = getelementptr inbounds [4 x i8], ptr %2, i64 %60 ; 4 uses
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %75 = getelementptr inbounds nuw i8, ptr %73, i64 64
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 96
  store <8 x i32> %69, ptr %73, align 4, !tbaa !3
  store <8 x i32> %70, ptr %74, align 4, !tbaa !3
  store <8 x i32> %71, ptr %75, align 4, !tbaa !3
  store <8 x i32> %72, ptr %76, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %77 = icmp eq i64 %index.next, %n.vec
  br i1 %77, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %59, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %56
  %.cast99 = trunc i64 %n.vec to i32
  %ind.end100 = sub i32 %55, %.cast99
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %59, 8589934588              ; 4 uses
  %78 = add nsw i64 %n.vec92, %56
  %.cast = trunc i64 %n.vec92 to i32
  %79 = sub i32 %55, %.cast
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index93, %56             ; 3 uses
  %80 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load94 = load <4 x i32>, ptr %80, align 4, !tbaa !3
  %81 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx
  %wide.load95 = load <4 x i32>, ptr %81, align 4, !tbaa !3
  %82 = add <4 x i32> %wide.load95, %wide.load94
  %83 = getelementptr inbounds [4 x i8], ptr %2, i64 %offset.idx
  store <4 x i32> %82, ptr %83, align 4, !tbaa !3
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %84 = icmp eq i64 %index.next96, %n.vec92
  br i1 %84, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %59, %n.vec92
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv80.ph = phi i64 [ %56, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %78, %vec.epilog.middle.block ]
  %.078.ph = phi i32 [ %55, %iter.check ], [ %ind.end100, %vec.epilog.iter.check ], [ %79, %vec.epilog.middle.block ]
  br label %.lr.ph

85:                                               ; preds = %54
  %86 = sext i32 %.1 to i64                       ; 3 uses
  %87 = getelementptr inbounds [4 x i8], ptr %0, i64 %86
  %88 = load <8 x i32>, ptr %87, align 1, !tbaa !9
  %89 = getelementptr inbounds [4 x i8], ptr %1, i64 %86
  %90 = load <8 x i32>, ptr %89, align 1, !tbaa !9
  %91 = getelementptr inbounds [4 x i8], ptr %2, i64 %86
  %92 = add <8 x i32> %90, %88
  store <8 x i32> %92, ptr %91, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader ] ; 4 uses
  %.078 = phi i32 [ %93, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader ]
  %93 = add nsw i32 %.078, -1                     ; 2 uses
  %94 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  %95 = load i32, ptr %94, align 4, !tbaa !3
  %96 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %97 = load i32, ptr %96, align 4, !tbaa !3
  %98 = add i32 %97, %95
  %99 = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv80
  store i32 %98, ptr %99, align 4, !tbaa !3
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1
  %.not75 = icmp eq i32 %93, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %54, %85
  ret void
}

end_hunk_2
begin_hunk_3
  %.1 = phi i32 [ %46, %32 ], [ %4, %30 ]         ; 2 uses
  %48 = and i32 %2, 15                            ; 5 uses
  switch i32 %48, label %iter.check [
    i32 8, label %73
    i32 0, label %.loopexit
  ]

end_hunk_3
begin_hunk_4
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %52, 28
  %n.vec = and i64 %52, 8589934560                ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %53 = add i64 %index, %49                       ; 2 uses
  %54 = getelementptr inbounds [4 x i8], ptr %0, i64 %53 ; 4 uses
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 32
  %56 = getelementptr inbounds nuw i8, ptr %54, i64 64
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 96
  %wide.load = load <8 x i32>, ptr %54, align 4, !tbaa !3
  %wide.load82 = load <8 x i32>, ptr %55, align 4, !tbaa !3
  %wide.load83 = load <8 x i32>, ptr %56, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %57, align 4, !tbaa !3
  %58 = getelementptr inbounds [4 x i8], ptr %1, i64 %53 ; 5 uses
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 2 uses
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 64 ; 2 uses
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 96 ; 2 uses
  %wide.load85 = load <8 x i32>, ptr %58, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %59, align 4, !tbaa !3
  %wide.load87 = load <8 x i32>, ptr %60, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %61, align 4, !tbaa !3
  %62 = add <8 x i32> %wide.load85, %wide.load
  %63 = add <8 x i32> %wide.load86, %wide.load82
  %64 = add <8 x i32> %wide.load87, %wide.load83
  %65 = add <8 x i32> %wide.load88, %wide.load84
  store <8 x i32> %62, ptr %58, align 4, !tbaa !3
  store <8 x i32> %63, ptr %59, align 4, !tbaa !3
  store <8 x i32> %64, ptr %60, align 4, !tbaa !3
  store <8 x i32> %65, ptr %61, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %66 = icmp eq i64 %index.next, %n.vec
  br i1 %66, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %52, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %49
  %.cast97 = trunc i64 %n.vec to i32
  %ind.end98 = sub i32 %48, %.cast97
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %52, 8589934588              ; 4 uses
  %67 = add nsw i64 %n.vec90, %49
  %.cast = trunc i64 %n.vec90 to i32
  %68 = sub i32 %48, %.cast
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index91, %49             ; 2 uses
  %69 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load92 = load <4 x i32>, ptr %69, align 4, !tbaa !3
  %70 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx ; 2 uses
  %wide.load93 = load <4 x i32>, ptr %70, align 4, !tbaa !3
  %71 = add <4 x i32> %wide.load93, %wide.load92
  store <4 x i32> %71, ptr %70, align 4, !tbaa !3
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %72 = icmp eq i64 %index.next94, %n.vec90
  br i1 %72, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %52, %n.vec90
  br i1 %cmp.n95, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.ph = phi i64 [ %49, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %67, %vec.epilog.middle.block ]
  %.076.ph = phi i32 [ %48, %iter.check ], [ %ind.end98, %vec.epilog.iter.check ], [ %68, %vec.epilog.middle.block ]
  br label %.lr.ph

73:                                               ; preds = %47
  %74 = sext i32 %.1 to i64                       ; 2 uses
  %75 = getelementptr inbounds [4 x i8], ptr %0, i64 %74
  %76 = load <8 x i32>, ptr %75, align 1, !tbaa !9
  %77 = getelementptr inbounds [4 x i8], ptr %1, i64 %74 ; 2 uses
  %78 = load <8 x i32>, ptr %77, align 1, !tbaa !9
  %79 = add <8 x i32> %78, %76
  store <8 x i32> %79, ptr %77, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph ], [ %indvars.iv78.ph, %.lr.ph.preheader ] ; 3 uses
  %.076 = phi i32 [ %80, %.lr.ph ], [ %.076.ph, %.lr.ph.preheader ]
  %80 = add nsw i32 %.076, -1                     ; 2 uses
  %81 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv78
  %82 = load i32, ptr %81, align 4, !tbaa !3
  %83 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78 ; 2 uses
  %84 = load i32, ptr %83, align 4, !tbaa !3
  %85 = add i32 %84, %82
  store i32 %85, ptr %83, align 4, !tbaa !3
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %.not73 = icmp eq i32 %80, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %47, %73
  ret void
}

end_hunk_4
