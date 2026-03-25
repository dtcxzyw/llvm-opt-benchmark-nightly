begin_hunk_0
inline.NumInlined: 11
inline.NumDeleted: 4
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %9, 12
  %n.vec = and i64 %9, -16                        ; 4 uses
  %12 = add nsw i64 %n.vec, %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %13 = add i64 %index, %8                        ; 3 uses
  %14 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %13 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.load = load <8 x i16>, ptr %14, align 2, !tbaa !12, !alias.scope !26
  %wide.load48 = load <8 x i16>, ptr %15, align 2, !tbaa !12, !alias.scope !26
  %16 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %13 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %wide.load49 = load <8 x i16>, ptr %16, align 2, !tbaa !12, !alias.scope !29
  %wide.load50 = load <8 x i16>, ptr %17, align 2, !tbaa !12, !alias.scope !29
  %18 = sub <8 x i16> %wide.load, %wide.load49
  %19 = sub <8 x i16> %wide.load48, %wide.load50
  %20 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %13 ; 3 uses
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %20, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %wide.load52 = load <8 x i16>, ptr %21, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %22 = add <8 x i16> %18, %wide.load51
  %23 = add <8 x i16> %19, %wide.load52
  store <8 x i16> %22, ptr %20, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  store <8 x i16> %23, ptr %21, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %9, -4                       ; 3 uses
  %25 = add nsw i64 %n.vec54, %8
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index55, %8              ; 3 uses
  %26 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %offset.idx
  %wide.load56 = load <4 x i16>, ptr %26, align 2, !tbaa !12, !alias.scope !26
  %27 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %offset.idx
  %wide.load57 = load <4 x i16>, ptr %27, align 2, !tbaa !12, !alias.scope !29
  %28 = sub <4 x i16> %wide.load56, %wide.load57
  %29 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %offset.idx ; 2 uses
  %wide.load58 = load <4 x i16>, ptr %29, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %30 = add <4 x i16> %28, %wide.load58
  store <4 x i16> %30, ptr %29, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %31 = icmp eq i64 %index.next59, %n.vec54
  br i1 %31, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %9, %n.vec54
  br i1 %cmp.n60, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %8, %iter.check ], [ %8, %vector.memcheck ], [ %12, %vec.epilog.iter.check ], [ %25, %vec.epilog.middle.block ] ; 7 uses
  %32 = sub nsw i64 %wide.trip.count, %indvars.iv36.ph
  %xtraiter = and i64 %32, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader
  %33 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36.ph
  %34 = load i16, ptr %33, align 2, !tbaa !12
  %35 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36.ph
  %36 = load i16, ptr %35, align 2, !tbaa !12
  %37 = sub i16 %34, %36
  %38 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36.ph ; 2 uses
  %39 = load i16, ptr %38, align 2, !tbaa !12
  %40 = add i16 %37, %39
  store i16 %40, ptr %38, align 2, !tbaa !12
  %indvars.iv.next37.prol = add nuw nsw i64 %indvars.iv36.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader
  %indvars.iv36.unr = phi i64 [ %indvars.iv36.ph, %.lr.ph30.preheader ], [ %indvars.iv.next37.prol, %.lr.ph30.prol ]
  %41 = add nsw i64 %wide.trip.count, -1
  %42 = icmp eq i64 %indvars.iv36.ph, %41
  br i1 %42, label %._crit_edge, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %43 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %44 = load <8 x i16>, ptr %43, align 1, !tbaa !9
  %45 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %46 = load <8 x i16>, ptr %45, align 1, !tbaa !9
  %47 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %48 = load <8 x i16>, ptr %47, align 1, !tbaa !9
  %49 = sub <8 x i16> %44, %46
  %50 = add <8 x i16> %49, %48
  store <8 x i16> %50, ptr %47, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
end_hunk_1
begin_hunk_2

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37.1, %.lr.ph30 ], [ %indvars.iv36.unr, %.lr.ph30.prol.loopexit ] ; 5 uses
  %51 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %52 = load i16, ptr %51, align 2, !tbaa !12
  %53 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %54 = load i16, ptr %53, align 2, !tbaa !12
  %55 = sub i16 %52, %54
  %56 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %57 = load i16, ptr %56, align 2, !tbaa !12
  %58 = add i16 %55, %57
  store i16 %58, ptr %56, align 2, !tbaa !12
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 3 uses
  %59 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next37
  %60 = load i16, ptr %59, align 2, !tbaa !12
  %61 = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next37
  %62 = load i16, ptr %61, align 2, !tbaa !12
  %63 = sub i16 %60, %62
  %64 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next37 ; 2 uses
  %65 = load i16, ptr %64, align 2, !tbaa !12
  %66 = add i16 %63, %65
  store i16 %66, ptr %64, align 2, !tbaa !12
  %indvars.iv.next37.1 = add nuw nsw i64 %indvars.iv36, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next37.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph30, !llvm.loop !38
end_hunk_2
