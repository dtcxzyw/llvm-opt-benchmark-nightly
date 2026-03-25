begin_hunk_0
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %11, 12
  %n.vec = and i64 %11, 4294967280                ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %16 = shl i64 %index, 1                         ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %16
  %17 = getelementptr i8, ptr %5, i64 %16
  %next.gep21 = getelementptr i8, ptr %17, i64 16
  %18 = shl i64 %index, 1
  %next.gep22 = getelementptr i8, ptr %10, i64 %18 ; 2 uses
  %19 = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep22, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %wide.load23 = load <8 x i16>, ptr %19, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %20 = lshr <8 x i16> %wide.load, splat (i16 8)
  %21 = lshr <8 x i16> %wide.load23, splat (i16 8)
  %22 = shufflevector <8 x i16> %20, <8 x i16> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i16> %22 to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %23 = shufflevector <8 x i16> %21, <8 x i16> %wide.load23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec24 = trunc <16 x i16> %23 to <16 x i8>
  store <16 x i8> %interleaved.vec24, ptr %next.gep21, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %11
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %25 = shl nuw nsw i64 %n.vec, 1
  %ind.end = getelementptr i8, ptr %5, i64 %25
  %.cast37 = trunc nuw i64 %n.vec to i32
  %ind.end38 = sub i32 %7, %.cast37
  %26 = shl nuw nsw i64 %n.vec, 1
  %ind.end39 = getelementptr i8, ptr %10, i64 %26
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %11, 4294967292              ; 5 uses
  %27 = shl nuw nsw i64 %n.vec26, 1
  %28 = getelementptr i8, ptr %5, i64 %27
  %.cast = trunc nuw i64 %n.vec26 to i32
  %29 = sub i32 %7, %.cast
  %30 = shl nuw nsw i64 %n.vec26, 1
  %31 = getelementptr i8, ptr %10, i64 %30
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = shl i64 %index27, 1
  %next.gep28 = getelementptr i8, ptr %5, i64 %offset.idx
  %offset.idx29 = shl i64 %index27, 1
  %next.gep30 = getelementptr i8, ptr %10, i64 %offset.idx29
  %wide.load31 = load <4 x i16>, ptr %next.gep30, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %32 = lshr <4 x i16> %wide.load31, splat (i16 8)
  %33 = shufflevector <4 x i16> %32, <4 x i16> %wide.load31, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec32 = trunc <8 x i16> %33 to <8 x i8>
  store <8 x i8> %interleaved.vec32, ptr %next.gep28, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %index.next33 = add nuw i64 %index27, 4         ; 2 uses
  %34 = icmp eq i64 %index.next33, %n.vec26
  br i1 %34, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %n.vec26, %11
  br i1 %cmp.n34, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %ind.end, %vec.epilog.iter.check ], [ %28, %vec.epilog.middle.block ] ; 2 uses
  %.01317.ph = phi i32 [ %7, %iter.check ], [ %7, %vector.memcheck ], [ %ind.end38, %vec.epilog.iter.check ], [ %29, %vec.epilog.middle.block ] ; 4 uses
  %.01416.ph = phi ptr [ %10, %iter.check ], [ %10, %vector.memcheck ], [ %ind.end39, %vec.epilog.iter.check ], [ %31, %vec.epilog.middle.block ] ; 2 uses
  %35 = add i32 %.01317.ph, -1
  %xtraiter = and i32 %.01317.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.018.prol = phi ptr [ %42, %.lr.ph.prol ], [ %.018.ph, %.lr.ph.preheader ] ; 3 uses
  %.01317.prol = phi i32 [ %43, %.lr.ph.prol ], [ %.01317.ph, %.lr.ph.preheader ]
  %.01416.prol = phi ptr [ %36, %.lr.ph.prol ], [ %.01416.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %36 = getelementptr inbounds nuw i8, ptr %.01416.prol, i64 2 ; 2 uses
  %37 = load i16, ptr %.01416.prol, align 2, !tbaa !66 ; 2 uses
  %38 = lshr i16 %37, 8
  %39 = trunc nuw i16 %38 to i8
  %40 = getelementptr inbounds nuw i8, ptr %.018.prol, i64 1
  store i8 %39, ptr %.018.prol, align 1, !tbaa !37
  %41 = trunc i16 %37 to i8
  %42 = getelementptr inbounds nuw i8, ptr %.018.prol, i64 2 ; 2 uses
  store i8 %41, ptr %40, align 1, !tbaa !37
  %43 = add i32 %.01317.prol, -1                  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !89

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.018.unr = phi ptr [ %.018.ph, %.lr.ph.preheader ], [ %42, %.lr.ph.prol ]
  %.01317.unr = phi i32 [ %.01317.ph, %.lr.ph.preheader ], [ %43, %.lr.ph.prol ]
  %.01416.unr = phi ptr [ %.01416.ph, %.lr.ph.preheader ], [ %36, %.lr.ph.prol ]
  %44 = icmp ult i32 %35, 3
  br i1 %44, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.018 = phi ptr [ %72, %.lr.ph ], [ %.018.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01317 = phi i32 [ %73, %.lr.ph ], [ %.01317.unr, %.lr.ph.prol.loopexit ]
  %.01416 = phi ptr [ %66, %.lr.ph ], [ %.01416.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %45 = getelementptr inbounds nuw i8, ptr %.01416, i64 2
  %46 = load i16, ptr %.01416, align 2, !tbaa !66 ; 2 uses
  %47 = lshr i16 %46, 8
  %48 = trunc nuw i16 %47 to i8
  %49 = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %48, ptr %.018, align 1, !tbaa !37
  %50 = trunc i16 %46 to i8
  %51 = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %50, ptr %49, align 1, !tbaa !37
  %52 = getelementptr inbounds nuw i8, ptr %.01416, i64 4
  %53 = load i16, ptr %45, align 2, !tbaa !66     ; 2 uses
  %54 = lshr i16 %53, 8
  %55 = trunc nuw i16 %54 to i8
  %56 = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %55, ptr %51, align 1, !tbaa !37
  %57 = trunc i16 %53 to i8
  %58 = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 %57, ptr %56, align 1, !tbaa !37
  %59 = getelementptr inbounds nuw i8, ptr %.01416, i64 6
  %60 = load i16, ptr %52, align 2, !tbaa !66     ; 2 uses
  %61 = lshr i16 %60, 8
  %62 = trunc nuw i16 %61 to i8
  %63 = getelementptr inbounds nuw i8, ptr %.018, i64 5
  store i8 %62, ptr %58, align 1, !tbaa !37
  %64 = trunc i16 %60 to i8
  %65 = getelementptr inbounds nuw i8, ptr %.018, i64 6
  store i8 %64, ptr %63, align 1, !tbaa !37
  %66 = getelementptr inbounds nuw i8, ptr %.01416, i64 8
  %67 = load i16, ptr %59, align 2, !tbaa !66     ; 2 uses
  %68 = lshr i16 %67, 8
  %69 = trunc nuw i16 %68 to i8
  %70 = getelementptr inbounds nuw i8, ptr %.018, i64 7
  store i8 %69, ptr %65, align 1, !tbaa !37
  %71 = trunc i16 %67 to i8
  %72 = getelementptr inbounds nuw i8, ptr %.018, i64 8
  store i8 %71, ptr %70, align 1, !tbaa !37
  %73 = add i32 %.01317, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %73, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
end_hunk_0
begin_hunk_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  %74 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %5, %3 ]
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %76 = load i64, ptr %75, align 8, !tbaa !50
  %77 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %78 = load ptr, ptr %77, align 8, !tbaa !60
  %79 = tail call i64 @fwrite(ptr noundef %74, i64 noundef 1, i64 noundef %76, ptr noundef %78)
  ret void
}

end_hunk_1
