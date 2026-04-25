inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 4) i32 @WebPEstimateBestFilter(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [16 x i32]], align 16        ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = add nsw i32 %2, -1
end_hunk_0
begin_hunk_1_@WebPEstimateBestFilter:bb.a
  %i.bz = select i1 %i.by, i32 4, i32 0
  %i.ca = icmp sgt i32 %.pre127, 0
  %i.cb = select i1 %i.ca, i32 5, i32 0
  %i.cc = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.bq)
  br label %.preheader63

.preheader63:                                     ; preds = %.lr.ph68, %.preheader63.loopexit, %bb.a
  %i.cd = phi i32 [ 0, %bb.a ], [ %i.cb, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.ce = phi i32 [ 0, %bb.a ], [ %i.bz, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %4 = phi i32 [ 0, %bb.a ], [ %i.bx, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.cf = phi i32 [ 0, %bb.a ], [ %i.bv, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %spec.select.2.a = phi i32 [ 0, %bb.a ], [ %i.bn, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %spec.select.2 = phi i32 [ 0, %bb.a ], [ %i.bl, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.cg = phi i32 [ 0, %bb.a ], [ %i.cc, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %op.rdx133.a = add nsw i32 %i.cg, %spec.select.2.a
  %op.rdx134.a = add nsw i32 %op.rdx133.a, %spec.select.2 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %5 = load <8 x i32>, ptr %i.ch, align 8, !tbaa !3
  %6 = icmp sgt <8 x i32> %5, zeroinitializer
  %7 = select <8 x i1> %6, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>, <8 x i32> zeroinitializer
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %9 = load i32, ptr %8, align 8, !tbaa !3
  %10 = icmp sgt i32 %9, 0
  %11 = select i1 %10, i32 14, i32 0
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %13 = load i32, ptr %12, align 4, !tbaa !3
  %14 = icmp sgt i32 %13, 0
  %15 = select i1 %14, i32 15, i32 0
  %i.ci = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %7)
  %op.rdx131 = add nuw nsw i32 %i.ci, %11
  %op.rdx132 = add nuw nsw i32 %15, %4
  %op.rdx133 = add nsw i32 %i.cf, %i.ce
  %op.rdx134 = add nuw nsw i32 %op.rdx131, %op.rdx132
  %op.rdx131.a = add nsw i32 %op.rdx133, %i.cd
  %op.rdx132.a = add nsw i32 %op.rdx134, %op.rdx131.a ; 2 uses
  %i.cj = icmp samesign ult i32 %op.rdx132.a, %op.rdx134.a
  %spec.select61.1 = zext i1 %i.cj to i32
  %i.ck = tail call i32 @llvm.umin.i32(i32 %op.rdx132.a, i32 %op.rdx134.a) ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
end_hunk_2
