Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/physics_world?download=true
inline.NumInlined: 264
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 19
begin_hunk_0_@b2CollideTask:bb.a
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dl = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %.sroa.699.0.copyload, %i.dm ; 2 uses
  %i.do = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.do, %i.dp           ; 2 uses
  %i.dr = fadd <2 x float> %i.dn, %i.dq
  %i.ds = fsub <2 x float> %i.dn, %i.dq
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.du = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.085.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.du, %shift ; 2 uses
  %i.dv = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dw = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.083.0.copyload ; 2 uses
  %shift416 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417 = fadd <2 x float> %i.dw, %shift416 ; 2 uses
  %i.dx = extractelement <2 x float> %foldExtExtBinop417, i64 0 ; 2 uses
  %i.dy = fcmp olt float %i.dv, %i.dx
  %i.dz = select i1 %i.dy, float %i.dv, float %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !243
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !539
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ef = phi float [ %i.ee, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !243
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !539
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.el = phi float [ %i.ek, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.em = shufflevector <2 x float> %.sroa.081.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fsub <2 x float> %i.em, %i.dt           ; 2 uses
  %i.eo = fmul <2 x float> %i.en, %i.en
  %i.ep = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eo)
  %i.eq = tail call float @sqrtf(float noundef %i.ep) #23
  %i.er = fcmp ogt float %i.dz, 9.800000e-01
  br i1 %i.er, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.es = fmul <2 x float> %i.dk, %.sroa.482.0.copyload ; 2 uses
  %shift419 = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fsub <2 x float> %shift419, %i.es
  %i.et = extractelement <2 x float> %foldExtExtBinop420, i64 0 ; 3 uses
  %i.eu = fcmp ogt float %i.ef, %i.el
  %i.ev = select i1 %i.eu, float %i.ef, float %i.el
  %i.ew = select i1 %.not225, i1 %i.t, i1 false
  %i.ex = select i1 %i.ew, float %i.s, float %i.p
  %i.ey = fcmp olt float %i.et, 0.000000e+00
  %i.ez = fneg float %i.et
  %i.fa = select i1 %i.ey, float %i.ez, float %i.et
  %i.fb = fmul float %i.fa, %i.ev
  %i.fc = fadd float %i.eq, %i.fb
  %i.fd = fcmp olt float %i.fc, %i.ex
  br i1 %i.fd, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.fe = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ff = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fg = fmul <2 x float> %i.fe, %i.ff
  %i.fh = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x float> %.sroa.083.0.copyload, <2 x float> %.sroa.085.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fj = fmul <2 x float> %i.fh, %i.fi
  %i.fk = fsub <2 x float> %i.fg, %i.fj           ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.fn = load <2 x float>, ptr %i.fl, align 4
  %i.fo = load <2 x float>, ptr %i.fm, align 4
  %i.fp = fsub <2 x float> %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !246 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph382, label %.critedge

.lr.ph382:                                        ; preds = %bb.p
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.ft, align 4, !tbaa !142 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %.not228 = icmp eq i32 %i.cd, -1
  %i.fw = sext i32 %i.cd to i64
  %i.fx = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fw ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.not229 = icmp eq i32 %i.cn, -1
  %i.fz = sext i32 %i.cn to i64
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %wide.trip.count389 = zext nneg i32 %i.fr to i64
  %i.gc = shufflevector <2 x float> %foldExtExtBinop417, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.q

.critedge:                                        ; preds = %bb.x, %bb.p
  %i.gg = load i32, ptr %i.aa, align 8, !tbaa !213
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.aa, align 8, !tbaa !213
  br label %.loopexit

bb.q:                                             ; preds = %.lr.ph382, %bb.x
  %indvars.iv386 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next387, %bb.x ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [48 x i8], ptr %i.fu, i64 %indvars.iv386 ; 9 uses
  %i.gj = load <2 x float>, ptr %i.gi, align 4    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = load <2 x float>, ptr %i.gk, align 4    ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !540
  %i.go = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gp = fmul <2 x float> %i.ge, %i.go           ; 2 uses
  %i.gq = fmul <2 x float> %i.gd, %i.gj           ; 2 uses
  %i.gr = fsub <2 x float> %i.gq, %i.gp
  %i.gs = fadd <2 x float> %i.gq, %i.gp
  %i.gt = shufflevector <2 x float> %i.gr, <2 x float> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.gu = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gv = fmul <2 x float> %i.gf, %i.gu           ; 2 uses
  %i.gw = fmul <2 x float> %i.gc, %i.gl           ; 2 uses
  %i.gx = fsub <2 x float> %i.gw, %i.gv
  %i.gy = fadd <2 x float> %i.gw, %i.gv
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <2 x i32> <i32 0, i32 3>
  %i.ha = fsub <2 x float> %i.gz, %i.gt
  %i.hb = fadd <2 x float> %i.fp, %i.ha
  %i.hc = fmul <2 x float> %.sroa.065.0.copyload, %i.hb ; 2 uses
  %shift422 = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop423 = fadd <2 x float> %i.hc, %shift422
  %i.hd = extractelement <2 x float> %foldExtExtBinop423, i64 0
  %i.he = fadd float %i.gn, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store float %i.he, ptr %i.hf, align 4, !tbaa !249
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !251
  %i.hi = fcmp ogt float %i.hh, 0.000000e+00
  br i1 %i.hi, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !541 ; 2 uses
  %i.hl = load float, ptr %i.z, align 8, !tbaa !263
  %i.hm = fneg float %i.hl
  %i.hn = fcmp olt float %i.hk, %i.hm
  br i1 %i.hn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ho = load float, ptr %i.fv, align 4, !tbaa !542
  %i.hp = fneg float %i.ho
  %i.hq = fmul float %i.hk, %i.hp
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  %.sink = phi float [ %i.hq, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  store float %.sink, ptr %i.hr, align 4, !tbaa !543
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = load float, ptr %i.fy, align 4, !tbaa !328
  %i.ht = load <2 x float>, ptr %i.fx, align 4    ; 2 uses
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.hv, %i.gj           ; 2 uses
  %shift425 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop426 = fsub <2 x float> %i.ht, %shift425
  %shift428 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop429 = fadd <2 x float> %shift428, %i.hw
  %.sroa.02.4.vec.insert.i303 = shufflevector <2 x float> %foldExtExtBinop426, <2 x float> %foldExtExtBinop429, <2 x i32> <i32 0, i32 2>
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.041.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i303, %bb.u ], [ zeroinitializer, %bb.t ]
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load float, ptr %i.gb, align 4, !tbaa !328
  %i.hy = load <2 x float>, ptr %i.ga, align 4    ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %i.ia, %i.gl           ; 2 uses
  %shift431 = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fsub <2 x float> %i.hy, %shift431
  %shift434 = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop435 = fadd <2 x float> %shift434, %i.ib
  %.sroa.02.4.vec.insert.i313 = shufflevector <2 x float> %foldExtExtBinop432, <2 x float> %foldExtExtBinop435, <2 x i32> <i32 0, i32 2>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.034.0 = phi <2 x float> [ %.sroa.02.4.vec.insert.i313, %bb.w ], [ zeroinitializer, %bb.v ]
  %i.ic = fsub <2 x float> %.sroa.034.0, %.sroa.041.0
  %i.id = fmul <2 x float> %.sroa.065.0.copyload, %i.ic
  %4 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  store float %4, ptr %i.ie, align 4, !tbaa !541
  %i.if = getelementptr inbounds nuw i8, ptr %i.gi, i64 46
  store i8 1, ptr %i.if, align 2, !tbaa !250
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.critedge, label %bb.q, !llvm.loop !532

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.n, %bb.i
  %i.ig = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre395, %bb.o ], [ %.pre395, %bb.n ], [ %.pre395, %bb.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store <2 x float> %.sroa.699.0.copyload, ptr %i.ih, align 4, !tbaa !142
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store <2 x float> %.sroa.6.0.copyload, ptr %i.ii, align 4, !tbaa !142
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ik = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.il = fmul <2 x float> %.sroa.699.0.copyload, %i.ik ; 2 uses
  %shift440.a = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop441.a = fsub <2 x float> %i.il, %shift440.a
  %i.im = fmul <2 x float> %.sroa.699.0.copyload, %.sroa.6.0.copyload ; 2 uses
  %shift443 = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop444 = fadd <2 x float> %i.im, %shift443
  %.sroa.010.0.vec.insert.i.i328 = shufflevector <2 x float> %foldExtExtBinop444, <2 x float> %foldExtExtBinop441.a, <2 x i32> <i32 0, i32 2>
  %i.in = fsub <2 x float> %.sroa.088.0.copyload, %.sroa.096.0.copyload ; 2 uses
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ip = fmul <2 x float> %.sroa.699.0.copyload, %i.io ; 2 uses
  %i.iq = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.iq, %i.ir           ; 2 uses
  %i.it = fadd <2 x float> %i.ip, %i.is
  %i.iu = fsub <2 x float> %i.ip, %i.is
  %i.iv = shufflevector <2 x float> %i.it, <2 x float> %i.iu, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.iv, ptr %i.ij, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  store <2 x float> %.sroa.010.0.vec.insert.i.i328, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %i.iw = or i32 %i.ig, 4194304
  store i32 %i.iw, ptr %i.bb, align 4, !tbaa !231
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.iy = load <2 x float>, ptr %i.ix, align 4    ; 2 uses
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %.sroa.699.0.copyload, %i.iz ; 2 uses
  %i.jb = shufflevector <2 x float> %.sroa.699.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = fmul <2 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = fsub <2 x float> %i.ja, %i.jd
  %i.jf = fadd <2 x float> %i.ja, %i.jd
  %i.jg = shufflevector <2 x float> %i.je, <2 x float> %i.jf, <2 x i32> <i32 0, i32 3>
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ji = load <2 x float>, ptr %i.jh, align 4    ; 2 uses
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %.sroa.6.0.copyload, %i.jj ; 2 uses
  %i.jl = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jm = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jn = fmul <2 x float> %i.jl, %i.jm           ; 2 uses
  %i.jo = fsub <2 x float> %i.jk, %i.jn
  %i.jp = fadd <2 x float> %i.jk, %i.jn
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> %i.jp, <2 x i32> <i32 0, i32 3>
  %i.jr = tail call zeroext i1 @b2UpdateContact(ptr noundef %i.b, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, <2 x float> %.sroa.096.0.copyload, <2 x float> %.sroa.699.0.copyload, <2 x float> %i.jg, ptr noundef nonnull %i.am, <2 x float> %.sroa.088.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x float> %i.jq) #23 ; 3 uses
  %or.cond231 = select i1 %i.jr, i1 %.not225, i1 false
  br i1 %or.cond231, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %.thread
  %brmerge = select i1 %i.jr, i1 true, i1 %.not225
  br i1 %brmerge, label %bb.z, label %.sink.split

.sink.split:                                      ; preds = %bb.y, %.thread
  %.sink414 = phi i32 [ 262144, %.thread ], [ 524288, %bb.y ]
  %i.js = load i32, ptr %i.bb, align 4, !tbaa !231
  %i.jt = or i32 %i.js, %.sink414
  store i32 %i.jt, ptr %i.bb, align 4, !tbaa !231
  %.val = load ptr, ptr %i.x, align 8, !tbaa !215
  %i.ju = lshr i32 %i.ae, 6
  %i.jv = and i32 %i.ae, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl nuw i64 1, %i.jw
  %i.jy = zext nneg i32 %i.ju to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.jy ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !216
  %i.kb = or i64 %i.ka, %i.jx
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !216
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  br i1 %i.jr, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.z
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !246 ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.kh = load i32, ptr %i.ce, align 4, !tbaa !537 ; 2 uses
  %.not226 = icmp eq i32 %i.kh, -1
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load i32, ptr %i.co, align 4, !tbaa !538 ; 2 uses
  %.not227 = icmp eq i32 %i.kl, -1
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %wide.trip.count = zext nneg i32 %i.ke to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ae
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [48 x i8], ptr %i.kg, i64 %indvars.iv ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !249
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  store float %i.kr, ptr %i.ks, align 4, !tbaa !540
  br i1 %.not226, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kt = load float, ptr %i.kk, align 4, !tbaa !328
  %i.ku = load <2 x float>, ptr %i.kp, align 4
  %i.kv = load <2 x float>, ptr %i.kj, align 4    ; 2 uses
  %i.kw = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = fmul <2 x float> %i.kx, %i.ky           ; 2 uses
  %i.la = fsub <2 x float> %i.kv, %i.kz
  %i.lb = fadd <2 x float> %i.kv, %i.kz
  %i.lc = shufflevector <2 x float> %i.la, <2 x float> %i.lb, <2 x i32> <i32 0, i32 3>
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.012.0 = phi <2 x float> [ %i.lc, %bb.ab ], [ zeroinitializer, %bb.aa ]
  br i1 %.not227, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ld = load float, ptr %i.ko, align 4, !tbaa !328
  %i.le = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.lf = load <2 x float>, ptr %i.le, align 4
  %i.lg = load <2 x float>, ptr %i.kn, align 4    ; 2 uses
  %i.lh = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lk = fmul <2 x float> %i.li, %i.lj           ; 2 uses
  %i.ll = fsub <2 x float> %i.lg, %i.lk
  %i.lm = fadd <2 x float> %i.lg, %i.lk
  %i.ln = shufflevector <2 x float> %i.ll, <2 x float> %i.lm, <2 x i32> <i32 0, i32 3>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0 = phi <2 x float> [ %i.ln, %bb.ad ], [ zeroinitializer, %bb.ac ]
  %i.lo = load <2 x float>, ptr %i.kc, align 4
  %i.lp = fsub <2 x float> %.sroa.06.0, %.sroa.012.0
  %i.lq = fmul <2 x float> %i.lo, %i.lp
  %i.lr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.lq)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kp, i64 36
  store float %i.lr, ptr %i.ls, align 4, !tbaa !541
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.aa, !llvm.loop !533

.loopexit:                                        ; preds = %bb.ae, %.preheader, %.critedge, %bb.z, %bb.c
  %indvars.iv.next392 = add nsw i64 %indvars.iv391, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next392 to i32
  %exitcond394.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond394.not, label %._crit_edge, label %bb.b, !llvm.loop !534
}

declare void @b2StackFree(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2DestroyContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2AddContactToGraph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @b2UpdateContact(ptr noundef, ptr noundef, ptr noundef, <2 x float>, <2 x float>, <2 x float>, ptr noundef, <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

declare { <2 x float>, <2 x float> } @b2GetBodyTransformQuick(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @b2MakeShapeDistanceProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef) local_unnamed_addr #4

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @b2RayCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b2CastOutput) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2CollideMover(ptr dead_on_unwind writable sret(%struct.b2PlaneResult) align 4, ptr noundef, ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #4

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare zeroext i1 @b2WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #4
end_hunk_0
