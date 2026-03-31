begin_hunk_0
  %i.bq = sext i16 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, 150117696929792
  %i.bs = add nsw i64 %i.br, 140737488355328
  %i.bt = ashr i64 %i.bs, 47                      ; 3 uses
  %2 = add nsw i64 %i.bt, -32768
  %3 = icmp ult i64 %2, -65536
  %i.bu = icmp sgt i64 %i.bt, 1
  %4 = select i1 %i.bu, i64 32767, i64 32768
  %5 = and i64 %i.bt, 65534
  %6 = select i1 %3, i64 %4, i64 %5
  %7 = trunc nuw i64 %6 to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %7, ptr %i.bk, align 2, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bx = load i16, ptr %i.bl, align 2, !tbaa !12
  %i.by = tail call i16 @llvm.sadd.sat.i16(i16 %i.bx, i16 -4)
end_hunk_0
