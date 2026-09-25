Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2cache?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5B2__cache_hdr_deserialize:bb.a
  %i.et = or disjoint i64 %i.es, %i.en
  store i64 %i.et, ptr %i.eo, align 8, !tbaa !37
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.k, %bb.l, %bb.m
  %i.ev = phi ptr [ %.pre, %._crit_edge ], [ %i.cw, %bb.k ], [ %i.ek, %bb.l ], [ %i.eu, %bb.m ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !21
  %i.ex = zext nneg i8 %i.aa to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @H5B2_client_class_g, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !81
  store ptr %i.ez, ptr %4, align 8, !tbaa !82
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !83
  %i.fc = call i32 @H5B2__hdr_init(ptr noundef nonnull %i.i, ptr noundef nonnull %4, ptr noundef %i.fb, i16 noundef zeroext %i.bh) #6
  %i.fd = icmp slt i32 %i.fc, 0
  br i1 %i.fd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fe = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.ff = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !18
  %i.fg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_deserialize, i32 noundef 289, i64 noundef %i.fe, i64 noundef %i.ff, ptr noundef nonnull @.str.10) #6 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !85
  br label %.thread

bb.q:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.o
  %i.fk = call i32 @H5B2__hdr_free(ptr noundef nonnull %i.i) #6
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.fm = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.fn = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !18
  %i.fo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_deserialize, i32 noundef 303, i64 noundef %i.fm, i64 noundef %i.fn, ptr noundef nonnull @.str.11) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.p, %bb.r, %bb.q, %bb.a
  %.1 = phi ptr [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5B2__cache_hdr_image_len(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38
  store i64 %i.h, ptr %1, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5B2__cache_hdr_serialize(ptr noundef %0, ptr noundef %1, i64 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  store i32 1145590850, ptr %1, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 0, ptr %i.h, align 1, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.m, ptr %i.i, align 1, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 276 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = trunc i32 %i.p to i8
  store i8 %i.q, ptr %i.n, align 1, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.s = load i32, ptr %i.o, align 4, !tbaa !42
  %i.t = lshr i32 %i.s, 8
  %i.u = trunc i32 %i.t to i8
  store i8 %i.u, ptr %i.r, align 1, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.o, align 4, !tbaa !42
  %i.x = lshr i32 %i.w, 16
  %i.y = trunc i32 %i.x to i8
  store i8 %i.y, ptr %i.v, align 1, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !42
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = trunc nuw i32 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ai = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 284 ; 2 uses
  %i.an = load i16, ptr %i.am, align 4, !tbaa !86
  %i.ao = trunc i16 %i.an to i8
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.aq = load i16, ptr %i.am, align 4, !tbaa !86
  %i.ar = lshr i16 %i.aq, 8
  %i.as = trunc nuw i16 %i.ar to i8
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.av = load i8, ptr %i.au, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.av, ptr %i.at, align 1, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 273
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !88
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.az, ptr %i.a, align 8, !tbaa !21
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !89
  call void @H5F_addr_encode(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bb) #6
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !36
  %i.be = trunc i16 %i.bd to i8
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !21
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !22
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !21
  %i.bi = load i16, ptr %i.bc, align 8, !tbaa !36
  %i.bj = lshr i16 %i.bi, 8
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !22
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !21
  %i.bn = call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #6
  switch i8 %i.bn, label %bb.f [
    i8 4, label %bb.c
    i8 8, label %bb.d
    i8 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !37
  %i.bq = trunc i64 %i.bp to i8
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !21
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !22
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !21
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !37
  %i.bv = lshr i64 %i.bu, 8
  %i.bw = trunc i64 %i.bv to i8
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !22
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  store ptr %i.by, ptr %i.a, align 8, !tbaa !21
  %i.bz = load i64, ptr %i.bo, align 8, !tbaa !37
  %i.ca = lshr i64 %i.bz, 16
  %i.cb = trunc i64 %i.ca to i8
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !22
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !21
  %i.ce = load i64, ptr %i.bo, align 8, !tbaa !37
  %i.cf = lshr i64 %i.ce, 24
  %i.cg = trunc i64 %i.cf to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !22
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 264
  %4 = load <8 x i8>, ptr %i.ch, align 8, !tbaa !37
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !21
  store <8 x i8> %4, ptr %i.ci, align 1, !tbaa !22
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !37
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !21
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !22
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.co, ptr %i.a, align 8, !tbaa !21
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !37
  %i.cq = lshr i64 %i.cp, 8
  %i.cr = trunc i64 %i.cq to i8
  store i8 %i.cr, ptr %i.co, align 1, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.e
  %.sink45 = phi i64 [ 1, %bb.e ], [ 8, %bb.d ], [ 1, %bb.c ]
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink45
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !38
  %i.cw = add i64 %i.cv, -4
  %i.cx = call i32 @H5_checksum_metadata(ptr noundef nonnull %1, i64 noundef %i.cw, i32 noundef 0) #6 ; 4 uses
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !21
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !22
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1 ; 2 uses
  store ptr %i.db, ptr %i.a, align 8, !tbaa !21
  %i.dc = lshr i32 %i.cx, 8
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !22
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  store ptr %i.df, ptr %i.a, align 8, !tbaa !21
  %i.dg = lshr i32 %i.cx, 16
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !22
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = lshr i32 %i.cx, 24
  %i.dl = trunc nuw i32 %i.dk to i8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5B2__cache_hdr_notify(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.m, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.h = load i8, ptr %i.g, align 8, !tbaa !44, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  switch i32 %0, label %bb.l [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 2, label %bb.d
    i32 4, label %bb.m
    i32 5, label %bb.m
    i32 6, label %bb.m
    i32 7, label %bb.m
    i32 8, label %bb.m
    i32 9, label %bb.m
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !45
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.q = tail call i32 @H5AC_proxy_entry_remove_child(ptr noundef nonnull %i.n, ptr noundef %i.p) #6
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.t = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !18
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_notify, i32 noundef 457, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.12) #6 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.m, align 8, !tbaa !90
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91   ; 2 uses
  %.not16 = icmp eq ptr %i.w, null
  br i1 %.not16, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call i32 @H5AC_proxy_entry_remove_child(ptr noundef nonnull %i.w, ptr noundef nonnull %1) #6
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.aa = load i64, ptr @H5E_CANTUNDEPEND_g, align 8, !tbaa !18
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_notify, i32 noundef 466, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.13) #6 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.ac = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.ad = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !18
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_notify, i32 noundef 473, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.14) #6 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.b, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.j, %bb.i, %bb.a
  %.0 = phi i32 [ -1, %bb.l ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ 0, %bb.c ], [ -1, %bb.g ], [ -1, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5B2__cache_hdr_free_icr(ptr noundef %0) #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5B2__hdr_free(ptr noundef %0) #6
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !18
  %i.j = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !18
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5B2__cache_hdr_free_icr, i32 noundef 508, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5B2__cache_int_get_initial_load_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 276
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = zext i32 %i.j to i64
  store i64 %i.k, ptr %1, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @H5B2__cache_int_verify_chksum(ptr noundef %0, i64 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
