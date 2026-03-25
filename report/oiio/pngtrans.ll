begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %4 = load i8, ptr %3, align 8, !tbaa !37
  switch i8 %4, label %.loopexit [
    i8 0, label %5
    i8 4, label %19
  ]

5:                                                ; preds = %2
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %7, 28
  %n.vec = and i64 %7, -32                        ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %8 = getelementptr i8, ptr %next.gep, i64 16    ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load58 = load <16 x i8>, ptr %8, align 1, !tbaa !27
  %9 = xor <16 x i8> %wide.load, splat (i8 -1)
  %10 = xor <16 x i8> %wide.load58, splat (i8 -1)
  store <16 x i8> %9, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %10, ptr %8, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %1, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %7, -4                       ; 4 uses
  %12 = getelementptr i8, ptr %1, i64 %n.vec60
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %index61 ; 2 uses
  %wide.load63 = load <4 x i8>, ptr %next.gep62, align 1, !tbaa !27
  %13 = xor <4 x i8> %wide.load63, splat (i8 -1)
  store <4 x i8> %13, ptr %next.gep62, align 1, !tbaa !27
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %14 = icmp eq i64 %index.next64, %n.vec60
  br i1 %14, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %7, %n.vec60
  br i1 %cmp.n65, label %.loopexit, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.044.ph = phi ptr [ %1, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.03243.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %.044 = phi ptr [ %17, %.lr.ph45 ], [ %.044.ph, %.lr.ph45.preheader ] ; 3 uses
  %.03243 = phi i64 [ %18, %.lr.ph45 ], [ %.03243.ph, %.lr.ph45.preheader ]
  %15 = load i8, ptr %.044, align 1, !tbaa !27
  %16 = xor i8 %15, -1
  store i8 %16, ptr %.044, align 1, !tbaa !27
  %17 = getelementptr inbounds nuw i8, ptr %.044, i64 1
  %18 = add nuw i64 %.03243, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %18, %7
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph45, !llvm.loop !46

19:                                               ; preds = %2
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 17
  %21 = load i8, ptr %20, align 1, !tbaa !47
  switch i8 %21, label %.loopexit [
    i8 8, label %22
    i8 16, label %41
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %24 = load i64, ptr %23, align 8, !tbaa !39     ; 3 uses
  %.not46 = icmp eq i64 %24, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %22
  %25 = add i64 %24, -1
  %26 = lshr i64 %25, 1
  %27 = add nuw i64 %26, 1                        ; 2 uses
  %xtraiter70 = and i64 %27, 3                    ; 3 uses
  %28 = icmp ult i64 %24, 7
  br i1 %28, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter73 = and i64 %27, -4
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42, %.lr.ph42.preheader.new
  %.03440 = phi ptr [ %1, %.lr.ph42.preheader.new ], [ %40, %.lr.ph42 ] ; 6 uses
  %niter74 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter74.next.3, %.lr.ph42 ]
  %29 = load i8, ptr %.03440, align 1, !tbaa !27
  %30 = xor i8 %29, -1
  store i8 %30, ptr %.03440, align 1, !tbaa !27
  %31 = getelementptr inbounds nuw i8, ptr %.03440, i64 2 ; 2 uses
  %32 = load i8, ptr %31, align 1, !tbaa !27
  %33 = xor i8 %32, -1
  store i8 %33, ptr %31, align 1, !tbaa !27
  %34 = getelementptr inbounds nuw i8, ptr %.03440, i64 4 ; 2 uses
  %35 = load i8, ptr %34, align 1, !tbaa !27
  %36 = xor i8 %35, -1
  store i8 %36, ptr %34, align 1, !tbaa !27
  %37 = getelementptr inbounds nuw i8, ptr %.03440, i64 6 ; 2 uses
  %38 = load i8, ptr %37, align 1, !tbaa !27
  %39 = xor i8 %38, -1
  store i8 %39, ptr %37, align 1, !tbaa !27
  %40 = getelementptr inbounds nuw i8, ptr %.03440, i64 8 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3.not = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3.not, label %.loopexit.loopexit67.unr-lcssa, label %.lr.ph42, !llvm.loop !48

41:                                               ; preds = %19
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %43 = load i64, ptr %42, align 8, !tbaa !39     ; 2 uses
  %.not = icmp eq i64 %43, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %41
  %44 = add i64 %43, -1                           ; 2 uses
  %45 = lshr i64 %44, 2                           ; 2 uses
  %46 = add nuw nsw i64 %45, 1                    ; 2 uses
  %47 = icmp eq i64 %45, 0
  br i1 %47, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %46, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03138 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %59, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %48 = load i8, ptr %.03138, align 1, !tbaa !27
  %49 = xor i8 %48, -1
  store i8 %49, ptr %.03138, align 1, !tbaa !27
  %50 = getelementptr inbounds nuw i8, ptr %.03138, i64 1 ; 2 uses
  %51 = load i8, ptr %50, align 1, !tbaa !27
  %52 = xor i8 %51, -1
  store i8 %52, ptr %50, align 1, !tbaa !27
  %53 = getelementptr inbounds nuw i8, ptr %.03138, i64 4 ; 2 uses
  %54 = load i8, ptr %53, align 1, !tbaa !27
  %55 = xor i8 %54, -1
  store i8 %55, ptr %53, align 1, !tbaa !27
  %56 = getelementptr inbounds nuw i8, ptr %.03138, i64 5 ; 2 uses
  %57 = load i8, ptr %56, align 1, !tbaa !27
  %58 = xor i8 %57, -1
  store i8 %58, ptr %56, align 1, !tbaa !27
  %59 = getelementptr inbounds nuw i8, ptr %.03138, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit68.unr-lcssa, label %.lr.ph, !llvm.loop !49

.loopexit.loopexit67.unr-lcssa:                   ; preds = %.lr.ph42
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.loopexit, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph42.preheader
  %.03440.epil.init = phi ptr [ %1, %.lr.ph42.preheader ], [ %40, %.loopexit.loopexit67.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph42.epil

.lr.ph42.epil:                                    ; preds = %.lr.ph42.epil, %.lr.ph42.epil.preheader
  %.03440.epil = phi ptr [ %62, %.lr.ph42.epil ], [ %.03440.epil.init, %.lr.ph42.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph42.epil ], [ 0, %.lr.ph42.epil.preheader ]
  %60 = load i8, ptr %.03440.epil, align 1, !tbaa !27
  %61 = xor i8 %60, -1
  store i8 %61, ptr %.03440.epil, align 1, !tbaa !27
  %62 = getelementptr inbounds nuw i8, ptr %.03440.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph42.epil, !llvm.loop !50

.loopexit.loopexit68.unr-lcssa:                   ; preds = %.lr.ph
  %63 = and i64 %44, 4
  %lcmp.mod.not.not = icmp eq i64 %63, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit68.unr-lcssa, %.lr.ph.preheader
  %.03138.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %59, %.loopexit.loopexit68.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i64 %46 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %64 = load i8, ptr %.03138.epil.init, align 1, !tbaa !27
  %65 = xor i8 %64, -1
  store i8 %65, ptr %.03138.epil.init, align 1, !tbaa !27
  %66 = getelementptr inbounds nuw i8, ptr %.03138.epil.init, i64 1 ; 2 uses
  %67 = load i8, ptr %66, align 1, !tbaa !27
  %68 = xor i8 %67, -1
  store i8 %68, ptr %66, align 1, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit68.unr-lcssa, %.loopexit.loopexit67.unr-lcssa, %.lr.ph42.epil, %.lr.ph45, %middle.block, %vec.epilog.middle.block, %19, %41, %22, %5, %2
  ret void
}

end_hunk_2
