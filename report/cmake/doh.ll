Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/doh?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@doh_probe_run:bb.a
  switch i32 %i.dx, label %doh_probe_dtor.exit [
    i32 48, label %bb.aj
    i32 4, label %bb.aj
    i32 0, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !114 ; 2 uses
  %.not355 = icmp eq ptr %i.dz, null
  br i1 %.not355, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.eb = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ea, i32 noundef 40309, ptr noundef nonnull %i.dz) #7 ; 2 uses
  switch i32 %i.eb, label %doh_probe_dtor.exit [
    i32 48, label %bb.al
    i32 4, label %bb.al
    i32 0, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !84 ; 2 uses
  %.not356 = icmp eq ptr %i.ed, null
  br i1 %.not356, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ef = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ee, i32 noundef 10097, ptr noundef nonnull %i.ed) #7 ; 2 uses
  switch i32 %i.ef, label %doh_probe_dtor.exit [
    i32 48, label %bb.an
    i32 4, label %bb.an
    i32 0, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !84 ; 2 uses
  %.not357 = icmp eq ptr %i.eh, null
  br i1 %.not357, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ej = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ei, i32 noundef 10169, ptr noundef nonnull %i.eh) #7 ; 2 uses
  switch i32 %i.ej, label %doh_probe_dtor.exit [
    i32 48, label %bb.ap
    i32 4, label %bb.ap
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.an
  %i.ek = load i16, ptr %i.df, align 8
  %i.el = and i16 %i.ek, 1
  %.not358 = icmp eq i16 %i.el, 0
  br i1 %.not358, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.en = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.em, i32 noundef 172, i64 noundef 1) #7 ; 2 uses
  switch i32 %i.en, label %doh_probe_dtor.exit [
    i32 48, label %bb.ar
    i32 4, label %bb.ar
    i32 0, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !115 ; 2 uses
  %.not359 = icmp eq ptr %i.ep, null
  br i1 %.not359, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.er = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.eq, i32 noundef 20108, ptr noundef nonnull %i.ep) #7 ; 2 uses
  switch i32 %i.er, label %doh_probe_dtor.exit [
    i32 48, label %bb.at
    i32 4, label %bb.at
    i32 0, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !116 ; 2 uses
  %.not360 = icmp eq ptr %i.et, null
  br i1 %.not360, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ev = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.eu, i32 noundef 10109, ptr noundef nonnull %i.et) #7 ; 2 uses
  switch i32 %i.ev, label %doh_probe_dtor.exit [
    i32 48, label %bb.av
    i32 4, label %bb.av
    i32 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.at
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !117 ; 2 uses
  %.not361 = icmp eq ptr %i.ex, null
  br i1 %.not361, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ez = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.ey, i32 noundef 20094, ptr noundef nonnull %i.ex) #7 ; 2 uses
  switch i32 %i.ez, label %doh_probe_dtor.exit [
    i32 48, label %bb.ax
    i32 4, label %bb.ax
    i32 0, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !118 ; 2 uses
  %.not362 = icmp eq ptr %i.fb, null
  br i1 %.not362, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fd = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.fc, i32 noundef 10095, ptr noundef nonnull %i.fb) #7 ; 2 uses
  switch i32 %i.fd, label %doh_probe_dtor.exit [
    i32 48, label %bb.az
    i32 4, label %bb.az
    i32 0, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !84 ; 2 uses
  %.not363 = icmp eq ptr %i.ff, null
  br i1 %.not363, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fh = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.fg, i32 noundef 10298, ptr noundef nonnull %i.ff) #7 ; 2 uses
  switch i32 %i.fh, label %doh_probe_dtor.exit [
    i32 48, label %bb.bb
    i32 4, label %bb.bb
    i32 0, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.az
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !119
  %i.fl = zext i8 %i.fk to i64
  %i.fm = call i32 (ptr, i32, ...) @curl_easy_setopt(ptr noundef %i.fi, i32 noundef 216, i64 noundef %i.fl) #7 ; 0 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4436 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = or i32 %i.fp, 262144
  store i32 %i.fq, ptr %i.fo, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !120
  %i.fu = call i32 @Curl_meta_set(ptr noundef %i.fn, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.c, ptr noundef nonnull @doh_probe_dtor) #7 ; 2 uses
  %.not364 = icmp eq i32 %i.fu, 0
  br i1 %.not364, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fw = call i32 @curl_multi_add_handle(ptr noundef %4, ptr noundef %i.fv) #7
  %.not365 = icmp eq i32 %i.fw, 0
  br i1 %.not365, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !92
  store i32 %i.fz, ptr %6, align 4, !tbaa !96
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ga = call i32 @Curl_close(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.bf

doh_probe_dtor.exit:                              ; preds = %doh_req_encode.exit.thread, %.loopexit, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.ab, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.aw, %bb.ay, %bb.ba, %bb.h
  %.0294.ph = phi i32 [ 27, %bb.h ], [ %i.fh, %bb.ba ], [ %i.fd, %bb.ay ], [ %i.ez, %bb.aw ], [ %i.ev, %bb.au ], [ %i.er, %bb.as ], [ %i.en, %bb.aq ], [ %i.ej, %bb.ao ], [ %i.ef, %bb.am ], [ %i.eb, %bb.ak ], [ %i.dx, %bb.ai ], [ %i.de, %bb.ag ], [ %i.cz, %bb.af ], [ %i.cu, %bb.ae ], [ %i.cn, %bb.ad ], [ %i.cj, %bb.ab ], [ %i.bx, %bb.w ], [ %i.bs, %bb.u ], [ %i.bo, %bb.t ], [ %i.bm, %bb.s ], [ %i.bk, %bb.r ], [ %i.bi, %bb.q ], [ %i.bg, %bb.p ], [ %i.bd, %bb.o ], [ %i.ba, %bb.n ], [ %i.ay, %bb.m ], [ %i.aw, %bb.l ], [ %i.au, %bb.k ], [ %i.as, %bb.j ], [ %i.ap, %bb.i ], [ 28, %.loopexit ], [ 27, %doh_req_encode.exit.thread ]
  %i.gb = call i32 @Curl_close(ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !99
  call void @curl_slist_free_all(ptr noundef %i.gd) #7
  call void @curlx_dyn_free(ptr noundef nonnull %i.f) #7
  %i.ge = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  call void %i.ge(ptr noundef nonnull %i.c) #7, !inline_history !121
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %doh_probe_dtor.exit, %bb.a, %bb.bd
  %.0295 = phi i32 [ 27, %bb.a ], [ 0, %bb.bd ], [ %.0294.ph, %doh_probe_dtor.exit ], [ %i.fu, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_doh_take_result(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 8 uses
  %3 = alloca %struct.dohentry, align 8           ; 14 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr null, ptr %2, align 8, !tbaa !131
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %Curl_doh_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @Curl_failf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %i.j) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, 4
  %.not96 = icmp eq i8 %i.m, 0
  %i.n = select i1 %.not96, i32 6, i32 5
  br label %Curl_doh_cleanup.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !86
  %.not84 = icmp eq i32 %i.p, 0
  br i1 %.not84, label %bb.f, label %Curl_doh_cleanup.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @doh_close(ptr noundef %0, ptr noundef nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(624) %3, i8 0, i64 624, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 612 ; 3 uses
  store i32 2147483647, ptr %i.q, align 4, !tbaa !101
  call void @curlx_dyn_init(ptr noundef nonnull %3, i64 noundef 256) #7
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @curlx_dyn_init(ptr noundef nonnull %i.r, i64 noundef 256) #7
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @curlx_dyn_init(ptr noundef nonnull %i.s, i64 noundef 256) #7
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @curlx_dyn_init(ptr noundef nonnull %i.t, i64 noundef 256) #7
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 616 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 608 ; 3 uses
  %.not121 = icmp eq ptr %0, null                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.ba
  %i.z = phi i1 [ true, %bb.f ], [ false, %bb.ba ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %bb.f ], [ 1, %bb.ba ]
  %.sroa.7.0172 = phi i32 [ 0, %bb.f ], [ %.sroa.7.1, %bb.ba ] ; 3 uses
  %.sroa.0.0170 = phi i32 [ 0, %bb.f ], [ %.sroa.0.1, %bb.ba ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !94
  %.not93 = icmp eq i32 %i.ac, 0
  br i1 %.not93, label %bb.ba, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ae = call ptr @curlx_dyn_uptr(ptr noundef nonnull %i.ad) #7 ; 28 uses
  %i.af = call i64 @curlx_dyn_len(ptr noundef nonnull %i.ad) #7 ; 25 uses
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0) #7
  %i.ah = icmp ult i64 %i.af, 12
  br i1 %i.ah, label %doh_resp_decode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %doh_resp_decode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !97
  %.not98.i = icmp eq i8 %i.ai, 0
  br i1 %.not98.i, label %bb.k, label %doh_resp_decode.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !97
  %.not99.i = icmp eq i8 %i.ak, 0
  br i1 %.not99.i, label %bb.l, label %doh_resp_decode.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !97
  %i.an = and i8 %i.am, 15
  %.not100.i = icmp eq i8 %i.an, 0
  br i1 %.not100.i, label %bb.m, label %doh_resp_decode.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !97
  %i.aq = zext i8 %i.ap to i16
  %i.ar = shl nuw i16 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.at = load i8, ptr %i.as, align 1, !tbaa !97
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.ar, %i.au            ; 2 uses
  %.not101151.i = icmp eq i16 %i.av, 0
  br i1 %.not101151.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %doh_skipqname.exit.i
  %i.aw = add i16 %.086153.i, -1                  ; 2 uses
  %.not101.i = icmp eq i16 %i.aw, 0
  br i1 %.not101.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.086153.i = phi i16 [ %i.aw, %bb.n ], [ %i.av, %bb.m ]
  %.lcssa145147152.i = phi i32 [ %i.bl, %bb.n ], [ 12, %bb.m ]
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %i.ax = phi i32 [ %i.bi, %bb.s ], [ %.lcssa145147152.i, %.lr.ph.i ] ; 3 uses
  %i.ay = add i32 %i.ax, 1                        ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp ult i64 %i.af, %i.az
  br i1 %i.ba, label %doh_resp_decode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = zext i32 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !97  ; 3 uses
  %trunc.i.i = and i8 %i.bd, -64
  switch i8 %trunc.i.i, label %doh_resp_decode.exit [
    i8 -64, label %bb.q
    i8 0, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = add i32 %i.ax, 2                        ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp ult i64 %i.af, %i.bf
  br i1 %i.bg, label %doh_resp_decode.exit, label %doh_skipqname.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bh = zext i8 %i.bd to i32
  %i.bi = add i32 %i.ay, %i.bh                    ; 3 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp ult i64 %i.af, %i.bj
  br i1 %i.bk, label %doh_resp_decode.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not17.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not17.i.i, label %doh_skipqname.exit.i, label %bb.o, !llvm.loop !0

doh_skipqname.exit.i:                             ; preds = %bb.s, %bb.q
  %.lcssa145148.i = phi i32 [ %i.be, %bb.q ], [ %i.bi, %bb.s ]
  %i.bl = add i32 %.lcssa145148.i, 4              ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp ult i64 %i.af, %i.bm
  br i1 %i.bn, label %doh_resp_decode.exit, label %bb.n

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %.lcssa145147.lcssa.i = phi i32 [ 12, %bb.m ], [ %i.bl, %bb.n ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !97
  %i.bq = zext i8 %i.bp to i16
  %i.br = shl nuw i16 %i.bq, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !97
  %i.bu = zext i8 %i.bt to i16
  %i.bv = or disjoint i16 %i.br, %i.bu            ; 2 uses
  %.not102162.i = icmp eq i16 %i.bv, 0
  br i1 %.not102162.i, label %._crit_edge167.i, label %.lr.ph166.i

bb.t:                                             ; preds = %bb.ai
  %i.bw = add i16 %.084164.i, -1                  ; 2 uses
  %.not102.i = icmp eq i16 %i.bw, 0
  br i1 %.not102.i, label %._crit_edge167.loopexit.i, label %.lr.ph166.i, !llvm.loop !123

.lr.ph166.i:                                      ; preds = %._crit_edge.i, %bb.t
  %.084164.i = phi i16 [ %i.bw, %bb.t ], [ %i.bv, %._crit_edge.i ]
  %.lcssa156158163.i = phi i32 [ %i.ej, %bb.t ], [ %.lcssa145147.lcssa.i, %._crit_edge.i ]
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph166.i
  %i.bx = phi i32 [ %i.ci, %bb.y ], [ %.lcssa156158163.i, %.lr.ph166.i ] ; 3 uses
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = icmp ult i64 %i.af, %i.bz
  br i1 %i.ca, label %doh_resp_decode.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !97  ; 3 uses
  %trunc.i117.i = and i8 %i.cd, -64
  switch i8 %trunc.i117.i, label %doh_resp_decode.exit [
    i8 -64, label %bb.w
    i8 0, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ce = add i32 %i.bx, 2                        ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp ult i64 %i.af, %i.cf
  br i1 %i.cg, label %doh_resp_decode.exit, label %doh_skipqname.exit120.i

bb.x:                                             ; preds = %bb.v
  %i.ch = zext i8 %i.cd to i32
  %i.ci = add i32 %i.by, %i.ch                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp ult i64 %i.af, %i.cj
  br i1 %i.ck, label %doh_resp_decode.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not17.i118.i = icmp eq i8 %i.cd, 0
  br i1 %.not17.i118.i, label %doh_skipqname.exit120.i, label %bb.u, !llvm.loop !0

doh_skipqname.exit120.i:                          ; preds = %bb.y, %bb.w
  %.lcssa156159.i = phi i32 [ %i.ce, %bb.w ], [ %i.ci, %bb.y ] ; 8 uses
  %i.cl = add i32 %.lcssa156159.i, 2
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = icmp ult i64 %i.af, %i.cm
  br i1 %i.cn, label %doh_resp_decode.exit, label %bb.z

bb.z:                                             ; preds = %doh_skipqname.exit120.i
  %i.co = zext i32 %.lcssa156159.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !97
  %i.cr = zext i8 %i.cq to i16
  %i.cs = shl nuw i16 %i.cr, 8
  %i.ct = add i32 %.lcssa156159.i, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !97
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cs, %i.cx            ; 4 uses
  switch i16 %i.cy, label %bb.aa [
    i16 39, label %bb.ab
    i16 5, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cz = zext i16 %i.cy to i32
  %.not112.i = icmp eq i32 %i.ag, %i.cz
  br i1 %.not112.i, label %bb.ab, label %doh_resp_decode.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.z
  %i.da = add i32 %.lcssa156159.i, 4
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = icmp ult i64 %i.af, %i.db
  br i1 %i.dc, label %doh_resp_decode.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cm
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !97
  %i.df = zext i8 %i.de to i16
  %i.dg = shl nuw i16 %i.df, 8
  %i.dh = add i32 %.lcssa156159.i, 3
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !97
  %i.dl = zext i8 %i.dk to i16
  %i.dm = or disjoint i16 %i.dg, %i.dl
  %.not113.i = icmp eq i16 %i.dm, 1
  br i1 %.not113.i, label %bb.ad, label %doh_resp_decode.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dn = add i32 %.lcssa156159.i, 8
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %i.dp = icmp ult i64 %i.af, %i.do
  br i1 %i.dp, label %doh_resp_decode.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.db
  %i.dr = load i32, ptr %i.dq, align 1
  %i.ds = call i32 @llvm.bswap.i32(i32 %i.dr)     ; 2 uses
  %i.dt = load i32, ptr %i.q, align 4, !tbaa !101
  %i.du = icmp ult i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ds, ptr %i.q, align 4, !tbaa !101
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dv = add i32 %.lcssa156159.i, 10             ; 3 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = icmp ult i64 %i.af, %i.dw
  br i1 %i.dx, label %doh_resp_decode.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.do
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !97
  %i.ea = zext i8 %i.dz to i16
  %i.eb = shl nuw i16 %i.ea, 8
  %i.ec = add i32 %.lcssa156159.i, 9
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !97
  %i.eg = zext i8 %i.ef to i16
  %i.eh = or disjoint i16 %i.eb, %i.eg            ; 2 uses
  %i.ei = zext i16 %i.eh to i32
  %i.ej = add i32 %i.dv, %i.ei                    ; 3 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp ult i64 %i.af, %i.ek
  br i1 %i.el, label %doh_resp_decode.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = call fastcc i32 @doh_rdata(ptr noundef %i.ae, i64 noundef %i.af, i16 noundef zeroext %i.eh, i16 noundef zeroext %i.cy, i32 noundef %i.dv, ptr noundef nonnull %3) ; 2 uses
  %.not114.i = icmp eq i32 %i.em, 0
  br i1 %.not114.i, label %bb.t, label %doh_resp_decode.exit

._crit_edge167.loopexit.i:                        ; preds = %bb.t
  %i.en = icmp ne i16 %i.cy, 2
  br label %._crit_edge167.i

._crit_edge167.i:                                 ; preds = %._crit_edge167.loopexit.i, %._crit_edge.i
  %.promoted150 = phi i32 [ %.lcssa145147.lcssa.i, %._crit_edge.i ], [ %i.ej, %._crit_edge167.loopexit.i ] ; 3 uses
  %.083.lcssa.i = phi i1 [ true, %._crit_edge.i ], [ %i.en, %._crit_edge167.loopexit.i ]
  store i32 %.promoted150, ptr %.sroa.0, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !97
  %i.eq = zext i8 %i.ep to i16
  %i.er = shl nuw i16 %i.eq, 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.et = load i8, ptr %i.es, align 1, !tbaa !97
  %i.eu = zext i8 %i.et to i16
  %i.ev = or disjoint i16 %i.er, %i.eu            ; 2 uses
  %.not103170.i = icmp eq i16 %i.ev, 0
  br i1 %.not103170.i, label %._crit_edge174.i, label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %._crit_edge167.i, %bb.aq
  %.lcssa149151 = phi i32 [ %i.ga, %bb.aq ], [ %.promoted150, %._crit_edge167.i ]
  %.082171.i = phi i16 [ %i.gd, %bb.aq ], [ %i.ev, %._crit_edge167.i ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.an, %.lr.ph173.i
  %i.ew = phi i32 [ %i.fh, %bb.an ], [ %.lcssa149151, %.lr.ph173.i ] ; 3 uses
  %i.ex = add i32 %i.ew, 1                        ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp ult i64 %i.af, %i.ey
  br i1 %i.ez, label %doh_resp_decode.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = zext i32 %i.ew to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !97  ; 3 uses
  %trunc.i = and i8 %i.fc, -64
  switch i8 %trunc.i, label %doh_resp_decode.exit [
    i8 -64, label %bb.al
    i8 0, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fd = add i32 %i.ew, 2                        ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp ult i64 %i.af, %i.fe
  br i1 %i.ff, label %doh_resp_decode.exit, label %doh_skipqname.exit

bb.am:                                            ; preds = %bb.ak
  %i.fg = zext i8 %i.fc to i32
  %i.fh = add i32 %i.ex, %i.fg                    ; 3 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp ult i64 %i.af, %i.fi
  br i1 %i.fj, label %doh_resp_decode.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not17.i = icmp eq i8 %i.fc, 0
  br i1 %.not17.i, label %doh_skipqname.exit, label %bb.aj, !llvm.loop !0

doh_skipqname.exit:                               ; preds = %bb.an, %bb.al
  %.lcssa149152 = phi i32 [ %i.fd, %bb.al ], [ %i.fh, %bb.an ] ; 3 uses
  %i.fk = add i32 %.lcssa149152, 8
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = icmp ult i64 %i.af, %i.fl
  br i1 %i.fm, label %doh_resp_decode.exit, label %bb.ao

bb.ao:                                            ; preds = %doh_skipqname.exit
  %i.fn = add i32 %.lcssa149152, 10               ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = icmp ult i64 %i.af, %i.fo
  br i1 %i.fp, label %doh_resp_decode.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fl
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !97
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 8
  %i.fu = add i32 %.lcssa149152, 9
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !97
  %i.fy = zext i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.ft, %i.fy
  %i.ga = add i32 %i.fz, %i.fn                    ; 4 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp ult i64 %i.af, %i.gb
  br i1 %i.gc, label %doh_resp_decode.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gd = add i16 %.082171.i, -1                  ; 2 uses
  %.not103.i = icmp eq i16 %i.gd, 0
  br i1 %.not103.i, label %._crit_edge174.i.loopexit, label %.lr.ph173.i, !llvm.loop !124

._crit_edge174.i.loopexit:                        ; preds = %bb.aq
  store i32 %i.ga, ptr %.sroa.0, align 4
  br label %._crit_edge174.i

._crit_edge174.i:                                 ; preds = %._crit_edge174.i.loopexit, %._crit_edge167.i
  %i.ge = phi i32 [ %.promoted150, %._crit_edge167.i ], [ %i.ga, %._crit_edge174.i.loopexit ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !97
  %i.gh = zext i8 %i.gg to i16
  %i.gi = shl nuw i16 %i.gh, 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !97
  %i.gl = zext i8 %i.gk to i16
  %i.gm = or disjoint i16 %i.gi, %i.gl            ; 2 uses
  %.not104175.i = icmp eq i16 %i.gm, 0
  br i1 %.not104175.i, label %._crit_edge174.i.._crit_edge179.i_crit_edge, label %.lr.ph178.i

._crit_edge174.i.._crit_edge179.i_crit_edge:      ; preds = %._crit_edge174.i
  %.pre184 = zext i32 %i.ge to i64
  br label %._crit_edge179.i

.lr.ph178.i:                                      ; preds = %._crit_edge174.i, %bb.au
  %.081176.i = phi i16 [ %i.hi, %bb.au ], [ %i.gm, %._crit_edge174.i ]
  %i.gn = call fastcc i32 @doh_skipqname(ptr noundef %i.ae, i64 noundef %i.af, ptr noundef %.sroa.0) ; 2 uses
  %.not109.i = icmp eq i32 %i.gn, 0
  br i1 %.not109.i, label %bb.ar, label %doh_resp_decode.exit

bb.ar:                                            ; preds = %.lr.ph178.i
  %i.go = load i32, ptr %.sroa.0, align 4, !tbaa !96 ; 3 uses
  %i.gp = add i32 %i.go, 8
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = icmp ult i64 %i.af, %i.gq
  br i1 %i.gr, label %doh_resp_decode.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = add i32 %i.go, 10                       ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = icmp ult i64 %i.af, %i.gt
  br i1 %i.gu, label %doh_resp_decode.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.gq
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !97
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = add i32 %i.go, 9
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !97
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.gy, %i.hd
  %i.hf = add i32 %i.he, %i.gs                    ; 2 uses
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %i.hh = icmp ult i64 %i.af, %i.hg
  br i1 %i.hh, label %doh_resp_decode.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.hf, ptr %.sroa.0, align 4, !tbaa !96
  %i.hi = add i16 %.081176.i, -1                  ; 2 uses
  %.not104.i = icmp eq i16 %i.hi, 0
  br i1 %.not104.i, label %._crit_edge179.i, label %.lr.ph178.i, !llvm.loop !125

._crit_edge179.i:                                 ; preds = %bb.au, %._crit_edge174.i.._crit_edge179.i_crit_edge
  %.pre-phi = phi i64 [ %.pre184, %._crit_edge174.i.._crit_edge179.i_crit_edge ], [ %i.hg, %bb.au ]
  %.not105.i = icmp eq i64 %i.af, %.pre-phi
  br i1 %.not105.i, label %bb.av, label %doh_resp_decode.exit

bb.av:                                            ; preds = %._crit_edge179.i
  %i.hj = load i32, ptr %i.u, align 8
  %.not107.i = icmp eq i32 %i.hj, 0
  %or.cond117 = select i1 %.083.lcssa.i, i1 %.not107.i, i1 false
  %i.hk = load i32, ptr %i.v, align 8
  %.not108.i = icmp eq i32 %i.hk, 0
  %or.cond120 = select i1 %or.cond117, i1 %.not108.i, i1 false
  br i1 %or.cond120, label %doh_resp_decode.exit, label %doh_resp_decode.exit.thread

doh_resp_decode.exit.thread:                      ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0) #7
  %.sroa.0.0.121 = select i1 %i.z, i32 0, i32 %.sroa.0.0170
  %..sroa.7.0122 = select i1 %i.z, i32 %.sroa.7.0172, i32 0
  br label %bb.ba

doh_resp_decode.exit:                             ; preds = %bb.q, %doh_skipqname.exit.i, %bb.w, %doh_skipqname.exit120.i, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ag, %bb.ah, %bb.ai, %bb.al, %doh_skipqname.exit, %bb.ao, %bb.ap, %.lr.ph178.i, %bb.ar, %bb.as, %bb.at, %bb.o, %bb.p, %bb.r, %bb.u, %bb.v, %bb.x, %bb.ak, %bb.aj, %bb.am, %bb.av, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %._crit_edge179.i
  %.2.i = phi i32 [ 7, %._crit_edge179.i ], [ 4, %bb.h ], [ 12, %bb.i ], [ 8, %bb.l ], [ 11, %bb.av ], [ 1, %bb.p ], [ 2, %bb.al ], [ 12, %bb.k ], [ 12, %bb.j ], [ 1, %bb.v ], [ 9, %bb.aa ], [ %i.gn, %.lr.ph178.i ], [ 1, %bb.ak ], [ 2, %bb.am ], [ 2, %bb.aj ], [ 2, %bb.u ], [ 2, %bb.x ], [ 2, %bb.o ], [ 2, %bb.r ], [ 2, %bb.as ], [ 2, %bb.at ], [ 2, %bb.ar ], [ 2, %bb.ap ], [ 2, %bb.ao ], [ 2, %doh_skipqname.exit ], [ 2, %bb.ag ], [ 2, %bb.ab ], [ 2, %bb.ah ], [ 2, %bb.w ], [ 2, %doh_skipqname.exit120.i ], [ %i.em, %bb.ai ], [ 10, %bb.ac ], [ 2, %bb.ad ], [ 2, %doh_skipqname.exit.i ], [ 2, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0) #7
  %.sroa.0.0. = select i1 %i.z, i32 %.2.i, i32 %.sroa.0.0170 ; 5 uses
  %..sroa.7.0 = select i1 %i.z, i32 %.sroa.7.0172, i32 %.2.i ; 5 uses
  br i1 %.not121, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %doh_resp_decode.exit
  %i.hl = load i32, ptr %i.w, align 1
  %i.hm = and i32 %i.hl, 134217728
  %.not94 = icmp eq i32 %i.hm, 0
  br i1 %.not94, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hn = load ptr, ptr %i.x, align 8, !tbaa !89  ; 2 uses
  %.not95 = icmp eq ptr %i.hn, null
  br i1 %.not95, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !91
  %i.hq = icmp sgt i32 %i.hp, 0
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.hs = icmp sgt i32 %i.hr, 0
  %or.cond = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond, label %doh_strerror.exit, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !91
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %doh_strerror.exit, label %bb.ba

doh_strerror.exit:                                ; preds = %bb.ay, %bb.az
  %i.ht = zext nneg i32 %.2.i to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr @errors, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !84
  %i.hw = load i32, ptr %i.ab, align 8, !tbaa !94 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.hw, 28
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.28, ptr @.str.29
  %switch.selectcmp1.i = icmp eq i32 %i.hw, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, ptr @.str.27, ptr %switch.select.i
  %i.hx = load ptr, ptr %i.y, align 8, !tbaa !25
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %i.hv, ptr noundef nonnull %switch.select2.i, ptr noundef %i.hx) #7
  br label %bb.ba

bb.ba:                                            ; preds = %doh_resp_decode.exit.thread, %doh_resp_decode.exit, %doh_strerror.exit, %bb.az, %bb.ay, %bb.aw, %bb.g
  %.sroa.0.1 = phi i32 [ %.sroa.0.0170, %bb.g ], [ %.sroa.0.0., %bb.aw ], [ %.sroa.0.0., %bb.ay ], [ %.sroa.0.0., %bb.az ], [ %.sroa.0.0., %doh_strerror.exit ], [ %.sroa.0.0., %doh_resp_decode.exit ], [ %.sroa.0.0.121, %doh_resp_decode.exit.thread ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.7.0172, %bb.g ], [ %..sroa.7.0, %bb.aw ], [ %..sroa.7.0, %bb.ay ], [ %..sroa.7.0, %bb.az ], [ %..sroa.7.0, %doh_strerror.exit ], [ %..sroa.7.0, %doh_resp_decode.exit ], [ %..sroa.7.0122, %doh_resp_decode.exit.thread ] ; 2 uses
  br i1 %i.z, label %bb.g, label %bb.bb, !llvm.loop !126

bb.bb:                                            ; preds = %bb.ba
  %i.hy = icmp ne i32 %.sroa.0.1, 0
  %i.hz = icmp ne i32 %.sroa.7.1, 0
  %or.cond5 = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %or.cond5, label %bb.br, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br i1 %.not121, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ia = load i32, ptr %i.w, align 1
  %i.ib = and i32 %i.ia, 134217728
  %.not86 = icmp eq i32 %i.ib, 0
  br i1 %.not86, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = load ptr, ptr %i.x, align 8, !tbaa !89  ; 2 uses
  %.not87 = icmp eq ptr %i.ic, null
  br i1 %.not87, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !91
  %i.if = icmp sgt i32 %i.ie, 0
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.ih = icmp sgt i32 %i.ig, 0
  %or.cond8 = select i1 %i.if, i1 %i.ih, i1 false
  br i1 %or.cond8, label %bb.bh, label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %.old6 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !91
  %.old7 = icmp sgt i32 %.old6, 0
  br i1 %.old7, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.ii = load ptr, ptr %i.y, align 8, !tbaa !25
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %i.ii) #7
  call fastcc void @doh_show(ptr noundef %0, ptr noundef %3)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bc
  %i.ij = load ptr, ptr %i.y, align 8, !tbaa !25  ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.il = load i16, ptr %i.ik, align 4, !tbaa !26 ; 2 uses
  %i.im = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ij) #8 ; 2 uses
  %i.in = add i64 %i.im, 1
  %i.io = load i32, ptr %i.v, align 8, !tbaa !102 ; 2 uses
  %.not.i97 = icmp eq i32 %i.io, 0
  br i1 %.not.i97, label %doh2ai.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bi
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i98, label %.loopexit

.lr.ph.i98:                                       ; preds = %.preheader.i
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ir = add i64 %i.im, 49
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.il)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bp, %.lr.ph.i98
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i, %bb.bp ] ; 2 uses
  %.05683.i = phi ptr [ null, %.lr.ph.i98 ], [ %spec.select.i, %bb.bp ] ; 3 uses
  %.05982.i = phi ptr [ null, %.lr.ph.i98 ], [ %i.ix, %bb.bp ] ; 2 uses
  %i.is = getelementptr inbounds nuw [20 x i8], ptr %i.iq, i64 %indvars.iv.i ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !104
  %i.iu = icmp eq i32 %i.it, 28                   ; 3 uses
  %..i = select i1 %i.iu, i64 28, i64 16          ; 3 uses
  %i.iv = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !18
  %i.iw = add i64 %i.ir, %..i
  %i.ix = call ptr %i.iv(i64 noundef 1, i64 noundef %i.iw) #7, !inline_history !127 ; 13 uses
  %.not63.i = icmp eq ptr %i.ix, null
  br i1 %.not63.i, label %doh2ai.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !135
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 %..i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull readonly align 1 %i.ij, i64 %i.in, i1 false)
  %.not64.i = icmp eq ptr %.05683.i, null
  %spec.select.i = select i1 %.not64.i, ptr %i.ix, ptr %.05683.i ; 2 uses
  %.not65.i = icmp eq ptr %.05982.i, null
  br i1 %.not65.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = getelementptr inbounds nuw i8, ptr %.05982.i, i64 40
  store ptr %i.ix, ptr %i.jc, align 8, !tbaa !137
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.jd = select i1 %i.iu, i32 10, i32 2
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !138
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i32 1, ptr %i.jf, align 8, !tbaa !139
  %i.jg = trunc nuw nsw i64 %..i to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !140
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  br i1 %i.iu, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 52
  %i.jk = load i32, ptr %i.ji, align 4
  store i32 %i.jk, ptr %i.jj, align 4
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ji, i64 16, i1 false)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sink.i = phi i16 [ 10, %bb.bo ], [ 2, %bb.bn ]
  store i16 %.sink.i, ptr %i.iy, align 8, !tbaa !141
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 50
  store i16 %rev.i.i, ptr %i.jm, align 2, !tbaa !141
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.v, align 8, !tbaa !102
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv.next.i, %i.jo
  br i1 %i.jp, label %bb.bj, label %.loopexit.loopexit, !llvm.loop !128

doh2ai.exit:                                      ; preds = %bb.bj
  call void @Curl_freeaddrinfo(ptr noundef %.05683.i) #7
  br label %doh2ai.exit.thread

.loopexit.loopexit:                               ; preds = %bb.bp
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !25
  %.pre183 = load i16, ptr %i.ik, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader.i
  %i.jq = phi i16 [ %i.il, %.preheader.i ], [ %.pre183, %.loopexit.loopexit ]
  %i.jr = phi ptr [ %i.ij, %.preheader.i ], [ %.pre, %.loopexit.loopexit ]
  %.4.i.ph = phi ptr [ null, %.preheader.i ], [ %spec.select.i, %.loopexit.loopexit ]
  store ptr %.4.i.ph, ptr %i.a, align 8, !tbaa !142
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !83
  %i.ju = call ptr @Curl_dnscache_mk_entry(ptr noundef %0, i8 noundef zeroext %i.jt, ptr noundef nonnull %i.a, ptr noundef %i.jr, i16 noundef zeroext %i.jq) #7 ; 3 uses
  %.not91 = icmp eq ptr %i.ju, null
  br i1 %.not91, label %doh2ai.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %.loopexit
  %i.jv = call i32 @Curl_dnscache_add(ptr noundef %0, ptr noundef nonnull %i.ju) #7
  store ptr %i.ju, ptr %2, align 8, !tbaa !131
  br label %doh2ai.exit.thread

doh2ai.exit.thread:                               ; preds = %bb.bi, %doh2ai.exit, %.loopexit, %bb.bq
  %.073 = phi i32 [ 27, %doh2ai.exit ], [ %i.jv, %bb.bq ], [ 27, %.loopexit ], [ 6, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bs

bb.br:                                            ; preds = %bb.bb
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.jx = load i8, ptr %i.jw, align 2
  %i.jy = and i8 %i.jx, 4
  %.not92 = icmp eq i8 %i.jy, 0
  %i.jz = select i1 %.not92, i32 6, i32 5
  br label %bb.bs

bb.bs:                                            ; preds = %doh2ai.exit.thread, %bb.br
  %.2 = phi i32 [ %.073, %doh2ai.exit.thread ], [ %i.jz, %bb.br ] ; 2 uses
  %i.ka = load i32, ptr %i.u, align 8, !tbaa !105
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.i100, label %de_cleanup.exit

.lr.ph.i100:                                      ; preds = %bb.bs, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ %indvars.iv.next.i102, %.lr.ph.i100 ], [ 0, %bb.bs ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.i101
  call void @curlx_dyn_free(ptr noundef nonnull %i.kc) #7
  %indvars.iv.next.i102 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.kd = load i32, ptr %i.u, align 8, !tbaa !105
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp slt i64 %indvars.iv.next.i102, %i.ke
  br i1 %i.kf, label %.lr.ph.i100, label %de_cleanup.exit, !llvm.loop !129

de_cleanup.exit:                                  ; preds = %.lr.ph.i100, %bb.bs
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %.not.i103 = icmp eq ptr %i.kg, null
  br i1 %.not.i103, label %Curl_doh_cleanup.exit, label %bb.bt

bb.bt:                                            ; preds = %de_cleanup.exit
  call fastcc void @doh_close(ptr noundef %0, ptr noundef nonnull %1)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  call void @curlx_dyn_free(ptr noundef nonnull %i.kh) #7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  call void @curlx_dyn_free(ptr noundef nonnull %i.ki) #7
  %i.kj = load ptr, ptr @Curl_cfree, align 8, !tbaa !18
  %i.kk = load ptr, ptr %i.b, align 8, !tbaa !17
  call void %i.kj(ptr noundef %i.kk) #7, !inline_history !19
  store ptr null, ptr %i.b, align 8, !tbaa !17
  br label %Curl_doh_cleanup.exit

Curl_doh_cleanup.exit:                            ; preds = %bb.bt, %de_cleanup.exit, %bb.e, %bb.a, %bb.d
  %.075 = phi i32 [ %i.n, %bb.d ], [ 81, %bb.e ], [ 27, %bb.a ], [ %.2, %de_cleanup.exit ], [ %.2, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.075
}

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @doh_close(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.f = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %i.c, align 8, !tbaa !23
  %i.h = tail call ptr @Curl_multi_get_easy(ptr noundef nonnull %i.e, i32 noundef %i.f) #7 ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !95
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.j = tail call i32 @curl_multi_remove_handle(ptr noundef %i.i, ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.k = call i32 @Curl_close(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.thread25.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 -1, ptr %i.l, align 8, !tbaa !23
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %.not22.1 = icmp eq ptr %i.o, null
  br i1 %.not22.1, label %.thread25.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = call ptr @Curl_multi_get_easy(ptr noundef nonnull %i.o, i32 noundef %i.m) #7 ; 3 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !95
  %.not23.1 = icmp eq ptr %i.p, null
  br i1 %.not23.1, label %.thread25.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.r = call i32 @curl_multi_remove_handle(ptr noundef %i.q, ptr noundef nonnull %i.p) #7 ; 0 uses
  %i.s = call i32 @Curl_close(ptr noundef nonnull %i.a) #7 ; 0 uses
  br label %.thread25.1

.thread25.1:                                      ; preds = %bb.h, %bb.j, %bb.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

.thread:                                          ; preds = %bb.a, %.thread25.1, %bb.c, %bb.b
  ret void
}

declare ptr @curlx_dyn_uptr(ptr noundef) local_unnamed_addr #2

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #2

declare void @Curl_trc_dns(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @doh_show(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2049 ; 4 uses
  %i.c = load i32, ptr %i.b, align 1
  %i.d = and i32 %i.c, 134217728
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %.not64 = icmp eq ptr %i.f, null
  br i1 %.not64, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !91
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !101
  tail call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, i32 noundef %i.k) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !102
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %bb.p, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !105  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4296
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv ; 21 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !104
  switch i32 %i.v, label %bb.p [
    i32 1, label %bb.g
    i32 28, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.b, align 1
  %i.x = and i32 %i.w, 134217728
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %.not71 = icmp eq ptr %i.y, null
  br i1 %.not71, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !91
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !97
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !97
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !97
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !97
  %i.an = zext i8 %i.am to i32
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an) #7
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) @__const.doh_show.buffer, i64 128, i1 false)
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao ; 3 uses
  %i.aq = sub i64 128, %i.ao                      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !97
  %i.at = zext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.av = load i8, ptr %i.au, align 1, !tbaa !97
  %i.aw = zext i8 %i.av to i32
  %i.ax = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.ap, i64 noundef %i.aq, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, i32 noundef %i.at, i32 noundef %i.aw) #7 ; 0 uses
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #8 ; 2 uses
  %i.az = sub i64 %i.aq, %i.ay                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ay ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !97
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !97
  %i.bg = zext i8 %i.bf to i32
  %i.bh = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.ba, i64 noundef %i.az, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %i.bd, i32 noundef %i.bg) #7 ; 0 uses
end_hunk_0
