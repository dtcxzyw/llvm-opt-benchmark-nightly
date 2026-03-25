begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 8976796 ; 11 uses
  br label %iter.check106

iter.check106:                                    ; preds = %middle.block117, %43
  %indvars.iv.i = phi i64 [ 0, %43 ], [ %indvars.iv.next.i, %middle.block117 ] ; 8 uses
  %50 = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i
  %51 = load i32, ptr %50, align 4, !tbaa !3      ; 6 uses
  %52 = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i
end_hunk_1
begin_hunk_2
  %55 = shl nuw i32 1, %54                        ; 5 uses
  %56 = add i32 %55, %51
  %57 = trunc i64 %indvars.iv.i to i8             ; 11 uses
  %min.iters.check104 = icmp samesign ult i64 %indvars.iv.i, 6
  %58 = sub i32 0, %55
  %59 = icmp ugt i32 %51, %58
  %or.cond183 = select i1 %min.iters.check104, i1 true, i1 %59
  br i1 %or.cond183, label %vec.epilog.scalar.ph120.preheader, label %vector.main.loop.iter.check108

vec.epilog.scalar.ph120.preheader:                ; preds = %iter.check106
  %xtraiter196 = and i32 %55, 7
  %60 = add nsw i64 %indvars.iv.i, -8
  %lcmp.mod197.not = icmp ult i64 %60, 22
  br i1 %lcmp.mod197.not, label %vec.epilog.scalar.ph120.prol.loopexit, label %vec.epilog.scalar.ph120.prol

vec.epilog.scalar.ph120.prol:                     ; preds = %vec.epilog.scalar.ph120.preheader, %vec.epilog.scalar.ph120.prol
  %.09.i.prol = phi i32 [ %63, %vec.epilog.scalar.ph120.prol ], [ %51, %vec.epilog.scalar.ph120.preheader ] ; 2 uses
  %prol.iter198 = phi i32 [ %prol.iter198.next, %vec.epilog.scalar.ph120.prol ], [ 0, %vec.epilog.scalar.ph120.preheader ]
  %61 = zext i32 %.09.i.prol to i64
  %62 = getelementptr inbounds nuw i8, ptr %49, i64 %61
  store i8 %57, ptr %62, align 1, !tbaa !20
  %63 = add i32 %.09.i.prol, 1                    ; 2 uses
  %prol.iter198.next = add i32 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i32 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %vec.epilog.scalar.ph120.prol.loopexit, label %vec.epilog.scalar.ph120.prol, !llvm.loop !21

vec.epilog.scalar.ph120.prol.loopexit:            ; preds = %vec.epilog.scalar.ph120.prol, %vec.epilog.scalar.ph120.preheader
  %.09.i.unr = phi i32 [ %51, %vec.epilog.scalar.ph120.preheader ], [ %63, %vec.epilog.scalar.ph120.prol ]
  %64 = icmp samesign ult i64 %indvars.iv.i, 8
  br i1 %64, label %middle.block117, label %vec.epilog.scalar.ph120

vector.main.loop.iter.check108:                   ; preds = %iter.check106
  %min.iters.check107 = icmp samesign ult i64 %indvars.iv.i, 12
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check108
  %n.vec111 = and i32 %55, -32
  %broadcast.splatinsert112 = insertelement <16 x i8> poison, i8 %57, i64 0
  %broadcast.splat113 = shufflevector <16 x i8> %broadcast.splatinsert112, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph109
  %index115 = phi i32 [ 0, %vector.ph109 ], [ %index.next116, %vector.body114 ] ; 2 uses
  %65 = add i32 %51, %index115
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %49, i64 %66 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 16
  store <16 x i8> %broadcast.splat113, ptr %67, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat113, ptr %68, align 1, !tbaa !20
  %index.next116 = add nuw i32 %index115, 32      ; 2 uses
  %69 = icmp eq i32 %index.next116, %n.vec111
  br i1 %69, label %middle.block117, label %vector.body114, !llvm.loop !23

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check108
  %n.vec125 = and i32 %55, -4
  %broadcast.splatinsert126 = insertelement <4 x i8> poison, i8 %57, i64 0
  %broadcast.splat127 = shufflevector <4 x i8> %broadcast.splatinsert126, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph123
  %index129 = phi i32 [ 0, %vec.epilog.ph123 ], [ %index.next131, %vec.epilog.vector.body128 ] ; 2 uses
  %offset.idx130 = add i32 %51, %index129
  %70 = zext i32 %offset.idx130 to i64
  %71 = getelementptr inbounds nuw i8, ptr %49, i64 %70
  store <4 x i8> %broadcast.splat127, ptr %71, align 1, !tbaa !20
  %index.next131 = add nuw i32 %index129, 4       ; 2 uses
  %72 = icmp eq i32 %index.next131, %n.vec125
  br i1 %72, label %middle.block117, label %vec.epilog.vector.body128, !llvm.loop !27

vec.epilog.scalar.ph120:                          ; preds = %vec.epilog.scalar.ph120.prol.loopexit, %vec.epilog.scalar.ph120
  %.09.i = phi i32 [ %96, %vec.epilog.scalar.ph120 ], [ %.09.i.unr, %vec.epilog.scalar.ph120.prol.loopexit ] ; 9 uses
  %73 = zext i32 %.09.i to i64
  %74 = getelementptr inbounds nuw i8, ptr %49, i64 %73
  store i8 %57, ptr %74, align 1, !tbaa !20
end_hunk_2
begin_hunk_3
  store i8 %57, ptr %95, align 1, !tbaa !20
  %96 = add i32 %.09.i, 8                         ; 2 uses
  %.not.i.7 = icmp eq i32 %96, %56
  br i1 %.not.i.7, label %middle.block117, label %vec.epilog.scalar.ph120, !llvm.loop !28

middle.block117:                                  ; preds = %vector.body114, %vec.epilog.vector.body128, %vec.epilog.scalar.ph120.prol.loopexit, %vec.epilog.scalar.ph120
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 30
  br i1 %exitcond.not.i, label %deflate_init_offset_slot_full.exit, label %iter.check106, !llvm.loop !29
end_hunk_3
begin_hunk_4
  %min.iters.check = icmp samesign ult i64 %indvars.iv.i70, 6
  %112 = sub i32 0, %109
  %113 = icmp ugt i32 %105, %112
  %or.cond185 = select i1 %min.iters.check, i1 true, i1 %113
  br i1 %or.cond185, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check
  %xtraiter = and i32 %109, 7
end_hunk_4
begin_hunk_5
  %min.iters.check137 = icmp samesign ult i64 %indvars.iv.i76, 6
  %166 = sub i32 0, %163
  %167 = icmp ugt i32 %159, %166
  %or.cond187 = select i1 %min.iters.check137, i1 true, i1 %167
  br i1 %or.cond187, label %vec.epilog.scalar.ph153.preheader, label %vector.main.loop.iter.check141

vec.epilog.scalar.ph153.preheader:                ; preds = %iter.check139
  %xtraiter199 = and i32 %163, 7
  %168 = add nsw i64 %indvars.iv.i76, -8
  %lcmp.mod200.not = icmp ult i64 %168, 22
  br i1 %lcmp.mod200.not, label %vec.epilog.scalar.ph153.prol.loopexit, label %vec.epilog.scalar.ph153.prol

vec.epilog.scalar.ph153.prol:                     ; preds = %vec.epilog.scalar.ph153.preheader, %vec.epilog.scalar.ph153.prol
  %.09.i77.prol = phi i32 [ %171, %vec.epilog.scalar.ph153.prol ], [ %159, %vec.epilog.scalar.ph153.preheader ] ; 2 uses
  %prol.iter201 = phi i32 [ %prol.iter201.next, %vec.epilog.scalar.ph153.prol ], [ 0, %vec.epilog.scalar.ph153.preheader ]
  %169 = zext i32 %.09.i77.prol to i64
  %170 = getelementptr inbounds nuw i8, ptr %157, i64 %169
  store i8 %165, ptr %170, align 1, !tbaa !20
  %171 = add i32 %.09.i77.prol, 1                 ; 2 uses
  %prol.iter201.next = add i32 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i32 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %vec.epilog.scalar.ph153.prol.loopexit, label %vec.epilog.scalar.ph153.prol, !llvm.loop !34

vec.epilog.scalar.ph153.prol.loopexit:            ; preds = %vec.epilog.scalar.ph153.prol, %vec.epilog.scalar.ph153.preheader
  %.09.i77.unr = phi i32 [ %159, %vec.epilog.scalar.ph153.preheader ], [ %171, %vec.epilog.scalar.ph153.prol ]
end_hunk_5
begin_hunk_6
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, 30
  br i1 %exitcond.not.i80, label %deflate_init_offset_slot_full.exit, label %iter.check139, !llvm.loop !29

deflate_init_offset_slot_full.exit:               ; preds = %middle.block, %middle.block117, %middle.block150, %40, %37, %34, %31, %28, %25, %22, %19, %17, %16
  %205 = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> splat (i32 2), ptr %205, align 4, !tbaa !3
end_hunk_6
