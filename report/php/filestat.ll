Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/filestat?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@fopen
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

declare void @realpath_cache_del(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @realpath_cache_clean() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zif_clearstatcache(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i8 0, ptr %i.b, align 1, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39   ; 3 uses
  %i.e = icmp ugt i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 2) #14
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.critedge, label %bb.d, !prof !65

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !39
  switch i8 %i.h, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %zend_parse_arg_bool_ex.exit.thread
    i8 2, label %zend_parse_arg_bool_ex.exit.thread.fold.split
  ], !prof !55

zend_parse_arg_bool_ex.exit.thread.fold.split:    ; preds = %bb.d
  br label %zend_parse_arg_bool_ex.exit.thread

zend_parse_arg_bool_ex.exit.thread:               ; preds = %bb.d, %zend_parse_arg_bool_ex.exit.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.d ], [ 0, %zend_parse_arg_bool_ex.exit.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !75
  br label %bb.e

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 1) #14
  br i1 %i.j, label %bb.e, label %bb.k, !prof !57

bb.e:                                             ; preds = %zend_parse_arg_bool_ex.exit.thread, %zend_parse_arg_bool_ex.exit
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.f, label %.critedge, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !39
  %i.n = icmp eq i8 %i.m, 6
  br i1 %i.n, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !43

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !44
  br label %bb.g

zend_parse_arg_str_ex.exit:                       ; preds = %bb.f
  %i.p = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 2) #14
  br i1 %i.p, label %thread-pre-split, label %bb.i

thread-pre-split:                                 ; preds = %zend_parse_arg_str_ex.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %zend_parse_arg_str_ex.exit.thread
  %i.q = phi ptr [ %.pr, %thread-pre-split ], [ %i.o, %zend_parse_arg_str_ex.exit.thread ] ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #15
  %.not93 = icmp eq i64 %i.s, %i.u
  br i1 %.not93, label %bb.j, label %bb.i, !prof !43

bb.i:                                             ; preds = %zend_parse_arg_str_ex.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.v = phi i64 [ %.pre, %._crit_edge ], [ %i.s, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

bb.k:                                             ; preds = %bb.b, %zend_parse_arg_bool_ex.exit, %bb.i
  %.048.ph = phi i32 [ 2, %bb.i ], [ 1, %zend_parse_arg_bool_ex.exit ], [ 0, %bb.b ]
  %.047.ph = phi ptr [ %i.k, %bb.i ], [ %i.i, %zend_parse_arg_bool_ex.exit ], [ null, %bb.b ]
  %.046.ph = phi i32 [ 16, %bb.i ], [ 2, %zend_parse_arg_bool_ex.exit ], [ 0, %bb.b ]
  %.045.ph = phi i32 [ 9, %bb.i ], [ 9, %zend_parse_arg_bool_ex.exit ], [ 1, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.045.ph, i32 noundef %.048.ph, ptr noundef null, i32 noundef %.046.ph, ptr noundef %.047.ph) #14
  br label %bb.l

.critedge:                                        ; preds = %bb.j, %bb.c, %bb.e
  %.157 = phi ptr [ %i.w, %bb.j ], [ null, %bb.c ], [ null, %bb.e ]
  %.1 = phi i64 [ %i.v, %bb.j ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.x = load i8, ptr %i.b, align 1, !tbaa !75, !range !76, !noundef !77
  %i.y = trunc nuw i8 %i.x to i1
  call void @php_clear_stat_cache(i1 noundef zeroext %i.y, ptr noundef %.157, i64 noundef %.1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @php_stat(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._php_stream_statbuf, align 8 ; 20 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %4 = alloca %struct._zval_struct, align 8       ; 6 uses
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  %6 = alloca %struct._zval_struct, align 8       ; 6 uses
  %7 = alloca %struct._zval_struct, align 8       ; 6 uses
  %8 = alloca %struct._zval_struct, align 8       ; 6 uses
  %9 = alloca %struct._zval_struct, align 8       ; 6 uses
  %10 = alloca %struct._zval_struct, align 8      ; 6 uses
  %11 = alloca %struct._zval_struct, align 8      ; 6 uses
  %12 = alloca %struct._zval_struct, align 8      ; 6 uses
  %13 = alloca %struct._zval_struct, align 8      ; 6 uses
  %14 = alloca %struct._zval_struct, align 8      ; 6 uses
  %15 = alloca %struct._zval_struct, align 8      ; 6 uses
  %16 = alloca %struct._zval_struct, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp eq i32 %1, 11
  %i.d = add i32 %1, -9                           ; 2 uses
  %or.cond3 = icmp ult i32 %i.d, 3
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %.0.sroa.gep405 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.0.sroa.gep408 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.0.sroa.gep411 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.0.sroa.gep414 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.0.sroa.gep423 = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.0.sroa.gep426 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.0.sroa.gep429 = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %.0.sroa.gep432 = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %.0.sroa.gep435 = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %.0.sroa.gep438 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %.0.sroa.gep441 = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  switch i32 %1, label %.critedge [
    i32 15, label %bb.b
    i32 11, label %bb.b
    i32 10, label %bb.b
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #15
  %.not508 = icmp eq i64 %i.f, %i.h
  br i1 %.not508, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i32 %i.d, 5
  %i.j = and i32 %1, 14
  %i.k = icmp eq i32 %i.j, 14
  %or.cond19 = or i1 %i.i, %i.k
  br i1 %or.cond19, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9) #14
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.l, align 8, !tbaa !39
  br label %bb.cd

bb.f:                                             ; preds = %bb.c
  %i.m = call ptr @php_stream_locate_url_wrapper(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 3 uses
  %i.n = icmp eq ptr %i.m, @php_plain_files_wrapper
  br i1 %i.n, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.p = call i32 @php_check_open_basedir(ptr noundef %i.o) #14
  %.not374 = icmp eq i32 %i.p, 0
  br i1 %.not374, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.q, align 8, !tbaa !39
  br label %bb.cd

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.s = call fastcc zeroext i1 @php_is_stream_path(ptr noundef %i.r)
  br i1 %i.s, label %bb.j, label %.critedge391

bb.j:                                             ; preds = %bb.i
  %i.t = call ptr @expand_filepath(ptr noundef %i.r, ptr noundef nonnull %i.b) #14
  %i.u = icmp eq ptr %i.t, null
  %.pre = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %i.u, ptr %.pre, ptr %i.b, !prof !43
  br label %.critedge391

.critedge391:                                     ; preds = %bb.j, %bb.i
  %.0357 = phi ptr [ %spec.select, %bb.j ], [ %i.r, %bb.i ]
  %switch.tableidx = add i32 %1, -9               ; 3 uses
  %i.v = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 71, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.v, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.k

bb.k:                                             ; preds = %.critedge391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.k, %bb.a
  %.0353 = phi ptr [ %i.m, %bb.k ], [ %i.m, %bb.f ], [ null, %bb.a ] ; 6 uses
  %switch.tableidx555 = add i32 %1, -8            ; 2 uses
  %i.w = icmp ult i32 %switch.tableidx555, 11
  br i1 %i.w, label %switch.lookup556, label %bb.l

switch.lookup556:                                 ; preds = %.critedge
  %i.x = zext nneg i32 %switch.tableidx555 to i64
  %switch.gep557 = getelementptr inbounds nuw i8, ptr @switch.table.php_stat.1, i64 %i.x
  %switch.load558 = load i8, ptr %switch.gep557, align 1
  %switch.ext559 = zext i8 %switch.load558 to i32
  br label %bb.l

bb.l:                                             ; preds = %switch.lookup556, %.critedge
  %.0344 = phi i32 [ %switch.ext559, %switch.lookup556 ], [ 0, %.critedge ] ; 2 uses
  switch i32 %1, label %bb.n [
    i32 18, label %bb.m
    i32 15, label %bb.m
    i32 14, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.y = or disjoint i32 %.0344, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1 = phi i32 [ %i.y, %bb.m ], [ %.0344, %bb.l ] ; 2 uses
  %i.z = and i32 %.1, 1
  %.not375 = icmp eq i32 %i.z, 0                  ; 2 uses
  br i1 %.not375, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 544), align 8, !tbaa !41 ; 4 uses
  %i.ab = icmp eq ptr %0, %i.aa
  br i1 %i.ab, label %bb.av, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not377 = icmp eq ptr %i.aa, null
  br i1 %.not377, label %zend_string_equal_content.exit399.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %zend_string_equal_content.exit399, label %zend_string_equal_content.exit399.thread

zend_string_equal_content.exit399:                ; preds = %bb.q
  %i.ah = call zeroext i1 @zend_string_equal_val(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) #14
  br i1 %i.ah, label %bb.av, label %zend_string_equal_content.exit399.thread

bb.r:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 536), align 8, !tbaa !38 ; 4 uses
  %i.aj = icmp eq ptr %0, %i.ai
  br i1 %i.aj, label %bb.av, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not376 = icmp eq ptr %i.ai, null
  br i1 %.not376, label %zend_string_equal_content.exit399.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %zend_string_equal_content.exit, label %zend_string_equal_content.exit399.thread

zend_string_equal_content.exit:                   ; preds = %bb.t
  %i.ap = call zeroext i1 @zend_string_equal_val(ptr noundef nonnull %0, ptr noundef nonnull %i.ai) #14
  br i1 %i.ap, label %bb.av, label %zend_string_equal_content.exit399.thread

zend_string_equal_content.exit399.thread:         ; preds = %bb.t, %bb.q, %bb.s, %zend_string_equal_content.exit, %bb.p, %zend_string_equal_content.exit399
  %.not378 = icmp eq ptr %.0353, null
  br i1 %.not378, label %bb.u, label %.thread490

bb.u:                                             ; preds = %zend_string_equal_content.exit399.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %.not379 = icmp eq i64 %i.ar, 0
  br i1 %.not379, label %.thread489, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #15
  %.not509 = icmp eq i64 %i.ar, %i.at
  br i1 %.not509, label %bb.x, label %switch.early.test

switch.early.test:                                ; preds = %bb.v
  switch i32 %1, label %bb.w [
    i32 18, label %.thread489
    i32 15, label %.thread489
    i32 14, label %.thread489
    i32 13, label %.thread489
    i32 12, label %.thread489
    i32 11, label %.thread489
    i32 10, label %.thread489
    i32 9, label %.thread489
  ]

bb.w:                                             ; preds = %switch.early.test
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9) #14
  br label %.thread489

.thread489:                                       ; preds = %bb.u, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.au, align 8, !tbaa !39
  br label %bb.cd

bb.x:                                             ; preds = %bb.v
  %i.av = call ptr @php_stream_locate_url_wrapper(ptr noundef nonnull %i.as, ptr noundef nonnull %i.a, i32 noundef 0) #14 ; 4 uses
  %i.aw = icmp eq ptr %i.av, @php_plain_files_wrapper
  br i1 %i.aw, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.ay = call i32 @php_check_open_basedir(ptr noundef %i.ax) #14
  %.not380 = icmp eq i32 %i.ay, 0
  br i1 %.not380, label %.thread490, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.az, align 8, !tbaa !39
  br label %bb.cd

bb.aa:                                            ; preds = %bb.x
  %.not381 = icmp eq ptr %i.av, null
  br i1 %.not381, label %bb.ac, label %.thread490

.thread490:                                       ; preds = %bb.y, %zend_string_equal_content.exit399.thread, %bb.aa
  %.1354493 = phi ptr [ %i.av, %bb.aa ], [ %i.av, %bb.y ], [ %.0353, %zend_string_equal_content.exit399.thread ] ; 4 uses
  %i.ba = load ptr, ptr %.1354493, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80 ; 2 uses
  %.not382 = icmp eq ptr %i.bc, null
  br i1 %.not382, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.thread490
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.be = or i32 %.1, 4
  %i.bf = call i32 %i.bc(ptr noundef nonnull %.1354493, ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull %3, ptr noundef null) #14
  %.not383 = icmp eq i32 %i.bf, 0
  br i1 %.not383, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread490, %bb.aa
  switch i32 %1, label %bb.ad [
    i32 18, label %bb.af
    i32 15, label %bb.af
    i32 14, label %bb.af
    i32 13, label %bb.af
    i32 12, label %bb.af
    i32 11, label %bb.af
    i32 10, label %bb.af
    i32 9, label %bb.af
    i32 16, label %bb.ae
    i32 8, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ac, %bb.ad
  %i.bg = phi ptr [ @.str.11, %bb.ac ], [ @.str.12, %bb.ad ], [ @.str.11, %bb.ac ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !39
  br label %bb.cd

bb.ag:                                            ; preds = %bb.ab
  br i1 %.not375, label %.critedge395, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 544), align 8, !tbaa !41 ; 6 uses
  %.not384 = icmp eq ptr %i.bj, null
  br i1 %.not384, label %zend_string_release.exit398, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39 ; 2 uses
  %i.bm = and i32 %i.bl, 64
  %.not.i396 = icmp eq i32 %i.bm, 0
  br i1 %.not.i396, label %bb.aj, label %zend_string_release.exit398

bb.aj:                                            ; preds = %bb.ai
  %i.bn = load i32, ptr %i.bj, align 4, !tbaa !40 ; 2 uses
  %i.bo = icmp ne i32 %i.bn, 0
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bj, align 4, !tbaa !40
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ak, label %zend_string_release.exit398

bb.ak:                                            ; preds = %bb.aj
  %i.br = and i32 %i.bl, 128
  %.not5.i397 = icmp eq i32 %i.br, 0
  br i1 %.not5.i397, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.bj) #14
  br label %zend_string_release.exit398

bb.am:                                            ; preds = %bb.ak
  call void @_efree(ptr noundef nonnull %i.bj) #14
  br label %zend_string_release.exit398

zend_string_release.exit398:                      ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  %i.bu = and i32 %i.bt, 64
  %.not.i401 = icmp eq i32 %i.bu, 0
  br i1 %.not.i401, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %zend_string_release.exit398
  %i.bv = load i32, ptr %0, align 4, !tbaa !40
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %0, align 4, !tbaa !40
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %zend_string_release.exit398
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 544), align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 696), ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  %i.bx = load i32, ptr %.0.sroa.gep411, align 8, !tbaa !81
  %i.by = and i32 %i.bx, 61440
  %i.bz = icmp eq i32 %i.by, 40960
  br i1 %i.bz, label %bb.av, label %.critedge395

.critedge395:                                     ; preds = %bb.ag, %bb.ao
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 536), align 8, !tbaa !38 ; 6 uses
  %.not385 = icmp eq ptr %i.ca, null
  br i1 %.not385, label %zend_string_release.exit, label %bb.ap

bb.ap:                                            ; preds = %.critedge395
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !39 ; 2 uses
  %i.cd = and i32 %i.cc, 64
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.aq, label %zend_string_release.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ce = load i32, ptr %i.ca, align 4, !tbaa !40 ; 2 uses
  %i.cf = icmp ne i32 %i.ce, 0
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add i32 %i.ce, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ca, align 4, !tbaa !40
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ar, label %zend_string_release.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ci = and i32 %i.cc, 128
  %.not5.i = icmp eq i32 %i.ci, 0
  br i1 %.not5.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.ca) #14
  br label %zend_string_release.exit

bb.at:                                            ; preds = %bb.ar
  call void @_efree(ptr noundef nonnull %i.ca) #14
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %.critedge395
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39
  %i.cl = and i32 %i.ck, 64
  %.not.i400 = icmp eq i32 %i.cl, 0
  br i1 %.not.i400, label %bb.au, label %zend_string_copy.exit

bb.au:                                            ; preds = %zend_string_release.exit
  %i.cm = load i32, ptr %0, align 4, !tbaa !40
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %0, align 4, !tbaa !40
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %zend_string_release.exit, %bb.au
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 536), align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) getelementptr inbounds nuw (i8, ptr @basic_globals, i64 552), ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.r, %zend_string_equal_content.exit, %bb.o, %zend_string_equal_content.exit399, %zend_string_copy.exit, %bb.ao
  %.2355 = phi ptr [ %.0353, %bb.o ], [ %.1354493, %bb.ao ], [ %.1354493, %zend_string_copy.exit ], [ %.0353, %zend_string_equal_content.exit399 ], [ %.0353, %zend_string_equal_content.exit ], [ %.0353, %bb.r ]
  %.0.sroa.phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 724), %bb.o ], [ %.0.sroa.gep, %bb.ao ], [ %.0.sroa.gep, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 724), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 580), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 580), %bb.r ] ; 3 uses
  %.0.sroa.phi404 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 728), %bb.o ], [ %.0.sroa.gep405, %bb.ao ], [ %.0.sroa.gep405, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 728), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 584), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 584), %bb.r ] ; 4 uses
  %.0.sroa.phi407 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 704), %bb.o ], [ %.0.sroa.gep408, %bb.ao ], [ %.0.sroa.gep408, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 704), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 560), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 560), %bb.r ] ; 2 uses
  %.0.sroa.phi410 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 720), %bb.o ], [ %.0.sroa.gep411, %bb.ao ], [ %.0.sroa.gep411, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 720), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 576), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 576), %bb.r ] ; 9 uses
  %.0.sroa.phi413 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 712), %bb.o ], [ %.0.sroa.gep414, %bb.ao ], [ %.0.sroa.gep414, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 712), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 568), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 568), %bb.r ]
  %.0.sroa.phi422 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 736), %bb.o ], [ %.0.sroa.gep423, %bb.ao ], [ %.0.sroa.gep423, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 736), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 592), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 592), %bb.r ]
  %.0.sroa.phi425 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 744), %bb.o ], [ %.0.sroa.gep426, %bb.ao ], [ %.0.sroa.gep426, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 744), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 600), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 600), %bb.r ] ; 2 uses
  %.0.sroa.phi428 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 768), %bb.o ], [ %.0.sroa.gep429, %bb.ao ], [ %.0.sroa.gep429, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 768), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 624), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 624), %bb.r ] ; 2 uses
  %.0.sroa.phi431 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 784), %bb.o ], [ %.0.sroa.gep432, %bb.ao ], [ %.0.sroa.gep432, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 784), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 640), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 640), %bb.r ] ; 2 uses
  %.0.sroa.phi434 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 800), %bb.o ], [ %.0.sroa.gep435, %bb.ao ], [ %.0.sroa.gep435, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 800), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 656), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 656), %bb.r ] ; 2 uses
  %.0.sroa.phi437 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 752), %bb.o ], [ %.0.sroa.gep438, %bb.ao ], [ %.0.sroa.gep438, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 752), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 608), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 608), %bb.r ]
  %.0.sroa.phi440 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 760), %bb.o ], [ %.0.sroa.gep441, %bb.ao ], [ %.0.sroa.gep441, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 760), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 616), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 616), %bb.r ]
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 696), %bb.o ], [ %3, %bb.ao ], [ %3, %zend_string_copy.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 696), %zend_string_equal_content.exit399 ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 552), %zend_string_equal_content.exit ], [ getelementptr inbounds nuw (i8, ptr @basic_globals, i64 552), %bb.r ]
  br i1 %or.cond3, label %bb.aw, label %.thread504

bb.aw:                                            ; preds = %bb.av
  %i.co = load i32, ptr %.0.sroa.phi, align 4, !tbaa !82
  %i.cp = call i32 @getuid() #14
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %.thread495, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cr = load i32, ptr %.0.sroa.phi404, align 8, !tbaa !83
  %i.cs = call i32 @getgid() #14
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %.thread495, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cu = call i32 @getgroups(i32 noundef 0, ptr noundef null) #14 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %bb.az, label %.thread495

bb.az:                                            ; preds = %bb.ay
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = call noalias ptr @_safe_emalloc(i64 noundef %i.cw, i64 noundef 4, i64 noundef 0) #14 ; 3 uses
  %i.cy = call i32 @getgroups(i32 noundef %i.cu, ptr noundef %i.cx) #14 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.az
  %i.da = load i32, ptr %.0.sroa.phi404, align 8, !tbaa !83
  %wide.trip.count = zext nneg i32 %i.cy to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_0
