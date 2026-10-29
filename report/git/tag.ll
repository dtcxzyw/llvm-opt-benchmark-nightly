Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/tag?download=true
inline.NumInlined: 49
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd_tag:bb.a
  store ptr @parse_opt_merge_filter, ptr %i.ii, align 8, !tbaa !45
  %i.ij = getelementptr inbounds nuw i8, ptr %25, i64 2080
  store i64 ptrtoint (ptr @.str.38 to i64), ptr %i.ij, align 16, !tbaa !46
  %i.ik = getelementptr inbounds nuw i8, ptr %25, i64 2088
  %i.il = getelementptr inbounds nuw i8, ptr %25, i64 2112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.il, align 16, !tbaa !38
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 2116
  store i32 0, ptr %i.im, align 4, !tbaa !39
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 2120
  store ptr @.str.45, ptr %i.in, align 8, !tbaa !40
  %i.io = getelementptr inbounds nuw i8, ptr %25, i64 2128
  store ptr %21, ptr %i.io, align 16, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 2136
  store i64 0, ptr %i.ip, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw i8, ptr %25, i64 2144
  store ptr @.str.36, ptr %i.iq, align 16, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %25, i64 2152
  store ptr @.str.46, ptr %i.ir, align 8, !tbaa !43
  %i.is = getelementptr inbounds nuw i8, ptr %25, i64 2160
  store i32 20, ptr %i.is, align 16, !tbaa !44
  %i.it = getelementptr inbounds nuw i8, ptr %25, i64 2164
  store i32 0, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %25, i64 2168
  store ptr @parse_opt_merge_filter, ptr %i.iu, align 8, !tbaa !45
  %i.iv = getelementptr inbounds nuw i8, ptr %25, i64 2176
  store i64 ptrtoint (ptr @.str.38 to i64), ptr %i.iv, align 16, !tbaa !46
  %i.iw = getelementptr inbounds nuw i8, ptr %25, i64 2184
  %i.ix = getelementptr inbounds nuw i8, ptr %25, i64 2208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iw, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ix, align 16, !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %25, i64 2212
  store i32 0, ptr %i.iy, align 4, !tbaa !39
  %i.iz = getelementptr inbounds nuw i8, ptr %25, i64 2216
  store ptr @.str.47, ptr %i.iz, align 8, !tbaa !40
  %i.ja = getelementptr inbounds nuw i8, ptr %25, i64 2224
  %i.jb = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %i.jb, ptr %i.ja, align 16, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %25, i64 2232
  store i64 4, ptr %i.jc, align 8, !tbaa !41
  %i.jd = getelementptr inbounds nuw i8, ptr %25, i64 2240
  store ptr null, ptr %i.jd, align 16, !tbaa !42
  %i.je = getelementptr inbounds nuw i8, ptr %25, i64 2248
  store ptr @.str.48, ptr %i.je, align 8, !tbaa !43
  %i.jf = getelementptr inbounds nuw i8, ptr %25, i64 2256
  store i32 2, ptr %i.jf, align 16, !tbaa !44
  %i.jg = getelementptr inbounds nuw i8, ptr %25, i64 2260
  store i32 0, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %25, i64 2264
  store ptr null, ptr %i.jh, align 8, !tbaa !45
  %i.ji = getelementptr inbounds nuw i8, ptr %25, i64 2272
  store i64 1, ptr %i.ji, align 16, !tbaa !46
  %i.jj = getelementptr inbounds nuw i8, ptr %25, i64 2280
  %i.jk = getelementptr inbounds nuw i8, ptr %25, i64 2304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.jk, align 16, !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %25, i64 2308
  store i32 0, ptr %i.jl, align 4, !tbaa !39
  %i.jm = getelementptr inbounds nuw i8, ptr %25, i64 2312
  store ptr @.str.49, ptr %i.jm, align 8, !tbaa !40
  %i.jn = getelementptr inbounds nuw i8, ptr %25, i64 2320
  store ptr %22, ptr %i.jn, align 16, !tbaa !18
  %i.jo = getelementptr inbounds nuw i8, ptr %25, i64 2328
  store i64 0, ptr %i.jo, align 8, !tbaa !41
  %i.jp = getelementptr inbounds nuw i8, ptr %25, i64 2336
  store ptr @.str.50, ptr %i.jp, align 16, !tbaa !42
  %i.jq = getelementptr inbounds nuw i8, ptr %25, i64 2344
  store ptr @.str.51, ptr %i.jq, align 8, !tbaa !43
  %i.jr = getelementptr inbounds nuw i8, ptr %25, i64 2352
  store i32 0, ptr %i.jr, align 16, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %25, i64 2356
  store i32 0, ptr %i.js, align 4
  %i.jt = getelementptr inbounds nuw i8, ptr %25, i64 2360
  store ptr @parse_opt_string_list, ptr %i.jt, align 8, !tbaa !45
  %i.ju = getelementptr inbounds nuw i8, ptr %25, i64 2368
  %i.jv = getelementptr inbounds nuw i8, ptr %25, i64 2400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ju, i8 0, i64 32, i1 false)
  store i32 13, ptr %i.jv, align 16, !tbaa !38
  %i.jw = getelementptr inbounds nuw i8, ptr %25, i64 2404
  store i32 0, ptr %i.jw, align 4, !tbaa !39
  %i.jx = getelementptr inbounds nuw i8, ptr %25, i64 2408
  store ptr @.str.52, ptr %i.jx, align 8, !tbaa !40
  %i.jy = getelementptr inbounds nuw i8, ptr %25, i64 2416
  %i.jz = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr %i.jz, ptr %i.jy, align 16, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %25, i64 2424
  store i64 0, ptr %i.ka, align 8, !tbaa !41
  %i.kb = getelementptr inbounds nuw i8, ptr %25, i64 2432
  store ptr @.str.53, ptr %i.kb, align 16, !tbaa !42
  %i.kc = getelementptr inbounds nuw i8, ptr %25, i64 2440
  store ptr @.str.54, ptr %i.kc, align 8, !tbaa !43
  %i.kd = getelementptr inbounds nuw i8, ptr %25, i64 2448
  store i32 16, ptr %i.kd, align 16, !tbaa !44
  %i.ke = getelementptr inbounds nuw i8, ptr %25, i64 2452
  store i32 0, ptr %i.ke, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %25, i64 2456
  store ptr @parse_opt_object_name, ptr %i.kf, align 8, !tbaa !45
  %i.kg = getelementptr inbounds nuw i8, ptr %25, i64 2464
  store i64 ptrtoint (ptr @.str.38 to i64), ptr %i.kg, align 16, !tbaa !46
  %i.kh = getelementptr inbounds nuw i8, ptr %25, i64 2472
  %i.ki = getelementptr inbounds nuw i8, ptr %25, i64 2496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false)
  store i32 10, ptr %i.ki, align 16, !tbaa !38
  %i.kj = getelementptr inbounds nuw i8, ptr %25, i64 2500
  store i32 0, ptr %i.kj, align 4, !tbaa !39
  %i.kk = getelementptr inbounds nuw i8, ptr %25, i64 2504
  store ptr @.str.55, ptr %i.kk, align 8, !tbaa !40
  %i.kl = getelementptr inbounds nuw i8, ptr %25, i64 2512
  store ptr %23, ptr %i.kl, align 16, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %25, i64 2520
  store i64 0, ptr %i.km, align 8, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %25, i64 2528
  store ptr @.str.55, ptr %i.kn, align 16, !tbaa !42
  %i.ko = getelementptr inbounds nuw i8, ptr %25, i64 2536
  store ptr @.str.56, ptr %i.ko, align 8, !tbaa !43
  %i.kp = getelementptr inbounds nuw i8, ptr %25, i64 2544
  %i.kq = getelementptr inbounds nuw i8, ptr %25, i64 2592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.kp, i8 0, i64 48, i1 false)
  store i32 13, ptr %i.kq, align 16, !tbaa !38
  %i.kr = getelementptr inbounds nuw i8, ptr %25, i64 2596
  store i32 0, ptr %i.kr, align 4, !tbaa !39
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 2600
  store ptr @.str.57, ptr %i.ks, align 8, !tbaa !40
  %i.kt = getelementptr inbounds nuw i8, ptr %25, i64 2608
  store ptr %i.p, ptr %i.kt, align 16, !tbaa !18
  %i.ku = getelementptr inbounds nuw i8, ptr %25, i64 2616
  store i64 0, ptr %i.ku, align 8, !tbaa !41
  %i.kv = getelementptr inbounds nuw i8, ptr %25, i64 2624
  store ptr @.str.58, ptr %i.kv, align 16, !tbaa !42
  %i.kw = getelementptr inbounds nuw i8, ptr %25, i64 2632
  store ptr @.str.59, ptr %i.kw, align 8, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %25, i64 2640
  store i32 1, ptr %i.kx, align 16, !tbaa !44
  %i.ky = getelementptr inbounds nuw i8, ptr %25, i64 2644
  store i32 0, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %25, i64 2648
  store ptr @parse_opt_color_flag_cb, ptr %i.kz, align 8, !tbaa !45
  %i.la = getelementptr inbounds nuw i8, ptr %25, i64 2656
  store i64 ptrtoint (ptr @.str.60 to i64), ptr %i.la, align 16, !tbaa !46
  %i.lb = getelementptr inbounds nuw i8, ptr %25, i64 2664
  %i.lc = getelementptr inbounds nuw i8, ptr %25, i64 2688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lb, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.lc, align 16, !tbaa !38
  %i.ld = getelementptr inbounds nuw i8, ptr %25, i64 2692
  store i32 105, ptr %i.ld, align 4, !tbaa !39
  %i.le = getelementptr inbounds nuw i8, ptr %25, i64 2696
  store ptr @.str.61, ptr %i.le, align 8, !tbaa !40
  %i.lf = getelementptr inbounds nuw i8, ptr %25, i64 2704
  store ptr %i.m, ptr %i.lf, align 16, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %25, i64 2712
  store i64 4, ptr %i.lg, align 8, !tbaa !41
  %i.lh = getelementptr inbounds nuw i8, ptr %25, i64 2720
  store ptr null, ptr %i.lh, align 16, !tbaa !42
  %i.li = getelementptr inbounds nuw i8, ptr %25, i64 2728
  store ptr @.str.62, ptr %i.li, align 8, !tbaa !43
  %i.lj = getelementptr inbounds nuw i8, ptr %25, i64 2736
  store i32 2, ptr %i.lj, align 16, !tbaa !44
  %i.lk = getelementptr inbounds nuw i8, ptr %25, i64 2740
  store i32 0, ptr %i.lk, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %25, i64 2744
  store ptr null, ptr %i.ll, align 8, !tbaa !45
  %i.lm = getelementptr inbounds nuw i8, ptr %25, i64 2752
  store i64 1, ptr %i.lm, align 16, !tbaa !46
  %i.ln = getelementptr inbounds nuw i8, ptr %25, i64 2760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ln, i8 0, i64 120, i1 false)
  call void @setup_ref_filter_porcelain_msg() #13
  %i.lo = load ptr, ptr @the_repository, align 8, !tbaa !20
  call void @repo_config(ptr noundef %i.lo, ptr noundef nonnull @git_tag_config, ptr noundef nonnull %22) #13
  %i.lp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !23
  %.not = icmp eq i64 %i.lq, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.lr = call ptr @string_list_append(ptr noundef nonnull %22, ptr noundef nonnull @.str.63) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i64 12, i1 false)
  store i32 -1, ptr %i.af, align 8, !tbaa !56
  store i32 -1, ptr %i.du, align 4, !tbaa !58
  %i.ls = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull @git_tag_usage, i32 noundef 0) #13 ; 3 uses
  %i.lt = load i32, ptr %i.j, align 4, !tbaa !15
  switch i32 %i.lt, label %thread-pre-split.thread [
    i32 0, label %bb.d
    i32 108, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.lu = icmp eq i32 %i.ls, 0
  br i1 %i.lu, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.lv = load <4 x ptr>, ptr %i.gf, align 8
  %.fr = freeze <4 x ptr> %i.lv
  %i.lw = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.lx = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = icmp ne i64 %i.ly, 0
  %i.ma = load i32, ptr %i.af, align 8
  %.fr177 = freeze i32 %i.ma
  %i.mb = icmp ne i32 %.fr177, -1
  %i.mc = bitcast <4 x i1> %i.lw to i4
  %i.md = icmp ne i4 %i.mc, 0
  %op.rdx = or i1 %i.md, %i.mb
  %op.rdx175 = select i1 %op.rdx, i1 true, i1 %i.lz
  br i1 %op.rdx175, label %.thread.sink.split, label %thread-pre-split.thread

.thread.sink.split:                               ; preds = %bb.e, %bb.d
  store i32 108, ptr %i.j, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c
  call void @setup_auto_pager(ptr noundef nonnull @.str.64, i32 noundef 1) #13
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.c, %bb.e, %.thread
  %i.me = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !59
  %.not79 = icmp eq i64 %i.mf, 0
  br i1 %.not79, label %bb.g, label %bb.f

bb.f:                                             ; preds = %thread-pre-split.thread
  call void @trailer_config_init() #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %thread-pre-split.thread
  %i.mg = load i32, ptr %i.du, align 4, !tbaa !58 ; 2 uses
  %i.mh = icmp eq i32 %i.mg, -1
  br i1 %i.mh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.mi = load i32, ptr %i.j, align 4, !tbaa !15
  %.not80 = icmp eq i32 %i.mi, 0
  %i.mj = load i32, ptr @config_sign_tag, align 4
  %i.mk = icmp sgt i32 %i.mj, 0
  %narrow = select i1 %.not80, i1 %i.mk, i1 false
  %i.ml = zext i1 %narrow to i32                  ; 2 uses
  store i32 %i.ml, ptr %i.du, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.mm = phi i32 [ %i.ml, %bb.h ], [ %i.mg, %bb.g ]
  %i.mn = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %.not81 = icmp eq ptr %i.mn, null
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.du, align 4, !tbaa !58
  call void @set_signing_key(ptr noundef nonnull %i.mn) #13
  %.pre = load i32, ptr %i.du, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.mo = phi i32 [ %.pre, %bb.j ], [ %i.mm, %bb.i ]
  %i.mp = icmp ne i32 %i.mo, 0
  %i.mq = load i32, ptr %i.h, align 4
  %i.mr = icmp ne i32 %i.mq, 0
  %or.cond17 = select i1 %i.mp, i1 true, i1 %i.mr
  %i.ms = load i32, ptr %19, align 8
  %i.mt = icmp ne i32 %i.ms, 0
  %or.cond20 = select i1 %or.cond17, i1 true, i1 %i.mt
  %i.mu = load ptr, ptr %i.k, align 8
  %i.mv = icmp ne ptr %i.mu, null
  %or.cond22 = select i1 %or.cond20, i1 true, i1 %i.mv
  %i.mw = load i32, ptr %i.n, align 4
  %i.mx = icmp ne i32 %i.mw, 0
  %or.cond24 = select i1 %or.cond22, i1 true, i1 %i.mx
  br i1 %or.cond24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.my = load i64, ptr %i.me, align 8, !tbaa !59
  %i.mz = icmp ne i64 %i.my, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.na = phi i1 [ true, %bb.k ], [ %i.mz, %bb.l ] ; 2 uses
  %i.nb = load i32, ptr %i.i, align 4
  %i.nc = icmp ne i32 %i.nb, 0
  %or.cond26 = select i1 %i.na, i1 true, i1 %i.nc
  %i.nd = load i32, ptr %i.j, align 4
  %i.ne = icmp ne i32 %i.nd, 0
  %or.cond28 = select i1 %or.cond26, i1 %i.ne, i1 false
  br i1 %or.cond28, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @usage_with_options(ptr noundef nonnull @git_tag_usage, ptr noundef nonnull %25) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.nf = call i32 @finalize_colopts(ptr noundef nonnull @colopts, i32 noundef -1) #13 ; 0 uses
  %i.ng = load i32, ptr %i.j, align 4, !tbaa !15
  %i.nh = icmp eq i32 %i.ng, 108
  %i.ni = load i32, ptr %i.af, align 8
  %i.nj = icmp ne i32 %i.ni, -1
  %or.cond31 = select i1 %i.nh, i1 %i.nj, i1 false
  br i1 %or.cond31, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.nk = load i32, ptr @colopts, align 4, !tbaa !15
  %i.nl = and i32 %i.nk, 112
  %or.cond145 = icmp eq i32 %i.nl, 80
  br i1 %or.cond145, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nm = call fastcc ptr @_(ptr noundef nonnull @.str.65)
  call void (ptr, ...) @die(ptr noundef %i.nm, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #14
  unreachable

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr @colopts, align 4, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.nn = call ptr @ref_sorting_options(ptr noundef nonnull %22) #13 ; 3 uses
  %i.no = load i32, ptr %i.m, align 4, !tbaa !15
  call void @ref_sorting_set_sort_flags_all(ptr noundef %i.nn, i32 noundef 2, i32 noundef %i.no) #13
  %i.np = load i32, ptr %i.m, align 4, !tbaa !15
  %i.nq = getelementptr inbounds nuw i8, ptr %21, i64 104 ; 4 uses
  %i.nr = trunc i32 %i.np to i8
  %i.ns = load i8, ptr %i.nq, align 8
  %i.nt = shl i8 %i.nr, 2
  %i.nu = and i8 %i.nt, 4
  %i.nv = and i8 %i.ns, -5
  %i.nw = or disjoint i8 %i.nu, %i.nv
  store i8 %i.nw, ptr %i.nq, align 8
  %i.nx = load i32, ptr %i.j, align 4, !tbaa !15  ; 2 uses
  %i.ny = icmp eq i32 %i.nx, 108
  br i1 %i.ny, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.nz = load i32, ptr @colopts, align 4, !tbaa !15 ; 2 uses
  %i.oa = and i32 %i.nz, 48
  %.not143 = icmp eq i32 %i.oa, 16
  br i1 %.not143, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.ob = getelementptr inbounds nuw i8, ptr %26, i64 4
  store i32 2, ptr %i.ob, align 4, !tbaa !61
  %i.oc = call i32 @run_column_filter(i32 noundef %i.nz, ptr noundef nonnull %26) #13
  %.not112 = icmp eq i32 %i.oc, 0
  br i1 %.not112, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.od = call fastcc ptr @_(ptr noundef nonnull @.str.68)
  call void (ptr, ...) @die(ptr noundef %i.od) #14
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  store ptr %1, ptr %21, align 8, !tbaa !62
  %i.oe = load i32, ptr %i.af, align 8, !tbaa !56 ; 3 uses
  %i.of = icmp eq i32 %i.oe, -1
  br i1 %i.of, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.og = load ptr, ptr %23, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.og, null
  br i1 %.not.i, label %bb.z, label %bb.ab

.thread.i:                                        ; preds = %bb.x
  store i32 0, ptr %i.af, align 8, !tbaa !56
  %i.oh = load ptr, ptr %23, align 8, !tbaa !26
  %.not19.i = icmp eq ptr %i.oh, null
  br i1 %.not19.i, label %.sink.split.i, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not15.i = icmp eq i32 %i.oe, 0
  br i1 %.not15.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oi = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef %i.oe) #13 ; 2 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.z, %.thread.i
  %.sink.i = phi ptr [ %i.oi, %bb.aa ], [ @.str.106, %.thread.i ], [ @.str.106, %bb.z ]
  %.0.ph.i = phi ptr [ %i.oi, %bb.aa ], [ null, %.thread.i ], [ null, %bb.z ]
  store ptr %.sink.i, ptr %23, align 8, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i, %.thread.i, %bb.y
  %.0.i = phi ptr [ null, %bb.y ], [ null, %.thread.i ], [ %.0.ph.i, %.sink.split.i ]
  %i.oj = call i32 @verify_ref_format(ptr noundef nonnull %23) #13
  %.not16.i = icmp eq i32 %i.oj, 0
  br i1 %.not16.i, label %list_tags.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ok = call fastcc ptr @_(ptr noundef nonnull @.str.107)
  call void (ptr, ...) @die(ptr noundef %i.ok) #14
  unreachable

list_tags.exit:                                   ; preds = %bb.ab
  %i.ol = load i8, ptr %i.nq, align 8
  %i.om = or i8 %i.ol, 1
  store i8 %i.om, ptr %i.nq, align 8
  call void @filter_and_format_refs(ptr noundef nonnull %21, i32 noundef 2, ptr noundef %i.nn, ptr noundef nonnull %23) #13
  call void @free(ptr noundef %.0.i) #13
  %i.on = load i32, ptr @colopts, align 4, !tbaa !15
  %i.oo = and i32 %i.on, 48
  %.not144 = icmp eq i32 %i.oo, 16
  br i1 %.not144, label %bb.ad, label %bb.ey
end_hunk_0
