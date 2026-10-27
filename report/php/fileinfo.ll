Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/fileinfo?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@zif_finfo_set_flags
define hidden void @zif_finfo_set_flags(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !33
  %i.h = icmp eq i8 %i.g, 8
  %i.i = select i1 %i.h, ptr %i.c, ptr null
  %i.j = load ptr, ptr @finfo_class_entry, align 8, !tbaa !35
  %i.k = call i32 (i32, ptr, ptr, ...) @zend_parse_method_parameters(i32 noundef %i.e, ptr noundef %i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b, ptr noundef %i.j, ptr noundef nonnull %i.a) #8
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.13) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.a, align 8, !tbaa !48
  %i.r = trunc i64 %i.q to i32
  %i.s = call i32 @magic_setflags(ptr noundef nonnull %i.p, i32 noundef %i.r) #8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.t, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @zend_parse_method_parameters(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @magic_setflags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zif_finfo_file(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i8, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq i8 %i.i, 8
  %i.k = select i1 %i.j, ptr %i.e, ptr null
  %i.l = load ptr, ptr @finfo_class_entry, align 8, !tbaa !35
  %i.m = call i32 (i32, ptr, ptr, ...) @zend_parse_method_parameters(i32 noundef %i.g, ptr noundef %i.k, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 5 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.13) #8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f, !prof !74

bb.e:                                             ; preds = %bb.d
  call void @zend_argument_must_not_be_empty_error(i32 noundef 2) #8
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  %.not22 = icmp eq ptr %i.w, null
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call i32 @php_le_stream_context() #8
  %i.y = call ptr @zend_fetch_resource_ex(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.15, i32 noundef %i.x) #8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !79 ; 2 uses
  %.not23 = icmp eq ptr %i.z, null
  br i1 %.not23, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = call ptr @php_stream_context_alloc() #8 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @file_globals, i64 56), align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ab = phi ptr [ %i.y, %bb.g ], [ %i.aa, %bb.i ] ; 2 uses
  %.not24 = icmp eq ptr %i.ab, null
  br i1 %.not24, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j
  %i.ac = phi ptr [ %i.ab, %bb.j ], [ %i.z, %bb.h ]
  %i.ad = call i32 @magic_getflags(ptr noundef nonnull %i.r) #8
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  %.not25 = icmp eq i64 %i.ae, 0
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.af = trunc i64 %i.ae to i32
  %i.ag = call i32 @magic_setflags(ptr noundef nonnull %i.r, i32 noundef %i.af) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.ai = call fastcc ptr @php_fileinfo_from_path(ptr noundef nonnull %i.r, ptr noundef %i.ah, ptr noundef nonnull %i.ac) ; 3 uses
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !48
  %.not26 = icmp eq i64 %i.aj, 0
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = call i32 @magic_setflags(ptr noundef nonnull %i.r, i32 noundef %i.ad) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = icmp eq ptr %i.ai, null
  br i1 %i.al, label %bb.o, label %zend_string_alloc.exit, !prof !74

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.am, align 8, !tbaa !33
  br label %bb.p

zend_string_alloc.exit:                           ; preds = %bb.n
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #9 ; 4 uses
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 32
  %i.aq = call noalias ptr @_emalloc(i64 noundef %i.ap) #7 ; 6 uses
  store i32 1, ptr %i.aq, align 4, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 22, ptr %i.ar, align 4, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.an, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 1 %i.ai, i64 %i.an, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.an
  store i8 0, ptr %i.av, align 1, !tbaa !33
  store ptr %i.aq, ptr %1, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.aw, align 8, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o, %zend_string_alloc.exit, %bb.j, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @zend_argument_must_not_be_empty_error(i32 noundef) local_unnamed_addr #2

declare ptr @zend_fetch_resource_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @php_le_stream_context() local_unnamed_addr #2

declare ptr @php_stream_context_alloc() local_unnamed_addr #2

declare i32 @magic_getflags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @php_fileinfo_from_path(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct._php_stream_statbuf, align 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0), "nonnull"(ptr %1), "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = call ptr @php_stream_locate_url_wrapper(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.h, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_php_stream_open_wrapper_ex(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.63, i32 noundef 8, ptr noundef null, ptr noundef nonnull %2) #8 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @_php_stream_stat(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !112
  %i.j = and i32 %i.i, 16384
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @magic_stream(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g, !prof !74

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @magic_errno(ptr noundef nonnull %0) #8
  %i.n = call ptr @magic_error(ptr noundef nonnull %0) #8
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %i.m, ptr noundef %i.n) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ %i.k, %bb.e ], [ @.str.64, %bb.d ]
  %i.o = call i32 @_php_stream_free(ptr noundef nonnull %i.e, i32 noundef 3) #8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %bb.g ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_finfo_buffer(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store ptr null, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq i8 %i.i, 8
  %i.k = select i1 %i.j, ptr %i.e, ptr null
  %i.l = load ptr, ptr @finfo_class_entry, align 8, !tbaa !35
  %i.m = call i32 (i32, ptr, ptr, ...) @zend_parse_method_parameters(i32 noundef %i.g, ptr noundef %i.k, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a, ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.f, align 4, !tbaa !33   ; 2 uses
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.h, align 8, !tbaa !33
  %i.r = icmp eq i8 %i.q, 8
  %i.s = icmp eq i32 %i.o, 3
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.17) #8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !72
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.m, !prof !80

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 7 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.13) #8
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.y = call i32 @magic_getflags(ptr noundef nonnull %i.x) #8
  %i.z = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not23 = icmp eq i64 %i.z, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc i64 %i.z to i32
  %i.ab = call i32 @magic_setflags(ptr noundef nonnull %i.x, i32 noundef %i.aa) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ag = call ptr @magic_buffer(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ad, i64 noundef %i.af) #8 ; 3 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !48
  %.not24 = icmp eq i64 %i.ah, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call i32 @magic_setflags(ptr noundef nonnull %i.x, i32 noundef %i.y) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = icmp eq ptr %i.ag, null
  br i1 %i.aj, label %bb.l, label %zend_string_alloc.exit, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.ak = call i32 @magic_errno(ptr noundef nonnull %i.x) #8
  %i.al = call ptr @magic_error(ptr noundef nonnull %i.x) #8
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %i.ak, ptr noundef %i.al) #8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.am, align 8, !tbaa !33
  br label %bb.m

zend_string_alloc.exit:                           ; preds = %bb.k
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #9 ; 4 uses
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 32
  %i.aq = call noalias ptr @_emalloc(i64 noundef %i.ap) #7 ; 6 uses
  store i32 1, ptr %i.aq, align 4, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 22, ptr %i.ar, align 4, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %i.an, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 1 %i.ag, i64 %i.an, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.an
  store i8 0, ptr %i.av, align 1, !tbaa !33
  store ptr %i.aq, ptr %1, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.aw, align 8, !tbaa !33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %zend_string_alloc.exit, %bb.d, %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare ptr @magic_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @magic_errno(ptr noundef) local_unnamed_addr #2

declare ptr @magic_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zif_mime_content_type(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a) #8
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !33
  switch i8 %i.h, label %bb.h [
    i8 6, label %bb.c
    i8 9, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
end_hunk_0
