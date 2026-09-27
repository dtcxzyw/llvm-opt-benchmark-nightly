Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-inf?download=true
inline.NumInlined: 1388
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@inf_BuildHyperResolvent:bb.a
  %i.en = add nuw i64 %i.el, %i.ei
  store i64 %i.en, ptr @memory_MAXMEM, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.eo = getelementptr inbounds i8, ptr %i.do, i64 -16
  tail call void @free(ptr noundef nonnull %i.eo) #14
  br label %.thread.i

bb.z:                                             ; preds = %bb.q
  %i.ep = zext nneg i32 %i.dp to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ep ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = sext i32 %i.et to i64
  %i.ev = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ew = add i64 %i.ev, %i.eu
  store i64 %i.ew, ptr @memory_FREEDBYTES, align 8
  %i.ex = load ptr, ptr %i.er, align 8
  store ptr %i.ex, ptr %i.do, align 8
  %i.ey = load ptr, ptr %i.eq, align 8
  store ptr %i.do, ptr %i.ey, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %bb.y, %bb.p
  %i.ez = shl i32 %spec.select.i, 3
  %i.fa = tail call ptr @memory_Malloc(i32 noundef %i.ez) #14
  store ptr %i.fa, ptr %i.dn, align 8
  store i32 %spec.select.i, ptr %i.da, align 8
  br label %.lr.ph62.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.not70.i = icmp eq i32 %i.db, 0
  br i1 %.not70.i, label %.lr.ph68.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge.thread.i, %.thread.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.aa

.lr.ph68.i:                                       ; preds = %bb.aa, %._crit_edge.thread.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph62.i
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph62.i ], [ %indvars.iv.next.i113, %bb.aa ] ; 2 uses
  %i.fd = load ptr, ptr %i.fb, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i112
  store i64 0, ptr %i.fe, align 8
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %i.ff = load i32, ptr %i.da, align 8
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i113, %i.fg
  br i1 %i.fh, label %bb.aa, label %.lr.ph68.i, !llvm.loop !105

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.not55.i = icmp eq ptr %.041.val.i, null
  br i1 %.not55.i, label %clause_SetSplitDataFromList.exit, label %bb.ab, !llvm.loop !106

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph68.i
  %.04167.i = phi ptr [ %.073.lcssa, %.lr.ph68.i ], [ %.041.val.i, %.loopexit.i ] ; 2 uses
  %i.fi = getelementptr i8, ptr %.04167.i, i64 8
  %.041.val52.i = load ptr, ptr %i.fi, align 8    ; 2 uses
  %.041.val.i = load ptr, ptr %.04167.i, align 8  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.041.val52.i, i64 24 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8
  %.not71.i = icmp eq i32 %i.fk, 0
  br i1 %.not71.i, label %.loopexit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %.041.val52.i, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph65.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph65.i ], [ %indvars.iv.next74.i, %bb.ac ] ; 3 uses
  %i.fm = load ptr, ptr %i.fc, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv73.i ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = load ptr, ptr %i.fl, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv73.i
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = or i64 %i.fr, %i.fo
  store i64 %i.fs, ptr %i.fn, align 8
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.ft = load i32, ptr %i.fj, align 8
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next74.i, %i.fu
  br i1 %i.fv, label %bb.ac, label %.loopexit.i, !llvm.loop !107

clause_SetSplitDataFromList.exit:                 ; preds = %.loopexit.i
  %i.fw = tail call ptr @list_NReverse(ptr noundef %.072.lcssa) #14
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.fw, ptr %i.fx, align 8
  %i.fy = tail call ptr @list_NReverse(ptr noundef %.071.lcssa) #14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr %i.fy, ptr %i.fz, align 8
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %clause_SetSplitDataFromList.exit, %.lr.ph.i115
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i115 ], [ %.073.lcssa, %clause_SetSplitDataFromList.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = sext i32 %i.gc to i64
  %i.ge = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gf = add i64 %i.ge, %i.gd
  store i64 %i.gf, ptr @memory_FREEDBYTES, align 8
  %i.gg = load ptr, ptr %i.ga, align 8
  store ptr %i.gg, ptr %.07.i, align 8
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.gh, align 8
  %.not.i116 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i116, label %list_Delete.exit, label %.lr.ph.i115, !llvm.loop !6

list_Delete.exit:                                 ; preds = %.lr.ph.i115
  %.not6.i118 = icmp eq ptr %.1140.lcssa, null
  br i1 %.not6.i118, label %list_Delete.exit124, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %list_Delete.exit, %.lr.ph.i119
  %.07.i120 = phi ptr [ %.0.val.i121, %.lr.ph.i119 ], [ %.1140.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i121 = load ptr, ptr %.07.i120, align 8 ; 2 uses
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = sext i32 %i.gk to i64
  %i.gm = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gn = add i64 %i.gm, %i.gl
  store i64 %i.gn, ptr @memory_FREEDBYTES, align 8
  %i.go = load ptr, ptr %i.gi, align 8
  store ptr %i.go, ptr %.07.i120, align 8
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i120, ptr %i.gp, align 8
  %.not.i122 = icmp eq ptr %.0.val.i121, null
  br i1 %.not.i122, label %list_Delete.exit124, label %.lr.ph.i119, !llvm.loop !6

list_Delete.exit124:                              ; preds = %.lr.ph.i119, %list_Delete.exit
  %.not6.i125 = icmp eq ptr %.1137.lcssa, null
  br i1 %.not6.i125, label %list_Delete.exit131, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %list_Delete.exit124, %.lr.ph.i126
  %.07.i127 = phi ptr [ %.0.val.i128, %.lr.ph.i126 ], [ %.1137.lcssa, %list_Delete.exit124 ] ; 3 uses
  %.0.val.i128 = load ptr, ptr %.07.i127, align 8 ; 2 uses
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = sext i32 %i.gs to i64
  %i.gu = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gv = add i64 %i.gu, %i.gt
  store i64 %i.gv, ptr @memory_FREEDBYTES, align 8
  %i.gw = load ptr, ptr %i.gq, align 8
  store ptr %i.gw, ptr %.07.i127, align 8
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i127, ptr %i.gx, align 8
  %.not.i129 = icmp eq ptr %.0.val.i128, null
  br i1 %.not.i129, label %list_Delete.exit131, label %.lr.ph.i126, !llvm.loop !6

list_Delete.exit131:                              ; preds = %.lr.ph.i126, %list_Delete.exit124
  ret ptr %i.cw
}

declare ptr @clause_MoveBestLiteralToFront(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @clause_HyperLiteralIsBetter(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #8 {
bb.a:
  %i.a = icmp ugt i32 %1, %3
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

declare i32 @term_MaxVar(ptr noundef) local_unnamed_addr #2

declare ptr @subst_Compose(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @subst_Copy(ptr noundef) local_unnamed_addr #2

declare ptr @clause_Create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_NReverse(ptr noundef) local_unnamed_addr #2

declare i32 @clause_SearchMaxVar(ptr noundef) local_unnamed_addr #2

declare ptr @list_PointerDeleteElement(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = distinct !{!3, !12}
!4 = distinct !{!4, !12}
!5 = distinct !{!5, !12}
!6 = distinct !{!6, !12}
!7 = distinct !{!7, !12}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = !{ptr @inf_HyperResolvents}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
end_hunk_0
