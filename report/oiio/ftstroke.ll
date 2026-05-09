inline.NumInlined: 59
inline.NumDeleted: 19
begin_hunk_0_@ft_stroker_process_corner:bb.a
  br i1 %.not, label %bb.f, label %ft_stroker_outside.exit

bb.f:                                             ; preds = %ft_stroker_inside.exit
  %i.au = icmp sgt i64 %i.d, -1                   ; 4 uses
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@ft_stroker_process_corner:bb.a
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.neg.i13 = select i1 %i.au, i64 -5898240, i64 5898240 ; 4 uses
  %i.be = icmp eq i32 %i.ay, 1
  %.not84.i = icmp eq i32 %i.ay, 2
  br i1 %i.be, label %.thread90.i, label %bb.i
end_hunk_1
begin_hunk_2_@ft_stroker_process_corner:bb.a
  %i.bi = sdiv i64 %i.bh, 2
  %i.bj = and i64 %i.bh, -2
  %i.bk = icmp eq i64 %i.bj, 11796480
  %9 = select i1 %i.au, i64 5898240, i64 -5898240
  %spec.select.i14 = select i1 %i.bk, i64 %9, i64 %i.bi ; 3 uses
  %i.bl = load i64, ptr %0, align 8, !tbaa !44
  %i.bm = add i64 %i.bl, %.neg.i13
  %i.bn = add i64 %i.bm, %spec.select.i14         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !31
end_hunk_2
begin_hunk_3_@ft_stroker_process_corner:bb.a
.thread90.i:                                      ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !42
  %i.bv = add nsw i64 %i.bu, %.neg.i13
  call void @FT_Vector_From_Polar(ptr noundef nonnull %3, i64 noundef %i.bd, i64 noundef %i.bv) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load <2 x i64>, ptr %i.bw, align 8, !tbaa !43
end_hunk_3
begin_hunk_4_@ft_stroker_process_corner:bb.a

bb.n:                                             ; preds = %bb.m
  %i.dx = load i64, ptr %i.b, align 8, !tbaa !42
  %i.dy = add nsw i64 %i.dx, %.neg.i13
  call void @FT_Vector_From_Polar(ptr noundef nonnull %5, i64 noundef %i.bd, i64 noundef %i.dy) #10
  %i.dz = load <2 x i64>, ptr %i.dj, align 8, !tbaa !43
  %i.ea = load <2 x i64>, ptr %5, align 16, !tbaa !43
end_hunk_4
begin_hunk_5_@ft_stroker_process_corner:bb.a
bb.q:                                             ; preds = %bb.p
  %i.el = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.em = load i64, ptr %i.b, align 8, !tbaa !42
  %i.en = add nsw i64 %i.em, %.neg.i13
  call void @FT_Vector_From_Polar(ptr noundef nonnull %6, i64 noundef %i.el, i64 noundef %i.en) #10
  %i.eo = load <2 x i64>, ptr %i.eg, align 8, !tbaa !43
  %i.ep = load <2 x i64>, ptr %6, align 16, !tbaa !43
end_hunk_5
