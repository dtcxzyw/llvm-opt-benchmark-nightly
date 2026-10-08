Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/main?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@php_execute_script_ex:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr84, i64 24
  %i.af = call ptr @expand_filepath(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a) #26
  %.not44 = icmp eq ptr %i.af, null
  br i1 %.not44, label %.thread, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.f
  %i.ag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 4 uses
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 32
  %i.aj = call noalias ptr @_emalloc(i64 noundef %i.ai) #29 ; 7 uses
  store i32 1, ptr %i.aj, align 4, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 22, ptr %i.ak, align 4, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ag, ptr %i.am, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 16 %i.a, i64 %i.ag, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ag
  store i8 0, ptr %i.ao, align 1, !tbaa !19
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !88
  %i.ap = call ptr @zend_hash_add_empty_element(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @executor_globals, i64 360), ptr noundef nonnull %i.aj) #26 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f, %zend_string_alloc.exit, %bb.e, %zend_string_equals_cstr.exit.thread, %zend_string_equals_cstr.exit, %bb.d
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 168), align 8, !tbaa !226 ; 3 uses
  %.not45 = icmp eq ptr %i.aq, null
  br i1 %.not45, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %.not46 = icmp eq i8 %i.ar, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @zend_stream_init_filename(ptr noundef nonnull %2, ptr noundef nonnull %i.aq) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread
  %.0 = phi ptr [ %2, %bb.h ], [ null, %bb.g ], [ null, %.thread ] ; 3 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 176), align 8, !tbaa !227 ; 3 uses
  %.not47 = icmp eq ptr %i.as, null
  br i1 %.not47, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %.not48 = icmp eq i8 %i.at, 0
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @zend_stream_init_filename(ptr noundef nonnull %3, ptr noundef nonnull %i.as) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.034 = phi ptr [ %3, %bb.k ], [ null, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 56), align 8, !tbaa !93
  %.not49 = icmp eq i64 %i.au, -1
  br i1 %.not49, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call i64 @zend_ini_long(ptr noundef nonnull @.str.33, i64 noundef 18, i32 noundef 0) #26
  call void @zend_set_timeout(i64 noundef %i.av, i1 noundef zeroext false) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not50 = icmp eq ptr %.0, null                 ; 2 uses
  br i1 %.not50, label %.thread56, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = call i32 @zend_execute_script(i32 noundef 8, ptr noundef null, ptr noundef nonnull %.0) #26
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread56, label %.thread68

.thread68:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.az = icmp eq ptr %i.ay, %4
  call void @llvm.assume(i1 %i.az)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

.thread56:                                        ; preds = %bb.n, %bb.o
  %i.ba = call i32 @zend_execute_script(i32 noundef 8, ptr noundef %1, ptr noundef nonnull %0) #26
  %i.bb = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bc = icmp ne ptr %.034, null
  %or.cond3 = select i1 %i.bc, i1 %i.bb, i1 false
  br i1 %or.cond3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread56
  %i.bd = call i32 @zend_execute_script(i32 noundef 8, ptr noundef null, ptr noundef nonnull %.034) #26
  %i.be = icmp eq i32 %i.bd, 0
  br label %bb.q

.thread71:                                        ; preds = %bb.a
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.bg = icmp eq ptr %i.bf, %4
  call void @llvm.assume(i1 %i.bg)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.u

bb.q:                                             ; preds = %.thread56, %bb.p
  %.2.in = phi i1 [ %i.be, %bb.p ], [ %i.bb, %.thread56 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.bi = icmp eq ptr %i.bh, %4
  call void @llvm.assume(i1 %i.bi)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread68, %bb.q
  %i.bj = phi i1 [ false, %.thread68 ], [ %.2.in, %bb.q ]
  call void @zend_destroy_file_handle(ptr noundef nonnull %.0) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.366 = phi i1 [ %.2.in, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %.not52 = icmp eq ptr %.034, null
  br i1 %.not52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @zend_destroy_file_handle(ptr noundef nonnull %.034) #26
  br label %bb.u

bb.u:                                             ; preds = %.thread71, %bb.t, %bb.s
  %.36675 = phi i1 [ false, %.thread71 ], [ %.366, %bb.t ], [ %.366, %bb.s ]
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !116
  %.not53 = icmp eq ptr %i.bk, null
  br i1 %.not53, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.bm = call i32 @__sigsetjmp(ptr noundef nonnull %5, i32 noundef 0) #28
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !116
  %i.bp = call i32 @zend_exception_error(ptr noundef %i.bo, i32 noundef 1) #26 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.bl, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.bq = load i8, ptr %i.b, align 16, !tbaa !19
  %.not54 = icmp eq i8 %i.bq, 0
  br i1 %.not54, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = call i32 @chdir(ptr noundef nonnull %i.b) #26 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i1 %.36675
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @virtual_chdir_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) #9

declare ptr @expand_filepath(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @zend_hash_add_empty_element(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @zend_stream_init_filename(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @zend_ini_long(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare i32 @zend_execute_script(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @zend_destroy_file_handle(ptr noundef) local_unnamed_addr #0

declare i32 @zend_exception_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @php_execute_script(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @php_execute_script_ex(ptr noundef %0, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @php_execute_simple_script(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 5 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 448), align 8, !tbaa !121
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  store i8 0, ptr %i.a, align 16, !tbaa !19
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.c = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #28
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 490), align 2, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 432), align 8, !tbaa !123
  %i.h = and i32 %i.g, 1
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 4095) #26 ; 0 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = call i32 @virtual_chdir_file(ptr noundef nonnull %i.k, ptr noundef nonnull @chdir) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %3 = call i32 (i32, ptr, i32, ...) @zend_execute_scripts(i32 noundef 8, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %0) #26 ; 0 uses
  %.pre = load i8, ptr %i.a, align 16, !tbaa !19
  %i.m = icmp eq i8 %.pre, 0
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @chdir(ptr noundef nonnull %i.a) #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 448), align 8, !tbaa !121
  ret i32 %i.o
}

declare i32 @zend_execute_scripts(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @php_handle_aborted_connection() local_unnamed_addr #2 {
bb.a:
  store i16 1, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 288), align 8, !tbaa !90
  tail call void @php_output_set_status(i32 noundef 2) #26
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 290), align 2, !tbaa !228, !range !49, !noundef !50
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_zend_bailout(ptr noundef nonnull @.str.65, i32 noundef 2729) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @php_output_set_status(i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @php_handle_auth_data(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not55 = icmp eq ptr %0, null
  br i1 %.not55, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27 ; 4 uses
  %.not56 = icmp eq i64 %i.a, 0
  br i1 %.not56, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @zend_binary_strncasecmp(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull @.str.66, i64 noundef 6, i64 noundef 6) #26
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %zend_string_free.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.e = add i64 %i.a, -6
  %i.f = tail call ptr @php_base64_decode_ex(ptr noundef nonnull %i.d, i64 noundef range(i64 -5, -6) %i.e, i1 noundef zeroext false) #26 ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %zend_string_free.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 58) #27 ; 3 uses
  %.not37 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not37, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.g, i64 noundef %i.k) #26
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 96), align 8, !tbaa !229
  %char0 = load i8, ptr %i.i, align 1
  %.not38 = icmp eq i8 %char0, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noalias ptr @_estrdup(ptr noundef nonnull %i.i) #26
  store ptr %i.m, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 104), align 8, !tbaa !230
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19   ; 2 uses
  %i.p = and i32 %i.o, 64
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %zend_string_free.exit

bb.i:                                             ; preds = %bb.h
  %i.q = and i32 %i.o, 128
  %.not4.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.f) #26
  br label %zend_string_free.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_efree(ptr noundef nonnull %i.f) #26
  br label %zend_string_free.exit

zend_string_free.exit:                            ; preds = %bb.k, %bb.j, %bb.h
  br i1 %.not37, label %zend_string_free.exit.thread, label %.thread44

zend_string_free.exit.thread:                     ; preds = %bb.d, %bb.c, %zend_string_free.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 96), i8 0, i64 16, i1 false)
  %i.r = tail call i32 @zend_binary_strncasecmp(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef nonnull @.str.67, i64 noundef 7, i64 noundef 7) #26
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %.thread44

bb.l:                                             ; preds = %zend_string_free.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = tail call noalias ptr @_estrdup(ptr noundef nonnull %i.t) #26
  br label %.thread44

.sink.split:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 96), i8 0, i64 16, i1 false)
  br label %.thread44

.thread44:                                        ; preds = %zend_string_free.exit.thread, %.sink.split, %zend_string_free.exit, %bb.l
  %.sink = phi ptr [ %i.u, %bb.l ], [ null, %zend_string_free.exit ], [ null, %.sink.split ], [ null, %zend_string_free.exit.thread ]
  %.350 = phi i32 [ 0, %bb.l ], [ 0, %zend_string_free.exit ], [ -1, %.sink.split ], [ -1, %zend_string_free.exit.thread ]
  store ptr %.sink, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 112), align 8, !tbaa !231
  ret i32 %.350
}

declare i32 @zend_binary_strncasecmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @php_lint_script(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  %i.b = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #28
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @zend_compile_file, align 8, !tbaa !112
  %i.e = call ptr %i.d(ptr noundef %0, i32 noundef 2) #26 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @destroy_op_array(ptr noundef nonnull %i.e) #26
  call void @_efree(ptr noundef nonnull %i.e) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !116 ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @zend_exception_error(ptr noundef nonnull %i.f, i32 noundef 1) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %.0
}

declare void @destroy_op_array(ptr noundef) local_unnamed_addr #0

declare void @_smart_string_alloc(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

declare ptr @php_escape_html_entities_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #17

declare noalias ptr @_emalloc_48() local_unnamed_addr #0

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #17

declare i32 @_php_stream_stat(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @zend_throw_error_exception(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @zend_trace_to_string(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

declare zeroext i1 @zend_alloc_in_memory_limit_error_reporting() local_unnamed_addr #0

declare void @php_output_discard_all() local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #18

declare i32 @sapi_header_op(i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @zend_objects_store_mark_destructed(ptr noundef) local_unnamed_addr #0

declare void @shutdown_compiler() local_unnamed_addr #0

declare void @zend_init_compiler_data_structures() local_unnamed_addr #0
end_hunk_0
