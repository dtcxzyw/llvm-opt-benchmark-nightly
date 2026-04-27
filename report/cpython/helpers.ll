inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@_PyTokenizer_syntaxerror
define hidden noundef i32 @_PyTokenizer_syntaxerror(ptr noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %1, i32 noundef -1, i32 noundef -1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 67
}

end_hunk_0
begin_hunk_1_@_syntaxerror_range:bb.a
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromFormatV(ptr noundef %1, ptr noundef nonnull %4) #8 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_XDECREF.exit, label %bb.c

end_hunk_1
begin_hunk_2_@_syntaxerror_range:bb.a
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.f, i64 noundef %i.k, ptr noundef nonnull @.str.9) #8 ; 6 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.n, label %bb.d

end_hunk_2
begin_hunk_3_@_syntaxerror_range:bb.a
  %i.p = icmp eq i32 %3, -1
  %spec.select = select i1 %i.p, i32 %.033, i32 %3
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.r = tail call i64 @strcspn(ptr noundef %i.q, ptr noundef nonnull @.str.10) #9 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
end_hunk_3
begin_hunk_4_@_syntaxerror_range:bb.a
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.aa = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.z, i64 noundef %i.r, ptr noundef nonnull @.str.9) #8 ; 2 uses
  %.not44 = icmp eq ptr %i.aa, null
  br i1 %.not44, label %bb.n, label %.thread

end_hunk_4
begin_hunk_5_@_syntaxerror_range:bb.a
  %spec.select47 = select i1 %.not45, ptr @_Py_NoneStruct, ptr %i.ac
  %i.ad = getelementptr i8, ptr %0, i64 512
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.af = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d, ptr noundef nonnull %spec.select47, i32 noundef %i.ae, i32 noundef %.033, ptr noundef nonnull %.03454, i32 noundef %i.ae, i32 noundef %spec.select) #8 ; 5 uses
  %.not46 = icmp eq ptr %i.af, null
  br i1 %.not46, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ag = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.ag, ptr noundef nonnull %i.af) #8
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.l, label %bb.n
end_hunk_5
begin_hunk_6_@_syntaxerror_range:bb.a
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread, %bb.j, %bb.c
end_hunk_6
begin_hunk_7_@_syntaxerror_range:bb.a
  br i1 %i.am, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.n, %bb.o, %bb.p
end_hunk_7
begin_hunk_8_@_PyTokenizer_syntaxerror_known_range
define hidden noundef i32 @_PyTokenizer_syntaxerror_known_range(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.va_start.p0(ptr nonnull %4)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 67
}

end_hunk_8
begin_hunk_9_@_PyTokenizer_error_ret:bb.a
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
end_hunk_9
begin_hunk_10_@_PyTokenizer_warn_invalid_escape_sequence:bb.a
bb.b:                                             ; preds = %bb.a
  %sext = shl i32 %1, 24
  %i.c = ashr exact i32 %sext, 24                 ; 4 uses
  %i.d = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str, i32 noundef %i.c, i32 noundef %i.c) #8 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

end_hunk_10
begin_hunk_11_@_PyTokenizer_warn_invalid_escape_sequence:bb.a
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %0, i64 2344
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = tail call i32 @PyErr_WarnExplicitObject(ptr noundef %i.f, ptr noundef nonnull %i.d, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, ptr noundef null) #8
  %i.n = icmp slt i32 %i.m, 0
  %i.o = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %.not.i15 = icmp sgt i32 %i.o, -1               ; 2 uses
end_hunk_11
begin_hunk_12_@_PyTokenizer_warn_invalid_escape_sequence:bb.a
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit16

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #8
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.r = load ptr, ptr @PyExc_SyntaxWarning, align 8, !tbaa !28
  %i.s = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.r) #8
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit16
  tail call void @PyErr_Clear() #8
  %i.t = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.c, i32 noundef %i.c) ; 0 uses
  br label %Py_DECREF.exit

end_hunk_12
begin_hunk_13_@_PyTokenizer_warn_invalid_escape_sequence:bb.a
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %Py_DECREF.exit16, %bb.a
end_hunk_13
begin_hunk_14_@_PyTokenizer_parser_warn:bb.a
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = call ptr @PyUnicode_FromFormatV(ptr noundef %2, ptr noundef nonnull %3) #8 ; 9 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %Py_XDECREF.exit, label %bb.c
end_hunk_14
begin_hunk_15_@_PyTokenizer_parser_warn:bb.a
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %0, i64 2344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = call i32 @PyErr_WarnExplicitObject(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @PyErr_ExceptionMatches(ptr noundef %1) #8
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @PyErr_Clear() #8
  %i.m = call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.i

end_hunk_15
begin_hunk_16_@_PyTokenizer_parser_warn:bb.a
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d, %bb.e
end_hunk_16
begin_hunk_17_@_PyTokenizer_parser_warn:bb.a
  br i1 %i.s, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.i, %bb.j, %bb.k
end_hunk_17
begin_hunk_18_@_PyTokenizer_parser_warn:bb.a

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %Py_XDECREF.exit
  %.0 = phi i32 [ -1, %Py_XDECREF.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Py_DECREF.exit
end_hunk_18
begin_hunk_19_@_PyTokenizer_new_string
define hidden ptr @_PyTokenizer_new_string(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = tail call ptr @PyMem_Malloc(i64 noundef %i.a) #8 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_19
begin_hunk_20_@llvm.memcpy.p0.p0.i64
; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_into_utf8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9
  %i.b = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef %1, ptr noundef null) #8 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit
end_hunk_20
begin_hunk_21_@_PyTokenizer_translate_into_utf8:bb.a
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
end_hunk_21
begin_hunk_22_@PyUnicode_AsUTF8String
; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_newlines(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9
  %i.b = add i64 %i.a, 2                          ; 2 uses
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #8 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

end_hunk_22
begin_hunk_23_@_PyTokenizer_translate_newlines:bb.a
  br i1 %or.cond10, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.c, i64 noundef %i.x) #8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
end_hunk_23
begin_hunk_24_@PyMem_Realloc
; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_bom(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %3) #8      ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 2752
  store i32 1, ptr %i.b, align 8, !tbaa !38
  switch i32 %i.a, label %bb.f [
end_hunk_24
begin_hunk_25_@_PyTokenizer_check_bom:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %0(ptr noundef nonnull %3) #8 ; 2 uses
  %.not = icmp eq i32 %i.c, 187
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.c, ptr noundef nonnull %3) #8
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #8
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 %0(ptr noundef nonnull %3) #8 ; 2 uses
  %.not38 = icmp eq i32 %i.d, 191
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %1(i32 noundef %i.d, ptr noundef nonnull %3) #8
  tail call void %1(i32 noundef 187, ptr noundef nonnull %3) #8
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void %1(i32 noundef %i.a, ptr noundef nonnull %3) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.d
end_hunk_25
begin_hunk_26_@_PyTokenizer_check_bom:bb.a
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef 6) #8 ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

end_hunk_26
begin_hunk_27_@_PyTokenizer_check_coding_spec:bb.a
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = add i64 %i.ai, 1
  %i.ak = tail call ptr @PyMem_Malloc(i64 noundef %i.aj) #8 ; 19 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_PyTokenizer_new_string.exit.thread.i, label %bb.h

end_hunk_27
begin_hunk_28_@_PyTokenizer_check_coding_spec:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %i.x, i64 %i.ai, i1 false)
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.am, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.an = load i8, ptr %i.ak, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.an, label %bb.i [
    i8 0, label %bb.af
end_hunk_28
begin_hunk_29_@_PyTokenizer_check_coding_spec:bb.a
  br label %get_normal_name.exit.i

get_normal_name.exit.i:                           ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.012.i.i = phi ptr [ @.str.15, %bb.ah ], [ @.str.3, %bb.af ], [ @.str.3, %bb.ag ], [ %spec.select.i.i, %bb.am ], [ @.str.15, %bb.al ], [ @.str.15, %bb.ak ], [ @.str.15, %bb.aj ], [ @.str.15, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not73.i = icmp eq ptr %i.ak, %.012.i.i
  br i1 %.not73.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %get_normal_name.exit.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.ak) #8
  %i.fi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.012.i.i) #9 ; 3 uses
  %i.fj = add i64 %i.fi, 1
  %i.fk = tail call ptr @PyMem_Malloc(i64 noundef %i.fj) #8 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.fk, null
  br i1 %.not.i77.i, label %_PyTokenizer_new_string.exit78.thread.i, label %_PyTokenizer_new_string.exit78.i

end_hunk_29
begin_hunk_30_@_PyTokenizer_check_coding_spec:bb.a
  br i1 %i.fw, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.053.ph.ph, ptr noundef nonnull dereferenceable(6) @.str.3) #9
  %.not44 = icmp eq i32 %i.fx, 0
  br i1 %.not44, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = tail call i32 %3(ptr noundef nonnull %2, ptr noundef nonnull %.053.ph.ph) #8
  %.not45 = icmp eq i32 %i.fy, 0
  br i1 %.not45, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fz = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %2) ; 0 uses
  %i.ga = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  %i.gb = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ga, ptr noundef nonnull @.str.4, ptr noundef nonnull %.053.ph.ph) #8 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #8
  br label %get_coding_spec.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
end_hunk_30
begin_hunk_31_@_PyTokenizer_check_coding_spec:bb.a
  br label %get_coding_spec.exit

bb.av:                                            ; preds = %bb.aq
  %i.gc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fv, ptr noundef nonnull dereferenceable(1) %.053.ph.ph) #9
  %.not43 = icmp eq i32 %i.gc, 0
  br i1 %.not43, label %bb.ba, label %bb.aw

end_hunk_31
begin_hunk_32_@_PyTokenizer_check_coding_spec:bb.a
  store ptr %0, ptr %i.ge, align 8, !tbaa !18
  %i.gf = trunc i64 %1 to i32
  %i.gg = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.gf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.053.ph.ph) ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #8
  %i.gh = getelementptr i8, ptr %2, i64 2756
  store i32 1, ptr %i.gh, align 4, !tbaa !30
  %i.gi = getelementptr i8, ptr %2, i64 72
end_hunk_32
begin_hunk_33_@_PyTokenizer_check_coding_spec:bb.a
  br i1 %.not12.i, label %_PyTokenizer_error_ret.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @PyMem_Free(ptr noundef nonnull %i.gm) #8
  br label %_PyTokenizer_error_ret.exit

_PyTokenizer_error_ret.exit:                      ; preds = %bb.ax, %bb.ay, %bb.az
end_hunk_33
begin_hunk_34_@_PyTokenizer_check_coding_spec:bb.a
  br label %get_coding_spec.exit

bb.ba:                                            ; preds = %bb.av
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #8
  br label %get_coding_spec.exit

get_coding_spec.exit:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.ap, %.loopexit, %_PyTokenizer_new_string.exit78.thread.i, %_PyTokenizer_new_string.exit.thread.i, %bb.au, %bb.ba, %bb.ao, %_PyTokenizer_error_ret.exit, %bb.at, %bb.b
end_hunk_34
begin_hunk_35_@_Py_Dealloc
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
end_hunk_35
begin_hunk_36_@llvm.memset.p0.i64/@llvm.assume
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
end_hunk_36
