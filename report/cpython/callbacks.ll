inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0_@_CallPythonObject:bb.a
  %.0140 = phi ptr [ %7, %.lr.ph ], [ %i.be, %bb.p ] ; 3 uses
  %.075138 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.p ] ; 5 uses
  %i.o = getelementptr [8 x i8], ptr %i.k, i64 %.075138
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38   ; 10 uses
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.r = tail call i32 @PyObject_IsInstance(ptr noundef %i.p, ptr noundef %i.q) #5
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.t = tail call ptr @PyObject_GetTypeData(ptr noundef %i.p, ptr noundef %i.s) #5 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !45
  %.not8.i.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i.i, label %bb.o, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.t, i64 72       ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %.not89 = icmp eq ptr %i.w, null
  br i1 %.not89, label %bb.i, label %bb.g

bb.g:                                             ; preds = %PyStgInfo_FromType.exit
  %i.x = tail call i32 @_ctypes_simple_instance(ptr noundef nonnull %0, ptr noundef %i.p) #5
  %.not90 = icmp eq i32 %i.x, 0
  br i1 %.not90, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.z = load ptr, ptr %.0140, align 8, !tbaa !67
  %i.aa = getelementptr i8, ptr %i.t, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !68
  %i.ac = tail call ptr %i.y(ptr noundef %i.z, i64 noundef %i.ab) #5 ; 2 uses
  %.not91.not = icmp eq ptr %i.ac, null
  br i1 %.not91.not, label %.thread, label %bb.p

bb.i:                                             ; preds = %bb.g, %PyStgInfo_FromType.exit
  %i.ad = tail call ptr @_PyThreadState_GetCurrent() #5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.af = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ag = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !69
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai
  %.0.copyload.i.i.i = load ptr, ptr %i.aj, align 1 ; 2 uses
  %i.ak = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.ak, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.j

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.i
  %i.al = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.ad, ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0, ptr noundef null) #5
  br label %_PyObject_CallNoArgs.exit

bb.j:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.am = tail call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.p, ptr noundef null, i64 noundef 0, ptr noundef null) #5, !inline_history !70
  %i.an = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.ad, ptr noundef nonnull %i.p, ptr noundef %i.am, ptr noundef null) #5
  br label %_PyObject_CallNoArgs.exit

_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.al, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.an, %bb.j ] ; 8 uses
  %.not93 = icmp eq ptr %.0.i.i, null
  br i1 %.not93, label %.thread, label %bb.k

bb.k:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !71  ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i, i64 8
  %.val103 = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %.not.i104 = icmp eq ptr %.val103, %i.ao
  br i1 %.not.i104, label %Py_DECREF.exit98, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.k
  %i.aq = tail call i32 @PyType_IsSubtype(ptr noundef %.val103, ptr noundef %i.ao) #5
  %.not130 = icmp eq i32 %i.aq, 0
  br i1 %.not130, label %bb.l, label %Py_DECREF.exit98

bb.l:                                             ; preds = %PyObject_TypeCheck.exit
  %i.ar = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.p, ptr noundef nonnull %.0.i.i) #5 ; 0 uses
  %i.at = load i32, ptr %.0.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.at, -1
  br i1 %.not.i97, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %.0.i.i, align 8, !tbaa !41
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #5
  br label %.thread

Py_DECREF.exit98:                                 ; preds = %bb.k, %PyObject_TypeCheck.exit
  %i.aw = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !72
  %i.ay = load ptr, ptr %.0140, align 8, !tbaa !67
  %i.az = getelementptr i8, ptr %i.t, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.bb = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %i.bc = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bb, ptr noundef nonnull @.str.7, ptr noundef %i.p) #5 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.h, %Py_DECREF.exit98
  %.0.i.i.sink = phi ptr [ %.0.i.i, %Py_DECREF.exit98 ], [ %i.ac, %bb.h ]
  %i.bd = getelementptr [8 x i8], ptr %i.d, i64 %.075138
  store ptr %.0.i.i.sink, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr i8, ptr %.0140, i64 8
  %i.bf = add nuw nsw i64 %.075138, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.p, %bb.d
  %.075.lcssa = phi i64 [ 0, %bb.d ], [ %.val, %bb.p ] ; 5 uses
  %i.bg = and i32 %6, 24
  %.not84 = icmp eq i32 %i.bg, 0
  br i1 %.not84, label %bb.u, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bh = call ptr @_ctypes_get_errobj(ptr noundef %0, ptr noundef nonnull %i.a) #5 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.8, ptr noundef %4) #5
  br label %Py_XDECREF.exit109

bb.s:                                             ; preds = %bb.q
  %i.bj = and i32 %6, 8
  %.not85 = icmp eq i32 %i.bj, 0
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = tail call ptr @__errno_location() #6    ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !6
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !6
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !6
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %._crit_edge
  %.073 = phi ptr [ %i.bh, %bb.t ], [ %i.bh, %bb.s ], [ null, %._crit_edge ] ; 4 uses
  %i.bo = call ptr @PyObject_Vectorcall(ptr noundef %4, ptr noundef nonnull %i.d, i64 noundef %.val, ptr noundef null) #5 ; 6 uses
  %i.bp = icmp eq ptr %i.bo, null                 ; 2 uses
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.9, ptr noundef %4) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bq = and i32 %6, 8
  %.not86 = icmp eq i32 %i.bq, 0
  br i1 %.not86, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !6
  %i.bt = tail call ptr @__errno_location() #6    ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !6
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not.i105 = icmp eq ptr %.073, null
  br i1 %.not.i105, label %Py_XDECREF.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = load i32, ptr %.073, align 8, !tbaa !41 ; 2 uses
  %.not.i.i106 = icmp sgt i32 %i.bv, -1
  br i1 %.not.i.i106, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.bw = add nsw i32 %i.bv, -1                   ; 2 uses
  store i32 %i.bw, ptr %.073, align 8, !tbaa !41
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ab, label %Py_XDECREF.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %.073) #5
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab
  %i.by = icmp ne ptr %2, @ffi_type_void
  %i.bz = icmp ne ptr %i.bo, null
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %bb.ac, label %Py_DECREF.exit96

bb.ac:                                            ; preds = %Py_XDECREF.exit
  %i.ca = load i64, ptr %2, align 8, !tbaa !78
  %i.cb = call ptr %3(ptr noundef %1, ptr noundef nonnull %i.bo, i64 noundef %i.ca) #5 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.10, ptr noundef %4) #5
  br label %Py_DECREF.exit96.thread

bb.ae:                                            ; preds = %bb.ac
  %i.cd = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.11) #5
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !79
  %.not87 = icmp eq ptr %3, %i.cf
  br i1 %.not87, label %Py_DECREF.exit96.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = icmp eq ptr %i.cb, @_Py_NoneStruct
  br i1 %i.cg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ch = load i32, ptr %i.cb, align 8, !tbaa !41 ; 2 uses
  %.not.i95 = icmp sgt i32 %i.ch, -1
  br i1 %.not.i95, label %bb.ah, label %Py_DECREF.exit96.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.cb, align 8, !tbaa !41
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ai, label %Py_DECREF.exit96.thread

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #5
  br label %Py_DECREF.exit96.thread

bb.aj:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !38
  %i.cl = call i32 @PyErr_WarnEx(ptr noundef %i.ck, ptr noundef nonnull @.str.12, i64 noundef 1) #5
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %bb.ak, label %Py_DECREF.exit96.thread

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.10, ptr noundef %4) #5
  br label %Py_DECREF.exit96.thread

Py_DECREF.exit96:                                 ; preds = %Py_XDECREF.exit
  br i1 %i.bp, label %Py_XDECREF.exit109, label %Py_DECREF.exit96.thread

Py_DECREF.exit96.thread:                          ; preds = %bb.ae, %bb.aj, %bb.ak, %bb.ad, %bb.ag, %bb.ah, %bb.ai, %Py_DECREF.exit96
  %i.cn = load i32, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %.not.i.i108 = icmp sgt i32 %i.cn, -1
  br i1 %.not.i.i108, label %bb.al, label %Py_XDECREF.exit109

bb.al:                                            ; preds = %Py_DECREF.exit96.thread
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.bo, align 8, !tbaa !41
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.am, label %Py_XDECREF.exit109

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #5
  br label %Py_XDECREF.exit109

Py_XDECREF.exit109:                               ; preds = %bb.am, %bb.al, %Py_DECREF.exit96.thread, %Py_DECREF.exit96, %.thread, %bb.r
  %.075135 = phi i64 [ %.075.lcssa, %bb.am ], [ %.075.lcssa, %bb.al ], [ %.075.lcssa, %Py_DECREF.exit96.thread ], [ %.075.lcssa, %Py_DECREF.exit96 ], [ %.075138, %.thread ], [ %.075.lcssa, %bb.r ] ; 2 uses
  %.not144 = icmp eq i64 %.075135, 0
  br i1 %.not144, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %Py_XDECREF.exit109, %Py_DECREF.exit
  %.074141 = phi i64 [ %i.cv, %Py_DECREF.exit ], [ 0, %Py_XDECREF.exit109 ] ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.d, i64 %.074141
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !38 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !41 ; 2 uses
  %.not.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i, label %bb.an, label %Py_DECREF.exit

bb.an:                                            ; preds = %.lr.ph142
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !41
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.lr.ph142, %bb.an, %bb.ao
  %i.cv = add nuw i64 %.074141, 1                 ; 2 uses
  %exitcond153.not = icmp eq i64 %i.cv, %.075135
  br i1 %exitcond153.not, label %._crit_edge143, label %.lr.ph142, !llvm.loop !81

.thread:                                          ; preds = %_PyObject_CallNoArgs.exit, %bb.h, %bb.n, %bb.m, %bb.l, %bb.o
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.13, i64 noundef %.075138, ptr noundef %4) #5
  br label %Py_XDECREF.exit109

._crit_edge143:                                   ; preds = %Py_DECREF.exit, %Py_XDECREF.exit109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @PyGILState_Release(i32 noundef) local_unnamed_addr #2

declare i32 @_ctypes_simple_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @_ctypes_get_errobj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyErr_FormatUnraisable(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ctypes_get_fielddesc(ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyThreadState_GetCurrent() local_unnamed_addr #2

declare ptr @_PyObject_MakeTpCall(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_Py_CheckFunctionResult(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !15, i64 16}
!11 = !{!"PyVarObject", !12, i64 0, !15, i64 16}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !13, i64 24}
!17 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184}
!18 = !{!"p1 _ZTS7_object", !14, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS9_ffi_type", !14, i64 0}
!21 = !{!22, !14, i64 24}
!22 = !{!"", !11, i64 0, !14, i64 24, !14, i64 32, !23, i64 40, !7, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !14, i64 104, !20, i64 112, !8, i64 120}
!23 = !{!"", !7, i64 0, !7, i64 4, !24, i64 8, !20, i64 16, !7, i64 24, !7, i64 28}
!24 = !{!"p2 _ZTS9_ffi_type", !25, i64 0}
!25 = !{!"any p2 pointer", !14, i64 0}
!26 = !{!22, !7, i64 72}
!27 = !{!12, !13, i64 8}
!28 = !{!29, !15, i64 168}
!29 = !{!"_typeobject", !11, i64 0, !30, i64 24, !15, i64 32, !15, i64 40, !14, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !15, i64 168, !30, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !15, i64 208, !14, i64 216, !14, i64 224, !31, i64 232, !32, i64 240, !33, i64 248, !13, i64 256, !18, i64 264, !14, i64 272, !14, i64 280, !15, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !14, i64 360, !18, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !34, i64 410}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!32 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!33 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!34 = !{!"short", !8, i64 0}
!35 = !{!36, !37, i64 24}
!36 = !{!"", !11, i64 0, !37, i64 24, !15, i64 32}
!37 = !{!"p2 _ZTS7_object", !25, i64 0}
!38 = !{!18, !18, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!8, !8, i64 0}
!42 = !{!22, !18, i64 96}
!43 = !{!22, !14, i64 104}
!44 = !{!17, !13, i64 40}
!45 = !{!46, !7, i64 0}
!46 = !{!"", !7, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !47, i64 32, !18, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !7, i64 136, !8, i64 140, !30, i64 144, !7, i64 152, !48, i64 160}
!47 = !{!"_ffi_type", !15, i64 0, !34, i64 8, !34, i64 10, !24, i64 16}
!48 = !{!"p1 long", !14, i64 0}
!49 = !{!46, !14, i64 64}
!50 = !{!22, !20, i64 112}
!51 = !{!22, !14, i64 32}
!52 = !{!22, !18, i64 80}
!53 = !{!22, !18, i64 88}
!54 = !{!55, !18, i64 888}
!55 = !{!"_heaptypeobject", !29, i64 0, !56, i64 416, !57, i64 448, !58, i64 736, !59, i64 760, !60, i64 840, !18, i64 856, !18, i64 864, !18, i64 872, !61, i64 880, !18, i64 888, !30, i64 896, !14, i64 904, !62, i64 912}
!56 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!57 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280}
!58 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!59 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!60 = !{!"", !14, i64 0, !14, i64 8}
!61 = !{!"p1 _ZTS15_dictkeysobject", !14, i64 0}
!62 = !{!"_specialization_cache", !18, i64 0, !7, i64 8, !18, i64 16}
!63 = !{!64, !14, i64 24}
!64 = !{!"", !12, i64 0, !18, i64 16, !14, i64 24, !18, i64 32, !18, i64 40, !65, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96}
!65 = !{!"_Bool", !8, i64 0}
!66 = !{!46, !14, i64 72}
!67 = !{!14, !14, i64 0}
!68 = !{!46, !15, i64 8}
!69 = !{!29, !15, i64 56}
!70 = distinct !{null, null}
!71 = !{!17, !13, i64 96}
!72 = !{!73, !30, i64 16}
!73 = !{!"tagCDataObject", !12, i64 0, !30, i64 16, !7, i64 24, !74, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !18, i64 64, !8, i64 80}
!74 = !{!"p1 _ZTS14tagCDataObject", !14, i64 0}
!75 = distinct !{!75, !40}
!76 = !{!77, !77, i64 0}
!77 = !{!"p1 int", !14, i64 0}
!78 = !{!47, !15, i64 0}
!79 = !{!80, !14, i64 16}
!80 = !{!"fielddesc", !8, i64 0, !20, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!81 = distinct !{!81, !40}
end_hunk_0
