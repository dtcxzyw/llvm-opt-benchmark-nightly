begin_hunk_0
inline.NumInlined: 9
inline.NumDeleted: 1
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %8, 12
  %n.vec = and i64 %8, 8589934576                 ; 6 uses
  %12 = shl nuw nsw i64 %n.vec, 1
  %13 = getelementptr i8, ptr %1, i64 %12
  %14 = shl nuw nsw i64 %n.vec, 1
  %15 = getelementptr i8, ptr %2, i64 %14
  %.cast = trunc i64 %n.vec to i32
  %16 = sub i32 %3, %.cast
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %17 = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %17   ; 2 uses
  %18 = shl i64 %index, 1
  %next.gep6 = getelementptr i8, ptr %2, i64 %18  ; 2 uses
  %19 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !49
  %wide.load7 = load <8 x i16>, ptr %19, align 2, !tbaa !49
  %20 = zext <8 x i16> %wide.load to <8 x i32>
  %21 = zext <8 x i16> %wide.load7 to <8 x i32>
  %22 = lshr <8 x i32> %20, %broadcast.splat
  %23 = lshr <8 x i32> %21, %broadcast.splat
  %24 = trunc nuw <8 x i32> %22 to <8 x i16>
  %25 = trunc nuw <8 x i32> %23 to <8 x i16>
  %26 = getelementptr i8, ptr %next.gep6, i64 16
  store <8 x i16> %24, ptr %next.gep6, align 2, !tbaa !49
  store <8 x i16> %25, ptr %26, align 2, !tbaa !49
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !53

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %8, 8589934588               ; 5 uses
  %28 = shl nuw nsw i64 %n.vec11, 1
  %29 = getelementptr i8, ptr %1, i64 %28
  %30 = shl nuw nsw i64 %n.vec11, 1
  %31 = getelementptr i8, ptr %2, i64 %30
  %.cast12 = trunc i64 %n.vec11 to i32
  %32 = sub i32 %3, %.cast12
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = shl i64 %index15, 1
  %next.gep16 = getelementptr i8, ptr %1, i64 %offset.idx
  %offset.idx17 = shl i64 %index15, 1
  %next.gep18 = getelementptr i8, ptr %2, i64 %offset.idx17
  %wide.load19 = load <4 x i16>, ptr %next.gep16, align 2, !tbaa !49
  %33 = zext <4 x i16> %wide.load19 to <4 x i32>
  %34 = lshr <4 x i32> %33, %broadcast.splat14
  %35 = trunc nuw <4 x i32> %34 to <4 x i16>
  store <4 x i16> %35, ptr %next.gep18, align 2, !tbaa !49
  %index.next20 = add nuw i64 %index15, 4         ; 2 uses
  %36 = icmp eq i64 %index.next20, %n.vec11
  br i1 %36, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %8, %n.vec11
  br i1 %cmp.n21, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04.ph = phi ptr [ %1, %iter.check ], [ %13, %vec.epilog.iter.check ], [ %29, %vec.epilog.middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %iter.check ], [ %15, %vec.epilog.iter.check ], [ %31, %vec.epilog.middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %iter.check ], [ %16, %vec.epilog.iter.check ], [ %32, %vec.epilog.middle.block ] ; 4 uses
  %37 = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04.prol = phi ptr [ %38, %vec.epilog.scalar.ph.prol ], [ %.04.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %43, %vec.epilog.scalar.ph.prol ], [ %.03.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %44, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %38 = getelementptr inbounds nuw i8, ptr %.04.prol, i64 2 ; 2 uses
  %39 = load i16, ptr %.04.prol, align 2, !tbaa !49
  %40 = zext i16 %39 to i32
  %41 = lshr i32 %40, %5
  %42 = trunc nuw i32 %41 to i16
  %43 = getelementptr inbounds nuw i8, ptr %.03.prol, i64 2 ; 2 uses
  store i16 %42, ptr %.03.prol, align 2, !tbaa !49
  %44 = add i32 %.0.prol, -1                      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !55

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %vec.epilog.scalar.ph.preheader ], [ %38, %vec.epilog.scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %vec.epilog.scalar.ph.preheader ], [ %43, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %44, %vec.epilog.scalar.ph.prol ]
  %45 = icmp ult i32 %37, 3
  br i1 %45, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.04 = phi ptr [ %64, %vec.epilog.scalar.ph ], [ %.04.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %69, %vec.epilog.scalar.ph ], [ %.03.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %70, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %46 = getelementptr inbounds nuw i8, ptr %.04, i64 2
  %47 = load i16, ptr %.04, align 2, !tbaa !49
  %48 = zext i16 %47 to i32
  %49 = lshr i32 %48, %5
  %50 = trunc nuw i32 %49 to i16
  %51 = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i16 %50, ptr %.03, align 2, !tbaa !49
  %52 = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %53 = load i16, ptr %46, align 2, !tbaa !49
  %54 = zext i16 %53 to i32
  %55 = lshr i32 %54, %5
  %56 = trunc nuw i32 %55 to i16
  %57 = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i16 %56, ptr %51, align 2, !tbaa !49
  %58 = getelementptr inbounds nuw i8, ptr %.04, i64 6
  %59 = load i16, ptr %52, align 2, !tbaa !49
  %60 = zext i16 %59 to i32
  %61 = lshr i32 %60, %5
  %62 = trunc nuw i32 %61 to i16
  %63 = getelementptr inbounds nuw i8, ptr %.03, i64 6
  store i16 %62, ptr %57, align 2, !tbaa !49
  %64 = getelementptr inbounds nuw i8, ptr %.04, i64 8
  %65 = load i16, ptr %58, align 2, !tbaa !49
  %66 = zext i16 %65 to i32
  %67 = lshr i32 %66, %5
  %68 = trunc nuw i32 %67 to i16
  %69 = getelementptr inbounds nuw i8, ptr %.03, i64 8
  store i16 %68, ptr %63, align 2, !tbaa !49
  %70 = add i32 %.0, -4                           ; 2 uses
  %.not.3 = icmp eq i32 %70, 0
  br i1 %.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !57

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
end_hunk_1
