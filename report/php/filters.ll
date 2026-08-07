inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@strfilter_convert_create:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !28
  %i.ew = icmp eq i8 %i.ev, 6
  br i1 %i.ew, label %bb.bu, label %bb.bv, !prof !45

bb.bu:                                            ; preds = %bb.bt
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !28
  br label %zval_get_tmp_string.exit.i85.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.ey = tail call ptr @zval_get_string_func(ptr noundef nonnull %i.et) #17 ; 2 uses
  br label %zval_get_tmp_string.exit.i85.i.i

zval_get_tmp_string.exit.i85.i.i:                 ; preds = %bb.bv, %bb.bu
  %.01.i86.i.i = phi ptr [ null, %bb.bu ], [ %i.ey, %bb.bv ] ; 5 uses
  %.0.i.i87.i.i = phi ptr [ %i.ex, %bb.bu ], [ %i.ey, %bb.bv ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i87.i.i, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !46
  %i.fb = add i64 %i.fa, 1
  %i.fc = tail call noalias ptr @_emalloc(i64 noundef %i.fb) #18 ; 5 uses
  %i.fd = load i64, ptr %i.ez, align 8, !tbaa !46 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i87.i.i, i64 24
  %i.ff = add i64 %i.fd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fc, ptr nonnull align 8 %i.fe, i64 %i.ff, i1 false)
  %.not.i.i88.i.i = icmp eq ptr %.01.i86.i.i, null
  br i1 %.not.i.i88.i.i, label %php_conv_get_string_prop_ex.exit91.i.i, label %bb.bw, !prof !45

bb.bw:                                            ; preds = %zval_get_tmp_string.exit.i85.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.01.i86.i.i, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !28
  %i.fi = and i32 %i.fh, 64
  %.not.i51.i89.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i51.i89.i.i, label %bb.bx, label %php_conv_get_string_prop_ex.exit91.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.fj = load i32, ptr %.01.i86.i.i, align 4, !tbaa !49 ; 2 uses
  %i.fk = icmp ne i32 %i.fj, 0
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add i32 %i.fj, -1                       ; 2 uses
  store i32 %i.fl, ptr %.01.i86.i.i, align 4, !tbaa !49
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.by, label %php_conv_get_string_prop_ex.exit91.i.i

bb.by:                                            ; preds = %bb.bx
  tail call void @_efree(ptr noundef nonnull %.01.i86.i.i) #17
  br label %php_conv_get_string_prop_ex.exit91.i.i

php_conv_get_string_prop_ex.exit91.i.i:           ; preds = %bb.by, %bb.bx, %bb.bw, %zval_get_tmp_string.exit.i85.i.i, %bb.bs, %bb.br
  %.0113.i.i = phi ptr [ null, %bb.br ], [ null, %bb.bs ], [ %i.fc, %zval_get_tmp_string.exit.i85.i.i ], [ %i.fc, %bb.by ], [ %i.fc, %bb.bx ], [ %i.fc, %bb.bw ] ; 4 uses
  %.0111.i.i = phi i64 [ undef, %bb.br ], [ 0, %bb.bs ], [ %i.fd, %zval_get_tmp_string.exit.i85.i.i ], [ %i.fd, %bb.by ], [ %i.fd, %bb.bx ], [ %i.fd, %bb.bw ]
  br i1 %i.s, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %php_conv_get_string_prop_ex.exit91.i.i
  %i.fn = tail call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #18
  br label %bb.cb

bb.ca:                                            ; preds = %php_conv_get_string_prop_ex.exit91.i.i
  %i.fo = tail call noalias ptr @_emalloc_56() #17
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.fp = phi ptr [ %i.fn, %bb.bz ], [ %i.fo, %bb.ca ] ; 16 uses
  %.not52.i.i = icmp eq ptr %.0113.i.i, null
  store ptr @php_conv_qprint_decode_convert, ptr %i.fp, align 8, !tbaa !75
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr @php_conv_qprint_decode_dtor, ptr %i.fq, align 8, !tbaa !77
  br i1 %.not52.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store i32 0, ptr %i.fr, align 8, !tbaa !78
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  store i32 0, ptr %i.fs, align 4, !tbaa !79
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 52
  store i32 0, ptr %i.ft, align 4, !tbaa !80
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store i32 0, ptr %i.fu, align 8, !tbaa !81
  br i1 %i.s, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.fv = tail call noalias ptr @__zend_strdup(ptr noundef nonnull %.0113.i.i) #17
  br label %php_conv_qprint_decode_ctor.exit.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.fw = tail call noalias ptr @_estrdup(ptr noundef nonnull %.0113.i.i) #17
  br label %php_conv_qprint_decode_ctor.exit.i.i

php_conv_qprint_decode_ctor.exit.i.i:             ; preds = %bb.ce, %bb.cd
  %i.fx = phi ptr [ %i.fw, %bb.ce ], [ %i.fv, %bb.cd ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !82
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 %.0111.i.i, ptr %i.fz, align 8, !tbaa !83
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i32 1, ptr %i.ga, align 8, !tbaa !84
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  store i8 %i.t, ptr %i.gb, align 4, !tbaa !85
  tail call void @_efree(ptr noundef nonnull %.0113.i.i) #17
  br label %bb.cp

bb.cf:                                            ; preds = %bb.cb
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 52
  store i32 0, ptr %i.gc, align 4, !tbaa !80
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store i32 0, ptr %i.gd, align 8, !tbaa !81
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ge, i8 0, i64 28, i1 false)
  store i8 %i.t, ptr %i.gf, align 4, !tbaa !85
  br label %bb.cp

bb.cg:                                            ; preds = %bb.bl
  tail call void @_efree(ptr noundef nonnull %.1118.i.i) #17
  %.not58.i.i = icmp eq ptr %i.dv, null
  br i1 %.not58.i.i, label %thread-pre-split.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.s, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  tail call void @free(ptr noundef nonnull %i.dv) #17
  br label %thread-pre-split.i

bb.cj:                                            ; preds = %bb.ch
  tail call void @_efree(ptr noundef nonnull %i.dv) #17
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.cj, %bb.ci, %bb.cg
  %.pr.i = load ptr, ptr %i.y, align 8, !tbaa !39
  br label %bb.ck

bb.ck:                                            ; preds = %thread-pre-split.i, %bb.q
  %i.gg = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.x, %bb.q ] ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.gg, null
  br i1 %.not.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.s, label %.thread29, label %.thread

.thread29:                                        ; preds = %bb.cl
  tail call void @free(ptr noundef nonnull %i.gg) #17
  br label %bb.cn

.thread:                                          ; preds = %bb.cl
  tail call void @_efree(ptr noundef nonnull %i.gg) #17
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  br i1 %.not25, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.thread29, %bb.cm
  tail call void @free(ptr noundef nonnull %i.h) #17
  br label %bb.cq

bb.co:                                            ; preds = %.thread, %bb.cm
  tail call void @_efree(ptr noundef nonnull %i.h) #17
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cf, %php_conv_qprint_decode_ctor.exit.i.i, %bb.bq, %bb.bp, %bb.an, %bb.aj, %php_conv_base64_encode_ctor.exit.i.i
  %.043.i.ph.i = phi ptr [ %i.dv, %bb.bp ], [ %i.dv, %bb.bq ], [ %i.fp, %php_conv_qprint_decode_ctor.exit.i.i ], [ %i.br, %php_conv_base64_encode_ctor.exit.i.i ], [ %i.fp, %bb.cf ], [ %i.ce, %bb.an ], [ %i.bx, %bb.aj ]
  store ptr %.043.i.ph.i, ptr %i.h, align 8, !tbaa !30
  %i.gh = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @strfilter_convert_ops, ptr noundef nonnull %i.h, i8 noundef zeroext %2) #17
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.co, %bb.d, %bb.cp, %bb.c
  %.021 = phi ptr [ null, %bb.c ], [ %i.gh, %bb.cp ], [ null, %bb.d ], [ null, %bb.co ], [ null, %bb.cn ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare noalias ptr @__zend_strdup(ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare i64 @zval_get_long_func(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal i32 @php_conv_base64_encode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 0, ptr %i.b, align 4, !tbaa !86
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !86
  %i.g = load ptr, ptr %3, align 8, !tbaa !40     ; 10 uses
  %i.h = load i64, ptr %4, align 8, !tbaa !25     ; 10 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !54   ; 8 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !53
  switch i64 %i.j, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.c
    i64 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.i, 4
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %.not71.i = icmp eq ptr %i.m, null
  br i1 %.not71.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  br i1 %i.p, label %php_conv_base64_encode_flush.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  %i.q = load i64, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.s = sub i64 %i.h, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.058.i = phi ptr [ %i.r, %bb.f ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 6 uses
  %.055.i = phi i64 [ %i.s, %bb.f ], [ %i.h, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.u, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = icmp ult i64 %.055.i, 4
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store volatile i32 2, ptr %i.a, align 4, !tbaa !86
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = lshr i8 %i.x, 2
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.058.i, i64 1
  store i8 %i.ab, ptr %.058.i, align 1, !tbaa !28
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !28
  %i.ae = shl i8 %i.ad, 4
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 16, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 2
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.058.i, i64 3
  store i8 61, ptr %i.ai, align 1, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i8 61, ptr %i.aj, align 1, !tbaa !28
  store i64 0, ptr %i.f, align 8, !tbaa !53
  %i.al = add i64 %.055.i, -4
  %i.am = add i32 %.0.i, -4
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.an = icmp ult i32 %i.i, 4
  br i1 %i.an, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57 ; 3 uses
  %i.as = icmp ult i64 %i.h, %i.ar
  br i1 %i.as, label %php_conv_base64_encode_flush.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.ap, i64 %i.ar, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.g, i64 %i.ar
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.av = sub i64 %i.h, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j
  %.159.i = phi ptr [ %i.at, %bb.m ], [ %i.g, %bb.k ], [ %i.g, %bb.j ] ; 6 uses
  %.156.i = phi i64 [ %i.av, %bb.m ], [ %i.h, %bb.k ], [ %i.h, %bb.j ] ; 3 uses
  %.1.i = phi i32 [ %i.ax, %bb.m ], [ %i.i, %bb.k ], [ %i.i, %bb.j ] ; 2 uses
  %i.ay = icmp ult i64 %.156.i, 4
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store volatile i32 2, ptr %i.a, align 4, !tbaa !86
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = lshr i8 %i.ba, 2
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.be, ptr %.159.i, align 1, !tbaa !28
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !28
  %i.bj = tail call i8 @llvm.fshl.i8(i8 %i.bg, i8 %i.bi, i8 4)
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.bm, ptr %i.bf, align 1, !tbaa !28
  %i.bo = load i8, ptr %i.bh, align 2, !tbaa !28
  %i.bp = shl i8 %i.bo, 2
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 61, ptr %i.bt, align 1, !tbaa !28
  store i64 0, ptr %i.f, align 8, !tbaa !53
  %i.bv = add i64 %.156.i, -4
  %i.bw = add i32 %.1.i, -4
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  store volatile i32 1, ptr %i.a, align 4, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.b
  %.260.i = phi ptr [ %i.g, %bb.q ], [ %i.g, %bb.b ], [ %.058.i, %bb.h ], [ %i.ak, %bb.i ], [ %.159.i, %bb.o ], [ %i.bu, %bb.p ]
  %.257.i = phi i64 [ %i.h, %bb.q ], [ %i.h, %bb.b ], [ %.055.i, %bb.h ], [ %i.al, %bb.i ], [ %.156.i, %bb.o ], [ %i.bv, %bb.p ]
  %.2.i = phi i32 [ %i.i, %bb.q ], [ %i.i, %bb.b ], [ %.0.i, %bb.h ], [ %i.am, %bb.i ], [ %.1.i, %bb.o ], [ %i.bw, %bb.p ]
  store ptr %.260.i, ptr %3, align 8, !tbaa !40
  store i64 %.257.i, ptr %4, align 8, !tbaa !25
  store i32 %.2.i, ptr %i.e, align 8, !tbaa !54
  %.0..0..0..0..0..0.25.i = load volatile i32, ptr %i.a, align 4, !tbaa !86
  br label %php_conv_base64_encode_flush.exit

php_conv_base64_encode_flush.exit:                ; preds = %bb.e, %bb.l, %bb.r
  %.061.i = phi i32 [ %.0..0..0..0..0..0.25.i, %bb.r ], [ 2, %bb.e ], [ 2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ap

bb.s:                                             ; preds = %bb.a
  %i.bx = load ptr, ptr %3, align 8, !tbaa !40    ; 11 uses
  %i.by = load i64, ptr %4, align 8, !tbaa !25    ; 11 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !40    ; 11 uses
  %i.ca = load i64, ptr %2, align 8, !tbaa !25    ; 7 uses
  %i.cb = load i32, ptr %i.e, align 8, !tbaa !54  ; 9 uses
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !53
  switch i64 %i.cc, label %bb.ah [
    i64 1, label %bb.t
    i64 2, label %bb.aa
  ]

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp ugt i64 %i.ca, 1
  br i1 %i.cd, label %bb.u, label %.preheader

bb.u:                                             ; preds = %bb.t
  %i.ce = icmp ult i32 %i.cb, 4
  br i1 %i.ce, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56 ; 2 uses
  %.not150 = icmp eq ptr %i.cg, null
  br i1 %.not150, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !57 ; 3 uses
  %i.cj = icmp ult i64 %i.by, %i.ci
  br i1 %i.cj, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !57
  %i.cm = sub i64 %i.by, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %.0124 = phi i64 [ %i.cm, %bb.x ], [ %i.by, %bb.v ], [ %i.by, %bb.u ] ; 3 uses
  %.0110 = phi ptr [ %i.ck, %bb.x ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ] ; 6 uses
  %.0 = phi i32 [ %i.co, %bb.x ], [ %i.cb, %bb.v ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cp = icmp ult i64 %.0124, 4
  br i1 %i.cp, label %.loopexit.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cs = lshr i8 %i.cr, 2
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %.0110, i64 1
  store i8 %i.cv, ptr %.0110, align 1, !tbaa !28
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cy = load i8, ptr %i.bz, align 1, !tbaa !28
  %i.cz = tail call i8 @llvm.fshl.i8(i8 %i.cx, i8 %i.cy, i8 4)
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %.0110, i64 2
  store i8 %i.dc, ptr %i.cw, align 1, !tbaa !28
  %i.de = load i8, ptr %i.bz, align 1, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dh = tail call i8 @llvm.fshl.i8(i8 %i.de, i8 %i.dg, i8 2)
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %.0110, i64 3
  store i8 %i.dk, ptr %i.dd, align 1, !tbaa !28
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !28
  br label %.sink.split

bb.aa:                                            ; preds = %bb.s
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = icmp ult i32 %i.cb, 4
  br i1 %i.dq, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !56 ; 2 uses
  %.not149 = icmp eq ptr %i.ds, null
  br i1 %.not149, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !57 ; 3 uses
  %i.dv = icmp ult i64 %i.by, %i.du
  br i1 %i.dv, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.ds, i64 %i.du, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.bx, i64 %i.du
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !57
  %i.dy = sub i64 %i.by, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !55
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %.1125 = phi i64 [ %i.dy, %bb.ae ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ] ; 3 uses
  %.1111 = phi ptr [ %i.dw, %bb.ae ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ab ] ; 6 uses
  %.1 = phi i32 [ %i.ea, %bb.ae ], [ %i.cb, %bb.ac ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.eb = icmp ult i64 %.1125, 4
  br i1 %i.eb, label %.loopexit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !28
  %i.ee = lshr i8 %i.ed, 2
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %.1111, i64 1
  store i8 %i.eh, ptr %.1111, align 1, !tbaa !28
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !28
  %i.em = tail call i8 @llvm.fshl.i8(i8 %i.ej, i8 %i.el, i8 4)
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %.1111, i64 2
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !28
  %i.er = load i8, ptr %i.ek, align 2, !tbaa !28
  %i.es = load i8, ptr %i.bz, align 1, !tbaa !28
  %i.et = tail call i8 @llvm.fshl.i8(i8 %i.er, i8 %i.es, i8 2)
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %.1111, i64 3
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !28
  %i.ey = load i8, ptr %i.bz, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !28
  store i8 %i.fb, ptr %i.ex, align 1, !tbaa !28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ag
  %.1125.sink = phi i64 [ %.1125, %bb.ag ], [ %.0124, %bb.z ]
  %.sink252 = phi i64 [ 1, %bb.ag ], [ 2, %bb.z ]
  %.sink = phi i64 [ -1, %bb.ag ], [ -2, %bb.z ]
  %.1.sink = phi i32 [ %.1, %bb.ag ], [ %.0, %bb.z ]
  %.1111.pn = phi ptr [ %.1111, %bb.ag ], [ %.0110, %bb.z ]
  %.2112.ph = getelementptr inbounds nuw i8, ptr %.1111.pn, i64 4
  %i.fc = add i64 %.1125.sink, -4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink252
  %i.fe = add i64 %i.ca, %.sink
  store i64 0, ptr %i.f, align 8, !tbaa !53
  %i.ff = add i32 %.1.sink, -4
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.s
  %.2126 = phi i64 [ %i.by, %bb.s ], [ %i.fc, %.sink.split ] ; 2 uses
  %.0120 = phi i64 [ %i.ca, %bb.s ], [ %i.fe, %.sink.split ] ; 3 uses
  %.0116 = phi ptr [ %i.bz, %bb.s ], [ %i.fd, %.sink.split ] ; 2 uses
  %.2112 = phi ptr [ %i.bx, %bb.s ], [ %.2112.ph, %.sink.split ] ; 2 uses
  %.2 = phi i32 [ %i.cb, %bb.s ], [ %i.ff, %.sink.split ] ; 2 uses
  %i.fg = icmp ugt i64 %.0120, 2
  br i1 %i.fg, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.ai

.preheader:                                       ; preds = %bb.an, %bb.t, %bb.ah
  %.3127.lcssa = phi i64 [ %.2126, %bb.ah ], [ %i.by, %bb.t ], [ %i.ha, %bb.an ] ; 3 uses
  %.1121.lcssa = phi i64 [ %.0120, %bb.ah ], [ %i.ca, %bb.t ], [ %i.gz, %bb.an ] ; 4 uses
  %.1117.lcssa = phi ptr [ %.0116, %bb.ah ], [ %i.bz, %bb.t ], [ %i.gy, %bb.an ] ; 2 uses
  %.3113.lcssa = phi ptr [ %.2112, %bb.ah ], [ %i.bx, %bb.t ], [ %i.gx, %bb.an ] ; 3 uses
  %.3.lcssa = phi i32 [ %.2, %bb.ah ], [ %i.cb, %bb.t ], [ %i.hb, %bb.an ] ; 3 uses
  %.not151172 = icmp eq i64 %.1121.lcssa, 0
  br i1 %.not151172, label %.loopexit, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 5 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !53
  br label %.lr.ph175.a

.lr.ph175.a:                                      ; preds = %.lr.ph175.a, %.lr.ph175
  %6 = phi i64 [ %.promoted, %.lr.ph175 ], [ %i.fm, %.lr.ph175.a ] ; 2 uses
  %.2118174.prol = phi ptr [ %.1117.lcssa, %.lr.ph175 ], [ %i.fk, %.lr.ph175.a ] ; 2 uses
  %.2122173.prol = phi i64 [ %.1121.lcssa, %.lr.ph175 ], [ %7, %.lr.ph175.a ]
  %prol.iter = phi i64 [ 0, %.lr.ph175 ], [ %prol.iter.next, %.lr.ph175.a ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.2118174.prol, i64 1 ; 3 uses
  %i.fl = load i8, ptr %.2118174.prol, align 1, !tbaa !28
  %i.fm = add i64 %6, 1                           ; 3 uses
  store i64 %i.fm, ptr %i.f, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 %6
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !28
  %7 = add nsw i64 %.2122173.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %.not151 = icmp eq i64 %prol.iter.next, %.1121.lcssa
  br i1 %.not151, label %.prol.loopexit, label %.lr.ph175.a, !llvm.loop !87

.prol.loopexit:                                   ; preds = %.lr.ph175.a
  %8 = icmp ult i64 %.1121.lcssa, 4
  br i1 %8, label %.loopexit, label %bb.ao

bb.ai:                                            ; preds = %.lr.ph, %bb.an
  %.3167 = phi i32 [ %.2, %.lr.ph ], [ %i.hb, %bb.an ] ; 4 uses
  %.3113166 = phi ptr [ %.2112, %.lr.ph ], [ %i.gx, %bb.an ] ; 5 uses
  %.1117165 = phi ptr [ %.0116, %.lr.ph ], [ %i.gy, %bb.an ] ; 7 uses
  %.1121164 = phi i64 [ %.0120, %.lr.ph ], [ %i.gz, %bb.an ] ; 3 uses
  %.3127163 = phi i64 [ %.2126, %.lr.ph ], [ %i.ha, %bb.an ] ; 5 uses
  %i.fo = icmp ult i32 %.3167, 4
  br i1 %i.fo, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !56 ; 2 uses
  %.not152 = icmp eq ptr %i.fp, null
  br i1 %.not152, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = load i64, ptr %i.fi, align 8, !tbaa !57 ; 3 uses
  %i.fr = icmp ult i64 %.3127163, %i.fq
  br i1 %i.fr, label %.loopexit.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3113166, ptr nonnull align 1 %i.fp, i64 %i.fq, i1 false)
  %i.fs = getelementptr inbounds i8, ptr %.3113166, i64 %i.fq
  %i.ft = load i64, ptr %i.fi, align 8, !tbaa !57
  %i.fu = sub i64 %.3127163, %i.ft
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.4128 = phi i64 [ %i.fu, %bb.al ], [ %.3127163, %bb.aj ], [ %.3127163, %bb.ai ] ; 3 uses
  %.4114 = phi ptr [ %i.fs, %bb.al ], [ %.3113166, %bb.aj ], [ %.3113166, %bb.ai ] ; 6 uses
  %.4 = phi i32 [ %i.fv, %bb.al ], [ %.3167, %bb.aj ], [ %.3167, %bb.ai ] ; 2 uses
  %i.fw = icmp ult i64 %.4128, 4
  br i1 %i.fw, label %.loopexit.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = load i8, ptr %.1117165, align 1, !tbaa !28
  %i.fy = lshr i8 %i.fx, 2
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !28
  %i.gc = getelementptr inbounds nuw i8, ptr %.4114, i64 1
  store i8 %i.gb, ptr %.4114, align 1, !tbaa !28
  %i.gd = load i8, ptr %.1117165, align 1, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %.1117165, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !28
  %i.gg = tail call i8 @llvm.fshl.i8(i8 %i.gd, i8 %i.gf, i8 4)
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !28
  %i.gk = getelementptr inbounds nuw i8, ptr %.4114, i64 2
  store i8 %i.gj, ptr %i.gc, align 1, !tbaa !28
  %i.gl = load i8, ptr %i.ge, align 1, !tbaa !28
  %i.gm = getelementptr inbounds nuw i8, ptr %.1117165, i64 2 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !28
  %i.go = tail call i8 @llvm.fshl.i8(i8 %i.gl, i8 %i.gn, i8 2)
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !28
  %i.gs = getelementptr inbounds nuw i8, ptr %.4114, i64 3
  store i8 %i.gr, ptr %i.gk, align 1, !tbaa !28
  %i.gt = load i8, ptr %i.gm, align 1, !tbaa !28
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !28
  %i.gx = getelementptr inbounds nuw i8, ptr %.4114, i64 4 ; 2 uses
  store i8 %i.gw, ptr %i.gs, align 1, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %.1117165, i64 3 ; 2 uses
  %i.gz = add i64 %.1121164, -3                   ; 3 uses
  %i.ha = add i64 %.4128, -4                      ; 2 uses
  %i.hb = add i32 %.4, -4                         ; 2 uses
  %i.hc = icmp ugt i64 %i.gz, 2
  br i1 %i.hc, label %bb.ai, label %.preheader, !llvm.loop !89

bb.ao:                                            ; preds = %.prol.loopexit, %bb.ao
  %9 = phi i64 [ %i.hf, %bb.ao ], [ %i.fm, %.prol.loopexit ] ; 5 uses
  %.2118174 = phi ptr [ %i.hd, %bb.ao ], [ %i.fk, %.prol.loopexit ] ; 5 uses
  %.2122173 = phi i64 [ %22, %bb.ao ], [ %7, %.prol.loopexit ]
  %10 = getelementptr inbounds nuw i8, ptr %.2118174, i64 1
  %11 = load i8, ptr %.2118174, align 1, !tbaa !28
  %12 = add i64 %9, 1                             ; 2 uses
  store i64 %12, ptr %i.f, align 8, !tbaa !53
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 %9
  store i8 %11, ptr %13, align 1, !tbaa !28
  %14 = getelementptr inbounds nuw i8, ptr %.2118174, i64 2
  %15 = load i8, ptr %10, align 1, !tbaa !28
  %16 = add i64 %9, 2                             ; 2 uses
  store i64 %16, ptr %i.f, align 8, !tbaa !53
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 %12
  store i8 %15, ptr %17, align 1, !tbaa !28
  %18 = getelementptr inbounds nuw i8, ptr %.2118174, i64 3
  %19 = load i8, ptr %14, align 1, !tbaa !28
  %20 = add i64 %9, 3                             ; 2 uses
  store i64 %20, ptr %i.f, align 8, !tbaa !53
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 %16
  store i8 %19, ptr %21, align 1, !tbaa !28
  %i.hd = getelementptr inbounds nuw i8, ptr %.2118174, i64 4 ; 2 uses
  %i.he = load i8, ptr %18, align 1, !tbaa !28
  %i.hf = add i64 %9, 4                           ; 2 uses
  store i64 %i.hf, ptr %i.f, align 8, !tbaa !53
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 %20
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !28
  %22 = add nsw i64 %.2122173, -4                 ; 2 uses
  %.not151.1 = icmp eq i64 %22, 0
  br i1 %.not151.1, label %.loopexit, label %bb.ao, !llvm.loop !90

.loopexit.sink.split:                             ; preds = %bb.am, %bb.ak, %bb.af, %bb.y
  %.5129.ph = phi i64 [ %.1125, %bb.af ], [ %.0124, %bb.y ], [ %.3127163, %bb.ak ], [ %.4128, %bb.am ]
  %.3123.ph = phi i64 [ %i.ca, %bb.af ], [ %i.ca, %bb.y ], [ %.1121164, %bb.ak ], [ %.1121164, %bb.am ]
  %.3119.ph = phi ptr [ %i.bz, %bb.af ], [ %i.bz, %bb.y ], [ %.1117165, %bb.ak ], [ %.1117165, %bb.am ]
  %.5115.ph = phi ptr [ %.1111, %bb.af ], [ %.0110, %bb.y ], [ %.3113166, %bb.ak ], [ %.4114, %bb.am ]
  %.5.ph = phi i32 [ %.1, %bb.af ], [ %.0, %bb.y ], [ %.3167, %bb.ak ], [ %.4, %bb.am ]
  store volatile i32 2, ptr %i.b, align 4, !tbaa !86
  br label %.loopexit

.loopexit:                                        ; preds = %.prol.loopexit, %bb.ao, %.loopexit.sink.split, %bb.aa, %.preheader
  %.5129 = phi i64 [ %.5129.ph, %.loopexit.sink.split ], [ %.3127.lcssa, %.preheader ], [ %i.by, %bb.aa ], [ %.3127.lcssa, %bb.ao ], [ %.3127.lcssa, %.prol.loopexit ]
  %.3123 = phi i64 [ %.3123.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.aa ], [ 0, %bb.ao ], [ 0, %.prol.loopexit ]
  %.3119 = phi ptr [ %.3119.ph, %.loopexit.sink.split ], [ %.1117.lcssa, %.preheader ], [ %i.bz, %bb.aa ], [ %i.fk, %.prol.loopexit ], [ %i.hd, %bb.ao ]
  %.5115 = phi ptr [ %.5115.ph, %.loopexit.sink.split ], [ %.3113.lcssa, %.preheader ], [ %i.bx, %bb.aa ], [ %.3113.lcssa, %bb.ao ], [ %.3113.lcssa, %.prol.loopexit ]
  %.5 = phi i32 [ %.5.ph, %.loopexit.sink.split ], [ %.3.lcssa, %.preheader ], [ %i.cb, %bb.aa ], [ %.3.lcssa, %bb.ao ], [ %.3.lcssa, %.prol.loopexit ]
  store ptr %.3119, ptr %1, align 8, !tbaa !40
  store i64 %.3123, ptr %2, align 8, !tbaa !25
  store ptr %.5115, ptr %3, align 8, !tbaa !40
  store i64 %.5129, ptr %4, align 8, !tbaa !25
  store i32 %.5, ptr %i.e, align 8, !tbaa !54
  %.0..0..0..0.61 = load volatile i32, ptr %i.b, align 4, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ad, %bb.w, %.loopexit, %php_conv_base64_encode_flush.exit
  %.0130 = phi i32 [ %.061.i, %php_conv_base64_encode_flush.exit ], [ %.0..0..0..0.61, %.loopexit ], [ 2, %bb.w ], [ 2, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_base64_encode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i8, ptr %i.e, align 4, !tbaa !59, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @php_conv_base64_decode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #10 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !91
  %.not141 = icmp eq i32 %i.d, 0
  br i1 %.not141, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92
  %i.g = icmp eq i32 %i.f, 0
  %spec.select = select i1 %i.g, i32 0, i32 4
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !40
  %i.i = load ptr, ptr %3, align 8, !tbaa !40
  %i.j = load i64, ptr %2, align 8, !tbaa !25
  %i.k = load i64, ptr %4, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.outer

.outer:                                           ; preds = %bb.q, %bb.d
  %.0119.ph = phi i32 [ %.4123, %bb.q ], [ %i.m, %bb.d ]
  %.0112.ph = phi i32 [ %.4116, %bb.q ], [ %i.o, %bb.d ]
  %.097.ph = phi ptr [ %.299, %bb.q ], [ %i.h, %bb.d ]
  %.095.ph = phi ptr [ %i.aw, %bb.q ], [ %i.i, %bb.d ] ; 3 uses
  %.091.ph = phi i64 [ %.293, %bb.q ], [ %i.j, %bb.d ]
  %.089.ph = phi i64 [ %i.ax, %bb.q ], [ %i.k, %bb.d ] ; 6 uses
  %.088.ph = phi i32 [ %.2, %bb.q ], [ %i.q, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %.thread148
  %.0119 = phi i32 [ %.4123, %.thread148 ], [ %.0119.ph, %.outer ] ; 10 uses
  %.0112 = phi i32 [ %.4116, %.thread148 ], [ %.0112.ph, %.outer ] ; 3 uses
  %.0105 = phi i32 [ %.4109, %.thread148 ], [ 0, %.outer ] ; 2 uses
  %.0101 = phi i32 [ %.4, %.thread148 ], [ 8, %.outer ] ; 3 uses
  %.097 = phi ptr [ %.299, %.thread148 ], [ %.097.ph, %.outer ] ; 5 uses
  %.091 = phi i64 [ %.293, %.thread148 ], [ %.091.ph, %.outer ] ; 4 uses
  %.088 = phi i32 [ %.2, %.thread148 ], [ %.088.ph, %.outer ] ; 4 uses
  %.not = icmp ult i32 %.0101, %.0112
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.s = sub nuw i32 %.0112, %.0101               ; 3 uses
  %i.t = lshr i32 %.0119, %i.s
  %i.u = sub i32 16, %i.s
  %i.v = lshr i32 65535, %i.u
  %i.w = and i32 %i.v, %.0119
  %.1106146 = or i32 %i.t, %.0105
  br label %.thread148

bb.f:                                             ; preds = %bb.e
  %i.x = sub nuw nsw i32 %.0101, %.0112           ; 13 uses
  %i.y = shl i32 %.0119, %i.x
  %.1106 = or i32 %i.y, %.0105                    ; 9 uses
  %.not134 = icmp eq i32 %i.x, 0
  br i1 %.not134, label %.thread148, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %.091, 0
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.097, i64 1 ; 7 uses
  %i.ab = load i8, ptr %.097, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @b64_tbl_dec, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !86 ; 5 uses
  %i.af = add i64 %.091, -1                       ; 7 uses
  %i.ag = and i32 %i.ae, 128
  %i.ah = or i32 %i.ag, %.088                     ; 5 uses
  %i.ai = and i32 %i.ae, 192
  %.not135 = icmp eq i32 %i.ai, 0
  %.not136 = icmp eq i32 %i.ah, 0                 ; 2 uses
  br i1 %.not135, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %.not136, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ugt i32 %i.x, 5
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.x, -6                    ; 2 uses
  %i.al = shl i32 %i.ae, %i.ak
  %i.am = or i32 %i.al, %.1106
  br label %.thread148

bb.l:                                             ; preds = %bb.j
  %i.an = sub nuw nsw i32 6, %i.x                 ; 2 uses
  %i.ao = lshr i32 %i.ae, %i.an
  %i.ap = or i32 %i.ao, %.1106
  %i.aq = lshr i32 63, %i.x
  %i.ar = and i32 %i.ae, %i.aq
  br label %.thread148

bb.m:                                             ; preds = %bb.h
  br i1 %.not136, label %.thread148, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.x, label %bb.o [
    i32 8, label %.loopexit
    i32 2, label %.loopexit
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.r, align 4, !tbaa !91
  br label %.thread148

.thread148:                                       ; preds = %bb.l, %bb.k, %bb.o, %bb.m, %.thread, %bb.f
  %.4123 = phi i32 [ %i.w, %.thread ], [ %.0119, %bb.f ], [ %i.ar, %bb.l ], [ 0, %bb.k ], [ %.0119, %bb.m ], [ %.0119, %bb.o ] ; 3 uses
  %.4116 = phi i32 [ %i.s, %.thread ], [ 0, %bb.f ], [ %i.an, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.o ] ; 3 uses
  %.4109 = phi i32 [ %.1106146, %.thread ], [ %.1106, %bb.f ], [ %i.ap, %bb.l ], [ %i.am, %bb.k ], [ %.1106, %bb.m ], [ %.1106, %bb.o ] ; 3 uses
  %.4 = phi i32 [ 0, %.thread ], [ 0, %bb.f ], [ 0, %bb.l ], [ %i.ak, %bb.k ], [ %i.x, %bb.m ], [ %i.x, %bb.o ] ; 3 uses
  %.299 = phi ptr [ %.097, %.thread ], [ %.097, %bb.f ], [ %i.aa, %bb.l ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %.293 = phi i64 [ %.091, %.thread ], [ %.091, %bb.f ], [ %i.af, %bb.l ], [ %i.af, %bb.k ], [ %i.af, %bb.m ], [ %i.af, %bb.o ] ; 3 uses
  %.2 = phi i32 [ %.088, %.thread ], [ %.088, %bb.f ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ %i.ah, %bb.o ] ; 4 uses
  %i.as = or i32 %.2, %.4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.e

bb.p:                                             ; preds = %.thread148
  %i.au = icmp eq i64 %.089.ph, 0
  br i1 %i.au, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = trunc i32 %.4109 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.095.ph, i64 1
  store i8 %i.av, ptr %.095.ph, align 1, !tbaa !28
  %i.ax = add i64 %.089.ph, -1
  br label %.outer

.loopexit:                                        ; preds = %bb.p, %bb.g, %bb.i, %bb.n, %bb.n
  %.089.lcssa = phi i64 [ %.089.ph, %bb.g ], [ %.089.ph, %bb.n ], [ %.089.ph, %bb.n ], [ %.089.ph, %bb.i ], [ 0, %bb.p ]
  %.3129 = phi i32 [ 0, %bb.g ], [ 3, %bb.n ], [ 3, %bb.n ], [ 3, %bb.i ], [ 2, %bb.p ]
  %.5124 = phi i32 [ %.0119, %bb.g ], [ %.0119, %bb.n ], [ %.0119, %bb.n ], [ %.0119, %bb.i ], [ %.4123, %bb.p ]
  %.5117 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.i ], [ %.4116, %bb.p ] ; 3 uses
  %.6111 = phi i32 [ %.1106, %bb.g ], [ %.1106, %bb.n ], [ %.1106, %bb.n ], [ %.1106, %bb.i ], [ %.4109, %bb.p ] ; 2 uses
  %.6 = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.n ], [ %i.x, %bb.n ], [ %i.x, %bb.i ], [ %.4, %bb.p ] ; 3 uses
  %.3100 = phi ptr [ %.097, %bb.g ], [ %i.aa, %bb.n ], [ %i.aa, %bb.n ], [ %i.aa, %bb.i ], [ %.299, %bb.p ]
  %.394 = phi i64 [ 0, %bb.g ], [ %i.af, %bb.n ], [ %i.af, %bb.n ], [ %i.af, %bb.i ], [ %.293, %bb.p ]
  %.3 = phi i32 [ %.088, %bb.g ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.i ], [ %.2, %bb.p ]
  %.not138 = icmp ult i32 %.5117, %.6
  %i.ay = sub i32 %.5117, %.6                     ; 2 uses
  %i.az = shl i32 %.6111, %i.ay
  %i.ba = sub nuw i32 %.6, %.5117
  %i.bb = lshr i32 %.6111, %i.ba
  %.pn140 = select i1 %.not138, i32 %i.bb, i32 %i.az
  %.6118 = add i32 %i.ay, 8
  %.6125 = or i32 %.pn140, %.5124
  store i32 %.6125, ptr %i.l, align 8, !tbaa !93
  store i32 %.6118, ptr %i.n, align 4, !tbaa !92
  store i32 %.3, ptr %i.p, align 8, !tbaa !94
  store ptr %.3100, ptr %1, align 8, !tbaa !40
  store i64 %.394, ptr %2, align 8, !tbaa !25
  store ptr %.095.ph, ptr %3, align 8, !tbaa !40
  store i64 %.089.lcssa, ptr %4, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.b, %.loopexit
  %.0 = phi i32 [ %.3129, %.loopexit ], [ 0, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @php_conv_base64_decode_dtor(ptr nofree readnone captures(none) %0) #11 {
bb.a:
  ret void
}

declare zeroext i1 @zend_is_true(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @php_conv_qprint_encode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !74
  %i.i = load i32, ptr %i.b, align 4, !tbaa !73
  %i.j = load i32, ptr %i.a, align 4, !tbaa !66
  %i.k = load ptr, ptr %1, align 8, !tbaa !40
  %i.l = load i64, ptr %2, align 8, !tbaa !25
  %i.m = load ptr, ptr %3, align 8, !tbaa !40
  %i.n = load i64, ptr %4, align 8, !tbaa !25
  %i.o = and i32 %i.g, 1
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.s = and i32 %i.g, 2
  %.not227 = icmp eq i32 %i.s, 0
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.0217.ph = phi ptr [ %i.k, %bb.b ], [ %.0217.ph.be, %.outer.backedge ] ; 3 uses
  %.0209.ph = phi ptr [ %i.m, %bb.b ], [ %.0209.ph.be, %.outer.backedge ] ; 3 uses
  %.0207.ph = phi i64 [ %i.l, %bb.b ], [ %.0207.ph.be, %.outer.backedge ] ; 3 uses
  %.0200.ph = phi i64 [ %i.n, %bb.b ], [ %.0200.ph.be, %.outer.backedge ] ; 3 uses
  %.0189.ph = phi i32 [ %i.j, %bb.b ], [ %.0189.ph.be, %.outer.backedge ] ; 3 uses
  %.0184.ph = phi i32 [ %i.i, %bb.b ], [ %.0184.ph.be, %.outer.backedge ] ; 3 uses
  %.0179.ph = phi i32 [ %i.h, %bb.b ], [ %.0179.ph.be, %.outer.backedge ] ; 3 uses
  %.0177.ph = phi i32 [ 0, %bb.b ], [ %.0177.ph.be, %.outer.backedge ] ; 4 uses
  br i1 %.not, label %.lr.ph301.split.us, label %._crit_edge

.lr.ph301.split.us:                               ; preds = %.outer
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !68   ; 3 uses
  %.not225.us358 = icmp eq ptr %i.t, null
  br i1 %.not225.us358, label %._crit_edge, label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph301.split.us, %bb.f
  %.pre404 = phi ptr [ %.pre405, %bb.f ], [ %i.t, %.lr.ph301.split.us ] ; 2 uses
  %i.u = phi ptr [ %i.bi, %bb.f ], [ %i.t, %.lr.ph301.split.us ] ; 2 uses
  %.0217294.us365 = phi ptr [ %i.bj, %bb.f ], [ %.0217.ph, %.lr.ph301.split.us ] ; 5 uses
  %.0209295.us364 = phi ptr [ %.3212.us, %bb.f ], [ %.0209.ph, %.lr.ph301.split.us ] ; 7 uses
  %.0207296.us363 = phi i64 [ %i.bk, %bb.f ], [ %.0207.ph, %.lr.ph301.split.us ] ; 5 uses
  %.0200297.us362 = phi i64 [ %.3203.us, %bb.f ], [ %.0200.ph, %.lr.ph301.split.us ] ; 7 uses
  %.0189298.us361 = phi i32 [ %.2191.us, %bb.f ], [ %.0189.ph, %.lr.ph301.split.us ] ; 4 uses
  %.0184299.us360 = phi i32 [ %.2186.us, %bb.f ], [ %.0184.ph, %.lr.ph301.split.us ] ; 4 uses
  %.0179300.us359 = phi i32 [ %.2181.us, %bb.f ], [ %.0179.ph, %.lr.ph301.split.us ] ; 5 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.0207296.us363, 0
  %or.cond13.us = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond13.us, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph366
  %i.y = load i8, ptr %.0217294.us365, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i32
  %i.aa = zext i32 %.0179300.us359 to i64         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp eq i32 %i.z, %i.ad
  br i1 %i.ae, label %bb.d, label %.thread246

bb.d:                                             ; preds = %bb.c
  %i.af = add i32 %.0179300.us359, 1              ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 4 uses
  %.not226.us = icmp ugt i64 %i.v, %i.ag
  br i1 %.not226.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i64 %.0200297.us362, %i.ag
  br i1 %i.ah, label %.loopexit, label %.preheader250.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.us ] ; 5 uses
  %.1210290.us = phi ptr [ %.0209295.us364, %.lr.ph.us.preheader.new ], [ %i.ba, %.lr.ph.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.3, %.lr.ph.us ]
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %.1210290.us, i64 1
  store i8 %i.ak, ptr %.1210290.us, align 1, !tbaa !28
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.1210290.us, i64 2
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !28
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %.1210290.us, i64 3
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !28
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.1210290.us, i64 4 ; 3 uses
  store i8 %i.az, ptr %i.av, align 1, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !95

.thread.us.loopexit.unr-lcssa:                    ; preds = %.lr.ph.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.us.loopexit, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.thread.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next.3, %.thread.us.loopexit.unr-lcssa ]
  %.1210290.us.epil.init = phi ptr [ %.0209295.us364, %.lr.ph.us.preheader ], [ %i.ba, %.thread.us.loopexit.unr-lcssa ]
  %lcmp.mod461 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod461)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.us.epil ], [ %indvars.iv.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %.1210290.us.epil = phi ptr [ %i.be, %.lr.ph.us.epil ], [ %.1210290.us.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.epil ], [ 0, %.lr.ph.us.epil.preheader ]
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.epil
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.1210290.us.epil, i64 1 ; 2 uses
  store i8 %i.bd, ptr %.1210290.us.epil, align 1, !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread.us.loopexit, label %.lr.ph.us.epil, !llvm.loop !96

.thread.us.loopexit:                              ; preds = %.lr.ph.us.epil, %.thread.us.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.ba, %.thread.us.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.us.epil ]
  %i.bf = xor i64 %i.aa, -1
  %i.bg = add i64 %.0200297.us362, %i.bf
  %.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !68
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.loopexit, %.preheader250.us
  %.pre = phi ptr [ %.pre404, %.preheader250.us ], [ %.pre.pre, %.thread.us.loopexit ] ; 2 uses
  %.1210.lcssa.us = phi ptr [ %.0209295.us364, %.preheader250.us ], [ %.lcssa, %.thread.us.loopexit ]
  %.1201.lcssa.us = phi i64 [ %.0200297.us362, %.preheader250.us ], [ %i.bg, %.thread.us.loopexit ]
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.d
  %.pre405 = phi ptr [ %.pre, %.thread.us ], [ %.pre404, %bb.d ]
  %i.bi = phi ptr [ %.pre, %.thread.us ], [ %i.u, %bb.d ] ; 2 uses
  %.3212.us = phi ptr [ %.1210.lcssa.us, %.thread.us ], [ %.0209295.us364, %bb.d ] ; 2 uses
  %.3203.us = phi i64 [ %.1201.lcssa.us, %.thread.us ], [ %.0200297.us362, %bb.d ] ; 2 uses
  %.2191.us = phi i32 [ %i.bh, %.thread.us ], [ %.0189298.us361, %bb.d ] ; 2 uses
  %.2186.us = phi i32 [ 0, %.thread.us ], [ %.0184299.us360, %bb.d ] ; 2 uses
  %.2181.us = phi i32 [ 0, %.thread.us ], [ %i.af, %bb.d ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0217294.us365, i64 1 ; 2 uses
  %i.bk = add i64 %.0207296.us363, -1             ; 2 uses
  %.not225.us = icmp eq ptr %i.bi, null
  br i1 %.not225.us, label %._crit_edge, label %.lr.ph366

.preheader250.us:                                 ; preds = %bb.e
  %.not386 = icmp eq i32 %i.af, 0
  br i1 %.not386, label %.thread.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader250.us
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.bl = icmp ult i32 %i.af, 4
  br i1 %i.bl, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %i.ag, 4294967292
  br label %.lr.ph.us

._crit_edge:                                      ; preds = %bb.f, %.lr.ph366, %.lr.ph301.split.us, %.outer
  %.0217.lcssa = phi ptr [ %.0217.ph, %.outer ], [ %.0217.ph, %.lr.ph301.split.us ], [ %.0217294.us365, %.lr.ph366 ], [ %i.bj, %bb.f ] ; 2 uses
  %.0209.lcssa = phi ptr [ %.0209.ph, %.outer ], [ %.0209.ph, %.lr.ph301.split.us ], [ %.0209295.us364, %.lr.ph366 ], [ %.3212.us, %bb.f ] ; 2 uses
  %.0207.lcssa = phi i64 [ %.0207.ph, %.outer ], [ %.0207.ph, %.lr.ph301.split.us ], [ %.0207296.us363, %.lr.ph366 ], [ %i.bk, %bb.f ] ; 2 uses
  %.0200.lcssa = phi i64 [ %.0200.ph, %.outer ], [ %.0200.ph, %.lr.ph301.split.us ], [ %.0200297.us362, %.lr.ph366 ], [ %.3203.us, %bb.f ] ; 2 uses
  %.0189.lcssa = phi i32 [ %.0189.ph, %.outer ], [ %.0189.ph, %.lr.ph301.split.us ], [ %.0189298.us361, %.lr.ph366 ], [ %.2191.us, %bb.f ] ; 2 uses
  %.0184.lcssa = phi i32 [ %.0184.ph, %.outer ], [ %.0184.ph, %.lr.ph301.split.us ], [ %.0184299.us360, %.lr.ph366 ], [ %.2186.us, %bb.f ] ; 3 uses
  %.0179.lcssa = phi i32 [ %.0179.ph, %.outer ], [ %.0179.ph, %.lr.ph301.split.us ], [ %.0179300.us359, %.lr.ph366 ], [ %.2181.us, %bb.f ] ; 3 uses
  %i.bm = icmp uge i32 %.0184.lcssa, %.0179.lcssa
  %i.bn = icmp eq i64 %.0207.lcssa, 0
  %or.cond3 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond3, label %.loopexit, label %.thread246

.thread246:                                       ; preds = %bb.c, %._crit_edge
  %.0217285 = phi ptr [ %.0217.lcssa, %._crit_edge ], [ %.0217294.us365, %bb.c ] ; 17 uses
  %.0209281 = phi ptr [ %.0209.lcssa, %._crit_edge ], [ %.0209295.us364, %bb.c ] ; 18 uses
  %.0207275 = phi i64 [ %.0207.lcssa, %._crit_edge ], [ %.0207296.us363, %bb.c ] ; 15 uses
  %.0200271 = phi i64 [ %.0200.lcssa, %._crit_edge ], [ %.0200297.us362, %bb.c ] ; 17 uses
  %.0189267 = phi i32 [ %.0189.lcssa, %._crit_edge ], [ %.0189298.us361, %bb.c ] ; 15 uses
  %.0184263 = phi i32 [ %.0184.lcssa, %._crit_edge ], [ %.0184299.us360, %bb.c ] ; 14 uses
  %.0179258 = phi i32 [ %.0179.lcssa, %._crit_edge ], [ %.0179300.us359, %bb.c ] ; 13 uses
  %.not254 = phi i1 [ %.not, %._crit_edge ], [ true, %bb.c ]
  %i.bo = icmp ult i32 %.0184263, %.0179258       ; 4 uses
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread246
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.bq = zext i32 %.0184263 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = sext i8 %i.bs to i32
  br label %bb.i

bb.h:                                             ; preds = %.thread246
  %i.bu = load i8, ptr %.0217285, align 1, !tbaa !28
  %i.bv = zext i8 %i.bu to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = phi i32 [ %i.bt, %bb.g ], [ %i.bv, %bb.h ] ; 7 uses
  %i.bx = icmp eq i32 %.0177.ph, 0
  %or.cond5 = select i1 %.not254, i1 %i.bx, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  switch i32 %i.bw, label %bb.x [
    i32 32, label %bb.k
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.by = icmp ult i32 %.0189267, 2
  br i1 %i.by, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !68
  %.not231 = icmp eq ptr %i.bz, null
  br i1 %.not231, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !69
  %i.cb = add i64 %i.ca, 1
  %i.cc = icmp ult i64 %.0200271, %i.cb
  br i1 %i.cc, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 61, ptr %.0209281, align 1, !tbaa !28
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 %i.cf
  %i.ch = load i64, ptr %i.q, align 8, !tbaa !69
  %i.ci = xor i64 %i.ch, -1
  %i.cj = add i64 %.0200271, %i.ci
  %i.ck = load i32, ptr %i.r, align 8, !tbaa !67
  br label %.outer.backedge

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.cl = icmp eq i64 %.0200271, 0
  br i1 %i.cl, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !68  ; 2 uses
  %.not232 = icmp eq ptr %i.cm, null
  br i1 %.not232, label %.thread248, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.0375 = add i64 %.0207275, -1                  ; 2 uses
  %.not233376 = icmp eq i64 %.0375, 0
  br i1 %.not233376, label %.outer.backedge, label %.lr.ph381

.outer.backedge:                                  ; preds = %.preheader, %bb.ah, %bb.ag, %bb.ap, %bb.ao, %bb.n, %bb.v, %bb.w, %._crit_edge382
  %.0217.ph.be = phi ptr [ %.0217285, %bb.n ], [ %.0217285, %bb.v ], [ %i.dg, %bb.w ], [ %.0217285, %._crit_edge382 ], [ %.0217285, %bb.ag ], [ %i.ef, %bb.ah ], [ %.0217285, %bb.ao ], [ %i.fj, %bb.ap ], [ %.0217285, %.preheader ]
  %.0209.ph.be = phi ptr [ %i.cg, %bb.n ], [ %i.db, %bb.v ], [ %i.db, %bb.w ], [ %.0209281, %._crit_edge382 ], [ %i.ea, %bb.ag ], [ %i.ea, %bb.ah ], [ %i.fe, %bb.ao ], [ %i.fe, %bb.ap ], [ %.0209281, %.preheader ]
  %.0207.ph.be = phi i64 [ %.0207275, %bb.n ], [ %.0207275, %bb.v ], [ %i.df, %bb.w ], [ %.0207275, %._crit_edge382 ], [ %.0207275, %bb.ag ], [ %i.ee, %bb.ah ], [ %.0207275, %bb.ao ], [ %i.fi, %bb.ap ], [ 1, %.preheader ]
  %.0200.ph.be = phi i64 [ %i.cj, %bb.n ], [ %i.dc, %bb.v ], [ %i.dc, %bb.w ], [ %.0200271, %._crit_edge382 ], [ %i.eb, %bb.ag ], [ %i.eb, %bb.ah ], [ %i.ff, %bb.ao ], [ %i.ff, %bb.ap ], [ %.0200271, %.preheader ]
  %.0189.ph.be = phi i32 [ %i.ck, %bb.n ], [ %i.dd, %bb.v ], [ %i.dd, %bb.w ], [ %.0189267, %._crit_edge382 ], [ %i.ec, %bb.ag ], [ %i.ec, %bb.ah ], [ %i.fg, %bb.ao ], [ %i.fg, %bb.ap ], [ %.0189267, %.preheader ]
  %.0184.ph.be = phi i32 [ %.0184263, %bb.n ], [ %i.de, %bb.v ], [ 0, %bb.w ], [ %.0184263, %._crit_edge382 ], [ %i.ed, %bb.ag ], [ 0, %bb.ah ], [ %i.fh, %bb.ao ], [ 0, %bb.ap ], [ %.0184263, %.preheader ]
  %.0179.ph.be = phi i32 [ %.0179258, %bb.n ], [ %.0179258, %bb.v ], [ 0, %bb.w ], [ %.0179258, %._crit_edge382 ], [ %.0179258, %bb.ag ], [ 0, %bb.ah ], [ %.0179258, %bb.ao ], [ 0, %bb.ap ], [ %.0179258, %.preheader ]
  %.0177.ph.be = phi i32 [ 0, %bb.n ], [ 0, %bb.v ], [ 0, %bb.w ], [ %.1178.lcssa, %._crit_edge382 ], [ %.0177.ph, %bb.ag ], [ %.0177.ph, %bb.ah ], [ %spec.select, %bb.ao ], [ %spec.select, %bb.ap ], [ 1, %.preheader ]
  br label %.outer

.lr.ph381:                                        ; preds = %.preheader, %bb.u
  %.0380 = phi i64 [ %.0, %bb.u ], [ %.0375, %.preheader ]
  %.0172379 = phi i32 [ %.1, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %.0173378 = phi ptr [ %i.cy, %bb.u ], [ %.0217285, %.preheader ] ; 2 uses
  %.1178377 = phi i32 [ %.2, %bb.u ], [ 1, %.preheader ] ; 3 uses
  %i.cn = load i8, ptr %.0173378, align 1, !tbaa !28 ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = zext i32 %.0172379 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cs = sext i8 %i.cr to i32
  %i.ct = icmp eq i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph381
  %i.cu = add i32 %.0172379, 1                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.q, align 8, !tbaa !69
  %.not237 = icmp ugt i64 %i.cw, %i.cv
  br i1 %.not237, label %bb.u, label %._crit_edge382

bb.r:                                             ; preds = %.lr.ph381
  %.not234 = icmp eq i32 %.0172379, 0
  br i1 %.not234, label %bb.s, label %.thread248

bb.s:                                             ; preds = %bb.r
  switch i8 %i.cn, label %.thread248 [
    i8 9, label %bb.t
    i8 32, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cx = add i32 %.1178377, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.2 = phi i32 [ %.1178377, %bb.q ], [ %i.cx, %bb.t ] ; 2 uses
  %.1 = phi i32 [ %i.cu, %bb.q ], [ 0, %bb.t ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0173378, i64 1
  %.0 = add i64 %.0380, -1                        ; 2 uses
  %.not233 = icmp eq i64 %.0, 0
  br i1 %.not233, label %._crit_edge382, label %.lr.ph381, !llvm.loop !97

._crit_edge382:                                   ; preds = %bb.q, %bb.u
  %.1178.lcssa = phi i32 [ %.2, %bb.u ], [ %.1178377, %bb.q ] ; 2 uses
  %i.cz = icmp eq i32 %.1178.lcssa, 0
  br i1 %i.cz, label %.thread248, label %.outer.backedge

.thread248:                                       ; preds = %bb.r, %bb.s, %bb.p, %._crit_edge382
  %i.da = trunc nuw i32 %i.bw to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 %i.da, ptr %.0209281, align 1, !tbaa !28
  %i.dc = add i64 %.0200271, -1                   ; 2 uses
  %i.dd = add i32 %.0189267, -1                   ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread248
  %i.de = add nuw i32 %.0184263, 1
  br label %.outer.backedge

bb.w:                                             ; preds = %.thread248
  %i.df = add i64 %.0207275, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %.0217285, i64 1
  br label %.outer.backedge

bb.x:                                             ; preds = %bb.j, %bb.i
  br i1 %.not227, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = load i32, ptr %i.r, align 8, !tbaa !67
  %i.di = icmp ult i32 %.0189267, %i.dh
  br i1 %i.di, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = add nsw i32 %i.bw, -33
  %or.cond9 = icmp ult i32 %i.dj, 28
  %i.dk = add nsw i32 %i.bw, -62
  %or.cond11 = icmp ult i32 %i.dk, 65
  %or.cond238 = select i1 %or.cond9, i1 true, i1 %or.cond11
  br i1 %or.cond238, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.dl = icmp ult i32 %.0189267, 2
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !68
  %.not230 = icmp eq ptr %i.dm, null
  br i1 %.not230, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !69
  %i.do = add i64 %i.dn, 1
  %i.dp = icmp ult i64 %.0200271, %i.do
  br i1 %i.dp, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 61, ptr %.0209281, align 1, !tbaa !28
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.ds = load i64, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = load i64, ptr %i.q, align 8, !tbaa !69
  %i.dv = xor i64 %i.du, -1
  %i.dw = add i64 %.0200271, %i.dv
  %i.dx = load i32, ptr %i.r, align 8, !tbaa !67
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.aa
  %.4213 = phi ptr [ %i.dt, %bb.ad ], [ %.0209281, %bb.ab ], [ %.0209281, %bb.aa ] ; 3 uses
  %.4204 = phi i64 [ %i.dw, %bb.ad ], [ %.0200271, %bb.ab ], [ %.0200271, %bb.aa ] ; 2 uses
  %.3192 = phi i32 [ %i.dx, %bb.ad ], [ %.0189267, %bb.ab ], [ %.0189267, %bb.aa ] ; 2 uses
  %i.dy = icmp eq i64 %.4204, 0
  br i1 %i.dy, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = trunc nuw nsw i32 %i.bw to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.4213, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.4213, align 1, !tbaa !28
  %i.eb = add i64 %.4204, -1                      ; 2 uses
  %i.ec = add i32 %.3192, -1                      ; 2 uses
  br i1 %i.bo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = add nuw i32 %.0184263, 1
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ee = add i64 %.0207275, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0217285, i64 1
  br label %.outer.backedge

bb.ai:                                            ; preds = %bb.z, %bb.y
  %i.eg = icmp ult i32 %.0189267, 4
  br i1 %i.eg, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !68
  %.not228 = icmp eq ptr %i.eh, null
  br i1 %.not228, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load i64, ptr %i.q, align 8, !tbaa !69
  %i.ej = add i64 %i.ei, 1
  %i.ek = icmp ult i64 %.0200271, %i.ej
  br i1 %i.ek, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %.0209281, i64 1 ; 2 uses
  store i8 61, ptr %.0209281, align 1, !tbaa !28
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.en = load i64, ptr %i.q, align 8, !tbaa !69  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.em, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !69
  %i.eq = xor i64 %i.ep, -1
  %i.er = add i64 %.0200271, %i.eq
  %i.es = load i32, ptr %i.r, align 8, !tbaa !67
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.5214 = phi ptr [ %i.eo, %bb.al ], [ %.0209281, %bb.aj ], [ %.0209281, %bb.ai ] ; 5 uses
  %.5205 = phi i64 [ %i.er, %bb.al ], [ %.0200271, %bb.aj ], [ %.0200271, %bb.ai ] ; 3 uses
  %.4193 = phi i32 [ %i.es, %bb.al ], [ %.0189267, %bb.aj ], [ %.0189267, %bb.ai ] ; 2 uses
  %i.et = icmp ult i64 %.5205, 3
  br i1 %i.et, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %.5214, i64 1
  store i8 61, ptr %.5214, align 1, !tbaa !28
  %i.ev = lshr i32 %i.bw, 4
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = getelementptr inbounds nuw i8, ptr %.5214, i64 2
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !28
  %i.fa = and i32 %i.bw, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !28
  %i.fe = getelementptr inbounds nuw i8, ptr %.5214, i64 3 ; 2 uses
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !28
  %i.ff = add i64 %.5205, -3                      ; 2 uses
  %i.fg = add i32 %.4193, -3                      ; 2 uses
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %.0177.ph, i32 1) ; 2 uses
  br i1 %i.bo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fh = add nuw i32 %.0184263, 1
  br label %.outer.backedge

bb.ap:                                            ; preds = %bb.an
  %i.fi = add i64 %.0207275, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %.0217285, i64 1
  br label %.outer.backedge

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ac, %bb.o, %bb.m, %._crit_edge, %bb.e
  %.0217287 = phi ptr [ %.0217294.us365, %bb.e ], [ %.0217285, %bb.ak ], [ %.0217285, %bb.ae ], [ %.0217285, %bb.ac ], [ %.0217285, %bb.o ], [ %.0217285, %bb.m ], [ %.0217285, %bb.am ], [ %.0217.lcssa, %._crit_edge ]
  %.0207277 = phi i64 [ %.0207296.us363, %bb.e ], [ %.0207275, %bb.ak ], [ %.0207275, %bb.ae ], [ %.0207275, %bb.ac ], [ %.0207275, %bb.o ], [ %.0207275, %bb.m ], [ %.0207275, %bb.am ], [ 0, %._crit_edge ]
  %.0184262 = phi i32 [ %.0184299.us360, %bb.e ], [ %.0184263, %bb.ak ], [ %.0184263, %bb.ae ], [ %.0184263, %bb.ac ], [ %.0184263, %bb.o ], [ %.0184263, %bb.m ], [ %.0184263, %bb.am ], [ %.0184.lcssa, %._crit_edge ]
  %.0179257 = phi i32 [ %.0179300.us359, %bb.e ], [ %.0179258, %bb.ak ], [ %.0179258, %bb.ae ], [ %.0179258, %bb.ac ], [ %.0179258, %bb.o ], [ %.0179258, %bb.m ], [ %.0179258, %bb.am ], [ %.0179.lcssa, %._crit_edge ]
  %.7216 = phi ptr [ %.0209295.us364, %bb.e ], [ %.0209281, %bb.ak ], [ %.4213, %bb.ae ], [ %.0209281, %bb.ac ], [ %.0209281, %bb.o ], [ %.0209281, %bb.m ], [ %.5214, %bb.am ], [ %.0209.lcssa, %._crit_edge ]
  %.7 = phi i64 [ %.0200297.us362, %bb.e ], [ %.0200271, %bb.ak ], [ 0, %bb.ae ], [ %.0200271, %bb.ac ], [ 0, %bb.o ], [ %.0200271, %bb.m ], [ %.5205, %bb.am ], [ %.0200.lcssa, %._crit_edge ]
  %.3199 = phi i32 [ 2, %bb.e ], [ 2, %bb.ak ], [ 2, %bb.ae ], [ 2, %bb.ac ], [ 2, %bb.o ], [ 2, %bb.m ], [ 2, %bb.am ], [ 0, %._crit_edge ]
  %.6195 = phi i32 [ %.0189298.us361, %bb.e ], [ %.0189267, %bb.ak ], [ %.3192, %bb.ae ], [ %.0189267, %bb.ac ], [ %.0189267, %bb.o ], [ %.0189267, %bb.m ], [ %.4193, %bb.am ], [ %.0189.lcssa, %._crit_edge ]
  store ptr %.0217287, ptr %1, align 8, !tbaa !40
  store i64 %.0207277, ptr %2, align 8, !tbaa !25
  store ptr %.7216, ptr %3, align 8, !tbaa !40
  store i64 %.7, ptr %4, align 8, !tbaa !25
  store i32 %.6195, ptr %i.a, align 4, !tbaa !66
  store i32 %.0184262, ptr %i.b, align 4, !tbaa !73
  store i32 %.0179257, ptr %i.c, align 8, !tbaa !74
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %.loopexit
  %.0176 = phi i32 [ %.3199, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.0176
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_encode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !71, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
end_hunk_0
begin_hunk_1_@php_conv_qprint_encode_dtor:bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @php_conv_qprint_decode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %.not158 = icmp eq i32 %i.f, 0
  %. = select i1 %.not158, i32 0, i32 4
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 4, !tbaa !80   ; 7 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !81   ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !40     ; 7 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !25     ; 7 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !40     ; 7 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !25     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  switch i32 %i.n, label %bb.d [
    i32 0, label %.loopexit.preheader
    i32 1, label %.loopexit228
    i32 2, label %.loopexit229
    i32 3, label %.loopexit230
    i32 4, label %.loopexit231
    i32 5, label %.loopexit232
    i32 6, label %.loopexit233.preheader
  ]

.loopexit233.preheader:                           ; preds = %bb.d, %bb.ac
  %.0222.ph = phi i32 [ %.0224, %bb.ac ], [ %i.g, %bb.d ] ; 2 uses
  %.0118213.ph = phi i32 [ %.0118215, %bb.ac ], [ %i.h, %bb.d ]
  %.0120206.ph = phi i32 [ %.0120208, %bb.ac ], [ %i.p, %bb.d ] ; 2 uses
  %.0127194.ph = phi ptr [ %.0127196, %bb.ac ], [ %i.k, %bb.d ]
  %.0130187.ph = phi ptr [ %.0130189, %bb.ac ], [ %i.i, %bb.d ] ; 2 uses
  %.0134179.ph = phi i64 [ %.0134181, %bb.ac ], [ %i.l, %bb.d ]
  %.0137172.ph = phi i64 [ %.0137174, %bb.ac ], [ %i.j, %bb.d ] ; 2 uses
  br label %.loopexit233

bb.e:                                             ; preds = %bb.l, %bb.q, %bb.w, %bb.ad
  %.0130184.sink = phi ptr [ %.0130189, %bb.ad ], [ %.0130184, %bb.q ], [ %.0130186, %bb.w ], [ %.0130184, %bb.l ]
  %.0137169.sink = phi i64 [ %.0137174, %bb.ad ], [ %.0137169, %bb.q ], [ %.0137171, %bb.w ], [ %.0137169, %bb.l ]
  %.2136.jt5 = phi i64 [ %.0134181, %bb.ad ], [ %.0134176, %bb.q ], [ %.0134178, %bb.w ], [ %.0134176, %bb.l ]
  %.2129.jt5 = phi ptr [ %.0127196, %bb.ad ], [ %.0127191, %bb.q ], [ %.0127193, %bb.w ], [ %.0127191, %bb.l ]
  %.2122.jt5 = phi i32 [ %.0120208, %bb.ad ], [ %.0120203, %bb.q ], [ %.0120205, %bb.w ], [ %.0120203, %bb.l ]
  %.1119.jt5 = phi i32 [ %.0118215, %bb.ad ], [ %.0118210, %bb.q ], [ %.0118212, %bb.w ], [ %.0118210, %bb.l ]
  %.2.jt5 = phi i32 [ %i.cn, %bb.ad ], [ %i.av, %bb.q ], [ %i.bx, %bb.w ], [ 1, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0130184.sink, i64 1
  %i.t = add i64 %.0137169.sink, -1
  br label %.loopexit232

bb.f:                                             ; preds = %bb.v, %bb.v, %bb.k, %bb.k
  %.0130184.sink235 = phi ptr [ %.0130184, %bb.k ], [ %.0130184, %bb.k ], [ %.0130186, %bb.v ], [ %.0130186, %bb.v ]
  %.0137169.sink234 = phi i64 [ %.0137169, %bb.k ], [ %.0137169, %bb.k ], [ %.0137171, %bb.v ], [ %.0137171, %bb.v ]
  %.2136.jt4 = phi i64 [ %.0134176, %bb.k ], [ %.0134176, %bb.k ], [ %.0134178, %bb.v ], [ %.0134178, %bb.v ]
  %.2129.jt4 = phi ptr [ %.0127191, %bb.k ], [ %.0127191, %bb.k ], [ %.0127193, %bb.v ], [ %.0127193, %bb.v ]
  %.2122.jt4 = phi i32 [ %.0120203, %bb.k ], [ %.0120203, %bb.k ], [ %.0120205, %bb.v ], [ %.0120205, %bb.v ]
  %.1119.jt4 = phi i32 [ %.0118210, %bb.k ], [ %.0118210, %bb.k ], [ %.0118212, %bb.v ], [ %.0118212, %bb.v ]
  %.2.jt4 = phi i32 [ %.0219, %bb.k ], [ %.0219, %bb.k ], [ %.0221, %bb.v ], [ %.0221, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0130184.sink235, i64 1
  %i.v = add i64 %.0137169.sink234, -1
  br label %.loopexit231

bb.g:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.x = add i64 %.0137173, -1
  br label %.loopexit228

.loopexit.preheader:                              ; preds = %bb.d, %.loopexit233, %bb.n, %bb.s, %bb.z, %bb.aa, %bb.ab
  %.0223.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %.0227, %bb.s ], [ %i.g, %bb.d ] ; 3 uses
  %.0118214.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %.0118218, %bb.s ], [ %i.h, %bb.d ] ; 3 uses
  %.0120207.ph = phi i32 [ %.0120206.ph, %.loopexit233 ], [ %.0120208, %bb.aa ], [ %.0120203, %bb.n ], [ %.0120208, %bb.z ], [ %.0120208, %bb.ab ], [ %.1121, %bb.s ], [ %i.p, %bb.d ] ; 3 uses
  %.0127195.ph = phi ptr [ %.0127194, %.loopexit233 ], [ %.0127196, %bb.aa ], [ %.0127191, %bb.n ], [ %.0127196, %bb.z ], [ %.0127196, %bb.ab ], [ %i.bn, %bb.s ], [ %i.k, %bb.d ]
  %.0130188.ph = phi ptr [ %.0130187.ph, %.loopexit233 ], [ %.0130189, %bb.aa ], [ %i.an, %bb.n ], [ %i.ce, %bb.z ], [ %.0130189, %bb.ab ], [ %.1131, %bb.s ], [ %i.i, %bb.d ]
  %.0134180.ph = phi i64 [ %.0134179, %.loopexit233 ], [ %.0134181, %bb.aa ], [ %.0134176, %bb.n ], [ %.0134181, %bb.z ], [ %.0134181, %bb.ab ], [ %i.bo, %bb.s ], [ %i.l, %bb.d ]
  %.0137173.ph = phi i64 [ %.0137172.ph, %.loopexit233 ], [ %.0137174, %bb.aa ], [ %i.ao, %bb.n ], [ %i.cf, %bb.z ], [ %.0137174, %bb.ab ], [ %.1138, %bb.s ], [ %i.j, %bb.d ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.j
  %.0127195 = phi ptr [ %i.ac, %bb.j ], [ %.0127195.ph, %.loopexit.preheader ] ; 5 uses
  %.0130188 = phi ptr [ %i.ae, %bb.j ], [ %.0130188.ph, %.loopexit.preheader ] ; 5 uses
  %.0134180 = phi i64 [ %i.ad, %bb.j ], [ %.0134180.ph, %.loopexit.preheader ] ; 4 uses
  %.0137173 = phi i64 [ %i.af, %bb.j ], [ %.0137173.ph, %.loopexit.preheader ] ; 4 uses
  %i.y = icmp eq i64 %.0137173, 0
  br i1 %i.y, label %.loopexit236, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.0130188, align 1, !tbaa !28 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 61
  br i1 %i.aa, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %.0134180, 0
  br i1 %i.ab, label %.loopexit236, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0127195, i64 1
  store i8 %i.z, ptr %.0127195, align 1, !tbaa !28
  %i.ad = add i64 %.0134180, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.af = add i64 %.0137173, -1
  br label %.loopexit

.loopexit228:                                     ; preds = %bb.d, %bb.g
  %.0219 = phi i32 [ %.0223.ph, %bb.g ], [ %i.g, %bb.d ] ; 8 uses
  %.0118210 = phi i32 [ %.0118214.ph, %bb.g ], [ %i.h, %bb.d ] ; 7 uses
  %.0120203 = phi i32 [ %.0120207.ph, %bb.g ], [ %i.p, %bb.d ] ; 8 uses
  %.0127191 = phi ptr [ %.0127195, %bb.g ], [ %i.k, %bb.d ] ; 8 uses
  %.0130184 = phi ptr [ %i.w, %bb.g ], [ %i.i, %bb.d ] ; 9 uses
  %.0134176 = phi i64 [ %.0134180, %bb.g ], [ %i.l, %bb.d ] ; 8 uses
  %.0137169 = phi i64 [ %i.x, %bb.g ], [ %i.j, %bb.d ] ; 8 uses
  %i.ag = icmp eq i64 %.0137169, 0
  br i1 %i.ag, label %.loopexit236, label %bb.k

bb.k:                                             ; preds = %.loopexit228
  %i.ah = load i8, ptr %.0130184, align 1, !tbaa !28 ; 6 uses
  switch i8 %i.ah, label %bb.l [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !82  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp eq i32 %.0219, 0
  %or.cond3 = select i1 %i.aj, i1 %i.ak, i1 false ; 2 uses
  %i.al = icmp eq i8 %i.ah, 13
  %or.cond159 = and i1 %i.al, %or.cond3
  br i1 %or.cond159, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq i8 %i.ah, 10
  %or.cond160 = and i1 %i.am, %or.cond3
  br i1 %or.cond160, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.0130184, i64 1
  %i.ao = add i64 %.0137169, -1
  br label %.loopexit.preheader

bb.o:                                             ; preds = %bb.m
  %i.ap = zext i32 %.0219 to i64                  ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !83
  %i.ar = icmp ugt i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = icmp eq i8 %i.ah, %i.at
  br i1 %i.au, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.av = add i32 %.0219, 1
  br label %bb.e

.loopexit229:                                     ; preds = %bb.d, %bb.r
  %.0220 = phi i32 [ %.0226, %bb.r ], [ %i.g, %bb.d ] ; 2 uses
  %.0118211 = phi i32 [ %.0118217, %bb.r ], [ %i.h, %bb.d ] ; 2 uses
  %.0120204 = phi i32 [ %i.bi, %bb.r ], [ %i.p, %bb.d ] ; 2 uses
  %.0127192 = phi ptr [ %.0127198, %bb.r ], [ %i.k, %bb.d ] ; 2 uses
  %.0130185 = phi ptr [ %i.bj, %bb.r ], [ %i.i, %bb.d ] ; 3 uses
  %.0134177 = phi i64 [ %.0134182, %bb.r ], [ %i.l, %bb.d ] ; 2 uses
  %.0137170 = phi i64 [ %i.bk, %bb.r ], [ %i.j, %bb.d ] ; 2 uses
  %i.aw = icmp eq i64 %.0137170, 0
  br i1 %i.aw, label %.loopexit236, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.loopexit229
  %.pre161 = load i8, ptr %.0130185, align 1, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.p
  %.0226 = phi i32 [ %.0220, %..thread_crit_edge ], [ %.0219, %bb.o ], [ %.0219, %bb.p ] ; 3 uses
  %.0118217 = phi i32 [ %.0118211, %..thread_crit_edge ], [ %.0118210, %bb.o ], [ %.0118210, %bb.p ] ; 3 uses
  %.0120209 = phi i32 [ %.0120204, %..thread_crit_edge ], [ %.0120203, %bb.o ], [ %.0120203, %bb.p ] ; 2 uses
  %.not157 = phi i1 [ true, %..thread_crit_edge ], [ false, %bb.o ], [ false, %bb.p ]
  %.0123202 = phi i32 [ 2, %..thread_crit_edge ], [ 1, %bb.o ], [ 1, %bb.p ]
  %.0127198 = phi ptr [ %.0127192, %..thread_crit_edge ], [ %.0127191, %bb.o ], [ %.0127191, %bb.p ] ; 3 uses
  %.0130190 = phi ptr [ %.0130185, %..thread_crit_edge ], [ %.0130184, %bb.o ], [ %.0130184, %bb.p ] ; 2 uses
  %.0134182 = phi i64 [ %.0134177, %..thread_crit_edge ], [ %.0134176, %bb.o ], [ %.0134176, %bb.p ] ; 3 uses
  %.0137175 = phi i64 [ %.0137170, %..thread_crit_edge ], [ %.0137169, %bb.o ], [ %.0137169, %bb.p ] ; 2 uses
  %i.ax = phi i8 [ %.pre161, %..thread_crit_edge ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ] ; 3 uses
  %i.ay = tail call ptr @__ctype_b_loc() #21
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !98
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !100
  %i.bd = and i16 %i.bc, 4096
  %.not156 = icmp eq i16 %i.bd, 0
  br i1 %.not156, label %.loopexit236, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.be = zext i8 %i.ax to i32
  %i.bf = shl i32 %.0120209, 4
  %i.bg = icmp ugt i8 %i.ax, 64
  %.v = select i1 %i.bg, i32 -55, i32 -48
  %i.bh = add nsw i32 %.v, %i.be
  %i.bi = or i32 %i.bh, %i.bf                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0130190, i64 1 ; 2 uses
  %i.bk = add i64 %.0137175, -1                   ; 2 uses
  br i1 %.not157, label %.loopexit230, label %.loopexit229

.loopexit230:                                     ; preds = %bb.d, %bb.r
  %.0227 = phi i32 [ %.0226, %bb.r ], [ %i.g, %bb.d ] ; 2 uses
  %.0118218 = phi i32 [ %.0118217, %bb.r ], [ %i.h, %bb.d ] ; 2 uses
  %.0127199 = phi ptr [ %.0127198, %bb.r ], [ %i.k, %bb.d ] ; 3 uses
  %.0134183 = phi i64 [ %.0134182, %bb.r ], [ %i.l, %bb.d ] ; 2 uses
  %.1138 = phi i64 [ %i.bk, %bb.r ], [ %i.j, %bb.d ] ; 2 uses
  %.1131 = phi ptr [ %i.bj, %bb.r ], [ %i.i, %bb.d ] ; 2 uses
  %.1121 = phi i32 [ %i.bi, %bb.r ], [ %i.p, %bb.d ] ; 3 uses
  %i.bl = icmp eq i64 %.0134183, 0
  br i1 %i.bl, label %.loopexit236, label %bb.s

bb.s:                                             ; preds = %.loopexit230
  %i.bm = trunc i32 %.1121 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0127199, i64 1
  store i8 %i.bm, ptr %.0127199, align 1, !tbaa !28
  %i.bo = add i64 %.0134183, -1
  br label %.loopexit.preheader

.loopexit231:                                     ; preds = %bb.d, %bb.f
  %.0221 = phi i32 [ %.2.jt4, %bb.f ], [ %i.g, %bb.d ] ; 6 uses
  %.0118212 = phi i32 [ %.1119.jt4, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  %.0120205 = phi i32 [ %.2122.jt4, %bb.f ], [ %i.p, %bb.d ] ; 5 uses
  %.0127193 = phi ptr [ %.2129.jt4, %bb.f ], [ %i.k, %bb.d ] ; 5 uses
  %.0130186 = phi ptr [ %i.u, %bb.f ], [ %i.i, %bb.d ] ; 6 uses
  %.0134178 = phi i64 [ %.2136.jt4, %bb.f ], [ %i.l, %bb.d ] ; 5 uses
  %.0137171 = phi i64 [ %i.v, %bb.f ], [ %i.j, %bb.d ] ; 5 uses
  %i.bp = icmp eq i64 %.0137171, 0
  br i1 %i.bp, label %.loopexit236, label %bb.t

bb.t:                                             ; preds = %.loopexit231
  %i.bq = zext i32 %.0221 to i64                  ; 2 uses
  %i.br = load i64, ptr %i.r, align 8, !tbaa !83
  %i.bs = icmp ugt i64 %i.br, %i.bq
  %.pre = load i8, ptr %.0130186, align 1, !tbaa !28 ; 2 uses
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = icmp eq i8 %.pre, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i8 %.pre, label %.loopexit236 [
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.w:                                             ; preds = %bb.u
  %i.bx = add i32 %.0221, 1
  br label %bb.e

.loopexit232:                                     ; preds = %bb.d, %bb.e
  %.0224 = phi i32 [ %.2.jt5, %bb.e ], [ %i.g, %bb.d ] ; 6 uses
  %.0118215 = phi i32 [ %.1119.jt5, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.0120208 = phi i32 [ %.2122.jt5, %bb.e ], [ %i.p, %bb.d ] ; 6 uses
  %.0127196 = phi ptr [ %.2129.jt5, %bb.e ], [ %i.k, %bb.d ] ; 6 uses
  %.0130189 = phi ptr [ %i.s, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.0134181 = phi i64 [ %.2136.jt5, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  %.0137174 = phi i64 [ %i.t, %bb.e ], [ %i.j, %bb.d ] ; 6 uses
  %i.by = icmp eq i64 %.0137174, 0
  br i1 %i.by, label %.loopexit236, label %bb.x

bb.x:                                             ; preds = %.loopexit232
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !82  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null                 ; 2 uses
  %i.cb = icmp eq i32 %.0224, 1
  %or.cond7 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cc = load i8, ptr %.0130189, align 1, !tbaa !28
  %i.cd = icmp eq i8 %i.cc, 10
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %.0130189, i64 1
  %i.cf = add i64 %.0137174, -1
  br label %.loopexit.preheader

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cg = icmp ne i32 %.0224, 0
  %or.cond9 = select i1 %i.ca, i1 %i.cg, i1 false
  br i1 %or.cond9, label %.loopexit.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = zext i32 %.0224 to i64                  ; 2 uses
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !83
  %.not = icmp ugt i64 %i.ci, %i.ch
  br i1 %.not, label %bb.ac, label %.loopexit.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %.0130189, align 1, !tbaa !28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28
  %i.cm = icmp eq i8 %i.cj, %i.cl
  br i1 %i.cm, label %bb.ad, label %.loopexit233.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.cn = add i32 %.0224, 1
  br label %bb.e

.loopexit233:                                     ; preds = %.loopexit233.preheader, %bb.af
  %.0118213 = phi i32 [ %i.cr, %bb.af ], [ %.0118213.ph, %.loopexit233.preheader ] ; 4 uses
  %.0127194 = phi ptr [ %i.cv, %bb.af ], [ %.0127194.ph, %.loopexit233.preheader ] ; 4 uses
  %.0134179 = phi i64 [ %i.cw, %bb.af ], [ %.0134179.ph, %.loopexit233.preheader ] ; 3 uses
  %i.co = icmp ult i32 %.0118213, %.0222.ph
  br i1 %i.co, label %bb.ae, label %.loopexit.preheader

bb.ae:                                            ; preds = %.loopexit233
  %i.cp = icmp eq i64 %.0134179, 0
  br i1 %i.cp, label %.loopexit236, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.cr = add nuw i32 %.0118213, 1
  %i.cs = zext i32 %.0118213 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %.0127194, i64 1
  store i8 %i.cu, ptr %.0127194, align 1, !tbaa !28
  %i.cw = add i64 %.0134179, -1
  br label %.loopexit233

.loopexit236:                                     ; preds = %bb.i, %.loopexit, %bb.ae, %bb.v, %.loopexit230, %.thread, %.loopexit232, %.loopexit231, %.loopexit229, %.loopexit228
  %.0225 = phi i32 [ %.0219, %.loopexit228 ], [ %.0221, %bb.v ], [ %.0227, %.loopexit230 ], [ %.0226, %.thread ], [ %.0222.ph, %bb.ae ], [ %.0224, %.loopexit232 ], [ %.0221, %.loopexit231 ], [ %.0220, %.loopexit229 ], [ %.0223.ph, %.loopexit ], [ %.0223.ph, %bb.i ]
  %.0118216 = phi i32 [ %.0118210, %.loopexit228 ], [ %.0118212, %bb.v ], [ %.0118218, %.loopexit230 ], [ %.0118217, %.thread ], [ %.0118213, %bb.ae ], [ %.0118215, %.loopexit232 ], [ %.0118212, %.loopexit231 ], [ %.0118211, %.loopexit229 ], [ %.0118214.ph, %.loopexit ], [ %.0118214.ph, %bb.i ]
  %.0127197 = phi ptr [ %.0127191, %.loopexit228 ], [ %.0127193, %bb.v ], [ %.0127199, %.loopexit230 ], [ %.0127198, %.thread ], [ %.0127194, %bb.ae ], [ %.0127196, %.loopexit232 ], [ %.0127193, %.loopexit231 ], [ %.0127192, %.loopexit229 ], [ %.0127195, %.loopexit ], [ %.0127195, %bb.i ]
  %.0134.lcssa = phi i64 [ %.0134176, %.loopexit228 ], [ %.0134178, %bb.v ], [ 0, %.loopexit230 ], [ %.0134182, %.thread ], [ 0, %bb.ae ], [ %.0134181, %.loopexit232 ], [ %.0134178, %.loopexit231 ], [ %.0134177, %.loopexit229 ], [ 0, %bb.i ], [ %.0134180, %.loopexit ]
  %.0141 = phi i32 [ 0, %.loopexit228 ], [ 3, %bb.v ], [ 2, %.loopexit230 ], [ 3, %.thread ], [ 2, %bb.ae ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ 2, %bb.i ], [ 0, %.loopexit ]
  %.3140 = phi i64 [ 0, %.loopexit228 ], [ %.0137171, %bb.v ], [ %.1138, %.loopexit230 ], [ %.0137175, %.thread ], [ %.0137172.ph, %bb.ae ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ %.0137173, %bb.i ], [ 0, %.loopexit ]
  %.3133 = phi ptr [ %.0130184, %.loopexit228 ], [ %.0130186, %bb.v ], [ %.1131, %.loopexit230 ], [ %.0130190, %.thread ], [ %.0130187.ph, %bb.ae ], [ %.0130189, %.loopexit232 ], [ %.0130186, %.loopexit231 ], [ %.0130185, %.loopexit229 ], [ %.0130188, %.loopexit ], [ %.0130188, %bb.i ]
  %.5 = phi i32 [ 1, %.loopexit228 ], [ 4, %bb.v ], [ 3, %.loopexit230 ], [ %.0123202, %.thread ], [ 6, %bb.ae ], [ 5, %.loopexit232 ], [ 4, %.loopexit231 ], [ 2, %.loopexit229 ], [ 0, %.loopexit ], [ 0, %bb.i ]
  %.3 = phi i32 [ %.0120203, %.loopexit228 ], [ %.0120205, %bb.v ], [ %.1121, %.loopexit230 ], [ %.0120209, %.thread ], [ %.0120206.ph, %bb.ae ], [ %.0120208, %.loopexit232 ], [ %.0120205, %.loopexit231 ], [ %.0120204, %.loopexit229 ], [ %.0120207.ph, %.loopexit ], [ %.0120207.ph, %bb.i ]
  store ptr %.3133, ptr %1, align 8, !tbaa !40
  store i64 %.3140, ptr %2, align 8, !tbaa !25
  store ptr %.0127197, ptr %3, align 8, !tbaa !40
  store i64 %.0134.lcssa, ptr %4, align 8, !tbaa !25
  store i32 %.5, ptr %i.m, align 8, !tbaa !78
  store i32 %.0118216, ptr %i.a, align 8, !tbaa !81
  store i32 %.0225, ptr %i.b, align 4, !tbaa !80
  store i32 %.3, ptr %i.o, align 4, !tbaa !79
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %.loopexit236
  %.0142 = phi i32 [ %., %bb.b ], [ %.0141, %.loopexit236 ]
  ret i32 %.0142
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_decode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !85, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @consumed_filter_filter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_php_stream_tell(ptr noundef %0) #17
  store i64 %i.f, ptr %i.c, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %.023 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  tail call void @php_stream_bucket_unlink(ptr noundef nonnull %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = add i64 %i.j, %.023                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef nonnull %i.h) #17
  %i.l = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.k, %.lr.ph ] ; 2 uses
  %.not20 = icmp eq ptr %4, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.m = and i32 %5, 2
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.c, align 8, !tbaa !102
  %i.o = load i64, ptr %i.b, align 8, !tbaa !105
  %i.p = add i64 %i.o, %i.n
  %i.q = tail call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.p, i32 noundef 0) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !105
  %i.s = add i64 %i.r, %.0.lcssa
  store i64 %i.s, ptr %i.b, align 8, !tbaa !105
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @consumed_filter_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !106, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

declare i64 @_php_stream_tell(ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @consumed_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.19) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq i8 %2, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @__zend_calloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @_ecalloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = icmp ne i8 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 8, !tbaa !106
  store i64 0, ptr %i.d, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %i.h, align 8, !tbaa !102
  %i.i = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @consumed_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @__zend_calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_chunked_filter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 12 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %php_dechunk.exit
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.co, %php_dechunk.exit ]
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.i, %php_dechunk.exit ]
  %i.f = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.e) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 5 uses
  %i.i = add i64 %i.h, %.028                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 12 uses
  %.not193.i = icmp eq i64 %i.h, 0
  br i1 %.not193.i, label %php_dechunk.exit, label %.lr.ph188.i

.lr.ph188.i:                                      ; preds = %bb.b
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = add i64 %i.h, %i.m                       ; 2 uses
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !107
  switch i32 %.pre.i, label %.backedge.i [
    i32 0, label %.loopexit277.i
    i32 1, label %.loopexit278.i
    i32 2, label %._crit_edge230.i
    i32 3, label %.loopexit280.i
    i32 4, label %thread-pre-split139.i
    i32 5, label %._crit_edge.i
    i32 6, label %.loopexit281.i
    i32 7, label %thread-pre-split141.i
    i32 8, label %php_dechunk.exit
    i32 9, label %._crit_edge229.i
  ]

.backedge.i:                                      ; preds = %.lr.ph188.i, %.backedge.i
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.lr.ph188.i
  %.pre226.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.w

.loopexit277.i:                                   ; preds = %.lr.ph188.i, %.backedge.jt0.i
  %.sink.i = phi ptr [ %i.bs, %.backedge.jt0.i ], [ %i.k, %.lr.ph188.i ]
  %.0111183261.i = phi ptr [ %.2113.i, %.backedge.jt0.i ], [ %i.k, %.lr.ph188.i ]
  %.0184252.i = phi i64 [ %.2.i, %.backedge.jt0.i ], [ 0, %.lr.ph188.i ]
  store i64 0, ptr %i.b, align 8, !tbaa !109
  br label %.loopexit278.i

.loopexit278.i:                                   ; preds = %.lr.ph188.i, %.loopexit277.i
  %.0115182272.i = phi ptr [ %.sink.i, %.loopexit277.i ], [ %i.k, %.lr.ph188.i ] ; 8 uses
  %.0111183264.i = phi ptr [ %.0111183261.i, %.loopexit277.i ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.0184255.i = phi i64 [ %.0184252.i, %.loopexit277.i ], [ 0, %.lr.ph188.i ] ; 3 uses
  %i.p = phi i1 [ true, %.loopexit277.i ], [ false, %.lr.ph188.i ]
  %i.q = icmp ult ptr %.0115182272.i, %i.l
  br i1 %i.q, label %.lr.ph.preheader.i, label %thread-pre-split.thread.i

.lr.ph.preheader.i:                               ; preds = %.loopexit278.i
  %.0115182217274.i = ptrtoaddr ptr %.0115182272.i to i64
  %i.r = sub i64 %i.o, %.0115182217274.i          ; 2 uses
  %scevgep218.i = getelementptr i8, ptr %.0115182272.i, i64 %i.r ; 2 uses
  %i.s = load i8, ptr %.0115182272.i, align 1, !tbaa !28 ; 5 uses
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i.peel = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.peel, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.u = add i8 %i.s, -65
  %or.cond137.i.peel = icmp ult i8 %i.u, 6
  br i1 %or.cond137.i.peel, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i8 %i.s, -97
  %or.cond138.i.peel = icmp ult i8 %i.v, 6
  br i1 %or.cond138.i.peel, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !109
  %i.x = shl i64 %i.w, 4
  %narrow.i.peel = add nuw nsw i8 %i.s, 9
  %i.y = and i8 %narrow.i.peel, 31
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = add nuw i64 %i.x, %i.z
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ac = shl i64 %i.ab, 4
  %narrow135.i.peel = add nuw nsw i8 %i.s, 9
  %i.ad = and i8 %narrow135.i.peel, 31
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = add nuw i64 %i.ac, %i.ae
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ah = shl i64 %i.ag, 4
  %i.ai = zext nneg i8 %i.t to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink299.i.peel = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ], [ %i.aj, %bb.g ] ; 2 uses
  store i64 %.sink299.i.peel, ptr %i.b, align 8, !tbaa !109
  store i32 1, ptr %i.d, align 8, !tbaa !107
  %exitcond.not.i.peel = icmp eq i64 %i.r, 1
  br i1 %exitcond.not.i.peel, label %thread-pre-split.thread.i, label %.lr.ph.i.peel.next

.lr.ph.i.peel.next:                               ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.0115182272.i, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i.peel.next
  %i.al = phi i64 [ %.sink299.i, %bb.n ], [ %.sink299.i.peel, %.lr.ph.i.peel.next ] ; 3 uses
  %.1116174.i = phi ptr [ %i.bb, %bb.n ], [ %i.ak, %.lr.ph.i.peel.next ] ; 3 uses
  %i.am = load i8, ptr %.1116174.i, align 1, !tbaa !28 ; 5 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = shl i64 %i.al, 4
  %i.ap = zext nneg i8 %i.an to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = add i8 %i.am, -65
  %or.cond137.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond137.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl i64 %i.al, 4
  %narrow135.i = add nuw nsw i8 %i.am, 9
  %i.at = and i8 %narrow135.i, 31
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add nuw i64 %i.as, %i.au
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aw = add i8 %i.am, -97
  %or.cond138.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond138.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ax = shl i64 %i.al, 4
  %narrow.i = add nuw nsw i8 %i.am, 9
  %i.ay = and i8 %narrow.i, 31
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = add nuw i64 %i.ax, %i.az
  br label %bb.n

.loopexit:                                        ; preds = %bb.d
  br i1 %i.p, label %.backedge.jt9.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.loopexit
  %.1116174.i.lcssa56 = phi ptr [ %.0115182272.i, %.loopexit ], [ %.1116174.i, %bb.l ]
  store i32 2, ptr %i.d, align 8, !tbaa !107
  br label %thread-pre-split.thread.i

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.sink299.i = phi i64 [ %i.av, %bb.k ], [ %i.ba, %bb.m ], [ %i.aq, %bb.i ] ; 2 uses
  store i64 %.sink299.i, ptr %i.b, align 8, !tbaa !109
  store i32 1, ptr %i.d, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %.1116174.i, i64 1 ; 3 uses
  %exitcond.not.i = icmp eq ptr %i.bb, %scevgep218.i
  br i1 %exitcond.not.i, label %thread-pre-split.thread.i, label %.lr.ph.i, !llvm.loop !110

thread-pre-split.thread.i:                        ; preds = %bb.n, %bb.h, %.loopexit278.i, %.thread.i
  %.1116146.i = phi ptr [ %.1116174.i.lcssa56, %.thread.i ], [ %.0115182272.i, %.loopexit278.i ], [ %scevgep218.i, %bb.h ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %.1116146.i, %i.l
  br i1 %i.bc, label %php_dechunk.exit, label %._crit_edge230.i

._crit_edge230.i:                                 ; preds = %.lr.ph188.i, %thread-pre-split.thread.i
  %.sink300.i = phi ptr [ %.1116146.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph188.i ] ; 5 uses
  %.0111183265.i = phi ptr [ %.0111183264.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph188.i ]
  %.0184256.i = phi i64 [ %.0184255.i, %thread-pre-split.thread.i ], [ 0, %.lr.ph188.i ] ; 2 uses
  %i.bd = icmp ult ptr %.sink300.i, %i.l
  br i1 %i.bd, label %.lr.ph176.preheader.i, label %.critedge.i

.lr.ph176.preheader.i:                            ; preds = %._crit_edge230.i
  %.0115182217.le.i = ptrtoaddr ptr %.sink300.i to i64
  %scevgep219.i = getelementptr i8, ptr %.sink300.i, i64 %i.o
  %i.be = sub i64 0, %.0115182217.le.i
  %scevgep221.i = getelementptr i8, ptr %scevgep219.i, i64 %i.be ; 2 uses
  br label %.lr.ph176.i

.lr.ph176.i:                                      ; preds = %bb.o, %.lr.ph176.preheader.i
  %.3175.i = phi ptr [ %i.bg, %bb.o ], [ %.sink300.i, %.lr.ph176.preheader.i ] ; 4 uses
  %i.bf = load i8, ptr %.3175.i, align 1, !tbaa !28
  switch i8 %i.bf, label %bb.o [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.o:                                             ; preds = %.lr.ph176.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.3175.i, i64 1 ; 2 uses
  %exitcond222.not.i = icmp eq ptr %i.bg, %scevgep221.i
  br i1 %exitcond222.not.i, label %.critedge.i, label %.lr.ph176.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.o, %.lr.ph176.i, %.lr.ph176.i, %._crit_edge230.i
  %.3.lcssa.i = phi ptr [ %.sink300.i, %._crit_edge230.i ], [ %scevgep221.i, %bb.o ], [ %.3175.i, %.lr.ph176.i ], [ %.3175.i, %.lr.ph176.i ] ; 2 uses
  %i.bh = icmp eq ptr %.3.lcssa.i, %i.l
  br i1 %i.bh, label %php_dechunk.exit, label %.loopexit280.i

.loopexit280.i:                                   ; preds = %.lr.ph188.i, %.critedge.i
  %.0111183266.i = phi ptr [ %.0111183265.i, %.critedge.i ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.0184257.i = phi i64 [ %.0184256.i, %.critedge.i ], [ 0, %.lr.ph188.i ] ; 3 uses
  %.4.i = phi ptr [ %.3.lcssa.i, %.critedge.i ], [ %i.k, %.lr.ph188.i ] ; 3 uses
  %i.bi = load i8, ptr %.4.i, align 1, !tbaa !28  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit280.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %bb.q, label %thread-pre-split139.i

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

thread-pre-split139.i:                            ; preds = %.lr.ph188.i, %bb.p
  %.0111183268.i = phi ptr [ %.0111183266.i, %bb.p ], [ %i.k, %.lr.ph188.i ]
  %.0184259.i = phi i64 [ %.0184257.i, %bb.p ], [ 0, %.lr.ph188.i ]
  %.5.ph.i = phi ptr [ %i.bk, %bb.p ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.pr140.i = load i8, ptr %.5.ph.i, align 1, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split139.i, %.loopexit280.i
  %.0111183267.i = phi ptr [ %.0111183268.i, %thread-pre-split139.i ], [ %.0111183266.i, %.loopexit280.i ] ; 2 uses
  %.0184258.i = phi i64 [ %.0184259.i, %thread-pre-split139.i ], [ %.0184257.i, %.loopexit280.i ] ; 4 uses
  %i.bm = phi i8 [ %.pr140.i, %thread-pre-split139.i ], [ %i.bi, %.loopexit280.i ]
  %.5.i = phi ptr [ %.5.ph.i, %thread-pre-split139.i ], [ %.4.i, %.loopexit280.i ] ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.s, label %.backedge.jt9.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !109 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.d, align 8, !tbaa !107
  %i.br = icmp ult ptr %i.bo, %i.l                ; 0 uses
  br label %php_dechunk.exit

.backedge.jt0.i:                                  ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !107
  %i.bt = icmp ult ptr %i.bs, %i.l
  br i1 %i.bt, label %.loopexit277.i, label %php_dechunk.exit, !llvm.loop !113

.backedge.jt9.i:                                  ; preds = %.loopexit, %bb.r, %bb.ag
  %.0115.be.jt9.ph.i = phi ptr [ %.8.i, %bb.ag ], [ %.5.i, %bb.r ], [ %.0115182272.i, %.loopexit ] ; 4 uses
  %.0111.be.jt9.ph.i = phi ptr [ %.2113.i, %bb.ag ], [ %.0111183267.i, %bb.r ], [ %.0111183264.i, %.loopexit ] ; 2 uses
  %.0.be.jt9.ph.i = phi i64 [ %.2.i, %bb.ag ], [ %.0184258.i, %bb.r ], [ %.0184255.i, %.loopexit ] ; 3 uses
  store i32 9, ptr %i.d, align 8, !tbaa !107
  %i.bu = icmp ult ptr %.0115.be.jt9.ph.i, %i.l
  br i1 %i.bu, label %.loopexit283.i, label %php_dechunk.exit, !llvm.loop !113

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq ptr %i.bo, %i.l
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 5, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

bb.w:                                             ; preds = %bb.u, %._crit_edge.i
  %.0111183269.i = phi ptr [ %i.k, %._crit_edge.i ], [ %.0111183267.i, %bb.u ] ; 4 uses
  %.0184260.i = phi i64 [ 0, %._crit_edge.i ], [ %.0184258.i, %bb.u ] ; 2 uses
  %i.bw = phi i64 [ %.pre226.i, %._crit_edge.i ], [ %i.bp, %bb.u ] ; 4 uses
  %.6.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.bo, %bb.u ] ; 5 uses
  %i.bx = ptrtoint ptr %.6.i to i64
  %i.by = sub i64 %i.n, %i.bx                     ; 4 uses
  %.not131.i = icmp ult i64 %i.by, %i.bw
  %.not132.i = icmp eq ptr %.6.i, %.0111183269.i  ; 2 uses
  br i1 %.not131.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not132.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111183269.i, ptr align 1 %.6.i, i64 %i.bw, i1 false)
  %.pre227.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %.pre227.i, %bb.y ], [ %i.bw, %bb.x ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0111183269.i, i64 %i.bz
  %i.cb = add i64 %i.bz, %.0184260.i              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.bz ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %bb.aa, label %.loopexit281.i

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

bb.ab:                                            ; preds = %bb.w
  br i1 %.not132.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111183269.i, ptr align 1 %.6.i, i64 %i.by, i1 false)
  %.pre228.i = load i64, ptr %i.b, align 8, !tbaa !109
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = phi i64 [ %.pre228.i, %bb.ac ], [ %i.bw, %bb.ab ]
  %i.cf = sub i64 %i.ce, %i.by
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !109
  store i32 5, ptr %i.d, align 8, !tbaa !107
  %i.cg = add i64 %i.by, %.0184260.i
  br label %php_dechunk.exit

.loopexit281.i:                                   ; preds = %.lr.ph188.i, %bb.z
  %.7.i = phi ptr [ %i.cc, %bb.z ], [ %i.k, %.lr.ph188.i ] ; 3 uses
  %.1112.i = phi ptr [ %i.ca, %bb.z ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.1.i = phi i64 [ %i.cb, %bb.z ], [ 0, %.lr.ph188.i ] ; 3 uses
  %i.ch = load i8, ptr %.7.i, align 1, !tbaa !28  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 13
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit281.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %bb.af, label %thread-pre-split141.i

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %i.d, align 8, !tbaa !107
  br label %php_dechunk.exit

thread-pre-split141.i:                            ; preds = %.lr.ph188.i, %bb.ae
  %.8.ph.i = phi ptr [ %i.cj, %bb.ae ], [ %i.k, %.lr.ph188.i ] ; 2 uses
  %.2113.ph.i = phi ptr [ %.1112.i, %bb.ae ], [ %i.k, %.lr.ph188.i ]
  %.2.ph.i = phi i64 [ %.1.i, %bb.ae ], [ 0, %.lr.ph188.i ]
  %.pr142.i = load i8, ptr %.8.ph.i, align 1, !tbaa !28
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split141.i, %.loopexit281.i
  %i.cl = phi i8 [ %.pr142.i, %thread-pre-split141.i ], [ %i.ch, %.loopexit281.i ]
  %.8.i = phi ptr [ %.8.ph.i, %thread-pre-split141.i ], [ %.7.i, %.loopexit281.i ] ; 2 uses
  %.2113.i = phi ptr [ %.2113.ph.i, %thread-pre-split141.i ], [ %.1112.i, %.loopexit281.i ] ; 2 uses
  %.2.i = phi i64 [ %.2.ph.i, %thread-pre-split141.i ], [ %.1.i, %.loopexit281.i ] ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %.backedge.jt0.i, label %.backedge.jt9.i

.loopexit283.i:                                   ; preds = %.backedge.jt9.i
  %.not.i = icmp eq ptr %.0115.be.jt9.ph.i, %.0111.be.jt9.ph.i
  %.pre232.i = ptrtoint ptr %.0115.be.jt9.ph.i to i64
  %.pre233.i = sub i64 %i.n, %.pre232.i           ; 3 uses
  br i1 %.not.i, label %._crit_edge229.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit283.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111.be.jt9.ph.i, ptr nonnull align 1 %.0115.be.jt9.ph.i, i64 %.pre233.i, i1 false)
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph188.i, %bb.ah, %.loopexit283.i
  %.pre233.i23 = phi i64 [ %.pre233.i, %.loopexit283.i ], [ %.pre233.i, %bb.ah ], [ %i.h, %.lr.ph188.i ]
  %.0184254.i22 = phi i64 [ %.0.be.jt9.ph.i, %.loopexit283.i ], [ %.0.be.jt9.ph.i, %bb.ah ], [ 0, %.lr.ph188.i ]
  %i.cn = add i64 %.0184254.i22, %.pre233.i23
  br label %php_dechunk.exit

php_dechunk.exit:                                 ; preds = %.lr.ph188.i, %bb.t, %bb.b, %thread-pre-split.thread.i, %.critedge.i, %bb.q, %.backedge.jt0.i, %.backedge.jt9.i, %bb.v, %bb.aa, %bb.ad, %bb.af, %._crit_edge229.i
  %.0114.i = phi i64 [ %i.cg, %bb.ad ], [ %i.cn, %._crit_edge229.i ], [ %.0184257.i, %bb.q ], [ %.0184258.i, %bb.v ], [ %i.cb, %bb.aa ], [ %.1.i, %bb.af ], [ 0, %bb.b ], [ %.2.i, %.backedge.jt0.i ], [ %.0184256.i, %.critedge.i ], [ %.0184255.i, %thread-pre-split.thread.i ], [ %.0.be.jt9.ph.i, %.backedge.jt9.i ], [ 0, %.lr.ph188.i ], [ %.0184258.i, %bb.t ]
  store i64 %.0114.i, ptr %i.g, align 8, !tbaa !22
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.f) #17
  %i.co = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !114

._crit_edge:                                      ; preds = %php_dechunk.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %php_dechunk.exit ]
  %.not15 = icmp eq ptr %4, null
  br i1 %.not15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @php_chunked_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !115, !range !37, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @chunked_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp eq i8 %2, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @__zend_calloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @_ecalloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !107
  store i64 0, ptr %i.d, align 8, !tbaa !109
  %i.f = icmp ne i8 %2, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 4, !tbaa !115
  %i.i = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @chunked_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_php_stream_bucket_brigade", !14, i64 0, !14, i64 8}
!14 = !{!"p1 _ZTS18_php_stream_bucket", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!17, !19, i64 24}
!17 = !{!"_php_stream_bucket", !14, i64 0, !14, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !21, i64 40, !21, i64 41, !9, i64 44}
!18 = !{!"p1 _ZTS26_php_stream_bucket_brigade", !15, i64 0}
!19 = !{!"p1 omnipotent char", !15, i64 0}
!20 = !{!"long", !10, i64 0}
!21 = !{!"_Bool", !10, i64 0}
!22 = !{!17, !20, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!20, !20, i64 0}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !24}
!30 = !{!31, !32, i64 0}
!31 = !{!"_php_convert_filter", !32, i64 0, !21, i64 8, !19, i64 16, !10, i64 24, !20, i64 152}
!32 = !{!"p1 _ZTS9_php_conv", !15, i64 0}
!33 = !{!34, !15, i64 8}
!34 = !{!"_php_conv", !15, i64 0, !15, i64 8}
!35 = distinct !{null}
!36 = !{!31, !21, i64 8}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!31, !19, i64 16}
!40 = !{!19, !19, i64 0}
!41 = !{!31, !20, i64 152}
!42 = !{!34, !15, i64 0}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!47, !20, i64 16}
!47 = !{!"_zend_string", !48, i64 0, !20, i64 8, !20, i64 16, !10, i64 24}
!48 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!49 = !{!48, !9, i64 0}
!50 = !{!51, !15, i64 0}
!51 = !{!"_php_conv_base64_encode", !34, i64 0, !19, i64 16, !20, i64 24, !20, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !21, i64 52, !10, i64 53}
!52 = !{!51, !15, i64 8}
!53 = !{!51, !20, i64 32}
!54 = !{!51, !9, i64 40}
!55 = !{!51, !9, i64 44}
!56 = !{!51, !19, i64 16}
!57 = !{!51, !20, i64 24}
!58 = !{!51, !9, i64 48}
!59 = !{!51, !21, i64 52}
!60 = !{!61, !15, i64 0}
!61 = !{!"_php_conv_base64_decode", !34, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28}
!62 = !{!61, !15, i64 8}
!63 = !{!64, !15, i64 0}
!64 = !{!"_php_conv_qprint_encode", !34, i64 0, !19, i64 16, !20, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !21, i64 48, !9, i64 52, !9, i64 56}
!65 = !{!64, !15, i64 8}
!66 = !{!64, !9, i64 36}
!67 = !{!64, !9, i64 40}
!68 = !{!64, !19, i64 16}
!69 = !{!64, !20, i64 24}
!70 = !{!64, !9, i64 44}
!71 = !{!64, !21, i64 48}
!72 = !{!64, !9, i64 32}
!73 = !{!64, !9, i64 52}
!74 = !{!64, !9, i64 56}
!75 = !{!76, !15, i64 0}
!76 = !{!"_php_conv_qprint_decode", !34, i64 0, !19, i64 16, !20, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !21, i64 44, !9, i64 48, !9, i64 52}
!77 = !{!76, !15, i64 8}
!78 = !{!76, !9, i64 32}
!79 = !{!76, !9, i64 36}
!80 = !{!76, !9, i64 52}
!81 = !{!76, !9, i64 48}
!82 = !{!76, !19, i64 16}
!83 = !{!76, !20, i64 24}
!84 = !{!76, !9, i64 40}
!85 = !{!76, !21, i64 44}
!86 = !{!9, !9, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = !{!61, !9, i64 28}
!92 = !{!61, !9, i64 20}
!93 = !{!61, !9, i64 16}
!94 = !{!61, !9, i64 24}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !88}
!97 = distinct !{!97, !24}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 short", !15, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"short", !10, i64 0}
!102 = !{!103, !20, i64 8}
!103 = !{!"_php_consumed_filter_data", !20, i64 0, !20, i64 8, !21, i64 16}
!104 = distinct !{!104, !24}
!105 = !{!103, !20, i64 0}
!106 = !{!103, !21, i64 16}
!107 = !{!108, !9, i64 8}
!108 = !{!"_php_chunked_filter_data", !20, i64 0, !9, i64 8, !21, i64 12}
!109 = !{!108, !20, i64 0}
!110 = distinct !{!110, !24, !111}
!111 = !{!"llvm.loop.peeled.count", i32 1}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = !{!108, !21, i64 12}
end_hunk_1
