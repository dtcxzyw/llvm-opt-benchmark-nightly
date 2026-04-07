inline.NumInlined: 49
inline.NumDeleted: 28
begin_hunk_0_@gc_get_referents:bb.a
  br i1 %i.s, label %_PyObject_IS_GC.exit.thread22.i.i, label %_PyObject_IS_GC.exit.i.i

_PyObject_IS_GC.exit.i.i:                         ; preds = %bb.e
  %i.t = tail call i32 %i.r(ptr noundef nonnull %i.m) #4, !inline_history !44
  %.not27.i.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i.i, label %_PyObject_IS_GC.exit.thread.i.i, label %_PyObject_IS_GC.exit._PyObject_IS_GC.exit.thread22_crit_edge.i.i

end_hunk_0
begin_hunk_1_@gc_get_referents:bb.a
_PyObject_IS_GC.exit.thread22.i.i:                ; preds = %_PyObject_IS_GC.exit._PyObject_IS_GC.exit.thread22_crit_edge.i.i, %bb.e
  %.val20.i.i = phi ptr [ %.val20.pre.i.i, %_PyObject_IS_GC.exit._PyObject_IS_GC.exit.thread22_crit_edge.i.i ], [ %.val.i.i.i, %bb.e ]
  %i.u = getelementptr i8, ptr %.val20.i.i, i64 184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 2 uses
  %.not18.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i, label %_PyObject_IS_GC.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_PyObject_IS_GC.exit.thread22.i.i
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.m, ptr noundef nonnull @referentsvisit, ptr noundef nonnull %i.g) #4, !inline_history !46
  %.not19.i.i = icmp eq i32 %i.w, 0
  br i1 %.not19.i.i, label %_PyObject_IS_GC.exit.thread.i.i, label %bb.g

end_hunk_1
begin_hunk_2_@gc_get_referents:bb.a
  %i.x = add nuw nsw i64 %.01329.i.i, 1           ; 2 uses
  %.val.i.i = load i64, ptr %i.i, align 8, !tbaa !24
  %i.y = icmp slt i64 %i.x, %.val.i.i
  br i1 %i.y, label %bb.d, label %append_referrents.exit.thread.i, !llvm.loop !47

append_referrents.exit.thread.i:                  ; preds = %_PyObject_IS_GC.exit.thread.i.i, %bb.c
  tail call void @_PyEval_StartTheWorld(ptr noundef %i.f) #4
end_hunk_2
begin_hunk_3_@gcmodule_exec:bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 7640
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %i.d) #4
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 7648
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %i.h) #4
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.c
end_hunk_3
begin_hunk_4_@PyModule_AddIntConstant
!41 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!42 = !{!"short", !9, i64 0}
!43 = !{!37, !13, i64 328}
!44 = distinct !{null, null, null}
!45 = !{!37, !13, i64 184}
!46 = distinct !{null, null}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!15, !20, i64 240}
!50 = !{!15, !20, i64 248}
end_hunk_4
