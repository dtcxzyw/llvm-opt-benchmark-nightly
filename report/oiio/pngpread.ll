begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep72 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %12 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !41
  %wide.load73 = load <16 x i8>, ptr %12, align 1, !tbaa !41
  %13 = getelementptr i8, ptr %next.gep72, i64 16
  store <16 x i8> %wide.load, ptr %next.gep72, align 1, !tbaa !41
  store <16 x i8> %wide.load73, ptr %13, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %6, i64 %n.vec
  %ind.end84 = getelementptr i8, ptr %8, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %3, -4                       ; 5 uses
  %15 = getelementptr i8, ptr %6, i64 %n.vec75
  %16 = getelementptr i8, ptr %8, i64 %n.vec75
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %6, i64 %index76
  %next.gep78 = getelementptr i8, ptr %8, i64 %index76
  %wide.load79 = load <4 x i8>, ptr %next.gep77, align 1, !tbaa !41
  store <4 x i8> %wide.load79, ptr %next.gep78, align 1, !tbaa !41
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %17 = icmp eq i64 %index.next80, %n.vec75
  br i1 %17, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %3, %n.vec75
  br i1 %cmp.n81, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.064.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 4 uses
  %.04963.ph = phi ptr [ %6, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %15, %vec.epilog.middle.block ] ; 2 uses
  %.05062.ph = phi ptr [ %8, %iter.check ], [ %ind.end84, %vec.epilog.iter.check ], [ %16, %vec.epilog.middle.block ] ; 2 uses
  %18 = sub i64 %3, %.064.ph
  %xtraiter = and i64 %18, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.064.prol = phi i64 [ %20, %.preheader.prol ], [ %.064.ph, %.preheader.preheader ]
  %.04963.prol = phi ptr [ %21, %.preheader.prol ], [ %.04963.ph, %.preheader.preheader ] ; 2 uses
  %.05062.prol = phi ptr [ %22, %.preheader.prol ], [ %.05062.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %19 = load i8, ptr %.04963.prol, align 1, !tbaa !41
  store i8 %19, ptr %.05062.prol, align 1, !tbaa !41
  %20 = add nuw i64 %.064.prol, 1                 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %.04963.prol, i64 1 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.05062.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !47

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.064.unr = phi i64 [ %.064.ph, %.preheader.preheader ], [ %20, %.preheader.prol ]
  %.04963.unr = phi ptr [ %.04963.ph, %.preheader.preheader ], [ %21, %.preheader.prol ]
  %.05062.unr = phi ptr [ %.05062.ph, %.preheader.preheader ], [ %22, %.preheader.prol ]
  %23 = sub i64 %.064.ph, %3
  %24 = icmp ugt i64 %23, -8
  br i1 %24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.064 = phi i64 [ %47, %.preheader ], [ %.064.unr, %.preheader.prol.loopexit ]
  %.04963 = phi ptr [ %48, %.preheader ], [ %.04963.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.05062 = phi ptr [ %49, %.preheader ], [ %.05062.unr, %.preheader.prol.loopexit ] ; 9 uses
  %25 = load i8, ptr %.04963, align 1, !tbaa !41
  store i8 %25, ptr %.05062, align 1, !tbaa !41
  %26 = getelementptr inbounds nuw i8, ptr %.04963, i64 1
  %27 = getelementptr inbounds nuw i8, ptr %.05062, i64 1
  %28 = load i8, ptr %26, align 1, !tbaa !41
  store i8 %28, ptr %27, align 1, !tbaa !41
  %29 = getelementptr inbounds nuw i8, ptr %.04963, i64 2
  %30 = getelementptr inbounds nuw i8, ptr %.05062, i64 2
  %31 = load i8, ptr %29, align 1, !tbaa !41
  store i8 %31, ptr %30, align 1, !tbaa !41
  %32 = getelementptr inbounds nuw i8, ptr %.04963, i64 3
  %33 = getelementptr inbounds nuw i8, ptr %.05062, i64 3
  %34 = load i8, ptr %32, align 1, !tbaa !41
  store i8 %34, ptr %33, align 1, !tbaa !41
  %35 = getelementptr inbounds nuw i8, ptr %.04963, i64 4
  %36 = getelementptr inbounds nuw i8, ptr %.05062, i64 4
  %37 = load i8, ptr %35, align 1, !tbaa !41
  store i8 %37, ptr %36, align 1, !tbaa !41
  %38 = getelementptr inbounds nuw i8, ptr %.04963, i64 5
  %39 = getelementptr inbounds nuw i8, ptr %.05062, i64 5
  %40 = load i8, ptr %38, align 1, !tbaa !41
  store i8 %40, ptr %39, align 1, !tbaa !41
  %41 = getelementptr inbounds nuw i8, ptr %.04963, i64 6
  %42 = getelementptr inbounds nuw i8, ptr %.05062, i64 6
  %43 = load i8, ptr %41, align 1, !tbaa !41
  store i8 %43, ptr %42, align 1, !tbaa !41
  %44 = getelementptr inbounds nuw i8, ptr %.04963, i64 7
  %45 = getelementptr inbounds nuw i8, ptr %.05062, i64 7
  %46 = load i8, ptr %44, align 1, !tbaa !41
  store i8 %46, ptr %45, align 1, !tbaa !41
  %47 = add nuw i64 %.064, 8                      ; 2 uses
  %48 = getelementptr inbounds nuw i8, ptr %.04963, i64 8
  %49 = getelementptr inbounds nuw i8, ptr %.05062, i64 8
  %exitcond.not.7 = icmp eq i64 %47, %3
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !49

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %4, %1
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %51 = load i64, ptr %50, align 8, !tbaa !27     ; 3 uses
  %52 = add i64 %51, %3                           ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %54 = load i64, ptr %53, align 8, !tbaa !50
  %55 = icmp ugt i64 %52, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %.loopexit
  %57 = sub i64 -257, %51
  %58 = icmp ugt i64 %3, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #11
  unreachable

60:                                               ; preds = %56
  %61 = add i64 %52, 256                          ; 2 uses
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %63 = load ptr, ptr %62, align 8, !tbaa !40     ; 4 uses
  %64 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %61) #12 ; 3 uses
  store ptr %64, ptr %62, align 8, !tbaa !40
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %63) #12
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #11
  unreachable

67:                                               ; preds = %60
  %.not59 = icmp eq ptr %63, null
  %68 = load i64, ptr %2, align 8, !tbaa !28      ; 2 uses
  br i1 %.not59, label %70, label %69

69:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %64, ptr nonnull align 1 %63, i64 %68, i1 false)
  br label %72

70:                                               ; preds = %67
  %.not60 = icmp eq i64 %68, 0
  br i1 %.not60, label %72, label %71

71:                                               ; preds = %70
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #11
  unreachable

72:                                               ; preds = %70, %69
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %63) #12
  store i64 %61, ptr %53, align 8, !tbaa !50
  %.pr = load i64, ptr %50, align 8, !tbaa !27
  br label %73

73:                                               ; preds = %72, %.loopexit
  %74 = phi i64 [ %.pr, %72 ], [ %51, %.loopexit ] ; 2 uses
  %.not61 = icmp eq i64 %74, 0
  br i1 %.not61, label %85, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 872
  %77 = load ptr, ptr %76, align 8, !tbaa !40
  %78 = load i64, ptr %2, align 8, !tbaa !28
  %79 = getelementptr inbounds nuw i8, ptr %77, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %81 = load ptr, ptr %80, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %81, i64 %74, i1 false)
  %82 = load i64, ptr %50, align 8, !tbaa !27
  %83 = load i64, ptr %2, align 8, !tbaa !28
  %84 = add i64 %83, %82
  store i64 %84, ptr %2, align 8, !tbaa !28
  store i64 0, ptr %50, align 8, !tbaa !27
  br label %85

85:                                               ; preds = %75, %73
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 872
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %87, ptr %88, align 8, !tbaa !39
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 0, ptr %89, align 8, !tbaa !29
  ret void
}

end_hunk_1
