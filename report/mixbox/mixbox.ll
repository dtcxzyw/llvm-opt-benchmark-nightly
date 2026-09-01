Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mixbox/original/mixbox?download=true
inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL14zbuild_huffmanP8zhuffmanPKhi:.preheader74.preheader
  %indvars.iv91 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next92, %bb.b ] ; 8 uses
  %.06480 = phi i32 [ 0, %._crit_edge ], [ %i.bc, %bb.b ] ; 3 uses
  %.06579 = phi i32 [ 0, %._crit_edge ], [ %i.bd, %bb.b ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv91
  store i32 %.06480, ptr %i.ao, align 4, !tbaa !32
  %i.ap = trunc i32 %.06480 to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv91
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !30
  %i.ar = trunc i32 %.06579 to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv91
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !30
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv91
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32 ; 3 uses
  %i.av = add nsw i32 %i.au, %.06480              ; 3 uses
  %.not70 = icmp ne i32 %i.au, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.ax = shl nuw nsw i32 1, %i.aw
  %.not71.not = icmp sgt i32 %i.av, %i.ax
  %or.cond = select i1 %.not70, i1 %.not71.not, i1 false
  br i1 %or.cond, label %.loopexit72, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = trunc i64 %indvars.iv91 to i32
  %i.az = sub i32 16, %i.ay
  %i.ba = shl i32 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv91
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !32
  %i.bc = shl i32 %i.av, 1
  %i.bd = add nsw i32 %i.au, %.06579
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 16
  br i1 %exitcond94.not, label %bb.c, label %bb.a, !llvm.loop !48

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.be, align 4, !tbaa !32
  br i1 %i.c, label %.lr.ph86, label %.loopexit72

.lr.ph86:                                         ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count101 = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph86, %bb.g
  %indvars.iv98 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next99, %bb.g ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv98
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9   ; 5 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = zext i8 %i.bi to i64                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 3 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.bk
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !30
  %i.bp = zext i16 %i.bo to i32
  %i.bq = sub i32 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bk
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !30
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bq, %i.bt
  %i.bv = shl nuw nsw i32 %i.bj, 9
  %i.bw = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.bx = or i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i16
  %i.bz = sext i32 %i.bu to i64                   ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bf, i64 %i.bz
  store i8 %i.bi, ptr %i.ca, align 1, !tbaa !9
  %i.cb = trunc i64 %indvars.iv98 to i16
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bz
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !30
  %i.cd = icmp ult i8 %i.bi, 10
  br i1 %i.cd, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.e
  %trunc.i = trunc i32 %i.bm to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.ce = zext i16 %rev.i to i32
  %i.cf = sub nuw nsw i32 16, %i.bj
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = shl nuw nsw i32 1, %i.bj
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = zext nneg i32 %i.ch to i64
  br label %bb.f

bb.f:                                             ; preds = %iter.check, %bb.f
  %indvars.iv95 = phi i64 [ %i.ci, %iter.check ], [ %indvars.iv.next96, %bb.f ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv95
  store i16 %i.by, ptr %i.ck, align 2, !tbaa !30
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, %i.cj ; 2 uses
  %i.cl = icmp samesign ult i64 %indvars.iv.next96, 512
  br i1 %i.cl, label %bb.f, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.cm = add nsw i32 %i.bm, 1
  store i32 %i.cm, ptr %i.bl, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.loopexit72, label %bb.d, !llvm.loop !50

.loopexit72:                                      ; preds = %bb.a, %bb.g, %bb.c
  %.067 = phi i32 [ 1, %bb.c ], [ 1, %bb.g ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.067
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS4zbuf", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !5, i64 24, !5, i64 28, !14, i64 32, !14, i64 40, !14, i64 48, !5, i64 56, !16, i64 60, !16, i64 2080}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"_ZTS8zhuffman", !6, i64 0, !6, i64 1024, !6, i64 1056, !6, i64 1124, !6, i64 1156, !6, i64 1444}
!17 = !{!13, !5, i64 8}
!18 = !{!13, !5, i64 12}
!19 = !{!13, !5, i64 16}
!20 = !{!13, !14, i64 40}
!21 = !{!13, !14, i64 32}
!22 = !{!13, !14, i64 48}
!23 = !{!13, !5, i64 56}
!24 = !{!13, !5, i64 24}
!25 = !{!13, !5, i64 28}
!26 = !{!14, !14, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !6, i64 0}
!32 = !{!5, !5, i64 0}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 28}
!39 = distinct !{!39, !28, !36, !37}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !28, !36}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !28}
!49 = distinct !{!49, !28}
!50 = distinct !{!50, !28}
end_hunk_0
