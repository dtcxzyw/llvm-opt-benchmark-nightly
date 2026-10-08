Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/transports?download=true
inline.NumInlined: 2
begin_hunk_0_@_php_stream_xport_create:bb.a

php_stream_xport_connect.exit:                    ; preds = %bb.u, %bb.x
  %i.bj = phi ptr [ %i.be, %bb.x ], [ null, %bb.u ] ; 7 uses
  %.0.i136 = phi i32 [ %i.bi, %bb.x ], [ %i.bb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.bk = icmp eq i32 %.0.i136, -1
  br i1 %i.bk, label %bb.y, label %php_stream_xport_connect.exit._crit_edge

php_stream_xport_connect.exit._crit_edge:         ; preds = %php_stream_xport_connect.exit
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.ba

bb.y:                                             ; preds = %php_stream_xport_connect.exit
  %.not119 = icmp eq ptr %7, null
  br i1 %.not119, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.bj, ptr %7, align 8, !tbaa !20
  br label %.thread163

bb.aa:                                            ; preds = %bb.y
  %.not120 = icmp eq ptr %i.bj, null              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = select i1 %.not120, ptr @.str.5, ptr %i.bl
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.bm) #13
  br i1 %.not120, label %.thread163, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %i.bp = and i32 %i.bo, 64
  %.not.i132 = icmp eq i32 %i.bp, 0
  br i1 %.not.i132, label %bb.ac, label %.thread163

bb.ac:                                            ; preds = %bb.ab
  %i.bq = load i32, ptr %i.bj, align 4, !tbaa !16 ; 2 uses
  %i.br = icmp ne i32 %i.bq, 0
  call void @llvm.assume(i1 %i.br)
  %i.bs = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bj, align 4, !tbaa !16
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ad, label %.thread163

bb.ad:                                            ; preds = %bb.ac
  call void @_efree(ptr noundef nonnull %i.bj) #13
  br label %.thread163

bb.ae:                                            ; preds = %bb.s
  %i.bu = and i32 %3, 4
  %.not103 = icmp eq i32 %i.bu, 0
  br i1 %.not103, label %bb.ba, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %9, i8 0, i64 120, i1 false)
  store ptr %.084145, ptr %i.bv, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.085143, ptr %i.bw, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 4, ptr %i.bx, align 4
  %i.by = call i32 @_php_stream_set_option(ptr noundef nonnull %i.aq, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %9) #13
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %php_stream_xport_bind.exit, label %php_stream_xport_bind.exit.thread

php_stream_xport_bind.exit.thread:                ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ag

php_stream_xport_bind.exit:                       ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !41 ; 2 uses
  store ptr %i.cb, ptr %i.b, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.not104 = icmp eq i32 %i.cd, 0
  br i1 %.not104, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %php_stream_xport_bind.exit.thread, %php_stream_xport_bind.exit
  %i.ce = phi ptr [ null, %php_stream_xport_bind.exit.thread ], [ %i.cb, %php_stream_xport_bind.exit ] ; 7 uses
  %.not114 = icmp eq ptr %7, null
  br i1 %.not114, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ce, ptr %7, align 8, !tbaa !20
  br label %.thread163

bb.ai:                                            ; preds = %bb.ag
  %.not115 = icmp eq ptr %i.ce, null              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = select i1 %.not115, ptr @.str.5, ptr %i.cf
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.cg) #13
  br i1 %.not115, label %.thread163, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = and i32 %i.ci, 64
  %.not.i130 = icmp eq i32 %i.cj, 0
  br i1 %.not.i130, label %bb.ak, label %.thread163

bb.ak:                                            ; preds = %bb.aj
  %i.ck = load i32, ptr %i.ce, align 4, !tbaa !16 ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ce, align 4, !tbaa !16
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.al, label %.thread163

bb.al:                                            ; preds = %bb.ak
  call void @_efree(ptr noundef nonnull %i.ce) #13
  br label %.thread163

bb.am:                                            ; preds = %php_stream_xport_bind.exit
  %i.co = and i32 %3, 8
  %.not105 = icmp eq i32 %i.co, 0
  br i1 %.not105, label %bb.az, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !99 ; 2 uses
  %.not106 = icmp eq ptr %i.cr, null
  br i1 %.not106, label %.critedge127, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !101 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.critedge127, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = call ptr @php_stream_context_get_option(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13 ; 4 uses
  %.not109 = icmp eq ptr %i.cv, null
  br i1 %.not109, label %.critedge127, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !14
  %i.cy = icmp eq i8 %i.cx, 4
  br i1 %i.cy, label %bb.ar, label %bb.as, !prof !102

bb.ar:                                            ; preds = %bb.aq
  %i.cz = load i64, ptr %i.cv, align 8, !tbaa !14
  br label %zval_get_long.exit

bb.as:                                            ; preds = %bb.aq
  %i.da = call i64 @zval_get_long_func(ptr noundef nonnull %i.cv, i1 noundef zeroext false) #13
  br label %zval_get_long.exit

zval_get_long.exit:                               ; preds = %bb.ar, %bb.as
  %i.db = phi i64 [ %i.cz, %bb.ar ], [ %i.da, %bb.as ]
  %i.dc = trunc i64 %i.db to i32
  br label %.critedge127

.critedge127:                                     ; preds = %bb.an, %zval_get_long.exit, %bb.ap, %bb.ao
  %.0 = phi i32 [ %i.dc, %zval_get_long.exit ], [ 32, %bb.ap ], [ 32, %bb.ao ], [ 32, %bb.an ]
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.de = call i32 @php_stream_xport_listen(ptr noundef %i.dd, i32 noundef %.0, ptr noundef nonnull %i.b)
  %.not110 = icmp eq i32 %i.de, 0
  br i1 %.not110, label %bb.az, label %bb.at

bb.at:                                            ; preds = %.critedge127
  %.not111 = icmp eq ptr %7, null
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !20  ; 7 uses
  br i1 %.not111, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.df, ptr %7, align 8, !tbaa !20
  br label %.thread163

bb.av:                                            ; preds = %bb.at
  %.not112 = icmp eq ptr %i.df, null              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = select i1 %.not112, ptr @.str.5, ptr %i.dg
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.dh) #13
  br i1 %.not112, label %.thread163, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = and i32 %i.dj, 64
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %bb.ax, label %.thread163

bb.ax:                                            ; preds = %bb.aw
  %i.dl = load i32, ptr %i.df, align 4, !tbaa !16 ; 2 uses
  %i.dm = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %i.dn = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dn, ptr %i.df, align 4, !tbaa !16
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ay, label %.thread163

bb.ay:                                            ; preds = %bb.ax
  call void @_efree(ptr noundef nonnull %i.df) #13
  br label %.thread163

bb.az:                                            ; preds = %.critedge127, %bb.am
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 116 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !103
  %i.ds = or i32 %i.dr, 1024
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !103
  br label %bb.ba

bb.ba:                                            ; preds = %php_stream_xport_connect.exit._crit_edge, %bb.t, %bb.az, %bb.ae
  %.pre = phi ptr [ %.pre.pre, %php_stream_xport_connect.exit._crit_edge ], [ %i.aq, %bb.t ], [ %i.dp, %bb.az ], [ %i.aq, %bb.ae ]
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  %i.du = icmp eq ptr %i.dt, %12
  call void @llvm.assume(i1 %i.du)
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.critedge129

.thread163:                                       ; preds = %bb.au, %bb.av, %bb.ai, %bb.z, %bb.aa, %bb.ah, %bb.ab, %bb.ac, %bb.ad, %bb.aj, %bb.ak, %bb.al, %bb.aw, %bb.ax, %bb.ay
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  %i.dw = icmp eq ptr %i.dv, %12
  call void @llvm.assume(i1 %i.dw)
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %. = select i1 %.not, i32 3, i32 19
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.dy = call i32 @_php_stream_free(ptr noundef %i.dx, i32 noundef %.) #13 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %.critedge129

.critedge188:                                     ; preds = %bb.o
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  %i.ea = icmp eq ptr %i.dz, %12
  call void @llvm.assume(i1 %i.ea)
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %..c = select i1 %.not, i32 3, i32 19
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ec = call i32 @_php_stream_free(ptr noundef %i.eb, i32 noundef %..c) #13 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @_zend_bailout(ptr noundef nonnull @.str.10, i32 noundef 193) #16
  unreachable

.critedge129:                                     ; preds = %.thread163, %bb.c, %bb.n, %bb.ba, %bb.m, %bb.l
  %.083 = phi ptr [ null, %.thread163 ], [ null, %bb.l ], [ null, %bb.m ], [ %.pre, %bb.ba ], [ null, %bb.n ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.083
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @php_stream_from_persistent_id(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_php_stream_set_option(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @zend_strpprintf(i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @php_stream_context_set(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @__zend_strdup(ptr noundef) local_unnamed_addr #4

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @php_stream_xport_connect(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %struct._php_stream_xport_param, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %.not = icmp eq i32 %3, 0
  %i.a = select i1 %.not, i32 1, i32 4
  store i32 %i.a, ptr %7, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !40
  %.not15.not = icmp eq ptr %5, null              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.f = select i1 %.not15.not, i8 0, i8 4
  store i8 %i.f, ptr %i.e, align 4
  %i.g = call i32 @_php_stream_set_option(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %7) #13 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not15.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  store ptr %i.j, ptr %5, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not16 = icmp eq ptr %6, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 116
  %i.l = load i32, ptr %i.k, align 4, !tbaa !42
  store i32 %i.l, ptr %6, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %i.n, %bb.f ], [ %i.g, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @php_stream_xport_bind(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct._php_stream_xport_param, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !39
  %.not.not = icmp eq ptr %3, null                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = select i1 %.not.not, i8 0, i8 4
  store i8 %i.d, ptr %i.c, align 4
  %i.e = call i32 @_php_stream_set_option(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %4) #13 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  store ptr %i.h, ptr %3, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.0
}

declare ptr @php_stream_context_get_option(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @php_stream_xport_listen(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct._php_stream_xport_param, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %1, ptr %i.a, align 4, !tbaa !104
  %.not.not = icmp eq ptr %2, null                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = select i1 %.not.not, i8 0, i8 4
  store i8 %i.c, ptr %i.b, align 4
  %i.d = call i32 @_php_stream_set_option(ptr noundef %0, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %3) #13 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  store ptr %i.g, ptr %2, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i32 @php_stream_xport_accept(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %struct._php_stream_xport_param, align 8 ; 13 uses
end_hunk_0
