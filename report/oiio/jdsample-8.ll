begin_hunk_0
  br label %10

10:                                               ; preds = %.lr.ph22, %._crit_edge
  %11 = phi i32 [ %7, %.lr.ph22 ], [ %46, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %13 = load ptr, ptr %12, align 8, !tbaa !77     ; 11 uses
end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %25, 12
  %n.vec = and i64 %25, -16                       ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %19, i64 %index ; 2 uses
  %32 = shl i64 %index, 1                         ; 2 uses
  %next.gep30 = getelementptr i8, ptr %13, i64 %32
  %33 = getelementptr i8, ptr %13, i64 %32
  %next.gep31 = getelementptr i8, ptr %33, i64 16
  %34 = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !88
  %wide.load32 = load <8 x i8>, ptr %34, align 1, !tbaa !39, !alias.scope !88
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep30, align 1, !tbaa !39, !alias.scope !91, !noalias !88
  %interleaved.vec33 = shufflevector <8 x i8> %wide.load32, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec33, ptr %next.gep31, align 1, !tbaa !39, !alias.scope !91, !noalias !88
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %35 = icmp eq i64 %index.next, %n.vec
  br i1 %35, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %25, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %19, i64 %n.vec
  %36 = shl i64 %n.vec, 1
  %ind.end44 = getelementptr i8, ptr %13, i64 %36
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %25, -4                      ; 4 uses
  %37 = getelementptr i8, ptr %19, i64 %n.vec35
  %38 = shl i64 %n.vec35, 1
  %39 = getelementptr i8, ptr %13, i64 %38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %next.gep37 = getelementptr i8, ptr %19, i64 %index36
  %offset.idx = shl i64 %index36, 1
  %next.gep38 = getelementptr i8, ptr %13, i64 %offset.idx
  %wide.load39 = load <4 x i8>, ptr %next.gep37, align 1, !tbaa !39, !alias.scope !88
  %interleaved.vec40 = shufflevector <4 x i8> %wide.load39, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec40, ptr %next.gep38, align 1, !tbaa !39, !alias.scope !91, !noalias !88
  %index.next41 = add nuw i64 %index36, 4         ; 2 uses
  %40 = icmp eq i64 %index.next41, %n.vec35
  br i1 %40, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %25, %n.vec35
  br i1 %cmp.n42, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01619.ph = phi ptr [ %19, %iter.check ], [ %19, %vector.memcheck ], [ %ind.end, %vec.epilog.iter.check ], [ %37, %vec.epilog.middle.block ]
  %.01718.ph = phi ptr [ %13, %iter.check ], [ %13, %vector.memcheck ], [ %ind.end44, %vec.epilog.iter.check ], [ %39, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01619 = phi ptr [ %41, %.lr.ph ], [ %.01619.ph, %.lr.ph.preheader ] ; 2 uses
  %.01718 = phi ptr [ %44, %.lr.ph ], [ %.01718.ph, %.lr.ph.preheader ] ; 3 uses
  %41 = getelementptr inbounds nuw i8, ptr %.01619, i64 1
  %42 = load i8, ptr %.01619, align 1, !tbaa !39  ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %.01718, i64 1
  store i8 %42, ptr %.01718, align 1, !tbaa !39
  %44 = getelementptr inbounds nuw i8, ptr %.01718, i64 2 ; 2 uses
  store i8 %42, ptr %43, align 1, !tbaa !39
  %45 = icmp ult ptr %44, %17
  br i1 %45, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %6, align 4, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %46 = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %11, %10 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %indvars.iv.next, %47
  br i1 %48, label %10, label %._crit_edge23, !llvm.loop !97

._crit_edge23:                                    ; preds = %._crit_edge, %4
  ret void
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %24, 12
  %n.vec = and i64 %24, -16                       ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %18, i64 %index ; 2 uses
  %31 = shl i64 %index, 1                         ; 2 uses
  %next.gep42 = getelementptr i8, ptr %12, i64 %31
  %32 = getelementptr i8, ptr %12, i64 %31
  %next.gep43 = getelementptr i8, ptr %32, i64 16
  %33 = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !39, !alias.scope !122
  %wide.load44 = load <8 x i8>, ptr %33, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec, ptr %next.gep42, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %interleaved.vec45 = shufflevector <8 x i8> %wide.load44, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %interleaved.vec45, ptr %next.gep43, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %24, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %18, i64 %n.vec
  %35 = shl i64 %n.vec, 1
  %ind.end56 = getelementptr i8, ptr %12, i64 %35
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %24, -4                      ; 4 uses
  %36 = getelementptr i8, ptr %18, i64 %n.vec47
  %37 = shl i64 %n.vec47, 1
  %38 = getelementptr i8, ptr %12, i64 %37
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %18, i64 %index48
  %offset.idx = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %12, i64 %offset.idx
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !39, !alias.scope !122
  %interleaved.vec52 = shufflevector <4 x i8> %wide.load51, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec52, ptr %next.gep50, align 1, !tbaa !39, !alias.scope !125, !noalias !122
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %39 = icmp eq i64 %index.next53, %n.vec47
  br i1 %39, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %24, %n.vec47
  br i1 %cmp.n54, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02326.ph = phi ptr [ %18, %iter.check ], [ %18, %vector.memcheck ], [ %ind.end, %vec.epilog.iter.check ], [ %36, %vec.epilog.middle.block ]
  %.02425.ph = phi ptr [ %12, %iter.check ], [ %12, %vector.memcheck ], [ %ind.end56, %vec.epilog.iter.check ], [ %38, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02326 = phi ptr [ %40, %.lr.ph ], [ %.02326.ph, %.lr.ph.preheader ] ; 2 uses
  %.02425 = phi ptr [ %43, %.lr.ph ], [ %.02425.ph, %.lr.ph.preheader ] ; 3 uses
  %40 = getelementptr inbounds nuw i8, ptr %.02326, i64 1
  %41 = load i8, ptr %.02326, align 1, !tbaa !39  ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %.02425, i64 1
  store i8 %41, ptr %.02425, align 1, !tbaa !39
  %43 = getelementptr inbounds nuw i8, ptr %.02425, i64 2 ; 2 uses
  store i8 %41, ptr %42, align 1, !tbaa !39
  %44 = icmp ult ptr %43, %16
  br i1 %44, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i32, ptr %9, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %10
  %45 = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %10 ]
  %46 = or disjoint i32 %indvars34, 1
  tail call void @jcopy_sample_rows(ptr noundef nonnull %5, i32 noundef %indvars34, ptr noundef nonnull %5, i32 noundef %46, i32 noundef 1, i32 noundef %45) #7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %47 = load i32, ptr %6, align 4, !tbaa !61
  %48 = trunc nuw i64 %indvars.iv.next to i32
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %10, label %._crit_edge31, !llvm.loop !130

._crit_edge31:                                    ; preds = %._crit_edge, %4
  ret void
end_hunk_2
