Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-inf?download=true
inline.NumInlined: 1388
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@inf_BuildHyperResolvent:bb.a
  %i.eo = add nuw i64 %i.em, %i.ej
  store i64 %i.eo, ptr @memory_MAXMEM, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ep = getelementptr inbounds i8, ptr %i.dp, i64 -16
  tail call void @free(ptr noundef nonnull %i.ep) #14
  br label %.thread.i

bb.z:                                             ; preds = %bb.q
  %i.eq = zext nneg i32 %i.dq to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.eq ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = sext i32 %i.eu to i64
  %i.ew = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ex = add i64 %i.ew, %i.ev
  store i64 %i.ex, ptr @memory_FREEDBYTES, align 8
  %i.ey = load ptr, ptr %i.es, align 8
  store ptr %i.ey, ptr %i.dp, align 8
  %i.ez = load ptr, ptr %i.er, align 8
  store ptr %i.dp, ptr %i.ez, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.z, %bb.y, %bb.p
  %i.fa = shl i32 %spec.select.i, 3
  %i.fb = tail call ptr @memory_Malloc(i32 noundef %i.fa) #14
  store ptr %i.fb, ptr %i.do, align 8
  store i32 %spec.select.i, ptr %i.db, align 8
  br label %.lr.ph62.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.not70.i = icmp eq i32 %i.dc, 0
  br i1 %.not70.i, label %.lr.ph68.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %._crit_edge.thread.i, %.thread.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.aa

.lr.ph68.i:                                       ; preds = %bb.aa, %._crit_edge.thread.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph62.i
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph62.i ], [ %indvars.iv.next.i113, %bb.aa ] ; 2 uses
  %i.fe = load ptr, ptr %i.fc, align 8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i112
  store i64 0, ptr %i.ff, align 8
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %i.fg = load i32, ptr %i.db, align 8
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp samesign ult i64 %indvars.iv.next.i113, %i.fh
  br i1 %i.fi, label %bb.aa, label %.lr.ph68.i, !llvm.loop !105

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %.not55.i = icmp eq ptr %.041.val.i, null
  br i1 %.not55.i, label %clause_SetSplitDataFromList.exit, label %bb.ab, !llvm.loop !106

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph68.i
  %.04167.i = phi ptr [ %.073.lcssa, %.lr.ph68.i ], [ %.041.val.i, %.loopexit.i ] ; 2 uses
  %i.fj = getelementptr i8, ptr %.04167.i, i64 8
  %.041.val52.i = load ptr, ptr %i.fj, align 8    ; 2 uses
  %.041.val.i = load ptr, ptr %.04167.i, align 8  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.041.val52.i, i64 24 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8
  %.not71.i = icmp eq i32 %i.fl, 0
  br i1 %.not71.i, label %.loopexit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %.041.val52.i, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph65.i
  %indvars.iv73.i = phi i64 [ 0, %.lr.ph65.i ], [ %indvars.iv.next74.i, %bb.ac ] ; 3 uses
  %i.fn = load ptr, ptr %i.fd, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv73.i ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = load ptr, ptr %i.fm, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv73.i
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = or i64 %i.fs, %i.fp
  store i64 %i.ft, ptr %i.fo, align 8
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %i.fu = load i32, ptr %i.fk, align 8
  %i.fv = zext i32 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next74.i, %i.fv
  br i1 %i.fw, label %bb.ac, label %.loopexit.i, !llvm.loop !107

clause_SetSplitDataFromList.exit:                 ; preds = %.loopexit.i
  %i.fx = tail call ptr @list_NReverse(ptr noundef %.072.lcssa) #14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store ptr %i.fx, ptr %i.fy, align 8
  %i.fz = tail call ptr @list_NReverse(ptr noundef %.071.lcssa) #14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store ptr %i.fz, ptr %i.ga, align 8
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %clause_SetSplitDataFromList.exit, %.lr.ph.i115
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i115 ], [ %.073.lcssa, %clause_SetSplitDataFromList.exit ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = sext i32 %i.gd to i64
  %i.gf = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gg = add i64 %i.gf, %i.ge
  store i64 %i.gg, ptr @memory_FREEDBYTES, align 8
  %i.gh = load ptr, ptr %i.gb, align 8
  store ptr %i.gh, ptr %.07.i, align 8
  %i.gi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.gi, align 8
  %.not.i116 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i116, label %list_Delete.exit, label %.lr.ph.i115, !llvm.loop !54

list_Delete.exit:                                 ; preds = %.lr.ph.i115
  %.not6.i118 = icmp eq ptr %.1140.lcssa, null
  br i1 %.not6.i118, label %list_Delete.exit124, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %list_Delete.exit, %.lr.ph.i119
  %.07.i120 = phi ptr [ %.0.val.i121, %.lr.ph.i119 ], [ %.1140.lcssa, %list_Delete.exit ] ; 3 uses
  %.0.val.i121 = load ptr, ptr %.07.i120, align 8 ; 2 uses
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = sext i32 %i.gl to i64
  %i.gn = load i64, ptr @memory_FREEDBYTES, align 8
  %i.go = add i64 %i.gn, %i.gm
  store i64 %i.go, ptr @memory_FREEDBYTES, align 8
  %i.gp = load ptr, ptr %i.gj, align 8
  store ptr %i.gp, ptr %.07.i120, align 8
  %i.gq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i120, ptr %i.gq, align 8
  %.not.i122 = icmp eq ptr %.0.val.i121, null
  br i1 %.not.i122, label %list_Delete.exit124, label %.lr.ph.i119, !llvm.loop !54

list_Delete.exit124:                              ; preds = %.lr.ph.i119, %list_Delete.exit
  %.not6.i125 = icmp eq ptr %.1137.lcssa, null
  br i1 %.not6.i125, label %list_Delete.exit131, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %list_Delete.exit124, %.lr.ph.i126
  %.07.i127 = phi ptr [ %.0.val.i128, %.lr.ph.i126 ], [ %.1137.lcssa, %list_Delete.exit124 ] ; 3 uses
  %.0.val.i128 = load ptr, ptr %.07.i127, align 8 ; 2 uses
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = sext i32 %i.gt to i64
  %i.gv = load i64, ptr @memory_FREEDBYTES, align 8
  %i.gw = add i64 %i.gv, %i.gu
  store i64 %i.gw, ptr @memory_FREEDBYTES, align 8
  %i.gx = load ptr, ptr %i.gr, align 8
  store ptr %i.gx, ptr %.07.i127, align 8
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i127, ptr %i.gy, align 8
  %.not.i129 = icmp eq ptr %.0.val.i128, null
  br i1 %.not.i129, label %list_Delete.exit131, label %.lr.ph.i126, !llvm.loop !54

list_Delete.exit131:                              ; preds = %.lr.ph.i126, %list_Delete.exit124
  ret ptr %i.cx
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
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = !{ptr @inf_HyperResolvents}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
end_hunk_0
