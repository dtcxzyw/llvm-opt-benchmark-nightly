Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RNvNtCskXtk6F4WjxZ_4just8function3get:bb.a
  %i.ux = icmp ne i32 %i.uw, 2003789939
  %i.uy = zext i1 %i.ux to i32
  %i.uz = icmp eq i32 %i.uy, 0
  br i1 %i.uz, label %bb.cl, label %bb.by

bb.bs:                                            ; preds = %bb.ba
  %i.va = load i64, ptr %.sroa.8.0, align 1
  %i.vb = xor i64 %i.va, 8314035674347040371
  %i.vc = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = zext i8 %i.vd to i64
  %i.vf = xor i64 %i.ve, 101
  %i.vg = or i64 %i.vb, %i.vf
  %i.vh = icmp ne i64 %i.vg, 0
  %i.vi = zext i1 %i.vh to i32
  %i.vj = icmp eq i32 %i.vi, 0
  br i1 %i.vj, label %bb.cl, label %bb.bx

bb.bt:                                            ; preds = %bb.bb
  %i.vk = load i128, ptr %.sroa.8.0, align 1
  %i.vl = icmp ne i128 %i.vk, 161430769900542305735107375105276473203
  %i.vm = zext i1 %i.vl to i32
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %bb.cl, label %bb.cb

bb.bu:                                            ; preds = %bb.bn
  %i.vo = load i64, ptr %.sroa.8.0, align 1
  %i.vp = xor i64 %i.vo, 7376726192452628339
  %i.vq = getelementptr i8, ptr %.sroa.8.0, i64 3
  %i.vr = load i64, ptr %i.vq, align 1
  %i.vs = xor i64 %i.vr, 7308332183723533170
  %i.vt = or i64 %i.vp, %i.vs
  %i.vu = icmp ne i64 %i.vt, 0
  %i.vv = zext i1 %i.vu to i32
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.cl, label %bb.ck

bb.bv:                                            ; preds = %bb.bo
  %i.vx = load i32, ptr %.sroa.8.0, align 1
  %i.vy = xor i32 %i.vx, 1768714355
  %i.vz = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = zext i8 %i.wa to i32
  %i.wc = xor i32 %i.wb, 116
  %i.wd = or i32 %i.vy, %i.wc
  %i.we = icmp ne i32 %i.wd, 0
  %i.wf = zext i1 %i.we to i32
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.cl, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.wh = load i32, ptr %.sroa.8.0, align 1
  %i.wi = xor i32 %i.wh, 1819898995
  %i.wj = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.wk = load i8, ptr %i.wj, align 1
  %i.wl = zext i8 %i.wk to i32
  %i.wm = xor i32 %i.wl, 101
  %i.wn = or i32 %i.wi, %i.wm
  %i.wo = icmp ne i32 %i.wn, 0
  %i.wp = zext i1 %i.wo to i32
  %i.wq = icmp eq i32 %i.wp, 0
  br i1 %i.wq, label %bb.cl, label %bb.ci

bb.bx:                                            ; preds = %bb.bs
  %i.wr = load i64, ptr %.sroa.8.0, align 1
  %i.ws = xor i64 %i.wr, 8314035674365061492
  %i.wt = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.wu = load i8, ptr %i.wt, align 1
  %i.wv = zext i8 %i.wu to i64
  %i.ww = xor i64 %i.wv, 101
  %i.wx = or i64 %i.ws, %i.ww
  %i.wy = icmp ne i64 %i.wx, 0
  %i.wz = zext i1 %i.wy to i32
  %i.xa = icmp eq i32 %i.wz, 0
  br i1 %i.xa, label %bb.cl, label %bb.cg

bb.by:                                            ; preds = %bb.br
  %i.xb = load i32, ptr %.sroa.8.0, align 1
  %i.xc = icmp ne i32 %i.xb, 1835627124
  %i.xd = zext i1 %i.xc to i32
  %i.xe = icmp eq i32 %i.xd, 0
  br i1 %i.xe, label %bb.cl, label %bb.ch

bb.bz:                                            ; preds = %bb.ay
  %i.xf = load i64, ptr %.sroa.8.0, align 1
  %i.xg = icmp ne i64 %i.xf, 7236833111762891380
  %i.xh = zext i1 %i.xg to i32
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %bb.cl, label %bb.ck

bb.ca:                                            ; preds = %bb.bl
  %i.xj = load i64, ptr %.sroa.8.0, align 1
  %i.xk = xor i64 %i.xj, 7236833111762891380
  %i.xl = getelementptr i8, ptr %.sroa.8.0, i64 6
  %i.xm = load i64, ptr %i.xl, align 1
  %i.xn = xor i64 %i.xm, 7521983764434478190
  %i.xo = or i64 %i.xk, %i.xn
  %i.xp = icmp ne i64 %i.xo, 0
  %i.xq = zext i1 %i.xp to i32
  %i.xr = icmp eq i32 %i.xq, 0
  br i1 %i.xr, label %bb.cl, label %bb.cf

bb.cb:                                            ; preds = %bb.bt
  %i.xs = load i128, ptr %.sroa.8.0, align 1
  %i.xt = icmp ne i128 %i.xs, 153387758748182255101715704243995374196
  %i.xu = zext i1 %i.xt to i32
  %i.xv = icmp eq i32 %i.xu, 0
  br i1 %i.xv, label %bb.cl, label %bb.cd

bb.cc:                                            ; preds = %bb.n
  %i.xw = load i64, ptr %.sroa.8.0, align 1
  %i.xx = xor i64 %i.xw, 7022364572672160372
  %i.xy = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.xz = load i16, ptr %i.xy, align 1
  %i.ya = zext i16 %i.xz to i64
  %i.yb = xor i64 %i.ya, 29810
  %i.yc = or i64 %i.xx, %i.yb
  %i.yd = icmp ne i64 %i.yc, 0
  %i.ye = zext i1 %i.yd to i32
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %bb.cl, label %bb.ck

bb.cd:                                            ; preds = %bb.cb
  %i.yg = load i128, ptr %.sroa.8.0, align 1
  %i.yh = icmp ne i128 %i.yg, 138756109429121250122483581977665041012
  %i.yi = zext i1 %i.yh to i32
  %i.yj = icmp eq i32 %i.yi, 0
  br i1 %i.yj, label %bb.cl, label %bb.ck

bb.ce:                                            ; preds = %bb.ap
  %i.yk = load i128, ptr %.sroa.8.0, align 1
  %i.yl = xor i128 %i.yk, 138756109429121250122483581977665041012
  %i.ym = getelementptr i8, ptr %.sroa.8.0, i64 16
  %i.yn = load i16, ptr %i.ym, align 1
  %i.yo = zext i16 %i.yn to i128
  %i.yp = xor i128 %i.yo, 29541
  %i.yq = or i128 %i.yl, %i.yp
  %i.yr = icmp ne i128 %i.yq, 0
  %i.ys = zext i1 %i.yr to i32
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %bb.cl, label %bb.ck

bb.cf:                                            ; preds = %bb.ca
  %i.yu = load i64, ptr %.sroa.8.0, align 1
  %i.yv = xor i64 %i.yu, 7881690165854367861
  %i.yw = getelementptr i8, ptr %.sroa.8.0, i64 6
  %i.yx = load i64, ptr %i.yw, align 1
  %i.yy = xor i64 %i.yx, 7310293699800690017
  %i.yz = or i64 %i.yv, %i.yy
  %i.za = icmp ne i64 %i.yz, 0
  %i.zb = zext i1 %i.za to i32
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %bb.cl, label %bb.ck

bb.cg:                                            ; preds = %bb.bx
  %i.zd = load i64, ptr %.sroa.8.0, align 1
  %i.ze = xor i64 %i.zd, 8314035730081935477
  %i.zf = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.zg = load i8, ptr %i.zf, align 1
  %i.zh = zext i8 %i.zg to i64
  %i.zi = xor i64 %i.zh, 101
  %i.zj = or i64 %i.ze, %i.zi
  %i.zk = icmp ne i64 %i.zj, 0
  %i.zl = zext i1 %i.zk to i32
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %bb.cl, label %bb.ck

bb.ch:                                            ; preds = %bb.by
  %i.zn = load i32, ptr %.sroa.8.0, align 1
  %i.zo = icmp ne i32 %i.zn, 1684632949
  %i.zp = zext i1 %i.zo to i32
  %i.zq = icmp eq i32 %i.zp, 0
  br i1 %i.zq, label %bb.cl, label %bb.ck

bb.ci:                                            ; preds = %bb.bw
  %i.zr = load i32, ptr %.sroa.8.0, align 1
  %i.zs = xor i32 %i.zr, 1667852407
  %i.zt = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.zu = load i8, ptr %i.zt, align 1
  %i.zv = zext i8 %i.zu to i32
  %i.zw = xor i32 %i.zv, 104
  %i.zx = or i32 %i.zs, %i.zw
  %i.zy = icmp ne i32 %i.zx, 0
  %i.zz = zext i1 %i.zy to i32
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.cl, label %bb.ck

bb.cj:                                            ; preds = %bb.bk
  %i.aab = load i128, ptr %.sroa.8.0, align 1
  %i.aac = xor i128 %i.aab, 148091839925872905245502671409233815927
  %i.aad = getelementptr i8, ptr %.sroa.8.0, i64 16
  %i.aae = load i8, ptr %i.aad, align 1
  %i.aaf = zext i8 %i.aae to i128
  %i.aag = xor i128 %i.aaf, 110
  %i.aah = or i128 %i.aac, %i.aag
  %i.aai = icmp ne i128 %i.aah, 0
  %i.aaj = zext i1 %i.aai to i32
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.e, %bb.ag, %bb.bi, %bb.ah, %bb.an, %bb.ar, %bb.az, %bb.bm, %bb.r, %bb.bj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.bz, %bb.bu, %bb.bq, %bb.cj
  %i.aal = icmp eq i64 %.sroa.0.0128, 0
  br i1 %i.aal, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split: ; preds = %bb.ck, %bb.cl
  %.sroa.3.0.ph = phi ptr [ %.sroa.84.0, %bb.cl ], [ undef, %bb.ck ]
  %.sroa.0.0.ph = phi i64 [ %.sroa.04.0, %bb.cl ], [ -1, %bb.ck ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %.sroa.0.0128, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split, %bb.c, %bb.cl, %bb.ck
  %.sroa.3.0 = phi ptr [ undef, %bb.c ], [ undef, %bb.ck ], [ %.sroa.84.0, %bb.cl ], [ %.sroa.3.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ -1, %bb.ck ], [ %.sroa.04.0, %bb.cl ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split ]
  %i.aam = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aan = insertvalue { i64, ptr } %i.aam, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.aan

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.84.0 = phi ptr [ @_RNvNtCskXtk6F4WjxZ_4just8function15shoutykebabcase, %bb.bp ], [ @_RNvNtCskXtk6F4WjxZ_4just8function15shoutysnakecase, %bb.bq ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4show, %bb.br ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9snakecase, %bb.bs ], [ @_RNvNtCskXtk6F4WjxZ_4just8function16source_directory, %bb.bt ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11source_file, %bb.bu ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5split, %bb.bv ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5style, %bb.bw ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9titlecase, %bb.bx ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4trim, %bb.by ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8trim_end, %bb.bz ], [ @_RNvNtCskXtk6F4WjxZ_4just8function14trim_end_match, %bb.ca ], [ @_RNvNtCskXtk6F4WjxZ_4just8function16trim_end_matches, %bb.cb ], [ @_RNvNtCskXtk6F4WjxZ_4just8function10trim_start, %bb.cc ], [ @_RNvNtCskXtk6F4WjxZ_4just8function16trim_start_match, %bb.cd ], [ @_RNvNtCskXtk6F4WjxZ_4just8function18trim_start_matches, %bb.ce ], [ @_RNvNtCskXtk6F4WjxZ_4just8function14uppercamelcase, %bb.cf ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9uppercase, %bb.cg ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4uuid, %bb.ch ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5which, %bb.ci ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5shell, %bb.bo ], [ @_RNvNtCskXtk6F4WjxZ_4just8function13absolute_path, %bb.f ], [ @_RNvNtCskXtk6F4WjxZ_4just8function6append, %bb.g ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4arch, %bb.h ], [ @_RNvNtCskXtk6F4WjxZ_4just8function6blake3, %bb.i ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11blake3_file, %bb.j ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4bool, %bb.k ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3get0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.l ], [ @_RNvNtCskXtk6F4WjxZ_4just8function12canonicalize, %bb.m ], [ @_RNvNtCskXtk6F4WjxZ_4just8function10capitalize, %bb.n ], [ @_RNvNtCskXtk6F4WjxZ_4just8function6choose, %bb.o ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5clean, %bb.p ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.q ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets0_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.r ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets1_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.s ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets2_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.t ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8datetime, %bb.u ], [ @_RNvNtCskXtk6F4WjxZ_4just8function12datetime_utc, %bb.v ], [ @_RNvNtCskXtk6F4WjxZ_4just8function20encode_uri_component, %bb.w ], [ @_RNvNtCskXtk6F4WjxZ_4just8function3env, %bb.x ], [ @_RNvNtCskXtk6F4WjxZ_4just8function7env_var, %bb.y ], [ @_RNvNtCskXtk6F4WjxZ_4just8function18env_var_or_default, %bb.z ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5error, %bb.aa ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets3_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.ab ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9extension, %bb.ac ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9file_name, %bb.ad ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9file_stem, %bb.ae ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets4_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.af ], [ @_RNvNtCskXtk6F4WjxZ_4just8function20invocation_directory, %bb.ag ], [ @_RNvNtCskXtk6F4WjxZ_4just8function27invocation_directory_native, %bb.ah ], [ @_RNvNtCskXtk6F4WjxZ_4just8function13is_dependency, %bb.ai ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4join, %bb.aj ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9join_list, %bb.ak ], [ @_RNvNtCskXtk6F4WjxZ_4just8function15just_executable, %bb.al ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8just_pid, %bb.am ], [ @_RNvNtCskXtk6F4WjxZ_4just8function12just_version, %bb.an ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8justfile, %bb.ao ], [ @_RNvNtCskXtk6F4WjxZ_4just8function18justfile_directory, %bb.ap ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9kebabcase, %bb.aq ], [ @_RNvNtCskXtk6F4WjxZ_4just8function3len, %bb.ar ], [ @_RNvNtCskXtk6F4WjxZ_4just8function14lowercamelcase, %bb.as ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9lowercase, %bb.at ], [ @_RNvNtCskXtk6F4WjxZ_4just8function16module_directory, %bb.au ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11module_file, %bb.av ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11module_path, %bb.aw ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8num_cpus, %bb.ax ], [ @_RNvNtCskXtk6F4WjxZ_4just8function8num_jobs, %bb.ay ], [ @_RNvNtCskXtk6F4WjxZ_4just8function2os, %bb.az ], [ @_RNvNtCskXtk6F4WjxZ_4just8function9os_family, %bb.ba ], [ @_RNvNtCskXtk6F4WjxZ_4just8function16parent_directory, %bb.bb ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11path_exists, %bb.bc ], [ @_RNvNtCskXtk6F4WjxZ_4just8function7prepend, %bb.bd ], [ @_RNvNtCskXtk6F4WjxZ_4just8function5quote, %bb.be ], [ @_RNvNtCskXtk6F4WjxZ_4just8function4read, %bb.bf ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11recipe_name, %bb.bg ], [ @_RNvNtCskXtk6F4WjxZ_4just8function7replace, %bb.bh ], [ @_RNvNtCskXtk6F4WjxZ_4just8function13replace_regex, %bb.bi ], [ @_RNvNtCskXtk6F4WjxZ_4just8function7require, %bb.bj ], [ @_RNvYNCNvNtCskXtk6F4WjxZ_4just8function3gets5_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTNtB6_7ContextEE9call_onceB8_, %bb.bk ], [ @_RNvNtCskXtk6F4WjxZ_4just8function14semver_matches, %bb.bl ], [ @_RNvNtCskXtk6F4WjxZ_4just8function6sha256, %bb.bm ], [ @_RNvNtCskXtk6F4WjxZ_4just8function11sha256_file, %bb.bn ], [ @_RNvNtCskXtk6F4WjxZ_4just8function17without_extension, %bb.cj ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 1, %bb.bp ], [ 1, %bb.bq ], [ 14, %bb.br ], [ 1, %bb.bs ], [ 0, %bb.bt ], [ 0, %bb.bu ], [ 6, %bb.bv ], [ 7, %bb.bw ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 5, %bb.ca ], [ 5, %bb.cb ], [ 1, %bb.cc ], [ 5, %bb.cd ], [ 5, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cg ], [ 0, %bb.ch ], [ 4, %bb.ci ], [ 3, %bb.bo ], [ 2, %bb.f ], [ 10, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 14, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 5, %bb.o ], [ 1, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.w ], [ 16, %bb.x ], [ 14, %bb.y ], [ 15, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 13, %bb.ai ], [ 9, %bb.aj ], [ 8, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 1, %bb.aq ], [ 14, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.at ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 13, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 1, %bb.bb ], [ 4, %bb.bc ], [ 10, %bb.bd ], [ 2, %bb.be ], [ 1, %bb.bf ], [ 0, %bb.bg ], [ 12, %bb.bh ], [ 12, %bb.bi ], [ 1, %bb.bj ], [ 0, %bb.bk ], [ 11, %bb.bl ], [ 1, %bb.bm ], [ 1, %bb.bn ], [ 1, %bb.cj ] ; 2 uses
  %i.aao = icmp eq i64 %.sroa.0.0128, 0
  br i1 %i.aao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function3len(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !28 ; 2 uses
  %i.d = icmp ult i64 %i.c, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = call { ptr, i64 } @_RNvMsk_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impj4__fmt(i64 noundef %i.c, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 8 uses
  %.not.i = icmp slt i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread12, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !75565
  %i.i = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !75565 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.45.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.45.0.ph, i64 %i.g) #70
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread12: ; preds = %bb.b, %bb.h
  %i.k = phi ptr [ %i.i, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !75566
  %i.l = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !75566 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvXs3_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from.exit, !prof !26

bb.e:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread12
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #70
          to label %.noexc.i unwind label %bb.f, !noalias !75566

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !75567
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.n

_RNvXs3_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from.exit: ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread12
  store i64 %i.g, ptr %i.l, align 8, !noalias !75568
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.53.0..sroa_idx, align 8, !noalias !75568
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !75568
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread12
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function4arch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree readonly align 8 captures(none) dead_on_return %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !75571
  %i.a = tail call noundef dereferenceable_or_null(6) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !75571 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @1344, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 6, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskXtk6F4WjxZ_4just8function4bool(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !28
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.i ], [ false, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val16 = load ptr, ptr %i.e, align 8, !nonnull !28, !align !35, !noundef !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvNtCskXtk6F4WjxZ_4just8function7boolean(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr nonnull %.val16, i1 noundef zeroext %.sroa.0.0)
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !28
  switch i64 %i.l, label %.split [
    i64 0, label %bb.i
    i64 1, label %bb.e
    i64 5, label %bb.f
    i64 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !75574
  %i.m = tail call noundef dereferenceable_or_null(53) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 53, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !75574 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.k, label %bb.l

bb.e:                                             ; preds = %bb.c
  %lhsc = load i8, ptr %i.j, align 1
  %i.o = icmp eq i8 %lhsc, 48
  br i1 %i.o, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.j, align 1
  %i.q = xor i32 %i.p, 1936482662
  %i.r = getelementptr i8, ptr %i.j, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = xor i32 %i.t, 101
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %.split

bb.g:                                             ; preds = %bb.e
  %lhsc24 = load i8, ptr %i.j, align 1
  %i.z = icmp eq i8 %lhsc24, 49
  br i1 %i.z, label %bb.i, label %.split

bb.h:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.j, align 1
  %i.ab = icmp ne i32 %i.aa, 1702195828
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %.split

.split:                                           ; preds = %bb.g, %bb.f, %bb.c, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.47.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noundef nonnull @1345, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.c
  %.sroa.0.1 = phi i1 [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.j:                                             ; preds = %.split, %bb.l, %bb.b
  ret void

bb.k:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 53) #70
end_hunk_0
