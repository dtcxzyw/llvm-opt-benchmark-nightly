Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dts2pts?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@h264_filter:bb.a
bb.bh:                                            ; preds = %bb.bg
  %i.ha = getelementptr inbounds nuw i8, ptr %i.av, i64 1916
  %i.hb = load i8, ptr %i.ha, align 4, !tbaa !149
  switch i8 %i.hb, label %bb.bi [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.hc = getelementptr inbounds nuw i8, ptr %i.av, i64 1928
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !149
  switch i8 %i.hd, label %bb.bj [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr inbounds nuw i8, ptr %i.av, i64 1940
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !149
  switch i8 %i.hf, label %bb.bk [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.hg = getelementptr inbounds nuw i8, ptr %i.av, i64 1952
  %i.hh = load i8, ptr %i.hg, align 4, !tbaa !149
  switch i8 %i.hh, label %bb.bl [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.hi = getelementptr inbounds nuw i8, ptr %i.av, i64 1964
  %i.hj = load i8, ptr %i.hi, align 4, !tbaa !149
  switch i8 %i.hj, label %bb.bm [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.hk = getelementptr inbounds nuw i8, ptr %i.av, i64 1976
  %i.hl = load i8, ptr %i.hk, align 4, !tbaa !149
  switch i8 %i.hl, label %bb.bn [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.hm = getelementptr inbounds nuw i8, ptr %i.av, i64 1988
  %i.hn = load i8, ptr %i.hm, align 4, !tbaa !149
  switch i8 %i.hn, label %bb.bo [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ho = getelementptr inbounds nuw i8, ptr %i.av, i64 2000
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !149
  switch i8 %i.hp, label %bb.bp [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.hq = getelementptr inbounds nuw i8, ptr %i.av, i64 2012
  %i.hr = load i8, ptr %i.hq, align 4, !tbaa !149
  switch i8 %i.hr, label %bb.bq [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.av, i64 2024
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !149
  switch i8 %i.ht, label %bb.br [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.br:                                            ; preds = %bb.bq
  %i.hu = getelementptr inbounds nuw i8, ptr %i.av, i64 2036
  %i.hv = load i8, ptr %i.hu, align 4, !tbaa !149
  switch i8 %i.hv, label %bb.bs [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hw = getelementptr inbounds nuw i8, ptr %i.av, i64 2048
  %i.hx = load i8, ptr %i.hw, align 4, !tbaa !149
  switch i8 %i.hx, label %bb.bt [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.hy = getelementptr inbounds nuw i8, ptr %i.av, i64 2060
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !149
  switch i8 %i.hz, label %bb.bu [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ia = getelementptr inbounds nuw i8, ptr %i.av, i64 2072
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !149
  switch i8 %i.ib, label %bb.bv [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ic = getelementptr inbounds nuw i8, ptr %i.av, i64 2084
  %i.id = load i8, ptr %i.ic, align 4, !tbaa !149
  switch i8 %i.id, label %bb.bw [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bw:                                            ; preds = %bb.bv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.av, i64 2096
  %i.if = load i8, ptr %i.ie, align 4, !tbaa !149
  switch i8 %i.if, label %bb.bx [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.ig = getelementptr inbounds nuw i8, ptr %i.av, i64 2108
  %i.ih = load i8, ptr %i.ig, align 4, !tbaa !149
  switch i8 %i.ih, label %bb.by [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ii = getelementptr inbounds nuw i8, ptr %i.av, i64 2120
  %i.ij = load i8, ptr %i.ii, align 4, !tbaa !149
  switch i8 %i.ij, label %bb.bz [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.bz:                                            ; preds = %bb.by
  %i.ik = getelementptr inbounds nuw i8, ptr %i.av, i64 2132
  %i.il = load i8, ptr %i.ik, align 4, !tbaa !149
  switch i8 %i.il, label %bb.ca [
    i8 0, label %bb.cc
    i8 5, label %.critedge153
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.im = getelementptr inbounds nuw i8, ptr %i.av, i64 2144
  %i.in = load i8, ptr %i.im, align 4, !tbaa !149
  %cond.i = icmp eq i8 %i.in, 5
  br i1 %cond.i, label %.critedge153, label %bb.cc

bb.cb:                                            ; preds = %bb.l
  %i.io = load i32, ptr %i.ah, align 4, !tbaa !141
  store i32 %i.io, ptr %i.u, align 8, !tbaa !112
  %i.ip = load i32, ptr %i.am, align 8, !tbaa !150
  store i32 %i.ip, ptr %i.v, align 4, !tbaa !113
  br label %bb.cd

bb.cc:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %.preheader.i, %bb.m
  %i.iq = load i32, ptr %i.ah, align 4, !tbaa !141
  store i32 %i.iq, ptr %i.u, align 8, !tbaa !112
  %i.ir = load i32, ptr %i.am, align 8, !tbaa !150
  store i32 %i.ir, ptr %i.v, align 4, !tbaa !113
  %i.is = load <2 x i32>, ptr %i.h, align 8, !tbaa !49
  %i.it = shufflevector <2 x i32> %i.is, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.it, ptr %i.x, align 8, !tbaa !49
  br label %bb.cd

.critedge153:                                     ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.preheader.i
  store i32 0, ptr %i.u, align 8, !tbaa !112
  store i32 0, ptr %i.v, align 4, !tbaa !113
  store i32 0, ptr %i.x, align 8, !tbaa !115
  %i.iu = load i32, ptr %i.ag, align 4, !tbaa !139
  %i.iv = icmp eq i32 %i.iu, 2
  %i.iw = load i32, ptr %i.d, align 4
  %i.ix = select i1 %i.iv, i32 0, i32 %i.iw
  store i32 %i.ix, ptr %i.w, align 4, !tbaa !114
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %.critedge153, %bb.cc
  %i.iy = load i32, ptr %i.c, align 4, !tbaa !49  ; 10 uses
  %i.iz = load i32, ptr %i.an, align 4, !tbaa !68 ; 4 uses
  %.not146 = icmp eq i32 %i.iy, %i.iz
  br i1 %.not146, label %.thread180, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not147 = icmp eq i32 %i.iz, -2147483648
  br i1 %.not147, label %bb.cn, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ja = sext i32 %i.iz to i64
  %i.jb = sext i32 %i.iy to i64
  %i.jc = sub nsw i64 %i.ja, %i.jb
  %i.jd = call i64 @llvm.abs.i64(i64 %i.jc, i1 true) ; 4 uses
  %i.je = icmp slt i32 %i.iy, 0
  %.not148 = icmp eq i32 %i.iz, 0
  %or.cond214 = and i1 %i.je, %.not148
  br i1 %or.cond214, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.ao, align 8, !tbaa !151
  br label %.thread

bb.ch:                                            ; preds = %bb.cf
  %i.jf = call i32 @llvm.abs.i32(i32 %i.iy, i1 false)
  %i.jg = zext i32 %i.jf to i64
  %i.jh = load i32, ptr %i.ao, align 8, !tbaa !151 ; 3 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %i.jg, %i.ji
  br i1 %i.jj, label %.thread.thread, label %bb.ci

.thread.thread:                                   ; preds = %bb.ch
  %i.jk = call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.jl = zext nneg i32 %i.jk to i64
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %.not149 = icmp eq i32 %i.jh, 0
  br i1 %.not149, label %.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jm = sext i32 %i.jh to i64
  %i.jn = icmp slt i64 %i.jd, %i.jm
  br i1 %i.jn, label %bb.ck, label %bb.cn

.thread:                                          ; preds = %bb.cg, %bb.ci
  %.old2 = icmp samesign ult i64 %i.jd, 2147483648
  br i1 %.old2, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %.thread.thread, %bb.cj, %.thread
  %.0249 = phi i64 [ %i.jd, %bb.cj ], [ %i.jd, %.thread ], [ %i.jl, %.thread.thread ] ; 2 uses
  %i.jo = trunc nuw nsw i64 %.0249 to i32
  store i32 %i.jo, ptr %i.ao, align 8, !tbaa !151
  %i.jp = icmp eq i64 %.0249, 1
  br i1 %i.jp, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.jq = load i32, ptr %i.z, align 8, !tbaa !125
  %.not150 = icmp eq i32 %i.jq, 0
  br i1 %.not150, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jr = load ptr, ptr %i.f, align 8, !tbaa !42
  call void @av_tree_enumerate(ptr noundef %i.jr, ptr noundef nonnull %i.ao, ptr noundef null, ptr noundef nonnull @dec_poc) #12
  %i.js = load i32, ptr %i.ap, align 8, !tbaa !61
  %i.jt = add nsw i32 %i.js, -2
  store i32 %i.jt, ptr %i.ap, align 8, !tbaa !61
  %.pre = load i32, ptr %i.c, align 4, !tbaa !49
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cj, %.thread, %bb.cm, %bb.cl, %bb.ck, %bb.ce
  %i.ju = phi i32 [ %i.iy, %bb.cj ], [ %i.iy, %.thread ], [ %.pre, %bb.cm ], [ %i.iy, %bb.cl ], [ %i.iy, %bb.ck ], [ %i.iy, %bb.ce ] ; 5 uses
  store i32 %i.ju, ptr %i.an, align 4, !tbaa !68
  %i.jv = load i32, ptr %i.aq, align 8, !tbaa !67
  %. = call i32 @llvm.smax.i32(i32 %i.jv, i32 %i.ju)
  store i32 %., ptr %i.aq, align 8, !tbaa !67
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !69  ; 3 uses
  %i.jx = load ptr, ptr %i.e, align 8, !tbaa !15  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 6300
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !139
  %i.ka = icmp eq i32 %i.jz, 3
  %i.kb = select i1 %i.ka, i32 2, i32 1           ; 4 uses
  store i32 %i.kb, ptr %i.a, align 4, !tbaa !49
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 224
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !125
  %.not.i156 = icmp eq i32 %i.kd, 0
  br i1 %.not.i156, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 6288
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !151 ; 2 uses
  %.not40.i = icmp eq i32 %i.kf, 0
  br i1 %.not40.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %..i = call i32 @llvm.smin.i32(i32 %i.kb, i32 %i.kf) ; 2 uses
  store i32 %..i, ptr %i.a, align 4, !tbaa !49
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.kg = phi i32 [ %..i, %bb.cp ], [ %i.kb, %bb.co ], [ %i.kb, %bb.cn ]
  %i.kh = icmp slt i32 %i.ju, 0
  br i1 %i.kh, label %bb.cr, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.cq
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 6320
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !42
  call void @av_tree_enumerate(ptr noundef %i.ki, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @dec_poc) #12
  %i.kj = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 6320 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !61
  %i.km = sub nsw i32 %i.kl, %i.kj                ; 2 uses
  store i32 %i.km, ptr %i.kk, align 8, !tbaa !61
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %._crit_edge.i
  %i.kn = phi i32 [ %i.kg, %._crit_edge.i ], [ %i.kj, %bb.cr ]
  %i.ko = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.km, %bb.cr ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jx, i64 6320 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jx, i64 6296 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !67
  %i.ks = icmp sgt i32 %i.ko, %i.kr
  br i1 %i.ks, label %bb.ct, label %._crit_edge42.i

._crit_edge42.i:                                  ; preds = %bb.cs
  %.phi.trans.insert43.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 6324
  %.pre44.i = load i32, ptr %.phi.trans.insert43.i, align 4, !tbaa !56
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.kp, align 8, !tbaa !61
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jx, i64 6324 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !56
  %i.kv = add nsw i32 %i.ku, 1
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !31
  %i.kz = urem i64 %i.kw, %i.ky
  %i.la = trunc i64 %i.kz to i32                  ; 2 uses
  store i32 %i.la, ptr %i.kt, align 4, !tbaa !56
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jx, i64 6292
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !68
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !67
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %._crit_edge42.i
  %i.ld = phi i32 [ %i.la, %bb.ct ], [ %.pre44.i, %._crit_edge42.i ]
  %i.le = phi i32 [ 0, %bb.ct ], [ %i.ko, %._crit_edge42.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !55
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !52
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jx, i64 6324 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.lk = call fastcc i32 @alloc_and_insert_node(ptr %.val.i, i64 noundef %i.lg, i64 noundef %i.li, i32 noundef %i.le, i32 noundef %i.kn, i32 noundef %i.ld) ; 2 uses
  %i.ll = icmp slt i32 %i.lk, 0
  br i1 %i.ll, label %select.unfold, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lm = load i32, ptr %i.lj, align 4, !tbaa !56
  %i.ln = load i64, ptr %i.lf, align 8, !tbaa !55
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.10, i32 noundef %i.ju, i32 noundef %i.lm, i64 noundef %i.ln) #12
  %i.lo = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %i.lp = load i32, ptr %i.kp, align 8, !tbaa !61
  %i.lq = add nsw i32 %i.lp, %i.lo
  store i32 %i.lq, ptr %i.kp, align 8, !tbaa !61
  %.not41.i = icmp eq i32 %.0158222, 0
  br i1 %.not41.i, label %bb.cw, label %.thread188

bb.cw:                                            ; preds = %bb.cv
  %i.lr = load i32, ptr %i.lj, align 4, !tbaa !56
  store ptr %i.jw, ptr %1, align 8, !tbaa !69
  store i32 %i.ju, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !49
  store i32 %i.lo, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !49
  store i32 %i.lr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !49
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !32
  %i.lu = call i32 @av_fifo_write(ptr noundef %i.lt, ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %i.lv = load i32, ptr %i.a, align 4, !tbaa !49
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jx, i64 6308 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !40
  %i.ly = add nsw i32 %i.lx, %i.lv
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !40
  br label %.thread188

.thread188:                                       ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %.thread180

.thread180:                                       ; preds = %bb.cd, %bb.c, %.thread188
  %.2160.ph = phi i32 [ 1, %.thread188 ], [ %.0158222, %bb.c ], [ %.0158222, %bb.cd ] ; 2 uses
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.lz = load i32, ptr %i.q, align 8, !tbaa !70
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next234, %i.ma
  br i1 %i.mb, label %bb.c, label %._crit_edge225, !llvm.loop !111

select.unfold:                                    ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %.thread201

._crit_edge225:                                   ; preds = %.thread180, %.preheader
  %.0158.lcssa = phi i32 [ 0, %.preheader ], [ %.2160.ph, %.thread180 ] ; 2 uses
  %i.mc = load i32, ptr %i.c, align 4, !tbaa !49
  %i.md = icmp eq i32 %i.mc, -2147483648
  br i1 %i.md, label %bb.cx, label %.thread201

bb.cx:                                            ; preds = %._crit_edge225
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #12
  br label %.thread201

.thread201:                                       ; preds = %bb.f, %bb.k, %select.unfold, %._crit_edge225, %bb.cx
  %.0158218 = phi i32 [ %.0158.lcssa, %._crit_edge225 ], [ %.0158.lcssa, %bb.cx ], [ %.0158222, %select.unfold ], [ %.0158222, %bb.f ], [ %.0158222, %bb.k ]
  %.6 = phi i32 [ 0, %._crit_edge225 ], [ -1094995529, %bb.cx ], [ %i.lk, %select.unfold ], [ -1094995529, %bb.f ], [ %i.de, %bb.k ] ; 2 uses
  call void @ff_cbs_fragment_reset(ptr noundef nonnull %i.i) #12
  %.not151 = icmp eq i32 %.0158218, 0
  br i1 %.not151, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread209, %.thread201
  %.6213 = phi i32 [ %i.o, %.thread209 ], [ %.6, %.thread201 ]
  call void @av_packet_free(ptr noundef nonnull %i.b) #12
  br label %bb.cz

bb.cz:                                            ; preds = %.thread201, %bb.cy, %bb.a
  %.0125 = phi i32 [ %.6, %.thread201 ], [ %i.j, %bb.a ], [ %.6213, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.0125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h264_flush(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
