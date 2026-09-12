Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/urlapi?download=true
inline.NumInlined: 31
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@curl_url_dup:bb.a
  %i.aw = tail call ptr %i.av(ptr noundef nonnull %i.au) #8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !30
  %.not80 = icmp eq ptr %i.aw, null
  br i1 %.not80, label %curl_url_cleanup.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i16 %i.az, ptr %i.ba, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = and i8 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 82 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = and i8 %i.bf, -3
  %i.bh = or disjoint i8 %i.bg, %i.bd             ; 2 uses
  store i8 %i.bh, ptr %i.be, align 2
  %i.bi = load i8, ptr %i.bb, align 2
  %i.bj = and i8 %i.bi, 1
  %i.bk = and i8 %i.bh, -2
  %i.bl = or disjoint i8 %i.bk, %i.bj
  store i8 %i.bl, ptr %i.be, align 2
  br label %bb.w

curl_url_cleanup.exit:                            ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %i.bm = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !20
  tail call void %i.bm(ptr noundef %i.bn) #8, !inline_history !41
  %i.bo = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25
  tail call void %i.bo(ptr noundef %i.bq) #8, !inline_history !41
  %i.br = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  tail call void %i.br(ptr noundef %i.bt) #8, !inline_history !41
  %i.bu = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  tail call void %i.bu(ptr noundef %i.bw) #8, !inline_history !41
  %i.bx = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31
  tail call void %i.bx(ptr noundef %i.bz) #8, !inline_history !41
  %i.ca = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  tail call void %i.ca(ptr noundef %i.cc) #8, !inline_history !41
  %i.cd = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  tail call void %i.cd(ptr noundef %i.cf) #8, !inline_history !41
  %i.cg = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !32
  tail call void %i.cg(ptr noundef %i.ci) #8, !inline_history !41
  %i.cj = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !33
  tail call void %i.cj(ptr noundef %i.cl) #8, !inline_history !41
  %i.cm = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !34
  tail call void %i.cm(ptr noundef %i.co) #8, !inline_history !41
  %i.cp = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  tail call void %i.cp(ptr noundef nonnull %i.b) #8, !inline_history !42
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v, %curl_url_cleanup.exit
  %.0 = phi ptr [ null, %curl_url_cleanup.exit ], [ %i.b, %bb.v ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 32) i32 @curl_url_get(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %struct.dynbuf, align 8             ; 6 uses
  %i.c = alloca [7 x i8], align 1                 ; 4 uses
  %i.d = alloca [45 x i8], align 16               ; 6 uses
  %5 = alloca %struct.dynbuf, align 8             ; 6 uses
  %i.e = alloca [7 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %urlget_format.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not67 = icmp eq ptr %2, null
  br i1 %.not67, label %urlget_format.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !17
  switch i32 %1, label %urlget_format.exit [
    i32 1, label %bb.d
    i32 2, label %.sink.split
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 10, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.r
    i32 8, label %bb.s
    i32 9, label %bb.u
    i32 0, label %bb.w
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.g = and i32 %3, -65                          ; 2 uses
  %i.h = and i32 %3, 32768
  %.not82 = icmp eq i32 %i.h, 0
  br i1 %.not82, label %bb.bf, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, 4
  %.not83 = icmp eq i8 %i.k, 0
  br i1 %.not83, label %bb.bf, label %urlget_format.exit

bb.f:                                             ; preds = %bb.c
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  br label %.sink.split

bb.h:                                             ; preds = %bb.c
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 4 uses
  %i.n = and i32 %3, -65                          ; 4 uses
  %.not75 = icmp ne ptr %i.m, null                ; 2 uses
  %i.o = and i32 %3, 1
  %.not76 = icmp eq i32 %i.o, 0
  %or.cond = or i1 %.not76, %.not75
  br i1 %or.cond, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not77 = icmp eq ptr %i.p, null
  br i1 %.not77, label %urlget_format.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = tail call ptr @Curl_get_scheme(ptr noundef nonnull %i.p) #8 ; 2 uses
  %.not78 = icmp eq ptr %i.q, null
  br i1 %.not78, label %urlget_format.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.s = load i16, ptr %i.r, align 4, !tbaa !35
  %i.t = zext i16 %i.s to i32
  %i.u = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.e, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.t) #8 ; 0 uses
  br label %.thread97

bb.n:                                             ; preds = %bb.j
  br i1 %.not75, label %bb.o, label %urlget_format.exit

bb.o:                                             ; preds = %bb.n
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not79 = icmp eq ptr %i.v, null
  br i1 %.not79, label %.thread97, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = tail call ptr @Curl_get_scheme(ptr noundef nonnull %i.v) #8 ; 2 uses
  %.not80 = icmp eq ptr %i.w, null
  br i1 %.not80, label %.thread97, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i16, ptr %i.x, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !28
  %i.ab = icmp ne i16 %i.y, %i.aa
  %i.ac = and i32 %3, 2
  %.not81 = icmp eq i32 %i.ac, 0
  %or.cond85 = or i1 %.not81, %i.ab
  br i1 %or.cond85, label %.thread97, label %urlget_format.exit

bb.r:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %.not74 = icmp eq ptr %i.ae, null
  %spec.select = select i1 %.not74, ptr @.str.7, ptr %i.ae
  br label %.thread97

bb.s:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 3 uses
  %.not71 = icmp eq ptr %i.ag, null
  br i1 %.not71, label %urlget_format.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %6 = and i32 %3, 64
  %7 = icmp ne i32 %6, 0
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %.not72 = icmp eq i8 %i.ah, 0
  %i.ai = and i32 %3, 16384
  %.not73 = icmp eq i32 %i.ai, 0
  %or.cond86 = and i1 %.not73, %.not72
  br i1 %or.cond86, label %urlget_format.exit, label %.thread97

bb.u:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %.not68 = icmp eq ptr %i.ak, null
  br i1 %.not68, label %bb.v, label %.thread97

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.am = load i8, ptr %i.al, align 2
  %i.an = and i8 %i.am, 2
  %.not69 = icmp eq i8 %i.an, 0
  %i.ao = and i32 %3, 16384
  %.not70 = icmp eq i32 %i.ao, 0
  %or.cond87 = or i1 %.not70, %.not69
  br i1 %or.cond87, label %urlget_format.exit, label %.thread97

bb.w:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = and i8 %i.as, 2
  %i.au = icmp ne i8 %i.at, 0
  %i.av = and i32 %3, 16384
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = and i1 %i.aw, %i.au
  %i.ay = select i1 %i.ax, ptr @.str.15, ptr @.str.8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.az = phi ptr [ @.str.15, %bb.w ], [ %i.ay, %bb.x ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %.not106.i = icmp eq ptr %i.bb, null
  br i1 %.not106.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  %.not107.i = icmp eq i8 %i.bc, 0
  br i1 %.not107.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = trunc i8 %i.be to i1
  %i.bg = and i32 %3, 16384
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = and i1 %i.bh, %i.bf
  %i.bj = select i1 %i.bi, ptr @.str.16, ptr @.str.8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bk = phi ptr [ @.str.16, %bb.z ], [ %i.bj, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.bl = load ptr, ptr %0, align 8, !tbaa !20
  %i.bm = tail call i32 @curl_strequal(ptr noundef nonnull @.str.11, ptr noundef %i.bl) #8
  %.not108.i = icmp eq i32 %i.bm, 0
  br i1 %.not108.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @.str.8, ptr %i.bp
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.bq, null
  %i.br = select i1 %.not13.i.i, ptr @.str.8, ptr %i.bq
  %i.bs = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.24, ptr noundef %i.bo, ptr noundef nonnull %i.bk, ptr noundef nonnull %spec.select.i.i, ptr noundef nonnull %i.az, ptr noundef nonnull %i.br) #8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.bs, null
  br i1 %.not14.i.i, label %urlget_url.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bs, ptr %2, align 8, !tbaa !17
  br label %urlget_url.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %.not109.i = icmp eq ptr %i.bu, null
  br i1 %.not109.i, label %urlget_url.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.bz = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %.not110.i = icmp eq ptr %i.bz, null
  br i1 %.not110.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ca = and i32 %3, 4
  %.not111.i = icmp eq i32 %i.ca, 0
  br i1 %.not111.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.085.i = phi ptr [ %i.bz, %bb.af ], [ @.str.17, %bb.ag ] ; 2 uses
  %i.cb = tail call ptr @Curl_get_scheme(ptr noundef nonnull %.085.i) #8 ; 4 uses
  %.not112.i = icmp eq ptr %i.cb, null
  br i1 %.not112.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not113.i = icmp ne ptr %i.by, null            ; 2 uses
  %i.cc = and i32 %3, 1
  %.not114.i = icmp eq i32 %i.cc, 0
  %or.cond.i = or i1 %.not114.i, %.not113.i
  br i1 %or.cond.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !35
  %i.cf = zext i16 %i.ce to i32
  %i.cg = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.c, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.cf) #8 ; 0 uses
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not113.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = load i16, ptr %i.cj, align 8, !tbaa !28
  %i.cl = icmp ne i16 %i.ci, %i.ck
  %i.cm = and i32 %3, 2
  %.not115.i = icmp eq i32 %i.cm, 0
  %or.cond136.i = or i1 %.not115.i, %i.cl
  %spec.select140.i = select i1 %or.cond136.i, ptr %i.by, ptr null
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i = phi ptr [ null, %bb.ak ], [ %i.c, %bb.aj ], [ %spec.select140.i, %bb.al ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !23
  %i.cp = and i32 %i.co, 1024
  %.not116.i = icmp eq i32 %i.cp, 0
  %spec.select.i = select i1 %.not116.i, ptr null, ptr %i.bw
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ah
  %.084.i = phi ptr [ %spec.select.i, %bb.am ], [ %i.bw, %bb.ah ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %bb.am ], [ %i.by, %bb.ah ] ; 2 uses
  %i.cq = load ptr, ptr %i.bt, align 8, !tbaa !31 ; 5 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = icmp eq i8 %i.cr, 91
  br i1 %i.cs, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !30
  %.not121.i = icmp eq ptr %i.cu, null
  br i1 %.not121.i, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.cv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #7
  call void @curlx_dyn_init(ptr noundef nonnull %5, i64 noundef 8000000) #8
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -1
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !30
  %i.da = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.18, i32 noundef %i.cx, ptr noundef %i.cy, ptr noundef %i.cz) #8
  %.not122.i = icmp eq i32 %i.da, 0
  br i1 %.not122.i, label %bb.aq, label %.critedge.i

bb.aq:                                            ; preds = %bb.ap
  %i.db = call ptr @curlx_dyn_ptr(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  %i.dc = and i32 %3, 128
  %.not117.i = icmp eq i32 %i.dc, 0
  br i1 %.not117.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dd = call ptr @curl_easy_escape(ptr noundef null, ptr noundef nonnull %i.cq, i32 noundef 0) #8 ; 2 uses
  %.not120.i = icmp eq ptr %i.dd, null
  br i1 %.not120.i, label %.thread.i, label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.de = and i32 %3, 4096
  %.not118.i = icmp eq i32 %i.de, 0
  br i1 %.not118.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.df = call zeroext i1 @Curl_is_ASCII_name(ptr noundef nonnull %i.cq) #8
  br i1 %i.df, label %bb.ax, label %.thread.i

bb.av:                                            ; preds = %bb.at
  %i.dg = and i32 %3, 8192
  %.not119.i = icmp eq i32 %i.dg, 0
  br i1 %.not119.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = call zeroext i1 @Curl_is_ASCII_name(ptr noundef nonnull %i.cq) #8
  br i1 %i.dh, label %.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.aq, %bb.ao
  %.189.i = phi ptr [ %i.db, %bb.aq ], [ null, %bb.ao ], [ %i.dd, %bb.as ], [ null, %bb.au ], [ null, %bb.av ], [ null, %bb.aw ] ; 3 uses
  %i.di = and i32 %3, 32768
  %.not123.i = icmp eq i32 %i.di, 0
  br i1 %.not123.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = and i8 %i.dk, 4
  %.not124.i = icmp eq i8 %i.dl, 0
  br i1 %.not124.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dm = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.d, i64 noundef 45, ptr noundef nonnull @.str.19, ptr noundef nonnull %.085.i) #8 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i8 0, ptr %i.d, align 16, !tbaa !11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25 ; 2 uses
  %.not125.i = icmp eq ptr %i.do, null            ; 2 uses
  %spec.select137.i = select i1 %.not125.i, ptr @.str.8, ptr %i.do
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %.not126.i = icmp eq ptr %i.dq, null            ; 3 uses
  %i.dr = select i1 %.not126.i, ptr @.str.8, ptr @.str.21
  %i.ds = select i1 %.not126.i, ptr @.str.8, ptr %i.dq
  %.not129.i = icmp eq ptr %.084.i, null          ; 3 uses
  %i.dt = select i1 %.not129.i, ptr @.str.8, ptr @.str.22
  %i.du = select i1 %.not129.i, ptr @.str.8, ptr %.084.i
  %i.dv = select i1 %.not125.i, i1 %.not126.i, i1 false
  %i.dw = select i1 %i.dv, i1 %.not129.i, i1 false
  %i.dx = select i1 %i.dw, ptr @.str.8, ptr @.str.23
  %.not130.i = icmp eq ptr %.189.i, null
  br i1 %.not130.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dy = load ptr, ptr %i.bt, align 8, !tbaa !31
  br label %bb.bd

.critedge.i:                                      ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge.i, %bb.aw, %bb.au, %bb.as, %bb.ag
  %.4.ph.i = phi i32 [ 30, %bb.aw ], [ 30, %bb.au ], [ 7, %bb.as ], [ 10, %bb.ag ], [ 7, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %urlget_url.exit

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.dz = phi ptr [ %i.dy, %bb.bc ], [ %.189.i, %bb.bb ]
  %.not131.i = icmp eq ptr %.1.i, null            ; 2 uses
  %i.ea = select i1 %.not131.i, ptr @.str.8, ptr @.str.21
  %i.eb = select i1 %.not131.i, ptr @.str.8, ptr %.1.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %.not132.i = icmp eq ptr %i.ed, null
  %spec.select139.i = select i1 %.not132.i, ptr @.str.7, ptr %i.ed
  %i.ee = load ptr, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %.not133.i = icmp eq ptr %i.ee, null
  %i.ef = select i1 %.not133.i, ptr @.str.8, ptr %i.ee
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %.not134.i = icmp eq ptr %i.eg, null
  %i.eh = select i1 %.not134.i, ptr @.str.8, ptr %i.eg
  %i.ei = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d, ptr noundef nonnull %spec.select137.i, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.dx, ptr noundef %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %spec.select139.i, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.az, ptr noundef nonnull %i.eh) #8 ; 2 uses
  %i.ej = load ptr, ptr @Curl_cfree, align 8, !tbaa !24
  call void %i.ej(ptr noundef %.189.i) #8, !inline_history !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %.not135.i = icmp eq ptr %i.ei, null
  br i1 %.not135.i, label %urlget_url.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.ei, ptr %2, align 8, !tbaa !17
  br label %urlget_url.exit

urlget_url.exit:                                  ; preds = %bb.ac, %bb.ad, %bb.ae, %.thread.i, %bb.bd, %bb.be
  %.5.i = phi i32 [ 7, %bb.bd ], [ 0, %bb.be ], [ 14, %bb.ae ], [ %.4.ph.i, %.thread.i ], [ 0, %bb.ad ], [ 7, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %urlget_format.exit

.sink.split:                                      ; preds = %bb.c, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink134 = phi i64 [ 40, %bb.i ], [ 32, %bb.h ], [ 24, %bb.g ], [ 16, %bb.f ], [ 8, %bb.c ]
  %.050.ph = phi i32 [ 18, %bb.i ], [ 14, %bb.h ], [ 13, %bb.g ], [ 12, %bb.f ], [ 11, %bb.c ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.sink134
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !17
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.d, %bb.e
  %.052 = phi i32 [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %3, %.sink.split ]
  %.2 = phi ptr [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.el, %.sink.split ] ; 2 uses
  %.050 = phi i32 [ 10, %bb.d ], [ 10, %bb.e ], [ %.050.ph, %.sink.split ]
  %.not84 = icmp eq ptr %.2, null
  br i1 %.not84, label %urlget_format.exit, label %.thread97

.thread97:                                        ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v, %bb.m, %bb.p, %bb.o, %bb.bf
  %.0105 = phi i1 [ false, %bb.bf ], [ false, %bb.o ], [ false, %bb.q ], [ %7, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.r ]
  %.2104 = phi ptr [ %.2, %bb.bf ], [ %i.m, %bb.o ], [ %i.m, %bb.q ], [ %i.ag, %bb.t ], [ %i.ak, %bb.u ], [ @.str.8, %bb.v ], [ %i.m, %bb.p ], [ %i.e, %bb.m ], [ %spec.select, %bb.r ] ; 2 uses
  %.052103 = phi i32 [ %.052, %bb.bf ], [ %i.n, %bb.o ], [ %i.n, %bb.q ], [ %3, %bb.t ], [ %3, %bb.u ], [ %3, %bb.v ], [ %i.n, %bb.p ], [ %i.n, %bb.m ], [ %3, %bb.r ] ; 4 uses
  %i.em = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2104) #7 ; 12 uses
  %i.en = and i32 %.052103, 64
  %.not.i90 = icmp eq i32 %i.en, 0
  %i.eo = and i32 %.052103, 128
  %.not68.i = icmp eq i32 %i.eo, 0
  %i.ep = and i32 %.052103, 4096
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = icmp eq i32 %1, 5                       ; 2 uses
  %i.es = and i1 %i.er, %i.eq
  %i.et = and i32 %.052103, 8192
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = and i1 %i.er, %i.eu
  %i.ew = call ptr @curlx_memdup0(ptr noundef nonnull %.2104, i64 noundef %i.em) #8 ; 47 uses
  store ptr null, ptr %2, align 8, !tbaa !17
  %.not69.i = icmp eq ptr %i.ew, null
  br i1 %.not69.i, label %urlget_format.exit, label %bb.bg

bb.bg:                                            ; preds = %.thread97
  %i.ex = icmp ne i64 %i.em, 0
  %or.cond.i91 = and i1 %.0105, %i.ex
  br i1 %or.cond.i91, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.bg
  %min.iters.check = icmp ult i64 %i.em, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check135 = icmp ult i64 %i.em, 32
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ey = and i64 %i.em, 24
  %n.vec = and i64 %i.em, -32                     ; 5 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue229, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue229 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ew, i64 %index ; 3 uses
  %i.fa = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep136 = getelementptr i8, ptr %i.fa, i64 1
  %i.fb = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep137 = getelementptr i8, ptr %i.fb, i64 2
  %i.fc = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep138 = getelementptr i8, ptr %i.fc, i64 3
  %i.fd = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep139 = getelementptr i8, ptr %i.fd, i64 4
  %i.fe = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep140 = getelementptr i8, ptr %i.fe, i64 5
  %i.ff = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep141 = getelementptr i8, ptr %i.ff, i64 6
  %i.fg = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep142 = getelementptr i8, ptr %i.fg, i64 7
  %i.fh = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep143 = getelementptr i8, ptr %i.fh, i64 8
  %i.fi = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep144 = getelementptr i8, ptr %i.fi, i64 9
  %i.fj = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep145 = getelementptr i8, ptr %i.fj, i64 10
  %i.fk = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep146 = getelementptr i8, ptr %i.fk, i64 11
  %i.fl = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep147 = getelementptr i8, ptr %i.fl, i64 12
  %i.fm = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep148 = getelementptr i8, ptr %i.fm, i64 13
  %i.fn = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep149 = getelementptr i8, ptr %i.fn, i64 14
  %i.fo = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep150 = getelementptr i8, ptr %i.fo, i64 15
  %i.fp = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep151 = getelementptr i8, ptr %i.fp, i64 16
  %i.fq = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep152 = getelementptr i8, ptr %i.fq, i64 17
  %i.fr = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep153 = getelementptr i8, ptr %i.fr, i64 18
  %i.fs = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep154 = getelementptr i8, ptr %i.fs, i64 19
  %i.ft = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep155 = getelementptr i8, ptr %i.ft, i64 20
  %i.fu = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep156 = getelementptr i8, ptr %i.fu, i64 21
  %i.fv = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep157 = getelementptr i8, ptr %i.fv, i64 22
  %i.fw = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep158 = getelementptr i8, ptr %i.fw, i64 23
  %i.fx = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep159 = getelementptr i8, ptr %i.fx, i64 24
  %i.fy = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep160 = getelementptr i8, ptr %i.fy, i64 25
  %i.fz = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep161 = getelementptr i8, ptr %i.fz, i64 26
  %i.ga = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep162 = getelementptr i8, ptr %i.ga, i64 27
  %i.gb = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep163 = getelementptr i8, ptr %i.gb, i64 28
  %i.gc = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep164 = getelementptr i8, ptr %i.gc, i64 29
  %i.gd = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep165 = getelementptr i8, ptr %i.gd, i64 30
  %i.ge = getelementptr i8, ptr %i.ew, i64 %index
  %next.gep166 = getelementptr i8, ptr %i.ge, i64 31
  %i.gf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !11
  %wide.load167 = load <16 x i8>, ptr %i.gf, align 1, !tbaa !11
  %i.gg = icmp eq <16 x i8> %wide.load, splat (i8 43) ; 16 uses
  %i.gh = icmp eq <16 x i8> %wide.load167, splat (i8 43) ; 16 uses
  %i.gi = extractelement <16 x i1> %i.gg, i64 0
  br i1 %i.gi, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %next.gep, align 1, !tbaa !11
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gj = extractelement <16 x i1> %i.gg, i64 1
  br i1 %i.gj, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue
  store i8 32, ptr %next.gep136, align 1, !tbaa !11
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue
  %i.gk = extractelement <16 x i1> %i.gg, i64 2
  br i1 %i.gk, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  store i8 32, ptr %next.gep137, align 1, !tbaa !11
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.gl = extractelement <16 x i1> %i.gg, i64 3
  br i1 %i.gl, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  store i8 32, ptr %next.gep138, align 1, !tbaa !11
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.gm = extractelement <16 x i1> %i.gg, i64 4
  br i1 %i.gm, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  store i8 32, ptr %next.gep139, align 1, !tbaa !11
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.gn = extractelement <16 x i1> %i.gg, i64 5
  br i1 %i.gn, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  store i8 32, ptr %next.gep140, align 1, !tbaa !11
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.go = extractelement <16 x i1> %i.gg, i64 6
  br i1 %i.go, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  store i8 32, ptr %next.gep141, align 1, !tbaa !11
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.gp = extractelement <16 x i1> %i.gg, i64 7
  br i1 %i.gp, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  store i8 32, ptr %next.gep142, align 1, !tbaa !11
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.gq = extractelement <16 x i1> %i.gg, i64 8
  br i1 %i.gq, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  store i8 32, ptr %next.gep143, align 1, !tbaa !11
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %i.gr = extractelement <16 x i1> %i.gg, i64 9
  br i1 %i.gr, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %pred.store.continue183
  store i8 32, ptr %next.gep144, align 1, !tbaa !11
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %pred.store.continue183
  %i.gs = extractelement <16 x i1> %i.gg, i64 10
  br i1 %i.gs, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  store i8 32, ptr %next.gep145, align 1, !tbaa !11
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %i.gt = extractelement <16 x i1> %i.gg, i64 11
  br i1 %i.gt, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  store i8 32, ptr %next.gep146, align 1, !tbaa !11
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.gu = extractelement <16 x i1> %i.gg, i64 12
  br i1 %i.gu, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  store i8 32, ptr %next.gep147, align 1, !tbaa !11
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.gv = extractelement <16 x i1> %i.gg, i64 13
  br i1 %i.gv, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 32, ptr %next.gep148, align 1, !tbaa !11
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.gw = extractelement <16 x i1> %i.gg, i64 14
  br i1 %i.gw, label %pred.store.if194, label %pred.store.continue195
end_hunk_0
