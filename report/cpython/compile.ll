begin_hunk_0
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.instruction_sequence = type { %struct._object, ptr, i32, i32, i32, ptr, i32, ptr, ptr }
%struct._PyFutureFeatures = type { i32, %struct._Py_SourceLocation }
%struct._Py_SourceLocation = type { i32, i32, i32, i32 }

end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define internal fastcc ptr @new_compiler(ptr noundef %0, ptr noundef %1, ptr noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 96) #12 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyDict_New() #12          ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !46
end_hunk_1
begin_hunk_2

bb.f:                                             ; preds = %_Py_NewRef.exit.i
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_XNewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %5, align 8, !tbaa !11
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %6 = getelementptr i8, ptr %i.a, i64 88
  store ptr %5, ptr %6, align 8, !tbaa !98
  %.not38.i = icmp eq ptr %2, null
  %7 = load i32, ptr %i.j, align 8, !tbaa !99     ; 3 uses
  br i1 %.not38.i, label %_Py_XNewRef.exit.cont41.thread.i, label %_Py_XNewRef.exit.else.i

_Py_XNewRef.exit.cont41.thread.i:                 ; preds = %_Py_XNewRef.exit.i
  %.sroa.0.0.insert.ext.i = zext i32 %7 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 64424509440
  br label %_Py_XNewRef.exit.i.a

_Py_XNewRef.exit.else.i:                          ; preds = %_Py_XNewRef.exit.i
  %.else.val46.i = load i32, ptr %2, align 4, !tbaa !111
  %8 = or i32 %.else.val46.i, %7                  ; 3 uses
  store i32 %8, ptr %i.j, align 8, !tbaa !99
  store i32 %8, ptr %2, align 4, !tbaa !111
  %.else.val.i = load i64, ptr %2, align 4
  br label %_Py_XNewRef.exit.i.a

_Py_XNewRef.exit.i.a:                             ; preds = %_Py_XNewRef.exit.else.i, %_Py_XNewRef.exit.cont41.thread.i
  %9 = phi i32 [ %7, %_Py_XNewRef.exit.cont41.thread.i ], [ %8, %_Py_XNewRef.exit.else.i ]
  %10 = phi i64 [ %.sroa.0.0.insert.insert.i, %_Py_XNewRef.exit.cont41.thread.i ], [ %.else.val.i, %_Py_XNewRef.exit.else.i ]
  %i.o = getelementptr i8, ptr %i.a, i64 36
  store i64 %10, ptr %i.o, align 4
  %i.p = icmp eq i32 %3, -1
  br i1 %i.p, label %bb.i, label %bb.j

end_hunk_2
begin_hunk_3
  store i32 %i.t, ptr %i.u, align 4, !tbaa !100
  %i.v = getelementptr i8, ptr %i.a, i64 80
  store i8 0, ptr %i.v, align 8, !tbaa !74
  %i.w = tail call i32 @_PyAST_Preprocess(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, i32 noundef %i.t, i32 noundef %9, i32 noundef 0, i32 noundef 1, ptr noundef %5) #12
  %.not39.i = icmp eq i32 %i.w, 0
  br i1 %.not39.i, label %bb.n, label %bb.k

end_hunk_3
begin_hunk_4
  %i.y = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !51
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call ptr @PyErr_Occurred() #12
end_hunk_4
begin_hunk_5
  tail call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull @.str.16) #12
  br label %bb.n

bb.n:                                             ; preds = %_Py_NewRef.exit.i, %bb.c, %bb.b, %bb.j, %bb.l, %bb.m
  tail call fastcc void @compiler_free(ptr noundef %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.a, %bb.n
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.n ], [ %i.a, %bb.k ]
  ret ptr %.0
}

end_hunk_5
