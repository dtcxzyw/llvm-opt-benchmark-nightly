Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_ashift?download=true
inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_do_get_structure_quad:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 180
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 156
  store <2 x float> splat (float 1.000000e+00), ptr %i.cz, align 4, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  store <2 x float> %i.bp, ptr %i.da, align 16, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  store float 1.000000e+00, ptr %i.db, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 204
  store <2 x float> %i.ch, ptr %i.dc, align 4, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 212
  store float 1.000000e+00, ptr %i.dd, align 4, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.df = fsub reassoc nsz arcp contract afn float %i.bu, %i.ck
  %i.dg = shufflevector <2 x float> %i.bm, <2 x float> %i.cd, <4 x i32> <i32 1, i32 3, i32 1, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.di = shufflevector <2 x float> %i.bp, <2 x float> %i.ch, <4 x i32> <i32 1, i32 3, i32 poison, i32 3>
  %i.dj = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.dl = fsub reassoc nsz arcp contract afn <4 x float> %i.dh, %i.dk ; 3 uses
  %i.dm = shufflevector <2 x float> %i.bp, <2 x float> %i.ch, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.do = shufflevector <2 x float> %i.bm, <2 x float> %i.cd, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dq = fsub reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dp ; 3 uses
  %i.dr = shufflevector <2 x float> %i.bp, <2 x float> %i.cd, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dt = shufflevector <2 x float> %i.bm, <2 x float> %i.ch, <4 x i32> <i32 0, i32 3, i32 0, i32 poison>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.ds, %i.du
  %i.dw = shufflevector <2 x float> %i.bp, <2 x float> %i.cd, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dy = shufflevector <2 x float> %i.bm, <2 x float> %i.ch, <4 x i32> <i32 1, i32 2, i32 1, i32 poison>
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ea = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.dz
  %i.eb = fsub reassoc nsz arcp contract afn <4 x float> %i.dv, %i.ea ; 6 uses
  %i.ec = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dl
  %i.ed = fmul reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dq ; 2 uses
  %i.ee = fadd reassoc nsz arcp contract afn <4 x float> %i.ec, %i.ed
  %i.ef = fmul reassoc nsz arcp contract afn <4 x float> %i.eb, %i.eb
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ee, %i.ef ; 2 uses
  %i.eh = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.eg)
  %i.ei = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.eg, zeroinitializer
  %i.ej = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.eh
  %i.ek = select <4 x i1> %i.ei, <4 x float> %i.ej, <4 x float> splat (float 1.000000e+00) ; 6 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.eb
  %i.el = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.em = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.dl ; 4 uses
  %i.en = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %foldExtExtBinop47 = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.eb
  %i.eo = extractelement <4 x float> %foldExtExtBinop47, i64 1
  %i.ep = extractelement <4 x float> %i.em, i64 1 ; 2 uses
  %foldExtExtBinop49 = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.eb
  %i.eq = extractelement <4 x float> %foldExtExtBinop49, i64 2
  %i.er = extractelement <4 x float> %i.em, i64 2 ; 2 uses
  %i.es = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.dq ; 4 uses
  %i.et = extractelement <4 x float> %i.es, i64 0 ; 2 uses
  %i.eu = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.en, float noundef %i.et) #35 ; 2 uses
  %i.ev = fcmp reassoc nsz arcp contract afn ogt float %i.eu, 0.000000e+00
  %i.ew = extractelement <4 x float> %i.es, i64 1 ; 2 uses
  %i.ex = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ep, float noundef %i.ew) #35 ; 2 uses
  %i.ey = fcmp reassoc nsz arcp contract afn ogt float %i.ex, 0.000000e+00
  %i.ez = extractelement <4 x float> %i.es, i64 2 ; 2 uses
  %i.fa = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.er, float noundef %i.ez) #35 ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn ogt float %i.fa, 0.000000e+00
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bj, i64 244
  %foldExtExtBinop51 = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.eb
  %i.fd = extractelement <4 x float> %foldExtExtBinop51, i64 3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bj, i64 248
  %i.ff = extractelement <4 x float> %i.em, i64 3 ; 2 uses
  %i.fg = extractelement <4 x float> %i.es, i64 3 ; 2 uses
  %i.fh = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ff, float noundef %i.fg) #35 ; 2 uses
  %i.fi = fcmp reassoc nsz arcp contract afn ogt float %i.fh, 0.000000e+00
  %i.fj = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.ex, i64 1
  %i.fl = insertelement <4 x float> %i.fk, float %i.fa, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.fh, i64 3
  %i.fn = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.fm ; 4 uses
  %i.fo = extractelement <4 x float> %i.fn, i64 0
  %i.fp = select reassoc nsz arcp contract afn i1 %i.ev, float %i.fo, float 1.000000e+00 ; 3 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.en
  store float %i.fq, ptr %i.bw, align 16, !tbaa !15
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fp, %i.et
  store float %i.fr, ptr %i.bx, align 4, !tbaa !15
  %i.fs = fmul reassoc nsz arcp contract afn float %i.el, %i.fp
  store float %i.fs, ptr %i.by, align 8, !tbaa !15
  %i.ft = extractelement <4 x float> %i.fn, i64 1
  %i.fu = select reassoc nsz arcp contract afn i1 %i.ey, float %i.ft, float 1.000000e+00 ; 3 uses
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.ep
  store float %i.fv, ptr %i.cm, align 16, !tbaa !15
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fu, %i.ew
  store float %i.fw, ptr %i.cn, align 4, !tbaa !15
  %i.fx = fmul reassoc nsz arcp contract afn float %i.eo, %i.fu
  store float %i.fx, ptr %i.co, align 8, !tbaa !15
  %i.fy = extractelement <4 x float> %i.fn, i64 2
  %i.fz = select reassoc nsz arcp contract afn i1 %i.fb, float %i.fy, float 1.000000e+00 ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.er
  store float %i.ga, ptr %i.cv, align 16, !tbaa !15
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fz, %i.ez
  store float %i.gb, ptr %i.cw, align 4, !tbaa !15
  %i.gc = fmul reassoc nsz arcp contract afn float %i.eq, %i.fz
  store float %i.gc, ptr %i.cx, align 8, !tbaa !15
  %i.gd = extractelement <4 x float> %i.fn, i64 3
  %i.ge = select reassoc nsz arcp contract afn i1 %i.fi, float %i.gd, float 1.000000e+00 ; 3 uses
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.ff
  store float %i.gf, ptr %i.de, align 16, !tbaa !15
  %i.gg = fmul reassoc nsz arcp contract afn float %i.ge, %i.fg
  store float %i.gg, ptr %i.fc, align 4, !tbaa !15
  %i.gh = fmul reassoc nsz arcp contract afn float %i.fd, %i.ge
  store float %i.gh, ptr %i.fe, align 8, !tbaa !15
  %i.gi = fsub reassoc nsz arcp contract afn <4 x float> %i.dk, %i.dh ; 2 uses
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn <4 x float> %i.gj, %i.ed
  %i.gl = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.gk) ; 4 uses
  %i.gm = extractelement <4 x float> %i.gl, i64 0
  store float %i.gm, ptr %i.bz, align 8, !tbaa !188
  %i.gn = extractelement <4 x float> %i.gl, i64 1
  store float %i.gn, ptr %i.cp, align 8, !tbaa !188
  %i.go = extractelement <4 x float> %i.gl, i64 2
  store float %i.go, ptr %i.cy, align 8, !tbaa !188
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bj, i64 216
  %i.gq = extractelement <4 x float> %i.gl, i64 3
  store float %i.gq, ptr %i.gp, align 8, !tbaa !188
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bj, i64 220
  store <2 x float> splat (float 1.000000e+00), ptr %i.gr, align 4, !tbaa !15
  %i.gs = load <2 x float>, ptr %i.bj, align 16, !tbaa !15
  %i.gt = load <2 x float>, ptr %i.bo, align 4, !tbaa !15
  %i.gu = fsub reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gt
  %i.gv = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gu) ; 2 uses
  %shift = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gw = fcmp ogt <2 x float> %i.gv, %shift
  %i.gx = extractelement <2 x i1> %i.gw, i64 0
  %spec.select.i = select i1 %i.gx, i32 5, i32 7
  store i32 %spec.select.i, ptr %i.cb, align 4, !tbaa !189
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bj, i64 76
  %i.gz = load <2 x float>, ptr %i.cc, align 16, !tbaa !15
  %i.ha = load <2 x float>, ptr %i.gy, align 4, !tbaa !15
  %i.hb = fsub reassoc nsz arcp contract afn <2 x float> %i.gz, %i.ha
  %i.hc = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hb) ; 2 uses
  %shift53 = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = fcmp ogt <2 x float> %i.hc, %shift53
  %i.he = extractelement <2 x i1> %i.hd, i64 0
  %spec.select.i.1 = select i1 %i.he, i32 5, i32 7
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  store i32 %spec.select.i.1, ptr %i.hf, align 4, !tbaa !189
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bj, i64 140
  %i.hh = load <2 x float>, ptr %i.cr, align 16, !tbaa !15
  %i.hi = load <2 x float>, ptr %i.hg, align 4, !tbaa !15
  %i.hj = fsub reassoc nsz arcp contract afn <2 x float> %i.hh, %i.hi
  %i.hk = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hj) ; 2 uses
  %shift54 = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hl = fcmp ogt <2 x float> %i.hk, %shift54
  %i.hm = extractelement <2 x i1> %i.hl, i64 0
  %spec.select.i.2 = select i1 %i.hm, i32 5, i32 7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bj, i64 164
  store i32 %spec.select.i.2, ptr %i.hn, align 4, !tbaa !189
  %foldExtExtBinop55 = fsub reassoc nsz arcp contract afn <2 x float> %i.bp, %i.ch
  %i.ho = extractelement <2 x float> %foldExtExtBinop55, i64 0
  %i.hp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ho)
  %i.hq = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.df)
  %i.hr = fcmp reassoc nsz arcp contract afn ogt float %i.hp, %i.hq
  %spec.select.i.3 = select i1 %i.hr, i32 5, i32 7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bj, i64 228
  store i32 %spec.select.i.3, ptr %i.hs, align 4, !tbaa !189
  %i.ht = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.hv = load <2 x i32>, ptr %i.ht, align 4, !tbaa !17
  store <2 x i32> %i.hv, ptr %i.hu, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 0, ptr %i.hw, align 8, !tbaa !308
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  store i32 0, ptr %i.hx, align 4, !tbaa !309
  %i.hy = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  store i32 2, ptr %i.hy, align 4, !tbaa !230
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store i32 2, ptr %i.hz, align 8, !tbaa !232
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store <2 x float> splat (float 2.000000e+00), ptr %i.ia, align 8, !tbaa !15
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 228 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !183
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !183
  call void @dt_control_queue_redraw_center() #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l, %bb.i, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_draw_retrieve_lines_from_params(ptr noundef %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x float], align 16             ; 13 uses
  %i.b = alloca [200 x float], align 16           ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !125 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 8 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !143
  %i.m = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %0) #34 ; 2 uses
  %i.n = icmp eq i32 %1, 2
  br i1 %i.n, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 860
  %i.p = load float, ptr %i.o, align 4, !tbaa !15 ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 864
  %i.s = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 868
  %i.v = load float, ptr %i.u, align 4, !tbaa !15 ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 872
  %i.y = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store float %i.p, ptr %i.a, align 16, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store float %i.s, ptr %i.aa, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %i.v, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store float %i.y, ptr %i.ac, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 876
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ai = load <4 x float>, ptr %i.ae, align 4, !tbaa !15
  store <4 x float> %i.ai, ptr %i.ad, align 16, !tbaa !15
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !126 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !143
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !144
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to double
  %i.ap = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.aj, ptr noundef %i.al, double noundef %i.ao, i32 noundef 4, ptr noundef nonnull %i.a, i64 noundef 4) #34
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !179 ; 2 uses
  %.not110 = icmp eq ptr %i.ar, null
  br i1 %.not110, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.ar) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 4, i64 noundef 64) #36 ; 5 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !179
  %i.at = load float, ptr %i.a, align 16, !tbaa !15 ; 2 uses
  %i.au = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.av = load float, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %i.aw = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  call fastcc void @_draw_basic_line(ptr noundef %i.as, float noundef %i.at, float noundef %i.au, float noundef %i.av, float noundef %i.aw, i32 noundef 7)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ay = load float, ptr %i.ad, align 16, !tbaa !15 ; 2 uses
  %i.az = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.ba = load float, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  %i.bb = load float, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  call fastcc void @_draw_basic_line(ptr noundef nonnull %i.ax, float noundef %i.ay, float noundef %i.az, float noundef %i.ba, float noundef %i.bb, i32 noundef 7)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  call fastcc void @_draw_basic_line(ptr noundef nonnull %i.bc, float noundef %i.at, float noundef %i.au, float noundef %i.ay, float noundef %i.az, i32 noundef 5)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  call fastcc void @_draw_basic_line(ptr noundef nonnull %i.bd, float noundef %i.av, float noundef %i.aw, float noundef %i.ba, float noundef %i.bb, i32 noundef 5)
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 4, ptr %i.be, align 8, !tbaa !180
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  store i32 2, ptr %i.bf, align 4, !tbaa !230
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i32 2, ptr %i.bg, align 8, !tbaa !232
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store <2 x float> splat (float 2.000000e+00), ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bk = load <2 x i32>, ptr %i.bi, align 4, !tbaa !17
  store <2 x i32> %i.bk, ptr %i.bj, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store i32 2, ptr %i.bl, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.o

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 856 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !236 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %iter.check, label %bb.o

iter.check:                                       ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %i.b, i8 0, i64 800, i1 false)
  %i.bp = shl i32 %i.bn, 2                        ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 6 uses
  %min.iters.check = icmp slt i32 %i.bp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.prol.loopexit, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check139 = icmp slt i32 %i.bp, 32
  br i1 %min.iters.check139, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %wide.load = load <8 x float>, ptr %i.bs, align 4, !tbaa !15
  %wide.load140 = load <8 x float>, ptr %i.bt, align 4, !tbaa !15
  %wide.load141 = load <8 x float>, ptr %i.bu, align 4, !tbaa !15
  %wide.load142 = load <8 x float>, ptr %i.bv, align 4, !tbaa !15
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  store <8 x float> %wide.load, ptr %i.bw, align 16, !tbaa !15
  store <8 x float> %wide.load140, ptr %i.bx, align 16, !tbaa !15
  store <8 x float> %wide.load141, ptr %i.by, align 16, !tbaa !15
  store <8 x float> %wide.load142, ptr %i.bz, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next146, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index144
  %wide.load145 = load <4 x float>, ptr %i.cb, align 4, !tbaa !15
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index144
  store <4 x float> %wide.load145, ptr %i.cc, align 16, !tbaa !15
  %index.next146 = add nuw i64 %index144, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next146, %n.vec143
  br i1 %i.cd, label %vec.epilog.scalar.ph.prol, label %vec.epilog.vector.body, !llvm.loop !602

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.vector.body
  %prol.iter.cmp.not = icmp eq i64 %n.vec143, %wide.trip.count
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.scalar.ph.prol
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.scalar.ph.prol ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol, %middle.block
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !126 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cg = load ptr, ptr %i.cf, align 16, !tbaa !143
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ci = load i32, ptr %i.ch, align 16, !tbaa !144
  %i.cj = sitofp reassoc nsz arcp contract afn i32 %i.ci to double
  %i.ck = shl nuw nsw i32 %i.bn, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = call i32 @dt_dev_distort_transform_plus(ptr noundef %i.ce, ptr noundef %i.cg, double noundef %i.cj, i32 noundef 4, ptr noundef nonnull %i.b, i64 noundef %i.cl) #34
  %.not111 = icmp eq i32 %i.cm, 0
  br i1 %.not111, label %.critedge114, label %bb.l

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %i.co, ptr %i.cp, align 4, !tbaa !15
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !603

bb.l:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !179 ; 2 uses
  %.not112 = icmp eq ptr %i.cr, null
  br i1 %.not112, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.cr) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cs = load i32, ptr %i.bm, align 4, !tbaa !236 ; 4 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = call noalias ptr @calloc(i64 noundef %i.ct, i64 noundef 64) #36 ; 2 uses
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !179
  %i.cv = icmp sgt i32 %i.cs, 0
  br i1 %i.cv, label %.lr.ph120.preheader, label %._crit_edge121

.lr.ph120.preheader:                              ; preds = %bb.n
  %wide.trip.count128 = zext nneg i32 %i.cs to i64
  br label %.lr.ph120

._crit_edge121:                                   ; preds = %.lr.ph120, %bb.n
  %.096.lcssa = phi i32 [ 0, %bb.n ], [ %.197, %.lr.ph120 ] ; 2 uses
  %.095.lcssa = phi i32 [ 0, %bb.n ], [ %.1, %.lr.ph120 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i32 %i.cs, ptr %i.cw, align 8, !tbaa !180
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 220
  store i32 %.096.lcssa, ptr %i.cx, align 4, !tbaa !230
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i32 %.095.lcssa, ptr %i.cy, align 8, !tbaa !232
  %i.cz = uitofp nsz nneg i32 %.096.lcssa to float
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store float %i.cz, ptr %i.da, align 8, !tbaa !231
  %i.db = uitofp nsz nneg i32 %.095.lcssa to float
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store float %i.db, ptr %i.dc, align 4, !tbaa !233
  %i.dd = getelementptr inbounds nuw i8, ptr %i.m, i64 108
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.df = load <2 x i32>, ptr %i.dd, align 4, !tbaa !17
  store <2 x i32> %i.df, ptr %i.de, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store i32 3, ptr %i.dg, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv125 = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next126, %.lr.ph120 ] ; 3 uses
  %.095117 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.1, %.lr.ph120 ]
  %.096116 = phi i32 [ 0, %.lr.ph120.preheader ], [ %.197, %.lr.ph120 ]
  %.idx = shl nuw nsw i64 %indvars.iv125, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %indvars.iv125 ; 10 uses
  %i.dk = load <2 x float>, ptr %i.dh, align 16, !tbaa !15 ; 5 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0
  %i.dm = extractelement <2 x float> %i.dk, i64 1 ; 3 uses
  store <2 x float> %i.dk, ptr %i.dj, align 16, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store float 1.000000e+00, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dp = load <2 x float>, ptr %i.di, align 8, !tbaa !15 ; 5 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  %i.ds = fsub reassoc nsz arcp contract afn float %i.dm, %i.dr ; 3 uses
  %i.dt = fsub reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dp
  %i.du = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dt) ; 2 uses
  %shift = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = fcmp ule <2 x float> %i.du, %shift
  %i.dw = extractelement <2 x i1> %i.dv, i64 0    ; 3 uses
  %spec.select = select i1 %i.dw, i32 7, i32 5
  store <2 x float> %i.dp, ptr %i.do, align 4, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.dp, %i.dk ; 3 uses
  %i.dz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dr, %i.dl
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dm, %i.dq
  %i.ec = fsub reassoc nsz arcp contract afn float %i.ea, %i.eb ; 3 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ds, %i.ds
  %foldExtExtBinop149 = fmul reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.ee = extractelement <2 x float> %foldExtExtBinop149, i64 0 ; 2 uses
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ed, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ec, %i.ec
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ef, %i.eg ; 2 uses
  %i.ei = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.eh)
  %i.ej = fcmp reassoc nsz arcp contract afn ogt float %i.eh, 0.000000e+00
  %i.ek = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.el = select reassoc nsz arcp contract afn i1 %i.ej, float %i.ek, float 1.000000e+00 ; 3 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ds ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.el, %i.dz ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  %i.ep = fmul reassoc nsz arcp contract afn float %i.el, %i.ec
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.er = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.em, float noundef %i.en) #35 ; 2 uses
  %i.es = fcmp reassoc nsz arcp contract afn ogt float %i.er, 0.000000e+00
  %i.et = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.er
  %i.eu = select reassoc nsz arcp contract afn i1 %i.es, float %i.et, float 1.000000e+00 ; 3 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.em
  store float %i.ev, ptr %i.dy, align 16, !tbaa !15
  %i.ew = fmul reassoc nsz arcp contract afn float %i.eu, %i.en
  store float %i.ew, ptr %i.eo, align 4, !tbaa !15
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ep, %i.eu
  store float %i.ex, ptr %i.eq, align 8, !tbaa !15
  %i.ey = fsub reassoc nsz arcp contract afn float %i.dr, %i.dm ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.ey
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ee
  %i.fb = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fa)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store float %i.fb, ptr %i.fc, align 8, !tbaa !188
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.fd, align 4, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  store i32 %spec.select, ptr %i.fe, align 4, !tbaa !189
  %i.ff = zext i1 %i.dw to i32
  %.197 = add nuw nsw i32 %.096116, %i.ff         ; 2 uses
  %not. = xor i1 %i.dw, true
  %i.fg = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.095117, %i.fg           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge121, label %.lr.ph120

.critedge114:                                     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %.critedge114, %.critedge, %bb.f, %bb.e, %bb.d, %bb.c, %._crit_edge121, %bb.j, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %._crit_edge121 ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.critedge ], [ 0, %.critedge114 ], [ 0, %bb.k ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_do_get_structure_lines(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #34 ; 0 uses
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.105, i32 noundef 5) #34
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !143
  tail call void @dt_dev_pixelpipe_cache_flush(ptr noundef %i.m) #34
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !126
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.n) #34
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245
  %.val = load ptr, ptr %i.a, align 16, !tbaa !125
  tail call fastcc void @_gui_update_structure_states(ptr %.val, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !143
  %i.u = tail call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %0) #34
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !125 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 148 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !178
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_do_clean_structure.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  store i32 1, ptr %i.w, align 4, !tbaa !178
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  store i32 0, ptr %i.y, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  store i32 0, ptr %i.z, align 4, !tbaa !230
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i32 0, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179 ; 2 uses
  %.not16.i = icmp eq ptr %i.ac, null
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 228 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !183
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 368
end_hunk_0
begin_hunk_1_@llvm.sqrt.v4f32
!403 = !{!402, !400, i64 336}
!404 = !{!"_PangoRectangle", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!405 = !{!404, !8, i64 8}
!406 = !{!404, !8, i64 12}
!407 = !{!150, !23, i64 304}
!408 = !{!150, !8, i64 260}
!409 = !{!31, !31, i64 0}
!410 = !{!146, !146, i64 0}
!411 = distinct !{!411, !195}
!412 = distinct !{!412, !"mat3mulv"}
!413 = distinct !{!413, !412, !"mat3mulv: argument 1"}
!414 = distinct !{!414, !412, !"mat3mulv: argument 0"}
!415 = distinct !{!415, !195}
!416 = !{!414, !413}
!417 = !{!150, !14, i64 384}
!418 = !{!150, !14, i64 388}
!419 = distinct !{!419, !49, !50}
!420 = distinct !{!420, !49, !50}
!421 = distinct !{!421, !50, !49}
!422 = distinct !{!422, !49, !50}
!423 = distinct !{!423, !49, !50}
!424 = distinct !{!424, !50, !49}
!425 = distinct !{!425, !195}
!426 = distinct !{!426, !195}
!427 = !{i64 0, i64 12, !177, i64 12, i64 12, !177, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 4, !15, i64 36, i64 4, !17, i64 48, i64 12, !177}
!428 = distinct !{!428, !49, !50}
!429 = distinct !{!429, !49, !50}
!430 = distinct !{!430, !50, !49}
!431 = distinct !{!431, !49, !50}
!432 = distinct !{!432, !49, !50}
!433 = distinct !{!433, !50, !49}
!434 = distinct !{!434, !"mat3mulv"}
!435 = distinct !{!435, !434, !"mat3mulv: argument 1"}
!436 = distinct !{!436, !434, !"mat3mulv: argument 0"}
!437 = distinct !{!437, !"mat3mulv"}
!438 = distinct !{!438, !437, !"mat3mulv: argument 1"}
!439 = distinct !{!439, !437, !"mat3mulv: argument 0"}
!440 = !{!436, !435}
!441 = !{!439, !438}
!442 = !{!172, !14, i64 40}
!443 = !{!172, !14, i64 44}
!444 = !{!123, !8, i64 676}
!445 = !{!113, !8, i64 4}
!446 = !{!113, !14, i64 24}
!447 = !{!113, !14, i64 32}
!448 = !{!123, !11, i64 688}
!449 = !{!142, !8, i64 2064}
!450 = !{!123, !98, i64 824}
!451 = !{!150, !147, i64 440}
!452 = !{!150, !98, i64 72}
!453 = !{!150, !98, i64 80}
!454 = !{!100, !8, i64 3312}
!455 = !{!100, !66, i64 96}
!456 = !{!"p1 _ZTS24dt_introspection_field_t", !11, i64 0}
!457 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !84, i64 8, !23, i64 16, !456, i64 24, !23, i64 32, !23, i64 40}
!458 = !{!457, !8, i64 0}
!459 = distinct !{!459, !49, !50}
!460 = distinct !{!460, !49, !50}
!461 = distinct !{!461, !195}
!462 = distinct !{!462, !195}
!463 = distinct !{!463, !49}
!464 = distinct !{!464, !195}
!465 = distinct !{!465, !195}
!466 = distinct !{!466, !195}
!467 = distinct !{!467, !49, !50}
!468 = distinct !{!468, !49, !50}
!469 = distinct !{!469, !195}
!470 = distinct !{!470, !49, !50}
!471 = distinct !{!471, !49, !50}
!472 = distinct !{!472, !50, !49}
!473 = distinct !{!473, !49}
!474 = distinct !{!474, !49, !50}
!475 = distinct !{!475, !49, !50}
!476 = distinct !{!476, !195}
!477 = distinct !{!477, !49}
!478 = distinct !{!478, !49, !50}
!479 = distinct !{!479, !49, !50}
!480 = distinct !{!480, !50, !49}
!481 = distinct !{!481, !49, !50}
!482 = distinct !{!482, !49, !50}
!483 = distinct !{!483, !195}
!484 = distinct !{!484, !49, !50}
!485 = distinct !{!485, !49, !50}
!486 = distinct !{!486, !195}
!487 = distinct !{!487, !49}
!488 = distinct !{!488, !49}
!489 = distinct !{!489, !49, !50}
!490 = distinct !{!490, !49, !50}
!491 = distinct !{!491, !195}
!492 = distinct !{!492, !49, !50}
!493 = distinct !{!493, !49, !50}
!494 = distinct !{!494, !50, !49}
!495 = distinct !{!495, !49}
!496 = distinct !{!496, !49, !50}
!497 = distinct !{!497, !49, !50}
!498 = distinct !{!498, !195}
!499 = distinct !{!499, !49}
!500 = distinct !{!500, !"LVerDomain"}
!501 = distinct !{!501, !500}
!502 = distinct !{!502, !500}
!503 = distinct !{!503, !49, !50}
!504 = distinct !{!504, !49, !50}
!505 = distinct !{!505, !195}
!506 = distinct !{!506, !49}
!507 = distinct !{!507, !49, !50}
!508 = distinct !{!508, !49, !50}
!509 = distinct !{!509, !50, !49}
!510 = distinct !{!510, !49, !50}
!511 = distinct !{!511, !49, !50}
!512 = distinct !{!512, !50, !49}
!513 = distinct !{!513, !195}
!514 = distinct !{!514, !49, !50}
!515 = distinct !{!515, !49, !50}
!516 = distinct !{!516, !195}
!517 = distinct !{!517, !49}
!518 = !{ptr @crop_constraint}
!519 = !{ptr @crop_fitness, ptr @model_fitness}
!520 = !{!501}
!521 = !{!502}
!522 = distinct !{!522, !"mat3mulv"}
!523 = distinct !{!523, !522, !"mat3mulv: argument 1"}
!524 = distinct !{!524, !522, !"mat3mulv: argument 0"}
!525 = !{!241, !14, i64 8}
!526 = !{!241, !14, i64 12}
!527 = !{!524, !523}
!528 = !{!270, !8, i64 0}
!529 = !{!270, !14, i64 36}
!530 = distinct !{!530, !195}
!531 = distinct !{!531, !49, !50}
!532 = distinct !{!532, !50, !49}
!533 = distinct !{!533, !49, !50}
!534 = distinct !{!534, !50, !49}
!535 = distinct !{!535, !49, !50}
!536 = distinct !{!536, !50, !49}
!537 = distinct !{!537, !49, !50}
!538 = distinct !{!538, !49, !50}
!539 = distinct !{!539, !195}
!540 = distinct !{!540, !49, !50}
!541 = distinct !{!541, !49, !50}
!542 = distinct !{!542, !195}
!543 = distinct !{!543, !49}
!544 = distinct !{!544, !49}
!545 = distinct !{!545, !195}
!546 = distinct !{!546, !195}
!547 = distinct !{!547, !195}
!548 = !{!"ntuple_list_s", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16}
!549 = !{!548, !8, i64 0}
!550 = !{!548, !8, i64 4}
!551 = !{!548, !8, i64 8}
!552 = !{!548, !12, i64 16}
!553 = !{!"p1 _ZTS8coorlist", !11, i64 0}
!554 = !{!553, !553, i64 0}
!555 = !{!"coorlist", !8, i64 0, !8, i64 4, !553, i64 8}
!556 = !{!555, !553, i64 8}
!557 = !{!555, !8, i64 0}
!558 = !{!555, !8, i64 4}
!559 = !{!187, !14, i64 28}
!560 = distinct !{!560, !"LVerDomain"}
!561 = distinct !{!561, !560}
!562 = distinct !{!562, !560}
!563 = distinct !{!563, !560}
!564 = distinct !{!564, !560}
!565 = distinct !{!565, !49, !50}
!566 = distinct !{!566, !49}
!567 = distinct !{!567, !49}
!568 = distinct !{!568, !49, !50}
!569 = distinct !{!569, !49, !50}
!570 = distinct !{!570, !195}
!571 = distinct !{!571, !49}
!572 = !{!561}
!573 = !{!562}
!574 = !{!563}
!575 = !{!564}
!576 = !{!563, !562, !561}
!577 = distinct !{!577, !49, !50}
!578 = distinct !{!578, !49, !50}
!579 = distinct !{!579, !50, !49}
!580 = distinct !{!580, !49, !50}
!581 = distinct !{!581, !49, !50}
!582 = distinct !{!582, !50, !49}
!583 = !{!313, !92, i64 72}
!584 = !{!313, !92, i64 64}
!585 = distinct !{!585, !49, !50}
!586 = distinct !{!586, !49, !50}
!587 = distinct !{!587, !50, !49}
!588 = distinct !{!588, !49, !50}
!589 = distinct !{!589, !49, !50}
!590 = distinct !{!590, !50, !49}
!591 = distinct !{!591, !"mat3mulv"}
!592 = distinct !{!592, !591, !"mat3mulv: argument 1"}
!593 = distinct !{!593, !591, !"mat3mulv: argument 0"}
!594 = distinct !{!594, !"mat3mulv"}
!595 = distinct !{!595, !594, !"mat3mulv: argument 1"}
!596 = distinct !{!596, !594, !"mat3mulv: argument 0"}
!597 = !{!592}
!598 = !{!593}
!599 = !{!595}
!600 = !{!596}
!601 = distinct !{!601, !49, !50}
!602 = distinct !{!602, !49, !50}
!603 = distinct !{!603, !50, !49}
end_hunk_1
