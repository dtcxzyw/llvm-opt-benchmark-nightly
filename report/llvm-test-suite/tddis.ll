Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tddis?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@msfastshrinklocalhom:bb.a
  %.not3435 = icmp eq i32 %i.b, -1
  br i1 %.not3435, label %._crit_edge41, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %i.c = phi i32 [ %i.t, %._crit_edge ], [ %i.a, %.preheader.lr.ph ] ; 2 uses
  %.02740 = phi ptr [ %i.s, %._crit_edge ], [ %0, %.preheader.lr.ph ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv44
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = phi i32 [ %i.b, %.preheader ], [ %i.r, %bb.b ] ; 2 uses
  %.037 = phi ptr [ %1, %.preheader ], [ %i.q, %bb.b ]
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.f)
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.f)
  %i.h = sext i32 %. to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds [80 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !39
  %i.o = fcmp oeq double %i.n, -1.000000e+00
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.50 = select i1 %i.o, ptr null, ptr %i.l
  store ptr %.50, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.037, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %.not34 = icmp eq i32 %i.r, -1
  br i1 %.not34, label %._crit_edge, label %bb.b, !llvm.loop !204

._crit_edge:                                      ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.02740, i64 4 ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %._crit_edge41, label %.preheader, !llvm.loop !205

._crit_edge41:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 4251331401498286647}
!9 = !{i64 237617456245181491}
!10 = !{i64 8026595904221815556}
!11 = !{i64 -955383654670411398}
!12 = !{i64 7347996672996652134}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!5, !5, i64 0}
!17 = !{!"p1 double", !13, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!"p1 float", !13, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"any p2 pointer", !13, i64 0}
!30 = !{!"p2 _ZTS8_RNApair", !29, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p2 int", !29, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"p1 int", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 _ZTS9_LocalHom", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_LocalHom", !6, i64 0, !36, i64 8, !36, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !19, i64 40, !6, i64 48, !6, i64 52, !19, i64 56, !25, i64 64, !19, i64 72}
!39 = !{!38, !19, i64 40}
!40 = !{!"p2 _ZTS9_LocalHom", !29, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = !{i64 8203952158658893772}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = !{i64 -8539718783846258736}
!51 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!52 = !{!51, !51, i64 0}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = !{i64 -5809913870597159695}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = !{i64 -5648863221549483247}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = !{i64 6802703604054218716}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !21}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !21}
!68 = !{i64 650978158549670284}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !21}
!72 = distinct !{!72, !21}
!73 = !{i64 3831067983674543691}
!74 = distinct !{!74, !21, !27, !28}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !21, !27}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !21, !27, !28}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !21, !27}
!85 = distinct !{!85, !21}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !21, !27, !28}
!91 = distinct !{!91, !21, !27}
!92 = distinct !{!92, !21}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !21, !27, !28}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !21, !27}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !101}
!105 = distinct !{!105, !21, !27, !28}
!106 = distinct !{!106, !21, !27}
!107 = distinct !{!107, !21}
!108 = !{i64 2237432663958961276}
!109 = !{!79}
!110 = !{!80}
!111 = !{!81}
!112 = !{!79, !80}
!113 = !{!87}
!114 = !{!88}
!115 = !{!89}
!116 = !{!87, !88}
!117 = !{!94}
!118 = !{!95}
!119 = !{!96}
!120 = !{!94, !95}
!121 = !{!102}
!122 = !{!103}
!123 = !{!104}
!124 = !{!102, !103}
!125 = !{i64 5970103669608244803}
!126 = distinct !{!126, !21, !27, !28}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21, !28, !27}
!129 = !{i64 -7188178698865133142}
!130 = distinct !{!130, !21}
!131 = !{i64 61481755325254622}
!132 = distinct !{!132, !21}
!133 = !{i64 -2169246834995826286}
!134 = distinct !{!134, !21, !27, !28}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21, !28, !27}
!137 = !{i64 -1497347248364179578}
!138 = distinct !{!138, !21, !27, !28}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21, !28, !27}
!141 = !{i64 6511790233386333348}
!142 = distinct !{!142, !21, !27, !28}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21, !28, !27}
!145 = !{i64 6719795732389661619}
!146 = distinct !{!146, !21, !27, !28}
!147 = distinct !{!147, !21}
!148 = distinct !{!148, !21, !28, !27}
!149 = !{i64 7177992118494173886}
!150 = distinct !{!150, !21}
!151 = !{i64 3864128912432644726}
!152 = distinct !{!152, !21}
!153 = !{i64 808334297277930120}
!154 = !{i64 -4359389773163996431}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = !{i64 -2192692512872180761}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = !{i64 -2285920951221212335}
!164 = distinct !{!164, !21}
!165 = distinct !{!165, !21}
!166 = !{i64 4343649666165736151}
!167 = distinct !{!167, !21, !27, !28}
!168 = distinct !{!168, !21, !28, !27}
!169 = distinct !{!169, !21}
!170 = distinct !{!170, !21}
!171 = distinct !{!171, !21}
!172 = distinct !{!172, !21}
!173 = distinct !{!173, !21}
!174 = distinct !{!174, !21}
!175 = !{i64 7583011075734795615}
!176 = distinct !{!176, !21}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = !{i64 6155086186061595641}
!180 = distinct !{!180, i1 false, !"LVerDomain"}
!181 = distinct !{!181, !180}
!182 = distinct !{!182, !180}
!183 = distinct !{!183, !180}
!184 = distinct !{!184, !21, !27, !28}
!185 = distinct !{!185, !22}
!186 = distinct !{!186, !21, !27}
!187 = distinct !{!187, !21}
!188 = !{i64 -1615427990224244269}
!189 = !{!181}
!190 = !{!182}
!191 = !{!183}
!192 = !{!181, !182}
!193 = distinct !{!193, !21}
!194 = !{i64 132563919072017197}
!195 = distinct !{!195, !21}
!196 = distinct !{!196, !21}
!197 = !{i64 -1839503343362830030}
!198 = distinct !{!198, !21}
!199 = distinct !{!199, !21}
!200 = !{i64 7229891509613792982}
!201 = distinct !{!201, !21}
!202 = distinct !{!202, !21}
!203 = !{i64 -309606300958536550}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !21}
!206 = !{i64 9085279360606665663}
end_hunk_0
