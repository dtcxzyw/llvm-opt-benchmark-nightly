inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@init_enc_mb_params:bb.a
  store i16 0, ptr %i.bi, align 4, !tbaa !14
  store i16 0, ptr %i.bn, align 4, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !52 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !54 ; 3 uses
  %i.bv = load ptr, ptr @lrec, align 8, !tbaa !76
  %i.bw = sext i32 %i.bu to i64
  %i.bx = sext i32 %i.bs to i64
  %4 = add i32 %i.bu, 15
  %i.by = add i32 %i.bs, 15
  %5 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %4)
  %i.bz = sext i32 %5 to i64
  %6 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.by)
  %i.ca = sext i32 %6 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
end_hunk_0
begin_hunk_1_@init_enc_mb_params:bb.a

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.bz
  br i1 %exitcond.not, label %bb.k, label %bb.j, !llvm.loop !79

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %i.bw, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@init_enc_mb_params:bb.a

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %exitcond217.not = icmp eq i64 %indvars.iv14.i, %i.ca
  br i1 %exitcond217.not, label %.sink.split, label %bb.h, !llvm.loop !80

.sink.split:                                      ; preds = %bb.k, %bb.j
  %i.cf = phi <2 x i16> [ <i16 1, i16 0>, %bb.j ], [ <i16 0, i16 1>, %bb.k ]
end_hunk_2
begin_hunk_3_@init_enc_mb_params:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !52 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !54 ; 3 uses
  %i.cm = load ptr, ptr @lrec, align 8, !tbaa !76
  %i.cn = sext i32 %i.cl to i64
  %i.co = sext i32 %i.cj to i64
  %7 = add i32 %i.cl, 15
  %i.cp = add i32 %i.cj, 15
  %8 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %7)
  %i.cq = sext i32 %8 to i64
  %9 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 %i.cp)
  %i.cr = sext i32 %9 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
end_hunk_3
begin_hunk_4_@init_enc_mb_params:bb.a

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i157 = add nsw i64 %indvars.iv.i154, 1
  %exitcond219.not = icmp eq i64 %indvars.iv.i154, %i.cq
  br i1 %exitcond219.not, label %bb.q, label %bb.p, !llvm.loop !79

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i154 = phi i64 [ %i.cn, %bb.n ], [ %indvars.iv.next.i157, %bb.o ] ; 3 uses
end_hunk_4
begin_hunk_5_@init_enc_mb_params:bb.a

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next15.i158 = add nsw i64 %indvars.iv14.i153, 1
  %exitcond221.not = icmp eq i64 %indvars.iv14.i153, %i.cr
  br i1 %exitcond221.not, label %check_for_SI16.exit159, label %bb.n, !llvm.loop !80

check_for_SI16.exit159:                           ; preds = %bb.q
  store i16 0, ptr %i.w, align 2, !tbaa !14
end_hunk_5
begin_hunk_6_@llvm.smin.i32
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_6
