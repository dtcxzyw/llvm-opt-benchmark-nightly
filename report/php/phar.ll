Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phar?download=true
inline.NumInlined: 32
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@phar_create_or_parse_filename:bb.a
  %8 = alloca %struct._zval_struct, align 8       ; 5 uses
  %9 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !110
  %.not94 = icmp eq ptr %6, null
  %spec.store.select = select i1 %.not94, ptr %i.a, ptr %6 ; 5 uses
  %i.c = tail call i32 @php_check_open_basedir(ptr noundef %0) #23
  %.not95 = icmp eq i32 %i.c, 0
  br i1 %.not95, label %bb.b, label %zend_string_release_ex.exit111

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_php_stream_open_wrapper_ex(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef null) #23 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !110  ; 7 uses
  %.not96 = icmp eq ptr %i.e, null
  br i1 %.not96, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not97 = icmp eq ptr %i.d, null
  br i1 %.not97, label %zend_string_release_ex.exit, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %.not97120 = icmp eq ptr %i.d, null
  br i1 %.not97120, label %bb.o, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.077122 = phi ptr [ %i.f, %.thread ], [ %0, %bb.c ]
  %.078121 = phi i64 [ %i.h, %.thread ], [ %1, %bb.c ]
  %i.i = call fastcc i32 @phar_open_from_fp(ptr noundef %i.d, ptr noundef %.077122, i64 noundef %.078121, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %spec.store.select, ptr noundef %7)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %spec.store.select, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 316 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4              ; 2 uses
  %i.n = and i16 %i.m, 128
  %i.o = icmp eq i16 %i.n, 0
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 192), align 8, !range !18
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = or i16 %i.m, 4
  store i16 %i.r, ptr %i.l, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !110  ; 5 uses
  %.not107 = icmp eq ptr %i.s, null
  br i1 %.not107, label %zend_string_release_ex.exit111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = and i32 %i.u, 64
  %.not.i110 = icmp eq i32 %i.v, 0
  br i1 %.not.i110, label %bb.i, label %zend_string_release_ex.exit111

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.s, align 4, !tbaa !77   ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  call void @llvm.assume(i1 %i.x)
  %i.y = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.y, ptr %i.s, align 4, !tbaa !77
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %zend_string_release_ex.exit111

bb.j:                                             ; preds = %bb.i
  call void @_efree(ptr noundef nonnull %i.s) #23
  br label %zend_string_release_ex.exit111

bb.k:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !110 ; 5 uses
  %.not106 = icmp eq ptr %i.aa, null
  br i1 %.not106, label %zend_string_release_ex.exit111, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = and i32 %i.ac, 64
  %.not.i108 = icmp eq i32 %i.ad, 0
  br i1 %.not.i108, label %bb.m, label %zend_string_release_ex.exit111

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !77 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !77
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %zend_string_release_ex.exit111

bb.n:                                             ; preds = %bb.m
  call void @_efree(ptr noundef nonnull %i.aa) #23
  br label %zend_string_release_ex.exit111

bb.o:                                             ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = and i32 %i.aj, 64
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.p, label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.am = icmp ne i32 %i.al, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.an, ptr %i.e, align 8, !tbaa !77
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %zend_string_release_ex.exit

bb.q:                                             ; preds = %bb.p
  call void @_efree(ptr noundef nonnull %i.e) #23
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.c
  %.077123127 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.o ], [ %i.f, %bb.p ], [ %i.f, %bb.q ] ; 3 uses
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 192), align 8, !tbaa !26, !range !18, !noundef !28
  %i.aq = trunc nuw i8 %i.ap to i1
  %.not = xor i1 %i.aq, true
  %or.cond3 = or i1 %4, %.not
  br i1 %or.cond3, label %bb.t, label %bb.r

bb.r:                                             ; preds = %zend_string_release_ex.exit
  %i.ar = and i32 %5, 8
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = icmp ne ptr %7, null
  %or.cond7 = and i1 %i.as, %i.at
  br i1 %or.cond7, label %bb.s, label %zend_string_release_ex.exit111

bb.s:                                             ; preds = %bb.r
  %i.au = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %7, i64 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %.077123127) #23 ; 0 uses
  br label %zend_string_release_ex.exit111

bb.t:                                             ; preds = %zend_string_release_ex.exit
  %i.av = call noalias dereferenceable_or_null(320) ptr @_ecalloc(i64 noundef 1, i64 noundef 320) #26 ; 6 uses
  store ptr %i.av, ptr %i.a, align 8, !tbaa !63
  %i.aw = call ptr @expand_filepath(ptr noundef %.077123127, ptr noundef null) #23 ; 5 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !74
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_efree(ptr noundef nonnull %i.av) #23
  br label %zend_string_release_ex.exit111

bb.v:                                             ; preds = %bb.t
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24 ; 6 uses
  %i.az = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.aw, i32 noundef 47) #24 ; 5 uses
  %.not99 = icmp eq ptr %i.az, null
  br i1 %.not99, label %zend_hash_str_add_ptr.exit117, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.bb = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = call ptr @memchr(ptr noundef nonnull %i.az, i32 noundef 46, i64 noundef %i.bd) #24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !111
  %i.bg = icmp eq ptr %i.be, %i.az
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bi = xor i64 %i.bc, -1
  %i.bj = add i64 %i.bi, %i.bb
  %i.bk = call ptr @memchr(ptr noundef nonnull %i.bh, i32 noundef 46, i64 noundef %i.bj) #24 ; 2 uses
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !111
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bl = phi ptr [ %i.bk, %bb.x ], [ %i.be, %bb.w ] ; 2 uses
  %.not100 = icmp eq ptr %i.bl, null
  br i1 %.not100, label %zend_hash_str_add_ptr.exit117, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bb, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !106
  br label %zend_hash_str_add_ptr.exit117

zend_hash_str_add_ptr.exit117:                    ; preds = %bb.v, %bb.z, %bb.y
  store ptr %i.av, ptr %spec.store.select, align 8, !tbaa !63
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !63  ; 18 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  call void @_zend_hash_init(ptr noundef nonnull %i.br, i32 noundef 152, ptr noundef nonnull @destroy_phar_manifest_entry, i1 noundef zeroext false) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 176
  call void @_zend_hash_init(ptr noundef nonnull %i.bs, i32 noundef 8, ptr noundef null, i1 noundef zeroext false) #23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 316 ; 6 uses
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = and i16 %i.bv, 256
  %i.bx = icmp ne i16 %i.bw, 0
  call void @_zend_hash_init(ptr noundef nonnull %i.bt, i32 noundef 8, ptr noundef null, i1 noundef zeroext %i.bx) #23
  %i.by = trunc i64 %i.ay to i32                  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !81
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  %i.cb = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.ca, i64 noundef 12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #23 ; 0 uses
  %.not101 = icmp eq ptr %2, null                 ; 2 uses
  %i.cc = zext i1 %.not101 to i16
  %i.cd = load i16, ptr %i.bu, align 4
  %i.ce = and i16 %i.cd, -14
  %i.cf = or disjoint i16 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 248
  store ptr null, ptr %i.cg, align 8, !tbaa !68
  %i.ch = or disjoint i16 %i.cf, 12
  store i16 %i.ch, ptr %i.bu, align 4
  call void @phar_request_initialize()
  %i.ci = load ptr, ptr %i.bq, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.bq, ptr %8, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 13, ptr %i.cj, align 8, !tbaa !29
  %i.ck = call ptr @zend_hash_str_add(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phar_globals, i64 56), ptr noundef %i.ci, i64 noundef %i.ay, ptr noundef nonnull %8) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %4, label %.thread132, label %bb.aa

.thread132:                                       ; preds = %zend_hash_str_add_ptr.exit117
  %i.cl = load i16, ptr %i.bu, align 4
  %i.cm = or i16 %i.cl, 192
  store i16 %i.cm, ptr %i.bu, align 4
  br label %zend_string_release_ex.exit111

bb.aa:                                            ; preds = %zend_hash_str_add_ptr.exit117
  br i1 %.not101, label %.thread136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = call ptr @zend_hash_str_find(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phar_globals, i64 120), ptr noundef nonnull %2, i64 noundef %3) #23 ; 2 uses
  %.not.i112 = icmp eq ptr %i.cn, null
  br i1 %.not.i112, label %zend_hash_str_find_ptr.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29, !nonnull !28, !noundef !28
  %i.cp = call i32 @phar_free_alias(ptr noundef nonnull %i.co, ptr noundef nonnull %2, i64 noundef %3) #23
  %.not103 = icmp eq i32 %i.cp, 0
  br i1 %.not103, label %zend_hash_str_find_ptr.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not105 = icmp eq ptr %7, null
  br i1 %.not105, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.cr = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %i.cq, ptr noundef nonnull %2) #23 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ad
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.ct = call i32 @zend_hash_str_del(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phar_globals, i64 56), ptr noundef %i.cs, i64 noundef %i.ay) #23 ; 0 uses
  store ptr null, ptr %spec.store.select, align 8, !tbaa !63
  br label %zend_string_release_ex.exit111

.thread136:                                       ; preds = %bb.aa
  %i.cu = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.cv = call noalias ptr @_estrndup(ptr noundef %i.cu, i64 noundef %i.ay) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !73
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i32 %i.by, ptr %i.cx, align 8, !tbaa !112
  br label %zend_string_release_ex.exit111

zend_hash_str_find_ptr.exit.thread:               ; preds = %bb.ab, %bb.ac
  %10 = load i16, ptr %i.bu, align 4
  %11 = and i16 %10, 256
  %.not104131 = icmp eq i16 %11, 0
  call void @llvm.assume(i1 %.not104131)
  %i.cy = call noalias ptr @_estrndup(ptr noundef nonnull %2, i64 noundef %3) #23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !73
  %i.da = trunc i64 %3 to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i32 %i.da, ptr %i.db, align 8, !tbaa !112
  %.not139 = icmp eq i64 %3, 0
  br i1 %.not139, label %zend_string_release_ex.exit111, label %bb.af

bb.af:                                            ; preds = %zend_hash_str_find_ptr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.bq, ptr %9, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 13, ptr %i.dc, align 8, !tbaa !29
  %i.dd = call ptr @zend_hash_str_add(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phar_globals, i64 120), ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %9) #23
  %.not.i113 = icmp eq ptr %i.dd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.not.i113, label %bb.ag, label %zend_string_release_ex.exit111

bb.ag:                                            ; preds = %bb.af
  %i.de = and i32 %5, 8
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = icmp ne ptr %7, null
  %or.cond9 = and i1 %i.df, %i.dg
  br i1 %or.cond9, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dh = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %7, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %.077123127, ptr noundef nonnull %2) #23 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.di = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.dj = call i32 @zend_hash_str_del(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phar_globals, i64 56), ptr noundef %i.di, i64 noundef %i.ay) #23 ; 0 uses
  store ptr null, ptr %spec.store.select, align 8, !tbaa !63
  br label %zend_string_release_ex.exit111

zend_string_release_ex.exit111:                   ; preds = %bb.af, %.thread136, %.thread132, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %zend_hash_str_find_ptr.exit.thread, %.critedge, %bb.r, %bb.s, %bb.k, %bb.g, %bb.a, %bb.ai, %bb.u
  %.1 = phi i32 [ -1, %bb.k ], [ -1, %bb.a ], [ 0, %bb.g ], [ -1, %bb.u ], [ -1, %bb.ai ], [ -1, %bb.r ], [ -1, %.critedge ], [ 0, %zend_hash_str_find_ptr.exit.thread ], [ 0, %bb.j ], [ -1, %bb.s ], [ 0, %.thread136 ], [ 0, %bb.h ], [ 0, %bb.i ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ 0, %.thread132 ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.1
}

declare i32 @php_check_open_basedir(ptr noundef) local_unnamed_addr #2

declare ptr @_php_stream_open_wrapper_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @phar_open_from_fp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  %8 = alloca %struct._zval_struct, align 8       ; 5 uses
  %9 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %10 = alloca %struct._phar_entry_info, align 8  ; 18 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 29 uses
  %i.d = alloca [8 x i8], align 4                 ; 8 uses
  %i.e = alloca [64 x i8], align 16               ; 5 uses
  %i.f = alloca [32 x i8], align 16               ; 5 uses
  %i.g = alloca [20 x i8], align 16               ; 5 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  %i.i = alloca [1043 x i8], align 16             ; 11 uses
  %11 = alloca %struct._zval_struct, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %.not = icmp eq ptr %6, null                    ; 55 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %6, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 @_php_stream_seek(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 0) #23
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @_php_stream_free(ptr noundef nonnull %0, i32 noundef 3) #23 ; 0 uses
  br i1 %.not, label %.thread218, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 0, ptr noundef nonnull @.str.140, ptr noundef %1) #23 ; 0 uses
  br label %.thread218

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1042
  store i8 0, ptr %i.n, align 2, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.i, i8 32, i64 19, i1 false)
  %i.o = tail call zeroext i1 @_php_stream_eof(ptr noundef nonnull %0) #23
  br i1 %i.o, label %.outer._crit_edge, label %.lr.ph294.lr.ph

.lr.ph294.lr.ph:                                  ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 18 ; 7 uses
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 95), align 1 ; 4 uses
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_toupper_map, i64 95), align 1 ; 2 uses
  %i.s = sext i8 %i.q to i32                      ; 2 uses
  %i.t = sext i8 %i.r to i32                      ; 2 uses
  %.not.i = icmp eq i8 %i.q, %i.r
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 59), align 1
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_toupper_map, i64 59), align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 1024
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 72), align 8
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 65), align 1
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 76), align 4 ; 2 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 84), align 4
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 67), align 1
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 79), align 1
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 77), align 1
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 80), align 16
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 73), align 1
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 69), align 1
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 82), align 2
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 40), align 8
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @zend_tolower_map, i64 41), align 1
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.lr.ph, %.outer.backedge
  %.0158.ph299 = phi ptr [ %0, %.lr.ph294.lr.ph ], [ %.0158.ph.be, %.outer.backedge ] ; 95 uses
  %.0165.ph298 = phi i32 [ 0, %.lr.ph294.lr.ph ], [ %.0165.ph.be, %.outer.backedge ] ; 2 uses
  %.0168.ph297 = phi i64 [ 0, %.lr.ph294.lr.ph ], [ %.0168293, %.outer.backedge ]
  %.0169.ph296 = phi i32 [ 3, %.lr.ph294.lr.ph ], [ %.0169.ph.be, %.outer.backedge ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph294, %zend_memnistr.exit.thread
  %.0168293 = phi i64 [ %.0168.ph297, %.lr.ph294 ], [ %i.acj, %zend_memnistr.exit.thread ] ; 3 uses
  %i.al = phi i1 [ true, %.lr.ph294 ], [ false, %zend_memnistr.exit.thread ]
  %i.am = call i64 @_php_stream_read(ptr noundef nonnull %.0158.ph299, ptr noundef nonnull %i.p, i64 noundef 1024) #23 ; 5 uses
  %i.an = icmp slt i64 %i.am, 18
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = call i32 @_php_stream_free(ptr noundef nonnull %.0158.ph299, i32 noundef 3) #23 ; 0 uses
  br i1 %.not, label %.thread218, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 0, ptr noundef nonnull @.str.141, ptr noundef %1) #23 ; 0 uses
  br label %.thread218

bb.j:                                             ; preds = %bb.g
  br i1 %i.al, label %bb.k, label %bb.at

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %i.p, align 1
  %i.ar = xor i16 %i.aq, -29921
  %i.as = getelementptr i8, ptr %i.p, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = xor i16 %i.au, 8
  %i.aw = or i16 %i.ar, %i.av
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not192 = icmp eq i32 %i.ay, 0
  br i1 %.not192, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 195), align 1, !tbaa !60, !range !18, !noundef !28
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = call i32 @_php_stream_free(ptr noundef nonnull %.0158.ph299, i32 noundef 3) #23 ; 0 uses
  br i1 %.not, label %.thread, label %.thread.sink.split

bb.n:                                             ; preds = %bb.l
  %i.bc = call ptr @_php_stream_fopen_tmpfile(i32 noundef 0) #23 ; 8 uses
  %.not193 = icmp eq ptr %i.bc, null
  br i1 %.not193, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = call i32 @_php_stream_free(ptr noundef nonnull %.0158.ph299, i32 noundef 3) #23 ; 0 uses
  br i1 %.not, label %.thread, label %.thread.sink.split

bb.p:                                             ; preds = %bb.n
  %i.be = call ptr @_zend_new_array_0() #23
  store ptr %i.be, ptr %11, align 8, !tbaa !29
  store i32 775, ptr %i.x, align 8, !tbaa !29
  call void @add_assoc_long_ex(ptr noundef nonnull %11, ptr noundef nonnull @.str.49, i64 noundef 6, i64 noundef 47) #23
  %i.bf = call i32 @_php_stream_seek(ptr noundef nonnull %.0158.ph299, i64 noundef 0, i32 noundef 0) #23 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0158.ph299, i64 96 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = trunc i16 %i.bh to i8
  %i.bj = and i8 %i.bi, 1
  %i.bk = call ptr @php_stream_filter_create(ptr noundef nonnull @.str.144, ptr noundef nonnull %11, i8 noundef zeroext %i.bj) #23 ; 2 uses
  %.not194.not = icmp eq ptr %i.bk, null          ; 2 uses
  br i1 %.not194.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @add_assoc_long_ex(ptr noundef nonnull %11, ptr noundef nonnull @.str.49, i64 noundef 6, i64 noundef 15) #23
  %i.bl = load i16, ptr %i.bg, align 8
  %i.bm = trunc i16 %i.bl to i8
  %i.bn = and i8 %i.bm, 1
  %i.bo = call ptr @php_stream_filter_create(ptr noundef nonnull @.str.144, ptr noundef nonnull %11, i8 noundef zeroext %i.bn) #23 ; 2 uses
  %i.bp = load ptr, ptr %11, align 8, !tbaa !29
  call void @zend_array_destroy(ptr noundef %i.bp) #23
  %.not195 = icmp eq ptr %i.bo, null
  br i1 %.not195, label %bb.r, label %bb.t

end_hunk_0
