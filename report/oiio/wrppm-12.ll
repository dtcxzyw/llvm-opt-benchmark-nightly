begin_hunk_0
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %11, 12
  %n.vec = and i64 %11, 4294967280                ; 6 uses
  %16 = shl nuw nsw i64 %n.vec, 1
  %17 = getelementptr i8, ptr %5, i64 %16
  %.cast.a = trunc nuw i64 %n.vec to i32
  %18 = sub i32 %7, %.cast.a
  %19 = shl nuw nsw i64 %n.vec, 1
  %20 = getelementptr i8, ptr %10, i64 %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %21 = shl i64 %index, 1                         ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %21
  %22 = getelementptr i8, ptr %5, i64 %21
  %next.gep21 = getelementptr i8, ptr %22, i64 16
  %23 = shl i64 %index, 1
  %next.gep22 = getelementptr i8, ptr %10, i64 %23 ; 2 uses
  %24 = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep22, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %wide.load23 = load <8 x i16>, ptr %24, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %25 = lshr <8 x i16> %wide.load, splat (i16 8)
  %26 = lshr <8 x i16> %wide.load23, splat (i16 8)
  %27 = shufflevector <8 x i16> %25, <8 x i16> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc <16 x i16> %27 to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %28 = shufflevector <8 x i16> %26, <8 x i16> %wide.load23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec24 = trunc <16 x i16> %28 to <16 x i8>
  store <16 x i8> %interleaved.vec24, ptr %next.gep21, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %11
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %11, 4294967292              ; 5 uses
  %30 = shl nuw nsw i64 %n.vec26, 1
  %31 = getelementptr i8, ptr %5, i64 %30
  %.cast = trunc nuw i64 %n.vec26 to i32
  %32 = sub i32 %7, %.cast
  %33 = shl nuw nsw i64 %n.vec26, 1
  %34 = getelementptr i8, ptr %10, i64 %33
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = shl i64 %index30, 1
  %next.gep31 = getelementptr i8, ptr %5, i64 %offset.idx
  %offset.idx32 = shl i64 %index30, 1
  %next.gep33 = getelementptr i8, ptr %10, i64 %offset.idx32
  %wide.load34 = load <4 x i16>, ptr %next.gep33, align 2, !tbaa !66, !alias.scope !81 ; 2 uses
  %35 = lshr <4 x i16> %wide.load34, splat (i16 8)
  %36 = shufflevector <4 x i16> %35, <4 x i16> %wide.load34, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec35 = trunc <8 x i16> %36 to <8 x i8>
  store <8 x i8> %interleaved.vec35, ptr %next.gep31, align 1, !tbaa !37, !alias.scope !84, !noalias !81
  %index.next36 = add nuw i64 %index30, 4         ; 2 uses
  %37 = icmp eq i64 %index.next36, %n.vec26
  br i1 %37, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec26, %11
  br i1 %cmp.n37, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %17, %vec.epilog.iter.check ], [ %31, %vec.epilog.middle.block ] ; 2 uses
  %.01317.ph = phi i32 [ %7, %iter.check ], [ %7, %vector.memcheck ], [ %18, %vec.epilog.iter.check ], [ %32, %vec.epilog.middle.block ] ; 4 uses
  %.01416.ph = phi ptr [ %10, %iter.check ], [ %10, %vector.memcheck ], [ %20, %vec.epilog.iter.check ], [ %34, %vec.epilog.middle.block ] ; 2 uses
  %38 = add i32 %.01317.ph, -1
  %xtraiter = and i32 %.01317.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.018.prol = phi ptr [ %45, %.lr.ph.prol ], [ %.018.ph, %.lr.ph.preheader ] ; 3 uses
  %.01317.prol = phi i32 [ %46, %.lr.ph.prol ], [ %.01317.ph, %.lr.ph.preheader ]
  %.01416.prol = phi ptr [ %39, %.lr.ph.prol ], [ %.01416.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %39 = getelementptr inbounds nuw i8, ptr %.01416.prol, i64 2 ; 2 uses
  %40 = load i16, ptr %.01416.prol, align 2, !tbaa !66 ; 2 uses
  %41 = lshr i16 %40, 8
  %42 = trunc nuw i16 %41 to i8
  %43 = getelementptr inbounds nuw i8, ptr %.018.prol, i64 1
  store i8 %42, ptr %.018.prol, align 1, !tbaa !37
  %44 = trunc i16 %40 to i8
  %45 = getelementptr inbounds nuw i8, ptr %.018.prol, i64 2 ; 2 uses
  store i8 %44, ptr %43, align 1, !tbaa !37
  %46 = add i32 %.01317.prol, -1                  ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !89

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.018.unr = phi ptr [ %.018.ph, %.lr.ph.preheader ], [ %45, %.lr.ph.prol ]
  %.01317.unr = phi i32 [ %.01317.ph, %.lr.ph.preheader ], [ %46, %.lr.ph.prol ]
  %.01416.unr = phi ptr [ %.01416.ph, %.lr.ph.preheader ], [ %39, %.lr.ph.prol ]
  %47 = icmp ult i32 %38, 3
  br i1 %47, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.018 = phi ptr [ %75, %.lr.ph ], [ %.018.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01317 = phi i32 [ %76, %.lr.ph ], [ %.01317.unr, %.lr.ph.prol.loopexit ]
  %.01416 = phi ptr [ %69, %.lr.ph ], [ %.01416.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %48 = getelementptr inbounds nuw i8, ptr %.01416, i64 2
  %49 = load i16, ptr %.01416, align 2, !tbaa !66 ; 2 uses
  %50 = lshr i16 %49, 8
  %51 = trunc nuw i16 %50 to i8
  %52 = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %51, ptr %.018, align 1, !tbaa !37
  %53 = trunc i16 %49 to i8
  %54 = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %53, ptr %52, align 1, !tbaa !37
  %55 = getelementptr inbounds nuw i8, ptr %.01416, i64 4
  %56 = load i16, ptr %48, align 2, !tbaa !66     ; 2 uses
  %57 = lshr i16 %56, 8
  %58 = trunc nuw i16 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %58, ptr %54, align 1, !tbaa !37
  %60 = trunc i16 %56 to i8
  %61 = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 %60, ptr %59, align 1, !tbaa !37
  %62 = getelementptr inbounds nuw i8, ptr %.01416, i64 6
  %63 = load i16, ptr %55, align 2, !tbaa !66     ; 2 uses
  %64 = lshr i16 %63, 8
  %65 = trunc nuw i16 %64 to i8
  %66 = getelementptr inbounds nuw i8, ptr %.018, i64 5
  store i8 %65, ptr %61, align 1, !tbaa !37
  %67 = trunc i16 %63 to i8
  %68 = getelementptr inbounds nuw i8, ptr %.018, i64 6
  store i8 %67, ptr %66, align 1, !tbaa !37
  %69 = getelementptr inbounds nuw i8, ptr %.01416, i64 8
  %70 = load i16, ptr %62, align 2, !tbaa !66     ; 2 uses
  %71 = lshr i16 %70, 8
  %72 = trunc nuw i16 %71 to i8
  %73 = getelementptr inbounds nuw i8, ptr %.018, i64 7
  store i8 %72, ptr %68, align 1, !tbaa !37
  %74 = trunc i16 %70 to i8
  %75 = getelementptr inbounds nuw i8, ptr %.018, i64 8
  store i8 %74, ptr %73, align 1, !tbaa !37
  %76 = add i32 %.01317, -4                       ; 2 uses
  %.not.3 = icmp eq i32 %76, 0
  br i1 %.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !91

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
end_hunk_0
begin_hunk_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  %77 = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %5, %3 ]
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %79 = load i64, ptr %78, align 8, !tbaa !50
  %80 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = tail call i64 @fwrite(ptr noundef %77, i64 noundef 1, i64 noundef %79, ptr noundef %81)
  ret void
}

end_hunk_1
