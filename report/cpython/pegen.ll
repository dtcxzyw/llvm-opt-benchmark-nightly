inline.NumInlined: 41
inline.NumDeleted: 26
begin_hunk_0_@_PyPegen_get_last_nonnwhitespace_token:bb.a
; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_new_identifier(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.d = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %1, i64 noundef %i.c, ptr noundef null) #14 ; 11 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit46, label %bb.b
end_hunk_0
begin_hunk_1_@_PyPegen_new_identifier:bb.a
  store ptr %i.d, ptr %i.r, align 8, !tbaa !24
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !90
  %i.t = call ptr @PyObject_Vectorcall(ptr noundef %i.s, ptr noundef nonnull %i.b, i64 noundef 2, ptr noundef null) #14 ; 7 uses
  %2 = load ptr, ptr %i.a, align 8, !tbaa !24     ; 3 uses
  %i.u = load i32, ptr %2, align 8, !tbaa !23     ; 2 uses
  %.not.i41 = icmp sgt i32 %i.u, -1
  br i1 %.not.i41, label %bb.k, label %Py_DECREF.exit42

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %2, align 8, !tbaa !23
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %Py_DECREF.exit42

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %2) #14
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.j, %bb.k, %bb.l
end_hunk_1
begin_hunk_2_@_PyPegen_new_identifier:bb.a
  br label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit44, %bb.b
  %i.aj = phi ptr [ %i.t, %Py_DECREF.exit44 ], [ %i.d, %bb.b ]
  %i.ak = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.6) #14
  %.not32 = icmp eq i32 %i.ak, 0
  br i1 %.not32, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %3 = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.al = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %3, ptr noundef nonnull @.str.7) #14
  %.not32.1 = icmp eq i32 %i.al, 0
  br i1 %.not32.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %4 = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.am = call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %4, ptr noundef nonnull @.str.8) #14
  %.not32.2 = icmp eq i32 %i.am, 0
  br i1 %.not32.2, label %Py_DECREF.exit36, label %bb.v

end_hunk_2
begin_hunk_3_@_PyPegen_new_identifier:bb.a
  %.lcssa = phi ptr [ @.str.6, %bb.s ], [ @.str.7, %bb.t ], [ @.str.8, %bb.u ]
  %i.av = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !24
  %i.aw = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.av, ptr noundef nonnull @.str.9, ptr noundef nonnull %.lcssa) #14 ; 0 uses
  %5 = load ptr, ptr %i.a, align 8, !tbaa !24     ; 3 uses
  %i.ax = load i32, ptr %5, align 8, !tbaa !23    ; 2 uses
  %.not.i35 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i35, label %bb.w, label %Py_DECREF.exit46

bb.w:                                             ; preds = %bb.v
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %5, align 8, !tbaa !23
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.x, label %Py_DECREF.exit46

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %5) #14
  br label %Py_DECREF.exit46

bb.y:                                             ; preds = %Py_DECREF.exit36
end_hunk_3
