Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h264dec?download=true
inline.NumInlined: 42
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@h264_decode_frame:bb.a
  %i.jw = and i8 %i.jv, -4
  %i.jx = icmp eq i8 %i.jw, -104
  br i1 %i.jx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jy = load ptr, ptr %i.dm, align 8, !tbaa !76
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jy, i32 noundef 16, ptr noundef nonnull @.str.28) #9
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 34992
  store i32 -2147483648, ptr %i.jz, align 8, !tbaa !97
  br label %.thread283.i

bb.aq:                                            ; preds = %bb.ao
  %.not248.i = icmp eq i32 %.0197292.i, 0
  br i1 %.not248.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @ff_h264_remove_all_refs(ptr noundef nonnull %i.h) #9
  store i32 0, ptr %i.iw, align 4, !tbaa !98
  store i32 0, ptr %i.ix, align 8, !tbaa !101
  store i32 65536, ptr %i.iy, align 8, !tbaa !99
  store i32 -1, ptr %i.iz, align 4, !tbaa !100
  store <4 x i32> splat (i32 -2147483648), ptr %i.ja, align 8, !tbaa !79
  store <4 x i32> splat (i32 -2147483648), ptr %i.jb, align 8, !tbaa !79
  store <4 x i32> splat (i32 -2147483648), ptr %i.jc, align 8, !tbaa !79
  store <4 x i32> splat (i32 -2147483648), ptr %i.jd, align 8, !tbaa !79
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i32 1, ptr %i.io, align 4, !tbaa !233
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge296.i
  %.1.i = phi i32 [ 1, %bb.as ], [ %.0197292.i, %._crit_edge296.i ] ; 5 uses
  store i32 1, ptr %i.do, align 4, !tbaa !219
  %i.ka = call i32 @ff_h264_queue_decode_slice(ptr noundef nonnull %i.h, ptr noundef nonnull %i.jk) #9 ; 3 uses
  %.not249.i = icmp eq i32 %i.ka, 0
  br i1 %.not249.i, label %bb.au, label %bb.cj

bb.au:                                            ; preds = %bb.at
  %i.kb = load i32, ptr %i.jf, align 8, !tbaa !106
  %i.kc = icmp eq i32 %i.kb, 1
  br i1 %i.kc, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.kd = load i32, ptr %i.et, align 8, !tbaa !109
  %i.ke = and i32 %i.kd, 1
  %.not250.i = icmp eq i32 %i.ke, 0
  %.not251.i = icmp samesign ult i64 %indvars.iv.i102, %i.ji
  %or.cond271.i = or i1 %.not251.i, %.not250.i
  br i1 %or.cond271.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kf = load i32, ptr %i.l, align 4, !tbaa !212
  %.not252.i = icmp eq i32 %i.kf, 0
  br i1 %.not252.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.kg = load ptr, ptr %i.jg, align 8, !tbaa !102
  %.not253.i = icmp eq ptr %i.kg, null
  br i1 %.not253.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @ff_thread_finish_setup(ptr noundef nonnull %i.dn) #9
  store i32 1, ptr %i.l, align 4, !tbaa !212
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.kh = load ptr, ptr %i.dm, align 8, !tbaa !76 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 536
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !119 ; 2 uses
  %.not254.i = icmp eq ptr %i.kj, null
  br i1 %.not254.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !234
  %i.km = call i32 %i.kl(ptr noundef nonnull %i.kh, ptr noundef %i.dl, ptr noundef %i.d, i32 noundef range(i32 1, 0) %i.f) #9, !inline_history !207 ; 2 uses
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %.thread283.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.au
  %i.ko = load ptr, ptr %i.ii, align 8, !tbaa !119 ; 2 uses
  %.not255.i = icmp eq ptr %i.ko, null
  br i1 %.not255.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kp = load i32, ptr %i.jh, align 8, !tbaa !81
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.kq = phi i32 [ %i.kp, %bb.bc ], [ 1, %bb.bb ]
  %i.kr = load i32, ptr %i.m, align 4, !tbaa !213
  %i.ks = icmp eq i32 %i.kr, %i.kq
  br i1 %i.ks, label %bb.be, label %.thread278.i

bb.be:                                            ; preds = %bb.bd
  %i.kt = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 536
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !119
  %.not256.i = icmp eq ptr %i.kv, null
  br i1 %.not256.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !235
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !236
  %i.la = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !237
  %i.lc = call i32 %i.kx(ptr noundef nonnull %i.dn, ptr noundef %i.kz, i32 noundef %i.lb) #9, !inline_history !207
  store i32 0, ptr %i.m, align 4, !tbaa !213
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ld = call i32 @ff_h264_execute_decode_slices(ptr noundef nonnull %i.h) #9
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.2201.i = phi i32 [ %i.lc, %bb.bf ], [ %i.ld, %bb.bg ] ; 2 uses
  %i.le = icmp slt i32 %.2201.i, 0
  br i1 %i.le, label %bb.bi, label %.thread278.i

bb.bi:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 528
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !111
  %i.li = and i32 %i.lh, 8
  %.not257.i = icmp eq i32 %i.li, 0
  br i1 %.not257.i, label %.thread278.i, label %.thread283.i

bb.bj:                                            ; preds = %._crit_edge296.i, %._crit_edge296.i, %._crit_edge296.i
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %i.dn, ptr noundef nonnull @.str.29) #9
  br label %.thread278.i

bb.bk:                                            ; preds = %._crit_edge296.i.thread, %._crit_edge296.i
  %i.lj = load i32, ptr %i.l, align 4, !tbaa !212
  %.not244.i = icmp eq i32 %i.lj, 0
  br i1 %.not244.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %i.dn, ptr noundef nonnull @.str.30) #9
  br label %.thread278.i

bb.bm:                                            ; preds = %bb.bk
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.ll = call i32 @ff_h264_sei_decode(ptr noundef nonnull %i.in, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.ij, ptr noundef nonnull %i.dn) #9 ; 2 uses
  %i.lm = load i32, ptr %i.io, align 4, !tbaa !233
  %.not245.i = icmp eq i32 %i.lm, 0
  br i1 %.not245.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ln = load i32, ptr %i.ip, align 4, !tbaa !238
  %i.lo = icmp ne i32 %i.ln, -1
  %i.lp = zext i1 %i.lo to i32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.lq = phi i32 [ 1, %bb.bm ], [ %i.lp, %bb.bn ]
  store i32 %i.lq, ptr %i.io, align 4, !tbaa !233
  %i.lr = load i32, ptr %i.iq, align 4, !tbaa !239
  %i.ls = and i32 %i.lr, 8388608
  %.not246.i = icmp eq i32 %i.ls, 0
  br i1 %.not246.i, label %debug_green_metadata.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lt = load ptr, ptr %i.dm, align 8, !tbaa !76 ; 7 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.35) #9
  %i.lu = load i8, ptr %i.ir, align 4, !tbaa !240
  %i.lv = zext i8 %i.lu to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.36, i32 noundef %i.lv) #9
  %i.lw = load i8, ptr %i.ir, align 4, !tbaa !240
  switch i8 %i.lw, label %debug_green_metadata.exit.i [
    i8 0, label %bb.bq
    i8 1, label %bb.bt
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.lx = load i8, ptr %i.iu, align 1, !tbaa !241
  %i.ly = zext i8 %i.lx to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.37, i32 noundef %i.ly) #9
  %i.lz = load i8, ptr %i.iu, align 1, !tbaa !241
  switch i8 %i.lz, label %bb.bs [
    i8 2, label %.sink.split.i.i
    i8 3, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.br, %bb.bq
  %.sink25.i.i = phi i64 [ 4, %bb.br ], [ 2, %bb.bq ]
  %.str.39.sink.i.i = phi ptr [ @.str.39, %bb.br ], [ @.str.38, %bb.bq ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.sink25.i.i
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !93
  %i.mc = zext i16 %i.mb to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull %.str.39.sink.i.i, i32 noundef %i.mc) #9
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i.i, %bb.bq
  %i.md = load <4 x i8>, ptr %i.iv, align 2, !tbaa !96
  %i.me = uitofp <4 x i8> %i.md to <4 x float>
  %i.mf = fdiv nsz <4 x float> %i.me, splat (float 2.550000e+02)
  %i.mg = fpext <4 x float> %i.mf to <4 x double> ; 4 uses
  %i.mh = extractelement <4 x double> %i.mg, i64 0
  %i.mi = extractelement <4 x double> %i.mg, i64 1
  %i.mj = extractelement <4 x double> %i.mg, i64 2
  %i.mk = extractelement <4 x double> %i.mg, i64 3
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.40, double noundef %i.mh, double noundef %i.mi, double noundef %i.mj, double noundef %i.mk) #9
  br label %debug_green_metadata.exit.i

bb.bt:                                            ; preds = %bb.bp
  %i.ml = load i8, ptr %i.is, align 2, !tbaa !242
  %i.mm = zext i8 %i.ml to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.41, i32 noundef %i.mm) #9
  %i.mn = load i8, ptr %i.is, align 2, !tbaa !242
  %i.mo = icmp eq i8 %i.mn, 0
  br i1 %i.mo, label %bb.bu, label %debug_green_metadata.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.mp = load i16, ptr %i.it, align 8, !tbaa !243
  %i.mq = uitofp nsz i16 %i.mp to float
  %i.mr = fdiv nsz float %i.mq, 1.000000e+02
  %i.ms = fpext nsz float %i.mr to double
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lt, i32 noundef 48, ptr noundef nonnull @.str.42, double noundef %i.ms) #9
  br label %debug_green_metadata.exit.i

debug_green_metadata.exit.i:                      ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bp, %bb.bo
  %i.mt = icmp slt i32 %i.ll, 0
  br i1 %i.mt, label %bb.bv, label %.thread278.i

bb.bv:                                            ; preds = %debug_green_metadata.exit.i
  %i.mu = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 528
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !111
  %i.mx = and i32 %i.mw, 8
  %.not247.i = icmp eq i32 %i.mx, 0
  br i1 %.not247.i, label %.thread278.i, label %.thread283.i

bb.bw:                                            ; preds = %._crit_edge296.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.my = getelementptr inbounds nuw i8, ptr %i.jk, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false), !tbaa.struct !244
  %i.mz = load ptr, ptr %i.ii, align 8, !tbaa !119 ; 2 uses
  %.not242.i = icmp eq ptr %i.mz, null
  br i1 %.not242.i, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !245 ; 2 uses
  %.not243.i = icmp eq ptr %i.nb, null
  br i1 %.not243.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.nc = load i32, ptr %i.js, align 8, !tbaa !227
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !236
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !237
  %i.nh = call i32 %i.nb(ptr noundef nonnull %i.dn, i32 noundef %i.nc, ptr noundef %i.ne, i32 noundef %i.ng) #9, !inline_history !207 ; 2 uses
  %i.ni = icmp slt i32 %i.nh, 0
  br i1 %i.ni, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.nj = call i32 @ff_h264_decode_seq_parameter_set(ptr noundef nonnull %4, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ij, i32 noundef 0) #9
  %i.nk = icmp sgt i32 %i.nj, -1
  br i1 %i.nk, label %.thread274.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nl = load ptr, ptr %i.dm, align 8, !tbaa !76
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nl, i32 noundef 48, ptr noundef nonnull @.str.31) #9
  %i.nm = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !236
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !237
  %i.nr = add nsw i32 %i.nq, -1                   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.nr, 268435455
  %i.ns = shl nuw nsw i32 %i.nr, 3
  %i.nt = select i1 %or.cond.i.i, i32 -8, i32 %i.ns ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.nt, 2147483135 ; 2 uses
  %.014.i.i.i = select i1 %or.cond.i.i.i, ptr %i.no, ptr null
  %.013.i.i.i = select i1 %or.cond.i.i.i, i32 %i.nt, i32 0 ; 2 uses
  store ptr %.014.i.i.i, ptr %4, align 8, !tbaa !246
  store i32 %.013.i.i.i, ptr %i.ik, align 4, !tbaa !247
  %i.nu = add nuw nsw i32 %.013.i.i.i, 8
  store i32 %i.nu, ptr %i.il, align 8, !tbaa !248
  store i32 0, ptr %i.im, align 8, !tbaa !249
  %i.nv = call i32 @ff_h264_decode_seq_parameter_set(ptr noundef nonnull %4, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ij, i32 noundef 0) #9
  %i.nw = icmp sgt i32 %i.nv, -1
  br i1 %i.nw, label %.thread274.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nx = call i32 @ff_h264_decode_seq_parameter_set(ptr noundef nonnull %i.my, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ij, i32 noundef 1) #9 ; 0 uses
  br label %.thread274.i

.thread274.i:                                     ; preds = %bb.cb, %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread278.i

bb.cc:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread283.i

bb.cd:                                            ; preds = %._crit_edge296.i
  %i.ny = load ptr, ptr %i.ii, align 8, !tbaa !119 ; 2 uses
  %.not239.i = icmp eq ptr %i.ny, null
  br i1 %.not239.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !245 ; 2 uses
  %.not240.i = icmp eq ptr %i.oa, null
  br i1 %.not240.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !236
  %i.od = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !237
  %i.of = call i32 %i.oa(ptr noundef nonnull %i.dn, i32 noundef 8, ptr noundef %i.oc, i32 noundef %i.oe) #9, !inline_history !207 ; 2 uses
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %.thread283.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.oh = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !250
  %i.ok = call i32 @ff_h264_decode_picture_parameter_set(ptr noundef nonnull %i.oh, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ij, i32 noundef %i.oj) #9 ; 2 uses
  %i.ol = icmp slt i32 %i.ok, 0
  br i1 %i.ol, label %bb.ch, label %.thread278.i

bb.ch:                                            ; preds = %bb.cg
  %i.om = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 528
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !111
  %i.op = and i32 %i.oo, 8
  %.not241.i = icmp eq i32 %i.op, 0
  br i1 %.not241.i, label %.thread278.i, label %.thread283.i

bb.ci:                                            ; preds = %._crit_edge296.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !250
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.dn, i32 noundef 48, ptr noundef nonnull @.str.32, i32 noundef %i.jr, i32 noundef %i.or) #9
  br label %.thread278.i

bb.cj:                                            ; preds = %bb.at
  %i.os = load ptr, ptr %i.je, align 8, !tbaa !82
  %i.ot = load i32, ptr %i.m, align 4, !tbaa !213
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [35552 x i8], ptr %i.os, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 22640
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 22644
  store i32 0, ptr %i.ox, align 4, !tbaa !79
  store i32 0, ptr %i.ow, align 16, !tbaa !79
  %i.oy = icmp slt i32 %i.ka, 0
  br i1 %i.oy, label %bb.ck, label %.thread278.i

bb.ck:                                            ; preds = %bb.cj
  %i.oz = load ptr, ptr %i.dm, align 8, !tbaa !76 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 528
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !111
  %i.pc = and i32 %i.pb, 8
  %.not258.i = icmp eq i32 %i.pc, 0
  br i1 %.not258.i, label %.thread278.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.oz, i32 noundef 16, ptr noundef nonnull @.str.33) #9
  br label %.thread283.i

.thread278.i:                                     ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %.thread274.i, %bb.bv, %debug_green_metadata.exit.i, %bb.bl, %bb.bj, %bb.bi, %bb.bh, %bb.bd, %._crit_edge296.i, %._crit_edge296.i, %._crit_edge296.i, %._crit_edge296.i, %._crit_edge296.i, %._crit_edge296.i, %bb.an
  %.3.i = phi i32 [ %.0197292.i, %bb.an ], [ %.1.i, %bb.cj ], [ %.1.i, %bb.ck ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %._crit_edge296.i ], [ %.0197292.i, %bb.cg ], [ %.0197292.i, %bb.ch ], [ %.0197292.i, %.thread274.i ], [ %.0197292.i, %debug_green_metadata.exit.i ], [ %.0197292.i, %bb.bv ], [ %.0197292.i, %bb.bl ], [ %.0197292.i, %bb.bj ], [ %.1.i, %bb.bd ], [ %.1.i, %bb.bh ], [ %.1.i, %bb.bi ], [ %.0197292.i, %bb.ci ]
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %i.pd = load i32, ptr %i.ie, align 8, !tbaa !223
  %i.pe = sext i32 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next.i103, %i.pe
  br i1 %i.pf, label %bb.am, label %._crit_edge.i99, !llvm.loop !208

._crit_edge.i99:                                  ; preds = %.thread278.i, %.preheader.i98.thread, %.preheader.i98
  %i.pg = call i32 @ff_h264_execute_decode_slices(ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.ph = icmp slt i32 %i.pg, 0
  br i1 %i.ph, label %bb.cm, label %.critedge.i100

bb.cm:                                            ; preds = %._crit_edge.i99
  %i.pi = load ptr, ptr %i.dm, align 8, !tbaa !76
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 528
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !111
  %i.pl = and i32 %i.pk, 8
  %.not234.i = icmp eq i32 %i.pl, 0
  br i1 %.not234.i, label %bb.cn, label %.thread283.i

.critedge.i100:                                   ; preds = %._crit_edge.i99
  %i.pm = getelementptr inbounds nuw i8, ptr %i.h, i64 36004
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !251
  %.not235.i = icmp eq i32 %i.pn, 0
  br i1 %.not235.i, label %.thread283.i, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i100, %bb.cm
  %i.po = getelementptr inbounds nuw i8, ptr %i.h, i64 28496
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !102 ; 3 uses
  %.not236.i = icmp eq ptr %i.pp, null
  br i1 %.not236.i, label %.thread283.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
end_hunk_0
