begin_hunk_0
inline.NumInlined: 5
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %5, 24
  %n.vec = and i64 %5, 4294967264                 ; 6 uses
  %12 = trunc nuw i64 %n.vec to i32
  %13 = sub nsw i64 0, %n.vec
  %14 = getelementptr i8, ptr %6, i64 %13
  %15 = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %16 = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %6, i64 %16   ; 2 uses
  %next.gep12 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %17 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %18 = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %17, align 1, !tbaa !7, !alias.scope !8
  %wide.load13 = load <16 x i8>, ptr %18, align 1, !tbaa !7, !alias.scope !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse14 = shufflevector <16 x i8> %wide.load13, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %19 = getelementptr i8, ptr %next.gep12, i64 16
  store <16 x i8> %reverse, ptr %next.gep12, align 1, !tbaa !7, !alias.scope !11, !noalias !8
  store <16 x i8> %reverse14, ptr %19, align 1, !tbaa !7, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %5
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %5, 4294967288               ; 5 uses
  %21 = trunc nuw i64 %n.vec16 to i32
  %22 = sub nsw i64 0, %n.vec16
  %23 = getelementptr i8, ptr %6, i64 %22
  %24 = getelementptr i8, ptr %0, i64 %n.vec16
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = sub i64 0, %index19
  %next.gep20 = getelementptr i8, ptr %6, i64 %offset.idx
  %next.gep21 = getelementptr i8, ptr %0, i64 %index19
  %25 = getelementptr inbounds i8, ptr %next.gep20, i64 -8
  %wide.load22 = load <8 x i8>, ptr %25, align 1, !tbaa !7, !alias.scope !8
  %reverse23 = shufflevector <8 x i8> %wide.load22, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse23, ptr %next.gep21, align 1, !tbaa !7, !alias.scope !11, !noalias !8
  %index.next24 = add nuw i64 %index19, 8         ; 2 uses
  %26 = icmp eq i64 %index.next24, %n.vec16
  br i1 %26, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec16, %5
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %12, %vec.epilog.iter.check ], [ %21, %vec.epilog.middle.block ] ; 4 uses
  %.pn8.ph = phi ptr [ %6, %iter.check ], [ %6, %vector.memcheck ], [ %14, %vec.epilog.iter.check ], [ %23, %vec.epilog.middle.block ] ; 2 uses
  %.067.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %15, %vec.epilog.iter.check ], [ %24, %vec.epilog.middle.block ] ; 2 uses
  %27 = sub i32 %2, %.09.ph
  %xtraiter = and i32 %27, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.09.prol = phi i32 [ %30, %.lr.ph.prol ], [ %.09.ph, %.lr.ph.preheader ]
  %.pn8.prol = phi ptr [ %.05.prol, %.lr.ph.prol ], [ %.pn8.ph, %.lr.ph.preheader ]
  %.067.prol = phi ptr [ %29, %.lr.ph.prol ], [ %.067.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.05.prol = getelementptr inbounds i8, ptr %.pn8.prol, i64 -1 ; 3 uses
  %28 = load i8, ptr %.05.prol, align 1, !tbaa !7
  %29 = getelementptr inbounds nuw i8, ptr %.067.prol, i64 1 ; 2 uses
  store i8 %28, ptr %.067.prol, align 1, !tbaa !7
  %30 = add nuw i32 %.09.prol, 1                  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.09.unr = phi i32 [ %.09.ph, %.lr.ph.preheader ], [ %30, %.lr.ph.prol ]
  %.pn8.unr = phi ptr [ %.pn8.ph, %.lr.ph.preheader ], [ %.05.prol, %.lr.ph.prol ]
  %.067.unr = phi ptr [ %.067.ph, %.lr.ph.preheader ], [ %29, %.lr.ph.prol ]
  %31 = sub i32 %.09.ph, %2
  %32 = icmp ugt i32 %31, -8
  br i1 %32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.09 = phi i32 [ %49, %.lr.ph ], [ %.09.unr, %.lr.ph.prol.loopexit ]
  %.pn8 = phi ptr [ %.05.7, %.lr.ph ], [ %.pn8.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.067 = phi ptr [ %48, %.lr.ph ], [ %.067.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.05 = getelementptr inbounds i8, ptr %.pn8, i64 -1
  %33 = load i8, ptr %.05, align 1, !tbaa !7
  %34 = getelementptr inbounds nuw i8, ptr %.067, i64 1
  store i8 %33, ptr %.067, align 1, !tbaa !7
  %.05.1 = getelementptr inbounds i8, ptr %.pn8, i64 -2
  %35 = load i8, ptr %.05.1, align 1, !tbaa !7
  %36 = getelementptr inbounds nuw i8, ptr %.067, i64 2
  store i8 %35, ptr %34, align 1, !tbaa !7
  %.05.2 = getelementptr inbounds i8, ptr %.pn8, i64 -3
  %37 = load i8, ptr %.05.2, align 1, !tbaa !7
  %38 = getelementptr inbounds nuw i8, ptr %.067, i64 3
  store i8 %37, ptr %36, align 1, !tbaa !7
  %.05.3 = getelementptr inbounds i8, ptr %.pn8, i64 -4
  %39 = load i8, ptr %.05.3, align 1, !tbaa !7
  %40 = getelementptr inbounds nuw i8, ptr %.067, i64 4
  store i8 %39, ptr %38, align 1, !tbaa !7
  %.05.4 = getelementptr inbounds i8, ptr %.pn8, i64 -5
  %41 = load i8, ptr %.05.4, align 1, !tbaa !7
  %42 = getelementptr inbounds nuw i8, ptr %.067, i64 5
  store i8 %41, ptr %40, align 1, !tbaa !7
  %.05.5 = getelementptr inbounds i8, ptr %.pn8, i64 -6
  %43 = load i8, ptr %.05.5, align 1, !tbaa !7
  %44 = getelementptr inbounds nuw i8, ptr %.067, i64 6
  store i8 %43, ptr %42, align 1, !tbaa !7
  %.05.6 = getelementptr inbounds i8, ptr %.pn8, i64 -7
  %45 = load i8, ptr %.05.6, align 1, !tbaa !7
  %46 = getelementptr inbounds nuw i8, ptr %.067, i64 7
  store i8 %45, ptr %44, align 1, !tbaa !7
  %.05.7 = getelementptr inbounds i8, ptr %.pn8, i64 -8 ; 2 uses
  %47 = load i8, ptr %.05.7, align 1, !tbaa !7
  %48 = getelementptr inbounds nuw i8, ptr %.067, i64 8
  store i8 %47, ptr %46, align 1, !tbaa !7
  %49 = add nuw i32 %.09, 8                       ; 2 uses
  %exitcond.not.7 = icmp eq i32 %49, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %3
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %4, 24
  %n.vec = and i64 %4, 4294967264                 ; 6 uses
  %11 = trunc nuw i64 %n.vec to i32
  %12 = sub nsw i64 0, %n.vec
  %13 = getelementptr i8, ptr %5, i64 %12
  %14 = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %15 = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %5, i64 %15   ; 2 uses
  %next.gep14 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %16 = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !7, !alias.scope !22
  %wide.load15 = load <16 x i8>, ptr %16, align 1, !tbaa !7, !alias.scope !22
  %17 = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %18 = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse16 = shufflevector <16 x i8> %wide.load15, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %17, align 1, !tbaa !7, !alias.scope !25, !noalias !22
  store <16 x i8> %reverse16, ptr %18, align 1, !tbaa !7, !alias.scope !25, !noalias !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %4, 4294967288               ; 5 uses
  %20 = trunc nuw i64 %n.vec20 to i32
  %21 = sub nsw i64 0, %n.vec20
  %22 = getelementptr i8, ptr %5, i64 %21
  %23 = getelementptr i8, ptr %0, i64 %n.vec20
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = sub i64 0, %index21
  %next.gep22 = getelementptr i8, ptr %5, i64 %offset.idx
  %next.gep23 = getelementptr i8, ptr %0, i64 %index21
  %wide.load24 = load <8 x i8>, ptr %next.gep23, align 1, !tbaa !7, !alias.scope !22
  %24 = getelementptr inbounds i8, ptr %next.gep22, i64 -8
  %reverse25 = shufflevector <8 x i8> %wide.load24, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse25, ptr %24, align 1, !tbaa !7, !alias.scope !25, !noalias !22
  %index.next26 = add nuw i64 %index21, 8         ; 2 uses
  %25 = icmp eq i64 %index.next26, %n.vec20
  br i1 %25, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %n.vec20, %4
  br i1 %cmp.n27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %11, %vec.epilog.iter.check ], [ %20, %vec.epilog.middle.block ] ; 4 uses
  %.pn10.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %13, %vec.epilog.iter.check ], [ %22, %vec.epilog.middle.block ] ; 2 uses
  %.089.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %14, %vec.epilog.iter.check ], [ %23, %vec.epilog.middle.block ] ; 2 uses
  %26 = sub i32 %2, %.011.ph
  %xtraiter = and i32 %26, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i32 [ %29, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ]
  %.pn10.prol = phi ptr [ %.07.prol, %.lr.ph.prol ], [ %.pn10.ph, %.lr.ph.preheader ]
  %.089.prol = phi ptr [ %27, %.lr.ph.prol ], [ %.089.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.07.prol = getelementptr inbounds i8, ptr %.pn10.prol, i64 -1 ; 3 uses
  %27 = getelementptr inbounds nuw i8, ptr %.089.prol, i64 1 ; 2 uses
  %28 = load i8, ptr %.089.prol, align 1, !tbaa !7
  store i8 %28, ptr %.07.prol, align 1, !tbaa !7
  %29 = add nuw i32 %.011.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i32 [ %.011.ph, %.lr.ph.preheader ], [ %29, %.lr.ph.prol ]
  %.pn10.unr = phi ptr [ %.pn10.ph, %.lr.ph.preheader ], [ %.07.prol, %.lr.ph.prol ]
  %.089.unr = phi ptr [ %.089.ph, %.lr.ph.preheader ], [ %27, %.lr.ph.prol ]
  %30 = sub i32 %.011.ph, %2
  %31 = icmp ugt i32 %30, -8
  br i1 %31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %48, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.pn10 = phi ptr [ %.07.7, %.lr.ph ], [ %.pn10.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.089 = phi ptr [ %46, %.lr.ph ], [ %.089.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.07 = getelementptr inbounds i8, ptr %.pn10, i64 -1
  %32 = getelementptr inbounds nuw i8, ptr %.089, i64 1
  %33 = load i8, ptr %.089, align 1, !tbaa !7
  store i8 %33, ptr %.07, align 1, !tbaa !7
  %.07.1 = getelementptr inbounds i8, ptr %.pn10, i64 -2
  %34 = getelementptr inbounds nuw i8, ptr %.089, i64 2
  %35 = load i8, ptr %32, align 1, !tbaa !7
  store i8 %35, ptr %.07.1, align 1, !tbaa !7
  %.07.2 = getelementptr inbounds i8, ptr %.pn10, i64 -3
  %36 = getelementptr inbounds nuw i8, ptr %.089, i64 3
  %37 = load i8, ptr %34, align 1, !tbaa !7
  store i8 %37, ptr %.07.2, align 1, !tbaa !7
  %.07.3 = getelementptr inbounds i8, ptr %.pn10, i64 -4
  %38 = getelementptr inbounds nuw i8, ptr %.089, i64 4
  %39 = load i8, ptr %36, align 1, !tbaa !7
  store i8 %39, ptr %.07.3, align 1, !tbaa !7
  %.07.4 = getelementptr inbounds i8, ptr %.pn10, i64 -5
  %40 = getelementptr inbounds nuw i8, ptr %.089, i64 5
  %41 = load i8, ptr %38, align 1, !tbaa !7
  store i8 %41, ptr %.07.4, align 1, !tbaa !7
  %.07.5 = getelementptr inbounds i8, ptr %.pn10, i64 -6
  %42 = getelementptr inbounds nuw i8, ptr %.089, i64 6
  %43 = load i8, ptr %40, align 1, !tbaa !7
  store i8 %43, ptr %.07.5, align 1, !tbaa !7
  %.07.6 = getelementptr inbounds i8, ptr %.pn10, i64 -7
  %44 = getelementptr inbounds nuw i8, ptr %.089, i64 7
  %45 = load i8, ptr %42, align 1, !tbaa !7
  store i8 %45, ptr %.07.6, align 1, !tbaa !7
  %.07.7 = getelementptr inbounds i8, ptr %.pn10, i64 -8 ; 2 uses
  %46 = getelementptr inbounds nuw i8, ptr %.089, i64 8
  %47 = load i8, ptr %44, align 1, !tbaa !7
  store i8 %47, ptr %.07.7, align 1, !tbaa !7
  %48 = add nuw i32 %.011, 8                      ; 2 uses
  %exitcond.not.7 = icmp eq i32 %48, %2
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %3
end_hunk_2
