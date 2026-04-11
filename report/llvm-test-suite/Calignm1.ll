begin_hunk_0_@Cscore_m_1:bb.a

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 9 uses
  %.092112.us = phi double [ 0.000000e+00, %.preheader.us ], [ %.1.us, %bb.i ] ; 2 uses
  %.093111.us = phi double [ 0.000000e+00, %.preheader.us ], [ %.194.us, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load double, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.p = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.p, label %bb.i, label %bb.c

end_hunk_0
begin_hunk_1_@Cscore_m_1:bb.a
  %i.bj = load i32, ptr @penalty, align 4, !tbaa !4
  %i.bk = sitofp i32 %i.bj to double
  %i.bl = fmul nnan double %i.bk, %i.bi
  %4 = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.o, double %.093111.us)
  %i.bm = sext i8 %i.aj to i64
  %i.bn = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.bm
  %i.bo = sext i8 %i.an to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sitofp i32 %i.bq to double
  %5 = tail call double @llvm.fmuladd.f64(double %i.br, double %i.o, double %.092112.us)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.194.us = phi double [ %4, %bb.h ], [ %.093111.us, %bb.b ] ; 2 uses
  %.1.us = phi double [ %5, %bb.h ], [ %.092112.us, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !83

._crit_edge.us:                                   ; preds = %bb.i
  %i.bs = fadd double %.095115.us, %.1.us
  %i.bt = fadd double %.194.us, %i.bs             ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge117, label %.preheader.us, !llvm.loop !84
end_hunk_1
begin_hunk_2_@Cscore_m_1:bb.a
  ret double %.095.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

end_hunk_2
begin_hunk_3_@llvm.assume
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

attributes #0 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
