Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86_fma?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn15Packing_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3:bb.a
  %i.do = getelementptr i8, ptr %i.cq, i64 196
  %i.dp = getelementptr i8, ptr %i.cr, i64 228
  %i.dq = load float, ptr %i.di, align 4, !tbaa !51, !alias.scope !133
  %i.dr = load float, ptr %i.dj, align 4, !tbaa !51, !alias.scope !133
  %i.ds = load float, ptr %i.dk, align 4, !tbaa !51, !alias.scope !133
  %i.dt = load float, ptr %i.dl, align 4, !tbaa !51, !alias.scope !133
  %i.du = load float, ptr %i.dm, align 4, !tbaa !51, !alias.scope !133
  %i.dv = load float, ptr %i.dn, align 4, !tbaa !51, !alias.scope !133
  %i.dw = load float, ptr %i.do, align 4, !tbaa !51, !alias.scope !133
  %i.dx = load float, ptr %i.dp, align 4, !tbaa !51, !alias.scope !133
  %i.dy = insertelement <8 x float> poison, float %i.dq, i64 0
  %i.dz = insertelement <8 x float> %i.dy, float %i.dr, i64 1
  %i.ea = insertelement <8 x float> %i.dz, float %i.ds, i64 2
  %i.eb = insertelement <8 x float> %i.ea, float %i.dt, i64 3
  %i.ec = insertelement <8 x float> %i.eb, float %i.du, i64 4
  %i.ed = insertelement <8 x float> %i.ec, float %i.dv, i64 5
  %i.ee = insertelement <8 x float> %i.ed, float %i.dw, i64 6
  %i.ef = insertelement <8 x float> %i.ee, float %i.dx, i64 7
  store <8 x float> %i.ef, ptr %next.gep493, align 4, !tbaa !51, !alias.scope !136, !noalias !137
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep495, i64 8
  %i.eh = getelementptr i8, ptr %i.cl, i64 40
  %i.ei = getelementptr i8, ptr %i.cm, i64 72
  %i.ej = getelementptr i8, ptr %i.cn, i64 104
  %i.ek = getelementptr i8, ptr %i.co, i64 136
  %i.el = getelementptr i8, ptr %i.cp, i64 168
  %i.em = getelementptr i8, ptr %i.cq, i64 200
  %i.en = getelementptr i8, ptr %i.cr, i64 232
  %i.eo = load float, ptr %i.eg, align 4, !tbaa !51, !alias.scope !133
  %i.ep = load float, ptr %i.eh, align 4, !tbaa !51, !alias.scope !133
  %i.eq = load float, ptr %i.ei, align 4, !tbaa !51, !alias.scope !133
  %i.er = load float, ptr %i.ej, align 4, !tbaa !51, !alias.scope !133
  %i.es = load float, ptr %i.ek, align 4, !tbaa !51, !alias.scope !133
  %i.et = load float, ptr %i.el, align 4, !tbaa !51, !alias.scope !133
  %i.eu = load float, ptr %i.em, align 4, !tbaa !51, !alias.scope !133
  %i.ev = load float, ptr %i.en, align 4, !tbaa !51, !alias.scope !133
  %i.ew = insertelement <8 x float> poison, float %i.eo, i64 0
  %i.ex = insertelement <8 x float> %i.ew, float %i.ep, i64 1
  %i.ey = insertelement <8 x float> %i.ex, float %i.eq, i64 2
  %i.ez = insertelement <8 x float> %i.ey, float %i.er, i64 3
  %i.fa = insertelement <8 x float> %i.ez, float %i.es, i64 4
  %i.fb = insertelement <8 x float> %i.fa, float %i.et, i64 5
  %i.fc = insertelement <8 x float> %i.fb, float %i.eu, i64 6
  %i.fd = insertelement <8 x float> %i.fc, float %i.ev, i64 7
  store <8 x float> %i.fd, ptr %next.gep492, align 4, !tbaa !51, !alias.scope !138, !noalias !139
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep495, i64 12
  %i.ff = getelementptr i8, ptr %i.cl, i64 44
  %i.fg = getelementptr i8, ptr %i.cm, i64 76
  %i.fh = getelementptr i8, ptr %i.cn, i64 108
  %i.fi = getelementptr i8, ptr %i.co, i64 140
  %i.fj = getelementptr i8, ptr %i.cp, i64 172
  %i.fk = getelementptr i8, ptr %i.cq, i64 204
  %i.fl = getelementptr i8, ptr %i.cr, i64 236
  %i.fm = load float, ptr %i.fe, align 4, !tbaa !51, !alias.scope !133
  %i.fn = load float, ptr %i.ff, align 4, !tbaa !51, !alias.scope !133
  %i.fo = load float, ptr %i.fg, align 4, !tbaa !51, !alias.scope !133
  %i.fp = load float, ptr %i.fh, align 4, !tbaa !51, !alias.scope !133
  %i.fq = load float, ptr %i.fi, align 4, !tbaa !51, !alias.scope !133
  %i.fr = load float, ptr %i.fj, align 4, !tbaa !51, !alias.scope !133
  %i.fs = load float, ptr %i.fk, align 4, !tbaa !51, !alias.scope !133
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !51, !alias.scope !133
  %i.fu = insertelement <8 x float> poison, float %i.fm, i64 0
  %i.fv = insertelement <8 x float> %i.fu, float %i.fn, i64 1
  %i.fw = insertelement <8 x float> %i.fv, float %i.fo, i64 2
  %i.fx = insertelement <8 x float> %i.fw, float %i.fp, i64 3
  %i.fy = insertelement <8 x float> %i.fx, float %i.fq, i64 4
  %i.fz = insertelement <8 x float> %i.fy, float %i.fr, i64 5
  %i.ga = insertelement <8 x float> %i.fz, float %i.fs, i64 6
  %i.gb = insertelement <8 x float> %i.ga, float %i.ft, i64 7
  store <8 x float> %i.gb, ptr %next.gep491, align 4, !tbaa !51, !alias.scope !140, !noalias !141
  %i.gc = getelementptr inbounds nuw i8, ptr %next.gep495, i64 16
  %i.gd = getelementptr i8, ptr %i.cl, i64 48
  %i.ge = getelementptr i8, ptr %i.cm, i64 80
  %i.gf = getelementptr i8, ptr %i.cn, i64 112
  %i.gg = getelementptr i8, ptr %i.co, i64 144
  %i.gh = getelementptr i8, ptr %i.cp, i64 176
  %i.gi = getelementptr i8, ptr %i.cq, i64 208
  %i.gj = getelementptr i8, ptr %i.cr, i64 240
  %i.gk = load float, ptr %i.gc, align 4, !tbaa !51, !alias.scope !133
  %i.gl = load float, ptr %i.gd, align 4, !tbaa !51, !alias.scope !133
  %i.gm = load float, ptr %i.ge, align 4, !tbaa !51, !alias.scope !133
  %i.gn = load float, ptr %i.gf, align 4, !tbaa !51, !alias.scope !133
  %i.go = load float, ptr %i.gg, align 4, !tbaa !51, !alias.scope !133
  %i.gp = load float, ptr %i.gh, align 4, !tbaa !51, !alias.scope !133
  %i.gq = load float, ptr %i.gi, align 4, !tbaa !51, !alias.scope !133
  %i.gr = load float, ptr %i.gj, align 4, !tbaa !51, !alias.scope !133
  %i.gs = insertelement <8 x float> poison, float %i.gk, i64 0
  %i.gt = insertelement <8 x float> %i.gs, float %i.gl, i64 1
  %i.gu = insertelement <8 x float> %i.gt, float %i.gm, i64 2
  %i.gv = insertelement <8 x float> %i.gu, float %i.gn, i64 3
  %i.gw = insertelement <8 x float> %i.gv, float %i.go, i64 4
  %i.gx = insertelement <8 x float> %i.gw, float %i.gp, i64 5
  %i.gy = insertelement <8 x float> %i.gx, float %i.gq, i64 6
  %i.gz = insertelement <8 x float> %i.gy, float %i.gr, i64 7
  store <8 x float> %i.gz, ptr %next.gep490, align 4, !tbaa !51, !alias.scope !142, !noalias !143
  %i.ha = getelementptr inbounds nuw i8, ptr %next.gep495, i64 20
  %i.hb = getelementptr i8, ptr %i.cl, i64 52
  %i.hc = getelementptr i8, ptr %i.cm, i64 84
  %i.hd = getelementptr i8, ptr %i.cn, i64 116
  %i.he = getelementptr i8, ptr %i.co, i64 148
  %i.hf = getelementptr i8, ptr %i.cp, i64 180
  %i.hg = getelementptr i8, ptr %i.cq, i64 212
  %i.hh = getelementptr i8, ptr %i.cr, i64 244
  %i.hi = load float, ptr %i.ha, align 4, !tbaa !51, !alias.scope !133
  %i.hj = load float, ptr %i.hb, align 4, !tbaa !51, !alias.scope !133
  %i.hk = load float, ptr %i.hc, align 4, !tbaa !51, !alias.scope !133
  %i.hl = load float, ptr %i.hd, align 4, !tbaa !51, !alias.scope !133
  %i.hm = load float, ptr %i.he, align 4, !tbaa !51, !alias.scope !133
  %i.hn = load float, ptr %i.hf, align 4, !tbaa !51, !alias.scope !133
  %i.ho = load float, ptr %i.hg, align 4, !tbaa !51, !alias.scope !133
  %i.hp = load float, ptr %i.hh, align 4, !tbaa !51, !alias.scope !133
  %i.hq = insertelement <8 x float> poison, float %i.hi, i64 0
  %i.hr = insertelement <8 x float> %i.hq, float %i.hj, i64 1
  %i.hs = insertelement <8 x float> %i.hr, float %i.hk, i64 2
  %i.ht = insertelement <8 x float> %i.hs, float %i.hl, i64 3
  %i.hu = insertelement <8 x float> %i.ht, float %i.hm, i64 4
  %i.hv = insertelement <8 x float> %i.hu, float %i.hn, i64 5
  %i.hw = insertelement <8 x float> %i.hv, float %i.ho, i64 6
  %i.hx = insertelement <8 x float> %i.hw, float %i.hp, i64 7
  store <8 x float> %i.hx, ptr %next.gep489, align 4, !tbaa !51, !alias.scope !144, !noalias !145
  %i.hy = getelementptr inbounds nuw i8, ptr %next.gep495, i64 24
  %i.hz = getelementptr i8, ptr %i.cl, i64 56
  %i.ia = getelementptr i8, ptr %i.cm, i64 88
  %i.ib = getelementptr i8, ptr %i.cn, i64 120
  %i.ic = getelementptr i8, ptr %i.co, i64 152
  %i.id = getelementptr i8, ptr %i.cp, i64 184
  %i.ie = getelementptr i8, ptr %i.cq, i64 216
  %i.if = getelementptr i8, ptr %i.cr, i64 248
  %i.ig = load float, ptr %i.hy, align 4, !tbaa !51, !alias.scope !133
  %i.ih = load float, ptr %i.hz, align 4, !tbaa !51, !alias.scope !133
  %i.ii = load float, ptr %i.ia, align 4, !tbaa !51, !alias.scope !133
  %i.ij = load float, ptr %i.ib, align 4, !tbaa !51, !alias.scope !133
  %i.ik = load float, ptr %i.ic, align 4, !tbaa !51, !alias.scope !133
  %i.il = load float, ptr %i.id, align 4, !tbaa !51, !alias.scope !133
  %i.im = load float, ptr %i.ie, align 4, !tbaa !51, !alias.scope !133
  %i.in = load float, ptr %i.if, align 4, !tbaa !51, !alias.scope !133
  %i.io = insertelement <8 x float> poison, float %i.ig, i64 0
  %i.ip = insertelement <8 x float> %i.io, float %i.ih, i64 1
  %i.iq = insertelement <8 x float> %i.ip, float %i.ii, i64 2
  %i.ir = insertelement <8 x float> %i.iq, float %i.ij, i64 3
  %i.is = insertelement <8 x float> %i.ir, float %i.ik, i64 4
  %i.it = insertelement <8 x float> %i.is, float %i.il, i64 5
  %i.iu = insertelement <8 x float> %i.it, float %i.im, i64 6
  %i.iv = insertelement <8 x float> %i.iu, float %i.in, i64 7
  store <8 x float> %i.iv, ptr %next.gep488, align 4, !tbaa !51, !alias.scope !146, !noalias !147
  %i.iw = getelementptr inbounds nuw i8, ptr %next.gep495, i64 28
  %i.ix = getelementptr i8, ptr %i.cl, i64 60
  %i.iy = getelementptr i8, ptr %i.cm, i64 92
  %i.iz = getelementptr i8, ptr %i.cn, i64 124
  %i.ja = getelementptr i8, ptr %i.co, i64 156
  %i.jb = getelementptr i8, ptr %i.cp, i64 188
  %i.jc = getelementptr i8, ptr %i.cq, i64 220
  %i.jd = getelementptr i8, ptr %i.cr, i64 252
  %i.je = load float, ptr %i.iw, align 4, !tbaa !51, !alias.scope !133
  %i.jf = load float, ptr %i.ix, align 4, !tbaa !51, !alias.scope !133
  %i.jg = load float, ptr %i.iy, align 4, !tbaa !51, !alias.scope !133
  %i.jh = load float, ptr %i.iz, align 4, !tbaa !51, !alias.scope !133
  %i.ji = load float, ptr %i.ja, align 4, !tbaa !51, !alias.scope !133
  %i.jj = load float, ptr %i.jb, align 4, !tbaa !51, !alias.scope !133
  %i.jk = load float, ptr %i.jc, align 4, !tbaa !51, !alias.scope !133
  %i.jl = load float, ptr %i.jd, align 4, !tbaa !51, !alias.scope !133
  %i.jm = insertelement <8 x float> poison, float %i.je, i64 0
  %i.jn = insertelement <8 x float> %i.jm, float %i.jf, i64 1
  %i.jo = insertelement <8 x float> %i.jn, float %i.jg, i64 2
  %i.jp = insertelement <8 x float> %i.jo, float %i.jh, i64 3
  %i.jq = insertelement <8 x float> %i.jp, float %i.ji, i64 4
  %i.jr = insertelement <8 x float> %i.jq, float %i.jj, i64 5
  %i.js = insertelement <8 x float> %i.jr, float %i.jk, i64 6
  %i.jt = insertelement <8 x float> %i.js, float %i.jl, i64 7
  store <8 x float> %i.jt, ptr %next.gep, align 4, !tbaa !51, !alias.scope !148, !noalias !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph149.preheader512

.lr.ph149.preheader512:                           ; preds = %vector.memcheck, %.lr.ph149.preheader, %middle.block
  %.1148.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph149.preheader ], [ %i.bx, %middle.block ]
  %.178147.ph = phi ptr [ %.077.lcssa, %vector.memcheck ], [ %.077.lcssa, %.lr.ph149.preheader ], [ %i.bz, %middle.block ]
  %.180146.ph = phi ptr [ %.079.lcssa, %vector.memcheck ], [ %.079.lcssa, %.lr.ph149.preheader ], [ %i.ca, %middle.block ]
  %.182145.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph149.preheader ], [ %i.cb, %middle.block ]
  %.184144.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph149.preheader ], [ %i.cc, %middle.block ]
  %.186143.ph = phi ptr [ %.085.lcssa, %vector.memcheck ], [ %.085.lcssa, %.lr.ph149.preheader ], [ %i.cd, %middle.block ]
  %.188142.ph = phi ptr [ %.087.lcssa, %vector.memcheck ], [ %.087.lcssa, %.lr.ph149.preheader ], [ %i.ce, %middle.block ]
  %.190141.ph = phi ptr [ %.089.lcssa, %vector.memcheck ], [ %.089.lcssa, %.lr.ph149.preheader ], [ %i.cf, %middle.block ]
  %.192140.ph = phi ptr [ %.091.lcssa, %vector.memcheck ], [ %.091.lcssa, %.lr.ph149.preheader ], [ %i.cg, %middle.block ]
  %.194139.ph = phi ptr [ %.093.lcssa, %vector.memcheck ], [ %.093.lcssa, %.lr.ph149.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph149

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0128 = phi i32 [ %i.lf, %.lr.ph ], [ 0, %bb.c ]
  %.077127 = phi ptr [ %i.le, %.lr.ph ], [ %i.bb, %bb.c ] ; 2 uses
  %.079126 = phi ptr [ %i.ld, %.lr.ph ], [ %i.ay, %bb.c ] ; 2 uses
  %.081125 = phi ptr [ %i.lc, %.lr.ph ], [ %i.av, %bb.c ] ; 2 uses
  %.083124 = phi ptr [ %i.lb, %.lr.ph ], [ %i.as, %bb.c ] ; 2 uses
  %.085123 = phi ptr [ %i.la, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %.087122 = phi ptr [ %i.kz, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.089121 = phi ptr [ %i.ky, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %.091120 = phi ptr [ %i.kx, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.093119 = phi ptr [ %i.kw, %.lr.ph ], [ %i.y, %bb.c ] ; 5 uses
  %6 = load <16 x float>, ptr %.093119, align 1, !tbaa !55 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.093119, i64 64
  %7 = load <16 x float>, ptr %i.jv, align 1, !tbaa !55 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.093119, i64 128
  %8 = load <16 x float>, ptr %i.jw, align 1, !tbaa !55 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.093119, i64 192
  %9 = load <16 x float>, ptr %i.jx, align 1, !tbaa !55 ; 2 uses
  %i.jy = shufflevector <16 x float> %6, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jz = shufflevector <16 x float> %6, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ka = shufflevector <16 x float> %7, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kb = shufflevector <16 x float> %7, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kc = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kd = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ke = shufflevector <16 x float> %9, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kf = shufflevector <16 x float> %9, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kg = shufflevector <8 x float> %i.jy, <8 x float> %i.ka, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.kh = shufflevector <8 x float> %i.jy, <8 x float> %i.ka, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ki = shufflevector <8 x float> %i.jz, <8 x float> %i.kb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.kj = shufflevector <8 x float> %i.jz, <8 x float> %i.kb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kk = shufflevector <8 x float> %i.kc, <8 x float> %i.ke, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.kl = shufflevector <8 x float> %i.kc, <8 x float> %i.ke, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.km = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.kn = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ko = shufflevector <8 x float> %i.kg, <8 x float> %i.kk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kp = shufflevector <8 x float> %i.kh, <8 x float> %i.kl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kq = shufflevector <8 x float> %i.ki, <8 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kr = shufflevector <8 x float> %i.kj, <8 x float> %i.kn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ks = shufflevector <8 x float> %i.kg, <8 x float> %i.kk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kt = shufflevector <8 x float> %i.kh, <8 x float> %i.kl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ku = shufflevector <8 x float> %i.ki, <8 x float> %i.km, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kv = shufflevector <8 x float> %i.kj, <8 x float> %i.kn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ko, ptr %.091120, align 1, !tbaa !55
  store <8 x float> %i.kp, ptr %.089121, align 1, !tbaa !55
  store <8 x float> %i.kq, ptr %.087122, align 1, !tbaa !55
  store <8 x float> %i.kr, ptr %.085123, align 1, !tbaa !55
  store <8 x float> %i.ks, ptr %.083124, align 1, !tbaa !55
  store <8 x float> %i.kt, ptr %.081125, align 1, !tbaa !55
  store <8 x float> %i.ku, ptr %.079126, align 1, !tbaa !55
  store <8 x float> %i.kv, ptr %.077127, align 1, !tbaa !55
  %i.kw = getelementptr inbounds nuw i8, ptr %.093119, i64 256 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.091120, i64 32 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.089121, i64 32 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.087122, i64 32 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.085123, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.083124, i64 32 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.081125, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.079126, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.077127, i64 32 ; 2 uses
  %i.lf = add nuw nsw i32 %.0128, 8               ; 3 uses
  %i.lg = or disjoint i32 %i.lf, 7
  %i.lh = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.li = icmp slt i32 %i.lg, %i.lh
  br i1 %i.li, label %.lr.ph, label %.preheader, !llvm.loop !131

.lr.ph149:                                        ; preds = %.lr.ph149.preheader512, %.lr.ph149
  %.1148 = phi i32 [ %i.mh, %.lr.ph149 ], [ %.1148.ph, %.lr.ph149.preheader512 ]
  %.178147 = phi ptr [ %i.mf, %.lr.ph149 ], [ %.178147.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.180146 = phi ptr [ %i.mc, %.lr.ph149 ], [ %.180146.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.182145 = phi ptr [ %i.lz, %.lr.ph149 ], [ %.182145.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.184144 = phi ptr [ %i.lw, %.lr.ph149 ], [ %.184144.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.186143 = phi ptr [ %i.lt, %.lr.ph149 ], [ %.186143.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.188142 = phi ptr [ %i.lq, %.lr.ph149 ], [ %.188142.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.190141 = phi ptr [ %i.ln, %.lr.ph149 ], [ %.190141.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.192140 = phi ptr [ %i.lk, %.lr.ph149 ], [ %.192140.ph, %.lr.ph149.preheader512 ] ; 2 uses
  %.194139 = phi ptr [ %i.mg, %.lr.ph149 ], [ %.194139.ph, %.lr.ph149.preheader512 ] ; 9 uses
  %i.lj = load float, ptr %.194139, align 4, !tbaa !51
  %i.lk = getelementptr inbounds nuw i8, ptr %.192140, i64 4
  store float %i.lj, ptr %.192140, align 4, !tbaa !51
  %i.ll = getelementptr inbounds nuw i8, ptr %.194139, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %.190141, i64 4
  store float %i.lm, ptr %.190141, align 4, !tbaa !51
  %i.lo = getelementptr inbounds nuw i8, ptr %.194139, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %.188142, i64 4
  store float %i.lp, ptr %.188142, align 4, !tbaa !51
  %i.lr = getelementptr inbounds nuw i8, ptr %.194139, i64 12
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !51
  %i.lt = getelementptr inbounds nuw i8, ptr %.186143, i64 4
  store float %i.ls, ptr %.186143, align 4, !tbaa !51
  %i.lu = getelementptr inbounds nuw i8, ptr %.194139, i64 16
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %.184144, i64 4
  store float %i.lv, ptr %.184144, align 4, !tbaa !51
  %i.lx = getelementptr inbounds nuw i8, ptr %.194139, i64 20
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %.182145, i64 4
  store float %i.ly, ptr %.182145, align 4, !tbaa !51
  %i.ma = getelementptr inbounds nuw i8, ptr %.194139, i64 24
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !51
  %i.mc = getelementptr inbounds nuw i8, ptr %.180146, i64 4
  store float %i.mb, ptr %.180146, align 4, !tbaa !51
  %i.md = getelementptr inbounds nuw i8, ptr %.194139, i64 28
  %i.me = load float, ptr %i.md, align 4, !tbaa !51
  %i.mf = getelementptr inbounds nuw i8, ptr %.178147, i64 4
  store float %i.me, ptr %.178147, align 4, !tbaa !51
  %i.mg = getelementptr inbounds nuw i8, ptr %.194139, i64 32
  %i.mh = add nuw nsw i32 %.1148, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.mh, %i.bd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph149, !llvm.loop !132

._crit_edge:                                      ; preds = %.lr.ph149, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond167.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond167.not, label %._crit_edge154, label %bb.c

._crit_edge154:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge154, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Packing_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not48 = icmp sgt i32 %i.k, %i.j
  br i1 %.not48, label %._crit_edge52.split, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = mul i64 %i.q, %i.o                       ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %factor.op.mul = mul i64 %i.x, %i.v
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge52.split

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ac = shl nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ad = mul i64 %i.r, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %i.af = or disjoint i64 %i.ac, 1
  %i.ag = mul i64 %i.r, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond54.not, label %._crit_edge52.split, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.047 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.c ]
  %.04046 = phi ptr [ %i.ai, %.lr.ph ], [ %i.bg, %bb.c ] ; 9 uses
  %.04145 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bf, %bb.c ] ; 5 uses
  %.04244 = phi ptr [ %i.ae, %.lr.ph ], [ %i.be, %bb.c ] ; 5 uses
  %i.aj = load float, ptr %.04244, align 4, !tbaa !51
  store float %i.aj, ptr %.04046, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %.04244, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.04046, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %.04244, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.04046, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %.04244, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %.04046, i64 12
  store float %i.ar, ptr %i.as, align 4, !tbaa !51
  %i.at = load float, ptr %.04145, align 4, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %.04046, i64 16
  store float %i.at, ptr %i.au, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %.04145, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZNK4ncnn15Packing_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.dt = getelementptr i8, ptr %i.cv, i64 196
  %i.du = getelementptr i8, ptr %i.cw, i64 228
  %i.dv = load float, ptr %i.dn, align 4, !tbaa !51, !alias.scope !249
  %i.dw = load float, ptr %i.do, align 4, !tbaa !51, !alias.scope !249
  %i.dx = load float, ptr %i.dp, align 4, !tbaa !51, !alias.scope !249
  %i.dy = load float, ptr %i.dq, align 4, !tbaa !51, !alias.scope !249
  %i.dz = load float, ptr %i.dr, align 4, !tbaa !51, !alias.scope !249
  %i.ea = load float, ptr %i.ds, align 4, !tbaa !51, !alias.scope !249
  %i.eb = load float, ptr %i.dt, align 4, !tbaa !51, !alias.scope !249
  %i.ec = load float, ptr %i.du, align 4, !tbaa !51, !alias.scope !249
  %i.ed = insertelement <8 x float> poison, float %i.dv, i64 0
  %i.ee = insertelement <8 x float> %i.ed, float %i.dw, i64 1
  %i.ef = insertelement <8 x float> %i.ee, float %i.dx, i64 2
  %i.eg = insertelement <8 x float> %i.ef, float %i.dy, i64 3
  %i.eh = insertelement <8 x float> %i.eg, float %i.dz, i64 4
  %i.ei = insertelement <8 x float> %i.eh, float %i.ea, i64 5
  %i.ej = insertelement <8 x float> %i.ei, float %i.eb, i64 6
  %i.ek = insertelement <8 x float> %i.ej, float %i.ec, i64 7
  store <8 x float> %i.ek, ptr %next.gep697, align 4, !tbaa !51, !alias.scope !252, !noalias !253
  %i.el = getelementptr inbounds nuw i8, ptr %next.gep699, i64 8
  %i.em = getelementptr i8, ptr %i.cq, i64 40
  %i.en = getelementptr i8, ptr %i.cr, i64 72
  %i.eo = getelementptr i8, ptr %i.cs, i64 104
  %i.ep = getelementptr i8, ptr %i.ct, i64 136
  %i.eq = getelementptr i8, ptr %i.cu, i64 168
  %i.er = getelementptr i8, ptr %i.cv, i64 200
  %i.es = getelementptr i8, ptr %i.cw, i64 232
  %i.et = load float, ptr %i.el, align 4, !tbaa !51, !alias.scope !249
  %i.eu = load float, ptr %i.em, align 4, !tbaa !51, !alias.scope !249
  %i.ev = load float, ptr %i.en, align 4, !tbaa !51, !alias.scope !249
  %i.ew = load float, ptr %i.eo, align 4, !tbaa !51, !alias.scope !249
  %i.ex = load float, ptr %i.ep, align 4, !tbaa !51, !alias.scope !249
  %i.ey = load float, ptr %i.eq, align 4, !tbaa !51, !alias.scope !249
  %i.ez = load float, ptr %i.er, align 4, !tbaa !51, !alias.scope !249
  %i.fa = load float, ptr %i.es, align 4, !tbaa !51, !alias.scope !249
  %i.fb = insertelement <8 x float> poison, float %i.et, i64 0
  %i.fc = insertelement <8 x float> %i.fb, float %i.eu, i64 1
  %i.fd = insertelement <8 x float> %i.fc, float %i.ev, i64 2
  %i.fe = insertelement <8 x float> %i.fd, float %i.ew, i64 3
  %i.ff = insertelement <8 x float> %i.fe, float %i.ex, i64 4
  %i.fg = insertelement <8 x float> %i.ff, float %i.ey, i64 5
  %i.fh = insertelement <8 x float> %i.fg, float %i.ez, i64 6
  %i.fi = insertelement <8 x float> %i.fh, float %i.fa, i64 7
  store <8 x float> %i.fi, ptr %next.gep696, align 4, !tbaa !51, !alias.scope !254, !noalias !255
  %i.fj = getelementptr inbounds nuw i8, ptr %next.gep699, i64 12
  %i.fk = getelementptr i8, ptr %i.cq, i64 44
  %i.fl = getelementptr i8, ptr %i.cr, i64 76
  %i.fm = getelementptr i8, ptr %i.cs, i64 108
  %i.fn = getelementptr i8, ptr %i.ct, i64 140
  %i.fo = getelementptr i8, ptr %i.cu, i64 172
  %i.fp = getelementptr i8, ptr %i.cv, i64 204
  %i.fq = getelementptr i8, ptr %i.cw, i64 236
  %i.fr = load float, ptr %i.fj, align 4, !tbaa !51, !alias.scope !249
  %i.fs = load float, ptr %i.fk, align 4, !tbaa !51, !alias.scope !249
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !51, !alias.scope !249
  %i.fu = load float, ptr %i.fm, align 4, !tbaa !51, !alias.scope !249
  %i.fv = load float, ptr %i.fn, align 4, !tbaa !51, !alias.scope !249
  %i.fw = load float, ptr %i.fo, align 4, !tbaa !51, !alias.scope !249
  %i.fx = load float, ptr %i.fp, align 4, !tbaa !51, !alias.scope !249
  %i.fy = load float, ptr %i.fq, align 4, !tbaa !51, !alias.scope !249
  %i.fz = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ga = insertelement <8 x float> %i.fz, float %i.fs, i64 1
  %i.gb = insertelement <8 x float> %i.ga, float %i.ft, i64 2
  %i.gc = insertelement <8 x float> %i.gb, float %i.fu, i64 3
  %i.gd = insertelement <8 x float> %i.gc, float %i.fv, i64 4
  %i.ge = insertelement <8 x float> %i.gd, float %i.fw, i64 5
  %i.gf = insertelement <8 x float> %i.ge, float %i.fx, i64 6
  %i.gg = insertelement <8 x float> %i.gf, float %i.fy, i64 7
  store <8 x float> %i.gg, ptr %next.gep695, align 4, !tbaa !51, !alias.scope !256, !noalias !257
  %i.gh = getelementptr inbounds nuw i8, ptr %next.gep699, i64 16
  %i.gi = getelementptr i8, ptr %i.cq, i64 48
  %i.gj = getelementptr i8, ptr %i.cr, i64 80
  %i.gk = getelementptr i8, ptr %i.cs, i64 112
  %i.gl = getelementptr i8, ptr %i.ct, i64 144
  %i.gm = getelementptr i8, ptr %i.cu, i64 176
  %i.gn = getelementptr i8, ptr %i.cv, i64 208
  %i.go = getelementptr i8, ptr %i.cw, i64 240
  %i.gp = load float, ptr %i.gh, align 4, !tbaa !51, !alias.scope !249
  %i.gq = load float, ptr %i.gi, align 4, !tbaa !51, !alias.scope !249
  %i.gr = load float, ptr %i.gj, align 4, !tbaa !51, !alias.scope !249
  %i.gs = load float, ptr %i.gk, align 4, !tbaa !51, !alias.scope !249
  %i.gt = load float, ptr %i.gl, align 4, !tbaa !51, !alias.scope !249
  %i.gu = load float, ptr %i.gm, align 4, !tbaa !51, !alias.scope !249
  %i.gv = load float, ptr %i.gn, align 4, !tbaa !51, !alias.scope !249
  %i.gw = load float, ptr %i.go, align 4, !tbaa !51, !alias.scope !249
  %i.gx = insertelement <8 x float> poison, float %i.gp, i64 0
  %i.gy = insertelement <8 x float> %i.gx, float %i.gq, i64 1
  %i.gz = insertelement <8 x float> %i.gy, float %i.gr, i64 2
  %i.ha = insertelement <8 x float> %i.gz, float %i.gs, i64 3
  %i.hb = insertelement <8 x float> %i.ha, float %i.gt, i64 4
  %i.hc = insertelement <8 x float> %i.hb, float %i.gu, i64 5
  %i.hd = insertelement <8 x float> %i.hc, float %i.gv, i64 6
  %i.he = insertelement <8 x float> %i.hd, float %i.gw, i64 7
  store <8 x float> %i.he, ptr %next.gep694, align 4, !tbaa !51, !alias.scope !258, !noalias !259
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep699, i64 20
  %i.hg = getelementptr i8, ptr %i.cq, i64 52
  %i.hh = getelementptr i8, ptr %i.cr, i64 84
  %i.hi = getelementptr i8, ptr %i.cs, i64 116
  %i.hj = getelementptr i8, ptr %i.ct, i64 148
  %i.hk = getelementptr i8, ptr %i.cu, i64 180
  %i.hl = getelementptr i8, ptr %i.cv, i64 212
  %i.hm = getelementptr i8, ptr %i.cw, i64 244
  %i.hn = load float, ptr %i.hf, align 4, !tbaa !51, !alias.scope !249
  %i.ho = load float, ptr %i.hg, align 4, !tbaa !51, !alias.scope !249
  %i.hp = load float, ptr %i.hh, align 4, !tbaa !51, !alias.scope !249
  %i.hq = load float, ptr %i.hi, align 4, !tbaa !51, !alias.scope !249
  %i.hr = load float, ptr %i.hj, align 4, !tbaa !51, !alias.scope !249
  %i.hs = load float, ptr %i.hk, align 4, !tbaa !51, !alias.scope !249
  %i.ht = load float, ptr %i.hl, align 4, !tbaa !51, !alias.scope !249
  %i.hu = load float, ptr %i.hm, align 4, !tbaa !51, !alias.scope !249
  %i.hv = insertelement <8 x float> poison, float %i.hn, i64 0
  %i.hw = insertelement <8 x float> %i.hv, float %i.ho, i64 1
  %i.hx = insertelement <8 x float> %i.hw, float %i.hp, i64 2
  %i.hy = insertelement <8 x float> %i.hx, float %i.hq, i64 3
  %i.hz = insertelement <8 x float> %i.hy, float %i.hr, i64 4
  %i.ia = insertelement <8 x float> %i.hz, float %i.hs, i64 5
  %i.ib = insertelement <8 x float> %i.ia, float %i.ht, i64 6
  %i.ic = insertelement <8 x float> %i.ib, float %i.hu, i64 7
  store <8 x float> %i.ic, ptr %next.gep693, align 4, !tbaa !51, !alias.scope !260, !noalias !261
  %i.id = getelementptr inbounds nuw i8, ptr %next.gep699, i64 24
  %i.ie = getelementptr i8, ptr %i.cq, i64 56
  %i.if = getelementptr i8, ptr %i.cr, i64 88
  %i.ig = getelementptr i8, ptr %i.cs, i64 120
  %i.ih = getelementptr i8, ptr %i.ct, i64 152
  %i.ii = getelementptr i8, ptr %i.cu, i64 184
  %i.ij = getelementptr i8, ptr %i.cv, i64 216
  %i.ik = getelementptr i8, ptr %i.cw, i64 248
  %i.il = load float, ptr %i.id, align 4, !tbaa !51, !alias.scope !249
  %i.im = load float, ptr %i.ie, align 4, !tbaa !51, !alias.scope !249
  %i.in = load float, ptr %i.if, align 4, !tbaa !51, !alias.scope !249
  %i.io = load float, ptr %i.ig, align 4, !tbaa !51, !alias.scope !249
  %i.ip = load float, ptr %i.ih, align 4, !tbaa !51, !alias.scope !249
  %i.iq = load float, ptr %i.ii, align 4, !tbaa !51, !alias.scope !249
  %i.ir = load float, ptr %i.ij, align 4, !tbaa !51, !alias.scope !249
  %i.is = load float, ptr %i.ik, align 4, !tbaa !51, !alias.scope !249
  %i.it = insertelement <8 x float> poison, float %i.il, i64 0
  %i.iu = insertelement <8 x float> %i.it, float %i.im, i64 1
  %i.iv = insertelement <8 x float> %i.iu, float %i.in, i64 2
  %i.iw = insertelement <8 x float> %i.iv, float %i.io, i64 3
  %i.ix = insertelement <8 x float> %i.iw, float %i.ip, i64 4
  %i.iy = insertelement <8 x float> %i.ix, float %i.iq, i64 5
  %i.iz = insertelement <8 x float> %i.iy, float %i.ir, i64 6
  %i.ja = insertelement <8 x float> %i.iz, float %i.is, i64 7
  store <8 x float> %i.ja, ptr %next.gep692, align 4, !tbaa !51, !alias.scope !262, !noalias !263
  %i.jb = getelementptr inbounds nuw i8, ptr %next.gep699, i64 28
  %i.jc = getelementptr i8, ptr %i.cq, i64 60
  %i.jd = getelementptr i8, ptr %i.cr, i64 92
  %i.je = getelementptr i8, ptr %i.cs, i64 124
  %i.jf = getelementptr i8, ptr %i.ct, i64 156
  %i.jg = getelementptr i8, ptr %i.cu, i64 188
  %i.jh = getelementptr i8, ptr %i.cv, i64 220
  %i.ji = getelementptr i8, ptr %i.cw, i64 252
  %i.jj = load float, ptr %i.jb, align 4, !tbaa !51, !alias.scope !249
  %i.jk = load float, ptr %i.jc, align 4, !tbaa !51, !alias.scope !249
  %i.jl = load float, ptr %i.jd, align 4, !tbaa !51, !alias.scope !249
  %i.jm = load float, ptr %i.je, align 4, !tbaa !51, !alias.scope !249
  %i.jn = load float, ptr %i.jf, align 4, !tbaa !51, !alias.scope !249
  %i.jo = load float, ptr %i.jg, align 4, !tbaa !51, !alias.scope !249
  %i.jp = load float, ptr %i.jh, align 4, !tbaa !51, !alias.scope !249
  %i.jq = load float, ptr %i.ji, align 4, !tbaa !51, !alias.scope !249
  %i.jr = insertelement <8 x float> poison, float %i.jj, i64 0
  %i.js = insertelement <8 x float> %i.jr, float %i.jk, i64 1
  %i.jt = insertelement <8 x float> %i.js, float %i.jl, i64 2
  %i.ju = insertelement <8 x float> %i.jt, float %i.jm, i64 3
  %i.jv = insertelement <8 x float> %i.ju, float %i.jn, i64 4
  %i.jw = insertelement <8 x float> %i.jv, float %i.jo, i64 5
  %i.jx = insertelement <8 x float> %i.jw, float %i.jp, i64 6
  %i.jy = insertelement <8 x float> %i.jx, float %i.jq, i64 7
  store <8 x float> %i.jy, ptr %next.gep, align 4, !tbaa !51, !alias.scope !264, !noalias !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jz = icmp eq i64 %index.next, %n.vec
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph355.preheader716

.lr.ph355.preheader716:                           ; preds = %vector.memcheck, %.lr.ph355.preheader, %middle.block
  %.1354.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph355.preheader ], [ %i.cc, %middle.block ]
  %.178353.ph = phi ptr [ %.077.lcssa, %vector.memcheck ], [ %.077.lcssa, %.lr.ph355.preheader ], [ %i.ce, %middle.block ]
  %.180352.ph = phi ptr [ %.079.lcssa, %vector.memcheck ], [ %.079.lcssa, %.lr.ph355.preheader ], [ %i.cf, %middle.block ]
  %.182351.ph = phi ptr [ %.081.lcssa, %vector.memcheck ], [ %.081.lcssa, %.lr.ph355.preheader ], [ %i.cg, %middle.block ]
  %.184350.ph = phi ptr [ %.083.lcssa, %vector.memcheck ], [ %.083.lcssa, %.lr.ph355.preheader ], [ %i.ch, %middle.block ]
  %.186349.ph = phi ptr [ %.085.lcssa, %vector.memcheck ], [ %.085.lcssa, %.lr.ph355.preheader ], [ %i.ci, %middle.block ]
  %.188348.ph = phi ptr [ %.087.lcssa, %vector.memcheck ], [ %.087.lcssa, %.lr.ph355.preheader ], [ %i.cj, %middle.block ]
  %.190347.ph = phi ptr [ %.089.lcssa, %vector.memcheck ], [ %.089.lcssa, %.lr.ph355.preheader ], [ %i.ck, %middle.block ]
  %.192346.ph = phi ptr [ %.091.lcssa, %vector.memcheck ], [ %.091.lcssa, %.lr.ph355.preheader ], [ %i.cl, %middle.block ]
  %.194345.ph = phi ptr [ %.093.lcssa, %vector.memcheck ], [ %.093.lcssa, %.lr.ph355.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph355

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.0334 = phi i32 [ %i.lk, %.lr.ph ], [ 0, %.noexc ]
  %.077333 = phi ptr [ %i.lj, %.lr.ph ], [ %i.bg, %.noexc ] ; 2 uses
  %.079332 = phi ptr [ %i.li, %.lr.ph ], [ %i.bc, %.noexc ] ; 2 uses
  %.081331 = phi ptr [ %i.lh, %.lr.ph ], [ %i.ay, %.noexc ] ; 2 uses
  %.083330 = phi ptr [ %i.lg, %.lr.ph ], [ %i.au, %.noexc ] ; 2 uses
  %.085329 = phi ptr [ %i.lf, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %.087328 = phi ptr [ %i.le, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.089327 = phi ptr [ %i.ld, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %.091326 = phi ptr [ %i.lc, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.093325 = phi ptr [ %i.lb, %.lr.ph ], [ %i.x, %.noexc ] ; 5 uses
  %6 = load <16 x float>, ptr %.093325, align 1, !tbaa !55 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.093325, i64 64
  %7 = load <16 x float>, ptr %i.ka, align 1, !tbaa !55 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.093325, i64 128
  %8 = load <16 x float>, ptr %i.kb, align 1, !tbaa !55 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.093325, i64 192
  %9 = load <16 x float>, ptr %i.kc, align 1, !tbaa !55 ; 2 uses
  %i.kd = shufflevector <16 x float> %6, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ke = shufflevector <16 x float> %6, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kf = shufflevector <16 x float> %7, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kg = shufflevector <16 x float> %7, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kh = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ki = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kj = shufflevector <16 x float> %9, <16 x float> poison, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kk = shufflevector <16 x float> %9, <16 x float> poison, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kl = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.km = shufflevector <8 x float> %i.kd, <8 x float> %i.kf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kn = shufflevector <8 x float> %i.ke, <8 x float> %i.kg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ko = shufflevector <8 x float> %i.ke, <8 x float> %i.kg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kp = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.kq = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kr = shufflevector <8 x float> %i.ki, <8 x float> %i.kk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ks = shufflevector <8 x float> %i.ki, <8 x float> %i.kk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kt = shufflevector <8 x float> %i.kl, <8 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ku = shufflevector <8 x float> %i.km, <8 x float> %i.kq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kv = shufflevector <8 x float> %i.kn, <8 x float> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kw = shufflevector <8 x float> %i.ko, <8 x float> %i.ks, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kx = shufflevector <8 x float> %i.kl, <8 x float> %i.kp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ky = shufflevector <8 x float> %i.km, <8 x float> %i.kq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kz = shufflevector <8 x float> %i.kn, <8 x float> %i.kr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.la = shufflevector <8 x float> %i.ko, <8 x float> %i.ks, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kt, ptr %.091326, align 1, !tbaa !55
  store <8 x float> %i.ku, ptr %.089327, align 1, !tbaa !55
  store <8 x float> %i.kv, ptr %.087328, align 1, !tbaa !55
  store <8 x float> %i.kw, ptr %.085329, align 1, !tbaa !55
  store <8 x float> %i.kx, ptr %.083330, align 1, !tbaa !55
  store <8 x float> %i.ky, ptr %.081331, align 1, !tbaa !55
  store <8 x float> %i.kz, ptr %.079332, align 1, !tbaa !55
  store <8 x float> %i.la, ptr %.077333, align 1, !tbaa !55
  %i.lb = getelementptr inbounds nuw i8, ptr %.093325, i64 256 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.091326, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.089327, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.087328, i64 32 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.085329, i64 32 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.083330, i64 32 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.081331, i64 32 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.079332, i64 32 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.077333, i64 32 ; 2 uses
  %i.lk = add nuw nsw i32 %.0334, 8               ; 3 uses
  %i.ll = or disjoint i32 %i.lk, 7
  %i.lm = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.ln = icmp slt i32 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph, label %.preheader, !llvm.loop !245

.lr.ph355:                                        ; preds = %.lr.ph355.preheader716, %.lr.ph355
  %.1354 = phi i32 [ %i.mm, %.lr.ph355 ], [ %.1354.ph, %.lr.ph355.preheader716 ]
  %.178353 = phi ptr [ %i.mk, %.lr.ph355 ], [ %.178353.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.180352 = phi ptr [ %i.mh, %.lr.ph355 ], [ %.180352.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.182351 = phi ptr [ %i.me, %.lr.ph355 ], [ %.182351.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.184350 = phi ptr [ %i.mb, %.lr.ph355 ], [ %.184350.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.186349 = phi ptr [ %i.ly, %.lr.ph355 ], [ %.186349.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.188348 = phi ptr [ %i.lv, %.lr.ph355 ], [ %.188348.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.190347 = phi ptr [ %i.ls, %.lr.ph355 ], [ %.190347.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.192346 = phi ptr [ %i.lp, %.lr.ph355 ], [ %.192346.ph, %.lr.ph355.preheader716 ] ; 2 uses
  %.194345 = phi ptr [ %i.ml, %.lr.ph355 ], [ %.194345.ph, %.lr.ph355.preheader716 ] ; 9 uses
  %i.lo = load float, ptr %.194345, align 4, !tbaa !51
  %i.lp = getelementptr inbounds nuw i8, ptr %.192346, i64 4
  store float %i.lo, ptr %.192346, align 4, !tbaa !51
  %i.lq = getelementptr inbounds nuw i8, ptr %.194345, i64 4
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !51
  %i.ls = getelementptr inbounds nuw i8, ptr %.190347, i64 4
  store float %i.lr, ptr %.190347, align 4, !tbaa !51
  %i.lt = getelementptr inbounds nuw i8, ptr %.194345, i64 8
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !51
  %i.lv = getelementptr inbounds nuw i8, ptr %.188348, i64 4
  store float %i.lu, ptr %.188348, align 4, !tbaa !51
  %i.lw = getelementptr inbounds nuw i8, ptr %.194345, i64 12
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !51
  %i.ly = getelementptr inbounds nuw i8, ptr %.186349, i64 4
  store float %i.lx, ptr %.186349, align 4, !tbaa !51
  %i.lz = getelementptr inbounds nuw i8, ptr %.194345, i64 16
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !51
  %i.mb = getelementptr inbounds nuw i8, ptr %.184350, i64 4
  store float %i.ma, ptr %.184350, align 4, !tbaa !51
  %i.mc = getelementptr inbounds nuw i8, ptr %.194345, i64 20
  %i.md = load float, ptr %i.mc, align 4, !tbaa !51
  %i.me = getelementptr inbounds nuw i8, ptr %.182351, i64 4
  store float %i.md, ptr %.182351, align 4, !tbaa !51
  %i.mf = getelementptr inbounds nuw i8, ptr %.194345, i64 24
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !51
  %i.mh = getelementptr inbounds nuw i8, ptr %.180352, i64 4
  store float %i.mg, ptr %.180352, align 4, !tbaa !51
  %i.mi = getelementptr inbounds nuw i8, ptr %.194345, i64 28
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !51
  %i.mk = getelementptr inbounds nuw i8, ptr %.178353, i64 4
  store float %i.mj, ptr %.178353, align 4, !tbaa !51
  %i.ml = getelementptr inbounds nuw i8, ptr %.194345, i64 32
  %i.mm = add nuw nsw i32 %.1354, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.mm, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph355, !llvm.loop !246

._crit_edge:                                      ; preds = %.lr.ph355, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond371.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond371.not, label %._crit_edge358, label %.noexc

._crit_edge358:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge358, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Packing_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.16(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not104 = icmp sgt i32 %i.k, %i.j
  br i1 %.not104, label %._crit_edge106.split, label %.noexc44.lr.ph

.noexc44.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !270 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !270
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !270
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !271
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !271
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !271
  %factor.op.mul109 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc44.preheader, label %._crit_edge106.split

.noexc44.preheader:                               ; preds = %.noexc44.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc44

.noexc44:                                         ; preds = %.noexc44.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc44.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = shl nsw i64 %indvars.iv, 1               ; 2 uses
  %.reass = mul i64 %factor.op.mul, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.ab = or disjoint i64 %i.z, 1
  %.reass108 = mul i64 %factor.op.mul, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass108
  %.reass110 = mul i64 %factor.op.mul109, %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass110
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge106.split, label %.noexc44

bb.c:                                             ; preds = %.noexc44, %bb.c
  %.0103 = phi i32 [ 0, %.noexc44 ], [ %i.bc, %bb.c ]
  %.040102 = phi ptr [ %i.ad, %.noexc44 ], [ %i.bb, %bb.c ] ; 9 uses
  %.041101 = phi ptr [ %i.ac, %.noexc44 ], [ %i.ba, %bb.c ] ; 5 uses
  %.042100 = phi ptr [ %i.aa, %.noexc44 ], [ %i.az, %bb.c ] ; 5 uses
  %i.ae = load float, ptr %.042100, align 4, !tbaa !51
  store float %i.ae, ptr %.040102, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %.042100, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %.040102, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %.042100, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %.040102, i64 8
  store float %i.aj, ptr %i.ak, align 4, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %.042100, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %.040102, i64 12
  store float %i.am, ptr %i.an, align 4, !tbaa !51
  %i.ao = load float, ptr %.041101, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.040102, i64 16
  store float %i.ao, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %.041101, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %.040102, i64 20
  store float %i.ar, ptr %i.as, align 4, !tbaa !51
end_hunk_1
