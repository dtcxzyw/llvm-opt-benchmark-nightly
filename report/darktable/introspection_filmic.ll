Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmic?download=true
inline.NumInlined: 128
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@color_picker_apply:bb.a
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.es = atomicrmw sub ptr %i.er, i32 1 seq_cst, align 4 ; 0 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 3 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !24
  %i.ev = load float, ptr %i.ek, align 4, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !105
  %i.ey = fsub reassoc nsz arcp contract afn float %i.ev, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, 9.900000e-01 ; 2 uses
  %i.fa = fcmp reassoc nsz arcp contract afn ogt float %i.eu, %i.ez
  br i1 %i.fa, label %bb.l, label %sanitize_latitude.exit.i15

bb.l:                                             ; preds = %bb.k
  store float %i.ez, ptr %i.et, align 4, !tbaa !24
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fd = atomicrmw add ptr %i.fc, i32 1 seq_cst, align 4 ; 0 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !111
  %i.fg = load float, ptr %i.et, align 4, !tbaa !24
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ff, float noundef %i.fg) #20
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 104
  %i.fj = atomicrmw sub ptr %i.fi, i32 1 seq_cst, align 4 ; 0 uses
  br label %sanitize_latitude.exit.i15

sanitize_latitude.exit.i15:                       ; preds = %bb.l, %bb.k
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  tail call void @dt_dev_add_history_item(ptr noundef %i.fk, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !109
  tail call void @gtk_widget_queue_draw(ptr noundef %i.fm) #20
  br label %apply_auto_grey.exit

bb.m:                                             ; preds = %bb.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !112
  %i.fp = icmp eq ptr %1, %i.fo
  br i1 %i.fp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !104 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ft = load float, ptr %i.fs, align 16, !tbaa !12
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, 8.620690e-03
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, f0x3E0D3DCB ; 5 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ogt float %i.fv, f0x3E53DCB1
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %i.fv
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fv
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fv, f0x3E038026
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, f0xBC911AA6
  %i.gb = select reassoc nsz arcp contract afn i1 %i.fw, float %i.fy, float %i.ga ; 2 uses
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, 1.000000e+02
  store float %i.gc, ptr %i.fr, align 4, !tbaa !23
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ge = load float, ptr %i.gd, align 16, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !110
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, f0x3C6C5F03
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, f0x3FB8AA3B
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.gk = load float, ptr %i.gj, align 16, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gk, i64 1
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, splat (float 8.620690e-03)
  %i.gq = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, splat (float f0x3E0D3DCB) ; 5 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gq, splat (float f0x3E53DCB1)
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, %i.gq
  %i.gt = fmul reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gq
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, splat (float f0x3E038026)
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gu, splat (float f0xBC911AA6)
  %i.gw = select <2 x i1> %i.gr, <2 x float> %i.gt, <2 x float> %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fdiv reassoc nsz arcp contract afn <2 x float> %i.gw, %i.gy ; 2 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gz, splat (float f0x37800000)
  %i.hb = select <2 x i1> %i.ha, <2 x float> %i.gz, <2 x float> splat (float f0x37800000)
  %i.hc = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.hb)
  %i.hd = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul reassoc nsz arcp contract afn <2 x float> %i.hc, %i.he
  store <2 x float> %i.hf, ptr %i.gl, align 4, !tbaa !12
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = atomicrmw add ptr %i.hh, i32 1 seq_cst, align 4 ; 0 uses
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.hk = load float, ptr %i.fr, align 4, !tbaa !23
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hj, float noundef %i.hk) #20
  %i.hl = load ptr, ptr %i.az, align 8, !tbaa !106
  %i.hm = load float, ptr %i.gl, align 4, !tbaa !105
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hl, float noundef %i.hm) #20
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.ho = load float, ptr %i.gm, align 4, !tbaa !25
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hn, float noundef %i.ho) #20
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  %i.hr = atomicrmw sub ptr %i.hq, i32 1 seq_cst, align 4 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 3 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !24
  %i.hu = load float, ptr %i.gm, align 4, !tbaa !25
  %i.hv = load float, ptr %i.gl, align 4, !tbaa !105
  %i.hw = fsub reassoc nsz arcp contract afn float %i.hu, %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, 9.900000e-01 ; 2 uses
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.ht, %i.hx
  br i1 %i.hy, label %bb.o, label %apply_autotune.exit

bb.o:                                             ; preds = %bb.n
  store float %i.hx, ptr %i.hs, align 4, !tbaa !24
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 104
  %i.ib = atomicrmw add ptr %i.ia, i32 1 seq_cst, align 4 ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !111
  %i.ie = load float, ptr %i.hs, align 4, !tbaa !24
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.id, float noundef %i.ie) #20
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !103
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ih = atomicrmw sub ptr %i.ig, i32 1 seq_cst, align 4 ; 0 uses
  br label %apply_autotune.exit

apply_autotune.exit:                              ; preds = %bb.n, %bb.o
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !108
  tail call void @dt_dev_add_history_item(ptr noundef %i.ii, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !109
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ik) #20
  br label %apply_auto_grey.exit

bb.p:                                             ; preds = %bb.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11) #20
  br label %apply_auto_grey.exit

apply_auto_grey.exit:                             ; preds = %sanitize_latitude.exit.i15, %bb.j, %sanitize_latitude.exit.i, %bb.f, %Log2.exit.i, %bb.b, %apply_autotune.exit, %bb.p
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @compute_curve_lut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(none) initializes((0, 16), (24, 36)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !105 ; 3 uses
  %i.e = fsub reassoc nsz arcp contract afn float %i.b, %i.d ; 7 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.g = fdiv reassoc nsz arcp contract afn float %i.f, %i.e ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !113 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !114 ; 5 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.i, %i.k ; 2 uses
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.i, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.m, float 0.000000e+00, float %i.i
  %i.n = select reassoc nsz arcp contract afn i1 %i.l, float %i.k, float %spec.select
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, f0x3C23D70A ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !115 ; 4 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.k, %i.q ; 2 uses
  %. = select reassoc nsz arcp contract afn i1 %i.l, float %i.i, float %i.k
  %spec.select299 = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %.
  %i.s = fmul reassoc nsz arcp contract afn float %spec.select299, f0x3C23D70A
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load float, ptr %i.t, align 4, !tbaa !116
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.u
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.s, float %i.v) ; 10 uses
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.000000e+02
  %.270 = select reassoc nsz arcp contract afn i1 %i.r, float %i.k, float %i.q
  %i.y = fmul reassoc nsz arcp contract afn float %.270, f0x3C23D70A
  %i.z = select i1 %i.x, float 1.000000e+00, float %i.y ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24 ; 3 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.e, 9.900000e-01 ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ogt float %i.ab, %i.ac
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ab, f0x3C23D70A
  %spec.select271 = select reassoc nsz arcp contract afn i1 %i.ae, float f0x3C23D70A, float %i.ab
  %i.af = select reassoc nsz arcp contract afn i1 %i.ad, float %i.ac, float %spec.select271 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !17 ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.ah, 5.000000e+01
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %i.ah, -5.000000e+01
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ah, f0x3C23D70A
  %spec.select272 = select i1 %i.aj, float -5.000000e-01, float %i.ak
  %i.al = select i1 %i.ai, float 5.000000e-01, float %spec.select272
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.an = load float, ptr %i.am, align 4, !tbaa !117 ; 6 uses
  %i.ao = fdiv reassoc nsz arcp contract afn float %i.af, %i.e ; 2 uses
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.d, %i.e
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ap)
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ao, %i.aq
  %i.as = fsub reassoc nsz arcp contract afn float %i.g, %i.ar ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.ao, %i.b
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.e
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.g ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.an, %i.g
  %i.ax = fsub reassoc nsz arcp contract afn float %i.w, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.as, %i.an
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, %i.an
  %square = fmul reassoc nsz arcp contract afn float %i.an, %i.an
  %i.ba = fadd reassoc nsz arcp contract afn float %square, 1.000000e+00
  %sqrt = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ba) ; 2 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.af, %i.e
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.al
  %i.bd = fdiv reassoc nsz arcp contract afn float %i.bc, %i.e ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.an
  %i.bf = fdiv reassoc nsz arcp contract afn float %i.be, %sqrt
  %6 = fadd reassoc nsz arcp contract afn float %i.bf, %i.ax ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %6, %i.ay ; 3 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %6, %i.az ; 3 uses
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.bd, %sqrt ; 2 uses
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.as ; 3 uses
  %i.bk = fadd reassoc nsz arcp contract afn float %i.av, %i.bi ; 3 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %i.bj, %i.g
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bj, 0.000000e+00
  %i.bn = select reassoc nsz arcp contract afn i1 %i.bm, float 0.000000e+00, float %i.bj
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bl, float %i.g, float %i.bn ; 6 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.bk, 1.000000e+00
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bk, %i.g
  %i.br = select reassoc nsz arcp contract afn i1 %i.bq, float %i.g, float %i.bk
  %i.bs = select reassoc nsz arcp contract afn i1 %i.bp, float 1.000000e+00, float %i.br ; 6 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bg, %i.w
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bg, %i.o
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bu, float %i.o, float %i.bg
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bt, float %i.w, float %i.bv ; 4 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt float %i.bh, %i.z
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bh, %i.w
  %i.bz = select reassoc nsz arcp contract afn i1 %i.by, float %i.w, float %i.bh
  %i.ca = select reassoc nsz arcp contract afn i1 %i.bx, float %i.z, float %i.bz ; 4 uses
  %i.cb = fcmp reassoc nsz arcp contract afn oeq float %i.bo, %i.g
  %i.cc = fcmp reassoc nsz arcp contract afn oeq float %i.bw, %i.w
  %or.cond273 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond273, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cd = fcmp reassoc nsz arcp contract afn oeq float %i.bo, 0.000000e+00
  %i.ce = fcmp reassoc nsz arcp contract afn oeq float %i.bw, %i.o
  %or.cond274 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond274, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cf = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  %i.cg = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  %i.ch = fcmp reassoc nsz arcp contract afn oeq float %i.bs, %i.g
  %i.ci = fcmp reassoc nsz arcp contract afn oeq float %i.ca, %i.w
  %or.cond275 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond275, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cj = fcmp reassoc nsz arcp contract afn oeq float %i.bs, 1.000000e+00
  %i.ck = fcmp reassoc nsz arcp contract afn oeq float %i.ca, %i.z
  %or.cond276 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond276, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %5, align 4, !tbaa !119
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !12
  store float %i.bo, ptr %i.cm, align 4, !tbaa !12
  store float %i.g, ptr %i.cn, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 1.000000e+00, ptr %i.co, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.o, ptr %i.cp, align 4, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bw, ptr %i.cq, align 4, !tbaa !12
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.w, ptr %i.cr, align 4, !tbaa !12
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.z, ptr %i.cs, align 4, !tbaa !12
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.k, label %.sink.split

bb.h:                                             ; preds = %bb.e
  store i32 4, ptr %5, align 4, !tbaa !119
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not267 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %i.cg, label %.thread297, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %i.g, ptr %i.cu, align 4, !tbaa !12
  store float %i.bs, ptr %i.cv, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.cw, align 4, !tbaa !12
  store float %i.o, ptr %i.cx, align 4, !tbaa !12
  store float %i.w, ptr %i.cy, align 4, !tbaa !12
  store float %i.ca, ptr %i.cz, align 4, !tbaa !12
  store float %i.z, ptr %i.da, align 4, !tbaa !12
  br i1 %.not267, label %bb.k, label %.sink.split

bb.j:                                             ; preds = %bb.f
  store i32 3, ptr %5, align 4, !tbaa !119
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !12
  store float %i.g, ptr %i.cm, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.cn, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.o, ptr %i.db, align 4, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.w, ptr %i.dc, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.z, ptr %i.dd, align 4, !tbaa !12
  %.not268 = icmp eq ptr %4, null
  br i1 %.not268, label %bb.k, label %.sink.split

.thread297:                                       ; preds = %bb.h
  store float %i.bo, ptr %i.cu, align 4, !tbaa !12
  store float %i.bs, ptr %i.cv, align 4, !tbaa !12
  store float 1.000000e+00, ptr %i.cw, align 4, !tbaa !12
  store float %i.o, ptr %i.cx, align 4, !tbaa !12
  store float %i.bw, ptr %i.cy, align 4, !tbaa !12
  store float %i.ca, ptr %i.cz, align 4, !tbaa !12
  store float %i.z, ptr %i.da, align 4, !tbaa !12
  br i1 %.not267, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %.thread297, %bb.j, %bb.i, %bb.g
  %.sink352 = phi float [ %i.bo, %bb.g ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ], [ %i.bo, %.thread297 ]
  %.sink = phi float [ 1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.j ], [ %i.bs, %bb.i ], [ %i.bs, %.thread297 ]
  %wide.trip.count324.ph = phi i64 [ 4, %bb.g ], [ 3, %bb.j ], [ 4, %bb.i ], [ 4, %.thread297 ]
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 786468
  store float %.sink352, ptr %i.de, align 4, !tbaa !120
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 786472
  store float %.sink, ptr %i.df, align 4, !tbaa !121
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %.thread297, %bb.j, %bb.g
  %wide.trip.count324 = phi i64 [ 3, %bb.j ], [ 4, %bb.i ], [ 4, %.thread297 ], [ 4, %bb.g ], [ %wide.trip.count324.ph, %.sink.split ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !122 ; 3 uses
  %.not269 = icmp eq i32 %i.dh, 3
  br i1 %.not269, label %.lr.ph303, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.di = add i32 %i.dh, -1
  %or.cond277 = icmp ult i32 %i.di, 2
  %.0244 = select i1 %or.cond277, i32 %i.dh, i32 0
  %i.dj = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #22 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 184 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 188
  %i.dm = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 192 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !191
  store i32 %.0244, ptr %i.dj, align 8, !tbaa !192
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dp, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.dt = trunc nuw i64 %indvars.iv.next to i8
  store i8 %i.dt, ptr %i.do, align 4, !tbaa !193
  store i32 %3, ptr %i.dk, align 8, !tbaa !194
  store i32 65536, ptr %i.dl, align 4, !tbaa !195
  %i.du = tail call i32 @CurveDataSample(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dk) #20 ; 0 uses
  %.not.i.i = icmp ne ptr %1, null
  %i.dv = icmp sgt i32 %3, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.dv
  %.pre = load ptr, ptr %i.dn, align 8, !tbaa !191 ; 4 uses
  br i1 %or.cond.i.i, label %iter.check, label %dt_draw_curve_calc_values.exit

iter.check:                                       ; preds = %bb.l
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check355 = icmp ult i32 %3, 32
  br i1 %min.iters.check355, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dw = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %index ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %wide.load = load <8 x i16>, ptr %i.dx, align 2, !tbaa !196
  %wide.load356 = load <8 x i16>, ptr %i.dy, align 2, !tbaa !196
  %wide.load357 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !196
  %wide.load358 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !196
  %i.eb = uitofp <8 x i16> %wide.load to <8 x float>
  %i.ec = uitofp <8 x i16> %wide.load356 to <8 x float>
  %i.ed = uitofp <8 x i16> %wide.load357 to <8 x float>
  %i.ee = uitofp <8 x i16> %wide.load358 to <8 x float>
  %i.ef = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.eb, splat (float f0x37800000)
  %i.eg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ec, splat (float f0x37800000)
  %i.eh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ed, splat (float f0x37800000)
  %i.ei = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ee, splat (float f0x37800000)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
end_hunk_0
