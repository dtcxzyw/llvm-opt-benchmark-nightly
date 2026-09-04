Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/image?download=true
inline.NumInlined: 52
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@php_image_unregister_handler:bb.a
}

declare i32 @zend_hash_index_del(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @zend_parse_arg_long_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias ptr @_emalloc_8() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #5

declare zeroext i1 @zend_parse_arg_bool_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_php_stream_getc(ptr noundef) local_unnamed_addr #2

declare ptr @_php_stream_get_line(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @zend_argument_value_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_php_stream_open_wrapper_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_php_stream_memory_open(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_zend_new_array_0() local_unnamed_addr #2

declare i32 @zend_try_assign_typed_ref_arr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_safe_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @php_handle_jpeg(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [2 x i8], align 1                 ; 5 uses
  %i.g = alloca [2 x i8], align 1                 ; 5 uses
  %i.h = alloca [2 x i8], align 1                 ; 5 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %.outer

.outer:                                           ; preds = %bb.h, %bb.a
  %.035.ph = phi ptr [ %i.u, %bb.h ], [ null, %bb.a ] ; 9 uses
  %.not.i.ph = phi i1 [ true, %bb.h ], [ false, %bb.a ]
  %i.q = icmp eq ptr %.035.ph, null
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.not.i = phi i1 [ %.not.i.ph, %.outer ], [ true, %.backedge ]
  br i1 %.not.i, label %.preheader.i, label %.thread.i.preheader

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.012.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = call i32 @_php_stream_getc(ptr noundef nonnull %0) #11
  switch i32 %i.r, label %bb.c [
    i32 255, label %bb.d
    i32 -1, label %php_next_marker.exit.thread
  ]

bb.c:                                             ; preds = %.preheader.i
  %i.s = add i64 %.012.i, 1
  br label %.preheader.i, !llvm.loop !74

bb.d:                                             ; preds = %.preheader.i
  %.not18.i = icmp eq i64 %.012.i, 0
  br i1 %.not18.i, label %.thread.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.49, i64 noundef %.012.i) #11
  br label %.thread.i.preheader

.thread.i.preheader:                              ; preds = %bb.e, %bb.d, %bb.b
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.preheader, %.thread.i
  %i.t = call i32 @_php_stream_getc(ptr noundef nonnull %0) #11 ; 2 uses
  switch i32 %i.t, label %bb.r [
    i32 -1, label %php_next_marker.exit.thread
    i32 255, label %.thread.i
    i32 192, label %bb.f
    i32 193, label %bb.f
    i32 194, label %bb.f
    i32 195, label %bb.f
    i32 197, label %bb.f
    i32 198, label %bb.f
    i32 199, label %bb.f
    i32 201, label %bb.f
    i32 202, label %bb.f
    i32 203, label %bb.f
    i32 205, label %bb.f
    i32 206, label %bb.f
    i32 207, label %bb.f
    i32 224, label %bb.j
    i32 225, label %bb.j
    i32 226, label %bb.j
    i32 227, label %bb.j
    i32 228, label %bb.j
    i32 229, label %bb.j
    i32 230, label %bb.j
    i32 231, label %bb.j
    i32 232, label %bb.j
    i32 233, label %bb.j
    i32 234, label %bb.j
    i32 235, label %bb.j
    i32 236, label %bb.j
    i32 237, label %bb.j
    i32 238, label %bb.j
    i32 239, label %bb.j
    i32 218, label %php_next_marker.exit.thread
    i32 217, label %php_next_marker.exit.thread
  ]

bb.f:                                             ; preds = %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = call noalias dereferenceable_or_null(32) ptr @_ecalloc(i64 noundef 1, i64 noundef 32) #14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.v = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 2) #11
  %i.w = icmp ult i64 %i.v, 2
  %i.x = load i8, ptr %i.h, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = shl nuw i16 %i.y, 8
  %i.aa = load i8, ptr %i.m, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = or disjoint i16 %i.z, %i.ab
  %.0.i = select i1 %i.w, i16 0, i16 %i.ac        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  %i.ad = call i32 @_php_stream_getc(ptr noundef nonnull %0) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.af = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 2) #11
  %i.ag = icmp ult i64 %i.af, 2
  %i.ah = load i8, ptr %i.g, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = load i8, ptr %i.n, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  %i.an = select i1 %i.ag, i32 0, i32 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.ap = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 2) #11
  %i.aq = icmp ult i64 %i.ap, 2
  %i.ar = load i8, ptr %i.f, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = load i8, ptr %i.o, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  %i.ax = select i1 %i.aq, i32 0, i32 %i.aw
  store i32 %i.ax, ptr %i.u, align 8, !tbaa !38
  %i.ay = call i32 @_php_stream_getc(ptr noundef nonnull %0) #11
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !42
  %i.ba = icmp ult i16 %.0.i, 8
  %or.cond = select i1 %.not, i1 true, i1 %i.ba
  br i1 %or.cond, label %php_next_marker.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = zext i16 %.0.i to i64
  %i.bc = add nsw i64 %i.bb, -8
  %i.bd = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.bc, i32 noundef 1) #11
  %.not42 = icmp eq i32 %i.bd, 0
  br i1 %.not42, label %.outer, label %php_next_marker.exit.thread

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.be = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 2) #11
  %i.bf = icmp ult i64 %i.be, 2
  %i.bg = load i8, ptr %i.e, align 1
  %i.bh = zext i8 %i.bg to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = load i8, ptr %i.l, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = or disjoint i16 %i.bi, %i.bk
  %.0.i.i = select i1 %i.bf, i16 0, i16 %i.bl     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.bm = icmp ult i16 %.0.i.i, 2
  br i1 %i.bm, label %php_next_marker.exit.thread, label %php_skip_variable.exit

php_skip_variable.exit:                           ; preds = %bb.i
  %i.bn = zext i16 %.0.i.i to i64
  %i.bo = add nsw i64 %i.bn, -2
  %i.bp = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.bo, i32 noundef 1) #11 ; 0 uses
  br label %.backedge

bb.j:                                             ; preds = %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i, %.thread.i
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.bq = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2) #11
  %i.br = icmp ult i64 %i.bq, 2
  %i.bs = load i8, ptr %i.c, align 1
  %i.bt = zext i8 %i.bs to i16
  %i.bu = shl nuw i16 %i.bt, 8
  %i.bv = load i8, ptr %i.i, align 1
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bu, %i.bw
  %.0.i.i47 = select i1 %i.br, i16 0, i16 %i.bx   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.by = icmp ult i16 %.0.i.i47, 2
  br i1 %i.by, label %php_next_marker.exit.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = zext i16 %.0.i.i47 to i64
  %i.ca = add nsw i64 %i.bz, -2                   ; 6 uses
  %i.cb = call noalias ptr @_emalloc(i64 noundef %i.ca) #13 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.018.i.i = phi ptr [ %i.cb, %bb.l ], [ %i.ch, %bb.n ] ; 2 uses
  %.016.i.i = phi i64 [ 0, %bb.l ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cc = sub nsw i64 %i.ca, %.016.i.i
  %i.cd = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef %.018.i.i, i64 noundef %i.cc) #11 ; 3 uses
  %i.ce = add i64 %i.cd, %.016.i.i                ; 4 uses
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !83
  %i.cg = icmp uge i64 %i.cd, %i.cf
  %.not.i.i = icmp eq i64 %i.ce, %i.ca
  %or.cond.i.i = or i1 %i.cg, %.not.i.i
  br i1 %or.cond.i.i, label %bb.n, label %php_read_stream_all_chunks.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds i8, ptr %.018.i.i, i64 %i.cd
  %i.ci = icmp ult i64 %i.ce, %i.ca
  br i1 %i.ci, label %bb.m, label %php_read_stream_all_chunks.exit.i, !llvm.loop !75

php_read_stream_all_chunks.exit.i:                ; preds = %bb.n, %bb.m
  %.2.i.i = phi i64 [ 0, %bb.m ], [ %i.ce, %bb.n ]
  %.not.i48 = icmp eq i64 %.2.i.i, %i.ca
  br i1 %.not.i48, label %bb.o, label %php_read_APP.exit

bb.o:                                             ; preds = %php_read_stream_all_chunks.exit.i
  %i.cj = add i32 %i.t, -224
  %i.ck = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.d, i64 noundef 16, ptr noundef nonnull @.str.50, i32 noundef %i.cj) #11 ; 0 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !16
  %i.cm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  %i.cn = call ptr @zend_hash_str_find(ptr noundef %i.cl, ptr noundef nonnull %i.d, i64 noundef %i.cm) #11
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.p, label %php_read_APP.exit.thread61

bb.p:                                             ; preds = %bb.o
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #12
  call void @add_assoc_stringl_ex(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef %i.cp, ptr noundef %i.cb, i64 noundef range(i64 0, 65534) %i.ca) #11
  br label %php_read_APP.exit.thread61

php_read_APP.exit.thread61:                       ; preds = %bb.p, %bb.o
  call void @_efree(ptr noundef %i.cb) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.backedge

php_read_APP.exit:                                ; preds = %php_read_stream_all_chunks.exit.i
  call void @_efree(ptr noundef %i.cb) #11
  br label %php_next_marker.exit.thread.sink.split

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.cq = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #11
  %i.cr = icmp ult i64 %i.cq, 2
  %i.cs = load i8, ptr %i.b, align 1
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = load i8, ptr %i.k, align 1
  %i.cw = zext i8 %i.cv to i16
  %i.cx = or disjoint i16 %i.cu, %i.cw
  %.0.i.i50 = select i1 %i.cr, i16 0, i16 %i.cx   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.cy = icmp ult i16 %.0.i.i50, 2
  br i1 %i.cy, label %php_next_marker.exit.thread, label %php_skip_variable.exit52

php_skip_variable.exit52:                         ; preds = %bb.q
  %i.cz = zext i16 %.0.i.i50 to i64
  %i.da = add nsw i64 %i.cz, -2
  %i.db = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.da, i32 noundef 1) #11 ; 0 uses
  br label %.backedge

bb.r:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dc = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 2) #11
  %i.dd = icmp ult i64 %i.dc, 2
  %i.de = load i8, ptr %i.a, align 1
  %i.df = zext i8 %i.de to i16
  %i.dg = shl nuw i16 %i.df, 8
  %i.dh = load i8, ptr %i.p, align 1
  %i.di = zext i8 %i.dh to i16
  %i.dj = or disjoint i16 %i.dg, %i.di
  %.0.i.i53 = select i1 %i.dd, i16 0, i16 %i.dj   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dk = icmp ult i16 %.0.i.i53, 2
  br i1 %i.dk, label %php_next_marker.exit.thread, label %php_skip_variable.exit55

php_skip_variable.exit55:                         ; preds = %bb.r
  %i.dl = zext i16 %.0.i.i53 to i64
  %i.dm = add nsw i64 %i.dl, -2
  %i.dn = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.dm, i32 noundef 1) #11 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %php_skip_variable.exit55, %php_skip_variable.exit52, %php_read_APP.exit.thread61, %php_skip_variable.exit
  br label %bb.b

php_next_marker.exit.thread.sink.split:           ; preds = %bb.k, %php_read_APP.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %php_next_marker.exit.thread

php_next_marker.exit.thread:                      ; preds = %bb.r, %bb.q, %bb.i, %bb.h, %bb.g, %.preheader.i, %.thread.i, %.thread.i, %.thread.i, %php_next_marker.exit.thread.sink.split
  %.036 = phi ptr [ %.035.ph, %php_next_marker.exit.thread.sink.split ], [ %.035.ph, %.preheader.i ], [ %.035.ph, %.thread.i ], [ %.035.ph, %.thread.i ], [ %.035.ph, %.thread.i ], [ %.035.ph, %bb.i ], [ %.035.ph, %bb.r ], [ %.035.ph, %bb.q ], [ %i.u, %bb.h ], [ %i.u, %bb.g ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @php_handle_tiff(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #11
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %php_ifd_get32u.exit, label %bb.aa

php_ifd_get32u.exit:                              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %1, 0                   ; 7 uses
  %i.c = load i32, ptr %i.a, align 4
  %i.d = call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = load i32, ptr %i.a, align 4
  %.0.i.i = select i1 %.not.i.i, i32 %i.e, i32 %i.d
  %i.f = zext i32 %.0.i.i to i64
  %i.g = add nsw i64 %i.f, -8
  %i.h = call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef %i.g, i32 noundef 1) #11
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %php_ifd_get32u.exit
  %i.i = call noalias ptr @_emalloc_8() #11       ; 6 uses
  %i.j = call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef 2) #11
  %.not93 = icmp eq i64 %i.j, 2
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_efree(ptr noundef %i.i) #11
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  br label %php_ifd_get16u.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i16, ptr %i.i, align 1
  %i.s = zext i16 %i.r to i32
  br label %php_ifd_get16u.exit

php_ifd_get16u.exit:                              ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.s, %bb.f ] ; 3 uses
  %i.t = mul nuw nsw i32 %.0.i, 12
end_hunk_0
