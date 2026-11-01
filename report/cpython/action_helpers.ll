Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/action_helpers?download=true
inline.NumInlined: 84
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_build_concatenated_str:bb.a
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !46 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !50
  %i.dd = icmp eq i32 %i.dc, 22
  br i1 %i.dd, label %.lr.ph8, label %._crit_edge76, !llvm.loop !212

.lr.ph8:                                          ; preds = %.lr.ph75.preheader, %.lr.ph75
  %i.de = phi ptr [ %i.db, %.lr.ph75 ], [ %i.cx, %.lr.ph75.preheader ] ; 3 uses
  %.0747 = phi i64 [ %i.di, %.lr.ph75 ], [ %.012883, %.lr.ph75.preheader ]
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34
  %i.dh = tail call i32 @PyUnicodeWriter_WriteStr(ptr noundef nonnull %i.cu, ptr noundef %i.dg) #14
  %.not193 = icmp eq i32 %i.dh, 0
  br i1 %.not193, label %bb.aa, label %.thread9

.thread9:                                         ; preds = %.lr.ph8
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.cu) #14
  br label %.critedge

bb.aa:                                            ; preds = %.lr.ph8
  %i.di = add i64 %.0747, 1                       ; 4 uses
  %exitcond100.not = icmp eq i64 %i.di, %.0160.lcssa
  br i1 %exitcond100.not, label %.._crit_edge76_crit_edge, label %.lr.ph75, !llvm.loop !212

.._crit_edge76_crit_edge:                         ; preds = %bb.aa
  br label %._crit_edge76, !llvm.loop !212

._crit_edge76:                                    ; preds = %.lr.ph75, %.._crit_edge76_crit_edge, %.lr.ph75.preheader
  %.0124.lcssa.ph = phi ptr [ %i.de, %.._crit_edge76_crit_edge ], [ %i.cj, %.lr.ph75.preheader ], [ %i.de, %.lr.ph75 ] ; 2 uses
  %.0.lcssa.ph = phi i64 [ %.0160.lcssa, %.._crit_edge76_crit_edge ], [ %.012883, %.lr.ph75.preheader ], [ %i.di, %.lr.ph75 ]
  %i.dj = add i64 %.0.lcssa.ph, -1
  %i.dk = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.cu) #14 ; 6 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge76
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.dn = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.dm, ptr noundef nonnull %i.dk) #14
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load i32, ptr %i.dk, align 8, !tbaa !34 ; 2 uses
  %.not.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.dk, align 8, !tbaa !34
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dk) #14
  br label %.critedge

bb.af:                                            ; preds = %bb.ab
  %i.ds = getelementptr i8, ptr %i.cj, i64 40
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !37
  %i.du = getelementptr i8, ptr %i.cj, i64 44
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !38
  %i.dw = getelementptr i8, ptr %.0124.lcssa.ph, i64 48
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39
  %i.dy = getelementptr i8, ptr %.0124.lcssa.ph, i64 52
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !40
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.eb = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.dk, ptr noundef %i.ct, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, ptr noundef %i.ea) #14 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.critedge, label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.af, %bb.y, %bb.x
  %.3131 = phi i64 [ %.012883, %bb.x ], [ %.012883, %bb.y ], [ %i.dj, %bb.af ] ; 3 uses
  %.3 = phi ptr [ %i.cj, %bb.x ], [ %i.cj, %bb.y ], [ %i.eb, %bb.af ] ; 3 uses
  %i.ed = getelementptr i8, ptr %.3, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %.val = load ptr, ptr %i.ef, align 8, !tbaa !82
  %.not31 = icmp eq ptr %.val, @PyUnicode_Type
  br i1 %.not31, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %Py_DECREF.exit
  %i.eg = getelementptr i8, ptr %i.ee, i64 16
  %.val201 = load i64, ptr %i.eg, align 8, !tbaa !97
  %i.eh = icmp eq i64 %.val201, 0
  br i1 %i.eh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit, %bb.ag, %bb.w
  %.4132 = phi i64 [ %.3131, %bb.ag ], [ %.3131, %Py_DECREF.exit ], [ %.012883, %bb.w ]
  %.4 = phi ptr [ %.3, %bb.ag ], [ %.3, %Py_DECREF.exit ], [ %i.cj, %bb.w ]
  %i.ei = add i64 %.982, 1
  %i.ej = getelementptr [8 x i8], ptr %i.bv, i64 %.982
  store ptr %.4, ptr %i.ej, align 8, !tbaa !46
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.10.ph = phi i64 [ %.982, %bb.ag ], [ %i.ei, %bb.ah ]
  %.5.ph = phi i64 [ %.3131, %bb.ag ], [ %.4132, %bb.ah ]
  %i.ek = add i64 %.5.ph, 1                       ; 2 uses
  %i.el = icmp slt i64 %i.ek, %.0160.lcssa
  br i1 %i.el, label %bb.w, label %.critedge, !llvm.loop !213

.critedge:                                        ; preds = %bb.o, %bb.m, %bb.ai, %bb.z, %._crit_edge76, %bb.af, %.critedge198._crit_edge.thread, %.critedge198._crit_edge, %._crit_edge.thread, %bb.ae, %bb.ad, %bb.ac, %.thread9, %._crit_edge
  %.23 = phi ptr [ null, %._crit_edge ], [ %i.bq, %.critedge198._crit_edge ], [ null, %bb.ac ], [ null, %bb.m ], [ null, %bb.af ], [ null, %bb.ad ], [ null, %.thread9 ], [ null, %bb.ae ], [ null, %._crit_edge.thread ], [ %i.bt, %.critedge198._crit_edge.thread ], [ null, %._crit_edge76 ], [ null, %bb.z ], [ %i.bq, %bb.ai ], [ null, %bb.o ]
  ret ptr %.23
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_checked_future_import(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %1, ptr noundef nonnull @.str.45) #14
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !44
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph32, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %4, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %4, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %4, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !39
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr i8, ptr %4, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = sext i32 %i.t to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef %0, ptr noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r, i64 noundef %i.u, ptr noundef nonnull @.str.46)
  br label %bb.g

.lr.ph32:                                         ; preds = %.lr.ph, %bb.f
  %.02931 = phi i64 [ %i.ac, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.e, i64 %.02931
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !215
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !217
  %i.y = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %i.x, ptr noundef nonnull @.str.47) #14
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph32
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !84
  %i.ab = or i32 %i.aa, 32
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph32
  %i.ac = add nuw nsw i64 %.02931, 1              ; 2 uses
  %i.ad = load i64, ptr %2, align 8, !tbaa !44
  %i.ae = icmp slt i64 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph32, label %.critedge

.critedge:                                        ; preds = %bb.f, %.preheader, %.lr.ph, %bb.b, %bb.a
  %.not28 = icmp ne ptr %4, null
  %i.af = zext i1 %.not28 to i32
  %i.ag = tail call ptr @_PyAST_ImportFrom(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %i.af, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) #14
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
  %.025 = phi ptr [ null, %bb.d ], [ %i.ag, %.critedge ]
  ret ptr %.025
}

declare ptr @_PyAST_ImportFrom(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_PyPegen_register_stmts(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly returned captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !218
  %.not = icmp eq i32 %i.b, 0
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !220
  %i.i = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !221
  %i.k = getelementptr i8, ptr %i.h, i64 64       ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !71
  %i.m = icmp sgt i32 %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = load <4 x i32>, ptr %i.k, align 8, !tbaa !15
  store <4 x i32> %2, ptr %i.i, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Tuple(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_List(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Subscript(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Attribute(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Starred(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

declare ptr @_PyPegen_raise_error_known_location(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @_PyUnicode_IsWhitespace(i32 noundef) local_unnamed_addr #3

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #3

declare i32 @PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_NoMemory() local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"p1 _ZTS9tok_state", !16, i64 0}
!18 = !{!"any p2 pointer", !16, i64 0}
!19 = !{!"p1 _ZTS6_arena", !16, i64 0}
!20 = !{!"p2 omnipotent char", !18, i64 0}
!21 = !{!"p1 int", !16, i64 0}
!22 = !{!"p1 _ZTS7_object", !16, i64 0}
!23 = !{!"long", !13, i64 0}
!24 = !{!"", !16, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!26 = !{!"", !17, i64 0, !18, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !19, i64 32, !18, i64 40, !20, i64 48, !14, i64 56, !14, i64 60, !21, i64 64, !14, i64 72, !22, i64 80, !14, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !24, i64 112, !16, i64 136, !14, i64 144, !14, i64 148, !14, i64 152, !25, i64 156}
!27 = !{!26, !19, i64 32}
!28 = !{!"", !23, i64 0, !18, i64 8}
!29 = !{!28, !18, i64 8}
!30 = !{!16, !16, i64 0}
!31 = !{!28, !23, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!13, !13, i64 0}
!35 = !{!22, !22, i64 0}
!36 = !{!"_expr", !14, i64 0, !13, i64 8, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52}
!37 = !{!36, !14, i64 40}
!38 = !{!36, !14, i64 44}
!39 = !{!36, !14, i64 48}
!40 = !{!36, !14, i64 52}
!41 = !{!"p1 _ZTS5_memo", !16, i64 0}
!42 = !{!"", !14, i64 0, !22, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !41, i64 40, !22, i64 48}
!43 = !{!"", !23, i64 0, !18, i64 8, !13, i64 16}
!44 = !{!43, !23, i64 0}
!45 = !{!"p1 _ZTS5_expr", !16, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"", !14, i64 0, !45, i64 8}
!48 = !{!47, !14, i64 0}
!49 = !{!47, !45, i64 8}
!50 = !{!36, !14, i64 0}
!51 = !{!"", !45, i64 0, !45, i64 8}
!52 = !{!51, !45, i64 0}
!53 = !{!51, !45, i64 8}
!54 = !{!"p1 _ZTS8_pattern", !16, i64 0}
!55 = !{!"", !45, i64 0, !54, i64 8}
!56 = !{!55, !45, i64 0}
!57 = !{!55, !54, i64 8}
!58 = !{!"p1 _ZTS4_arg", !16, i64 0}
!59 = !{!"", !58, i64 0, !45, i64 8}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !45, i64 8}
!62 = !{!42, !22, i64 8}
!63 = !{!"", !16, i64 0, !16, i64 8}
!64 = !{!63, !16, i64 0}
!65 = !{!63, !16, i64 8}
!66 = !{!"", !58, i64 0, !16, i64 8, !58, i64 16}
!67 = !{!66, !58, i64 0}
!68 = !{!66, !16, i64 8}
!69 = !{!66, !58, i64 16}
!70 = !{!"_stmt", !14, i64 0, !13, i64 8, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76}
!71 = !{!70, !14, i64 64}
!72 = !{!70, !14, i64 68}
!73 = !{!70, !14, i64 72}
!74 = !{!70, !14, i64 76}
!75 = !{!"", !16, i64 0, !14, i64 8}
!76 = !{!75, !16, i64 0}
!77 = !{!75, !14, i64 8}
!78 = !{!"p1 _ZTS8_keyword", !16, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!81 = !{!"_object", !13, i64 0, !80, i64 8}
!82 = !{!81, !80, i64 8}
!83 = !{!"p1 omnipotent char", !16, i64 0}
!84 = !{!26, !14, i64 100}
!85 = !{!42, !14, i64 20}
!86 = !{!42, !14, i64 32}
!87 = !{!42, !14, i64 24}
!88 = !{!26, !17, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!90 = !{!"tok_state", !83, i64 0, !83, i64 8, !83, i64 16, !14, i64 24, !83, i64 32, !83, i64 40, !83, i64 48, !83, i64 56, !14, i64 64, !89, i64 72, !14, i64 80, !14, i64 84, !13, i64 88, !14, i64 488, !14, i64 492, !83, i64 496, !83, i64 504, !14, i64 512, !14, i64 516, !14, i64 520, !14, i64 524, !14, i64 528, !13, i64 532, !13, i64 732, !13, i64 1532, !22, i64 2336, !22, i64 2344, !13, i64 2352, !14, i64 2752, !14, i64 2756, !83, i64 2760, !14, i64 2768, !83, i64 2776, !83, i64 2784, !22, i64 2792, !22, i64 2800, !22, i64 2808, !83, i64 2816, !83, i64 2824, !83, i64 2832, !14, i64 2840, !14, i64 2844, !16, i64 2848, !14, i64 2856, !13, i64 2864, !14, i64 18464, !14, i64 18468, !14, i64 18472, !14, i64 18476}
!91 = !{!90, !14, i64 18464}
!92 = !{!"_tokenizer_mode", !14, i64 0, !14, i64 4, !14, i64 8, !13, i64 12, !14, i64 16, !14, i64 20, !83, i64 24, !83, i64 32, !14, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !83, i64 80, !14, i64 88, !14, i64 92, !14, i64 96}
!93 = !{!"short", !13, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_PyUnicodeObject_state", !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0}
!96 = !{!"", !81, i64 0, !23, i64 16, !23, i64 24, !95, i64 32}
!97 = !{!96, !23, i64 16}
!98 = !{!42, !22, i64 48}
!99 = !{!"", !16, i64 0, !22, i64 8}
!100 = !{!99, !22, i64 8}
!101 = !{!99, !16, i64 0}
!102 = !{!"_comprehension", !45, i64 0, !45, i64 8, !16, i64 16, !14, i64 24}
!103 = !{!102, !16, i64 16}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = !{!42, !14, i64 28}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !32}
!111 = distinct !{!111, !32}
!112 = distinct !{!112, !32}
!113 = distinct !{!113, !32}
!114 = !{!"p1 _ZTS3_is", !16, i64 0}
!115 = !{!114, !114, i64 0}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !32}
!118 = !{!42, !14, i64 0}
!119 = distinct !{!119, !32}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !32}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !32}
!124 = distinct !{!124, !33}
!125 = distinct !{null, null}
!126 = distinct !{!126, !32}
!127 = distinct !{null}
!128 = distinct !{null, null}
!129 = distinct !{null}
!130 = distinct !{null}
!131 = distinct !{!131, !32}
!132 = distinct !{!132, !33}
!133 = distinct !{!133, !32}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !32}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !32}
!138 = distinct !{!138, !33}
!139 = !{!54, !54, i64 0}
!140 = !{!"_arg", !22, i64 0, !45, i64 8, !22, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36}
!141 = !{!140, !22, i64 0}
!142 = !{!140, !45, i64 8}
!143 = !{!140, !14, i64 24}
!144 = !{!140, !14, i64 28}
!145 = !{!140, !14, i64 32}
!146 = !{!140, !14, i64 36}
!147 = distinct !{!147, !32}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !32}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = !{!58, !58, i64 0}
!159 = !{!"", !14, i64 0}
!160 = !{!159, !14, i64 0}
!161 = !{!70, !14, i64 0}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !32}
!165 = !{!26, !23, i64 128}
!166 = !{!26, !16, i64 112}
!167 = !{!"", !14, i64 0, !83, i64 8}
!168 = !{!167, !83, i64 8}
!169 = !{!167, !14, i64 0}
!170 = !{!"p1 _ZTS12_type_ignore", !16, i64 0}
!171 = !{!170, !170, i64 0}
!172 = !{!26, !18, i64 8}
!173 = !{!26, !14, i64 16}
!174 = !{!42, !14, i64 16}
!175 = !{!92, !14, i64 96}
!176 = distinct !{!176, !32}
!177 = distinct !{!177, !32}
!178 = distinct !{!178, !32}
!179 = distinct !{!179, !32}
!180 = distinct !{!180, !32}
!181 = distinct !{!181, !32}
!182 = !{!"PyVarObject", !81, i64 0, !23, i64 16}
!183 = !{!182, !23, i64 16}
!184 = distinct !{!184, !33}
!185 = distinct !{!185, !33}
!186 = distinct !{!186, !32, !104, !105}
!187 = distinct !{!187, !33}
!188 = distinct !{!188, !32, !104, !105}
!189 = distinct !{!189, !33}
!190 = distinct !{!190, !32, !104}
!191 = distinct !{!191, !32, !104}
!192 = distinct !{!192, !32}
!193 = distinct !{!193, !32}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !32}
!196 = !{!"_keyword", !22, i64 0, !45, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28}
!197 = !{!196, !22, i64 0}
!198 = distinct !{!198, !32}
!199 = distinct !{!199, !32}
!200 = distinct !{!200, !32, !104, !105}
!201 = distinct !{!201, !33}
!202 = distinct !{!202, !32, !104}
!203 = !{!92, !14, i64 20}
!204 = !{!83, !83, i64 0}
!205 = !{!23, !23, i64 0}
!206 = distinct !{!206, !32}
!207 = distinct !{!207, !32}
!208 = distinct !{!208, !32}
!209 = distinct !{!209, !32}
!210 = distinct !{!210, !32}
!211 = distinct !{!211, !32}
!212 = distinct !{!212, !32}
!213 = distinct !{!213, !32}
!214 = !{!"p1 _ZTS6_alias", !16, i64 0}
!215 = !{!214, !214, i64 0}
!216 = !{!"_alias", !22, i64 0, !22, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28}
!217 = !{!216, !22, i64 0}
!218 = !{!26, !14, i64 148}
!219 = !{!"p1 _ZTS5_stmt", !16, i64 0}
!220 = !{!219, !219, i64 0}
!221 = !{!26, !14, i64 156}
end_hunk_0
