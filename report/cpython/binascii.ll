Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/binascii?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@base85_encode_impl:bb.a
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.n = icmp sgt i64 %.16.val, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0703 = phi ptr [ %i.bg, %.lr.ph ], [ %i.m, %bb.h ] ; 6 uses
  %.0732 = phi i64 [ %i.bh, %.lr.ph ], [ %.16.val, %bb.h ] ; 2 uses
  %.0741 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.val, %bb.h ] ; 5 uses
  %i.o = load i8, ptr %.0741, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw i32 %i.p, 24
  %i.r = getelementptr i8, ptr %.0741, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = getelementptr i8, ptr %.0741, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr i8, ptr %.0741, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 5 uses
  %i.af = urem i32 %i.ae, 85
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = getelementptr i8, ptr %.0703, i64 4
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %i.ak = udiv i32 %i.ae, 85
  %i.al = urem i32 %i.ak, 85
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr i8, ptr %.0703, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !17
  %i.aq = udiv i32 %i.ae, 7225
  %i.ar = urem i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = getelementptr i8, ptr %.0703, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !17
  %i.aw = udiv i32 %i.ae, 614125
  %.lhs.trunc = trunc nuw nsw i32 %i.aw to i16
  %i.ax = urem i16 %.lhs.trunc, 85
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %i.bb = getelementptr i8, ptr %.0703, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !17
  %i.bc = udiv i32 %i.ae, 52200625
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  store i8 %i.bf, ptr %.0703, align 1, !tbaa !17
  %i.bg = getelementptr i8, ptr %.0703, i64 5     ; 2 uses
  %i.bh = add nsw i64 %.0732, -4                  ; 2 uses
  %i.bi = getelementptr i8, ptr %.0741, i64 4     ; 2 uses
  %i.bj = icmp samesign ugt i64 %.0732, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.074.lcssa = phi ptr [ %.0.val, %bb.h ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.073.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.bh, %.lr.ph ] ; 4 uses
  %.070.lcssa = phi ptr [ %i.m, %bb.h ], [ %i.bg, %.lr.ph ] ; 7 uses
  %i.bk = icmp sgt i64 %.073.lcssa, 0
  br i1 %i.bk, label %.preheader.1, label %bb.o

.preheader.1:                                     ; preds = %._crit_edge
  %i.bl = load i8, ptr %.074.lcssa, align 1, !tbaa !17
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not15 = icmp eq i64 %.073.lcssa, 1
  br i1 %.not15, label %.preheader.2.thread, label %.preheader.2

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.bn = shl nuw nsw i32 %i.bm, 16
  br label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.bo = getelementptr i8, ptr %.074.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bm, 16
  %i.bs = shl nuw nsw i32 %i.bq, 8
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %.073.lcssa, 2
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.2
  %i.bv = getelementptr i8, ptr %.074.lcssa, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bt, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %.preheader.2, %bb.i, %.preheader.2.thread
  %.1.2 = phi i32 [ %i.by, %bb.i ], [ %i.bt, %.preheader.2 ], [ %i.bn, %.preheader.2.thread ]
  %i.bz = shl nuw i32 %.1.2, 8                    ; 5 uses
  %i.ca = add nuw nsw i64 %.073.lcssa, 1
  %i.cb = select i1 %.not, i64 %i.ca, i64 5       ; 4 uses
  %i.cc = icmp samesign ugt i64 %i.cb, 4
  br i1 %i.cc, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.cd = urem i32 %i.bz, 85
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = getelementptr i8, ptr %.070.lcssa, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !17
  br label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp eq i64 %i.cb, 4
  br i1 %i.ci, label %.thread18, label %bb.l

.thread18:                                        ; preds = %bb.k, %.thread
  %i.cj = udiv i32 %i.bz, 85
  %i.ck = urem i32 %i.cj, 85
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = getelementptr i8, ptr %.070.lcssa, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %i.cb, 2
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.cq = udiv i32 %i.bz, 7225
  %i.cr = urem i32 %i.cq, 85
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = getelementptr i8, ptr %.070.lcssa, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = udiv i32 %i.bz, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cw to i16
  %i.cx = urem i16 %.lhs.trunc19, 85
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = getelementptr i8, ptr %.070.lcssa, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !17
  %i.dc = udiv i32 %i.bz, 52200625
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  store i8 %i.df, ptr %.070.lcssa, align 1, !tbaa !17
  %i.dg = getelementptr i8, ptr %.070.lcssa, i64 %i.cb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.171 = phi ptr [ %i.dg, %bb.n ], [ %.070.lcssa, %._crit_edge ]
  %i.dh = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.171) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.269 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.dh, %bb.o ], [ null, %bb.g ]
  ret ptr %.269
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.16.val, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.53) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = ashr exact i64 %.16.val, 1
  %i.f = tail call ptr @PyBytesWriter_Create(i64 noundef %i.e) #6 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #6
  %i.i = icmp sgt i64 %.16.val, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %1 = add nsw i64 %.16.val, -2
  %2 = lshr exact i64 %1, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0294 = phi i64 [ %i.aa, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0303 = phi i64 [ %i.ac, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0303 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add nuw nsw i64 %.0294, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0294
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  %i.ac = add nuw nsw i64 %.0303, 2
  %exitcond.not = icmp eq i64 %.0294, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ad = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ad, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_Py_strhex_bytes_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @binascii_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %i.g) #6
  %.lobit = ashr i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24, !34}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"p1 long", !11, i64 0}
!21 = !{!"", !11, i64 0, !12, i64 8, !18, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !19, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !11, i64 72}
!22 = !{!21, !11, i64 0}
!23 = !{!21, !18, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !12, i64 8}
!26 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!27 = !{!"_object", !8, i64 0, !26, i64 8}
!28 = !{!"PyVarObject", !27, i64 0, !18, i64 16}
!29 = !{!28, !18, i64 16}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!18, !18, i64 0}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"short", !8, i64 0}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24, !30, !31}
!38 = distinct !{!38, !24, !30, !31}
!39 = distinct !{!39, !24, !31, !30}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24, !30, !31}
!42 = distinct !{!42, !24, !30, !31}
!43 = distinct !{!43, !24, !31, !30}
!44 = !{!"branch_weights", i32 8, i32 8}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24, !30, !31}
!50 = distinct !{!50, !24, !31, !30}
!51 = distinct !{!51, !24, !30, !31}
!52 = distinct !{!52, !24, !30, !31}
!53 = distinct !{!53, !24, !31, !30}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = !{!35, !35, i64 0}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!27, !26, i64 8}
!62 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!63 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!64 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!65 = !{!"_typeobject", !28, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !11, i64 48, !18, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !19, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !18, i64 208, !11, i64 216, !11, i64 224, !62, i64 232, !63, i64 240, !64, i64 248, !26, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !18, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !35, i64 410}
!66 = !{!65, !18, i64 168}
!67 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!68 = !{!"", !27, i64 0, !18, i64 16, !18, i64 24, !67, i64 32}
!69 = !{!68, !18, i64 16}
!70 = !{!65, !19, i64 24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
end_hunk_0
