inline.NumInlined: 41
inline.NumDeleted: 26
begin_hunk_0_@RAISE_ERROR_KNOWN_LOCATION:bb.a
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.va_start.p0(ptr nonnull %7)
  %i.a = icmp eq i64 %3, -5
  %i.b = add nsw i64 %3, 1
  %i.c = select i1 %i.a, i64 -5, i64 %i.b
  %i.d = icmp eq i64 %5, -5
  %i.e = add nsw i64 %5, 1
  %i.f = select i1 %i.d, i64 -5, i64 %i.e
  %i.g = call ptr @_PyPegen_raise_error_known_location(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %4, i64 noundef %i.f, ptr noundef %6, ptr noundef nonnull %7) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_expect_soft_keyword(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.h, align 8, !tbaa !87
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.r = tail call ptr @PyBytes_AsString(ptr noundef %i.q) #14 ; 2 uses
  %.not15 = icmp eq ptr %i.r, null
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.s, align 8, !tbaa !87
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(1) %1) #15
  %.not16 = icmp eq i32 %i.t, 0
  br i1 %.not16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @_PyPegen_name_token(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h, %bb.f, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ %i.u, %bb.h ], [ null, %bb.g ]
  ret ptr %.2
}

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_name_token(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.h, align 8, !tbaa !87
  br label %_PyPegen_name_from_token.exit

bb.d:                                             ; preds = %._crit_edge.i, %bb.a
  %i.i = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75
  %.not.i = icmp eq i32 %i.o, 1
  br i1 %.not.i, label %bb.e, label %_PyPegen_name_from_token.exit

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %i.i, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !37
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.s = tail call ptr @PyBytes_AsString(ptr noundef %i.r) #14 ; 2 uses
  %.not.i3 = icmp eq ptr %i.s, null
  br i1 %.not.i3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.t, align 8, !tbaa !87
  br label %_PyPegen_name_from_token.exit

bb.g:                                             ; preds = %bb.e
  %i.u = tail call ptr @_PyPegen_new_identifier(ptr noundef nonnull %0, ptr noundef nonnull %i.s) ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.w, align 8, !tbaa !87
  br label %_PyPegen_name_from_token.exit

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.n, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = getelementptr i8, ptr %i.n, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !83
  %i.ab = getelementptr i8, ptr %i.n, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !84
  %i.ad = getelementptr i8, ptr %i.n, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !85
  %i.af = getelementptr i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = tail call ptr @_PyAST_Name(ptr noundef nonnull %i.u, i32 noundef 1, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, ptr noundef %i.ag) #14
  br label %_PyPegen_name_from_token.exit

_PyPegen_name_from_token.exit:                    ; preds = %bb.d, %bb.c, %bb.f, %bb.h, %bb.i
  %.2.i = phi ptr [ %i.ah, %bb.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.2.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_PyPegen_get_last_nonnwhitespace_token(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %.011 = add i32 %i.b, -1                        ; 2 uses
  %i.c = icmp sgt i32 %.011, -1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = zext nneg i32 %.011 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %.backedge ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !75
  switch i32 %i.i, label %._crit_edge [
    i32 6, label %.backedge
    i32 5, label %.backedge
    i32 4, label %.backedge
    i32 0, label %.backedge
  ]

.backedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.j = icmp sgt i64 %indvars.iv, 0
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ], [ %i.h, %.backedge ]
  ret ptr %.1
}

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

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val = load i32, ptr %i.e, align 8
  %i.f = and i32 %.val, 64
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %.not.i56 = icmp eq ptr %i.h, null
  br i1 %.not.i56, label %init_normalization.exit, label %init_normalization.exit.thread

init_normalization.exit:                          ; preds = %bb.c
  %i.i = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #14 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !90
  %.not3.i.not = icmp eq ptr %i.i, null
  br i1 %.not3.i.not, label %bb.d, label %init_normalization.exit.thread

bb.d:                                             ; preds = %init_normalization.exit
  %i.j = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i45 = icmp sgt i32 %i.j, -1
  br i1 %.not.i45, label %bb.e, label %Py_DECREF.exit46

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.d, align 8, !tbaa !23
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit46

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #14
  br label %Py_DECREF.exit46

init_normalization.exit.thread:                   ; preds = %bb.c, %init_normalization.exit
  %i.m = tail call ptr @PyUnicode_InternFromString(ptr noundef nonnull @.str.4) #14 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %init_normalization.exit.thread
  %i.o = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i43 = icmp sgt i32 %i.o, -1
  br i1 %.not.i43, label %bb.h, label %Py_DECREF.exit46

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %Py_DECREF.exit46

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #14
  br label %Py_DECREF.exit46

bb.j:                                             ; preds = %init_normalization.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr %i.m, ptr %i.b, align 16, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
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
  %i.x = load i32, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not.i39 = icmp sgt i32 %i.x, -1
  br i1 %.not.i39, label %bb.m, label %Py_DECREF.exit40

bb.m:                                             ; preds = %Py_DECREF.exit42
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !23
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %Py_DECREF.exit40

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #14
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %Py_DECREF.exit42, %bb.m, %bb.n
  %.not29 = icmp eq ptr %i.t, null
  br i1 %.not29, label %Py_DECREF.exit44.thread61, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit40
  %i.aa = getelementptr i8, ptr %i.t, i64 8
  %.val54 = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val54, i64 168
  %.val55 = load i64, ptr %i.ab, align 8, !tbaa !92
  %i.ac = and i64 %.val55, 268435456
  %.not30 = icmp eq i64 %i.ac, 0
  br i1 %.not30, label %bb.p, label %Py_DECREF.exit44

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ae = call ptr @_PyType_Name(ptr noundef nonnull %.val54) #14
  %i.af = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ad, ptr noundef nonnull @.str.5, ptr noundef %i.ae) #14 ; 0 uses
  %i.ag = load i32, ptr %i.t, align 8, !tbaa !23  ; 2 uses
  %.not.i37 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i37, label %bb.q, label %Py_DECREF.exit44.thread61

bb.q:                                             ; preds = %bb.p
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.t, align 8, !tbaa !23
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %Py_DECREF.exit44.thread61

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #14
  br label %Py_DECREF.exit44.thread61

Py_DECREF.exit44.thread61:                        ; preds = %Py_DECREF.exit40, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %Py_DECREF.exit46

Py_DECREF.exit44:                                 ; preds = %bb.o
  store ptr %i.t, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
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

Py_DECREF.exit36:                                 ; preds = %bb.u
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  call void @_PyUnicode_InternImmortal(ptr noundef %i.ao, ptr noundef nonnull %i.a) #14
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.as = call i32 @_PyArena_AddPyObject(ptr noundef %i.aq, ptr noundef %i.ar) #14
  %i.at = icmp slt i32 %i.as, 0
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  br i1 %i.at, label %bb.y, label %bb.ab

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
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
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i, label %bb.z, label %Py_DECREF.exit46

bb.z:                                             ; preds = %bb.y
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.au, align 8, !tbaa !23
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %Py_DECREF.exit46

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #14
  br label %Py_DECREF.exit46

Py_DECREF.exit46:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.i, %bb.h, %bb.g, %bb.aa, %bb.z, %bb.y, %Py_DECREF.exit44.thread61, %bb.f, %bb.e, %bb.d, %bb.a
  %i.bd = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.bd, align 8, !tbaa !87
  br label %bb.ab

bb.ab:                                            ; preds = %Py_DECREF.exit36, %Py_DECREF.exit46
  %.0 = phi ptr [ null, %Py_DECREF.exit46 ], [ %i.au, %Py_DECREF.exit36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyUnicode_InternImmortal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyArena_AddPyObject(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_PyPegen_string_token(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.h, align 8, !tbaa !87
  br label %_PyPegen_expect_token.exit

bb.d:                                             ; preds = %._crit_edge.i, %bb.a
  %i.i = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75
  %.not.i = icmp eq i32 %i.o, 3
  br i1 %.not.i, label %bb.e, label %_PyPegen_expect_token.exit

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %i.i, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !37
  br label %_PyPegen_expect_token.exit

_PyPegen_expect_token.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ null, %bb.c ], [ %i.n, %bb.e ], [ null, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_soft_keyword_token(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @_PyPegen_fill_token(ptr noundef nonnull %0)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.j, align 8, !tbaa !87
  br label %_PyPegen_expect_token.exit.thread

bb.d:                                             ; preds = %._crit_edge.i, %bb.a
  %i.k = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 6 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !75
  %.not.i = icmp eq i32 %i.q, 1
  br i1 %.not.i, label %bb.e, label %_PyPegen_expect_token.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = add i32 %i.k, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.s = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = call i32 @PyBytes_AsStringAndSize(ptr noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %.not18 = icmp eq ptr %i.x, null
  br i1 %.not18, label %_PyPegen_name_from_token.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %i.aa = phi ptr [ %i.x, %.lr.ph ], [ %i.ax, %bb.m ] ; 2 uses
  %.019 = phi ptr [ %i.w, %.lr.ph ], [ %i.aw, %bb.m ]
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #15
  %i.ac = icmp eq i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ad = call i32 @strncmp(ptr noundef nonnull %i.aa, ptr noundef %i.z, i64 noundef %i.y) #15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.ag = call ptr @PyBytes_AsString(ptr noundef %i.af) #14 ; 2 uses
  %.not.i16 = icmp eq ptr %i.ag, null
  br i1 %.not.i16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.ah, align 8, !tbaa !87
  br label %_PyPegen_name_from_token.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = call ptr @_PyPegen_new_identifier(ptr noundef %0, ptr noundef nonnull %i.ag) ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 96
  store i32 1, ptr %i.ak, align 8, !tbaa !87
  br label %_PyPegen_name_from_token.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %i.p, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !89
  %i.an = getelementptr i8, ptr %i.p, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !83
  %i.ap = getelementptr i8, ptr %i.p, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !84
  %i.ar = getelementptr i8, ptr %i.p, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !85
  %i.at = getelementptr i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  %i.av = call ptr @_PyAST_Name(ptr noundef nonnull %i.ai, i32 noundef 1, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef %i.as, ptr noundef %i.au) #14
  br label %_PyPegen_name_from_token.exit

bb.m:                                             ; preds = %bb.f, %bb.g
  %i.aw = getelementptr i8, ptr %.019, i64 8      ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !102 ; 2 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %_PyPegen_name_from_token.exit, label %bb.f, !llvm.loop !104

_PyPegen_name_from_token.exit:                    ; preds = %bb.m, %bb.e, %bb.l, %bb.k, %bb.i
  %spec.select = phi ptr [ null, %bb.k ], [ %i.av, %bb.l ], [ null, %bb.i ], [ null, %bb.e ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_0
