begin_hunk_0
  %i.bq = sext i16 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, 150117696929792
  %i.bs = add nsw i64 %i.br, 140737488355328
  %i.bt = ashr i64 %i.bs, 47                      ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 32767
  %2 = trunc i64 %i.bt to i16
  %3 = and i16 %2, -2
  %4 = select i1 %i.bu, i16 32767, i16 %3
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %4, ptr %i.bk, align 2, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bx = load i16, ptr %i.bl, align 2, !tbaa !12
  %i.by = tail call i16 @llvm.sadd.sat.i16(i16 %i.bx, i16 -4)
end_hunk_0
