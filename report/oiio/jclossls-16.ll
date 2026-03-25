begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %8, 12
  %n.vec = and i64 %8, 8589934576                 ; 6 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %12 = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %12   ; 2 uses
  %13 = shl i64 %index, 1
  %next.gep6 = getelementptr i8, ptr %2, i64 %13  ; 2 uses
  %14 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !49
  %wide.load7 = load <8 x i16>, ptr %14, align 2, !tbaa !49
  %15 = zext <8 x i16> %wide.load to <8 x i32>
  %16 = zext <8 x i16> %wide.load7 to <8 x i32>
  %17 = lshr <8 x i32> %15, %broadcast.splat
  %18 = lshr <8 x i32> %16, %broadcast.splat
  %19 = trunc nuw <8 x i32> %17 to <8 x i16>
  %20 = trunc nuw <8 x i32> %18 to <8 x i16>
  %21 = getelementptr i8, ptr %next.gep6, i64 16
  store <8 x i16> %19, ptr %next.gep6, align 2, !tbaa !49
  store <8 x i16> %20, ptr %21, align 2, !tbaa !49
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %23 = shl nuw nsw i64 %n.vec, 1
  %ind.end = getelementptr i8, ptr %1, i64 %23
  %24 = shl nuw nsw i64 %n.vec, 1
  %ind.end21 = getelementptr i8, ptr %2, i64 %24
  %.cast22 = trunc i64 %n.vec to i32
  %ind.end23 = sub i32 %3, %.cast22
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %8, 8589934588                ; 5 uses
  %25 = shl nuw nsw i64 %n.vec9, 1
  %26 = getelementptr i8, ptr %1, i64 %25
  %27 = shl nuw nsw i64 %n.vec9, 1
  %28 = getelementptr i8, ptr %2, i64 %27
  %.cast = trunc i64 %n.vec9 to i32
  %29 = sub i32 %3, %.cast
  %broadcast.splatinsert10 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat11 = shufflevector <4 x i32> %broadcast.splatinsert10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = shl i64 %index12, 1
  %next.gep13 = getelementptr i8, ptr %1, i64 %offset.idx
  %offset.idx14 = shl i64 %index12, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %offset.idx14
  %wide.load16 = load <4 x i16>, ptr %next.gep13, align 2, !tbaa !49
  %30 = zext <4 x i16> %wide.load16 to <4 x i32>
  %31 = lshr <4 x i32> %30, %broadcast.splat11
  %32 = trunc nuw <4 x i32> %31 to <4 x i16>
  store <4 x i16> %32, ptr %next.gep15, align 2, !tbaa !49
  %index.next17 = add nuw i64 %index12, 4         ; 2 uses
  %33 = icmp eq i64 %index.next17, %n.vec9
  br i1 %33, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %8, %n.vec9
  br i1 %cmp.n18, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04.ph = phi ptr [ %1, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %26, %vec.epilog.middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %iter.check ], [ %ind.end21, %vec.epilog.iter.check ], [ %28, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %iter.check ], [ %ind.end23, %vec.epilog.iter.check ], [ %29, %vec.epilog.middle.block ] ; 4 uses
  %34 = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04.prol = phi ptr [ %35, %vec.epilog.scalar.ph.prol ], [ %.04.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %40, %vec.epilog.scalar.ph.prol ], [ %.03.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %41, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %35 = getelementptr inbounds nuw i8, ptr %.04.prol, i64 2 ; 2 uses
  %36 = load i16, ptr %.04.prol, align 2, !tbaa !49
  %37 = zext i16 %36 to i32
  %38 = lshr i32 %37, %5
  %39 = trunc nuw i32 %38 to i16
  %40 = getelementptr inbounds nuw i8, ptr %.03.prol, i64 2 ; 2 uses
  store i16 %39, ptr %.03.prol, align 2, !tbaa !49
  %41 = add i32 %.0.prol, -1                      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !55

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %vec.epilog.scalar.ph.preheader ], [ %35, %vec.epilog.scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %vec.epilog.scalar.ph.preheader ], [ %40, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %41, %vec.epilog.scalar.ph.prol ]
  %42 = icmp ult i32 %34, 3
  br i1 %42, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.04 = phi ptr [ %61, %vec.epilog.scalar.ph ], [ %.04.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %66, %vec.epilog.scalar.ph ], [ %.03.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %67, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %43 = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %44 = load i16, ptr %.04, align 2, !tbaa !49
  %45 = zext i16 %44 to i32
  %46 = lshr i32 %45, %5
  %47 = trunc nuw i32 %46 to i16
  %48 = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i16 %47, ptr %.03, align 2, !tbaa !49
  %49 = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %50 = load i16, ptr %43, align 2, !tbaa !49
  %51 = zext i16 %50 to i32
  %52 = lshr i32 %51, %5
  %53 = trunc nuw i32 %52 to i16
  %54 = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i16 %53, ptr %48, align 2, !tbaa !49
  %55 = getelementptr inbounds nuw i8, ptr %.04, i64 6
  %56 = load i16, ptr %49, align 2, !tbaa !49
  %57 = zext i16 %56 to i32
  %58 = lshr i32 %57, %5
  %59 = trunc nuw i32 %58 to i16
  %60 = getelementptr inbounds nuw i8, ptr %.03, i64 6
  store i16 %59, ptr %54, align 2, !tbaa !49
  %61 = getelementptr inbounds nuw i8, ptr %.04, i64 8
  %62 = load i16, ptr %55, align 2, !tbaa !49
  %63 = zext i16 %62 to i32
  %64 = lshr i32 %63, %5
  %65 = trunc nuw i32 %64 to i16
  %66 = getelementptr inbounds nuw i8, ptr %.03, i64 8
  store i16 %65, ptr %60, align 2, !tbaa !49
  %67 = add i32 %.0, -4                           ; 2 uses
  %.not.3 = icmp eq i32 %67, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !57

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
end_hunk_1
