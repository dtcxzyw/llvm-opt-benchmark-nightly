begin_hunk_0
inline.NumInlined: 1
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %4 = load i8, ptr %3, align 8, !tbaa !37
  switch i8 %4, label %.loopexit [
    i8 0, label %5
    i8 4, label %20
  ]

5:                                                ; preds = %2
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %7, 28
  %n.vec = and i64 %7, -32                        ; 5 uses
  %8 = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %9 = getelementptr i8, ptr %next.gep, i64 16    ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load58 = load <16 x i8>, ptr %9, align 1, !tbaa !27
  %10 = xor <16 x i8> %wide.load, splat (i8 -1)
  %11 = xor <16 x i8> %wide.load58, splat (i8 -1)
  store <16 x i8> %10, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %11, ptr %9, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %7, -4                       ; 4 uses
  %13 = getelementptr i8, ptr %1, i64 %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %index61 ; 2 uses
  %wide.load63 = load <4 x i8>, ptr %next.gep62, align 1, !tbaa !27
  %14 = xor <4 x i8> %wide.load63, splat (i8 -1)
  store <4 x i8> %14, ptr %next.gep62, align 1, !tbaa !27
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %15 = icmp eq i64 %index.next64, %n.vec60
  br i1 %15, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %7, %n.vec60
  br i1 %cmp.n65, label %.loopexit, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.044.ph = phi ptr [ %1, %iter.check ], [ %8, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  %.03243.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %.044 = phi ptr [ %18, %.lr.ph45 ], [ %.044.ph, %.lr.ph45.preheader ] ; 3 uses
  %.03243 = phi i64 [ %19, %.lr.ph45 ], [ %.03243.ph, %.lr.ph45.preheader ]
  %16 = load i8, ptr %.044, align 1, !tbaa !27
  %17 = xor i8 %16, -1
  store i8 %17, ptr %.044, align 1, !tbaa !27
  %18 = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %19 = add nuw i64 %.03243, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %19, %7
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph45, !llvm.loop !46

20:                                               ; preds = %2
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %22 = load i8, ptr %21, align 1, !tbaa !47
  switch i8 %22, label %.loopexit [
    i8 8, label %23
    i8 16, label %42
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !39     ; 3 uses
  %.not46 = icmp eq i64 %25, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %23
  %26 = add i64 %25, -1
  %27 = lshr i64 %26, 1
  %28 = add nuw i64 %27, 1                        ; 2 uses
  %xtraiter70 = and i64 %28, 3                    ; 3 uses
  %29 = icmp ult i64 %25, 7
  br i1 %29, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter73 = and i64 %28, -4
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42, %.lr.ph42.preheader.new
  %.03440 = phi ptr [ %1, %.lr.ph42.preheader.new ], [ %41, %.lr.ph42 ] ; 6 uses
  %niter75 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter75.next.3, %.lr.ph42 ]
  %30 = load i8, ptr %.03440, align 1, !tbaa !27
  %31 = xor i8 %30, -1
  store i8 %31, ptr %.03440, align 1, !tbaa !27
  %32 = getelementptr inbounds nuw i8, ptr %.03440, i64 2 ; 2 uses
  %33 = load i8, ptr %32, align 1, !tbaa !27
  %34 = xor i8 %33, -1
  store i8 %34, ptr %32, align 1, !tbaa !27
  %35 = getelementptr inbounds nuw i8, ptr %.03440, i64 4 ; 2 uses
  %36 = load i8, ptr %35, align 1, !tbaa !27
  %37 = xor i8 %36, -1
  store i8 %37, ptr %35, align 1, !tbaa !27
  %38 = getelementptr inbounds nuw i8, ptr %.03440, i64 6 ; 2 uses
  %39 = load i8, ptr %38, align 1, !tbaa !27
  %40 = xor i8 %39, -1
  store i8 %40, ptr %38, align 1, !tbaa !27
  %41 = getelementptr inbounds nuw i8, ptr %.03440, i64 8 ; 2 uses
  %niter75.next.3 = add i64 %niter75, 4           ; 2 uses
  %niter75.ncmp.3.not = icmp eq i64 %niter75.next.3, %unroll_iter73
  br i1 %niter75.ncmp.3.not, label %.loopexit.loopexit68.unr-lcssa, label %.lr.ph42, !llvm.loop !48

42:                                               ; preds = %20
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !39     ; 2 uses
  %.not = icmp eq i64 %44, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %42
  %45 = add i64 %44, -1                           ; 2 uses
  %46 = lshr i64 %45, 2                           ; 2 uses
  %47 = add nuw nsw i64 %46, 1                    ; 2 uses
  %48 = icmp eq i64 %46, 0
  br i1 %48, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %47, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03138 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %60, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %49 = load i8, ptr %.03138, align 1, !tbaa !27
  %50 = xor i8 %49, -1
  store i8 %50, ptr %.03138, align 1, !tbaa !27
  %51 = getelementptr inbounds nuw i8, ptr %.03138, i64 1 ; 2 uses
  %52 = load i8, ptr %51, align 1, !tbaa !27
  %53 = xor i8 %52, -1
  store i8 %53, ptr %51, align 1, !tbaa !27
  %54 = getelementptr inbounds nuw i8, ptr %.03138, i64 4 ; 2 uses
  %55 = load i8, ptr %54, align 1, !tbaa !27
  %56 = xor i8 %55, -1
  store i8 %56, ptr %54, align 1, !tbaa !27
  %57 = getelementptr inbounds nuw i8, ptr %.03138, i64 5 ; 2 uses
  %58 = load i8, ptr %57, align 1, !tbaa !27
  %59 = xor i8 %58, -1
  store i8 %59, ptr %57, align 1, !tbaa !27
  %60 = getelementptr inbounds nuw i8, ptr %.03138, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !49

.loopexit.loopexit68.unr-lcssa:                   ; preds = %.lr.ph42
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %.loopexit, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %.loopexit.loopexit68.unr-lcssa, %.lr.ph42.preheader
  %.03440.epil.init = phi ptr [ %1, %.lr.ph42.preheader ], [ %41, %.loopexit.loopexit68.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph42.epil

.lr.ph42.epil:                                    ; preds = %.lr.ph42.epil, %.lr.ph42.epil.preheader
  %.03440.epil = phi ptr [ %63, %.lr.ph42.epil ], [ %.03440.epil.init, %.lr.ph42.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph42.epil ], [ 0, %.lr.ph42.epil.preheader ]
  %61 = load i8, ptr %.03440.epil, align 1, !tbaa !27
  %62 = xor i8 %61, -1
  store i8 %62, ptr %.03440.epil, align 1, !tbaa !27
  %63 = getelementptr inbounds nuw i8, ptr %.03440.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph42.epil, !llvm.loop !50

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %64 = and i64 %45, 4
  %lcmp.mod.not.not = icmp eq i64 %64, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %.03138.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %60, %.loopexit.loopexit69.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i64 %47 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %65 = load i8, ptr %.03138.epil.init, align 1, !tbaa !27
  %66 = xor i8 %65, -1
  store i8 %66, ptr %.03138.epil.init, align 1, !tbaa !27
  %67 = getelementptr inbounds nuw i8, ptr %.03138.epil.init, i64 1 ; 2 uses
  %68 = load i8, ptr %67, align 1, !tbaa !27
  %69 = xor i8 %68, -1
  store i8 %69, ptr %67, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit69.unr-lcssa, %.loopexit.loopexit68.unr-lcssa, %.lr.ph42.epil, %.lr.ph45, %middle.block, %vec.epilog.middle.block, %20, %42, %23, %5, %2
  ret void
}

end_hunk_2
