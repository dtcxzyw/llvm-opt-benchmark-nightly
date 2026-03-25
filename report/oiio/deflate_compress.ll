begin_hunk_0
inline.NumInlined: 62
inline.NumDeleted: 31
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 8976796 ; 11 uses
  br label %iter.check106

iter.check106:                                    ; preds = %middle.block118, %43
  %indvars.iv.i = phi i64 [ 0, %43 ], [ %indvars.iv.next.i, %middle.block118 ] ; 8 uses
  %50 = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %indvars.iv.i
  %51 = load i32, ptr %50, align 4, !tbaa !3      ; 6 uses
  %52 = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %indvars.iv.i
end_hunk_1
begin_hunk_2
  %55 = shl nuw i32 1, %54                        ; 5 uses
  %56 = add i32 %55, %51
  %57 = trunc i64 %indvars.iv.i to i8             ; 11 uses
  %min.iters.check105 = icmp samesign ult i64 %indvars.iv.i, 6
  %58 = sub i32 0, %55
  %59 = icmp ugt i32 %51, %58
  %or.cond182 = select i1 %min.iters.check105, i1 true, i1 %59
  br i1 %or.cond182, label %vec.epilog.scalar.ph121.preheader, label %vector.main.loop.iter.check109

vec.epilog.scalar.ph121.preheader:                ; preds = %iter.check106
  %xtraiter195 = and i32 %55, 7
  %60 = add nsw i64 %indvars.iv.i, -8
  %lcmp.mod196.not = icmp ult i64 %60, 22
  br i1 %lcmp.mod196.not, label %vec.epilog.scalar.ph121.prol.loopexit, label %vec.epilog.scalar.ph121.prol

vec.epilog.scalar.ph121.prol:                     ; preds = %vec.epilog.scalar.ph121.preheader, %vec.epilog.scalar.ph121.prol
  %.09.i.prol = phi i32 [ %63, %vec.epilog.scalar.ph121.prol ], [ %51, %vec.epilog.scalar.ph121.preheader ] ; 2 uses
  %prol.iter197 = phi i32 [ %prol.iter197.next, %vec.epilog.scalar.ph121.prol ], [ 0, %vec.epilog.scalar.ph121.preheader ]
  %61 = zext i32 %.09.i.prol to i64
  %62 = getelementptr inbounds nuw i8, ptr %49, i64 %61
  store i8 %57, ptr %62, align 1, !tbaa !20
  %63 = add i32 %.09.i.prol, 1                    ; 2 uses
  %prol.iter197.next = add i32 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i32 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %vec.epilog.scalar.ph121.prol.loopexit, label %vec.epilog.scalar.ph121.prol, !llvm.loop !21

vec.epilog.scalar.ph121.prol.loopexit:            ; preds = %vec.epilog.scalar.ph121.prol, %vec.epilog.scalar.ph121.preheader
  %.09.i.unr = phi i32 [ %51, %vec.epilog.scalar.ph121.preheader ], [ %63, %vec.epilog.scalar.ph121.prol ]
  %64 = icmp samesign ult i64 %indvars.iv.i, 8
  br i1 %64, label %middle.block118, label %vec.epilog.scalar.ph121

vector.main.loop.iter.check109:                   ; preds = %iter.check106
  %min.iters.check108 = icmp samesign ult i64 %indvars.iv.i, 12
  br i1 %min.iters.check108, label %vec.epilog.ph124, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check109
  %n.vec112 = and i32 %55, -32
  %broadcast.splatinsert113 = insertelement <16 x i8> poison, i8 %57, i64 0
  %broadcast.splat114 = shufflevector <16 x i8> %broadcast.splatinsert113, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph110
  %index116 = phi i32 [ 0, %vector.ph110 ], [ %index.next117, %vector.body115 ] ; 2 uses
  %65 = add i32 %51, %index116
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds nuw i8, ptr %49, i64 %66 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 16
  store <16 x i8> %broadcast.splat114, ptr %67, align 1, !tbaa !20
  store <16 x i8> %broadcast.splat114, ptr %68, align 1, !tbaa !20
  %index.next117 = add nuw i32 %index116, 32      ; 2 uses
  %69 = icmp eq i32 %index.next117, %n.vec112
  br i1 %69, label %middle.block118, label %vector.body115, !llvm.loop !23

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check109
  %n.vec126 = and i32 %55, -4
  %broadcast.splatinsert127 = insertelement <4 x i8> poison, i8 %57, i64 0
  %broadcast.splat128 = shufflevector <4 x i8> %broadcast.splatinsert127, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph124
  %index130 = phi i32 [ 0, %vec.epilog.ph124 ], [ %index.next132, %vec.epilog.vector.body129 ] ; 2 uses
  %offset.idx131 = add i32 %51, %index130
  %70 = zext i32 %offset.idx131 to i64
  %71 = getelementptr inbounds nuw i8, ptr %49, i64 %70
  store <4 x i8> %broadcast.splat128, ptr %71, align 1, !tbaa !20
  %index.next132 = add nuw i32 %index130, 4       ; 2 uses
  %72 = icmp eq i32 %index.next132, %n.vec126
  br i1 %72, label %middle.block118, label %vec.epilog.vector.body129, !llvm.loop !27

vec.epilog.scalar.ph121:                          ; preds = %vec.epilog.scalar.ph121.prol.loopexit, %vec.epilog.scalar.ph121
  %.09.i = phi i32 [ %96, %vec.epilog.scalar.ph121 ], [ %.09.i.unr, %vec.epilog.scalar.ph121.prol.loopexit ] ; 9 uses
  %73 = zext i32 %.09.i to i64
  %74 = getelementptr inbounds nuw i8, ptr %49, i64 %73
  store i8 %57, ptr %74, align 1, !tbaa !20
end_hunk_2
begin_hunk_3
  store i8 %57, ptr %95, align 1, !tbaa !20
  %96 = add i32 %.09.i, 8                         ; 2 uses
  %.not.i.7 = icmp eq i32 %96, %56
  br i1 %.not.i.7, label %middle.block118, label %vec.epilog.scalar.ph121, !llvm.loop !28

middle.block118:                                  ; preds = %vector.body115, %vec.epilog.vector.body129, %vec.epilog.scalar.ph121.prol.loopexit, %vec.epilog.scalar.ph121
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 30
  br i1 %exitcond.not.i, label %deflate_init_offset_slot_full.exit, label %iter.check106, !llvm.loop !29
end_hunk_3
begin_hunk_4
  %min.iters.check = icmp samesign ult i64 %indvars.iv.i70, 6
  %112 = sub i32 0, %109
  %113 = icmp ugt i32 %105, %112
  %or.cond184 = select i1 %min.iters.check, i1 true, i1 %113
  br i1 %or.cond184, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check
  %xtraiter = and i32 %109, 7
end_hunk_4
begin_hunk_5
  %min.iters.check137 = icmp samesign ult i64 %indvars.iv.i76, 6
  %166 = sub i32 0, %163
  %167 = icmp ugt i32 %159, %166
  %or.cond186 = select i1 %min.iters.check137, i1 true, i1 %167
  br i1 %or.cond186, label %vec.epilog.scalar.ph153.preheader, label %vector.main.loop.iter.check141

vec.epilog.scalar.ph153.preheader:                ; preds = %iter.check139
  %xtraiter198 = and i32 %163, 7
  %168 = add nsw i64 %indvars.iv.i76, -8
  %lcmp.mod199.not = icmp ult i64 %168, 22
  br i1 %lcmp.mod199.not, label %vec.epilog.scalar.ph153.prol.loopexit, label %vec.epilog.scalar.ph153.prol

vec.epilog.scalar.ph153.prol:                     ; preds = %vec.epilog.scalar.ph153.preheader, %vec.epilog.scalar.ph153.prol
  %.09.i77.prol = phi i32 [ %171, %vec.epilog.scalar.ph153.prol ], [ %159, %vec.epilog.scalar.ph153.preheader ] ; 2 uses
  %prol.iter200 = phi i32 [ %prol.iter200.next, %vec.epilog.scalar.ph153.prol ], [ 0, %vec.epilog.scalar.ph153.preheader ]
  %169 = zext i32 %.09.i77.prol to i64
  %170 = getelementptr inbounds nuw i8, ptr %157, i64 %169
  store i8 %165, ptr %170, align 1, !tbaa !20
  %171 = add i32 %.09.i77.prol, 1                 ; 2 uses
  %prol.iter200.next = add i32 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i32 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %vec.epilog.scalar.ph153.prol.loopexit, label %vec.epilog.scalar.ph153.prol, !llvm.loop !34

vec.epilog.scalar.ph153.prol.loopexit:            ; preds = %vec.epilog.scalar.ph153.prol, %vec.epilog.scalar.ph153.preheader
  %.09.i77.unr = phi i32 [ %159, %vec.epilog.scalar.ph153.preheader ], [ %171, %vec.epilog.scalar.ph153.prol ]
end_hunk_5
begin_hunk_6
  %exitcond.not.i80 = icmp eq i64 %indvars.iv.next.i79, 30
  br i1 %exitcond.not.i80, label %deflate_init_offset_slot_full.exit, label %iter.check139, !llvm.loop !29

deflate_init_offset_slot_full.exit:               ; preds = %middle.block, %middle.block118, %middle.block150, %40, %37, %34, %31, %28, %25, %22, %19, %17, %16
  %205 = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %206 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store <4 x i32> splat (i32 2), ptr %205, align 4, !tbaa !3
end_hunk_6
