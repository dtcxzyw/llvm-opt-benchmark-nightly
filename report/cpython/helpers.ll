begin_hunk_0
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"(O(OiiNii))\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"coding\00", align 1
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.13 = private unnamed_addr constant [7 x i8] c"utf-8-\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"latin-1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"iso-latin-1\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"latin-1-\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"iso-8859-1-\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"iso-latin-1-\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyTokenizer_syntaxerror(ptr noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %1, i32 noundef -1, i32 noundef -1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 67
}

end_hunk_0
begin_hunk_1
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_FromFormatV(ptr noundef %1, ptr noundef nonnull %4) #9 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_XDECREF.exit, label %bb.c

end_hunk_1
begin_hunk_2
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.f, i64 noundef %i.k, ptr noundef nonnull @.str.9) #9 ; 6 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.n, label %bb.d

end_hunk_2
begin_hunk_3
  %i.p = icmp eq i32 %3, -1
  %spec.select = select i1 %i.p, i32 %.033, i32 %3
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.r = tail call i64 @strcspn(ptr noundef %i.q, ptr noundef nonnull @.str.10) #10 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
end_hunk_3
begin_hunk_4
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.aa = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.z, i64 noundef %i.r, ptr noundef nonnull @.str.9) #9 ; 2 uses
  %.not44 = icmp eq ptr %i.aa, null
  br i1 %.not44, label %bb.n, label %.thread

end_hunk_4
begin_hunk_5
  %spec.select47 = select i1 %.not45, ptr @_Py_NoneStruct, ptr %i.ac
  %i.ad = getelementptr i8, ptr %0, i64 512
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.af = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.d, ptr noundef nonnull %spec.select47, i32 noundef %i.ae, i32 noundef %.033, ptr noundef nonnull %.03454, i32 noundef %i.ae, i32 noundef %spec.select) #9 ; 5 uses
  %.not46 = icmp eq ptr %i.af, null
  br i1 %.not46, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ag = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  tail call void @PyErr_SetObject(ptr noundef %i.ag, ptr noundef nonnull %i.af) #9
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.l, label %bb.n
end_hunk_5
begin_hunk_6
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.af) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.thread, %bb.j, %bb.c
end_hunk_6
begin_hunk_7
  br i1 %i.am, label %bb.p, label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.n, %bb.o, %bb.p
end_hunk_7
begin_hunk_8
define hidden noundef i32 @_PyTokenizer_syntaxerror_known_range(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.va_start.p0(ptr nonnull %4)
  call fastcc void @_syntaxerror_range(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, ptr noundef %4)
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 67
}

end_hunk_8
begin_hunk_9
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
end_hunk_9
begin_hunk_10
bb.b:                                             ; preds = %bb.a
  %sext = shl i32 %1, 24
  %i.c = ashr exact i32 %sext, 24                 ; 4 uses
  %i.d = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str, i32 noundef %i.c, i32 noundef %i.c) #9 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

end_hunk_10
begin_hunk_11
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %0, i64 2344
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = tail call i32 @PyErr_WarnExplicitObject(ptr noundef %i.f, ptr noundef nonnull %i.d, ptr noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, ptr noundef null) #9
  %i.n = icmp slt i32 %i.m, 0
  %i.o = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %.not.i15 = icmp sgt i32 %i.o, -1               ; 2 uses
end_hunk_11
begin_hunk_12
  br i1 %i.q, label %bb.f, label %Py_DECREF.exit16

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.r = load ptr, ptr @PyExc_SyntaxWarning, align 8, !tbaa !28
  %i.s = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.r) #9
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit16
  tail call void @PyErr_Clear() #9
  %i.t = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.c, i32 noundef %i.c) ; 0 uses
  br label %Py_DECREF.exit

end_hunk_12
begin_hunk_13
  br i1 %i.v, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %Py_DECREF.exit16, %bb.a
end_hunk_13
begin_hunk_14
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = call ptr @PyUnicode_FromFormatV(ptr noundef %2, ptr noundef nonnull %3) #9 ; 9 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %Py_XDECREF.exit, label %bb.c
end_hunk_14
begin_hunk_15
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr i8, ptr %0, i64 2344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = call i32 @PyErr_WarnExplicitObject(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, ptr noundef null) #9
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @PyErr_ExceptionMatches(ptr noundef %1) #9
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @PyErr_Clear() #9
  %i.m = call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.i

end_hunk_15
begin_hunk_16
  br i1 %i.p, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #9
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.d, %bb.e
end_hunk_16
begin_hunk_17
  br i1 %i.s, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #9
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.b, %bb.i, %bb.j, %bb.k
end_hunk_17
begin_hunk_18

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %Py_XDECREF.exit
  %.0 = phi i32 [ -1, %Py_XDECREF.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %Py_DECREF.exit
end_hunk_18
begin_hunk_19
define hidden ptr @_PyTokenizer_new_string(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = tail call ptr @PyMem_Malloc(i64 noundef %i.a) #9 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_19
begin_hunk_20
; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_into_utf8(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.b = tail call ptr @PyUnicode_Decode(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef %1, ptr noundef null) #9 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyUnicode_AsUTF8String(ptr noundef nonnull %i.b) #9 ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit
end_hunk_20
begin_hunk_21
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #9
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
end_hunk_21
begin_hunk_22
; Function Attrs: nounwind uwtable
define hidden ptr @_PyTokenizer_translate_newlines(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.b = add i64 %i.a, 2                          ; 2 uses
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %i.b) #9 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

end_hunk_22
begin_hunk_23
  br i1 %or.cond10, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.c, i64 noundef %i.x) #9 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
end_hunk_23
begin_hunk_24
; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_bom(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 %0(ptr noundef %3) #9      ; 2 uses
  %i.b = getelementptr i8, ptr %3, i64 2752
  store i32 1, ptr %i.b, align 8, !tbaa !38
  switch i32 %i.a, label %bb.f [
end_hunk_24
begin_hunk_25
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %0(ptr noundef nonnull %3) #9 ; 2 uses
  %.not = icmp eq i32 %i.c, 187
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %1(i32 noundef %i.c, ptr noundef nonnull %3) #9
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #9
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 %0(ptr noundef nonnull %3) #9 ; 2 uses
  %.not38 = icmp eq i32 %i.d, 191
  br i1 %.not38, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %1(i32 noundef %i.d, ptr noundef nonnull %3) #9
  tail call void %1(i32 noundef 187, ptr noundef nonnull %3) #9
  tail call void %1(i32 noundef 239, ptr noundef nonnull %3) #9
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  tail call void %1(i32 noundef %i.a, ptr noundef nonnull %3) #9
  br label %bb.l

bb.g:                                             ; preds = %bb.d
end_hunk_25
begin_hunk_26
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call ptr @PyMem_Malloc(i64 noundef 6) #9 ; 4 uses
  %.not.i = icmp ne ptr %i.g, null                ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

end_hunk_26
begin_hunk_27
; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyTokenizer_check_coding_spec(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 24 uses
  %i.b = getelementptr i8, ptr %2, i64 2768
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq i32 %i.c, 0
end_hunk_27
begin_hunk_28

.lr.ph114.i:                                      ; preds = %._crit_edge.i, %.thread99.i
  %.158112.i = phi i64 [ %i.cy, %.thread99.i ], [ %.057.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %.158112.i ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.k, ptr noundef nonnull dereferenceable(6) @.str.12, i64 6)
  %i.l = icmp eq i32 %bcmp.i, 0
  br i1 %i.l, label %bb.e, label %.thread99.i

bb.e:                                             ; preds = %.lr.ph114.i
  %i.m = getelementptr i8, ptr %i.k, i64 6        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !25
  switch i8 %i.n, label %.thread99.i [
    i8 58, label %.critedge.i.preheader
end_hunk_28
begin_hunk_29
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = add i64 %i.z, 1
  %i.ab = tail call ptr @PyMem_Malloc(i64 noundef %i.aa) #9 ; 19 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_PyTokenizer_new_string.exit.thread.i, label %bb.h

end_hunk_29
begin_hunk_30
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.o, i64 %i.z, i1 false)
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ad, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !25  ; 2 uses
  switch i8 %i.ae, label %bb.i [
    i8 0, label %bb.af
end_hunk_30
begin_hunk_31
bb.af:                                            ; preds = %.sink.split.i.i, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h
  %.013.lcssa.i.sroa.phi.i = phi ptr [ %i.a, %bb.h ], [ %.013.lcssa.i.sroa.gep79.i, %bb.t ], [ %.013.lcssa.i.sroa.gep80.i, %bb.j ], [ %.013.lcssa.i.sroa.gep81.i, %bb.ad ], [ %.013.lcssa.i.sroa.gep82.i, %bb.l ], [ %.013.lcssa.i.sroa.gep83.i, %bb.x ], [ %.013.lcssa.i.sroa.gep84.i, %bb.n ], [ %.013.lcssa.i.sroa.gep85.i, %bb.ab ], [ %.013.lcssa.i.sroa.gep86.i, %bb.p ], [ %.013.lcssa.i.sroa.gep87.i, %bb.v ], [ %.013.lcssa.i.sroa.gep88.i, %bb.r ], [ %.013.lcssa.i.sroa.gep89.i, %bb.z ], [ %.013.lcssa.i.sroa.gep90.i, %.sink.split.i.i ]
  store i8 0, ptr %.013.lcssa.i.sroa.phi.i, align 1, !tbaa !25
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.a, ptr noundef nonnull dereferenceable(6) @.str.3, i64 6)
  %i.cl = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cl, label %get_normal_name.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp15.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.a, ptr noundef nonnull dereferenceable(6) @.str.13, i64 6)
  %i.cm = icmp eq i32 %bcmp15.i.i, 0
  br i1 %i.cm, label %get_normal_name.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %bcmp16.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) @.str.14, i64 8)
  %i.cn = icmp eq i32 %bcmp16.i.i, 0
  br i1 %i.cn, label %get_normal_name.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %bcmp17.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.a, ptr noundef nonnull dereferenceable(11) @.str.15, i64 11)
  %i.co = icmp eq i32 %bcmp17.i.i, 0
  br i1 %i.co, label %get_normal_name.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %bcmp18.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.a, ptr noundef nonnull dereferenceable(12) @.str.16, i64 12)
  %i.cp = icmp eq i32 %bcmp18.i.i, 0
  br i1 %i.cp, label %get_normal_name.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %bcmp19.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.a, ptr noundef nonnull dereferenceable(8) @.str.17, i64 8)
  %i.cq = icmp eq i32 %bcmp19.i.i, 0
  br i1 %i.cq, label %get_normal_name.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %bcmp20.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.a, ptr noundef nonnull dereferenceable(11) @.str.18, i64 11)
  %i.cr = icmp eq i32 %bcmp20.i.i, 0
  br i1 %i.cr, label %get_normal_name.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %bcmp21.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.a, ptr noundef nonnull dereferenceable(12) @.str.19, i64 12)
  %i.cs = icmp eq i32 %bcmp21.i.i, 0
  %spec.select.i.i = select i1 %i.cs, ptr @.str.15, ptr %i.ab
  br label %get_normal_name.exit.i

get_normal_name.exit.i:                           ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.012.i.i = phi ptr [ @.str.15, %bb.ah ], [ @.str.3, %bb.af ], [ @.str.3, %bb.ag ], [ %spec.select.i.i, %bb.am ], [ @.str.15, %bb.al ], [ @.str.15, %bb.ak ], [ @.str.15, %bb.aj ], [ @.str.15, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not73.i = icmp eq ptr %i.ab, %.012.i.i
  br i1 %.not73.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %get_normal_name.exit.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.ab) #9
  %i.ct = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.012.i.i) #10 ; 3 uses
  %i.cu = add i64 %i.ct, 1
  %i.cv = tail call ptr @PyMem_Malloc(i64 noundef %i.cu) #9 ; 4 uses
  %.not.i77.i = icmp eq ptr %i.cv, null
  br i1 %.not.i77.i, label %_PyTokenizer_new_string.exit78.thread.i, label %_PyTokenizer_new_string.exit78.i

end_hunk_31
begin_hunk_32
  br i1 %i.dh, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.di = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.053.ph.ph, ptr noundef nonnull dereferenceable(6) @.str.3) #10
  %.not44 = icmp eq i32 %i.di, 0
  br i1 %.not44, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dj = tail call i32 %3(ptr noundef nonnull %2, ptr noundef nonnull %.053.ph.ph) #9
  %.not45 = icmp eq i32 %i.dj, 0
  br i1 %.not45, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dk = tail call ptr @_PyTokenizer_error_ret(ptr noundef nonnull %2) ; 0 uses
  %i.dl = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !28
  %i.dm = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dl, ptr noundef nonnull @.str.4, ptr noundef nonnull %.053.ph.ph) #9 ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #9
  br label %get_coding_spec.exit

bb.au:                                            ; preds = %bb.as, %bb.ar
end_hunk_32
begin_hunk_33
  br label %get_coding_spec.exit

bb.av:                                            ; preds = %bb.aq
  %i.dn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dg, ptr noundef nonnull dereferenceable(1) %.053.ph.ph) #10
  %.not43 = icmp eq i32 %i.dn, 0
  br i1 %.not43, label %bb.ba, label %bb.aw

end_hunk_33
begin_hunk_34
  store ptr %0, ptr %i.dp, align 8, !tbaa !18
  %i.dq = trunc i64 %1 to i32
  %i.dr = tail call i32 (ptr, i32, i32, ptr, ...) @_PyTokenizer_syntaxerror_known_range(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.dq, ptr noundef nonnull @.str.5, ptr noundef nonnull %.053.ph.ph) ; 0 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #9
  %i.ds = getelementptr i8, ptr %2, i64 2756
  store i32 1, ptr %i.ds, align 4, !tbaa !30
  %i.dt = getelementptr i8, ptr %2, i64 72
end_hunk_34
begin_hunk_35
  br i1 %.not12.i, label %_PyTokenizer_error_ret.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @PyMem_Free(ptr noundef nonnull %i.dx) #9
  br label %_PyTokenizer_error_ret.exit

_PyTokenizer_error_ret.exit:                      ; preds = %bb.ax, %bb.ay, %bb.az
end_hunk_35
begin_hunk_36
  br label %get_coding_spec.exit

bb.ba:                                            ; preds = %bb.av
  tail call void @PyMem_Free(ptr noundef nonnull %.053.ph.ph) #9
  br label %get_coding_spec.exit

get_coding_spec.exit:                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.ap, %.loopexit, %_PyTokenizer_new_string.exit78.thread.i, %_PyTokenizer_new_string.exit.thread.i, %bb.au, %bb.ba, %bb.ao, %_PyTokenizer_error_ret.exit, %bb.at, %bb.b
end_hunk_36
begin_hunk_37

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_37
begin_hunk_38
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
end_hunk_38
