Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_variables?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@php_register_known_variable:bb.a
  store i32 %i.k, ptr %i.d, align 4, !tbaa !21
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %zend_string_release_ex.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef nonnull %i.d) #14
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_efree(ptr noundef) local_unnamed_addr #5

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_zend_new_array_0() local_unnamed_addr #5

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @zend_array_destroy(ptr noundef) local_unnamed_addr #5

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #5

declare ptr @zend_hash_index_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @php_std_post_handler(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.post_var_data, align 8      ; 13 uses
  %i.a = alloca [8192 x i8], align 16             ; 7 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 56), align 8, !tbaa !89 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %smart_str_free_ex.exit19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_php_stream_seek(ptr noundef nonnull %i.b, i64 noundef 0, i32 noundef 0) #14
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %smart_str_free_ex.exit19

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  %i.e = tail call zeroext i1 @_php_stream_eof(ptr noundef nonnull %i.b) #14
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.g = call i64 @_php_stream_read(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 8192) #14 ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %.thread21

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %2, align 8, !tbaa !90     ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = add i64 %i.k, %i.g                       ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !91
  %.not12.i = icmp ult i64 %i.l, %i.m
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ %i.g, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i) #14
  %.pre = load ptr, ptr %2, align 8, !tbaa !90    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.f, %bb.g
  %i.n = phi i64 [ %i.k, %bb.f ], [ %.pre25, %bb.g ]
  %i.o = phi ptr [ %i.i, %bb.f ], [ %.pre, %bb.g ]
  %.1.i = phi i64 [ %i.l, %bb.f ], [ %.0.i, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 1, -9223372036854775808) %i.g, i1 false)
  %i.r = load ptr, ptr %2, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.1.i, ptr %i.s, align 8, !tbaa !25
  %i.t = call fastcc i32 @add_post_vars(ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  %.not12 = icmp eq i32 %i.t, 0
  br i1 %.not12, label %bb.l, label %bb.h

bb.h:                                             ; preds = %smart_str_alloc.exit
  %i.u = load ptr, ptr %2, align 8, !tbaa !90     ; 5 uses
  %.not.i15 = icmp eq ptr %i.u, null
  br i1 %.not.i15, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !18
  %i.x = and i32 %i.w, 64
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr %i.u, align 4, !tbaa !21   ; 2 uses
  %i.z = icmp ne i32 %i.y, 0
  call void @llvm.assume(i1 %i.z)
  %i.aa = add i32 %i.y, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !21
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  call void @_efree(ptr noundef nonnull %i.u) #14
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %smart_str_free_ex.exit19

bb.l:                                             ; preds = %smart_str_alloc.exit
  %.not13 = icmp eq i64 %i.g, 8192
  br i1 %.not13, label %bb.m, label %.thread21

.thread21:                                        ; preds = %bb.d, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ac = call zeroext i1 @_php_stream_eof(ptr noundef nonnull %i.b) #14
  br i1 %i.ac, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.m, %bb.c, %.thread21
  %i.ad = load ptr, ptr %2, align 8, !tbaa !59
  %.not14 = icmp eq ptr %i.ad, null
  br i1 %.not14, label %smart_str_free_ex.exit19, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ae = call fastcc i32 @add_post_vars(ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) ; 0 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !90    ; 5 uses
  %.not.i16 = icmp eq ptr %i.af, null
  br i1 %.not.i16, label %smart_str_free_ex.exit19, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = and i32 %i.ah, 64
  %.not.i.i17 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i17, label %bb.p, label %smart_str_free_ex.exit19

bb.p:                                             ; preds = %bb.o
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !21 ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.al, ptr %i.af, align 4, !tbaa !21
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.q, label %smart_str_free_ex.exit19

bb.q:                                             ; preds = %bb.p
  call void @_efree(ptr noundef nonnull %i.af) #14
  br label %smart_str_free_ex.exit19

smart_str_free_ex.exit19:                         ; preds = %bb.n, %bb.q, %bb.p, %bb.o, %.thread, %bb.a, %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare i32 @_php_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare zeroext i1 @_php_stream_eof(ptr noundef) local_unnamed_addr #5

declare i64 @_php_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_post_vars(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) initializes((16, 32)) %1, i1 noundef zeroext %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 584), align 8, !tbaa !61, !range !62, !noundef !63
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 592), align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 536), align 8
  %i.g = select i1 %i.d, i64 %i.e, i64 %i.f       ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.r = phi ptr [ %i.bq, %bb.m ], [ %i.m, %bb.a ] ; 4 uses
  %i.s = phi ptr [ %i.bt, %bb.m ], [ %i.i, %bb.a ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %.not.i = icmp ult ptr %i.s, %i.r
  br i1 %.not.i, label %bb.c, label %add_post_var.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.o, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  %i.v = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = call ptr @memchr(ptr noundef %i.u, i32 noundef 38, i64 noundef %i.x) #15 ; 2 uses
  %.not47.i = icmp ne ptr %i.y, null              ; 2 uses
  %brmerge.i = or i1 %2, %.not47.i
  %.mux.i = select i1 %.not47.i, ptr %i.y, ptr %i.r ; 3 uses
  br i1 %brmerge.i, label %bb.d, label %add_post_var.exit

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %.mux.i to i64              ; 2 uses
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = call ptr @memchr(ptr noundef %i.s, i32 noundef 61, i64 noundef %i.ab) #15 ; 4 uses
  %.not48.i = icmp eq ptr %i.ac, null
  br i1 %.not48.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !94  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.z, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi ptr [ %i.ad, %bb.e ], [ %i.s, %bb.d ]
  %.041.i = phi ptr [ %i.ah, %bb.e ], [ @.str.6, %bb.d ]
  %.039.i = phi i64 [ %i.ag, %bb.e ], [ %i.ab, %bb.d ]
  %.0.i = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.al = call i64 @php_url_decode(ptr noundef %i.ak, i64 noundef %.039.i) #14 ; 0 uses
  %i.am = call noalias ptr @_estrndup(ptr noundef nonnull %.041.i, i64 noundef %.0.i) #14 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !17
  %.not49.i = icmp eq i64 %.0.i, 0
  br i1 %.not49.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = call i64 @php_url_decode(ptr noundef %i.am, i64 noundef %.0.i) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi i64 [ %i.an, %bb.g ], [ 0, %bb.f ]
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_module, i64 232), align 8, !tbaa !66
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.aq = call i32 %i.ao(i32 noundef 0, ptr noundef %i.ap, ptr noundef nonnull %i.a, i64 noundef %.1.i, ptr noundef nonnull %i.b) #14, !inline_history !92
  %.not50.i = icmp eq i32 %i.aq, 0
  br i1 %.not50.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !29  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.au = icmp ugt i64 %i.at, 1
  br i1 %i.au, label %zend_string_alloc.exit.i.i, label %bb.j

zend_string_alloc.exit.i.i:                       ; preds = %bb.i
  %i.av = and i64 %i.at, -8
  %i.aw = add i64 %i.av, 32
  %i.ax = call noalias ptr @_emalloc(i64 noundef %i.aw) #16 ; 6 uses
  store i32 1, ptr %i.ax, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 22, ptr %i.ay, align 4, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.at, ptr %i.ba, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr readonly align 1 %i.as, i64 %i.at, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  store i8 0, ptr %i.bc, align 1, !tbaa !18
  br label %php_register_variable_safe.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp eq i64 %i.at, 0
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @zend_empty_string, align 8, !tbaa !27
  br label %php_register_variable_safe.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !18
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27
  br label %php_register_variable_safe.exit.i

php_register_variable_safe.exit.i:                ; preds = %bb.l, %bb.k, %zend_string_alloc.exit.i.i
  %.0.i.i.i = phi ptr [ %i.ax, %zend_string_alloc.exit.i.i ], [ %i.be, %bb.k ], [ %i.bi, %bb.l ] ; 2 uses
  store ptr %.0.i.i.i, ptr %3, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = and i32 %i.bk, 64
  %.not.i.i = icmp eq i32 %i.bl, 0
  %i.bm = select i1 %.not.i.i, i32 262, i32 6
  store i32 %i.bm, ptr %i.p, align 8, !tbaa !18
  call void @php_register_variable_ex(ptr noundef readonly %i.ar, ptr noundef nonnull %3, ptr noundef readonly %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.m

add_post_var.exit:                                ; preds = %bb.c
  %i.bn = ptrtoint ptr %i.s to i64
  %i.bo = sub i64 %i.v, %i.bn
  store i64 %i.bo, ptr %i.o, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.o

bb.m:                                             ; preds = %bb.h, %php_register_variable_safe.exit.i
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @_efree(ptr noundef %i.bp) #14
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !95  ; 2 uses
  %i.br = icmp ne ptr %.mux.i, %i.bq
  %i.bs = zext i1 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.mux.i, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !94
  store i64 0, ptr %i.o, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !97
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !97
  %i.bw = icmp ugt i64 %i.bv, %i.g
  br i1 %i.bw, label %bb.n, label %bb.b, !llvm.loop !93

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.13, i64 noundef %i.g) #14
  br label %bb.q

add_post_var.exit.thread:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %add_post_var.exit, %add_post_var.exit.thread
  %i.bx = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.s
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = ptrtoint ptr %i.r to i64
  %i.ca = ptrtoint ptr %i.s to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !25
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 1 %i.s, i64 %i.cb, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %add_post_var.exit.thread, %bb.o, %bb.p, %bb.n
  %.0 = phi i32 [ -1, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %add_post_var.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @php_default_input_filter(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %4, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @php_default_treat_data(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 14 uses
  %4 = alloca %struct._zval_struct, align 8       ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %switch = icmp ult i32 %0, 3
  br i1 %switch, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_zend_new_array_0() #14   ; 4 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !18
  store i32 775, ptr %i.d, align 8, !tbaa !18
  switch i32 %0, label %default.unreachable133 [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 361), align 1, !tbaa !18
  %.not.i96 = icmp eq i8 %i.f, 0
  br i1 %.not.i96, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 352), align 8, !tbaa !18 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !21
  %.not3.i97 = icmp eq i32 %i.j, 0
  br i1 %.not3.i97, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 352), align 8, !tbaa !18
  tail call void @rc_dtor_func(ptr noundef %i.k) #14
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 352), align 8, !tbaa !18
  store i32 775, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 360), align 8, !tbaa !18
  call void @sapi_handle_post(ptr noundef nonnull %4) #14
  br label %.thread102

bb.f:                                             ; preds = %bb.b
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 377), align 1, !tbaa !18
  %.not.i93 = icmp eq i8 %i.l, 0
  br i1 %.not.i93, label %.thread100, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 368), align 8, !tbaa !18 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !21
  %.not3.i94 = icmp eq i32 %i.p, 0
  br i1 %.not3.i94, label %bb.h, label %.thread100

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 368), align 8, !tbaa !18
  tail call void @rc_dtor_func(ptr noundef %i.q) #14
  br label %.thread100

.thread100:                                       ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 368), align 8, !tbaa !18
  store i32 775, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 376), align 8, !tbaa !18
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8, !tbaa !67 ; 3 uses
  %.not83 = icmp eq ptr %i.r, null
  br i1 %.not83, label %.thread102, label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.s = load i8, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 393), align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %.thread101, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 384), align 8, !tbaa !18 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !21
  %.not3.i = icmp eq i32 %i.w, 0
  br i1 %.not3.i, label %bb.k, label %.thread101

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 384), align 8, !tbaa !18
  tail call void @rc_dtor_func(ptr noundef %i.x) #14
  br label %.thread101

.thread101:                                       ; preds = %bb.k, %bb.j, %bb.i
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 384), align 8, !tbaa !18
  store i32 775, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 392), align 8, !tbaa !18
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 24), align 8, !tbaa !99 ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread102, label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %2, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  store ptr %i.z, ptr %4, align 8, !tbaa !18
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !18
  %cond = icmp eq i32 %0, 3
  br i1 %cond, label %bb.o, label %.thread102

bb.m:                                             ; preds = %.thread100
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !18
  %.not84 = icmp eq i8 %i.ac, 0
  br i1 %.not84, label %.thread102, label %.sink.split

bb.n:                                             ; preds = %.thread101
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !18
  %.not82 = icmp eq i8 %i.ad, 0
  br i1 %.not82, label %.thread102, label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.m
  %.sink = phi ptr [ %i.r, %bb.m ], [ %i.y, %bb.n ]
  %i.ae = tail call noalias ptr @_estrdup(ptr noundef nonnull %.sink) #14
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l
  %.0 = phi ptr [ %1, %bb.l ], [ %i.ae, %.sink.split ] ; 3 uses
  %.not85 = icmp eq ptr %.0, null
  br i1 %.not85, label %.thread102, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = icmp eq i32 %0, 2                       ; 4 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 216), align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.070 = select i1 %i.af, ptr @.str.4, ptr %i.ah ; 2 uses
  %i.ai = call ptr @strtok_r(ptr noundef nonnull %.0, ptr noundef nonnull %.070, ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not86118 = icmp eq ptr %i.ai, null
  br i1 %.not86118, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ae
  %.069120 = phi ptr [ %i.ai, %.lr.ph ], [ %i.cl, %bb.ae ] ; 3 uses
  %.072119 = phi i64 [ 0, %.lr.ph ], [ %.173, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.ak = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.069120, i32 noundef 61) #15 ; 5 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !17
  br i1 %i.af, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.q
  %i.al = tail call ptr @__ctype_b_loc() #17
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader
  %.1 = phi ptr [ %i.as, %bb.r ], [ %.069120, %.preheader ] ; 4 uses
  %i.an = load i8, ptr %.1, align 1, !tbaa !18    ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !44
end_hunk_0
