begin_hunk_0
inline.NumInlined: 25
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 28
  %n.vec = and i64 %3, -32                        ; 6 uses
  %12 = getelementptr i8, ptr %6, i64 %n.vec
  %13 = getelementptr i8, ptr %8, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %6, i64 %index ; 2 uses
  %next.gep72 = getelementptr i8, ptr %8, i64 %index ; 2 uses
  %14 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !41
  %wide.load73 = load <16 x i8>, ptr %14, align 1, !tbaa !41
  %15 = getelementptr i8, ptr %next.gep72, i64 16
  store <16 x i8> %wide.load, ptr %next.gep72, align 1, !tbaa !41
  store <16 x i8> %wide.load73, ptr %15, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %3, -4                       ; 5 uses
  %17 = getelementptr i8, ptr %6, i64 %n.vec76
  %18 = getelementptr i8, ptr %8, i64 %n.vec76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %6, i64 %index77
  %next.gep79 = getelementptr i8, ptr %8, i64 %index77
  %wide.load80 = load <4 x i8>, ptr %next.gep78, align 1, !tbaa !41
  store <4 x i8> %wide.load80, ptr %next.gep79, align 1, !tbaa !41
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %19 = icmp eq i64 %index.next81, %n.vec76
  br i1 %19, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %3, %n.vec76
  br i1 %cmp.n82, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.064.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec76, %vec.epilog.middle.block ] ; 4 uses
  %.04963.ph = phi ptr [ %6, %iter.check ], [ %12, %vec.epilog.iter.check ], [ %17, %vec.epilog.middle.block ] ; 2 uses
  %.05062.ph = phi ptr [ %8, %iter.check ], [ %13, %vec.epilog.iter.check ], [ %18, %vec.epilog.middle.block ] ; 2 uses
  %20 = sub i64 %3, %.064.ph
  %xtraiter = and i64 %20, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.064.prol = phi i64 [ %22, %.preheader.prol ], [ %.064.ph, %.preheader.preheader ]
  %.04963.prol = phi ptr [ %23, %.preheader.prol ], [ %.04963.ph, %.preheader.preheader ] ; 2 uses
  %.05062.prol = phi ptr [ %24, %.preheader.prol ], [ %.05062.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %21 = load i8, ptr %.04963.prol, align 1, !tbaa !41
  store i8 %21, ptr %.05062.prol, align 1, !tbaa !41
  %22 = add nuw i64 %.064.prol, 1                 ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %.04963.prol, i64 1 ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %.05062.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !47

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.064.unr = phi i64 [ %.064.ph, %.preheader.preheader ], [ %22, %.preheader.prol ]
  %.04963.unr = phi ptr [ %.04963.ph, %.preheader.preheader ], [ %23, %.preheader.prol ]
  %.05062.unr = phi ptr [ %.05062.ph, %.preheader.preheader ], [ %24, %.preheader.prol ]
  %25 = sub i64 %.064.ph, %3
  %26 = icmp ugt i64 %25, -8
  br i1 %26, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.064 = phi i64 [ %49, %.preheader ], [ %.064.unr, %.preheader.prol.loopexit ]
  %.04963 = phi ptr [ %50, %.preheader ], [ %.04963.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.05062 = phi ptr [ %51, %.preheader ], [ %.05062.unr, %.preheader.prol.loopexit ] ; 9 uses
  %27 = load i8, ptr %.04963, align 1, !tbaa !41
  store i8 %27, ptr %.05062, align 1, !tbaa !41
  %28 = getelementptr inbounds nuw i8, ptr %.04963, i64 1
  %29 = getelementptr inbounds nuw i8, ptr %.05062, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !41
  store i8 %30, ptr %29, align 1, !tbaa !41
  %31 = getelementptr inbounds nuw i8, ptr %.04963, i64 2
  %32 = getelementptr inbounds nuw i8, ptr %.05062, i64 2
  %33 = load i8, ptr %31, align 1, !tbaa !41
  store i8 %33, ptr %32, align 1, !tbaa !41
  %34 = getelementptr inbounds nuw i8, ptr %.04963, i64 3
  %35 = getelementptr inbounds nuw i8, ptr %.05062, i64 3
  %36 = load i8, ptr %34, align 1, !tbaa !41
  store i8 %36, ptr %35, align 1, !tbaa !41
  %37 = getelementptr inbounds nuw i8, ptr %.04963, i64 4
  %38 = getelementptr inbounds nuw i8, ptr %.05062, i64 4
  %39 = load i8, ptr %37, align 1, !tbaa !41
  store i8 %39, ptr %38, align 1, !tbaa !41
  %40 = getelementptr inbounds nuw i8, ptr %.04963, i64 5
  %41 = getelementptr inbounds nuw i8, ptr %.05062, i64 5
  %42 = load i8, ptr %40, align 1, !tbaa !41
  store i8 %42, ptr %41, align 1, !tbaa !41
  %43 = getelementptr inbounds nuw i8, ptr %.04963, i64 6
  %44 = getelementptr inbounds nuw i8, ptr %.05062, i64 6
  %45 = load i8, ptr %43, align 1, !tbaa !41
  store i8 %45, ptr %44, align 1, !tbaa !41
  %46 = getelementptr inbounds nuw i8, ptr %.04963, i64 7
  %47 = getelementptr inbounds nuw i8, ptr %.05062, i64 7
  %48 = load i8, ptr %46, align 1, !tbaa !41
  store i8 %48, ptr %47, align 1, !tbaa !41
  %49 = add nuw i64 %.064, 8                      ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %.04963, i64 8
  %51 = getelementptr inbounds nuw i8, ptr %.05062, i64 8
  %exitcond.not.7 = icmp eq i64 %49, %3
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !49

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %4, %1
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %53 = load i64, ptr %52, align 8, !tbaa !27     ; 3 uses
  %54 = add i64 %53, %3                           ; 2 uses
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %56 = load i64, ptr %55, align 8, !tbaa !50
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %.loopexit
  %59 = sub i64 -257, %53
  %60 = icmp ugt i64 %3, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #11
  unreachable

62:                                               ; preds = %58
  %63 = add i64 %54, 256                          ; 2 uses
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %65 = load ptr, ptr %64, align 8, !tbaa !40     ; 4 uses
  %66 = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %63) #12 ; 3 uses
  store ptr %66, ptr %64, align 8, !tbaa !40
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %65) #12
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #11
  unreachable

69:                                               ; preds = %62
  %.not59 = icmp eq ptr %65, null
  %70 = load i64, ptr %2, align 8, !tbaa !28      ; 2 uses
  br i1 %.not59, label %72, label %71

71:                                               ; preds = %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %66, ptr nonnull align 1 %65, i64 %70, i1 false)
  br label %74

72:                                               ; preds = %69
  %.not60 = icmp eq i64 %70, 0
  br i1 %.not60, label %74, label %73

73:                                               ; preds = %72
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #11
  unreachable

74:                                               ; preds = %72, %71
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %65) #12
  store i64 %63, ptr %55, align 8, !tbaa !50
  %.pr = load i64, ptr %52, align 8, !tbaa !27
  br label %75

75:                                               ; preds = %74, %.loopexit
  %76 = phi i64 [ %.pr, %74 ], [ %53, %.loopexit ] ; 2 uses
  %.not61 = icmp eq i64 %76, 0
  br i1 %.not61, label %87, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds nuw i8, ptr %0, i64 872
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = load i64, ptr %2, align 8, !tbaa !28
  %81 = getelementptr inbounds nuw i8, ptr %79, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %83 = load ptr, ptr %82, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %83, i64 %76, i1 false)
  %84 = load i64, ptr %52, align 8, !tbaa !27
  %85 = load i64, ptr %2, align 8, !tbaa !28
  %86 = add i64 %85, %84
  store i64 %86, ptr %2, align 8, !tbaa !28
  store i64 0, ptr %52, align 8, !tbaa !27
  br label %87

87:                                               ; preds = %77, %75
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 872
  %89 = load ptr, ptr %88, align 8, !tbaa !40
  %90 = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %89, ptr %90, align 8, !tbaa !39
  %91 = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 0, ptr %91, align 8, !tbaa !29
  ret void
}

end_hunk_1
