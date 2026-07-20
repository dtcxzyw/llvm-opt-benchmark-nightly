inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@TIFFClientOpenExt:bb.a
  store i32 %i.fo, ptr %i.bc, align 8, !tbaa !52
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pre279 = phi i32 [ %i.fo, %bb.by ], [ %.pre279.pre, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bv
  %i.fp = phi i32 [ %.pre279, %bb.bz ], [ %i.ew, %bb.bv ]
  %i.fq = and i32 %i.fp, 65536
  %.not262 = icmp eq i32 %i.fq, 0
  br i1 %.not262, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fr = call i32 @TIFFDefaultDirectory(ptr noundef nonnull %i.q) #10
  %.not264 = icmp eq i32 %i.fr, 0
  br i1 %.not264, label %bb.ce, label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %i.fs = call i32 @TIFFReadDirectory(ptr noundef nonnull %i.q) #10
  %.not263 = icmp eq i32 %i.fs, 0
  br i1 %.not263, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %bb.br
  %i.ft = tail call i32 @TIFFDefaultDirectory(ptr noundef nonnull %i.q) #10
  %.not258 = icmp eq i32 %i.ft, 0
  br i1 %.not258, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.aw, %bb.br, %bb.cc, %bb.cd, %bb.cb, %bb.bp, %bb.bn, %bb.bj, %bb.bd, %bb.ay, %bb.ao
  store i32 0, ptr %i.v, align 4, !tbaa !39
  call void @TIFFCleanup(ptr noundef nonnull %i.q) #10
  br label %bb.cf

bb.cf:                                            ; preds = %_TIFFgetMode.exit, %bb.f, %bb.h, %bb.i, %bb.m, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %.critedge275
  %.1 = phi ptr [ %i.q, %bb.cd ], [ %i.q, %.critedge275 ], [ %i.q, %bb.cc ], [ %i.q, %bb.cb ], [ null, %_TIFFgetMode.exit ], [ null, %bb.ce ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #3

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @TIFFSwabShort(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFDefaultDirectory(ptr noundef) local_unnamed_addr #3

declare void @TIFFSwabLong(ptr noundef) local_unnamed_addr #3

declare void @TIFFSwabLong8(ptr noundef) local_unnamed_addr #3

declare i32 @TIFFReadDirectory(ptr noundef) local_unnamed_addr #3

declare void @TIFFCleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFFileName(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @TIFFSetFileName(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  store ptr %1, ptr %0, align 8, !tbaa !38
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFFileno(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @TIFFSetFileno(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  store i32 %1, ptr %i.a, align 8, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFClientdata(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @TIFFSetClientdata(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFGetMode(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @TIFFSetMode(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  store i32 %1, ptr %i.a, align 4, !tbaa !39
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsTiled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = lshr i32 %i.b, 10
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFCurrentRow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFCurrentDirectory(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFCurrentStrip(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TIFFCurrentTile(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsByteSwapped(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = lshr i32 %i.b, 7
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsUpSampled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = lshr i32 %i.b, 14
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsMSB2LSB(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %1 = and i32 %i.b, 1
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsBigEndian(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load i16, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq i16 %i.b, 19789
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @TIFFIsBigTIFF(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = lshr i32 %i.b, 19
  %.lobit = and i32 %i.c, 1
  ret i32 %.lobit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetReadProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetWriteProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetSeekProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetCloseProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetSizeProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetMapFileProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @TIFFGetUnmapFileProc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !11, i64 32}
!9 = !{!"TIFFOpenOptions", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !11, i64 40, !4, i64 48}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!9, !11, i64 40}
!13 = !{!9, !4, i64 48}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 8}
!16 = !{!9, !10, i64 16}
!17 = !{!9, !10, i64 24}
!18 = !{!19, !11, i64 1336}
!19 = !{!"tiff", !20, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !21, i64 48, !21, i64 56, !4, i64 64, !22, i64 72, !22, i64 448, !5, i64 824, !23, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !23, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !20, i64 1072, !11, i64 1080, !11, i64 1088, !20, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !20, i64 1128, !11, i64 1136, !20, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !30, i64 1232, !11, i64 1240, !32, i64 1248, !33, i64 1256, !34, i64 1280, !35, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!22 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !23, i64 44, !23, i64 46, !23, i64 48, !23, i64 50, !23, i64 52, !23, i64 54, !23, i64 56, !23, i64 58, !4, i64 60, !23, i64 64, !23, i64 66, !24, i64 72, !24, i64 80, !25, i64 88, !25, i64 92, !23, i64 96, !23, i64 98, !25, i64 100, !25, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !23, i64 140, !26, i64 144, !4, i64 152, !4, i64 156, !27, i64 160, !27, i64 168, !4, i64 176, !28, i64 184, !28, i64 216, !23, i64 248, !27, i64 256, !5, i64 264, !23, i64 268, !5, i64 272, !29, i64 296, !4, i64 304, !20, i64 312, !23, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!23 = !{!"short", !5, i64 0}
!24 = !{!"p1 double", !10, i64 0}
!25 = !{!"float", !5, i64 0}
!26 = !{!"p1 short", !10, i64 0}
!27 = !{!"p1 long", !10, i64 0}
!28 = !{!"", !23, i64 0, !23, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!29 = !{!"p1 float", !10, i64 0}
!30 = !{!"p2 _ZTS10_TIFFField", !31, i64 0}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!33 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!34 = !{!"p1 _ZTS11client_info", !10, i64 0}
!35 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!36 = !{!19, !11, i64 1344}
!37 = !{!19, !11, i64 1352}
!38 = !{!19, !20, i64 0}
!39 = !{!19, !4, i64 12}
!40 = !{!19, !11, i64 864}
!41 = !{!19, !10, i64 1176}
!42 = !{!19, !10, i64 1184}
!43 = !{!19, !10, i64 1192}
!44 = !{!19, !10, i64 1200}
!45 = !{!19, !10, i64 1208}
!46 = !{!19, !10, i64 1216}
!47 = !{!19, !10, i64 1160}
!48 = !{!19, !10, i64 1168}
!49 = !{!10, !10, i64 0}
!50 = !{!11, !11, i64 0}
!51 = !{!19, !4, i64 1360}
!52 = !{!19, !4, i64 16}
!53 = !{!19, !23, i64 840}
!54 = !{!19, !11, i64 24}
!55 = !{!19, !11, i64 40}
!56 = !{!19, !4, i64 64}
!57 = !{!19, !4, i64 852}
!58 = !{!19, !11, i64 32}
!59 = !{!19, !11, i64 1152}
!60 = !{!19, !4, i64 8}
!61 = !{!19, !4, i64 844}
!62 = !{!19, !4, i64 848}
!63 = !{!19, !4, i64 856}
!64 = !{!19, !4, i64 908}
end_hunk_0
