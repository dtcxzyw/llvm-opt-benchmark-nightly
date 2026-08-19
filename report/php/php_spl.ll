inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@spl_perform_autoload:bb.a
  %i.au = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72
  %i.av = call ptr @zend_hash_get_current_data_ex(ptr noundef %i.au, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not.i37 = icmp eq ptr %i.av, null
  br i1 %.not.i37, label %.thread, label %bb.c

.thread.sink.split:                               ; preds = %bb.h, %zend_string_addref.exit, %zend_hash_find_ptr.exit
  %.4.ph = phi ptr [ %i.ar, %zend_hash_find_ptr.exit ], [ null, %zend_string_addref.exit ], [ %i.ao, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %.thread

.thread:                                          ; preds = %bb.j, %.thread.sink.split, %bb.b
  %.4 = phi ptr [ null, %bb.b ], [ %.4.ph, %.thread.sink.split ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.thread
  %.5 = phi ptr [ %.4, %.thread ], [ null, %bb.a ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define hidden void @zif_spl_autoload_register(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %3 = alloca %struct._zend_fcall_info, align 8   ; 9 uses
  %4 = alloca %struct._zend_fcall_info_cache, align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct._Bucket, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 1, ptr %i.a, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8, !tbaa !93
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c, !prof !94

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 0, i32 noundef 3) #9
  br label %.thread111

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.critedge, label %bb.d, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !14
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !94

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !95
  store ptr null, ptr %4, align 8, !tbaa !97
  store ptr null, ptr %i.c, align 8, !tbaa !93
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 @zend_fcall_info_init(ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.c) #9
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.g, label %zend_parse_arg_func.exit, !prof !28

zend_parse_arg_func.exit:                         ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !93
  %.not78 = icmp eq ptr %i.m, null                ; 2 uses
  %. = select i1 %.not78, i32 13, i32 0
  %.85 = select i1 %.not78, i32 9, i32 12
  br label %.thread111

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @zend_release_fcall_info_cache(ptr noundef nonnull %4) #9
  %i.n = icmp eq i32 %i.e, 1
  br i1 %i.n, label %.critedge, label %bb.h, !prof !94

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !14
  switch i8 %i.p, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %zend_parse_arg_bool_ex.exit.thread
    i8 2, label %zend_parse_arg_bool_ex.exit.thread.fold.split
  ], !prof !99

zend_parse_arg_bool_ex.exit.thread.fold.split:    ; preds = %bb.h
  br label %zend_parse_arg_bool_ex.exit.thread

zend_parse_arg_bool_ex.exit.thread:               ; preds = %bb.h, %zend_parse_arg_bool_ex.exit.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.h ], [ 0, %zend_parse_arg_bool_ex.exit.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.a, align 1, !tbaa !12
  br label %bb.i

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, i32 noundef 2) #9
  br i1 %i.r, label %bb.i, label %.thread111, !prof !100

bb.i:                                             ; preds = %zend_parse_arg_bool_ex.exit.thread, %zend_parse_arg_bool_ex.exit
  %.not = icmp eq i32 %i.e, 3
  br i1 %.not, label %bb.j, label %.critedge, !prof !28

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i8, ptr %i.s, align 8, !tbaa !14
  switch i8 %i.t, label %zend_parse_arg_bool_ex.exit97 [
    i8 3, label %.split121.thread
    i8 2, label %.split121.thread.fold.split
  ], !prof !99

.split121.thread.fold.split:                      ; preds = %bb.j
  br label %.split121.thread

.split121.thread:                                 ; preds = %bb.j, %.split121.thread.fold.split
  %storemerge.i96 = phi i8 [ 1, %bb.j ], [ 0, %.split121.thread.fold.split ]
  store i8 %storemerge.i96, ptr %i.b, align 1, !tbaa !12
  br label %.critedge

zend_parse_arg_bool_ex.exit97:                    ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, i32 noundef 3) #9
  %cond.fr101 = freeze i1 %i.v
  br i1 %cond.fr101, label %.critedge, label %.thread111, !prof !100

.thread111:                                       ; preds = %zend_parse_arg_bool_ex.exit97, %zend_parse_arg_bool_ex.exit, %zend_parse_arg_func.exit, %bb.b
  %.073120 = phi i32 [ 1, %bb.b ], [ %.85, %zend_parse_arg_func.exit ], [ 9, %zend_parse_arg_bool_ex.exit ], [ 9, %zend_parse_arg_bool_ex.exit97 ]
  %.074119 = phi i32 [ 0, %bb.b ], [ %., %zend_parse_arg_func.exit ], [ 2, %zend_parse_arg_bool_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit97 ]
  %.075118 = phi ptr [ null, %bb.b ], [ %i.h, %zend_parse_arg_func.exit ], [ %i.q, %zend_parse_arg_bool_ex.exit ], [ %i.u, %zend_parse_arg_bool_ex.exit97 ]
  %.076117 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_func.exit ], [ 2, %zend_parse_arg_bool_ex.exit ], [ 3, %zend_parse_arg_bool_ex.exit97 ]
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !93
  call void @zend_wrong_parameter_error(i32 noundef %.073120, i32 noundef %.076117, ptr noundef %i.w, i32 noundef %.074119, ptr noundef %.075118) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.af

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit97, %.split121.thread, %bb.c, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.x = load i8, ptr %i.a, align 1, !tbaa !12, !range !18, !noundef !19
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.6) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.z = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72
  %.not80 = icmp eq ptr %i.z, null
  br i1 %.not80, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = call noalias ptr @_emalloc_56() #9      ; 2 uses
  store ptr %i.aa, ptr @spl_autoload_functions, align 8, !tbaa !72
  call void @_zend_hash_init(ptr noundef %i.aa, i32 noundef 1, ptr noundef nonnull @autoload_func_info_zval_dtor, i1 noundef zeroext false) #9
  %i.ab = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72
  call void @zend_hash_real_init_mixed(ptr noundef %i.ab) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = load i64, ptr %3, align 8, !tbaa !95
  %.not81 = icmp eq i64 %i.ac, 0
  br i1 %.not81, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not82 = icmp eq ptr %i.ad, null
  br i1 %.not82, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = call zeroext i1 @zend_is_callable_ex(ptr noundef nonnull %i.ae, ptr noundef null, i32 noundef 2, ptr noundef null, ptr noundef nonnull %4, ptr noundef null) #9 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !97
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ag = phi ptr [ %.pre, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !14
  %i.ai = icmp eq i8 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.al = icmp eq ptr %i.ak, @zif_spl_autoload_call
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 1, ptr noundef nonnull @.str.7) #9
  br label %bb.af

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.am = call noalias ptr @_emalloc_32() #9      ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !77
  %i.aq = load ptr, ptr %4, align 8, !tbaa !97    ; 4 uses
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !76
  %.not.i98 = icmp eq ptr %i.as, null
  br i1 %.not.i98, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load i32, ptr %i.as, align 4, !tbaa !35
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !14
  %i.ay = icmp eq i8 %i.ax, 8
  br i1 %i.ay, label %bb.w, label %autoload_func_info_from_fci.exit

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !35
  br label %autoload_func_info_from_fci.exit

autoload_func_info_from_fci.exit:                 ; preds = %bb.v, %bb.w
  %.sink.i = phi ptr [ %i.ba, %bb.w ], [ null, %bb.v ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %.sink.i, ptr %i.bd, align 8, !tbaa !103
  %i.be = icmp eq ptr %i.aq, getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1384)
  br i1 %i.be, label %bb.x, label %bb.aa, !prof !94

bb.x:                                             ; preds = %autoload_func_info_from_fci.exit
  %i.bf = call noalias ptr @_emalloc_256() #9     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bf, ptr noundef nonnull align 8 dereferenceable(256) %i.aq, i64 256, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr null, ptr %6, align 8, !tbaa !14
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !73
  br label %bb.aa

bb.y:                                             ; preds = %bb.n
  %i.bg = call noalias ptr @_emalloc_32() #9      ; 3 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !104
  %i.bi = call ptr @zend_hash_str_find(ptr noundef %i.bh, ptr noundef nonnull @.str.8, i64 noundef 12) #9 ; 2 uses
  %.not.i90 = icmp eq ptr %i.bi, null
  br i1 %.not.i90, label %zend_hash_str_find_ptr.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14, !nonnull !19, !noundef !19
  br label %zend_hash_str_find_ptr.exit

zend_hash_str_find_ptr.exit:                      ; preds = %bb.y, %bb.z
  %.0.i91 = phi ptr [ %i.bj, %bb.z ], [ null, %bb.y ]
  store ptr %.0.i91, ptr %i.bg, align 8, !tbaa !73
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %autoload_func_info_from_fci.exit, %bb.x, %zend_hash_str_find_ptr.exit
  %.0 = phi ptr [ %i.am, %bb.x ], [ %i.am, %autoload_func_info_from_fci.exit ], [ %i.bg, %zend_hash_str_find_ptr.exit ] ; 3 uses
  %i.bl = call fastcc ptr @spl_find_registered_function(ptr noundef nonnull %.0)
  %.not83 = icmp eq ptr %i.bl, null
  br i1 %.not83, label %zend_hash_next_index_insert_ptr.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @autoload_func_info_destroy(ptr noundef nonnull %.0)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.bm, align 8, !tbaa !14
  br label %bb.af

zend_hash_next_index_insert_ptr.exit:             ; preds = %bb.aa
  %i.bn = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %.0, ptr %2, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 13, ptr %i.bo, align 8, !tbaa !14
  %i.bp = call ptr @zend_hash_next_index_insert(ptr noundef %i.bn, ptr noundef nonnull %2) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.bq = load i8, ptr %i.b, align 1, !tbaa !12, !range !18, !noundef !19
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %zend_hash_next_index_insert_ptr.exit
  %i.bs = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !105
  %i.bv = icmp ugt i32 %i.bu, 1
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !106
  %i.ca = add i32 %i.bz, -1
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.cc, i64 32, i1 false), !tbaa.struct !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ce = shl nuw nsw i64 %i.cb, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bx, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !107
  call void @zend_hash_rehash(ptr noundef nonnull %i.bs) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %zend_hash_next_index_insert_ptr.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 3, ptr %i.cg, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %.thread111, %bb.ae, %bb.ab, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @autoload_func_info_zval_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  tail call fastcc void @autoload_func_info_destroy(ptr noundef %i.a)
  ret void
}

declare void @zend_hash_real_init_mixed(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @zend_is_callable_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_argument_value_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @_emalloc_256() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias ptr @_emalloc_32() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @spl_find_registered_function(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @spl_autoload_functions, align 8, !tbaa !72 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not2045 = icmp eq i32 %i.e, 0
  br i1 %.not2045, label %.thread39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread
  %.01546 = phi ptr [ %i.c, %.lr.ph ], [ %i.bf, %.thread ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01546, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.d, !prof !94

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.01546, align 8, !tbaa !14 ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = and i32 %i.q, 262144
  %.not.i = icmp eq i32 %i.r, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !73  ; 3 uses
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = and i32 %i.t, 262144
  %.not19.i = icmp eq i32 %i.u, 0
  br i1 %.not19.i, label %.critedge.i, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !103
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 3 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %.thread39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
end_hunk_0
