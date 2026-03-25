begin_hunk_0
inline.NumInlined: 16
inline.NumDeleted: 4
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.1 = phi i32 [ %53, %37 ], [ %5, %35 ]         ; 2 uses
  %55 = and i32 %3, 15                            ; 5 uses
  switch i32 %55, label %iter.check [
    i32 8, label %87
    i32 0, label %.loopexit
  ]

end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %59, 28
  %n.vec = and i64 %59, 8589934560                ; 5 uses
  %60 = add nsw i64 %n.vec, %56
  %.cast = trunc i64 %n.vec to i32
  %61 = sub i32 %55, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %62 = add i64 %index, %56                       ; 3 uses
  %63 = getelementptr inbounds [4 x i8], ptr %0, i64 %62 ; 4 uses
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %65 = getelementptr inbounds nuw i8, ptr %63, i64 64
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 96
  %wide.load = load <8 x i32>, ptr %63, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %64, align 4, !tbaa !3
  %wide.load85 = load <8 x i32>, ptr %65, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %66, align 4, !tbaa !3
  %67 = getelementptr inbounds [4 x i8], ptr %1, i64 %62 ; 4 uses
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %69 = getelementptr inbounds nuw i8, ptr %67, i64 64
  %70 = getelementptr inbounds nuw i8, ptr %67, i64 96
  %wide.load87 = load <8 x i32>, ptr %67, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %68, align 4, !tbaa !3
  %wide.load89 = load <8 x i32>, ptr %69, align 4, !tbaa !3
  %wide.load90 = load <8 x i32>, ptr %70, align 4, !tbaa !3
  %71 = add <8 x i32> %wide.load87, %wide.load
  %72 = add <8 x i32> %wide.load88, %wide.load84
  %73 = add <8 x i32> %wide.load89, %wide.load85
  %74 = add <8 x i32> %wide.load90, %wide.load86
  %75 = getelementptr inbounds [4 x i8], ptr %2, i64 %62 ; 4 uses
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %77 = getelementptr inbounds nuw i8, ptr %75, i64 64
  %78 = getelementptr inbounds nuw i8, ptr %75, i64 96
  store <8 x i32> %71, ptr %75, align 4, !tbaa !3
  store <8 x i32> %72, ptr %76, align 4, !tbaa !3
  store <8 x i32> %73, ptr %77, align 4, !tbaa !3
  store <8 x i32> %74, ptr %78, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %79 = icmp eq i64 %index.next, %n.vec
  br i1 %79, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %59, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %59, 8589934588              ; 4 uses
  %80 = add nsw i64 %n.vec93, %56
  %.cast94 = trunc i64 %n.vec93 to i32
  %81 = sub i32 %55, %.cast94
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index95, %56             ; 3 uses
  %82 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load96 = load <4 x i32>, ptr %82, align 4, !tbaa !3
  %83 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx
  %wide.load97 = load <4 x i32>, ptr %83, align 4, !tbaa !3
  %84 = add <4 x i32> %wide.load97, %wide.load96
  %85 = getelementptr inbounds [4 x i8], ptr %2, i64 %offset.idx
  store <4 x i32> %84, ptr %85, align 4, !tbaa !3
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %86 = icmp eq i64 %index.next98, %n.vec93
  br i1 %86, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %59, %n.vec93
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv80.ph = phi i64 [ %56, %iter.check ], [ %60, %vec.epilog.iter.check ], [ %80, %vec.epilog.middle.block ]
  %.078.ph = phi i32 [ %55, %iter.check ], [ %61, %vec.epilog.iter.check ], [ %81, %vec.epilog.middle.block ]
  br label %.lr.ph

87:                                               ; preds = %54
  %88 = sext i32 %.1 to i64                       ; 3 uses
  %89 = getelementptr inbounds [4 x i8], ptr %0, i64 %88
  %90 = load <8 x i32>, ptr %89, align 1, !tbaa !9
  %91 = getelementptr inbounds [4 x i8], ptr %1, i64 %88
  %92 = load <8 x i32>, ptr %91, align 1, !tbaa !9
  %93 = getelementptr inbounds [4 x i8], ptr %2, i64 %88
  %94 = add <8 x i32> %92, %90
  store <8 x i32> %94, ptr %93, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader ] ; 4 uses
  %.078 = phi i32 [ %95, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader ]
  %95 = add nsw i32 %.078, -1                     ; 2 uses
  %96 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  %97 = load i32, ptr %96, align 4, !tbaa !3
  %98 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv80
  %99 = load i32, ptr %98, align 4, !tbaa !3
  %100 = add i32 %99, %97
  %101 = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv80
  store i32 %100, ptr %101, align 4, !tbaa !3
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1
  %.not75 = icmp eq i32 %95, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %54, %87
  ret void
}

end_hunk_2
begin_hunk_3
  %.1 = phi i32 [ %46, %32 ], [ %4, %30 ]         ; 2 uses
  %48 = and i32 %2, 15                            ; 5 uses
  switch i32 %48, label %iter.check [
    i32 8, label %75
    i32 0, label %.loopexit
  ]

end_hunk_3
begin_hunk_4
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %52, 28
  %n.vec = and i64 %52, 8589934560                ; 5 uses
  %53 = add nsw i64 %n.vec, %49
  %.cast = trunc i64 %n.vec to i32
  %54 = sub i32 %48, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %55 = add i64 %index, %49                       ; 2 uses
  %56 = getelementptr inbounds [4 x i8], ptr %0, i64 %55 ; 4 uses
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 32
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 64
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 96
  %wide.load = load <8 x i32>, ptr %56, align 4, !tbaa !3
  %wide.load82 = load <8 x i32>, ptr %57, align 4, !tbaa !3
  %wide.load83 = load <8 x i32>, ptr %58, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %59, align 4, !tbaa !3
  %60 = getelementptr inbounds [4 x i8], ptr %1, i64 %55 ; 5 uses
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 2 uses
  %62 = getelementptr inbounds nuw i8, ptr %60, i64 64 ; 2 uses
  %63 = getelementptr inbounds nuw i8, ptr %60, i64 96 ; 2 uses
  %wide.load85 = load <8 x i32>, ptr %60, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %61, align 4, !tbaa !3
  %wide.load87 = load <8 x i32>, ptr %62, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %63, align 4, !tbaa !3
  %64 = add <8 x i32> %wide.load85, %wide.load
  %65 = add <8 x i32> %wide.load86, %wide.load82
  %66 = add <8 x i32> %wide.load87, %wide.load83
  %67 = add <8 x i32> %wide.load88, %wide.load84
  store <8 x i32> %64, ptr %60, align 4, !tbaa !3
  store <8 x i32> %65, ptr %61, align 4, !tbaa !3
  store <8 x i32> %66, ptr %62, align 4, !tbaa !3
  store <8 x i32> %67, ptr %63, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %68 = icmp eq i64 %index.next, %n.vec
  br i1 %68, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %52, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %52, 8589934588              ; 4 uses
  %69 = add nsw i64 %n.vec91, %49
  %.cast92 = trunc i64 %n.vec91 to i32
  %70 = sub i32 %48, %.cast92
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index93, %49             ; 2 uses
  %71 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load94 = load <4 x i32>, ptr %71, align 4, !tbaa !3
  %72 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %72, align 4, !tbaa !3
  %73 = add <4 x i32> %wide.load95, %wide.load94
  store <4 x i32> %73, ptr %72, align 4, !tbaa !3
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %74 = icmp eq i64 %index.next96, %n.vec91
  br i1 %74, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %52, %n.vec91
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.ph = phi i64 [ %49, %iter.check ], [ %53, %vec.epilog.iter.check ], [ %69, %vec.epilog.middle.block ]
  %.076.ph = phi i32 [ %48, %iter.check ], [ %54, %vec.epilog.iter.check ], [ %70, %vec.epilog.middle.block ]
  br label %.lr.ph

75:                                               ; preds = %47
  %76 = sext i32 %.1 to i64                       ; 2 uses
  %77 = getelementptr inbounds [4 x i8], ptr %0, i64 %76
  %78 = load <8 x i32>, ptr %77, align 1, !tbaa !9
  %79 = getelementptr inbounds [4 x i8], ptr %1, i64 %76 ; 2 uses
  %80 = load <8 x i32>, ptr %79, align 1, !tbaa !9
  %81 = add <8 x i32> %80, %78
  store <8 x i32> %81, ptr %79, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph ], [ %indvars.iv78.ph, %.lr.ph.preheader ] ; 3 uses
  %.076 = phi i32 [ %82, %.lr.ph ], [ %.076.ph, %.lr.ph.preheader ]
  %82 = add nsw i32 %.076, -1                     ; 2 uses
  %83 = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv78
  %84 = load i32, ptr %83, align 4, !tbaa !3
  %85 = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78 ; 2 uses
  %86 = load i32, ptr %85, align 4, !tbaa !3
  %87 = add i32 %86, %84
  store i32 %87, ptr %85, align 4, !tbaa !3
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %.not73 = icmp eq i32 %82, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %47, %75
  ret void
}

end_hunk_4
