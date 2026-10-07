Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/simplexml?download=true
inline.NumInlined: 136
inline.NumDeleted: 20
begin_hunk_0_@zim_SimpleXMLElement___construct:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @zend_argument_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @zend_throw_exception(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sxe_object_free_iterxpath(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.e) #13
  store i32 0, ptr %i.b, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !46   ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17   ; 2 uses
  %i.i = and i32 %i.h, 64
  %.not.i20 = icmp eq i32 %i.i, 0
  br i1 %.not.i20, label %bb.e, label %zend_string_release.exit22

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.f, align 4, !tbaa !64   ; 2 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !64
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %zend_string_release.exit22

bb.f:                                             ; preds = %bb.e
  %i.n = and i32 %i.h, 128
  %.not5.i21 = icmp eq i32 %i.n, 0
  br i1 %.not5.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #13
  br label %zend_string_release.exit22

bb.h:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %i.f) #13
  br label %zend_string_release.exit22

zend_string_release.exit22:                       ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %zend_string_release.exit22, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 6 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17   ; 2 uses
  %i.s = and i32 %i.r, 64
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.k, label %zend_string_release.exit

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.p, align 4, !tbaa !64
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.l, label %zend_string_release.exit

bb.l:                                             ; preds = %bb.k
  %i.x = and i32 %i.r, 128
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.p) #13
  br label %zend_string_release.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_efree(ptr noundef nonnull %i.p) #13
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  store ptr null, ptr %i.o, align 8, !tbaa !49
  br label %bb.o

bb.o:                                             ; preds = %zend_string_release.exit, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !17
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @zval_ptr_dtor(ptr noundef nonnull %i.ab) #13
  store i32 0, ptr %i.y, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @php_libxml_node_decrement_resource(ptr noundef nonnull %0) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %.not19 = icmp eq ptr %i.ad, null
  br i1 %.not19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @xmlXPathFreeContext(ptr noundef nonnull %i.ad) #13
  store ptr null, ptr %i.ac, align 8, !tbaa !97
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @php_sxe_get_iterator(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.23) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @_emalloc_96() #13 ; 6 uses
  tail call void @zend_iterator_init(ptr noundef %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %1, align 8, !tbaa !17     ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !64
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 776, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @php_sxe_iterator_funcs, ptr %i.g, align 8, !tbaa !171
  %i.h = load ptr, ptr %1, align 8, !tbaa !17
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -96
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.i, ptr %i.j, align 8, !tbaa !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.a, %bb.c ]
  ret ptr %.0
}

declare noalias ptr @_emalloc_96() local_unnamed_addr #2

declare void @zend_iterator_init(ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @php_sxe_iterator_fetch(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %.fr120 = freeze ptr %i.c                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !50   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  switch i32 %i.g, label %bb.q [
    i32 3, label %bb.b
    i32 1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not48 = icmp eq ptr %i.h, null
  %.not49108 = icmp eq ptr %1, null               ; 2 uses
  br i1 %.not48, label %.preheader, label %.preheader89

.preheader89:                                     ; preds = %bb.b
  br i1 %.not49108, label %.thread, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader89
  %i.i = icmp eq ptr %.fr120, null                ; 2 uses
  %.not11.i = icmp eq i32 %i.e, 0
  %.in.v.i = select i1 %.not11.i, i64 16, i64 24  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.fr120, i64 24
  %i.k = select i1 %i.i, ptr null, ptr %i.j
  br i1 %i.i, label %.lr.ph104.split.us, label %.lr.ph104.split

.lr.ph104.split.us:                               ; preds = %.lr.ph104, %match_ns.exit.us
  %.0103.us = phi ptr [ %i.ac, %match_ns.exit.us ], [ %1, %.lr.ph104 ] ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103.us, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %match_ns.exit.us

bb.c:                                             ; preds = %.lr.ph104.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %.0103.us, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = tail call i32 @xmlStrEqual(ptr noundef %i.p, ptr noundef nonnull %i.r) #13
  %.not52.us = icmp eq i32 %i.s, 0
  br i1 %.not52.us, label %match_ns.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.0103.us, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %match_ns.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %match_ns.exit.thread, label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.e
  %.in.i.us = getelementptr inbounds nuw i8, ptr %i.u, i64 %.in.v.i
  %i.z = load ptr, ptr %.in.i.us, align 8, !tbaa !54
  %i.aa = tail call i32 @xmlStrEqual(ptr noundef %i.z, ptr noundef null) #13
  %.not13.i.us = icmp eq i32 %i.aa, 0
  br i1 %.not13.i.us, label %match_ns.exit.us, label %match_ns.exit.thread

match_ns.exit.us:                                 ; preds = %.thread.i.us, %bb.c, %.lr.ph104.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103.us, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %.not51.us = icmp eq ptr %i.ac, null
  br i1 %.not51.us, label %.thread, label %.lr.ph104.split.us, !llvm.loop !172

.preheader:                                       ; preds = %bb.b
  br i1 %.not49108, label %.thread, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.ad = icmp eq ptr %.fr120, null               ; 2 uses
  %.not11.i55 = icmp eq i32 %i.e, 0
  %.in.v.i56 = select i1 %.not11.i55, i64 16, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.fr120, i64 24
  %i.af = select i1 %i.ad, ptr null, ptr %i.ae
  br i1 %i.ad, label %.lr.ph110.split.us, label %.lr.ph110.split

.lr.ph110.split.us:                               ; preds = %.lr.ph110, %match_ns.exit60.us
  %.1109.us = phi ptr [ %i.as, %match_ns.exit60.us ], [ %1, %.lr.ph110 ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1109.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !44
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.f, label %match_ns.exit60.us

bb.f:                                             ; preds = %.lr.ph110.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.1109.us, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %match_ns.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %match_ns.exit.thread, label %.thread.i54.us

.thread.i54.us:                                   ; preds = %bb.g
  %.in.i57.us = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.in.v.i56
  %i.ap = load ptr, ptr %.in.i57.us, align 8, !tbaa !54
  %i.aq = tail call i32 @xmlStrEqual(ptr noundef %i.ap, ptr noundef null) #13
  %.not13.i58.us = icmp eq i32 %i.aq, 0
  br i1 %.not13.i58.us, label %match_ns.exit60.us, label %match_ns.exit.thread

match_ns.exit60.us:                               ; preds = %.thread.i54.us, %.lr.ph110.split.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.1109.us, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !74 ; 2 uses
  %.not49.us = icmp eq ptr %i.as, null
  br i1 %.not49.us, label %.thread, label %.lr.ph110.split.us, !llvm.loop !173

.lr.ph104.split:                                  ; preds = %.lr.ph104, %match_ns.exit
  %.0103 = phi ptr [ %i.bh, %match_ns.exit ], [ %1, %.lr.ph104 ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !44
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.h, label %match_ns.exit

bb.h:                                             ; preds = %.lr.ph104.split
  %i.aw = getelementptr inbounds nuw i8, ptr %.0103, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !78
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = tail call i32 @xmlStrEqual(ptr noundef %i.ax, ptr noundef nonnull %i.az) #13
  %.not52 = icmp eq i32 %i.ba, 0
  br i1 %.not52, label %match_ns.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %match_ns.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  %.in.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.in.v.i
  %i.be = load ptr, ptr %.in.i, align 8, !tbaa !54
  %i.bf = tail call i32 @xmlStrEqual(ptr noundef %i.be, ptr noundef %i.k) #13
  %.not13.i = icmp eq i32 %i.bf, 0
  br i1 %.not13.i, label %match_ns.exit, label %match_ns.exit.thread

match_ns.exit:                                    ; preds = %.thread.i, %bb.i, %bb.h, %.lr.ph104.split
  %i.bg = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !74 ; 2 uses
  %.not51 = icmp eq ptr %i.bh, null
  br i1 %.not51, label %.thread, label %.lr.ph104.split, !llvm.loop !172

.lr.ph110.split:                                  ; preds = %.lr.ph110, %match_ns.exit60
  %.1109 = phi ptr [ %i.br, %match_ns.exit60 ], [ %1, %.lr.ph110 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1109, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !44
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.j, label %match_ns.exit60

bb.j:                                             ; preds = %.lr.ph110.split
  %i.bl = getelementptr inbounds nuw i8, ptr %.1109, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %match_ns.exit60, label %.thread.i54

.thread.i54:                                      ; preds = %bb.j
  %.in.i57 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.in.v.i56
  %i.bo = load ptr, ptr %.in.i57, align 8, !tbaa !54
  %i.bp = tail call i32 @xmlStrEqual(ptr noundef %i.bo, ptr noundef %i.af) #13
  %.not13.i58 = icmp eq i32 %i.bp, 0
  br i1 %.not13.i58, label %match_ns.exit60, label %match_ns.exit.thread

match_ns.exit60:                                  ; preds = %.thread.i54, %bb.j, %.lr.ph110.split
  %i.bq = getelementptr inbounds nuw i8, ptr %.1109, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  %.not49 = icmp eq ptr %i.br, null
  br i1 %.not49, label %.thread, label %.lr.ph110.split, !llvm.loop !173

bb.k:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.q, label %.preheader92

.preheader92:                                     ; preds = %bb.k
  %.not4599 = icmp eq ptr %1, null
  br i1 %.not4599, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader92
  %i.bt = icmp eq ptr %.fr120, null               ; 2 uses
  %.not11.i62 = icmp eq i32 %i.e, 0
  %.in.v.i63 = select i1 %.not11.i62, i64 16, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.fr120, i64 24
  %i.bv = select i1 %i.bt, ptr null, ptr %i.bu
  br i1 %i.bt, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %match_ns.exit67.us
  %.2100.us = phi ptr [ %i.cn, %match_ns.exit67.us ], [ %1, %.lr.ph ] ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.2100.us, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !44
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.l, label %match_ns.exit67.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.2100.us, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !78
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = tail call i32 @xmlStrEqual(ptr noundef %i.ca, ptr noundef nonnull %i.cc) #13
  %.not46.us = icmp eq i32 %i.cd, 0
  br i1 %.not46.us, label %match_ns.exit67.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %.2100.us, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !51 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %match_ns.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %match_ns.exit.thread, label %.thread.i61.us

.thread.i61.us:                                   ; preds = %bb.n
  %.in.i64.us = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.in.v.i63
  %i.ck = load ptr, ptr %.in.i64.us, align 8, !tbaa !54
  %i.cl = tail call i32 @xmlStrEqual(ptr noundef %i.ck, ptr noundef null) #13
  %.not13.i65.us = icmp eq i32 %i.cl, 0
  br i1 %.not13.i65.us, label %match_ns.exit67.us, label %match_ns.exit.thread

match_ns.exit67.us:                               ; preds = %.thread.i61.us, %bb.l, %.lr.ph.split.us
  %i.cm = getelementptr inbounds nuw i8, ptr %.2100.us, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !74 ; 2 uses
  %.not45.us = icmp eq ptr %i.cn, null
  br i1 %.not45.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !174

.lr.ph.split:                                     ; preds = %.lr.ph, %match_ns.exit67
  %.2100 = phi ptr [ %i.dc, %match_ns.exit67 ], [ %1, %.lr.ph ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.2100, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !44
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.o, label %match_ns.exit67

bb.o:                                             ; preds = %.lr.ph.split
  %i.cr = getelementptr inbounds nuw i8, ptr %.2100, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !78
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = tail call i32 @xmlStrEqual(ptr noundef %i.cs, ptr noundef nonnull %i.cu) #13
  %.not46 = icmp eq i32 %i.cv, 0
  br i1 %.not46, label %match_ns.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.2100, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %match_ns.exit67, label %.thread.i61

.thread.i61:                                      ; preds = %bb.p
  %.in.i64 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.in.v.i63
  %i.cz = load ptr, ptr %.in.i64, align 8, !tbaa !54
  %i.da = tail call i32 @xmlStrEqual(ptr noundef %i.cz, ptr noundef %i.bv) #13
  %.not13.i65 = icmp eq i32 %i.da, 0
  br i1 %.not13.i65, label %match_ns.exit67, label %match_ns.exit.thread

match_ns.exit67:                                  ; preds = %.thread.i61, %bb.p, %bb.o, %.lr.ph.split
  %i.db = getelementptr inbounds nuw i8, ptr %.2100, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !74 ; 2 uses
  %.not45 = icmp eq ptr %i.dc, null
  br i1 %.not45, label %.thread, label %.lr.ph.split, !llvm.loop !174

bb.q:                                             ; preds = %bb.a, %bb.k
  %.not43114 = icmp eq ptr %1, null
  br i1 %.not43114, label %.thread, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.q
  %i.dd = icmp eq ptr %.fr120, null               ; 2 uses
  %.not11.i69 = icmp eq i32 %i.e, 0
  %.in.v.i70 = select i1 %.not11.i69, i64 16, i64 24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.fr120, i64 24
  %i.df = select i1 %i.dd, ptr null, ptr %i.de
  br i1 %i.dd, label %.lr.ph116.split.us, label %.lr.ph116.split

.lr.ph116.split.us:                               ; preds = %.lr.ph116, %match_ns.exit74.us
  %.3115.us = phi ptr [ %i.ds, %match_ns.exit74.us ], [ %1, %.lr.ph116 ] ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.3115.us, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !44
  %i.di = icmp eq i32 %i.dh, 1
  br i1 %i.di, label %bb.r, label %match_ns.exit74.us

bb.r:                                             ; preds = %.lr.ph116.split.us
  %i.dj = getelementptr inbounds nuw i8, ptr %.3115.us, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !51 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %match_ns.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !53
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %match_ns.exit.thread, label %.thread.i68.us

.thread.i68.us:                                   ; preds = %bb.s
  %.in.i71.us = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.in.v.i70
  %i.dp = load ptr, ptr %.in.i71.us, align 8, !tbaa !54
  %i.dq = tail call i32 @xmlStrEqual(ptr noundef %i.dp, ptr noundef null) #13
  %.not13.i72.us = icmp eq i32 %i.dq, 0
  br i1 %.not13.i72.us, label %match_ns.exit74.us, label %match_ns.exit.thread

match_ns.exit74.us:                               ; preds = %.thread.i68.us, %.lr.ph116.split.us
  %i.dr = getelementptr inbounds nuw i8, ptr %.3115.us, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !74 ; 2 uses
  %.not43.us = icmp eq ptr %i.ds, null
  br i1 %.not43.us, label %.thread, label %.lr.ph116.split.us, !llvm.loop !175

.lr.ph116.split:                                  ; preds = %.lr.ph116, %match_ns.exit74
  %.3115 = phi ptr [ %i.ec, %match_ns.exit74 ], [ %1, %.lr.ph116 ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.3115, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !44
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.t, label %match_ns.exit74

bb.t:                                             ; preds = %.lr.ph116.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.3115, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !51 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %match_ns.exit74, label %.thread.i68

.thread.i68:                                      ; preds = %bb.t
  %.in.i71 = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.in.v.i70
  %i.dz = load ptr, ptr %.in.i71, align 8, !tbaa !54
  %i.ea = tail call i32 @xmlStrEqual(ptr noundef %i.dz, ptr noundef %i.df) #13
  %.not13.i72 = icmp eq i32 %i.ea, 0
  br i1 %.not13.i72, label %match_ns.exit74, label %match_ns.exit.thread

match_ns.exit74:                                  ; preds = %.thread.i68, %bb.t, %.lr.ph116.split
  %i.eb = getelementptr inbounds nuw i8, ptr %.3115, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74 ; 2 uses
  %.not43 = icmp eq ptr %i.ec, null
  br i1 %.not43, label %.thread, label %.lr.ph116.split, !llvm.loop !175

match_ns.exit.thread:                             ; preds = %.thread.i61, %.thread.i61.us, %bb.n, %bb.m, %.thread.i, %.thread.i.us, %bb.e, %bb.d, %.thread.i54, %.thread.i54.us, %bb.g, %bb.f, %.thread.i68, %.thread.i68.us, %bb.s, %bb.r
  %.4 = phi ptr [ %.0103.us, %.thread.i.us ], [ %.1109.us, %.thread.i54.us ], [ %.3115.us, %.thread.i68.us ], [ %.0103, %.thread.i ], [ %.3115, %.thread.i68 ], [ %.2100.us, %.thread.i61.us ], [ %.1109, %.thread.i54 ], [ %.3115.us, %bb.r ], [ %.3115.us, %bb.s ], [ %.1109.us, %bb.f ], [ %.1109.us, %bb.g ], [ %.0103.us, %bb.d ], [ %.0103.us, %bb.e ], [ %.2100.us, %bb.m ], [ %.2100.us, %bb.n ], [ %.2100, %.thread.i61 ] ; 3 uses
  %.not86 = icmp eq i32 %2, 0
  br i1 %.not86, label %.thread, label %bb.u

bb.u:                                             ; preds = %match_ns.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @node_as_zval(ptr noundef %0, ptr noundef nonnull %.4, ptr noundef nonnull %i.ed, i32 noundef 0, ptr noundef null, ptr noundef %.fr120, i32 noundef %i.e)
  br label %.thread

.thread:                                          ; preds = %match_ns.exit67, %match_ns.exit67.us, %match_ns.exit, %match_ns.exit.us, %match_ns.exit60, %match_ns.exit60.us, %match_ns.exit74, %match_ns.exit74.us, %.preheader92, %.preheader89, %.preheader, %bb.q, %bb.u, %match_ns.exit.thread
  %.485 = phi ptr [ %.4, %match_ns.exit.thread ], [ %.4, %bb.u ], [ null, %bb.q ], [ null, %.preheader89 ], [ null, %.preheader ], [ null, %.preheader92 ], [ null, %match_ns.exit74.us ], [ null, %match_ns.exit74 ], [ null, %match_ns.exit60.us ], [ null, %match_ns.exit60 ], [ null, %match_ns.exit.us ], [ null, %match_ns.exit ], [ null, %match_ns.exit67.us ], [ null, %match_ns.exit67 ]
  ret ptr %.485
}

; Function Attrs: nounwind uwtable
define hidden ptr @simplexml_export_node(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 3 uses
  %.not6.i = icmp eq i32 %i.f, 0
  br i1 %.not6.i, label %php_sxe_get_first_node_non_destructive.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %.not14.i.i = icmp eq ptr %i.h, null
  br i1 %.not14.i.i, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f, %bb.e
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.1) #13
  br label %php_sxe_get_first_node_non_destructive.exit

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.f, -1
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.simplexml_export_node, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %switch.ext
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.1.i.i = phi ptr [ %i.h, %bb.g ], [ %i.l, %switch.lookup ]
  %i.m = tail call fastcc ptr @php_sxe_iterator_fetch(ptr noundef nonnull %i.b, ptr noundef %.1.i.i, i32 noundef 0)
  br label %php_sxe_get_first_node_non_destructive.exit

php_sxe_get_first_node_non_destructive.exit:      ; preds = %bb.d, %.thread.i.i, %bb.h
  %.0.i = phi ptr [ null, %.thread.i.i ], [ %.0, %bb.d ], [ %i.m, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden void @zif_simplexml_import_dom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load ptr, ptr @ce_SimpleXMLElement, align 8, !tbaa !16
  store ptr %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  %i.f = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.e, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.i = call ptr @php_libxml_import_node(ptr noundef %i.h) #13 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef 1, ptr noundef nonnull @.str.25) #13
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.26) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !17
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  switch i32 %i.o, label %.thread [
    i32 9, label %bb.g
    i32 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.i) #13 ; 3 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %bb.l, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.f
  %i.q = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.o, %bb.f ]
  %.02129 = phi ptr [ %i.p, %..thread_crit_edge ], [ %i.i, %bb.f ] ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.thread
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @ce_SimpleXMLElement, align 8, !tbaa !16
  store ptr %i.t, ptr %i.b, align 8, !tbaa !16
  br label %php_sxe_find_fptr_count.exit

bb.j:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.s, align 8, !tbaa !116
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %zend_hash_find_ptr.exit.i, label %bb.k

zend_hash_find_ptr.exit.i:                        ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.x = load ptr, ptr @zend_known_strings, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 600
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = call ptr @zend_hash_find(ptr noundef nonnull %i.w, ptr noundef %i.z) #13 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17, !nonnull !107, !noundef !107 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = load ptr, ptr @ce_SimpleXMLElement, align 8, !tbaa !16
end_hunk_0
