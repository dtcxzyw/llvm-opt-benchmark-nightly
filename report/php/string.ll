Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@php_trim:bb.a
switch.early.test122.i:                           ; preds = %bb.y
  switch i8 %.fr12, label %.thread8 [
    i8 32, label %bb.z
    i8 11, label %bb.z
    i8 10, label %bb.z
    i8 0, label %bb.z
  ]

bb.z:                                             ; preds = %switch.early.test122.i, %switch.early.test122.i, %switch.early.test122.i, %switch.early.test122.i, %bb.y
  %.not111.i = icmp eq ptr %.6.i, %i.bp
  br i1 %.not111.i, label %.thread8, label %.lr.ph40

..thread8.loopexit81_crit_edge:                   ; preds = %.lr.ph92
  br label %.thread8, !llvm.loop !4

..thread8.loopexit83_crit_edge:                   ; preds = %.lr.ph88
  br label %.thread8, !llvm.loop !7

.thread8:                                         ; preds = %.preheader17, %.preheader14, %bb.x, %bb.z, %.lr.ph40, %switch.early.test122.i, %.preheader17.preheader, %..thread8.loopexit83_crit_edge, %.preheader14.preheader, %..thread8.loopexit81_crit_edge, %.thread, %.loopexit20, %.loopexit
  %.7.i = phi ptr [ %.6.i, %.thread ], [ %.197.i, %.preheader14.preheader ], [ %.197.i, %.preheader14 ], [ %.399.i, %.loopexit20 ], [ %.197.i, %.loopexit ], [ %i.f, %bb.x ], [ %.399.i, %..thread8.loopexit83_crit_edge ], [ %.399.i, %.preheader17.preheader ], [ %.6.i, %bb.z ], [ %.197.i, %..thread8.loopexit81_crit_edge ], [ %.6.i, %switch.early.test122.i ], [ %.6.i, %.lr.ph40 ], [ %.399.i, %.preheader17 ] ; 3 uses
  %.5.i = phi ptr [ %i.f, %.thread ], [ %scevgep52, %.preheader14.preheader ], [ %scevgep52, %.preheader14 ], [ %i.f, %.loopexit20 ], [ %i.f, %.loopexit ], [ %i.f, %bb.x ], [ %.2.i87, %..thread8.loopexit83_crit_edge ], [ %scevgep, %.preheader17.preheader ], [ %scevgep54, %bb.z ], [ %.094.i91, %..thread8.loopexit81_crit_edge ], [ %.3.i39, %.lr.ph40 ], [ %.3.i39, %switch.early.test122.i ], [ %scevgep, %.preheader17 ] ; 2 uses
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !41
  %i.bv = ptrtoint ptr %.5.i to i64
  %i.bw = ptrtoint ptr %.7.i to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bu, %i.bx
  br i1 %i.by, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.thread8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %i.cb = and i32 %i.ca, 64
  %.not.i3 = icmp eq i32 %i.cb, 0
  br i1 %.not.i3, label %bb.ab, label %php_trim_int.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %0, align 8, !tbaa !42
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %0, align 8, !tbaa !42
  br label %php_trim_int.exit

bb.ac:                                            ; preds = %.thread8
  %i.ce = icmp eq ptr %.5.i, %.7.i
  br i1 %i.ce, label %bb.ad, label %zend_string_alloc.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_trim_int.exit

zend_string_alloc.exit:                           ; preds = %bb.ac
  %i.cg = and i64 %i.bx, -8
  %i.ch = add i64 %i.cg, 32
  %i.ci = tail call noalias ptr @_emalloc(i64 noundef %i.ch) #27 ; 6 uses
  store i32 1, ptr %i.ci, align 4, !tbaa !42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 22, ptr %i.cj, align 4, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !43
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.bx, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 1 %.7.i, i64 %i.bx, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bx
  store i8 0, ptr %i.cn, align 1, !tbaa !32
  br label %php_trim_int.exit

php_trim_int.exit:                                ; preds = %bb.ab, %bb.aa, %bb.ad, %zend_string_alloc.exit
  %.0102.i = phi ptr [ %i.ci, %zend_string_alloc.exit ], [ %i.cf, %bb.ad ], [ %0, %bb.aa ], [ %0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret ptr %.0102.i
}

; Function Attrs: nounwind uwtable
define hidden void @zif_trim(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = add i32 %i.e, -3
  %or.cond.i = icmp ult i32 %i.f, -2
  br i1 %or.cond.i, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread18

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit3.thread, label %zend_parse_arg_str_ex.exit3, !prof !34

zend_parse_arg_str_ex.exit3.thread:               ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.k, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit3:                      ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.l, label %bb.d, label %.thread18, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit3.thread, %zend_parse_arg_str_ex.exit3
  %i.m = icmp eq i32 %i.e, 1
  br i1 %i.m, label %.critedge.ithread-pre-split, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32
  %i.q = icmp eq i8 %i.p, 6
  br i1 %i.q, label %.split28.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split28.thread:                                  ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

zend_parse_arg_str_ex.exit:                       ; preds = %bb.e
  %i.s = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, i32 noundef 2) #26
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %.critedge.ithread-pre-split, label %.thread18, !prof !37

.thread18:                                        ; preds = %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit3, %bb.b
  %.051.i27 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit3 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.052.i26 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit3 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.053.i25 = phi ptr [ null, %bb.b ], [ %i.g, %zend_parse_arg_str_ex.exit3 ], [ %i.n, %zend_parse_arg_str_ex.exit ]
  %.054.i24 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit3 ], [ 2, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.051.i27, i32 noundef %.054.i24, ptr noundef null, i32 noundef %.052.i26, ptr noundef %.053.i25) #26
  br label %php_do_trim.exit

.critedge.ithread-pre-split:                      ; preds = %zend_parse_arg_str_ex.exit, %bb.d
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.ithread-pre-split, %.split28.thread
  %i.t = phi ptr [ %.pr, %.critedge.ithread-pre-split ], [ %i.r, %.split28.thread ] ; 5 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !36   ; 13 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 3 uses
  %.not57.i = icmp eq ptr %i.t, null
  %.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br i1 %.not57.i, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41   ; 5 uses
  %i.y = getelementptr i8, ptr %i.u, i64 24       ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !41  ; 6 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = icmp eq i64 %i.x, 1
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %.ptr, align 8, !tbaa !32  ; 2 uses
  %.not119.i.i50 = icmp samesign eq i64 %i.aa, 0
  br i1 %.not119.i.i50, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.g, %bb.h
  %.096.i.i51 = phi ptr [ %i.ag, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.ae = load i8, ptr %.096.i.i51, align 1, !tbaa !32
  %i.af = icmp eq i8 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %._crit_edge54

bb.h:                                             ; preds = %.lr.ph53
  %i.ag = getelementptr inbounds nuw i8, ptr %.096.i.i51, i64 1 ; 2 uses
  %.not119.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not119.i.i, label %._crit_edge54, label %.lr.ph53, !llvm.loop !3

._crit_edge54:                                    ; preds = %bb.h, %.lr.ph53, %bb.g
  %.096.i.i.lcssa = phi ptr [ %i.y, %bb.g ], [ %.096.i.i51, %.lr.ph53 ], [ %i.ab, %bb.h ] ; 6 uses
  %.096.i.i.lcssa76 = ptrtoaddr ptr %.096.i.i.lcssa to i64
  %i.ah = sub i64 %.096.i.i.lcssa76, %i.v
  %scevgep77 = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %.not121.i.i107 = icmp eq ptr %.096.i.i.lcssa, %i.ab
  br i1 %.not121.i.i107, label %.thread34, label %.lr.ph109

bb.i:                                             ; preds = %.lr.ph109
  %.not121.i.i = icmp eq ptr %.096.i.i.lcssa, %i.ai
  br i1 %.not121.i.i, label %.thread34, label %.lr.ph109, !llvm.loop !4

.lr.ph109:                                        ; preds = %._crit_edge54, %bb.i
  %.094.i.i108 = phi ptr [ %i.ai, %bb.i ], [ %i.ab, %._crit_edge54 ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.094.i.i108, i64 -1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32
  %i.ak = icmp eq i8 %i.aj, %i.ad
  br i1 %i.ak, label %bb.i, label %..thread34.loopexit99_crit_edge111, !llvm.loop !4

bb.j:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.not43.i = icmp eq i64 %i.x, 0
  br i1 %.not43.i, label %php_charmask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.al = add nuw i64 %i.x, 21
  %invariant.op = add nuw i64 %i.x, 23            ; 2 uses
  %invariant.op45 = add nuw i64 %i.x, 22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.y
  %.03141.i.idx = phi i64 [ %.132.i.add, %bb.y ], [ 24, %.lr.ph.i.preheader ] ; 11 uses
  %.03141.i.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.idx ; 6 uses
  %i.am = load i8, ptr %.03141.i.ptr, align 1, !tbaa !32 ; 5 uses
  %.03141.i.add = add nuw nsw i64 %.03141.i.idx, 3 ; 2 uses
  %.ptr40 = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.add
  %i.an = icmp ult i64 %.03141.i.idx, %i.al
  br i1 %i.an, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !32
  %i.aq = icmp eq i8 %i.ap, 46
  br i1 %i.aq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %.ptr40, align 1, !tbaa !32 ; 2 uses
  %.not.i6 = icmp ult i8 %i.au, %i.am
  br i1 %.not.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = zext i8 %i.am to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %narrow.i = sub nuw i8 %i.au, %i.am
  %i.ax = zext i8 %narrow.i to i64
  %i.ay = add nuw nsw i64 %i.ax, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, i8 1, i64 %i.ay, i1 false)
  br label %bb.y

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %.lr.ph.i
  %i.az = icmp ult i64 %.03141.i.idx, %invariant.op
  %i.ba = icmp eq i8 %i.am, 46
  %or.cond.i5 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i5, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !32
  %i.bd = icmp eq i8 %i.bc, 46
  br i1 %i.bd, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not39.i38 = icmp sgt i64 %.03141.i.idx, 24
  br i1 %.not39.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.49) #26
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %.not40.i = icmp ult i64 %.03141.i.idx, %invariant.op45
  br i1 %.not40.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.50) #26
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.bf = getelementptr inbounds i8, ptr %.03141.i.ptr, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !32
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bi = icmp ugt i8 %i.bg, %i.bh
  br i1 %i.bi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.51) #26
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.52) #26
  br label %bb.y

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.bj = zext i8 %i.am to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  store i8 1, ptr %i.bk, align 1, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.r, %bb.n
  %.132.i.idx = phi i64 [ %.03141.i.add, %bb.n ], [ %.03141.i.idx, %bb.r ], [ %.03141.i.idx, %bb.t ], [ %.03141.i.idx, %bb.v ], [ %.03141.i.idx, %bb.w ], [ %.03141.i.idx, %bb.x ] ; 2 uses
  %.132.i.add = add nuw nsw i64 %.132.i.idx, 1
  %i.bl = icmp ult i64 %.132.i.idx, %invariant.op
  br i1 %i.bl, label %.lr.ph.i, label %php_charmask.exit, !llvm.loop !5

php_charmask.exit:                                ; preds = %bb.y, %bb.j
  %.not113.i.i46 = icmp samesign eq i64 %i.aa, 0
  br i1 %.not113.i.i46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %php_charmask.exit, %bb.z
  %.298.i.i47 = phi ptr [ %i.bq, %bb.z ], [ %i.y, %php_charmask.exit ] ; 3 uses
  %i.bm = load i8, ptr %.298.i.i47, align 1, !tbaa !32
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !32
  %.not114.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not114.i.i, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.298.i.i47, i64 1 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.bq, %i.ab
  br i1 %.not113.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.z, %.lr.ph, %php_charmask.exit
  %.298.i.i.lcssa = phi ptr [ %i.y, %php_charmask.exit ], [ %.298.i.i47, %.lr.ph ], [ %i.ab, %bb.z ] ; 4 uses
  %.298.i.i.lcssa75 = ptrtoaddr ptr %.298.i.i.lcssa to i64
  %i.br = sub i64 %.298.i.i.lcssa75, %i.v
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.br ; 2 uses
  %.not116.i.i102 = icmp eq ptr %.298.i.i.lcssa, %i.ab
  br i1 %.not116.i.i102, label %.thread34.loopexit74, label %.lr.ph104

bb.aa:                                            ; preds = %.lr.ph104
  %.not116.i.i = icmp eq ptr %.298.i.i.lcssa, %i.bs
  br i1 %.not116.i.i, label %.thread34.loopexit74, label %.lr.ph104, !llvm.loop !7

.lr.ph104:                                        ; preds = %._crit_edge, %bb.aa
  %.2.i.i103 = phi ptr [ %i.bs, %bb.aa ], [ %i.ab, %._crit_edge ] ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.2.i.i103, i64 -1 ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !32
  %.not117.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not117.i.i, label %..thread34.loopexit74_crit_edge105, label %bb.aa, !llvm.loop !7

bb.ab:                                            ; preds = %.critedge.i
  %i.bx = getelementptr i8, ptr %i.u, i64 24      ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !41 ; 7 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 %i.bz  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not109.i.i58 = icmp samesign eq i64 %i.bz, 0
  br i1 %.not109.i.i58, label %.thread31, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.ab, %bb.ad
  %.4100.i.i59 = phi ptr [ %i.cf, %bb.ad ], [ %i.bx, %bb.ab ] ; 4 uses
  %i.cb = load i8, ptr %.4100.i.i59, align 1, !tbaa !32
  %.fr41 = freeze i8 %i.cb                        ; 3 uses
  %i.cc = icmp ult i8 %.fr41, 33
  br i1 %i.cc, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %.lr.ph61
  %i.cd = and i8 %.fr41, 59
  %i.ce = icmp eq i8 %i.cd, 9
  br i1 %i.ce, label %bb.ad, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.ac
  switch i8 %.fr41, label %.thread31 [
    i8 32, label %bb.ad
    i8 11, label %bb.ad
    i8 10, label %bb.ad
    i8 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.4100.i.i59, i64 1 ; 2 uses
  %.not109.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not109.i.i, label %.thread34, label %.lr.ph61

.thread31:                                        ; preds = %switch.early.test.i.i, %.lr.ph61, %bb.ab
  %.4100.i.i.lcssa = phi ptr [ %i.bx, %bb.ab ], [ %.4100.i.i59, %.lr.ph61 ], [ %.4100.i.i59, %switch.early.test.i.i ] ; 6 uses
  %.not111.i.i66 = icmp eq ptr %.4100.i.i.lcssa, %i.ca
  br i1 %.not111.i.i66, label %.thread34, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.thread31
  %.4100.i.i.lcssa78 = ptrtoaddr ptr %.4100.i.i.lcssa to i64
  %i.cg = sub i64 %.4100.i.i.lcssa78, %i.v
  %scevgep79 = getelementptr i8, ptr %i.u, i64 %i.cg
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.af
  %.3.i.i67 = phi ptr [ %i.ch, %bb.af ], [ %i.ca, %.lr.ph68.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds i8, ptr %.3.i.i67, i64 -1 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32
  %.fr42 = freeze i8 %i.ci                        ; 3 uses
  %i.cj = icmp ult i8 %.fr42, 33
  br i1 %i.cj, label %bb.ae, label %.thread34

bb.ae:                                            ; preds = %.lr.ph68
  %i.ck = and i8 %.fr42, 59
  %i.cl = icmp eq i8 %i.ck, 9
  br i1 %i.cl, label %bb.af, label %switch.early.test122.i.i

switch.early.test122.i.i:                         ; preds = %bb.ae
  switch i8 %.fr42, label %.thread34 [
    i8 32, label %bb.af
    i8 11, label %bb.af
    i8 10, label %bb.af
    i8 0, label %bb.af
  ]

bb.af:                                            ; preds = %switch.early.test122.i.i, %switch.early.test122.i.i, %switch.early.test122.i.i, %switch.early.test122.i.i, %bb.ae
  %.not111.i.i = icmp eq ptr %.4100.i.i.lcssa, %i.ch
  br i1 %.not111.i.i, label %.thread34, label %.lr.ph68

..thread34.loopexit74_crit_edge105:               ; preds = %.lr.ph104
  br label %.thread34.loopexit74, !llvm.loop !7

.thread34.loopexit74:                             ; preds = %bb.aa, %..thread34.loopexit74_crit_edge105, %._crit_edge
  %.2.i.i.lcssa = phi ptr [ %scevgep, %._crit_edge ], [ %.2.i.i103, %..thread34.loopexit74_crit_edge105 ], [ %scevgep, %bb.aa ]
  %.pre = load i64, ptr %i.z, align 8, !tbaa !41
  br label %.thread34

..thread34.loopexit99_crit_edge111:               ; preds = %.lr.ph109
  br label %.thread34, !llvm.loop !4

.thread34:                                        ; preds = %bb.i, %bb.ad, %bb.af, %.lr.ph68, %switch.early.test122.i.i, %._crit_edge54, %..thread34.loopexit99_crit_edge111, %.thread34.loopexit74, %.thread31
  %i.cm = phi i64 [ %i.bz, %bb.ad ], [ %i.bz, %.thread31 ], [ %i.bz, %bb.af ], [ %.pre, %.thread34.loopexit74 ], [ %i.aa, %..thread34.loopexit99_crit_edge111 ], [ %i.aa, %._crit_edge54 ], [ %i.bz, %switch.early.test122.i.i ], [ %i.bz, %.lr.ph68 ], [ %i.aa, %bb.i ]
  %.7.i.i = phi ptr [ %i.ca, %bb.ad ], [ %i.ca, %.thread31 ], [ %.4100.i.i.lcssa, %bb.af ], [ %.298.i.i.lcssa, %.thread34.loopexit74 ], [ %.096.i.i.lcssa, %..thread34.loopexit99_crit_edge111 ], [ %.096.i.i.lcssa, %._crit_edge54 ], [ %.4100.i.i.lcssa, %switch.early.test122.i.i ], [ %.4100.i.i.lcssa, %.lr.ph68 ], [ %.096.i.i.lcssa, %bb.i ] ; 3 uses
  %.5.i.i = phi ptr [ %i.ca, %bb.ad ], [ %i.ca, %.thread31 ], [ %scevgep79, %bb.af ], [ %.2.i.i.lcssa, %.thread34.loopexit74 ], [ %.094.i.i108, %..thread34.loopexit99_crit_edge111 ], [ %scevgep77, %._crit_edge54 ], [ %.3.i.i67, %.lr.ph68 ], [ %.3.i.i67, %switch.early.test122.i.i ], [ %scevgep77, %bb.i ] ; 2 uses
  %i.cn = ptrtoint ptr %.5.i.i to i64
  %i.co = ptrtoint ptr %.7.i.i to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cm, %i.cp
  br i1 %i.cq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.thread34
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = and i32 %i.cs, 64
  %.not.i4 = icmp eq i32 %i.ct, 0
  br i1 %.not.i4, label %bb.ah, label %php_trim_int.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !42
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.u, align 4, !tbaa !42
  br label %php_trim_int.exit.i

bb.ai:                                            ; preds = %.thread34
  %i.cw = icmp eq ptr %.5.i.i, %.7.i.i
  br i1 %i.cw, label %bb.aj, label %zend_string_alloc.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_trim_int.exit.i

zend_string_alloc.exit:                           ; preds = %bb.ai
  %i.cy = and i64 %i.cp, -8
  %i.cz = add i64 %i.cy, 32
  %i.da = call noalias ptr @_emalloc(i64 noundef %i.cz) #27 ; 6 uses
  store i32 1, ptr %i.da, align 4, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 22, ptr %i.db, align 4, !tbaa !32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 %i.cp, ptr %i.dd, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 1 %.7.i.i, i64 %i.cp, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cp
  store i8 0, ptr %i.df, align 1, !tbaa !32
  br label %php_trim_int.exit.i

php_trim_int.exit.i:                              ; preds = %bb.ah, %bb.ag, %zend_string_alloc.exit, %bb.aj
  %.0102.i.i = phi ptr [ %i.da, %zend_string_alloc.exit ], [ %i.cx, %bb.aj ], [ %i.u, %bb.ag ], [ %i.u, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0102.i.i, ptr %1, align 8, !tbaa !32
  %i.dg = getelementptr inbounds nuw i8, ptr %.0102.i.i, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = and i32 %i.dh, 64
  %.not58.i = icmp eq i32 %i.di, 0
  %i.dj = select i1 %.not58.i, i32 262, i32 6
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !32
  br label %php_do_trim.exit

php_do_trim.exit:                                 ; preds = %.thread18, %php_trim_int.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zflf_trim_1(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 11 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %i.d = icmp eq i8 %i.c, 6
end_hunk_0
begin_hunk_1_@zflf_trim_1:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 1 %.4100.i.lcssa53, i64 %i.ai, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ai
  store i8 0, ptr %i.ay, align 1, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %zend_string_alloc.exit, %bb.n, %bb.k, %bb.l
  %.0102.i = phi ptr [ %i.at, %zend_string_alloc.exit ], [ %i.aq, %bb.n ], [ %i.p, %bb.k ], [ %i.p, %bb.l ] ; 2 uses
  store ptr %.0102.i, ptr %0, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = and i32 %i.ba, 64
  %.not19 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not19, i32 262, i32 6
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !32
  %i.be = icmp eq ptr %.0, %2
  br i1 %i.be, label %bb.p, label %bb.q, !prof !55

bb.p:                                             ; preds = %.thread27, %bb.o
  %.129 = phi ptr [ %2, %.thread27 ], [ %.0, %bb.o ]
  call void @zval_ptr_dtor(ptr noundef %.129) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @zend_wrong_parameter_type_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @zflf_trim_2(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %3 = alloca %struct._zval_struct, align 8       ; 11 uses
  %4 = alloca %struct._zval_struct, align 8       ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp eq i8 %i.e, 6
  %i.g = load ptr, ptr %1, align 8, !tbaa !32     ; 4 uses
  br i1 %i.f, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !32
  %i.j = and i32 %i.h, 65280
  %.not = icmp eq i32 %i.j, 0
  %i.k = trunc i32 %i.h to i8
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.g, align 4, !tbaa !42
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.g, align 4, !tbaa !42
  %.pre = load i8, ptr %i.i, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i8 [ %.pre, %bb.c ], [ %i.k, %bb.b ]
  %i.o = icmp eq i8 %i.n, 6
  br i1 %i.o, label %zend_parse_arg_str_ex.exit39.thread, label %zend_parse_arg_str_ex.exit39, !prof !34

zend_parse_arg_str_ex.exit39.thread:              ; preds = %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !32
  br label %.sink.split

zend_parse_arg_str_ex.exit39:                     ; preds = %bb.d
  %i.q = call zeroext i1 @zend_flf_parse_arg_str_slow(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.q, label %bb.e, label %.thread

.thread:                                          ; preds = %zend_parse_arg_str_ex.exit39
  call void @zend_wrong_parameter_type_error(i32 noundef 1, i32 noundef 4, ptr noundef nonnull %3) #26
  br label %bb.al

.sink.split:                                      ; preds = %bb.a, %zend_parse_arg_str_ex.exit39.thread
  %.sink = phi ptr [ %i.p, %zend_parse_arg_str_ex.exit39.thread ], [ %i.g, %bb.a ]
  %.0.ph = phi ptr [ %3, %zend_parse_arg_str_ex.exit39.thread ], [ %1, %bb.a ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %zend_parse_arg_str_ex.exit39
  %.0 = phi ptr [ %3, %zend_parse_arg_str_ex.exit39 ], [ %.0.ph, %.sink.split ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32
  %i.t = icmp eq i8 %i.s, 6
  %i.u = load ptr, ptr %2, align 8, !tbaa !32     ; 5 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.c, align 8, !tbaa !36
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = and i32 %i.v, 65280
  %.not36 = icmp eq i32 %i.x, 0
  %i.y = trunc i32 %i.v to i8
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.u, align 4, !tbaa !42
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !42
  %.pre68.a = load i8, ptr %i.w, align 8, !tbaa !32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i8 [ %.pre68.a, %bb.h ], [ %i.y, %bb.g ]
  %i.ac = icmp eq i8 %i.ab, 6
  br i1 %i.ac, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.i
  %i.ad = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !36
  br label %bb.k

zend_parse_arg_str_ex.exit:                       ; preds = %bb.i
  %i.ae = call zeroext i1 @zend_flf_parse_arg_str_slow(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i32 noundef 2) #26
  br i1 %i.ae, label %zend_parse_arg_str_ex.exit._crit_edge, label %bb.j

zend_parse_arg_str_ex.exit._crit_edge:            ; preds = %zend_parse_arg_str_ex.exit
  %.pre69.a = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %zend_parse_arg_str_ex.exit
  call void @zend_wrong_parameter_type_error(i32 noundef 2, i32 noundef 4, ptr noundef nonnull %4) #26
  br label %bb.ak

bb.k:                                             ; preds = %zend_parse_arg_str_ex.exit._crit_edge, %zend_parse_arg_str_ex.exit.thread, %bb.f
  %i.af = phi ptr [ %i.u, %bb.f ], [ %.pre69.a, %zend_parse_arg_str_ex.exit._crit_edge ], [ %i.ad, %zend_parse_arg_str_ex.exit.thread ] ; 4 uses
  %.034 = phi ptr [ %2, %bb.f ], [ %4, %zend_parse_arg_str_ex.exit._crit_edge ], [ %4, %zend_parse_arg_str_ex.exit.thread ]
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !36  ; 10 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41 ; 5 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 24     ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41 ; 6 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ao = icmp eq i64 %i.aj, 1
  br i1 %i.ao, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.ptr = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ap = load i8, ptr %.ptr, align 8, !tbaa !32  ; 2 uses
  %.not119.i56 = icmp samesign eq i64 %i.am, 0
  br i1 %.not119.i56, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.l, %bb.m
  %.096.i57 = phi ptr [ %i.as, %bb.m ], [ %i.ak, %bb.l ] ; 3 uses
  %i.aq = load i8, ptr %.096.i57, align 1, !tbaa !32
  %i.ar = icmp eq i8 %i.aq, %i.ap
  br i1 %i.ar, label %bb.m, label %._crit_edge60

bb.m:                                             ; preds = %.lr.ph59
  %i.as = getelementptr inbounds nuw i8, ptr %.096.i57, i64 1 ; 2 uses
  %.not119.i = icmp eq ptr %i.as, %i.an
  br i1 %.not119.i, label %._crit_edge60, label %.lr.ph59, !llvm.loop !3

._crit_edge60:                                    ; preds = %bb.m, %.lr.ph59, %bb.l
  %.096.i.lcssa = phi ptr [ %i.ak, %bb.l ], [ %.096.i57, %.lr.ph59 ], [ %i.an, %bb.m ] ; 6 uses
  %.096.i.lcssa66 = ptrtoaddr ptr %.096.i.lcssa to i64
  %i.at = sub i64 %.096.i.lcssa66, %i.ah
  %scevgep67 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %.not121.i84 = icmp eq ptr %.096.i.lcssa, %i.an
  br i1 %.not121.i84, label %.loopexit, label %.lr.ph86

bb.n:                                             ; preds = %.lr.ph86
  %.not121.i = icmp eq ptr %.096.i.lcssa, %i.au
  br i1 %.not121.i, label %.loopexit, label %.lr.ph86, !llvm.loop !4

.lr.ph86:                                         ; preds = %._crit_edge60, %bb.n
  %.094.i85 = phi ptr [ %i.au, %bb.n ], [ %i.an, %._crit_edge60 ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.094.i85, i64 -1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !32
  %i.aw = icmp eq i8 %i.av, %i.ap
  br i1 %i.aw, label %bb.n, label %..loopexit.loopexit_crit_edge88, !llvm.loop !4

bb.o:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.not43.i = icmp eq i64 %i.aj, 0
  br i1 %.not43.i, label %php_charmask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.ax = add nuw i64 %i.aj, 21
  %invariant.op = add nuw i64 %i.aj, 23           ; 2 uses
  %invariant.op51 = add nuw i64 %i.aj, 22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ad
  %.03141.i.idx = phi i64 [ %.132.i.add, %bb.ad ], [ 24, %.lr.ph.i.preheader ] ; 11 uses
  %.03141.i.ptr = getelementptr inbounds nuw i8, ptr %i.af, i64 %.03141.i.idx ; 6 uses
  %i.ay = load i8, ptr %.03141.i.ptr, align 1, !tbaa !32 ; 5 uses
  %.03141.i.add = add nuw nsw i64 %.03141.i.idx, 3 ; 2 uses
  %.ptr49 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.03141.i.add
  %i.az = icmp ult i64 %.03141.i.idx, %i.ax
  br i1 %i.az, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.bc = icmp eq i8 %i.bb, 46
  br i1 %i.bc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.bf = icmp eq i8 %i.be, 46
  br i1 %i.bf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bg = load i8, ptr %.ptr49, align 1, !tbaa !32 ; 2 uses
  %.not.i40 = icmp ult i8 %i.bg, %i.ay
  br i1 %.not.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = zext i8 %i.ay to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %narrow.i = sub nuw i8 %i.bg, %i.ay
  %i.bj = zext i8 %narrow.i to i64
  %i.bk = add nuw nsw i64 %i.bj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, i8 1, i64 %i.bk, i1 false)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %.lr.ph.i
  %i.bl = icmp ult i64 %.03141.i.idx, %invariant.op
  %i.bm = icmp eq i8 %i.ay, 46
  %or.cond.i = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond.i, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = icmp eq i8 %i.bo, 46
  br i1 %i.bp, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %.not39.i = icmp sgt i64 %.03141.i.idx, 24
  br i1 %.not39.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.49) #26
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %.not40.i = icmp ult i64 %.03141.i.idx, %invariant.op51
  br i1 %.not40.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.50) #26
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.br = getelementptr inbounds i8, ptr %.03141.i.ptr, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !32
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.bu = icmp ugt i8 %i.bs, %i.bt
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.51) #26
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.52) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u, %bb.t
  %i.bv = zext i8 %i.ay to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  store i8 1, ptr %i.bw, align 1, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.s
  %.132.i.idx = phi i64 [ %.03141.i.add, %bb.s ], [ %.03141.i.idx, %bb.w ], [ %.03141.i.idx, %bb.y ], [ %.03141.i.idx, %bb.aa ], [ %.03141.i.idx, %bb.ab ], [ %.03141.i.idx, %bb.ac ] ; 2 uses
  %.132.i.add = add nuw nsw i64 %.132.i.idx, 1
  %i.bx = icmp ult i64 %.132.i.idx, %invariant.op
  br i1 %i.bx, label %.lr.ph.i, label %php_charmask.exit, !llvm.loop !5

php_charmask.exit:                                ; preds = %bb.ad, %bb.o
  %.not113.i52 = icmp samesign eq i64 %i.am, 0
  br i1 %.not113.i52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %php_charmask.exit, %bb.ae
  %.298.i53 = phi ptr [ %i.cc, %bb.ae ], [ %i.ak, %php_charmask.exit ] ; 3 uses
  %i.by = load i8, ptr %.298.i53, align 1, !tbaa !32
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %.not114.i = icmp eq i8 %i.cb, 0
  br i1 %.not114.i, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.298.i53, i64 1 ; 2 uses
  %.not113.i = icmp eq ptr %i.cc, %i.an
  br i1 %.not113.i, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.ae, %.lr.ph, %php_charmask.exit
  %.298.i.lcssa = phi ptr [ %i.ak, %php_charmask.exit ], [ %.298.i53, %.lr.ph ], [ %i.an, %bb.ae ] ; 4 uses
  %.298.i.lcssa65 = ptrtoaddr ptr %.298.i.lcssa to i64
  %i.cd = sub i64 %.298.i.lcssa65, %i.ah
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.cd ; 2 uses
  %.not116.i79 = icmp eq ptr %.298.i.lcssa, %i.an
  br i1 %.not116.i79, label %.loopexit.loopexit64, label %.lr.ph81

bb.af:                                            ; preds = %.lr.ph81
  %.not116.i = icmp eq ptr %.298.i.lcssa, %i.ce
  br i1 %.not116.i, label %.loopexit.loopexit64, label %.lr.ph81, !llvm.loop !7

.lr.ph81:                                         ; preds = %._crit_edge, %bb.af
  %.2.i80 = phi ptr [ %i.ce, %bb.af ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.2.i80, i64 -1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !32
  %.not117.i = icmp eq i8 %i.ci, 0
  br i1 %.not117.i, label %..loopexit.loopexit64_crit_edge82, label %bb.af, !llvm.loop !7

..loopexit.loopexit64_crit_edge82:                ; preds = %.lr.ph81
  br label %.loopexit.loopexit64, !llvm.loop !7

.loopexit.loopexit64:                             ; preds = %bb.af, %..loopexit.loopexit64_crit_edge82, %._crit_edge
  %.2.i.lcssa = phi ptr [ %scevgep, %._crit_edge ], [ %.2.i80, %..loopexit.loopexit64_crit_edge82 ], [ %scevgep, %bb.af ]
  %.pre70 = load i64, ptr %i.al, align 8, !tbaa !41
  br label %.loopexit

..loopexit.loopexit_crit_edge88:                  ; preds = %.lr.ph86
  br label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %bb.n, %._crit_edge60, %..loopexit.loopexit_crit_edge88, %.loopexit.loopexit64
  %i.cj = phi i64 [ %.pre70, %.loopexit.loopexit64 ], [ %i.am, %._crit_edge60 ], [ %i.am, %..loopexit.loopexit_crit_edge88 ], [ %i.am, %bb.n ]
  %.7.i = phi ptr [ %.298.i.lcssa, %.loopexit.loopexit64 ], [ %.096.i.lcssa, %._crit_edge60 ], [ %.096.i.lcssa, %..loopexit.loopexit_crit_edge88 ], [ %.096.i.lcssa, %bb.n ] ; 3 uses
  %.5.i = phi ptr [ %.2.i.lcssa, %.loopexit.loopexit64 ], [ %scevgep67, %._crit_edge60 ], [ %.094.i85, %..loopexit.loopexit_crit_edge88 ], [ %scevgep67, %bb.n ] ; 2 uses
  %i.ck = ptrtoint ptr %.5.i to i64
  %i.cl = ptrtoint ptr %.7.i to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 5 uses
  %i.cn = icmp eq i64 %i.cj, %i.cm
  br i1 %i.cn, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.loopexit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = and i32 %i.cp, 64
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.ah, label %php_trim_int.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load i32, ptr %i.ag, align 8, !tbaa !42
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ag, align 8, !tbaa !42
  br label %php_trim_int.exit

bb.ai:                                            ; preds = %.loopexit
  %i.ct = icmp eq ptr %.5.i, %.7.i
  br i1 %i.ct, label %bb.aj, label %zend_string_alloc.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_trim_int.exit

zend_string_alloc.exit:                           ; preds = %bb.ai
  %i.cv = and i64 %i.cm, -8
  %i.cw = add i64 %i.cv, 32
  %i.cx = call noalias ptr @_emalloc(i64 noundef %i.cw) #27 ; 6 uses
  store i32 1, ptr %i.cx, align 4, !tbaa !42
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 22, ptr %i.cy, align 4, !tbaa !32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 0, ptr %i.cz, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.cm, ptr %i.da, align 8, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 1 %.7.i, i64 %i.cm, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cm
  store i8 0, ptr %i.dc, align 1, !tbaa !32
  br label %php_trim_int.exit

php_trim_int.exit:                                ; preds = %bb.ah, %bb.ag, %bb.aj, %zend_string_alloc.exit
  %.0102.i = phi ptr [ %i.cx, %zend_string_alloc.exit ], [ %i.cu, %bb.aj ], [ %i.ag, %bb.ag ], [ %i.ag, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0102.i, ptr %0, align 8, !tbaa !32
  %i.dd = getelementptr inbounds nuw i8, ptr %.0102.i, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.df = and i32 %i.de, 64
  %.not37 = icmp eq i32 %i.df, 0
  %i.dg = select i1 %.not37, i32 262, i32 6
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !32
  br label %bb.ak

bb.ak:                                            ; preds = %php_trim_int.exit, %bb.j
  %.135 = phi ptr [ %.034, %php_trim_int.exit ], [ %4, %bb.j ] ; 2 uses
  %i.di = icmp eq ptr %.0, %3
  br i1 %i.di, label %bb.al, label %bb.am, !prof !55

bb.al:                                            ; preds = %.thread, %bb.ak
  %.147 = phi ptr [ %3, %.thread ], [ %.0, %bb.ak ]
  %.13546 = phi ptr [ %2, %.thread ], [ %.135, %bb.ak ]
  call void @zval_ptr_dtor(ptr noundef %.147) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.13545 = phi ptr [ %.13546, %bb.al ], [ %.135, %bb.ak ] ; 2 uses
  %i.dj = icmp eq ptr %.13545, %4
  br i1 %i.dj, label %bb.an, label %bb.ao, !prof !45

bb.an:                                            ; preds = %bb.am
  call void @zval_ptr_dtor(ptr noundef %.13545) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_rtrim(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = add i32 %i.e, -3
  %or.cond.i = icmp ult i32 %i.f, -2
  br i1 %or.cond.i, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread18

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit3.thread, label %zend_parse_arg_str_ex.exit3, !prof !34

zend_parse_arg_str_ex.exit3.thread:               ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.k, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit3:                      ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.l, label %bb.d, label %.thread18, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit3.thread, %zend_parse_arg_str_ex.exit3
  %i.m = icmp eq i32 %i.e, 1
  br i1 %i.m, label %.critedge.ithread-pre-split, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32
  %i.q = icmp eq i8 %i.p, 6
  br i1 %i.q, label %.split28.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split28.thread:                                  ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

zend_parse_arg_str_ex.exit:                       ; preds = %bb.e
  %i.s = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, i32 noundef 2) #26
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %.critedge.ithread-pre-split, label %.thread18, !prof !37

.thread18:                                        ; preds = %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit3, %bb.b
  %.051.i27 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit3 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.052.i26 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit3 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.053.i25 = phi ptr [ null, %bb.b ], [ %i.g, %zend_parse_arg_str_ex.exit3 ], [ %i.n, %zend_parse_arg_str_ex.exit ]
  %.054.i24 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit3 ], [ 2, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.051.i27, i32 noundef %.054.i24, ptr noundef null, i32 noundef %.052.i26, ptr noundef %.053.i25) #26
  br label %php_do_trim.exit

.critedge.ithread-pre-split:                      ; preds = %zend_parse_arg_str_ex.exit, %bb.d
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.ithread-pre-split, %.split28.thread
  %i.t = phi ptr [ %.pr, %.critedge.ithread-pre-split ], [ %i.r, %.split28.thread ] ; 5 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !36   ; 11 uses
  %.not57.i = icmp eq ptr %i.t, null
  %.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br i1 %.not57.i, label %bb.z, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41   ; 6 uses
  %.add = add nsw i64 %i.y, 24                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.z = icmp eq i64 %i.w, 1
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %.ptr, align 8, !tbaa !32
  %.not121.i.i70 = icmp eq i64 %i.y, 0
  br i1 %.not121.i.i70, label %.thread30, label %.lr.ph72

bb.h:                                             ; preds = %.lr.ph72
  %.not121.i.i = icmp eq i64 %.094.i.i.add, 24
  br i1 %.not121.i.i, label %.thread30, label %.lr.ph72, !llvm.loop !4

.lr.ph72:                                         ; preds = %bb.g, %bb.h
  %.094.i.i.idx71 = phi i64 [ %.094.i.i.add, %bb.h ], [ %.add, %bb.g ] ; 2 uses
  %.094.i.i.add = add nsw i64 %.094.i.i.idx71, -1 ; 3 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.u, i64 %.094.i.i.add
  %i.ab = load i8, ptr %.ptr40, align 1, !tbaa !32
  %i.ac = icmp eq i8 %i.ab, %i.aa
  br i1 %i.ac, label %bb.h, label %..thread30.loopexit63_crit_edge74, !llvm.loop !4

bb.i:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.not43.i = icmp eq i64 %i.w, 0
  br i1 %.not43.i, label %php_charmask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.ad = add nuw i64 %i.w, 21
  %invariant.op = add nuw i64 %i.w, 23            ; 2 uses
  %invariant.op48 = add nuw i64 %i.w, 22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.x
  %.03141.i.idx = phi i64 [ %.132.i.add, %bb.x ], [ 24, %.lr.ph.i.preheader ] ; 11 uses
  %.03141.i.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.idx ; 6 uses
  %i.ae = load i8, ptr %.03141.i.ptr, align 1, !tbaa !32 ; 5 uses
  %.03141.i.add = add nuw nsw i64 %.03141.i.idx, 3 ; 2 uses
  %.ptr36 = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.add
  %i.af = icmp ult i64 %.03141.i.idx, %i.ad
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32
  %i.ai = icmp eq i8 %i.ah, 46
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = load i8, ptr %.ptr36, align 1, !tbaa !32 ; 2 uses
  %.not.i6 = icmp ult i8 %i.am, %i.ae
  br i1 %.not.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an
  %narrow.i = sub nuw i8 %i.am, %i.ae
  %i.ap = zext i8 %narrow.i to i64
  %i.aq = add nuw nsw i64 %i.ap, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, i8 1, i64 %i.aq, i1 false)
  br label %bb.x

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %i.ar = icmp ult i64 %.03141.i.idx, %invariant.op
  %i.as = icmp eq i8 %i.ae, 46
  %or.cond.i5 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond.i5, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = icmp eq i8 %i.au, 46
  br i1 %i.av, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.not39.i34 = icmp sgt i64 %.03141.i.idx, 24
  br i1 %.not39.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.49) #26
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %.not40.i = icmp ult i64 %.03141.i.idx, %invariant.op48
  br i1 %.not40.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.50) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.ax = getelementptr inbounds i8, ptr %.03141.i.ptr, i64 -1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ba = icmp ugt i8 %i.ay, %i.az
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.51) #26
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.52) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.o, %bb.n
  %i.bb = zext i8 %i.ae to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 1, ptr %i.bc, align 1, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.q, %bb.m
  %.132.i.idx = phi i64 [ %.03141.i.add, %bb.m ], [ %.03141.i.idx, %bb.q ], [ %.03141.i.idx, %bb.s ], [ %.03141.i.idx, %bb.u ], [ %.03141.i.idx, %bb.v ], [ %.03141.i.idx, %bb.w ] ; 2 uses
  %.132.i.add = add nuw nsw i64 %.132.i.idx, 1
  %i.bd = icmp ult i64 %.132.i.idx, %invariant.op
  br i1 %i.bd, label %.lr.ph.i, label %php_charmask.exit, !llvm.loop !5

php_charmask.exit:                                ; preds = %bb.x, %bb.i
  %.not116.i.i65 = icmp eq i64 %i.y, 0
  br i1 %.not116.i.i65, label %.thread30.loopexit55, label %.lr.ph67

bb.y:                                             ; preds = %.lr.ph67
  %.not116.i.i = icmp eq i64 %.2.i.i.add, 24
  br i1 %.not116.i.i, label %.thread30.loopexit55, label %.lr.ph67, !llvm.loop !7

.lr.ph67:                                         ; preds = %php_charmask.exit, %bb.y
  %.2.i.i.idx66 = phi i64 [ %.2.i.i.add, %bb.y ], [ %.add, %php_charmask.exit ] ; 2 uses
  %.2.i.i.add = add nsw i64 %.2.i.i.idx66, -1     ; 4 uses
  %.ptr37 = getelementptr inbounds i8, ptr %i.u, i64 %.2.i.i.add
  %i.be = load i8, ptr %.ptr37, align 1, !tbaa !32
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32
  %.not117.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not117.i.i, label %..thread30.loopexit55_crit_edge68, label %bb.y, !llvm.loop !7

bb.z:                                             ; preds = %.critedge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not111.i.i49 = icmp eq i64 %i.bj, 0
  br i1 %.not111.i.i49, label %.thread30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.z
  %.add41 = add nsw i64 %i.bj, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %.3.i.i.idx50 = phi i64 [ %.3.i.i.add, %bb.ab ], [ %.add41, %.lr.ph.preheader ] ; 3 uses
  %.3.i.i.add = add nsw i64 %.3.i.i.idx50, -1     ; 3 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.u, i64 %.3.i.i.add
  %i.bk = load i8, ptr %.ptr42, align 1, !tbaa !32
  %.fr45 = freeze i8 %i.bk                        ; 3 uses
  %i.bl = icmp ult i8 %.fr45, 33
  br i1 %i.bl, label %bb.aa, label %.thread30

bb.aa:                                            ; preds = %.lr.ph
  %i.bm = and i8 %.fr45, 59
  %i.bn = icmp eq i8 %i.bm, 9
  br i1 %i.bn, label %bb.ab, label %switch.early.test122.i.i

switch.early.test122.i.i:                         ; preds = %bb.aa
  switch i8 %.fr45, label %.thread30 [
    i8 32, label %bb.ab
    i8 11, label %bb.ab
    i8 10, label %bb.ab
    i8 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %switch.early.test122.i.i, %switch.early.test122.i.i, %switch.early.test122.i.i, %switch.early.test122.i.i, %bb.aa
  %.not111.i.i = icmp eq i64 %.3.i.i.add, 24
  br i1 %.not111.i.i, label %.thread30, label %.lr.ph

..thread30.loopexit55_crit_edge68:                ; preds = %.lr.ph67
  br label %.thread30.loopexit55, !llvm.loop !7

.thread30.loopexit55:                             ; preds = %bb.y, %..thread30.loopexit55_crit_edge68, %php_charmask.exit
  %.2.i.i.idx.lcssa = phi i64 [ %.add, %php_charmask.exit ], [ %.2.i.i.idx66, %..thread30.loopexit55_crit_edge68 ], [ %.2.i.i.add, %bb.y ]
  %.pre = load i64, ptr %i.x, align 8, !tbaa !41
  br label %.thread30

..thread30.loopexit63_crit_edge74:                ; preds = %.lr.ph72
  br label %.thread30, !llvm.loop !4

.thread30:                                        ; preds = %bb.h, %bb.ab, %.lr.ph, %switch.early.test122.i.i, %bb.g, %..thread30.loopexit63_crit_edge74, %.thread30.loopexit55, %bb.z
  %i.bo = phi i64 [ %i.bj, %bb.ab ], [ 0, %bb.z ], [ %.pre, %.thread30.loopexit55 ], [ %i.y, %..thread30.loopexit63_crit_edge74 ], [ %i.y, %bb.g ], [ %i.bj, %switch.early.test122.i.i ], [ %i.bj, %.lr.ph ], [ %i.y, %bb.h ]
  %.5.i.i.idx = phi i64 [ 24, %bb.ab ], [ 24, %bb.z ], [ %.2.i.i.idx.lcssa, %.thread30.loopexit55 ], [ %.094.i.i.idx71, %..thread30.loopexit63_crit_edge74 ], [ 24, %bb.g ], [ %.3.i.i.idx50, %.lr.ph ], [ %.3.i.i.idx50, %switch.early.test122.i.i ], [ 24, %bb.h ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %gepdiff = add nsw i64 %.5.i.i.idx, -24         ; 4 uses
  %i.bq = icmp eq i64 %i.bo, %gepdiff
  br i1 %i.bq, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.thread30
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = and i32 %i.bs, 64
  %.not.i4 = icmp eq i32 %i.bt, 0
  br i1 %.not.i4, label %bb.ad, label %php_trim_int.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !42
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.u, align 4, !tbaa !42
  br label %php_trim_int.exit.i

bb.ae:                                            ; preds = %.thread30
  %i.bw = icmp eq i64 %.5.i.i.idx, 24
  br i1 %i.bw, label %bb.af, label %zend_string_alloc.exit

bb.af:                                            ; preds = %bb.ae
  %i.bx = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_trim_int.exit.i

zend_string_alloc.exit:                           ; preds = %bb.ae
  %i.by = and i64 %gepdiff, -8
  %i.bz = add i64 %i.by, 32
  %i.ca = call noalias ptr @_emalloc(i64 noundef %i.bz) #27 ; 7 uses
  store i32 1, ptr %i.ca, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 22, ptr %i.cb, align 4, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %gepdiff, ptr %i.cd, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 1 %i.bp, i64 %gepdiff, i1 false)
  %i.cf = getelementptr i8, ptr %i.ca, i64 %.5.i.i.idx
  store i8 0, ptr %i.cf, align 1, !tbaa !32
  br label %php_trim_int.exit.i

php_trim_int.exit.i:                              ; preds = %bb.ad, %bb.ac, %zend_string_alloc.exit, %bb.af
  %.0102.i.i = phi ptr [ %i.ca, %zend_string_alloc.exit ], [ %i.bx, %bb.af ], [ %i.u, %bb.ac ], [ %i.u, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0102.i.i, ptr %1, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %.0102.i.i, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = and i32 %i.ch, 64
  %.not58.i = icmp eq i32 %i.ci, 0
  %i.cj = select i1 %.not58.i, i32 262, i32 6
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !32
  br label %php_do_trim.exit

php_do_trim.exit:                                 ; preds = %.thread18, %php_trim_int.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_ltrim(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = add i32 %i.e, -3
  %or.cond.i = icmp ult i32 %i.f, -2
  br i1 %or.cond.i, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread18

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit3.thread, label %zend_parse_arg_str_ex.exit3, !prof !34

zend_parse_arg_str_ex.exit3.thread:               ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.k, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit3:                      ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.l, label %bb.d, label %.thread18, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit3.thread, %zend_parse_arg_str_ex.exit3
  %i.m = icmp eq i32 %i.e, 1
  br i1 %i.m, label %.critedge.ithread-pre-split, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32
  %i.q = icmp eq i8 %i.p, 6
  br i1 %i.q, label %.split28.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split28.thread:                                  ; preds = %bb.e
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  store ptr %i.r, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

zend_parse_arg_str_ex.exit:                       ; preds = %bb.e
  %i.s = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.n, ptr noundef nonnull %i.c, i32 noundef 2) #26
  %cond.fr = freeze i1 %i.s
  br i1 %cond.fr, label %.critedge.ithread-pre-split, label %.thread18, !prof !37

.thread18:                                        ; preds = %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit3, %bb.b
  %.051.i27 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit3 ], [ 9, %zend_parse_arg_str_ex.exit ]
  %.052.i26 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit3 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.053.i25 = phi ptr [ null, %bb.b ], [ %i.g, %zend_parse_arg_str_ex.exit3 ], [ %i.n, %zend_parse_arg_str_ex.exit ]
  %.054.i24 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit3 ], [ 2, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.051.i27, i32 noundef %.054.i24, ptr noundef null, i32 noundef %.052.i26, ptr noundef %.053.i25) #26
  br label %php_do_trim.exit

.critedge.ithread-pre-split:                      ; preds = %zend_parse_arg_str_ex.exit, %bb.d
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !36
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.ithread-pre-split, %.split28.thread
  %i.t = phi ptr [ %.pr, %.critedge.ithread-pre-split ], [ %i.r, %.split28.thread ] ; 5 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !36   ; 9 uses
  %.not57.i = icmp eq ptr %i.t, null
  %.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br i1 %.not57.i, label %bb.z, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41   ; 5 uses
  %i.x = getelementptr i8, ptr %i.u, i64 24       ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 7 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 3 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.z    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ab = icmp eq i64 %i.w, 1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %.ptr, align 8, !tbaa !32
  %.not119.i.i46 = icmp samesign eq i64 %i.z, 0
  br i1 %.not119.i.i46, label %.thread31, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.g, %bb.h
  %.096.i.i47 = phi ptr [ %i.af, %bb.h ], [ %i.x, %bb.g ] ; 3 uses
  %i.ad = load i8, ptr %.096.i.i47, align 1, !tbaa !32
  %i.ae = icmp eq i8 %i.ad, %i.ac
  br i1 %i.ae, label %bb.h, label %.thread31

bb.h:                                             ; preds = %.lr.ph48
  %i.af = getelementptr inbounds nuw i8, ptr %.096.i.i47, i64 1 ; 2 uses
  %.not119.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not119.i.i, label %.thread31, label %.lr.ph48, !llvm.loop !3

bb.i:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.not43.i = icmp eq i64 %i.w, 0
  br i1 %.not43.i, label %php_charmask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.ag = add nuw i64 %i.w, 21
  %invariant.op = add nuw i64 %i.w, 23            ; 2 uses
  %invariant.op41 = add nuw i64 %i.w, 22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.x
  %.03141.i.idx = phi i64 [ %.132.i.add, %bb.x ], [ 24, %.lr.ph.i.preheader ] ; 11 uses
  %.03141.i.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.idx ; 6 uses
  %i.ah = load i8, ptr %.03141.i.ptr, align 1, !tbaa !32 ; 5 uses
  %.03141.i.add = add nuw nsw i64 %.03141.i.idx, 3 ; 2 uses
  %.ptr37 = getelementptr inbounds nuw i8, ptr %i.t, i64 %.03141.i.add
  %i.ai = icmp ult i64 %.03141.i.idx, %i.ag
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !32
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  %i.ao = icmp eq i8 %i.an, 46
  br i1 %i.ao, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %.ptr37, align 1, !tbaa !32 ; 2 uses
  %.not.i6 = icmp ult i8 %i.ap, %i.ah
  br i1 %.not.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = zext i8 %i.ah to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  %narrow.i = sub nuw i8 %i.ap, %i.ah
  %i.as = zext i8 %narrow.i to i64
  %i.at = add nuw nsw i64 %i.as, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i8 1, i64 %i.at, i1 false)
  br label %bb.x

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %i.au = icmp ult i64 %.03141.i.idx, %invariant.op
  %i.av = icmp eq i8 %i.ah, 46
  %or.cond.i5 = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i5, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !32
  %i.ay = icmp eq i8 %i.ax, 46
  br i1 %i.ay, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %.not39.i35 = icmp sgt i64 %.03141.i.idx, 24
  br i1 %.not39.i35, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.49) #26
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  %.not40.i = icmp ult i64 %.03141.i.idx, %invariant.op41
  br i1 %.not40.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.50) #26
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %.03141.i.ptr, i64 2
  %i.ba = getelementptr inbounds i8, ptr %.03141.i.ptr, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !32
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !32
  %i.bd = icmp ugt i8 %i.bb, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.51) #26
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.52) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.o, %bb.n
  %i.be = zext i8 %i.ah to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  store i8 1, ptr %i.bf, align 1, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.q, %bb.m
  %.132.i.idx = phi i64 [ %.03141.i.add, %bb.m ], [ %.03141.i.idx, %bb.q ], [ %.03141.i.idx, %bb.s ], [ %.03141.i.idx, %bb.u ], [ %.03141.i.idx, %bb.v ], [ %.03141.i.idx, %bb.w ] ; 2 uses
  %.132.i.add = add nuw nsw i64 %.132.i.idx, 1
  %i.bg = icmp ult i64 %.132.i.idx, %invariant.op
  br i1 %i.bg, label %.lr.ph.i, label %php_charmask.exit, !llvm.loop !5

php_charmask.exit:                                ; preds = %bb.x, %bb.i
  %.not113.i.i42 = icmp samesign eq i64 %i.z, 0
  br i1 %.not113.i.i42, label %.thread31, label %.lr.ph

.lr.ph:                                           ; preds = %php_charmask.exit, %bb.y
  %.298.i.i43 = phi ptr [ %i.bl, %bb.y ], [ %i.x, %php_charmask.exit ] ; 3 uses
  %i.bh = load i8, ptr %.298.i.i43, align 1, !tbaa !32
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %.not114.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not114.i.i, label %.thread31, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.298.i.i43, i64 1 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.bl, %i.aa
  br i1 %.not113.i.i, label %.thread31, label %.lr.ph, !llvm.loop !6

bb.z:                                             ; preds = %.critedge.i
  %i.bm = getelementptr i8, ptr %i.u, i64 24      ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.bo  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not109.i.i52 = icmp samesign eq i64 %i.bo, 0
  br i1 %.not109.i.i52, label %.thread31, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.z, %bb.ab
  %.4100.i.i53 = phi ptr [ %i.bu, %bb.ab ], [ %i.bm, %bb.z ] ; 4 uses
  %i.bq = load i8, ptr %.4100.i.i53, align 1, !tbaa !32
  %.fr38 = freeze i8 %i.bq                        ; 3 uses
  %i.br = icmp ult i8 %.fr38, 33
  br i1 %i.br, label %bb.aa, label %.thread31

bb.aa:                                            ; preds = %.lr.ph54
  %i.bs = and i8 %.fr38, 59
  %i.bt = icmp eq i8 %i.bs, 9
  br i1 %i.bt, label %bb.ab, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.aa
  switch i8 %.fr38, label %.thread31 [
    i8 32, label %bb.ab
    i8 11, label %bb.ab
    i8 10, label %bb.ab
    i8 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.4100.i.i53, i64 1 ; 2 uses
  %.not109.i.i = icmp eq ptr %i.bu, %i.bp
  br i1 %.not109.i.i, label %.thread31, label %.lr.ph54

.thread31:                                        ; preds = %.lr.ph, %bb.y, %.lr.ph48, %bb.h, %bb.ab, %switch.early.test.i.i, %.lr.ph54, %php_charmask.exit, %bb.g, %bb.z
  %i.bv = phi ptr [ %i.aa, %bb.g ], [ %i.bp, %bb.z ], [ %i.bp, %bb.ab ], [ %i.aa, %.lr.ph48 ], [ %i.aa, %php_charmask.exit ], [ %i.bp, %.lr.ph54 ], [ %i.bp, %switch.early.test.i.i ], [ %i.aa, %bb.h ], [ %i.aa, %bb.y ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.bw = phi ptr [ %i.y, %bb.g ], [ %i.bn, %bb.z ], [ %i.bn, %bb.ab ], [ %i.y, %.lr.ph48 ], [ %i.y, %php_charmask.exit ], [ %i.bn, %.lr.ph54 ], [ %i.bn, %switch.early.test.i.i ], [ %i.y, %bb.h ], [ %i.y, %bb.y ], [ %i.y, %.lr.ph ]
  %.7.i.i = phi ptr [ %i.x, %bb.g ], [ %i.bm, %bb.z ], [ %i.bp, %bb.ab ], [ %i.aa, %bb.h ], [ %i.x, %php_charmask.exit ], [ %.4100.i.i53, %switch.early.test.i.i ], [ %.4100.i.i53, %.lr.ph54 ], [ %.096.i.i47, %.lr.ph48 ], [ %i.aa, %bb.y ], [ %.298.i.i43, %.lr.ph ] ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !41
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %.7.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = icmp eq i64 %i.bx, %i.ca
  br i1 %i.cb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.thread31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = and i32 %i.cd, 64
  %.not.i4 = icmp eq i32 %i.ce, 0
  br i1 %.not.i4, label %bb.ad, label %php_trim_int.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.cf = load i32, ptr %i.u, align 4, !tbaa !42
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.u, align 4, !tbaa !42
  br label %php_trim_int.exit.i

bb.ae:                                            ; preds = %.thread31
  %i.ch = icmp eq ptr %i.bv, %.7.i.i
  br i1 %i.ch, label %bb.af, label %zend_string_alloc.exit

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  br label %php_trim_int.exit.i

zend_string_alloc.exit:                           ; preds = %bb.ae
  %i.cj = and i64 %i.ca, -8
  %i.ck = add i64 %i.cj, 32
  %i.cl = call noalias ptr @_emalloc(i64 noundef %i.ck) #27 ; 6 uses
  store i32 1, ptr %i.cl, align 4, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 22, ptr %i.cm, align 4, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.ca, ptr %i.co, align 8, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr nonnull align 1 %.7.i.i, i64 %i.ca, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ca
  store i8 0, ptr %i.cq, align 1, !tbaa !32
  br label %php_trim_int.exit.i

php_trim_int.exit.i:                              ; preds = %bb.ad, %bb.ac, %zend_string_alloc.exit, %bb.af
  %.0102.i.i = phi ptr [ %i.cl, %zend_string_alloc.exit ], [ %i.ci, %bb.af ], [ %i.u, %bb.ac ], [ %i.u, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %.0102.i.i, ptr %1, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0102.i.i, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = and i32 %i.cs, 64
  %.not58.i = icmp eq i32 %i.ct, 0
  %i.cu = select i1 %.not58.i, i32 262, i32 6
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !32
  br label %php_do_trim.exit

php_do_trim.exit:                                 ; preds = %.thread18, %php_trim_int.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_wordwrap(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 75, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32   ; 4 uses
  %i.g = add i32 %i.f, -5
  %or.cond243 = icmp ult i32 %i.g, -4
  br i1 %or.cond243, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 4) #26
  br label %.thread298

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.l, ptr %i.b, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i32 noundef 1) #26
  br i1 %i.m, label %bb.d, label %.thread298, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.n = icmp eq i32 %i.f, 1
  br i1 %i.n, label %.critedge, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !32
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !34

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.e
  %i.s = load i64, ptr %i.o, align 8, !tbaa !32
  store i64 %i.s, ptr %i.c, align 8, !tbaa !46
  br label %bb.f

zend_parse_arg_long_ex.exit:                      ; preds = %bb.e
  %i.t = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, i32 noundef 2) #26
  br i1 %i.t, label %bb.f, label %.thread298, !prof !37

bb.f:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.u = icmp samesign ult i32 %i.f, 3
  br i1 %i.u, label %.critedge, label %bb.g, !prof !45

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load i8, ptr %i.w, align 8, !tbaa !32
  %i.y = icmp eq i8 %i.x, 6
  br i1 %i.y, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !34

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.g
  %i.z = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, i32 noundef range(i32 1, 0) 3) #26
  br i1 %i.z, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_string.exit, !prof !56

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread298

end_hunk_1
