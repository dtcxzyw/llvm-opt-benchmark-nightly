Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicode_formatter?download=true
inline.NumInlined: 99
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@parse_number:bb.a
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 9 uses
  %i.h = icmp slt i64 %1, %2
  br i1 %i.h, label %.lr.ph, label %.critedge33.thread

.lr.ph:                                           ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.d, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us45
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph, %bb.d
  %.03141.us = phi i64 [ %i.o, %bb.d ], [ %1, %.lr.ph ] ; 3 uses
  %i.i = getelementptr i8, ptr %.0.i, i64 %.03141.us
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = and i32 %i.m, 4
  %.not.us = icmp eq i32 %i.n, 0
  br i1 %.not.us, label %.critedge, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us
  %i.o = add nuw i64 %.03141.us, 1                ; 2 uses
  %exitcond80.not = icmp eq i64 %i.o, %2
  br i1 %exitcond80.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us, !llvm.loop !92

PyUnicode_READ.exit.us45:                         ; preds = %.lr.ph, %bb.e
  %.03141.us44 = phi i64 [ %i.w, %bb.e ], [ %1, %.lr.ph ] ; 3 uses
  %i.p = getelementptr [2 x i8], ptr %.0.i, i64 %.03141.us44
  %i.q = load i16, ptr %i.p, align 2, !tbaa !47
  %i.r = and i16 %i.q, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = and i32 %i.u, 4
  %.not.us47 = icmp eq i32 %i.v, 0
  br i1 %.not.us47, label %.critedge, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit.us45
  %i.w = add nuw i64 %.03141.us44, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %2
  br i1 %exitcond.not, label %.critedge33.thread, label %PyUnicode_READ.exit.us45, !llvm.loop !92

.critedge33.thread:                               ; preds = %bb.e, %bb.d, %bb.f, %_PyUnicode_DATA.exit
  %.031.lcssa = phi i64 [ %1, %_PyUnicode_DATA.exit ], [ %2, %bb.d ], [ %2, %bb.f ], [ %2, %bb.e ]
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %bb.j

PyUnicode_READ.exit:                              ; preds = %.lr.ph, %bb.f
  %.03141 = phi i64 [ %i.ae, %bb.f ], [ %1, %.lr.ph ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %.0.i, i64 %.03141
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10
  %i.z = and i32 %i.y, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10
  %i.ad = and i32 %i.ac, 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.ae = add nuw i64 %.03141, 1                  ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ae, %2
  br i1 %exitcond81.not, label %.critedge33.thread, label %PyUnicode_READ.exit, !llvm.loop !92

.critedge:                                        ; preds = %PyUnicode_READ.exit.us45, %PyUnicode_READ.exit.us, %PyUnicode_READ.exit
  %.us-phi = phi i64 [ %.03141.us, %PyUnicode_READ.exit.us ], [ %.03141, %PyUnicode_READ.exit ], [ %.03141.us44, %PyUnicode_READ.exit.us45 ] ; 4 uses
  switch i32 %i.d, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge
  %i.af = getelementptr i8, ptr %.0.i, i64 %.us-phi
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i32
  br label %.critedge33

bb.h:                                             ; preds = %.critedge
  %i.ai = getelementptr [2 x i8], ptr %.0.i, i64 %.us-phi
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !47
  %i.ak = zext i16 %i.aj to i32
  br label %.critedge33

bb.i:                                             ; preds = %.critedge
  %i.al = getelementptr [4 x i8], ptr %.0.i, i64 %.us-phi
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10
  br label %.critedge33

.critedge33:                                      ; preds = %bb.i, %bb.h, %bb.g
  %.0.i35 = phi i32 [ %i.ah, %bb.g ], [ %i.ak, %bb.h ], [ %i.am, %bb.i ]
  %.0.i35.fr = freeze i32 %.0.i35
  %i.an = icmp eq i32 %.0.i35.fr, 46              ; 2 uses
  %i.ao = zext i1 %i.an to i32
  store i32 %i.ao, ptr %5, align 4, !tbaa !10
  %i.ap = zext i1 %i.an to i64
  %spec.select = add nuw nsw i64 %.us-phi, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %.critedge33, %.critedge33.thread
  %i.aq = phi i64 [ %.031.lcssa, %.critedge33.thread ], [ %spec.select, %.critedge33 ] ; 6 uses
  %i.ar = icmp slt i64 %i.aq, %2
  br i1 %i.ar, label %.lr.ph53, label %.critedge2

.lr.ph53:                                         ; preds = %bb.j
  switch i32 %i.d, label %PyUnicode_READ.exit38 [
    i32 1, label %PyUnicode_READ.exit38.us
    i32 2, label %PyUnicode_READ.exit38.us60
  ]

PyUnicode_READ.exit38.us:                         ; preds = %.lr.ph53, %bb.k
  %.252.us = phi i64 [ %i.ay, %bb.k ], [ %i.aq, %.lr.ph53 ] ; 3 uses
  %i.as = getelementptr i8, ptr %.0.i, i64 %.252.us
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = and i32 %i.aw, 4
  %.not32.us = icmp eq i32 %i.ax, 0
  br i1 %.not32.us, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %PyUnicode_READ.exit38.us
  %i.ay = add i64 %.252.us, 1                     ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ay, %2
  br i1 %exitcond83.not, label %.critedge2, label %PyUnicode_READ.exit38.us, !llvm.loop !93

PyUnicode_READ.exit38.us60:                       ; preds = %.lr.ph53, %bb.l
  %.252.us59 = phi i64 [ %i.bg, %bb.l ], [ %i.aq, %.lr.ph53 ] ; 3 uses
  %i.az = getelementptr [2 x i8], ptr %.0.i, i64 %.252.us59
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !47
  %i.bb = and i16 %i.ba, 255
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10
  %i.bf = and i32 %i.be, 4
  %.not32.us62 = icmp eq i32 %i.bf, 0
  br i1 %.not32.us62, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %PyUnicode_READ.exit38.us60
  %i.bg = add i64 %.252.us59, 1                   ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond82.not, label %.critedge2, label %PyUnicode_READ.exit38.us60, !llvm.loop !93

PyUnicode_READ.exit38:                            ; preds = %.lr.ph53, %bb.m
  %.252 = phi i64 [ %i.bo, %bb.m ], [ %i.aq, %.lr.ph53 ] ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %.0.i, i64 %.252
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !10
  %i.bj = and i32 %i.bi, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !10
  %i.bn = and i32 %i.bm, 4
  %.not32 = icmp eq i32 %i.bn, 0
  br i1 %.not32, label %.critedge2, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit38
  %i.bo = add i64 %.252, 1                        ; 2 uses
  %exitcond84.not = icmp eq i64 %i.bo, %2
  br i1 %exitcond84.not, label %.critedge2, label %PyUnicode_READ.exit38, !llvm.loop !93

.critedge2:                                       ; preds = %PyUnicode_READ.exit38.us60, %bb.l, %PyUnicode_READ.exit38.us, %bb.k, %PyUnicode_READ.exit38, %bb.m, %bb.j
  %.2.lcssa = phi i64 [ %i.aq, %bb.j ], [ %2, %bb.m ], [ %2, %bb.k ], [ %.252, %PyUnicode_READ.exit38 ], [ %.252.us, %PyUnicode_READ.exit38.us ], [ %.252.us59, %PyUnicode_READ.exit38.us60 ], [ %2, %bb.l ] ; 2 uses
  %i.bp = sub i64 %.2.lcssa, %i.aq
  store i64 %i.bp, ptr %4, align 8, !tbaa !43
  %i.bq = sub i64 %2, %.2.lcssa
  store i64 %i.bq, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare double @PyComplex_RealAsDouble(ptr noundef) local_unnamed_addr #2

declare double @PyComplex_ImagAsDouble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!13 = !{!"_object", !8, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 8}
!15 = !{!8, !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !16, i64 24, !9, i64 32, !16, i64 40, !9, i64 48, !9, i64 52}
!18 = !{!17, !9, i64 52}
!19 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!20 = !{!"", !13, i64 0, !16, i64 16, !16, i64 24, !19, i64 32}
!21 = !{!20, !16, i64 16}
!22 = !{!17, !9, i64 16}
!23 = !{!"p1 _ZTS7_object", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!17, !9, i64 12}
!26 = !{!17, !9, i64 8}
!27 = !{!17, !9, i64 4}
!28 = !{!17, !16, i64 24}
!29 = !{!17, !16, i64 40}
!30 = !{!"", !23, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !9, i64 48, !8, i64 52, !8, i64 53}
!31 = !{!30, !9, i64 20}
!32 = !{!30, !16, i64 24}
!33 = !{!30, !16, i64 32}
!34 = !{!30, !23, i64 0}
!35 = !{!"PyVarObject", !13, i64 0, !16, i64 16}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!38 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!39 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!40 = !{!"short", !8, i64 0}
!41 = !{!"_typeobject", !35, i64 0, !36, i64 24, !16, i64 32, !16, i64 40, !11, i64 48, !16, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !36, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !16, i64 208, !11, i64 216, !11, i64 224, !37, i64 232, !38, i64 240, !39, i64 248, !12, i64 256, !23, i64 264, !11, i64 272, !11, i64 280, !16, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !23, i64 336, !23, i64 344, !23, i64 352, !11, i64 360, !23, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !40, i64 410}
!42 = !{!41, !36, i64 24}
!43 = !{!16, !16, i64 0}
!44 = !{!17, !9, i64 0}
!45 = !{!17, !9, i64 32}
!46 = !{!17, !9, i64 48}
!47 = !{!40, !40, i64 0}
!48 = !{!"", !23, i64 0, !23, i64 8, !23, i64 16, !36, i64 24, !36, i64 32}
!49 = !{!48, !23, i64 0}
!50 = !{!48, !23, i64 8}
!51 = !{!48, !23, i64 16}
!52 = !{!48, !36, i64 32}
!53 = !{!30, !9, i64 16}
!54 = !{!30, !11, i64 8}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!48, !36, i64 24}
!57 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96}
!58 = !{!57, !16, i64 88}
!59 = !{!57, !16, i64 0}
!60 = !{!57, !16, i64 8}
!61 = !{!57, !16, i64 56}
!62 = !{!57, !16, i64 64}
!63 = !{!57, !16, i64 72}
!64 = !{!57, !16, i64 40}
!65 = !{!57, !8, i64 32}
!66 = !{!57, !16, i64 80}
!67 = !{!57, !16, i64 96}
!68 = !{!57, !16, i64 48}
!69 = !{!57, !16, i64 24}
!70 = !{!57, !16, i64 16}
!71 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 24, i64 8, !43, i64 32, i64 4, !10, i64 40, i64 8, !43, i64 48, i64 4, !10, i64 52, i64 4, !10}
!72 = distinct !{!72, !55}
!73 = !{!"lconv", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !8, i64 80, !8, i64 81, !8, i64 82, !8, i64 83, !8, i64 84, !8, i64 85, !8, i64 86, !8, i64 87, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 93}
!74 = !{!73, !36, i64 16}
!75 = distinct !{!75, !55}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55, !78}
!78 = !{!"llvm.loop.peeled.count", i32 1}
!79 = distinct !{!79, !55, !89, !90}
!80 = distinct !{!80, !55, !89, !90}
!81 = distinct !{!81, !55, !90, !89}
!82 = distinct !{!82, !55, !89, !90}
!83 = distinct !{!83, !55, !90, !89}
!84 = distinct !{!84, !55, !89, !90}
!85 = distinct !{!85, !55, !89, !90}
!86 = distinct !{!86, !55, !90, !89}
!87 = distinct !{!87, !55, !89, !90}
!88 = distinct !{!88, !55, !90, !89}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!"branch_weights", i32 8, i32 8}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
end_hunk_0
