inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0_@j12init_2pass_quantizer:bb.a
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv52.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cn, ptr %i.cw, align 4, !tbaa !3
  %1 = sub nuw nsw i64 -2, %indvars.iv52.i
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %1
  store i32 %i.cd, ptr %i.cx, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv52.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %i.cn, ptr %i.cz, align 4, !tbaa !3
  %2 = sub nuw nsw i64 -3, %indvars.iv52.i
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %2
  store i32 %i.cd, ptr %i.da, align 4, !tbaa !3
  %indvars.iv.next53.i.3 = add nuw nsw i64 %indvars.iv52.i, 4 ; 2 uses
end_hunk_0
begin_hunk_1_@start_pass_2_quant:bb.a
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv52.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bl, ptr %i.bu, align 4, !tbaa !3
  %2 = sub nuw nsw i64 -2, %indvars.iv52.i
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %2
  store i32 %i.bb, ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv52.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 %i.bl, ptr %i.bx, align 4, !tbaa !3
  %3 = sub nuw nsw i64 -3, %indvars.iv52.i
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %3
  store i32 %i.bb, ptr %i.by, align 4, !tbaa !3
  %indvars.iv.next53.i.3 = add nuw nsw i64 %indvars.iv52.i, 4 ; 2 uses
end_hunk_1
