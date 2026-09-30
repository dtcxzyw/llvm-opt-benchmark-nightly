Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_API?download=true
inline.NumInlined: 137
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@add_assoc_null_ex:bb.a
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.e = icmp sgt i8 %i.d, 57
  br i1 %i.e, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i8 %i.d, 48
  br i1 %i.f, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !90
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %i.k, ptr noundef nonnull %3) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.m = call ptr @zend_hash_str_update(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_bool_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = select i1 %3, i32 3, i32 2
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !58
  %i.d = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.e = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.f = icmp sgt i8 %i.e, 57
  br i1 %i.f, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i8 %i.e, 48
  br i1 %i.g, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.e, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %i.j = add i8 %i.i, -58
  %or.cond.i = icmp ult i8 %i.j, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.k = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.k, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.l = load i64, ptr %i.a, align 8, !tbaa !90
  %i.m = call ptr @zend_hash_index_update(ptr noundef %i.d, i64 noundef %i.l, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.n = call ptr @zend_hash_str_update(ptr noundef %i.d, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_resource_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 265, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.e = icmp sgt i8 %i.d, 57
  br i1 %i.e, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i8 %i.d, 48
  br i1 %i.f, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !90
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %i.k, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.m = call ptr @zend_hash_str_update(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_double_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store double %3, ptr %4, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 5, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.e = icmp sgt i8 %i.d, 57
  br i1 %i.e, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i8 %i.d, 48
  br i1 %i.f, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !90
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %i.k, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.m = call ptr @zend_hash_str_update(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_str_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !58
  %5 = shl i32 %i.c, 2
  %6 = and i32 %5, 256
  %7 = xor i32 %6, 262
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %7, ptr %i.d, align 8, !tbaa !58
  %i.e = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.f = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.g = icmp sgt i8 %i.f, 57
  br i1 %i.g, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i8 %i.f, 48
  br i1 %i.h, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.f, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !58
  %i.k = add i8 %i.j, -58
  %or.cond.i = icmp ult i8 %i.k, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.l = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.l, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.m = load i64, ptr %i.a, align 8, !tbaa !90
  %i.n = call ptr @zend_hash_index_update(ptr noundef %i.e, i64 noundef %i.m, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.o = call ptr @zend_hash_str_update(ptr noundef %i.e, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_string_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #33 ; 4 uses
  %i.c = and i64 %i.b, -8
  %i.d = add i64 %i.c, 32
  %i.e = tail call noalias ptr @_emalloc(i64 noundef %i.d) #35 ; 6 uses
  store i32 1, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 22, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.b, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 1 %3, i64 %i.b, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  store i8 0, ptr %i.j, align 1, !tbaa !58
  store ptr %i.e, ptr %4, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 262, ptr %i.k, align 8, !tbaa !58
  %i.l = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.m = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.n = icmp sgt i8 %i.m, 57
  br i1 %i.n, label %_zend_handle_numeric_str.exit.thread, label %bb.a, !prof !63

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.o = icmp slt i8 %i.m, 48
  br i1 %i.o, label %bb.b, label %_zend_handle_numeric_str.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.m, 45
  br i1 %.not.i, label %bb.c, label %_zend_handle_numeric_str.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !58
  %i.r = add i8 %i.q, -58
  %or.cond.i = icmp ult i8 %i.r, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.a, %bb.c
  %i.s = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.s, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.t = load i64, ptr %i.a, align 8, !tbaa !90
  %i.u = call ptr @zend_hash_index_update(ptr noundef %i.l, i64 noundef %i.t, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.c, %bb.b, %zend_string_alloc.exit, %_zend_handle_numeric_str.exit
  %i.v = call ptr @zend_hash_str_update(ptr noundef %i.l, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.d, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_stringl_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.b = and i64 %4, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %4, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %3, i64 %4, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %4
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %5, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  %i.k = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.l = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.m = icmp sgt i8 %i.l, 57
  br i1 %i.m, label %_zend_handle_numeric_str.exit.thread, label %bb.a, !prof !63

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.n = icmp slt i8 %i.l, 48
  br i1 %i.n, label %bb.b, label %_zend_handle_numeric_str.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.l, 45
  br i1 %.not.i, label %bb.c, label %_zend_handle_numeric_str.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !58
  %i.q = add i8 %i.p, -58
  %or.cond.i = icmp ult i8 %i.q, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.a, %bb.c
  %i.r = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.r, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.s = load i64, ptr %i.a, align 8, !tbaa !90
  %i.t = call ptr @zend_hash_index_update(ptr noundef %i.k, i64 noundef %i.s, ptr noundef nonnull %5) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.c, %bb.b, %zend_string_alloc.exit, %_zend_handle_numeric_str.exit
  %i.u = call ptr @zend_hash_str_update(ptr noundef %i.k, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %5) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.d, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_array_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 775, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.e = icmp sgt i8 %i.d, 57
  br i1 %i.e, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i8 %i.d, 48
  br i1 %i.f, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread
end_hunk_0
begin_hunk_1_@add_assoc_object_ex:bb.a

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !90
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %i.k, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.m = call ptr @zend_hash_str_update(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_reference_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 778, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.e = icmp sgt i8 %i.d, 57
  br i1 %i.e, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i8 %i.d, 48
  br i1 %i.f, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.d, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = add i8 %i.h, -58
  %or.cond.i = icmp ult i8 %i.i, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.j = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.j, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !90
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %i.k, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.m = call ptr @zend_hash_str_update(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %4) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_assoc_zval_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = load i8, ptr %1, align 1, !tbaa !58      ; 3 uses
  %i.d = icmp sgt i8 %i.c, 57
  br i1 %i.d, label %_zend_handle_numeric_str.exit.thread, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i8 %i.c, 48
  br i1 %i.e, label %bb.c, label %_zend_handle_numeric_str.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i8 %i.c, 45
  br i1 %.not.i, label %bb.d, label %_zend_handle_numeric_str.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !58
  %i.h = add i8 %i.g, -58
  %or.cond.i = icmp ult i8 %i.h, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.b, %bb.d
  %i.i = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %i.a) #32
  br i1 %i.i, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !90
  %i.k = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %i.j, ptr noundef %3) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.d, %bb.c, %bb.a, %_zend_handle_numeric_str.exit
  %i.l = call ptr @zend_hash_str_update(ptr noundef %i.b, ptr noundef nonnull %1, i64 noundef %2, ptr noundef %3) #32 ; 0 uses
  br label %zend_symtable_str_update.exit

zend_symtable_str_update.exit:                    ; preds = %bb.e, %_zend_handle_numeric_str.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_long(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_null(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %2) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_bool(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = select i1 %2, i32 3, i32 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58
  %i.d = call ptr @zend_hash_index_update(ptr noundef %i.c, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_resource(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 265, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_double(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store double %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_str(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %4 = shl i32 %i.b, 2
  %5 = and i32 %4, 256
  %6 = xor i32 %5, 262
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %6, ptr %i.c, align 8, !tbaa !58
  %i.d = load ptr, ptr %0, align 8, !tbaa !58
  %i.e = call ptr @zend_hash_index_update(ptr noundef %i.d, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_string(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33 ; 4 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %2, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %3, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %i.l = call ptr @zend_hash_index_update(ptr noundef %i.k, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_stringl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = and i64 %3, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  store i32 1, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %2, i64 %3, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %3
  store i8 0, ptr %i.h, align 1, !tbaa !58
  store ptr %i.c, ptr %4, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58
  %i.k = call ptr @zend_hash_index_update(ptr noundef %i.j, i64 noundef %1, ptr noundef nonnull %4) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_array(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 775, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_object(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 776, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_index_reference(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %2, ptr %3, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 778, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_index_update(ptr noundef %i.b, i64 noundef %1, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_long(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i64 %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_null(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %1) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_bool(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = select i1 %1, i32 3, i32 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr %0, align 8, !tbaa !58
  %i.d = call ptr @zend_hash_next_index_insert(ptr noundef %i.c, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.d, null
  %i.e = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_resource(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 265, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_double(ptr nofree noundef readonly captures(none) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store double %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_str(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %3 = shl i32 %i.b, 2
  %4 = and i32 %3, 256
  %5 = xor i32 %4, 262
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %5, ptr %i.c, align 8, !tbaa !58
  %i.d = load ptr, ptr %0, align 8, !tbaa !58
  %i.e = call ptr @zend_hash_next_index_insert(ptr noundef %i.d, ptr noundef nonnull %2) #32
  %.not6 = icmp eq ptr %i.e, null
  %i.f = sext i1 %.not6 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33 ; 4 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %2, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %i.l = call ptr @zend_hash_next_index_insert(ptr noundef %i.k, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.l, null
  %i.m = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_stringl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = and i64 %2, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  store i32 1, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  store i8 0, ptr %i.h, align 1, !tbaa !58
  store ptr %i.c, ptr %3, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58
  %i.k = call ptr @zend_hash_next_index_insert(ptr noundef %i.j, ptr noundef nonnull %3) #32
  %.not = icmp eq ptr %i.k, null
  %i.l = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_array(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 775, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_object(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 776, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @add_next_index_reference(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 778, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = call ptr @zend_hash_next_index_insert(ptr noundef %i.b, ptr noundef nonnull %2) #32
  %.not = icmp eq ptr %i.c, null
  %i.d = sext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @array_set_zval_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  switch i8 %i.c, label %.thread [
    i8 6, label %bb.b
    i8 9, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 1, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !58     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !102
  %i.h = load i8, ptr %i.e, align 8, !tbaa !58    ; 3 uses
  %i.i = icmp sgt i8 %i.h, 57
  br i1 %i.i, label %_zend_handle_numeric_str.exit.thread, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i8 %i.h, 48
  br i1 %i.j, label %bb.d, label %_zend_handle_numeric_str.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i8 %i.h, 45
  br i1 %.not.i, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58
  %i.m = add i8 %i.l, -58
  %or.cond.i29 = icmp ult i8 %i.m, -10
  br i1 %or.cond.i29, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.c, %bb.e
  %i.n = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.e, i64 noundef %i.g, ptr noundef nonnull %i.a) #32
  br i1 %i.n, label %bb.f, label %_zend_handle_numeric_str.exit.thread

bb.f:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !90
  %i.p = call ptr @zend_hash_index_update(ptr noundef %0, i64 noundef %i.o, ptr noundef %2) #32
  br label %zend_symtable_update.exit

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.e, %bb.d, %bb.b, %_zend_handle_numeric_str.exit
  %i.q = call ptr @zend_hash_update(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %2) #32
  br label %zend_symtable_update.exit

zend_symtable_update.exit:                        ; preds = %bb.f, %_zend_handle_numeric_str.exit.thread
  %.0.i = phi ptr [ %i.p, %bb.f ], [ %i.q, %_zend_handle_numeric_str.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  tail call void @zend_use_resource_as_offset(ptr noundef nonnull %1) #32
  %i.r = load ptr, ptr %1, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !271
  %i.u = tail call ptr @zend_hash_index_update(ptr noundef %0, i64 noundef %i.t, ptr noundef %2) #32
  br label %bb.s

bb.h:                                             ; preds = %bb.a
  %i.v = tail call ptr @zend_hash_index_update(ptr noundef %0, i64 noundef 0, ptr noundef %2) #32
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.w = tail call ptr @zend_hash_index_update(ptr noundef %0, i64 noundef 1, ptr noundef %2) #32
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  %i.x = load i64, ptr %1, align 8, !tbaa !58
  %i.y = tail call ptr @zend_hash_index_update(ptr noundef %0, i64 noundef %i.x, ptr noundef %2) #32
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.z = load double, ptr %1, align 8, !tbaa !58  ; 11 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
end_hunk_1
begin_hunk_2_@add_property_bool_ex:zend_string_alloc.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 22, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %2, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2
  store i8 0, ptr %i.j, align 1, !tbaa !58
  %i.k = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = call ptr %i.o(ptr noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !58
  %i.r = and i32 %i.q, 64
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.s = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.e, align 8, !tbaa !61
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.e) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_null_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %3 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = and i64 %2, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 9 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = call ptr %i.n(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull %3, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !58
  %i.q = and i32 %i.p, 64
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.d) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_resource_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 265, ptr %i.a, align 8, !tbaa !58
  %i.b = and i64 %2, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 9 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = call ptr %i.n(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !58
  %i.q = and i32 %i.p, 64
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.d) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_double_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, double noundef %3) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store double %3, ptr %4, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 5, ptr %i.a, align 8, !tbaa !58
  %i.b = and i64 %2, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 9 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = call ptr %i.n(ptr noundef %i.j, ptr noundef nonnull %i.d, ptr noundef nonnull %4, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !58
  %i.q = and i32 %i.p, 64
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.d) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_str_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %5 = shl i32 %i.b, 2
  %6 = and i32 %5, 256
  %7 = xor i32 %6, 262
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %7, ptr %i.c, align 8, !tbaa !58
  %i.d = and i64 %2, -8
  %i.e = add i64 %i.d, 32
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #35 ; 9 uses
  store i32 1, ptr %i.f, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 22, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %i.i, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store i8 0, ptr %i.k, align 1, !tbaa !58
  %i.l = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.q = call ptr %i.p(ptr noundef %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull %4, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.r = load i32, ptr %i.g, align 4, !tbaa !58
  %i.s = and i32 %i.r, 64
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.t = load i32, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.f, align 8, !tbaa !61
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.f) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_string_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #33 ; 4 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %3, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %4, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  %i.k = and i64 %2, -8
  %i.l = add i64 %i.k, 32
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.l) #35 ; 9 uses
  store i32 1, ptr %i.m, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 22, ptr %i.n, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !150
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %i.p, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  store i8 0, ptr %i.r, align 1, !tbaa !58
  %i.s = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = call ptr %i.w(ptr noundef %i.s, ptr noundef nonnull %i.m, ptr noundef nonnull %4, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.y = load i32, ptr %i.n, align 4, !tbaa !58
  %i.z = and i32 %i.y, 64
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !61  ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 0
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.m, align 8, !tbaa !61
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.m) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_stringl_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = and i64 %4, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  store i32 1, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %4, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %3, i64 %4, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %4
  store i8 0, ptr %i.h, align 1, !tbaa !58
  store ptr %i.c, ptr %5, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !58
  %i.j = and i64 %2, -8
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias ptr @_emalloc(i64 noundef %i.k) #35 ; 9 uses
  store i32 1, ptr %i.l, align 4, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 22, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %2, ptr %i.o, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %2
  store i8 0, ptr %i.q, align 1, !tbaa !58
  %i.r = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.w = call ptr %i.v(ptr noundef %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !168 ; 0 uses
  %i.x = load i32, ptr %i.m, align 4, !tbaa !58
  %i.y = and i32 %i.x, 64
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.a, label %add_property_zval_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.z = load i32, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.ab, ptr %i.l, align 8, !tbaa !61
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %add_property_zval_ex.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.l) #32
  br label %add_property_zval_ex.exit

add_property_zval_ex.exit:                        ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_property_array_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %3, ptr %4, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 775, ptr %i.a, align 8, !tbaa !58
  %i.b = and i64 %2, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 9 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %2
  store i8 0, ptr %i.i, align 1, !tbaa !58
  %i.j = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
end_hunk_2
begin_hunk_3_@zend_register_functions:bb.a
  store ptr %i.bg, ptr %i.ax, align 8, !tbaa !125
  br label %zend_arena_calloc.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = add i64 %i.ba, 24
  %i.bi = ptrtoint ptr %i.ax to i64
  %i.bj = sub i64 %i.bd, %i.bi
  %..i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 %i.bj) ; 2 uses
  %i.bk = call noalias ptr @_emalloc(i64 noundef %..i.i) #35 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ba
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %..i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !126
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.ax, ptr %i.bp, align 8, !tbaa !127
  store ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !123
  br label %zend_arena_calloc.exit

zend_arena_calloc.exit:                           ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ay, %bb.h ], [ %i.bl, %bb.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.0.i.i, i8 0, i64 %i.av, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %zend_arena_calloc.exit
  %storemerge433 = phi ptr [ %.0.i.i, %zend_arena_calloc.exit ], [ null, %bb.d ]
  store ptr %storemerge433, ptr %i.t, align 8, !tbaa !307
  %i.bq = getelementptr inbounds nuw i8, ptr %.0241366, i64 28 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !308 ; 5 uses
  %.not275 = icmp eq i32 %i.br, 0
  br i1 %.not275, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = and i32 %i.br, 7
  %.not276 = icmp eq i32 %i.bs, 0
  br i1 %.not276, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bt = icmp ne i32 %i.br, 2048
  %or.cond3 = and i1 %i.v, %i.bt
  br i1 %or.cond3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %.0241366, align 8, !tbaa !196
  call void (i32, ptr, ...) @zend_error(i32 noundef %., ptr noundef nonnull @.str.103, ptr noundef nonnull %i.bv, ptr noundef %i.bw) #32
  %.pre403 = load i32, ptr %i.bq, align 4, !tbaa !308
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bx = phi i32 [ %.pre403, %bb.m ], [ %i.br, %bb.l ]
  %i.by = or i32 %i.bx, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.k, %bb.n
  %.sink = phi i32 [ %i.by, %bb.n ], [ %i.br, %bb.k ], [ 1, %bb.j ] ; 3 uses
  store i32 %.sink, ptr %i.u, align 4, !tbaa !309
  %i.bz = getelementptr inbounds nuw i8, ptr %.0241366, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !310 ; 6 uses
  %.not277 = icmp eq ptr %i.ca, null
  br i1 %.not277, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.cb, ptr %i.x, align 8, !tbaa !311
  %i.cc = getelementptr inbounds nuw i8, ptr %.0241366, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !312 ; 4 uses
  store i32 %i.cd, ptr %i.y, align 8, !tbaa !313
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !315 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, -1
  %i.cg = trunc i64 %i.ce to i32
  %spec.select459 = select i1 %i.cf, i32 %i.cd, i32 %i.cg
  store i32 %spec.select459, ptr %i.z, align 4, !tbaa !316
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !317 ; 3 uses
  %i.ck = and i32 %i.cj, 100663296
  %.not279 = icmp eq i32 %i.ck, 0
  br i1 %.not279, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = or i32 %.sink, 4096                     ; 2 uses
  store i32 %i.cl, ptr %i.u, align 4, !tbaa !309
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cm = phi i32 [ %i.cl, %bb.q ], [ %.sink, %bb.p ] ; 2 uses
  %i.cn = zext i32 %i.cd to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !318
  %i.cr = and i32 %i.cq, 134217728
  %.not280 = icmp eq i32 %i.cr, 0
  br i1 %.not280, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = or i32 %i.cm, 16384                     ; 2 uses
  store i32 %i.cs, ptr %i.u, align 4, !tbaa !309
  %i.ct = add i32 %i.cd, -1
  store i32 %i.ct, ptr %i.y, align 8, !tbaa !313
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cu = phi i32 [ %i.cs, %bb.s ], [ %i.cm, %bb.r ]
  %i.cv = and i32 %i.cj, 33554431
  %.not281 = icmp eq i32 %i.cv, 0
  br i1 %.not281, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = and i32 %i.cj, 16777216
  %.not282 = icmp eq i32 %i.cw, 0
  br i1 %.not282, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !319 ; 3 uses
  br i1 %i.v, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = call i32 @strcasecmp(ptr noundef %i.cx, ptr noundef nonnull @.str.104) #33
  %.not284 = icmp eq i32 %i.cy, 0
  br i1 %.not284, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = call i32 @strcasecmp(ptr noundef %i.cx, ptr noundef nonnull @.str.105) #33
  %.not285 = icmp eq i32 %i.cz, 0
  br i1 %.not285, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 16, ptr noundef nonnull @.str.106, ptr noundef %i.cx) #34
  unreachable

bb.z:                                             ; preds = %bb.v, %bb.x, %bb.u
  %i.da = or i32 %i.cu, 8192
  store i32 %i.da, ptr %i.u, align 4, !tbaa !309
  br label %bb.ad

bb.aa:                                            ; preds = %bb.o
  br i1 %i.v, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dd = phi ptr [ @.str.108, %bb.ab ], [ @.str.22, %bb.aa ]
  %i.de = phi ptr [ %i.dc, %bb.ab ], [ @.str.22, %bb.aa ]
  %i.df = load ptr, ptr %.0241366, align 8, !tbaa !196
  call void (i32, ptr, ...) @zend_error(i32 noundef 32, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.de, ptr noundef nonnull %i.dd, ptr noundef %i.df) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.t, %bb.z, %bb.ac
  br i1 %i.v, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !299 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !102
  %i.dj = icmp eq i64 %i.di, 10
  br i1 %i.dj, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dl = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.dk, i64 noundef 10, ptr noundef nonnull @.str.98, i64 noundef 10) #32
  %.not287 = icmp eq i32 %i.dl, 0
  br i1 %.not287, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dm = load i32, ptr %i.u, align 4, !tbaa !309
  %i.dn = and i32 %i.dm, 8192
  %.not288 = icmp eq i32 %i.dn, 0
  br i1 %.not288, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.do = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  call void (i32, ptr, ...) @zend_error(i32 noundef 32, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.dp) #32
  store ptr getelementptr inbounds nuw (i8, ptr @arg_info_toString, i64 32), ptr %i.x, align 8, !tbaa !311
  %i.dq = load i32, ptr %i.u, align 4, !tbaa !309
  %i.dr = or i32 %i.dq, 8192
  store i32 %i.dr, ptr %i.u, align 4, !tbaa !309
  store i32 0, ptr %i.z, align 4, !tbaa !316
  store i32 0, ptr %i.y, align 8, !tbaa !313
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @zend_set_function_arg_flags(ptr noundef nonnull %5) #32
  %i.ds = load i32, ptr %i.bq, align 4, !tbaa !308 ; 3 uses
  %i.dt = and i32 %i.ds, 64
  %.not289 = icmp eq i32 %i.dt, 0
  br i1 %.not289, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.v, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i32, ptr %i.aa, align 4, !tbaa !85 ; 3 uses
  %6 = shl i32 %i.du, 6
  %7 = and i32 %6, 64
  %spec.select328.v = xor i32 %7, 80
  %spec.select328 = or i32 %i.du, %spec.select328.v
  store i32 %spec.select328, ptr %i.aa, align 4, !tbaa !85
  %i.dv = and i32 %i.ds, 16
  %.not293 = icmp ne i32 %i.dv, 0
  %i.dw = and i32 %i.du, 1
  %.not294 = icmp eq i32 %i.dw, 0
  %or.cond460 = select i1 %.not293, i1 %.not294, i1 false
  br i1 %or.cond460, label %bb.al, label %bb.ar

.thread:                                          ; preds = %bb.aj
  %i.dx = and i32 %i.ds, 16
  %.not293318 = icmp eq i32 %i.dx, 0
  br i1 %.not293318, label %bb.ar, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.al
  %i.ea = phi ptr [ @.str.108, %bb.al ], [ @.str.22, %.thread ]
  %i.eb = phi ptr [ %i.dz, %bb.al ], [ @.str.22, %.thread ]
  %i.ec = load ptr, ptr %.0241366, align 8, !tbaa !196
  call void (i32, ptr, ...) @zend_error(i32 noundef %., ptr noundef nonnull @.str.110, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ea, ptr noundef %i.ec) #32
  br label %bb.ar

bb.am:                                            ; preds = %bb.ai
  br i1 %i.v, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ed = load i32, ptr %i.aa, align 4, !tbaa !85
  %i.ee = and i32 %i.ed, 1
  %.not290 = icmp eq i32 %i.ee, 0
  br i1 %.not290, label %.thread320, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %.0241366, align 8, !tbaa !196
  call void (i32, ptr, ...) @zend_error(i32 noundef %., ptr noundef nonnull @.str.111, ptr noundef nonnull %i.eg, ptr noundef %i.eh) #32
  br label %.critedge310

bb.ap:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !296
  %.not291 = icmp eq ptr %i.ei, null
  br i1 %.not291, label %.loopexit332, label %bb.ar

.thread320:                                       ; preds = %bb.an
  %i.ej = load ptr, ptr %i.l, align 8, !tbaa !296
  %.not291321 = icmp eq ptr %i.ej, null
  br i1 %.not291321, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.thread320
  %i.ek = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  br label %.loopexit332

.loopexit332:                                     ; preds = %bb.ap, %bb.aq
  %i.em = phi ptr [ @.str.108, %bb.aq ], [ @.str.22, %bb.ap ]
  %i.en = phi ptr [ %i.el, %bb.aq ], [ @.str.22, %bb.ap ]
  %i.eo = load ptr, ptr %.0241366, align 8, !tbaa !196
  call void (i32, ptr, ...) @zend_error(i32 noundef %., ptr noundef nonnull @.str.112, ptr noundef nonnull %i.en, ptr noundef nonnull %i.em, ptr noundef %i.eo) #32
  call void @zend_unregister_functions(ptr noundef nonnull %1, i32 noundef %.0242365, ptr noundef %.0248)
  br label %.critedge310

bb.ar:                                            ; preds = %.thread320, %.thread, %bb.ap, %bb.ak, %.critedge
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !299
  %i.eq = call ptr @zend_string_tolower_ex(ptr noundef %i.ep, i1 noundef zeroext %i.a) #32
  %i.er = load ptr, ptr @zend_new_interned_string, align 8, !tbaa !146
  %i.es = call ptr %i.er(ptr noundef %i.eq) #32   ; 13 uses
  %i.et = call noalias dereferenceable_or_null(160) ptr @malloc(i64 noundef 160) #35 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.et, ptr noundef nonnull align 8 dereferenceable(160) %5, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.et, ptr %4, align 8, !tbaa !58
  store i32 13, ptr %i.ab, align 8, !tbaa !58
  %i.eu = call ptr @zend_hash_add(ptr noundef %.0248, ptr noundef %i.es, ptr noundef nonnull %4) #32
  %.not.i314 = icmp eq ptr %i.eu, null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %.not.i314, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.et) #32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !58 ; 2 uses
  %i.ex = and i32 %i.ew, 64
  %.not.i311 = icmp eq i32 %i.ex, 0
  br i1 %.not.i311, label %bb.at, label %zend_string_release.exit313

bb.at:                                            ; preds = %bb.as
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !61 ; 2 uses
  %i.ez = icmp ne i32 %i.ey, 0
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add i32 %i.ey, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.es, align 4, !tbaa !61
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.au, label %zend_string_release.exit313

bb.au:                                            ; preds = %bb.at
  %i.fc = and i32 %i.ew, 128
  %.not5.i312 = icmp eq i32 %i.fc, 0
  br i1 %.not5.i312, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @free(ptr noundef nonnull %i.es) #32
  br label %zend_string_release.exit313

bb.aw:                                            ; preds = %bb.au
  call void @_efree(ptr noundef nonnull %i.es) #32
  br label %zend_string_release.exit313

zend_string_release.exit313:                      ; preds = %bb.as, %bb.at, %bb.av, %bb.aw
  %i.fd = load ptr, ptr %.0241366, align 8, !tbaa !196 ; 2 uses
  %.not307369 = icmp eq ptr %i.fd, null
  br i1 %.not307369, label %._crit_edge372, label %.lr.ph371

bb.ax:                                            ; preds = %bb.ar
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !305 ; 3 uses
  %.not295 = icmp eq ptr %i.ff, null
  br i1 %.not295, label %bb.ba, label %.preheader331

.preheader331:                                    ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !198 ; 2 uses
  %.not296353 = icmp eq ptr %i.fg, null
  %.pre409 = load i64, ptr @zend_flf_count, align 8, !tbaa !90 ; 2 uses
  br i1 %.not296353, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader331
  %.pre406 = load i64, ptr @zend_flf_capacity, align 8, !tbaa !90
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.az
  %i.fh = phi ptr [ %i.ge, %bb.az ], [ %i.fg, %.lr.ph.preheader ]
  %i.fi = phi i64 [ %i.fx, %bb.az ], [ %.pre406, %.lr.ph.preheader ] ; 4 uses
  %i.fj = phi i64 [ %i.gc, %bb.az ], [ %.pre409, %.lr.ph.preheader ] ; 2 uses
  %.0254354 = phi ptr [ %i.gd, %bb.az ], [ %i.ff, %.lr.ph.preheader ] ; 2 uses
  %i.fk = icmp eq i64 %i.fj, %i.fi
  br i1 %i.fk, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph
  %.not305 = icmp eq i64 %i.fi, 0
  %i.fl = shl i64 %i.fi, 1
  %storemerge = select i1 %.not305, i64 8, i64 %i.fl ; 2 uses
  store i64 %storemerge, ptr @zend_flf_capacity, align 8, !tbaa !90
  %i.fm = load ptr, ptr @zend_flf_handlers, align 8, !tbaa !320
  %i.fn = shl i64 %storemerge, 3
  %i.fo = or disjoint i64 %i.fn, 8
  %i.fp = call ptr @realloc(ptr noundef %i.fm, i64 noundef %i.fo) #36
  store ptr %i.fp, ptr @zend_flf_handlers, align 8, !tbaa !320
  %i.fq = load ptr, ptr @zend_flf_functions, align 8, !tbaa !321
  %i.fr = load i64, ptr @zend_flf_capacity, align 8, !tbaa !90
  %i.fs = shl i64 %i.fr, 3
  %i.ft = add i64 %i.fs, 8
  %i.fu = call ptr @realloc(ptr noundef %i.fq, i64 noundef %i.ft) #36
  store ptr %i.fu, ptr @zend_flf_functions, align 8, !tbaa !321
  %.pre405 = load i64, ptr @zend_flf_capacity, align 8, !tbaa !90
  %.pre407 = load ptr, ptr %.0254354, align 8, !tbaa !198
  %.pre408 = load i64, ptr @zend_flf_count, align 8, !tbaa !90
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph
  %i.fv = phi i64 [ %.pre408, %bb.ay ], [ %i.fj, %.lr.ph ] ; 3 uses
  %i.fw = phi ptr [ %.pre407, %bb.ay ], [ %i.fh, %.lr.ph ]
  %i.fx = phi i64 [ %.pre405, %bb.ay ], [ %i.fi, %.lr.ph ]
  %i.fy = load ptr, ptr @zend_flf_handlers, align 8, !tbaa !320
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fv
  store ptr %i.fw, ptr %i.fz, align 8, !tbaa !146
  %i.ga = load ptr, ptr @zend_flf_functions, align 8, !tbaa !321
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fv
  store ptr %i.et, ptr %i.gb, align 8, !tbaa !199
  %i.gc = add i64 %i.fv, 1                        ; 3 uses
  store i64 %i.gc, ptr @zend_flf_count, align 8, !tbaa !90
  %i.gd = getelementptr inbounds nuw i8, ptr %.0254354, i64 16 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !198 ; 2 uses
  %.not296 = icmp eq ptr %i.ge, null
  br i1 %.not296, label %._crit_edge, label %.lr.ph, !llvm.loop !284

._crit_edge:                                      ; preds = %bb.az, %.preheader331
  %i.gf = phi i64 [ %.pre409, %.preheader331 ], [ %i.gc, %bb.az ] ; 2 uses
  %i.gg = load ptr, ptr @zend_flf_handlers, align 8, !tbaa !320
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf
  store ptr null, ptr %i.gh, align 8, !tbaa !146
  %i.gi = load ptr, ptr @zend_flf_functions, align 8, !tbaa !321
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gf
  store ptr null, ptr %i.gj, align 8, !tbaa !199
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !313
  %i.gm = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 4 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !309 ; 4 uses
  %i.go = lshr i32 %i.gn, 14
  %i.gp = and i32 %i.go, 1
  %spec.select = add i32 %i.gp, %i.gl             ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !311 ; 5 uses
  %i.gs = icmp ne ptr %i.gr, null                 ; 2 uses
  %i.gt = icmp ne i32 %spec.select, 0
  %or.cond5 = select i1 %i.gs, i1 %i.gt, i1 false
end_hunk_3
begin_hunk_4_@zend_is_callable_check_class:bb.a
  br i1 %.not146, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !67
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %instanceof_function.exit161, %instanceof_function.exit, %instanceof_function.exit.thread
  %.sink = phi ptr [ %i.ck, %instanceof_function.exit.thread ], [ %i.bu, %bb.al ], [ %i.bu, %instanceof_function.exit ], [ %i.bu, %instanceof_function.exit161 ], [ %i.co, %bb.ao ], [ %i.bu, %bb.an ]
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sink, ptr %i.cp, align 8, !tbaa !212
  store i8 1, ptr %4, align 1, !tbaa !22
  br label %bb.as

bb.aq:                                            ; preds = %zend_string_equals.exit.thread170
  %.not142 = icmp eq ptr %5, null
  br i1 %.not142, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = trunc i64 %i.b to i32
  %i.cr = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %5, i64 noundef 0, ptr noundef nonnull @.str.199, i32 noundef %i.cq, ptr noundef nonnull %i.m) #32 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ah, %bb.ac, %bb.ab, %instanceof_function.exit163.thread, %bb.m, %bb.f, %bb.g, %bb.aq, %bb.ar, %bb.ap, %bb.p, %bb.o, %bb.r, %bb.s, %bb.z
  %.1 = phi i1 [ false, %bb.aq ], [ false, %bb.g ], [ false, %bb.f ], [ true, %bb.z ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.o ], [ true, %instanceof_function.exit163.thread ], [ true, %bb.ap ], [ false, %bb.ar ], [ true, %bb.m ], [ false, %bb.ab ], [ false, %bb.ac ], [ true, %bb.ah ]
  br i1 %i.e, label %bb.at, label %bb.au, !prof !64

bb.at:                                            ; preds = %bb.as
  call void @_efree(ptr noundef nonnull %i.h) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  %.not160 = icmp eq ptr %i.cs, null
  %.1. = and i1 %.1, %.not160
  ret i1 %.1.
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @zend_is_callable_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %.023 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !111 ; 2 uses
  %.not24 = icmp eq ptr %.023, null
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge2
  %.025 = phi ptr [ %.0, %.critedge2 ], [ %.023, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.025, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  %.not20 = icmp eq i8 %i.c, 1
  br i1 %.not20, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %.lr.ph, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.025, i64 48
  %.0 = load ptr, ptr %i.d, align 8, !tbaa !111   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %bb.b, %.critedge2, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ null, %.critedge2 ], [ %.025, %bb.b ]
  %i.e = tail call zeroext i1 @zend_is_callable_at_frame(ptr noundef %0, ptr noundef %1, ptr noundef %.sink, i32 noundef %2, ptr noundef %4, ptr noundef %5)
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.f = tail call ptr @zend_get_callable_name_ex(ptr noundef %0, ptr noundef %1)
  store ptr %i.f, ptr %3, align 8, !tbaa !81
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @zend_is_callable(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %.023.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !111 ; 2 uses
  %.not24.i = icmp eq ptr %.023.i, null
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge2.i
  %.025.i = phi ptr [ %.0.i, %.critedge2.i ], [ %.023.i, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not19.i = icmp eq ptr %i.b, null
  br i1 %.not19.i, label %.critedge2.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  %.not20.i = icmp eq i8 %i.c, 1
  br i1 %.not20.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.b, %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.025.i, i64 48
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.critedge2.i, %bb.b, %bb.a
  %.sink.i = phi ptr [ null, %bb.a ], [ %.025.i, %bb.b ], [ null, %.critedge2.i ]
  %i.e = tail call zeroext i1 @zend_is_callable_at_frame(ptr noundef %0, ptr noundef null, ptr noundef %.sink.i, i32 noundef %1, ptr noundef null, ptr noundef null)
  %.not21.i = icmp eq ptr %2, null
  br i1 %.not21.i, label %zend_is_callable_ex.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.f = tail call ptr @zend_get_callable_name_ex(ptr noundef %0, ptr noundef null)
  store ptr %i.f, ptr %2, align 8, !tbaa !81
  br label %zend_is_callable_ex.exit

zend_is_callable_ex.exit:                         ; preds = %.critedge.i, %bb.c
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @zend_make_callable(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zend_fcall_info_cache, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %.023.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !111 ; 2 uses
  %.not24.i = icmp eq ptr %.023.i, null
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge2.i
  %.025.i = phi ptr [ %.0.i, %.critedge2.i ], [ %.023.i, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not19.i = icmp eq ptr %i.b, null
  br i1 %.not19.i, label %.critedge2.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  %.not20.i = icmp eq i8 %i.c, 1
  br i1 %.not20.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.b, %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.025.i, i64 48
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !111 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i, null
  br i1 %.not.i16, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.critedge2.i, %bb.b, %bb.a
  %.sink.i = phi ptr [ null, %bb.a ], [ %.025.i, %bb.b ], [ null, %.critedge2.i ]
  %i.e = call zeroext i1 @zend_is_callable_at_frame(ptr noundef %0, ptr noundef null, ptr noundef %.sink.i, i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) ; 2 uses
  %.not21.i = icmp eq ptr %1, null
  br i1 %.not21.i, label %zend_is_callable_ex.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.f = call ptr @zend_get_callable_name_ex(ptr noundef %0, ptr noundef null)
  store ptr %i.f, ptr %1, align 8, !tbaa !81
  br label %zend_is_callable_ex.exit

zend_is_callable_ex.exit:                         ; preds = %.critedge.i, %bb.c
  br i1 %i.e, label %bb.d, label %zend_release_fcall_info_cache.exit

bb.d:                                             ; preds = %zend_is_callable_ex.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !58
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp ne ptr %i.k, null
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %.not.i15 = icmp eq i8 %i.n, 0
  br i1 %.not.i15, label %zval_ptr_dtor_str.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !61   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !61
  %.not3.i = icmp eq i32 %i.r, 0
  br i1 %.not3.i, label %bb.g, label %zval_ptr_dtor_str.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !58
  call void @_efree(ptr noundef %i.s) #32
  br label %zval_ptr_dtor_str.exit

zval_ptr_dtor_str.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.t = call ptr @_zend_new_array_0() #32        ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !58
  store i32 775, ptr %i.g, align 8, !tbaa !58
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !211
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !58   ; 2 uses
  %i.z = and i32 %i.y, 64
  %.not.i13 = icmp eq i32 %i.z, 0
  br i1 %.not.i13, label %bb.h, label %zend_string_copy.exit14

bb.h:                                             ; preds = %zval_ptr_dtor_str.exit
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !61
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !61
  %.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %zend_string_copy.exit14

zend_string_copy.exit14:                          ; preds = %zval_ptr_dtor_str.exit, %bb.h
  %i.ac = phi ptr [ %i.t, %zval_ptr_dtor_str.exit ], [ %.pre, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.w, ptr %3, align 8, !tbaa !58
  %5 = shl i32 %i.y, 2
  %6 = and i32 %5, 256
  %7 = xor i32 %6, 262
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %7, ptr %i.ad, align 8, !tbaa !58
  %i.ae = call ptr @zend_hash_next_index_insert(ptr noundef %i.ac, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.af = load ptr, ptr %4, align 8, !tbaa !110
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58 ; 2 uses
  %i.ak = and i32 %i.aj, 64
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.i, label %zend_string_copy.exit

bb.i:                                             ; preds = %zend_string_copy.exit14
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !61
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %zend_string_copy.exit14, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.ah, ptr %2, align 8, !tbaa !58
  %8 = shl i32 %i.aj, 2
  %9 = and i32 %8, 256
  %10 = xor i32 %9, 262
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %10, ptr %i.an, align 8, !tbaa !58
  %i.ao = load ptr, ptr %0, align 8, !tbaa !58
  %i.ap = call ptr @zend_hash_next_index_insert(ptr noundef %i.ao, ptr noundef nonnull %2) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.j

bb.j:                                             ; preds = %zend_string_copy.exit, %bb.d
  %i.aq = load ptr, ptr %4, align 8, !tbaa !110   ; 6 uses
  %.not.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i20, label %zend_release_fcall_info_cache.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = and i32 %i.as, 262144
  %.not9.i = icmp eq i32 %i.at, 0
  br i1 %.not9.i, label %zend_release_fcall_info_cache.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58 ; 5 uses
  %.not10.i = icmp eq ptr %i.av, null
  br i1 %.not10.i, label %zend_string_release_ex.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !58
  %i.ay = and i32 %i.ax, 64
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %bb.n, label %zend_string_release_ex.exit.i

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.av, align 4, !tbaa !61 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !61
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %zend_string_release_ex.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_efree(ptr noundef nonnull %i.av) #32
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !110
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bd = phi ptr [ %.pre.i, %bb.o ], [ %i.aq, %bb.n ], [ %i.aq, %bb.m ], [ %i.aq, %bb.l ] ; 2 uses
  %i.be = icmp eq ptr %i.bd, getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1384)
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %zend_string_release_ex.exit.i
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1432), align 8, !tbaa !58
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1392), align 8, !tbaa !58
  br label %zend_release_fcall_info_cache.exit

bb.q:                                             ; preds = %zend_string_release_ex.exit.i
  call void @_efree(ptr noundef %i.bd) #32
  br label %zend_release_fcall_info_cache.exit

zend_release_fcall_info_cache.exit:               ; preds = %bb.p, %bb.q, %bb.k, %bb.j, %zend_is_callable_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i1 %i.e
}

declare ptr @_zend_new_array_0() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_fcall_info_init(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %.023.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !111 ; 2 uses
  %.not24.i = icmp eq ptr %.023.i, null
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge2.i
  %.025.i = phi ptr [ %.0.i, %.critedge2.i ], [ %.023.i, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.025.i, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not19.i = icmp eq ptr %i.b, null
  br i1 %.not19.i, label %.critedge2.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58
  %.not20.i = icmp eq i8 %i.c, 1
  br i1 %.not20.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.b, %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.025.i, i64 48
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.critedge2.i, %bb.b, %bb.a
  %.sink.i = phi ptr [ null, %bb.a ], [ %.025.i, %bb.b ], [ null, %.critedge2.i ]
  %i.e = tail call zeroext i1 @zend_is_callable_at_frame(ptr noundef %0, ptr noundef null, ptr noundef %.sink.i, i32 noundef %1, ptr noundef %3, ptr noundef %5)
  %.not21.i = icmp eq ptr %4, null
  br i1 %.not21.i, label %zend_is_callable_ex.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.f = tail call ptr @zend_get_callable_name_ex(ptr noundef %0, ptr noundef null)
  store ptr %i.f, ptr %4, align 8, !tbaa !81
  br label %zend_is_callable_ex.exit

zend_is_callable_ex.exit:                         ; preds = %.critedge.i, %bb.c
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %zend_is_callable_ex.exit
  store i64 64, ptr %2, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.h, ptr %i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !58
  store ptr %i.k, ptr %i.j, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.n, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.p, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.q, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %zend_is_callable_ex.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %zend_is_callable_ex.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_fcall_info_args_clear(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not1215 = icmp eq i32 %i.d, 0
  br i1 %.not1215, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %i_zval_ptr_dtor.exit
  %.016 = phi ptr [ %i.x, %i_zval_ptr_dtor.exit ], [ %i.b, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %i_zval_ptr_dtor.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.016, align 8, !tbaa !58  ; 7 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61   ; 2 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !61
  %.not5.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @rc_dtor_func(ptr noundef nonnull %i.i) #32
  br label %i_zval_ptr_dtor.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 2 uses
  %i.o = icmp eq i32 %i.n, 26
  br i1 %i.o, label %bb.f, label %bb.g, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  %i.q = load i8, ptr %i.p, align 1, !tbaa !58
  %i.r = and i8 %i.q, 2
  %.not.i13 = icmp eq i8 %i.r, 0
  br i1 %.not.i13, label %i_zval_ptr_dtor.exit, label %.thread

.thread:                                          ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e
  %i.u = phi i32 [ %.pre, %.thread ], [ %i.n, %bb.e ]
  %.1.i = phi ptr [ %i.t, %.thread ], [ %i.i, %bb.e ]
  %i.v = and i32 %i.u, -1008
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %i_zval_ptr_dtor.exit, !prof !64

bb.h:                                             ; preds = %bb.g
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i) #32
  br label %i_zval_ptr_dtor.exit

i_zval_ptr_dtor.exit:                             ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph, %bb.d
end_hunk_4
begin_hunk_5_@zend_fcall_info_argn
define dso_local void @zend_fcall_info_argn(ptr nofree noundef captures(none) %0, i32 noundef %1, ...) local_unnamed_addr #3 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @zend_fcall_info_argv(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zend_fcall_info_call(ptr noundef initializes((24, 32)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %.not = icmp ne ptr %2, null                    ; 2 uses
  %i.a = select i1 %.not, ptr %2, ptr %4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8, !tbaa !369
  %.not12 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !214
  store i32 0, ptr %i.c, align 8, !tbaa !114
  store ptr null, ptr %i.e, align 8, !tbaa !214
  %i.g = call range(i32 -1, 1) i32 @zend_fcall_info_args_ex(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull readonly %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ]
  %.0 = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  %i.h = call i32 @zend_call_function(ptr noundef nonnull %0, ptr noundef %1) #32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i8, ptr %i.i, align 8
  %.not13 = icmp eq i8 %i.j, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not13
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not12, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %zend_fcall_info_args_restore.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %.not1215.i.i = icmp eq i32 %i.n, 0
  br i1 %.not1215.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %i_zval_ptr_dtor.exit.i.i
  %.016.i.i = phi ptr [ %i.ah, %i_zval_ptr_dtor.exit.i.i ], [ %i.l, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %i_zval_ptr_dtor.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.s = load ptr, ptr %.016.i.i, align 8, !tbaa !58 ; 7 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !61   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.s, align 4, !tbaa !61
  %.not5.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not5.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @rc_dtor_func(ptr noundef nonnull %i.s) #32
  br label %i_zval_ptr_dtor.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58   ; 2 uses
  %i.y = icmp eq i32 %i.x, 26
  br i1 %i.y, label %bb.k, label %bb.l, !prof !63

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !58
  %i.ab = and i8 %i.aa, 2
  %.not.i13.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i13.i.i, label %i_zval_ptr_dtor.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i, %bb.j
  %i.ae = phi i32 [ %.pre.i.i, %.thread.i.i ], [ %i.x, %bb.j ]
  %.1.i.i.i = phi ptr [ %i.ad, %.thread.i.i ], [ %i.s, %bb.j ]
  %i.af = and i32 %i.ae, -1008
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %i_zval_ptr_dtor.exit.i.i, !prof !64

bb.m:                                             ; preds = %bb.l
  call void @gc_possible_root(ptr noundef nonnull %.1.i.i.i) #32
  br label %i_zval_ptr_dtor.exit.i.i

i_zval_ptr_dtor.exit.i.i:                         ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.ah, %i.p
  br i1 %.not12.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !8

._crit_edge.i.loopexit.i:                         ; preds = %i_zval_ptr_dtor.exit.i.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !214
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %bb.g
  %i.ai = phi ptr [ %.pre.i, %._crit_edge.i.loopexit.i ], [ %i.l, %bb.g ]
  call void @_efree(ptr noundef %i.ai) #32
  br label %zend_fcall_info_args_restore.exit

zend_fcall_info_args_restore.exit:                ; preds = %bb.f, %._crit_edge.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.0, ptr %i.aj, align 8, !tbaa !114
  store ptr %.014, ptr %i.k, align 8, !tbaa !214
  br label %bb.n

bb.n:                                             ; preds = %zend_fcall_info_args_restore.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %i.h
}

declare i32 @zend_call_function(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @zend_get_callable_zval_from_fcc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 12)) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !61
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !61
  store ptr %i.b, ptr %1, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 776, ptr %i.e, align 8, !tbaa !58
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @_zend_new_array_0() #32   ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.j, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 4 uses
  %.not31 = icmp eq ptr %i.l, null
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.l, align 4, !tbaa !61
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.l, ptr %4, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 776, ptr %i.o, align 8, !tbaa !58
  %i.p = load ptr, ptr %1, align 8, !tbaa !58
  %i.q = call ptr @zend_hash_next_index_insert(ptr noundef %i.p, ptr noundef nonnull %4) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !58   ; 2 uses
  %i.x = and i32 %i.w, 64
  %.not.i32 = icmp eq i32 %i.x, 0
  br i1 %.not.i32, label %bb.g, label %zend_string_copy.exit33

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.u, align 4, !tbaa !61
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.u, align 4, !tbaa !61
  %.pre = load ptr, ptr %1, align 8, !tbaa !58
  br label %zend_string_copy.exit33

zend_string_copy.exit33:                          ; preds = %bb.f, %bb.g
  %i.aa = phi ptr [ %i.i, %bb.f ], [ %.pre, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.u, ptr %3, align 8, !tbaa !58
  %5 = shl i32 %i.w, 2
  %6 = and i32 %5, 256
  %7 = xor i32 %6, 262
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %7, ptr %i.ab, align 8, !tbaa !58
  %i.ac = call ptr @zend_hash_next_index_insert(ptr noundef %i.aa, ptr noundef nonnull %3) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.h

bb.h:                                             ; preds = %zend_string_copy.exit33, %bb.e
  %i.ad = load ptr, ptr %0, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !58 ; 2 uses
  %i.ai = and i32 %i.ah, 64
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.i, label %zend_string_copy.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !61
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !61
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.af, ptr %2, align 8, !tbaa !58
  %8 = shl i32 %i.ah, 2
  %9 = and i32 %8, 256
  %10 = xor i32 %9, 262
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %10, ptr %i.al, align 8, !tbaa !58
  %i.am = load ptr, ptr %1, align 8, !tbaa !58
  %i.an = call ptr @zend_hash_next_index_insert(ptr noundef %i.am, ptr noundef nonnull %2) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58 ; 4 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = and i32 %i.ar, 64
  %.not30 = icmp eq i32 %i.as, 0
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.at, align 8, !tbaa !58
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !61
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.ap, align 4, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.aw, align 8, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %zend_string_copy.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_get_module_version(ptr noundef %0) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33 ; 3 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 8 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = tail call ptr @zend_str_tolower_copy(ptr noundef nonnull %i.h, ptr noundef nonnull %0, i64 noundef %i.a) #32 ; 0 uses
  %i.j = tail call ptr @zend_hash_find(ptr noundef nonnull @module_registry, ptr noundef nonnull %i.d) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.a

zend_hash_find_ptr.exit.thread:                   ; preds = %zend_string_alloc.exit
  tail call void @_efree(ptr noundef nonnull %i.d) #32
  br label %bb.b

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58, !nonnull !149, !noundef !149
  tail call void @_efree(ptr noundef nonnull %i.d) #32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !370
  br label %bb.b

bb.b:                                             ; preds = %zend_hash_find_ptr.exit.thread, %bb.a
  %i.n = phi ptr [ %i.m, %bb.a ], [ null, %zend_hash_find_ptr.exit.thread ]
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_declare_typed_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly byval(%struct.zend_type) align 8 captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !202
  %i.c = and i32 %i.b, 33554431
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85   ; 2 uses
  %i.f = or i32 %i.e, 256
  store i32 %i.f, ptr %i.d, align 4, !tbaa !85
  %i.g = and i32 %3, 128
  %.not162 = icmp eq i32 %i.g, 0
  br i1 %.not162, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = or i32 %i.e, 2097408
  store i32 %i.h, ptr %i.d, align 4, !tbaa !85
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = load i8, ptr %0, align 8, !tbaa !84
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(72) ptr @__zend_malloc(i64 noundef 72) #35
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !123 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i184 = icmp ult i64 %i.r, 72
  br i1 %.not.i184, label %bb.h, label %bb.g, !prof !64

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.s, ptr %i.l, align 8, !tbaa !125
  br label %zend_arena_alloc.exit

bb.h:                                             ; preds = %bb.f
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.p, %i.t
  %..i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 96) ; 2 uses
  %i.v = tail call noalias ptr @_emalloc(i64 noundef %..i) #35 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr %i.x, ptr %i.v, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %..i
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !127
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !123
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.m, %bb.g ], [ %i.w, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !58
  %i.ad = icmp eq i8 %i.ac, 11
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %zend_arena_alloc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !85
  %i.ag = and i32 %i.af, -4097                    ; 3 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !85
  %i.ah = and i32 %3, 16
  %.not163 = icmp eq i32 %i.ah, 0
  br i1 %.not163, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = or i32 %i.ag, 67108864
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !85
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aj = or i32 %i.ag, 33554432
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !85
  br label %bb.l

bb.l:                                             ; preds = %zend_arena_alloc.exit, %bb.k, %bb.j, %bb.e
  %.0156 = phi ptr [ %i.k, %bb.e ], [ %.0.i, %bb.j ], [ %.0.i, %bb.k ], [ %.0.i, %zend_arena_alloc.exit ] ; 23 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !58
  %i.am = icmp eq i8 %i.al, 6
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %2, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = and i32 %i.ap, 64
  %.not164 = icmp eq i32 %i.aq, 0
  br i1 %.not164, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @zval_make_interned_string(ptr noundef nonnull %2) #32 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.as = and i32 %3, 7
  %.not165 = icmp eq i32 %i.as, 0
  %i.at = zext i1 %.not165 to i32
  %spec.select = or disjoint i32 %3, %i.at        ; 7 uses
  %i.au = and i32 %spec.select, 7297
  %i.av = icmp eq i32 %i.au, 129
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = or disjoint i32 %spec.select, 2048
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ax = and i32 %3, 7168                        ; 2 uses
  %.not166 = icmp eq i32 %i.ax, 0
  br i1 %.not166, label %bb.v, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  br i1 %.not, label %bb.s, label %switch.lookup

bb.s:                                             ; preds = %bb.r
end_hunk_5
begin_hunk_6_@zend_try_assign_typed_ref_ex:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  store ptr %i.g, ptr %i.b, align 8, !tbaa !58
  store i32 %i.i, ptr %i.c, align 8, !tbaa !58
  %i.j = load i32, ptr %i.f, align 4, !tbaa !61   ; 2 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !61
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @rc_dtor_func(ptr noundef nonnull %i.f) #32
  br label %zend_safe_assign_to_variable_noref.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58   ; 2 uses
  %i.p = icmp ne i32 %i.o, 26
  tail call void @llvm.assume(i1 %i.p)
  %i.q = and i32 %i.o, -1008
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %zend_safe_assign_to_variable_noref.exit, !prof !64

bb.g:                                             ; preds = %bb.f
  tail call void @gc_possible_root(ptr noundef nonnull %i.f) #32
  br label %zend_safe_assign_to_variable_noref.exit

bb.h:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %1, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !58
  store ptr %i.s, ptr %i.b, align 8, !tbaa !58
  store i32 %i.u, ptr %i.c, align 8, !tbaa !58
  br label %zend_safe_assign_to_variable_noref.exit

zend_safe_assign_to_variable_noref.exit:          ; preds = %bb.h, %bb.e, %bb.f, %bb.g, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.h ]
  ret i32 %.0
}

declare zeroext i1 @zend_verify_ref_assignable_zval(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !58
  %i.h = icmp slt i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.h, %bb.c ]
  %i.j = tail call zeroext i1 @zend_verify_ref_assignable_zval(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %i.i) #32
  br i1 %i.j, label %bb.f, label %bb.e, !prof !63

bb.e:                                             ; preds = %bb.d
  tail call void @zval_ptr_dtor(ptr noundef %1) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !58   ; 5 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58
  store ptr %i.p, ptr %i.k, align 8, !tbaa !58
  store i32 %i.r, ptr %i.l, align 8, !tbaa !58
  %i.s = load i32, ptr %i.o, align 4, !tbaa !61   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.o, align 4, !tbaa !61
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @rc_dtor_func(ptr noundef nonnull %i.o) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58   ; 2 uses
  %i.y = icmp ne i32 %i.x, 26
  tail call void @llvm.assume(i1 %i.y)
  %i.z = and i32 %i.x, -1008
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %zend_try_assign_typed_ref_ex.exit, !prof !64

bb.j:                                             ; preds = %bb.i
  tail call void @gc_possible_root(ptr noundef nonnull %i.o) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %1, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !58
  store i32 %i.ad, ptr %i.l, align 8, !tbaa !58
  br label %zend_try_assign_typed_ref_ex.exit

zend_try_assign_typed_ref_ex.exit:                ; preds = %bb.e, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ -1, %bb.e ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.k ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_null(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !58
  %i.b = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_bool(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = select i1 %1, i32 3, i32 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !58
  %i.c = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_long(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i64 %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !58
  %i.b = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_double(ptr noundef %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store double %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %i.a, align 8, !tbaa !58
  %i.b = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_empty_string(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = load ptr, ptr @zend_empty_string, align 8, !tbaa !81
  store ptr %i.a, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.b, align 8, !tbaa !58
  %i.c = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_str(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %3 = shl i32 %i.b, 2
  %4 = and i32 %3, 256
  %5 = xor i32 %4, 262
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %5, ptr %i.c, align 8, !tbaa !58
  %i.d = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33 ; 4 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  store i32 1, ptr %i.d, align 4, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %2, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  %i.k = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_stringl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = and i64 %2, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  store i32 1, ptr %i.c, align 4, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  store i8 0, ptr %i.h, align 1, !tbaa !58
  store ptr %i.c, ptr %3, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !58
  %i.j = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_arr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 775, ptr %i.a, align 8, !tbaa !58
  %i.b = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_res(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 265, ptr %i.a, align 8, !tbaa !58
  %i.b = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_zval(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58
  store ptr %i.a, ptr %2, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !58
  %i.e = call i32 @zend_try_assign_typed_ref(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_try_assign_typed_ref_zval_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58
  store ptr %i.a, ptr %3, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !58
  %i.e = call zeroext i1 @zend_verify_ref_assignable_zval(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext %2) #32
  br i1 %i.e, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.i = load i8, ptr %i.h, align 1, !tbaa !58
  %.not.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !58   ; 5 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !58
  %i.l = load i32, ptr %i.d, align 8, !tbaa !58
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
  store i32 %i.l, ptr %i.g, align 8, !tbaa !58
  %i.m = load i32, ptr %i.j, align 4, !tbaa !61   ; 2 uses
  %i.n = icmp ne i32 %i.m, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.o, ptr %i.j, align 4, !tbaa !61
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @rc_dtor_func(ptr noundef nonnull %i.j) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58   ; 2 uses
  %i.s = icmp ne i32 %i.r, 26
  call void @llvm.assume(i1 %i.s)
  %i.t = and i32 %i.r, -1008
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %zend_try_assign_typed_ref_ex.exit, !prof !64

bb.g:                                             ; preds = %bb.f
  call void @gc_possible_root(ptr noundef nonnull %i.j) #32
  br label %zend_try_assign_typed_ref_ex.exit

bb.h:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %3, align 8, !tbaa !58
  %i.w = load i32, ptr %i.d, align 8, !tbaa !58
  store ptr %i.v, ptr %i.f, align 8, !tbaa !58
  store i32 %i.w, ptr %i.g, align 8, !tbaa !58
  br label %zend_try_assign_typed_ref_ex.exit

zend_try_assign_typed_ref_ex.exit:                ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_declare_property_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.zend_type, align 8          ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.a = tail call ptr @zend_declare_typed_property(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull byval(%struct.zend_type) align 8 %5) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_declare_property(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.zend_type, align 8          ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !84
  %i.b = and i8 %i.a, 1
  %.not.i7 = icmp eq i8 %i.b, 0
  br i1 %.not.i7, label %is_persistent_class.exit.thread, label %is_persistent_class.exit

is_persistent_class.exit:                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.f = load i8, ptr %i.e, align 4, !tbaa !182
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.b, label %is_persistent_class.exit.thread

bb.b:                                             ; preds = %is_persistent_class.exit
  %i.h = and i64 %2, -8
end_hunk_6
begin_hunk_7_@zend_unset_property:zend_string_alloc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %2, i64 %3, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %3
  store i8 0, ptr %i.i, align 1, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !379
  tail call void %i.m(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef null) #32
  %i.n = load i32, ptr %i.e, align 4, !tbaa !58
  %i.o = and i32 %i.n, 64
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.a, label %zend_string_release_ex.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.p = load i32, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.d, align 8, !tbaa !61
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %zend_string_release_ex.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_efree(ptr noundef nonnull %i.d) #32
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_bool(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %5 = alloca %struct._zval_struct, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %.not = icmp eq i64 %4, 0
  %i.a = select i1 %.not, i32 2, i32 3
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.a, ptr %i.b, align 8, !tbaa !58
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.d = and i64 %3, -8
  %i.e = add i64 %i.d, 32
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #35 ; 9 uses
  store i32 1, ptr %i.f, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 22, ptr %i.g, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %3, ptr %i.i, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  store i8 0, ptr %i.k, align 1, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %i.p = call ptr %i.o(ptr noundef %1, ptr noundef nonnull %i.f, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.q = load i32, ptr %i.g, align 4, !tbaa !58
  %i.r = and i32 %i.q, 64
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.s = load i32, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.f, align 8, !tbaa !61
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.f) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_long(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store i64 %4, ptr %5, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.c = and i64 %3, -8
  %i.d = add i64 %i.c, 32
  %i.e = tail call noalias ptr @_emalloc(i64 noundef %i.d) #35 ; 9 uses
  store i32 1, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 22, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %3
  store i8 0, ptr %i.j, align 1, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = call ptr %i.n(ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !58
  %i.q = and i32 %i.p, 64
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.r = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.e) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_double(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, double noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store double %4, ptr %5, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 5, ptr %i.a, align 8, !tbaa !58
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.c = and i64 %3, -8
  %i.d = add i64 %i.c, 32
  %i.e = tail call noalias ptr @_emalloc(i64 noundef %i.d) #35 ; 9 uses
  store i32 1, ptr %i.e, align 4, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 22, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !150
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %3
  store i8 0, ptr %i.j, align 1, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.o = call ptr %i.n(ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.p = load i32, ptr %i.f, align 4, !tbaa !58
  %i.q = and i32 %i.p, 64
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.r = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  call void @llvm.assume(i1 %i.s)
  %i.t = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.e) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_str(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
zend_string_alloc.exit.i:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %4, ptr %5, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %6 = shl i32 %i.b, 2
  %7 = and i32 %6, 256
  %8 = xor i32 %7, 262
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %8, ptr %i.c, align 8, !tbaa !58
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.e = and i64 %3, -8
  %i.f = add i64 %i.e, 32
  %i.g = tail call noalias ptr @_emalloc(i64 noundef %i.f) #35 ; 9 uses
  store i32 1, ptr %i.g, align 4, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 22, ptr %i.h, align 4, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %3, ptr %i.j, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %3
  store i8 0, ptr %i.l, align 1, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.q = call ptr %i.p(ptr noundef %1, ptr noundef nonnull %i.g, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.r = load i32, ptr %i.h, align 4, !tbaa !58
  %i.s = and i32 %i.r, 64
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.g, align 8, !tbaa !61
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.g) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit.i, %bb.a, %bb.b
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_string(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #33 ; 4 uses
  %i.b = and i64 %i.a, -8
  %i.c = add i64 %i.b, 32
  %i.d = tail call noalias ptr @_emalloc(i64 noundef %i.c) #35 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 22, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 1 %4, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1, !tbaa !58
  store ptr %i.d, ptr %5, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 262, ptr %i.j, align 8, !tbaa !58
  store i32 0, ptr %i.d, align 8, !tbaa !61
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.l = and i64 %3, -8
  %i.m = add i64 %i.l, 32
  %i.n = tail call noalias ptr @_emalloc(i64 noundef %i.m) #35 ; 9 uses
  store i32 1, ptr %i.n, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i32 22, ptr %i.o, align 4, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !150
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %3, ptr %i.q, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  store i8 0, ptr %i.s, align 1, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.x = call ptr %i.w(ptr noundef %1, ptr noundef nonnull %i.n, ptr noundef nonnull %5, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.y = load i32, ptr %i.o, align 4, !tbaa !58
  %i.z = and i32 %i.y, 64
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.aa = load i32, ptr %i.n, align 8, !tbaa !61  ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 0
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.n, align 8, !tbaa !61
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.n) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  store ptr %i.k, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_property_stringl(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #3 {
zend_string_alloc.exit:
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.a = and i64 %5, -8
  %i.b = add i64 %i.a, 32
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #35 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 22, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %5, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %4, i64 %5, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %5
  store i8 0, ptr %i.h, align 1, !tbaa !58
  store ptr %i.c, ptr %6, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 262, ptr %i.i, align 8, !tbaa !58
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  %i.k = and i64 %3, -8
  %i.l = add i64 %i.k, 32
  %i.m = tail call noalias ptr @_emalloc(i64 noundef %i.l) #35 ; 9 uses
  store i32 1, ptr %i.m, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store i32 22, ptr %i.n, align 4, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !150
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %3, ptr %i.p, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  store i8 0, ptr %i.r, align 1, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.w = call ptr %i.v(ptr noundef %1, ptr noundef nonnull %i.m, ptr noundef nonnull %6, ptr noundef null) #32, !inline_history !216 ; 0 uses
  %i.x = load i32, ptr %i.n, align 4, !tbaa !58
  %i.y = and i32 %i.x, 64
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.a, label %zend_update_property.exit

bb.a:                                             ; preds = %zend_string_alloc.exit
  %i.z = load i32, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.ab, ptr %i.m, align 8, !tbaa !61
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %zend_update_property.exit

bb.b:                                             ; preds = %bb.a
  call void @_efree(ptr noundef nonnull %i.m) #32
  br label %zend_update_property.exit

zend_update_property.exit:                        ; preds = %zend_string_alloc.exit, %bb.a, %bb.b
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 520), align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_update_static_property_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = and i32 %i.c, 4096
  %.not = icmp eq i32 %i.d, 0
  %.022.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.022.sroa.gep29 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @zend_update_class_constants(ptr noundef nonnull %0)
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.c, label %zend_assign_to_variable.exit, !prof !63

end_hunk_7
begin_hunk_8_@zend_get_object_type_case:bb.a

bb.g:                                             ; preds = %bb.e
  %i.i = select i1 %1, ptr @.str.138, ptr @.str.139
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ %i.h, %bb.f ], [ %i.i, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_is_iterable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58
  switch i8 %i.b, label %bb.c [
    i8 7, label %bb.d
    i8 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = load ptr, ptr @zend_ce_traversable, align 8, !tbaa !83
  %i.g = tail call zeroext i1 @zend_class_implements_interface(ptr noundef %i.e, ptr noundef %i.f) #32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_is_countable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58
  switch i8 %i.b, label %bb.d [
    i8 7, label %bb.e
    i8 8, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = load ptr, ptr @zend_ce_countable, align 8, !tbaa !83
  %i.k = tail call zeroext i1 @zend_class_implements_interface(ptr noundef %i.i, ptr noundef %i.j) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ %i.k, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_get_default_from_internal_arg_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct._zend_file_context, align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !384  ; 17 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  switch i64 %i.e, label %bb.i [
    i64 4, label %bb.c
    i64 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 1
  %i.g = icmp ne i32 %i.f, 1819047278
  %i.h = zext i1 %i.g to i32
  %.not47 = icmp eq i32 %i.h, 0
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !58
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 1
  %i.k = icmp ne i32 %i.j, 1702195828
  %i.l = zext i1 %i.k to i32
  %.not49 = icmp eq i32 %i.l, 0
  br i1 %.not49, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.m, align 8, !tbaa !58
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.d, align 1
  %i.o = xor i32 %i.n, 1936482662
  %i.p = getelementptr i8, ptr %i.d, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.r, 101
  %i.t = or i32 %i.o, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not51 = icmp eq i32 %i.v, 0
  br i1 %.not51, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.w, align 8, !tbaa !58
  br label %bb.ad

bb.i:                                             ; preds = %bb.b
  %i.x = icmp ugt i64 %i.e, 1
  br i1 %i.x, label %.thread, label %..split_crit_edge

..split_crit_edge:                                ; preds = %bb.i
  %.pre = load i8, ptr %i.d, align 1, !tbaa !58
  br label %.split

.thread:                                          ; preds = %bb.e, %bb.g, %bb.i
  %i.y = load i8, ptr %i.d, align 1, !tbaa !58    ; 7 uses
  switch i8 %i.y, label %bb.n [
    i8 39, label %bb.j
    i8 34, label %bb.j
  ]

bb.j:                                             ; preds = %.thread, %.thread
  %i.z = getelementptr i8, ptr %i.d, i64 %i.e
  %i.aa = getelementptr i8, ptr %i.z, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !58
  %i.ac = icmp eq i8 %i.ab, %i.y
  br i1 %i.ac, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.ae = add i64 %i.e, -2                        ; 6 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %try_parse_string.exit, label %.preheader.i

bb.l:                                             ; preds = %.preheader.i
  %i.ag = add nuw i64 %.01217.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.ae
  br i1 %exitcond.not.i, label %try_parse_string.exit.thread67, label %.preheader.i, !llvm.loop !382

.preheader.i:                                     ; preds = %bb.k, %bb.l
  %.01217.i = phi i64 [ %i.ag, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01217.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !58  ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 92
  %i.ak = icmp eq i8 %i.ai, %i.y
  %or.cond.i62 = or i1 %i.aj, %i.ak
  br i1 %or.cond.i62, label %.critedge57, label %bb.l

try_parse_string.exit.thread67:                   ; preds = %bb.l
  %i.al = and i64 %i.ae, -8
  %i.am = add i64 %i.al, 32
  %i.an = tail call noalias ptr @_emalloc(i64 noundef %i.am) #35 ; 6 uses
  store i32 1, ptr %i.an, align 4, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 22, ptr %i.ao, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !150
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ae, ptr %i.aq, align 8, !tbaa !102
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull readonly align 1 %i.ad, i64 range(i64 0, -2) %i.ae, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ae
  store i8 0, ptr %i.as, align 1, !tbaa !58
  br label %bb.m

try_parse_string.exit:                            ; preds = %bb.k
  %i.at = load ptr, ptr @zend_empty_string, align 8, !tbaa !81 ; 2 uses
  %.not54 = icmp eq ptr %i.at, null
  br i1 %.not54, label %.critedge57, label %bb.m

bb.m:                                             ; preds = %try_parse_string.exit.thread67, %try_parse_string.exit
  %.1.i70 = phi ptr [ %i.an, %try_parse_string.exit.thread67 ], [ %i.at, %try_parse_string.exit ] ; 2 uses
  store ptr %.1.i70, ptr %0, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %.1.i70, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %3 = shl i32 %i.av, 2
  %4 = and i32 %3, 256
  %5 = xor i32 %4, 262
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %5, ptr %i.aw, align 8, !tbaa !58
  br label %bb.ad

bb.n:                                             ; preds = %.thread, %bb.j
  %i.ax = icmp eq i64 %i.e, 2
  br i1 %i.ax, label %bb.r, label %.split

.split:                                           ; preds = %..split_crit_edge, %bb.n
  %i.ay = phi i8 [ %.pre, %..split_crit_edge ], [ %i.y, %bb.n ] ; 3 uses
  %i.az = icmp sgt i8 %i.ay, 57
  br i1 %i.az, label %.critedge57, label %bb.o, !prof !63

bb.o:                                             ; preds = %.split
  %i.ba = icmp slt i8 %i.ay, 48
  br i1 %i.ba, label %bb.p, label %_zend_handle_numeric_str.exit61

bb.p:                                             ; preds = %bb.o
  %.not.i59 = icmp eq i8 %i.ay, 45
  br i1 %.not.i59, label %bb.q, label %.critedge57

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !58
  %i.bd = add i8 %i.bc, -58
  %or.cond.i60 = icmp ult i8 %i.bd, -10
  br i1 %or.cond.i60, label %.critedge57, label %_zend_handle_numeric_str.exit61

bb.r:                                             ; preds = %bb.n
  %i.be = load i16, ptr %i.d, align 1
  %i.bf = icmp ne i16 %i.be, 23899
  %i.bg = zext i1 %i.bf to i32
  %.not53 = icmp eq i32 %i.bg, 0
  br i1 %.not53, label %bb.v, label %.split42

.split42:                                         ; preds = %bb.r
  %i.bh = icmp sgt i8 %i.y, 57
  br i1 %i.bh, label %.critedge57, label %bb.s, !prof !63

bb.s:                                             ; preds = %.split42
  %i.bi = icmp slt i8 %i.y, 48
  br i1 %i.bi, label %bb.t, label %.split73

bb.t:                                             ; preds = %bb.s
  %.not.i = icmp eq i8 %i.y, 45
  br i1 %.not.i, label %bb.u, label %.critedge57

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58
  %i.bl = add i8 %i.bk, -58
  %or.cond.i = icmp ult i8 %i.bl, -10
  br i1 %or.cond.i, label %.critedge57, label %.split73

.split73:                                         ; preds = %bb.u, %bb.s
  %i.bm = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.d, i64 noundef 2, ptr noundef nonnull %i.b) #32
  br i1 %i.bm, label %bb.w, label %.critedge57

bb.v:                                             ; preds = %bb.r
  store ptr @zend_empty_array, ptr %0, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bn, align 8, !tbaa !58
  br label %bb.ad

_zend_handle_numeric_str.exit61:                  ; preds = %bb.o, %bb.q
  %i.bo = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.d, i64 noundef %i.e, ptr noundef nonnull %i.b) #32
  br i1 %i.bo, label %bb.w, label %.critedge57

bb.w:                                             ; preds = %.split73, %_zend_handle_numeric_str.exit61
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !90
  store i64 %i.bp, ptr %0, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.bq, align 8, !tbaa !58
  br label %bb.ad

.critedge57:                                      ; preds = %.preheader.i, %bb.u, %bb.t, %.split42, %bb.p, %.split, %bb.q, %.split73, %try_parse_string.exit, %_zend_handle_numeric_str.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.br = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #33
  %i.bs = call ptr @zend_string_concat3(ptr noundef nonnull @.str.200, i64 noundef 6, ptr noundef nonnull %i.d, i64 noundef %i.br, ptr noundef nonnull @.str.201, i64 noundef 1) #32 ; 6 uses
  %i.bt = load ptr, ptr @zend_empty_string, align 8, !tbaa !81
  %i.bu = call ptr @zend_compile_string_to_ast(ptr noundef %i.bs, ptr noundef nonnull %i.a, ptr noundef %i.bt) #32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !58 ; 2 uses
  %i.bx = and i32 %i.bw, 64
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %bb.x, label %zend_string_release.exit.i

bb.x:                                             ; preds = %.critedge57
  %i.by = load i32, ptr %i.bs, align 4, !tbaa !61 ; 2 uses
  %i.bz = icmp ne i32 %i.by, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.bs, align 4, !tbaa !61
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.y, label %zend_string_release.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cc = and i32 %i.bw, 128
  %.not5.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not5.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.bs) #32
  br label %zend_string_release.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @_efree(ptr noundef nonnull %i.bs) #32
  br label %zend_string_release.exit.i

zend_string_release.exit.i:                       ; preds = %bb.aa, %bb.z, %bb.x, %.critedge57
  %.not.i63 = icmp eq ptr %i.bu, null
  br i1 %.not.i63, label %get_default_via_ast.exit, label %bb.ab

bb.ab:                                            ; preds = %zend_string_release.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 456), align 8, !tbaa !385
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !386 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !123
  store ptr %i.cg, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 456), align 8, !tbaa !385
  %i.ch = or i32 %i.cf, 320
  store i32 %i.ch, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !386
  call void @zend_file_context_begin(ptr noundef nonnull %2) #32
  call void @zend_const_expr_to_zval(ptr noundef %0, ptr noundef nonnull %i.cd, i1 noundef zeroext true) #32
  store ptr %i.ce, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 456), align 8, !tbaa !385
  store i32 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !386
  call void @zend_file_context_end(ptr noundef nonnull %2) #32
  call void @zend_ast_destroy(ptr noundef nonnull %i.bu) #32
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.i.i = phi ptr [ %i.ci, %bb.ab ], [ %i.ck, %bb.ac ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !127 ; 2 uses
  call void @_efree(ptr noundef %.0.i.i) #32
  %.not.i13.i = icmp eq ptr %i.ck, null
  br i1 %.not.i13.i, label %zend_arena_destroy.exit.i, label %bb.ac, !llvm.loop !383

zend_arena_destroy.exit.i:                        ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %get_default_via_ast.exit

get_default_via_ast.exit:                         ; preds = %zend_string_release.exit.i, %zend_arena_destroy.exit.i
  %.0.i64 = phi i32 [ 0, %zend_arena_destroy.exit.i ], [ -1, %zend_string_release.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.m, %get_default_via_ast.exit, %bb.w, %bb.v, %bb.h, %bb.f, %bb.d
  %.1 = phi i32 [ %.0.i64, %get_default_via_ast.exit ], [ 0, %bb.m ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.2 = phi i32 [ %.1, %bb.ad ], [ -1, %bb.a ]
  ret i32 %.2
}

declare zeroext i1 @_try_convert_to_string(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @instanceof_function_slow(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_type_to_string(ptr, i32) local_unnamed_addr #4

declare ptr @zend_active_function_ex(ptr noundef) local_unnamed_addr #4

declare void @zend_oob_double_to_long_error(double noundef) local_unnamed_addr #4

declare i64 @zend_dval_to_lval_slow(double noundef) local_unnamed_addr #4

declare void @zend_objects_store_del(ptr noundef) local_unnamed_addr #4

declare void @gc_possible_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #4

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #26

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @zend_string_hash_func(ptr noundef) local_unnamed_addr #4

declare ptr @zend_lazy_object_get_properties(ptr noundef) local_unnamed_addr #4

declare ptr @rebuild_object_properties_internal(ptr noundef) local_unnamed_addr #4

declare i32 @zend_hash_get_current_key_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @zend_string_equal_val(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @zend_hash_del_bucket(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @zend_hash_apply_with_argument(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

end_hunk_8
