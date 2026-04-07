inline.NumInlined: 40
inline.NumDeleted: 10
begin_hunk_0_@_PyTemplate_Concat:bb.a
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !37 ; 4 uses
  %i.m = getelementptr i8, ptr %i.f, i64 32       ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = tail call ptr @PyUnicode_Concat(ptr noundef %i.k, ptr noundef %i.n) #3, !inline_history !38 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %template_concat_templates.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.val.i.i, %i.i
  %i.r = tail call ptr @PyTuple_New(i64 noundef %i.q) #3, !inline_history !38 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader.i.i

end_hunk_0
begin_hunk_1_@_PyTemplate_Concat:bb.a
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !29
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !39

.lr.ph43.i.i:                                     ; preds = %_Py_NewRef.exit37.i.i.1, %.lr.ph43.i.i.preheader.new
  %.041.i.i = phi i64 [ 1, %.lr.ph43.i.i.preheader.new ], [ %i.bm, %_Py_NewRef.exit37.i.i.1 ] ; 3 uses
end_hunk_1
begin_hunk_2_@_PyTemplate_Concat:bb.a
  %i.bm = add nuw nsw i64 %.041.i.i, 2            ; 2 uses
  %niter29.next.1 = add i64 %niter29, 2           ; 2 uses
  %niter29.ncmp.1 = icmp eq i64 %niter29.next.1, %unroll_iter28
  br i1 %niter29.ncmp.1, label %template_strings_concat.exit.i.loopexit.unr-lcssa, label %.lr.ph43.i.i, !llvm.loop !41

template_strings_concat.exit.i.loopexit.unr-lcssa: ; preds = %_Py_NewRef.exit37.i.i.1
  %lcmp.mod26.not = icmp eq i64 %xtraiter25, 0
end_hunk_2
begin_hunk_3_@_PyTemplate_Concat:bb.a

template_strings_concat.exit.i:                   ; preds = %_Py_NewRef.exit37.i.i.epil, %template_strings_concat.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %i.bu = getelementptr i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.bw = getelementptr i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = tail call ptr @PySequence_Concat(ptr noundef %i.bv, ptr noundef %i.bx) #3, !inline_history !38 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.n, label %bb.p

end_hunk_3
begin_hunk_4_@_PyTemplate_Concat:bb.a
  br i1 %i.cc, label %Py_DECREF.exit18.sink.split.i, label %template_concat_templates.exit

bb.p:                                             ; preds = %template_strings_concat.exit.i
  %i.cd = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplate_Type) #3, !inline_history !43 ; 7 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_PyTemplate_Build.exit.i, label %bb.q

end_hunk_4
begin_hunk_5_@_PyTemplate_Concat:bb.a

_Py_NewRef.exit9.i.i:                             ; preds = %bb.s, %_Py_NewRef.exit.i21.i
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store ptr %i.by, ptr %i.cm, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.cd) #3, !inline_history !43
  br label %_PyTemplate_Build.exit.i

_PyTemplate_Build.exit.i:                         ; preds = %_Py_NewRef.exit9.i.i, %bb.p
end_hunk_5
begin_hunk_6_@_PyTemplate_Concat:bb.a
  br i1 %i.cp, label %bb.u, label %Py_DECREF.exit16.i

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #3, !inline_history !38
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.u, %bb.t, %_PyTemplate_Build.exit.i
end_hunk_6
begin_hunk_7_@_PyTemplate_Concat:bb.a
Py_DECREF.exit18.sink.split.i:                    ; preds = %bb.v, %bb.o, %bb.f
  %.sink.i = phi ptr [ %i.o, %bb.f ], [ %i.r, %bb.o ], [ %i.by, %bb.v ]
  %.1.ph.i = phi ptr [ null, %bb.f ], [ null, %bb.o ], [ %i.cd, %bb.v ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #3, !inline_history !38
  br label %template_concat_templates.exit

bb.w:                                             ; preds = %bb.b, %bb.a
end_hunk_7
begin_hunk_8_@template_repr:bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.6, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #3
  ret ptr %i.g
}
end_hunk_8
begin_hunk_9_@template_traverse:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

end_hunk_9
begin_hunk_10_@template_iter:bb.a

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call ptr @PyObject_GetIter(ptr noundef %i.k) #3 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.l
end_hunk_10
begin_hunk_11_@template_new:bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val138 = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr i8, ptr %.val138, i64 168
  %.val143 = load i64, ptr %i.g, align 8, !tbaa !44
  %i.h = and i64 %.val143, 268435456              ; 2 uses
  %.not105 = icmp eq i64 %i.h, 0
  br i1 %.not105, label %bb.e, label %bb.g
end_hunk_11
begin_hunk_12_@template_new:bb.a
  %.471.ph = add i64 %.067183, %.pn               ; 2 uses
  %i.l = add nuw nsw i64 %.096180, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %.val141
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %bb.g
  %.lobit = lshr exact i64 %i.h, 28
end_hunk_12
begin_hunk_13_@template_new:bb.a
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.aa = getelementptr i8, ptr %.val, i64 168
  %.val142 = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ab = and i64 %.val142, 268435456
  %.not113 = icmp eq i64 %i.ab, 0
  br i1 %.not113, label %bb.y, label %bb.m
end_hunk_13
begin_hunk_14_@template_new:bb.a
  %.494162 = phi i64 [ %.090187, %bb.y ], [ %i.ao, %_Py_NewRef.exit ], [ %.090187, %bb.v ], [ %.090187, %bb.t ], [ %.090187, %bb.u ] ; 2 uses
  %i.az = add nuw nsw i64 %.086189, 1             ; 2 uses
  %exitcond196.not = icmp eq i64 %i.az, %.val141
  br i1 %exitcond196.not, label %._crit_edge192, label %bb.l, !llvm.loop !46

.thread157.thread:                                ; preds = %bb.ac, %bb.ab
  %i.ba = getelementptr [8 x i8], ptr %i.t, i64 %.087188.ph
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !29
  %i.bb = add nuw nsw i64 %.086189, 1             ; 2 uses
  %exitcond196.not218 = icmp eq i64 %i.bb, %.val141
  br i1 %exitcond196.not218, label %._crit_edge192.thread, label %.outer, !llvm.loop !46

._crit_edge192:                                   ; preds = %.thread157
  %i.bc = icmp eq i32 %.684164, 0
end_hunk_14
begin_hunk_15_@template_new:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge192.thread, %._crit_edge192
  %i.bf = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplate_Type) #3, !inline_history !47 ; 7 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_PyTemplate_Build.exit, label %bb.ae

end_hunk_15
begin_hunk_16_@template_new:bb.a

_Py_NewRef.exit9.i:                               ; preds = %bb.ag, %_Py_NewRef.exit.i
  %i.bo = getelementptr i8, ptr %i.bf, i64 24
  store ptr %i.p, ptr %i.bo, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.bf) #3, !inline_history !47
  br label %_PyTemplate_Build.exit

_PyTemplate_Build.exit:                           ; preds = %bb.ad, %_Py_NewRef.exit9.i
end_hunk_16
begin_hunk_17_@_PyTemplate_Build:bb.a

_Py_NewRef.exit9:                                 ; preds = %_Py_NewRef.exit, %bb.d
  %i.j = getelementptr i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.j, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #3
  br label %bb.e

end_hunk_17
begin_hunk_18_@template_reduce:bb.a
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef %i.k) #3 ; 3 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
end_hunk_18
begin_hunk_19_@template_values_get
define internal ptr @template_values_get(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val15 = load i64, ptr %i.c, align 8, !tbaa !37 ; 3 uses
  %i.d = tail call ptr @PyTuple_New(i64 noundef %.val15) #3 ; 3 uses
end_hunk_19
begin_hunk_20_@template_values_get:bb.a

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01316 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.01316
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
end_hunk_20
begin_hunk_21_@template_values_get:bb.a
  store ptr %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = add nuw nsw i64 %.01316, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.val15
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !48

.loopexit:                                        ; preds = %bb.b, %bb.a
  ret ptr %i.d
end_hunk_21
begin_hunk_22_@llvm.assume
!35 = !{!36, !23, i64 16}
!36 = !{!"", !12, i64 0, !23, i64 16, !23, i64 24}
!37 = !{!17, !18, i64 16}
!38 = distinct !{null}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!36, !23, i64 24}
!43 = distinct !{null, ptr @_PyTemplate_Build}
!44 = !{!16, !18, i64 168}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = !{ptr @_PyTemplate_Build}
!48 = distinct !{!48, !40}
end_hunk_22
