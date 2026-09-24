Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_hidapi?download=true
inline.NumInlined: 86
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@PLATFORM_hid_enumerate:bb.a
  store i8 0, ptr %i.br, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bs = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #24
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 1023) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 16 %i.c, i64 %spec.store.select.i.i.i, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.store.select.i.i.i
  store i8 0, ptr %i.bt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8
  %i.bu = call ptr @strtok_r(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.b) #23 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not23.i.i.i, label %parse_hid_vid_pid_from_sysfs.exit.thread71, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.q
  %.01824.i.i.i = phi ptr [ %i.ca, %bb.q ], [ %i.bu, %bb.n ] ; 2 uses
  %i.bv = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01824.i.i.i, i32 noundef 61) #24 ; 3 uses
  %.not21.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not21.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  store i8 0, ptr %i.bv, align 1
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01824.i.i.i, ptr noundef nonnull dereferenceable(7) @.str.37) #24
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bz = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.by, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #23
  %.not22.i.i.i = icmp eq i32 %i.bz, 3
  br i1 %.not22.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i
  %i.ca = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.b) #23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %parse_hid_vid_pid_from_sysfs.exit.thread71, label %.lr.ph.i.i.i, !llvm.loop !10

parse_hid_vid_pid_from_sysfs.exit.thread71:       ; preds = %bb.q, %bb.n
  %i.cb = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @free(ptr noundef %i.be) #23
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @free(ptr noundef %i.be) #23
  %i.cc = load i16, ptr %i.d, align 2
  %.not59 = icmp eq i16 %0, %i.cc
  %or.cond = select i1 %.not56, i1 true, i1 %.not59
  br i1 %or.cond, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cd = load i16, ptr %i.e, align 2
  %.not60 = icmp eq i16 %1, %i.cd
  %or.cond65 = select i1 %.not57, i1 true, i1 %.not60
  br i1 %or.cond65, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.ce = load ptr, ptr @udev_ctx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr %i.cg(ptr noundef nonnull %i.m, ptr noundef nonnull %i.bb) #23 ; 3 uses
  %.not61 = icmp eq ptr %i.ch, null
  br i1 %.not61, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call fastcc ptr @PLATFORM_create_device_info_for_device(ptr noundef %i.ch) ; 4 uses
  %.not62 = icmp eq ptr %i.ci, null
  br i1 %.not62, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not63 = icmp eq ptr %.077, null
  br i1 %.not63, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.077, i64 56
  store ptr %i.ci, ptr %i.cj, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.142 = phi ptr [ %.04176, %bb.w ], [ %i.ci, %bb.v ]
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ %i.ci, %bb.x ], [ %i.cl, %bb.y ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.cl, null
  br i1 %.not64, label %.loopexit, label %bb.y, !llvm.loop !8

.loopexit:                                        ; preds = %bb.y, %bb.u
  %.243 = phi ptr [ %.04176, %bb.u ], [ %.142, %bb.y ]
  %.2 = phi ptr [ %.077, %bb.u ], [ %.1, %bb.y ]
  %i.cm = load ptr, ptr @udev_ctx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull %i.ch) #23
  br label %bb.z

bb.z:                                             ; preds = %parse_hid_vid_pid_from_sysfs.exit.thread71, %parse_hid_vid_pid_from_sysfs.exit.thread68, %parse_hid_vid_pid_from_sysfs.exit.thread, %bb.t, %bb.s, %bb.r, %.lr.ph.split, %.loopexit
  %.344 = phi ptr [ %.04176, %parse_hid_vid_pid_from_sysfs.exit.thread71 ], [ %.04176, %bb.r ], [ %.243, %.loopexit ], [ %.04176, %bb.s ], [ %.04176, %.lr.ph.split ], [ %.04176, %bb.t ], [ %.04176, %parse_hid_vid_pid_from_sysfs.exit.thread ], [ %.04176, %parse_hid_vid_pid_from_sysfs.exit.thread68 ] ; 2 uses
  %.3 = phi ptr [ %.077, %parse_hid_vid_pid_from_sysfs.exit.thread71 ], [ %.077, %bb.r ], [ %.2, %.loopexit ], [ %.077, %bb.s ], [ %.077, %.lr.ph.split ], [ %.077, %bb.t ], [ %.077, %parse_hid_vid_pid_from_sysfs.exit.thread ], [ %.077, %parse_hid_vid_pid_from_sysfs.exit.thread68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.cp = load ptr, ptr @udev_ctx, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call ptr %i.cr(ptr noundef nonnull %.04575) #23 ; 2 uses
  %.not54 = icmp eq ptr %i.cs, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph.split, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.z, %bb.k, %bb.d
  %.041.lcssa = phi ptr [ null, %bb.d ], [ %.344.us, %bb.k ], [ %.344, %bb.z ] ; 2 uses
  %i.ct = load ptr, ptr @udev_ctx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef %i.r) #23
  %i.cw = load ptr, ptr @udev_ctx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 200
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull %i.m) #23
  %i.cz = icmp eq ptr %.041.lcssa, null
  br i1 %i.cz, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %._crit_edge
  %i.da = or i16 %1, %0
  %or.cond5 = icmp eq i16 %i.da, 0
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.4) #23 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.5) #23 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.ac, %bb.ab, %bb.c
  %.046 = phi ptr [ null, %bb.c ], [ null, %bb.ab ], [ null, %bb.ac ], [ %.041.lcssa, %._crit_edge ]
  ret ptr %.046
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PLATFORM_create_device_info_for_device(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.hidraw_report_descriptor, align 4 ; 5 uses
  %i.f = alloca i16, align 2                      ; 8 uses
  %i.g = alloca i16, align 2                      ; 8 uses
  %2 = alloca %struct.hid_usage_iterator, align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.h = load ptr, ptr @udev_ctx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr %i.j(ptr noundef nonnull %0) #23 ; 2 uses
  %i.l = load ptr, ptr @udev_ctx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr %i.n(ptr noundef nonnull %0) #23 ; 3 uses
  %i.p = load ptr, ptr @udev_ctx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call ptr %i.r(ptr noundef nonnull %0, ptr noundef nonnull @.str.40, ptr noundef null) #23 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @udev_ctx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call ptr %i.v(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.41) #23
  %i.x = call fastcc i32 @parse_uevent_info(ptr noundef %i.w, ptr noundef %i.e, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %.not112 = icmp eq i32 %i.x, 0
  br i1 %.not112, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.e, align 4
  switch i32 %i.y, label %.loopexit [
    i32 5, label %bb.d
    i32 24, label %bb.d
    i32 3, label %bb.d
    i32 28, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.z = call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #25 ; 26 uses
  %.not113 = icmp eq ptr %i.z, null
  br i1 %.not113, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not114 = icmp eq ptr %i.o, null               ; 2 uses
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call noalias ptr @strdup(ptr noundef nonnull %i.o) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  store ptr %i.ab, ptr %i.z, align 8
  %i.ac = load i16, ptr %i.a, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i16 %i.ac, ptr %i.ad, align 8
  %i.ae = load i16, ptr %i.b, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i16 %i.ae, ptr %i.af, align 2
  %i.ag = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %utf8_to_wchar_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i64 @mbstowcs(ptr noundef null, ptr noundef nonnull %i.ag, i64 noundef 0) #23 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  br label %utf8_to_wchar_t.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = add nuw i64 %i.ah, 1                    ; 2 uses
  %i.al = call noalias ptr @calloc(i64 noundef %i.ak, i64 noundef 4) #25 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %utf8_to_wchar_t.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call i64 @mbstowcs(ptr noundef nonnull %i.al, ptr noundef nonnull %i.ag, i64 noundef %i.ak) #23 ; 0 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ah
  store i32 0, ptr %i.ao, align 4
  br label %utf8_to_wchar_t.exit

utf8_to_wchar_t.exit:                             ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.114.i = phi ptr [ null, %bb.g ], [ %i.al, %bb.k ], [ null, %bb.j ], [ %i.aj, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %.114.i, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  store i16 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 52 ; 2 uses
  store i32 -1, ptr %i.ar, align 4
  %i.as = load i32, ptr %i.e, align 4
  switch i32 %i.as, label %bb.aq [
    i32 3, label %bb.l
    i32 5, label %bb.ab
    i32 24, label %bb.ag
    i32 28, label %bb.al
  ]

bb.l:                                             ; preds = %utf8_to_wchar_t.exit
  %i.at = load ptr, ptr @udev_ctx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call ptr %i.av(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #23 ; 4 uses
  %.not115 = icmp eq ptr %i.aw, null
  br i1 %.not115, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = call fastcc ptr @utf8_to_wchar_t(ptr noundef %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %i.ba, ptr %i.bb, align 8
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr @udev_ctx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call ptr %i.be(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.45) #23, !inline_history !11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %copy_udev_string.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call i64 @mbstowcs(ptr noundef null, ptr noundef nonnull %i.bf, i64 noundef 0) #23 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  br label %copy_udev_string.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = add nuw i64 %i.bg, 1                    ; 2 uses
  %i.bk = call noalias ptr @calloc(i64 noundef %i.bj, i64 noundef 4) #25 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %copy_udev_string.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = call i64 @mbstowcs(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf, i64 noundef %i.bj) #23 ; 0 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bg
  store i32 0, ptr %i.bn, align 4
  br label %copy_udev_string.exit

copy_udev_string.exit:                            ; preds = %bb.n, %bb.p, %bb.q, %bb.r
  %.114.i.i = phi ptr [ null, %bb.n ], [ %i.bk, %bb.r ], [ null, %bb.q ], [ %i.bi, %bb.p ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %.114.i.i, ptr %i.bo, align 8
  %i.bp = load ptr, ptr @udev_ctx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call ptr %i.br(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.46) #23, !inline_history !11 ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i127, label %copy_udev_string.exit129, label %bb.s

bb.s:                                             ; preds = %copy_udev_string.exit
  %i.bt = call i64 @mbstowcs(ptr noundef null, ptr noundef nonnull %i.bs, i64 noundef 0) #23 ; 3 uses
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  br label %copy_udev_string.exit129

bb.u:                                             ; preds = %bb.s
  %i.bw = add nuw i64 %i.bt, 1                    ; 2 uses
  %i.bx = call noalias ptr @calloc(i64 noundef %i.bw, i64 noundef 4) #25 ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %copy_udev_string.exit129, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = call i64 @mbstowcs(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bs, i64 noundef %i.bw) #23 ; 0 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bt
  store i32 0, ptr %i.ca, align 4
  br label %copy_udev_string.exit129

copy_udev_string.exit129:                         ; preds = %copy_udev_string.exit, %bb.t, %bb.u, %bb.v
  %.114.i.i128 = phi ptr [ null, %copy_udev_string.exit ], [ %i.bx, %bb.v ], [ null, %bb.u ], [ %i.bv, %bb.t ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %.114.i.i128, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i32 1, ptr %i.cc, align 8
  %i.cd = load ptr, ptr @udev_ctx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call ptr %i.cf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.47) #23 ; 2 uses
  %.not116 = icmp eq ptr %i.cg, null
  br i1 %.not116, label %bb.x, label %bb.w

bb.w:                                             ; preds = %copy_udev_string.exit129
  %i.ch = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cg, ptr noundef null, i32 noundef 16) #23
  %i.ci = trunc i64 %i.ch to i16
  br label %bb.x

bb.x:                                             ; preds = %copy_udev_string.exit129, %bb.w
  %i.cj = phi i16 [ %i.ci, %bb.w ], [ 0, %copy_udev_string.exit129 ]
  store i16 %i.cj, ptr %i.aq, align 8
  %i.ck = load ptr, ptr @udev_ctx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call ptr %i.cm(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.48) #23 ; 2 uses
  %.not117 = icmp eq ptr %i.cn, null
  br i1 %.not117, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr @udev_ctx, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call ptr %i.cq(ptr noundef nonnull %i.cn, ptr noundef nonnull @.str.49) #23 ; 2 uses
  %.not118 = icmp eq ptr %i.cr, null
  br i1 %.not118, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cr, ptr noundef null, i32 noundef 16) #23
  %i.ct = trunc i64 %i.cs to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.cu = phi i32 [ %i.ct, %bb.z ], [ -1, %bb.y ]
  store i32 %i.cu, ptr %i.ar, align 4
  br label %bb.aq

bb.ab:                                            ; preds = %utf8_to_wchar_t.exit
  %i.cv = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i130 = icmp eq ptr %i.cx, null
  br i1 %.not.i130, label %utf8_to_wchar_t.exit132, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = call i64 @mbstowcs(ptr noundef null, ptr noundef nonnull %i.cx, i64 noundef 0) #23 ; 3 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = call noalias ptr @wcsdup(ptr noundef nonnull @.str.44) #23
  br label %utf8_to_wchar_t.exit132

bb.ae:                                            ; preds = %bb.ac
end_hunk_0
