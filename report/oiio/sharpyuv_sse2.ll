begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %9, 12
  %n.vec = and i64 %9, -16                        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %12 = add i64 %index, %8                        ; 3 uses
  %13 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %12 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %wide.load = load <8 x i16>, ptr %13, align 2, !tbaa !12, !alias.scope !26
  %wide.load48 = load <8 x i16>, ptr %14, align 2, !tbaa !12, !alias.scope !26
  %15 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %12 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.load49 = load <8 x i16>, ptr %15, align 2, !tbaa !12, !alias.scope !29
  %wide.load50 = load <8 x i16>, ptr %16, align 2, !tbaa !12, !alias.scope !29
  %17 = sub <8 x i16> %wide.load, %wide.load49
  %18 = sub <8 x i16> %wide.load48, %wide.load50
  %19 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %12 ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %19, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %wide.load52 = load <8 x i16>, ptr %20, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %21 = add <8 x i16> %17, %wide.load51
  %22 = add <8 x i16> %18, %wide.load52
  store <8 x i16> %21, ptr %19, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  store <8 x i16> %22, ptr %20, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = add nsw i64 %n.vec, %8
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %9, -4                       ; 3 uses
  %24 = add nsw i64 %n.vec54, %8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index55, %8              ; 3 uses
  %25 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %offset.idx
  %wide.load56 = load <4 x i16>, ptr %25, align 2, !tbaa !12, !alias.scope !26
  %26 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %offset.idx
  %wide.load57 = load <4 x i16>, ptr %26, align 2, !tbaa !12, !alias.scope !29
  %27 = sub <4 x i16> %wide.load56, %wide.load57
  %28 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %offset.idx ; 2 uses
  %wide.load58 = load <4 x i16>, ptr %28, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %29 = add <4 x i16> %27, %wide.load58
  store <4 x i16> %29, ptr %28, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %30 = icmp eq i64 %index.next59, %n.vec54
  br i1 %30, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %9, %n.vec54
  br i1 %cmp.n60, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %8, %iter.check ], [ %8, %vector.memcheck ], [ %ind.end, %vec.epilog.iter.check ], [ %24, %vec.epilog.middle.block ] ; 7 uses
  %31 = sub nsw i64 %wide.trip.count, %indvars.iv36.ph
  %xtraiter = and i64 %31, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader
  %32 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36.ph
  %33 = load i16, ptr %32, align 2, !tbaa !12
  %34 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36.ph
  %35 = load i16, ptr %34, align 2, !tbaa !12
  %36 = sub i16 %33, %35
  %37 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36.ph ; 2 uses
  %38 = load i16, ptr %37, align 2, !tbaa !12
  %39 = add i16 %36, %38
  store i16 %39, ptr %37, align 2, !tbaa !12
  %indvars.iv.next37.prol = add nuw nsw i64 %indvars.iv36.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader
  %indvars.iv36.unr = phi i64 [ %indvars.iv36.ph, %.lr.ph30.preheader ], [ %indvars.iv.next37.prol, %.lr.ph30.prol ]
  %40 = add nsw i64 %wide.trip.count, -1
  %41 = icmp eq i64 %indvars.iv36.ph, %40
  br i1 %41, label %._crit_edge, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %42 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %43 = load <8 x i16>, ptr %42, align 1, !tbaa !9
  %44 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %45 = load <8 x i16>, ptr %44, align 1, !tbaa !9
  %46 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %47 = load <8 x i16>, ptr %46, align 1, !tbaa !9
  %48 = sub <8 x i16> %43, %45
  %49 = add <8 x i16> %48, %47
  store <8 x i16> %49, ptr %46, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
end_hunk_1
begin_hunk_2

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37.1, %.lr.ph30 ], [ %indvars.iv36.unr, %.lr.ph30.prol.loopexit ] ; 5 uses
  %50 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %51 = load i16, ptr %50, align 2, !tbaa !12
  %52 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %53 = load i16, ptr %52, align 2, !tbaa !12
  %54 = sub i16 %51, %53
  %55 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %56 = load i16, ptr %55, align 2, !tbaa !12
  %57 = add i16 %54, %56
  store i16 %57, ptr %55, align 2, !tbaa !12
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 3 uses
  %58 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next37
  %59 = load i16, ptr %58, align 2, !tbaa !12
  %60 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next37
  %61 = load i16, ptr %60, align 2, !tbaa !12
  %62 = sub i16 %59, %61
  %63 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next37 ; 2 uses
  %64 = load i16, ptr %63, align 2, !tbaa !12
  %65 = add i16 %62, %64
  store i16 %65, ptr %63, align 2, !tbaa !12
  %indvars.iv.next37.1 = add nuw nsw i64 %indvars.iv36, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next37.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph30, !llvm.loop !38
end_hunk_2
