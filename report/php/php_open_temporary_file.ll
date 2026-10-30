Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_open_temporary_file?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@php_get_temporary_directory:bb.a
bb.g:                                             ; preds = %bb.b, %bb.f, %.thread
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str) #9 ; 5 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %.not36 = icmp eq i8 %i.m, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #8 ; 2 uses
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %i.r = icmp eq i8 %i.q, 47
  %. = select i1 %i.r, i64 %i.o, i64 %i.n
  %i.s = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.l, i64 noundef %.) #9
  br label %.sink.split

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.t = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.1) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %.thread.thread, %bb.e, %bb.i
  %.sink58 = phi ptr [ %i.s, %bb.i ], [ %i.i, %bb.e ], [ %i.k, %.thread.thread ], [ %i.t, %bb.j ] ; 2 uses
  store ptr %.sink58, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 520), align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.4 = phi ptr [ %i.a, %bb.a ], [ %.sink58, %.sink.split ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noalias ptr @_estrndup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @php_open_temporary_fd_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @.str.2, ptr %1 ; 2 uses
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25 = icmp eq ptr %0, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.m, %bb.n, %bb.c, %bb.d
  %i.c = tail call ptr @php_get_temporary_directory() ; 4 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %.not30 = icmp eq i8 %i.d, 0
  br i1 %.not30, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = and i32 %3, 1
  %.not31 = icmp eq i32 %i.e, 0
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call i32 @php_check_open_basedir(ptr noundef nonnull %i.c) #9
  %.not32 = icmp eq i32 %i.f, 0
  br i1 %.not32, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.g = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %i.c, ptr noundef nonnull %spec.store.select, ptr noundef %2)
  br label %bb.o

bb.j:                                             ; preds = %bb.d
  %i.h = and i32 %3, 4
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = tail call i32 @php_check_open_basedir(ptr noundef nonnull %0) #9
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %0, ptr noundef nonnull %spec.store.select, ptr noundef %2) ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.l = and i32 %3, 2
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.n, label %bb.e

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.3) #9
  br label %bb.e

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.e, %bb.f, %bb.h, %bb.i
  %.0 = phi i32 [ -1, %bb.k ], [ %i.g, %bb.i ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.f ], [ %i.j, %bb.l ]
  ret i32 %.0
}

declare i32 @php_check_open_basedir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @php_do_open_temporary_file(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 6 uses
  %3 = alloca %struct._cwd_state, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.d = load i8, ptr %0, align 1, !tbaa !17
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @getcwd(ptr noundef nonnull %i.c, i64 noundef 4096) #9
  %.not63 = icmp eq ptr %i.e, null
  br i1 %.not63, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 16, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call noalias ptr @_estrdup(ptr noundef nonnull %i.c) #9
  store ptr %i.f, ptr %3, align 8, !tbaa !30
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !31
  %i.i = call i32 @virtual_file_ex(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef null, i32 noundef 2) #9
  %.not64 = icmp eq i32 %i.i, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %3, align 8, !tbaa !30
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.k = call i32 @php_random_bytes(ptr noundef nonnull %i.b, i64 noundef 8, i1 noundef zeroext false) #9
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i64 @php_random_generate_fallback_seed() #9
  store i64 %i.m, ptr %i.b, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.o = add i64 %i.n, 14                         ; 3 uses
  %i.p = call noalias ptr @_emalloc(i64 noundef %i.o) #10 ; 6 uses
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr nonnull align 1 %1, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %i.t = add nsw i64 %i.q, 1
  %i.u = icmp slt i64 %i.t, %i.o
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.promoted = load i64, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.w = phi ptr [ %i.ac, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 3 uses
  %.065 = phi ptr [ %i.w, %.lr.ph ], [ %i.r, %.lr.ph.preheader ]
  %i.x = phi i64 [ %i.ab, %.lr.ph ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.y = and i64 %i.x, 31
  %i.z = getelementptr inbounds nuw i8, ptr @base32alphabet, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  store i8 %i.aa, ptr %.065, align 1, !tbaa !17
  %i.ab = lshr i64 %i.x, 5                        ; 2 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.s
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.0.lcssa = phi ptr [ %i.r, %bb.h ], [ %i.w, %.lr.ph ]
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !17
  %i.ae = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.af = load i64, ptr %i.h, align 8, !tbaa !31
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = icmp eq i8 %i.ai, 47
  %.str.5..str.6 = select i1 %i.aj, ptr @.str.5, ptr @.str.6
  %i.ak = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef %i.ae, ptr noundef nonnull %.str.5..str.6, ptr noundef %i.p) #9
  %i.al = icmp sgt i32 %i.ak, 4095
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  call void @_efree(ptr noundef %i.p) #9
  %i.am = load ptr, ptr %3, align 8, !tbaa !30
  br label %.sink.split

bb.j:                                             ; preds = %._crit_edge
  %i.an = call i32 @mkstemp(ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.ao = icmp ne i32 %i.an, -1
  %i.ap = icmp ne ptr %2, null
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %zend_string_alloc.exit, label %bb.k

zend_string_alloc.exit:                           ; preds = %bb.j
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #8 ; 4 uses
  %i.ar = and i64 %i.aq, -8
  %i.as = add i64 %i.ar, 32
  %i.at = call noalias ptr @_emalloc(i64 noundef %i.as) #10 ; 6 uses
  store i32 1, ptr %i.at, align 4, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 22, ptr %i.au, align 4, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.aq, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq
  store i8 0, ptr %i.ay, align 1, !tbaa !17
  store ptr %i.at, ptr %2, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %zend_string_alloc.exit, %bb.j
  %i.az = load ptr, ptr %3, align 8, !tbaa !30
  call void @_efree(ptr noundef %i.az) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.k
  %.sink = phi ptr [ %i.p, %bb.k ], [ %i.am, %bb.i ], [ %i.j, %bb.e ]
  %.058.ph = phi i32 [ %i.an, %bb.k ], [ -1, %bb.i ], [ -1, %bb.e ]
  call void @_efree(ptr noundef %.sink) #9
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.a
  %.058 = phi i32 [ -1, %bb.a ], [ %.058.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.058
}

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @php_open_temporary_fd(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str.2, ptr %1 ; 2 uses
  %.not24.i = icmp eq ptr %2, null
  br i1 %.not24.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25.i = icmp eq ptr %0, null
  br i1 %.not25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.i, %bb.d, %bb.c
  %i.c = tail call ptr @php_get_temporary_directory() ; 3 uses
  %.not29.i = icmp eq ptr %i.c, null
  br i1 %.not29.i, label %php_open_temporary_fd_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %.not30.i = icmp eq i8 %i.d, 0
  br i1 %.not30.i, label %php_open_temporary_fd_ex.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %i.c, ptr noundef nonnull %spec.store.select.i, ptr noundef %2)
  br label %php_open_temporary_fd_ex.exit

bb.h:                                             ; preds = %bb.d
  %i.f = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %0, ptr noundef nonnull %spec.store.select.i, ptr noundef %2) ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.i, label %php_open_temporary_fd_ex.exit

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.3) #9
  br label %bb.e

php_open_temporary_fd_ex.exit:                    ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ -1, %bb.f ], [ %i.e, %bb.g ], [ -1, %bb.e ], [ %i.f, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @php_open_temporary_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  %spec.store.select.i.i = select i1 %.not.i.i, ptr @.str.2, ptr %1 ; 2 uses
  %.not24.i.i = icmp eq ptr %2, null
  br i1 %.not24.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not25.i.i = icmp eq ptr %0, null
  br i1 %.not25.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.h, %bb.d, %bb.c
  %i.c = tail call ptr @php_get_temporary_directory() ; 3 uses
  %.not29.i.i = icmp eq ptr %i.c, null
  br i1 %.not29.i.i, label %php_open_temporary_fd.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17
  %.not30.i.i = icmp eq i8 %i.d, 0
  br i1 %.not30.i.i, label %php_open_temporary_fd.exit.thread, label %php_open_temporary_fd.exit

bb.g:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %0, ptr noundef nonnull %spec.store.select.i.i, ptr noundef %2) ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.h, label %php_open_temporary_fd.exit.thread10

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.3) #9
  br label %bb.e

php_open_temporary_fd.exit:                       ; preds = %bb.f
  %i.g = tail call fastcc i32 @php_do_open_temporary_file(ptr noundef %i.c, ptr noundef nonnull %spec.store.select.i.i, ptr noundef %2) ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %php_open_temporary_fd.exit.thread, label %php_open_temporary_fd.exit.thread10

php_open_temporary_fd.exit.thread10:              ; preds = %bb.g, %php_open_temporary_fd.exit
  %.0.i.i12 = phi i32 [ %i.g, %php_open_temporary_fd.exit ], [ %i.e, %bb.g ] ; 2 uses
  %i.i = tail call noalias ptr @fdopen(i32 noundef %.0.i.i12, ptr noundef nonnull @.str.4) #9 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %php_open_temporary_fd.exit.thread

bb.i:                                             ; preds = %php_open_temporary_fd.exit.thread10
  %i.k = tail call i32 @close(i32 noundef %.0.i.i12) #9 ; 0 uses
  br label %php_open_temporary_fd.exit.thread

php_open_temporary_fd.exit.thread:                ; preds = %bb.e, %bb.f, %php_open_temporary_fd.exit.thread10, %bb.i, %php_open_temporary_fd.exit
  %.0 = phi ptr [ null, %php_open_temporary_fd.exit ], [ null, %bb.i ], [ %i.i, %php_open_temporary_fd.exit.thread10 ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @virtual_file_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_efree(ptr noundef) local_unnamed_addr #3

declare i64 @php_random_generate_fallback_seed() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #7

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @mkstemp(ptr noundef) local_unnamed_addr #3

declare i32 @php_random_bytes(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

end_hunk_0
