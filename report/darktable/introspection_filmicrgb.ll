Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmicrgb?download=true
inline.NumInlined: 325
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 80
begin_hunk_0_@dt_iop_tonecurve_draw:bb.a
  %i.gf = load i32, ptr %i.r, align 4, !tbaa !227
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.gf to float
  %i.gh = load i32, ptr %i.bc, align 4, !tbaa !445
  %i.gi = sitofp reassoc nsz arcp contract afn i32 %i.gh to float
  %i.gj = load i32, ptr %i.aw, align 4, !tbaa !454
  %i.gk = sitofp reassoc nsz arcp contract afn i32 %i.gj to float
  %i.gl = load i32, ptr %i.bs, align 4, !tbaa !449
  %i.gm = sitofp reassoc nsz arcp contract afn i32 %i.gl to float ; 2 uses
  %i.gn = fadd reassoc nsz arcp contract afn float %.01084, %i.gi
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gk
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gm
  %i.gq = fsub reassoc nsz arcp contract afn float %i.gg, %i.gp
  %i.gr = fpext reassoc nsz arcp contract afn float %i.gq to double
  %i.gs = load float, ptr %i.ba, align 8, !tbaa !444
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %i.gm
  %i.gu = fneg reassoc nsz arcp contract afn float %i.gt
  %i.gv = fpext reassoc nsz arcp contract afn float %i.gu to double
  %i.gw = load i32, ptr %i.ax, align 16, !tbaa !443
  %i.gx = sitofp reassoc nsz arcp contract afn i32 %i.gw to double
  %i.gy = load i32, ptr %i.fu, align 8, !tbaa !455
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gy to double
  %.neg1234 = fmul reassoc nnan nsz arcp contract afn double %i.gx, -5.000000e-01
  %.neg1236 = fsub reassoc nsz arcp contract afn double %i.gv, %i.gz
  %i.ha = fadd reassoc nsz arcp contract afn double %.neg1236, %.neg1234
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.gr, double noundef %i.ha) #20
  call void @pango_cairo_show_layout(ptr noundef %i.aj, ptr noundef %i.ak) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  call void @pango_font_description_set_size(ptr noundef %i.ai, i32 noundef %i.au) #20
  call void @pango_layout_set_font_description(ptr noundef %i.ak, ptr noundef %i.ai) #20
  %i.hb = load i32, ptr %i.er, align 4, !tbaa !187
  %.not1112 = icmp eq i32 %i.hb, 3
  br i1 %.not1112, label %bb.bs, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1432
  %i.he = load double, ptr %i.hd, align 8, !tbaa !223
  %i.hf = fmul reassoc nsz arcp contract afn double %i.he, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hf) #20
  %i.hg = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.hh = fpext reassoc nsz arcp contract afn <2 x float> %i.hg to <2 x double> ; 2 uses
  %i.hi = extractelement <2 x double> %i.hh, i64 0
  %i.hj = extractelement <2 x double> %i.hh, i64 1
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.hi, double noundef %i.hj) #20
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 584
  %.sroa.01132.0.copyload = load double, ptr %i.hl, align 8
  %.sroa.41133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 592
  %.sroa.41133.0.copyload = load double, ptr %.sroa.41133.0..sroa_idx, align 8
  %.sroa.51134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 600
  %.sroa.51134.0.copyload = load double, ptr %.sroa.51134.0..sroa_idx, align 8
  %.sroa.61135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 608
  %.sroa.61135.0.copyload = load double, ptr %.sroa.61135.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01132.0.copyload, double noundef %.sroa.41133.0.copyload, double noundef %.sroa.51134.0.copyload, double noundef %.sroa.61135.0.copyload) #20
  call void @cairo_fill_preserve(ptr noundef %i.aj) #20
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 648
  %.sroa.01136.0.copyload = load double, ptr %i.hn, align 8
  %.sroa.41137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 656
  %.sroa.41137.0.copyload = load double, ptr %.sroa.41137.0..sroa_idx, align 8
  %.sroa.51138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 664
  %.sroa.51138.0.copyload = load double, ptr %.sroa.51138.0..sroa_idx, align 8
  %.sroa.61139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 672
  %.sroa.61139.0.copyload = load double, ptr %.sroa.61139.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01136.0.copyload, double noundef %.sroa.41137.0.copyload, double noundef %.sroa.51138.0.copyload, double noundef %.sroa.61139.0.copyload) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1432
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !223
  %i.hr = fmul reassoc nsz arcp contract afn double %i.hq, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.hr) #20
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 648
  %.sroa.01140.0.copyload = load double, ptr %i.ht, align 8
  %.sroa.41141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 656
  %.sroa.41141.0.copyload = load double, ptr %.sroa.41141.0..sroa_idx, align 8
  %.sroa.51142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 664
  %.sroa.51142.0.copyload = load double, ptr %.sroa.51142.0..sroa_idx, align 8
  %.sroa.61143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 672
  %.sroa.61143.0.copyload = load double, ptr %.sroa.61143.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01140.0.copyload, double noundef %.sroa.41141.0.copyload, double noundef %.sroa.51142.0.copyload, double noundef %.sroa.61143.0.copyload) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  call void @cairo_scale(ptr noundef %i.aj, double noundef 1.000000e+00, double noundef -1.000000e+00) #20
  %i.hu = load float, ptr %i.cz, align 8, !tbaa !452
  %i.hv = fneg reassoc nsz arcp contract afn float %i.hu
  %i.hw = fpext reassoc nsz arcp contract afn float %i.hv to double
  call void @cairo_translate(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.hw) #20
  %i.hx = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.hx, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.hy = load float, ptr %i.cu, align 4, !tbaa !451
  %i.hz = fptosi float %i.hy to i32               ; 2 uses
  %i.ia = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ib = fptosi float %i.ia to i32               ; 2 uses
  %i.ic = sitofp reassoc nsz arcp contract afn i32 %i.hz to float ; 3 uses
  %i.id = sitofp reassoc nsz arcp contract afn i32 %i.ib to float ; 3 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 2.500000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 2.500000e-01
  %i.ie = sitofp i32 %i.ib to double              ; 3 uses
  %i.if = sitofp i32 %i.hz to double              ; 3 uses
  %i.ig = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ig, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ig, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ih = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ih) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ih) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 5.000000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 5.000000e-01
  %i.ii = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ii, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ii, double noundef %i.ie) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ij = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ij) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.if, double noundef %i.ij) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.id, 7.500000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ic, 7.500000e-01
  br label %.sink.split1430

bb.h:                                             ; preds = %bb.f
  %i.ik = load float, ptr %i.cu, align 4, !tbaa !451
  %i.il = fptosi float %i.ik to i32               ; 2 uses
  %i.im = load float, ptr %i.cz, align 8, !tbaa !452
  %i.in = fptosi float %i.im to i32               ; 2 uses
  %i.io = sitofp reassoc nsz arcp contract afn i32 %i.il to float ; 3 uses
  %i.ip = sitofp reassoc nsz arcp contract afn i32 %i.in to float ; 3 uses
  %i.iq = sitofp i32 %i.in to double              ; 3 uses
  %i.ir = sitofp i32 %i.il to double              ; 3 uses
  %.reass30.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F157A4A
  %.reass.i = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F157A4A
  %i.is = fpext reassoc nsz arcp contract afn float %.reass.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.is, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.is, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.it = fpext reassoc nsz arcp contract afn float %.reass30.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.it) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.it) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F48EFC1
  %.reass.1.i1126 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F48EFC1
  %i.iu = fpext reassoc nsz arcp contract afn float %.reass.1.i1126 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iu, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iu, double noundef %i.iq) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.iv = fpext reassoc nsz arcp contract afn float %.reass30.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iv) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.ir, double noundef %i.iv) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %.reass30.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ip, f0x3F68D423
  %.reass.2.i1127 = fmul reassoc nnan nsz arcp contract afn float %i.io, f0x3F68D423
  br label %.sink.split1430

.sink.split1430:                                  ; preds = %bb.g, %bb.h
  %.reass.2.i1127.sink = phi float [ %.reass.2.i1127, %bb.h ], [ %.reass.2.i, %bb.g ]
  %.sink1434 = phi double [ %i.iq, %bb.h ], [ %i.ie, %bb.g ]
  %.reass30.2.i.sink = phi float [ %.reass30.2.i, %bb.h ], [ %.reass31.2.i, %bb.g ]
  %.sink = phi double [ %i.ir, %bb.h ], [ %i.if, %bb.g ]
  %i.iw = fpext reassoc nsz arcp contract afn float %.reass.2.i1127.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.iw, double noundef 0.000000e+00) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.iw, double noundef %.sink1434) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.ix = fpext reassoc nsz arcp contract afn float %.reass30.2.i.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ix) #20
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %.sink, double noundef %i.ix) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  br label %bb.i

bb.i:                                             ; preds = %.sink.split1430, %bb.f
  call void @cairo_restore(ptr noundef %i.aj) #20
  %i.iy = load float, ptr %i.cz, align 8, !tbaa !452
  %i.iz = fpext reassoc nsz arcp contract afn float %i.iy to double
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.iz) #20
  %i.ja = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jb = fpext reassoc nsz arcp contract afn float %i.ja to double
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.jb, double noundef 0.000000e+00) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 1432
  %i.je = load double, ptr %i.jd, align 8, !tbaa !223
  %i.jf = fmul reassoc nsz arcp contract afn double %i.je, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.aj, double noundef %i.jf) #20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !181
  %i.ji = fmul reassoc nsz arcp contract afn float %i.jh, 2.000000e-02
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, 1.000000e+00 ; 7 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.e, i64 400 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 404 ; 4 uses
  %i.jm = load <2 x float>, ptr %i.jk, align 16, !tbaa !13 ; 2 uses
  %i.jn = fmul reassoc arcp contract afn <2 x float> %i.jm, <float poison, float f0x3EAAAAAB>
  %i.jo = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, <float f0x3EAAAAAB, float poison>
  %i.jp = fsub reassoc nsz arcp contract afn <2 x float> <float poison, float f0x3EAAAAAB>, %i.jn
  %i.jq = shufflevector <2 x float> %i.jo, <2 x float> %i.jp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jr = fmul reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jq ; 5 uses
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1432
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !223 ; 2 uses
  %i.jv = fmul reassoc nsz arcp contract afn double %i.ju, -2.000000e+00 ; 2 uses
  %i.jw = load float, ptr %i.cu, align 4, !tbaa !451
  %i.jx = fpext reassoc nsz arcp contract afn float %i.jw to double
  %i.jy = fmul reassoc nsz arcp contract afn double %i.ju, 4.000000e+00 ; 2 uses
  %i.jz = fadd reassoc nsz arcp contract afn double %i.jy, %i.jx
  %i.ka = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kb = fpext reassoc nsz arcp contract afn float %i.ka to double
  %i.kc = fadd reassoc nsz arcp contract afn double %i.jy, %i.kb
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.jv, double noundef %i.jv, double noundef %i.jz, double noundef %i.kc) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !180
  switch i32 %i.ke, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %bb.o
    i32 2, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.kf = load float, ptr %i.cz, align 8, !tbaa !452
  %i.kg = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.kh = extractelement <2 x float> %i.jr, i64 0
  %i.ki = fdiv reassoc nsz arcp contract afn float -0.000000e+00, %i.kh
  %i.kj = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ki)
  %i.kk = extractelement <2 x float> %i.jr, i64 1
  %i.kl = fdiv reassoc nsz arcp contract afn float -5.000000e-01, %i.kk
  %i.km = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.kl)
  %i.kn = fadd reassoc nsz arcp contract afn float %i.km, %i.kj
  %i.ko = fdiv reassoc nsz arcp contract afn float %i.kn, %i.jj
  %i.kp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ko, float 0.000000e+00)
  %i.kq = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.kp, float 1.000000e+00)
  %i.kr = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.kq
  %i.ks = fpext reassoc nnan nsz arcp contract afn float %i.kr to double
  %i.kt = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.ks
  %i.ku = fmul reassoc nsz arcp contract afn double %i.kt, %i.kg
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.ku) #20
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.kw = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  %i.kx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.n
  %.010801331 = phi i32 [ 1, %bb.j ], [ %i.mj, %bb.n ] ; 2 uses
  %i.ky = uitofp nsz nneg i32 %.010801331 to double
  %i.kz = fmul reassoc nnan nsz arcp contract afn double %i.ky, f0x3F70101010101010
  %i.la = fptrunc reassoc nsz arcp contract afn double %i.kz to float ; 5 uses
  %i.lb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.la
  %i.lc = insertelement <2 x float> poison, float %i.la, i64 0
  %i.ld = insertelement <2 x float> %i.lc, float %i.lb, i64 1 ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.ld, %i.ld
  %i.lf = fmul reassoc nsz arcp contract afn <2 x float> %i.le, splat (float -5.000000e-01)
  %i.lg = fmul reassoc nsz arcp contract afn <2 x float> %i.lf, %i.kw
  %i.lh = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.lg)
  %i.li = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.lh)
  %i.lj = fmul reassoc nsz arcp contract afn float %i.li, %i.kx
  %i.lk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lj, float 0.000000e+00)
  %i.ll = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.lk, float 1.000000e+00)
  %i.lm = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.ll
  %i.ln = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.ln, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.lo = load float, ptr %i.em, align 4, !tbaa !21
  %i.lp = fmul reassoc nsz arcp contract afn float %i.eo, %i.la
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lo, %i.lp
  %i.lr = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.lq)
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, %i.ej
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.lt = load float, ptr %i.em, align 4, !tbaa !21
  %i.lu = fmul reassoc nsz arcp contract afn float %i.eo, %i.la
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lt, %i.lu
  %i.lw = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.lv)
  %i.lx = fmul reassoc nsz arcp contract afn float %i.kv, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, 1.000000e+00
  %i.lz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ly)
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, f0x3EAAE8E8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.01079 = phi nsz float [ %i.ls, %bb.l ], [ %i.ma, %bb.m ], [ %i.la, %bb.k ]
  %i.mb = load float, ptr %i.cu, align 4, !tbaa !451
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %.01079
  %i.md = fpext reassoc nsz arcp contract afn float %i.mc to double
  %i.me = load float, ptr %i.cz, align 8, !tbaa !452
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double
  %i.mg = fpext reassoc nnan nsz arcp contract afn float %i.lm to double
  %i.mh = fsub reassoc nnan nsz arcp contract afn double 1.000000e+00, %i.mg
  %i.mi = fmul reassoc nsz arcp contract afn double %i.mh, %i.mf
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.md, double noundef %i.mi) #20
  %i.mj = add nuw nsw i32 %.010801331, 1          ; 2 uses
  %exitcond1346.not = icmp eq i32 %i.mj, 256
  br i1 %exitcond1346.not, label %.loopexit, label %bb.k

bb.o:                                             ; preds = %bb.i, %bb.i
  %i.mk = load float, ptr %i.cz, align 8, !tbaa !452
  %i.ml = fpext reassoc nsz arcp contract afn float %i.mk to double
  %i.mm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jj)
  %i.mn = fdiv reassoc nsz arcp contract afn float 5.000000e-01, %i.mm ; 2 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, -0.000000e+00
  %3 = fneg reassoc nsz arcp contract afn float %i.mn ; 2 uses
  %4 = insertelement <2 x float> poison, float %i.mo, i64 0
  %5 = insertelement <2 x float> %4, float %3, i64 1
  %6 = fdiv reassoc nsz arcp contract afn <2 x float> %5, %i.jr ; 2 uses
  %i.mp = extractelement <2 x float> %6, i64 0
  %7 = fadd reassoc nsz arcp contract afn float %i.mp, 1.000000e+00
  %8 = extractelement <2 x float> %6, i64 1
  %i.mq = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %8)
  %i.mr = fadd reassoc nsz arcp contract afn float %7, %i.mq
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.jj
  %i.mt = fsub reassoc nsz arcp contract afn float %i.jj, %i.ms
  %i.mu = fpext reassoc nsz arcp contract afn float %i.mt to double
  %i.mv = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.mu
  %i.mw = fmul reassoc nsz arcp contract afn double %i.mv, %i.ml
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.mw) #20
  %i.mx = fmul reassoc nsz arcp contract afn float %i.ei, 1.900000e-01
  %i.my = insertelement <2 x float> poison, float %3, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.s
  %.010781330 = phi i32 [ 1, %bb.o ], [ %i.on, %bb.s ] ; 2 uses
  %i.nb = uitofp nsz nneg i32 %.010781330 to double
  %i.nc = fmul reassoc nnan nsz arcp contract afn double %i.nb, f0x3F70101010101010
  %i.nd = fptrunc reassoc nsz arcp contract afn double %i.nc to float ; 5 uses
  %i.ne = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.nd
  %i.nf = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.ng = insertelement <2 x float> %i.nf, float %i.ne, i64 1 ; 2 uses
  %i.nh = fmul reassoc nsz arcp contract afn <2 x float> %i.ng, %i.ng
  %i.ni = fmul reassoc nsz arcp contract afn <2 x float> %i.nh, %i.mz
  %i.nj = fmul reassoc nsz arcp contract afn <2 x float> %i.ni, %i.na ; 2 uses
  %i.nk = extractelement <2 x float> %i.nj, i64 0
  %i.nl = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.nk)
  %i.nm = extractelement <2 x float> %i.nj, i64 1
  %i.nn = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.nm)
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, %i.nl
  %i.np = fmul reassoc nsz arcp contract afn float %i.no, %i.jj
  %i.nq = fsub reassoc nsz arcp contract afn float %i.jj, %i.np
  %i.nr = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.nr, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ns = load float, ptr %i.em, align 4, !tbaa !21
  %i.nt = fmul reassoc nsz arcp contract afn float %i.eo, %i.nd
  %i.nu = fadd reassoc nsz arcp contract afn float %i.ns, %i.nt
  %i.nv = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.nu)
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.ej
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.nx = load float, ptr %i.em, align 4, !tbaa !21
  %i.ny = fmul reassoc nsz arcp contract afn float %i.eo, %i.nd
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nx, %i.ny
  %i.oa = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.nz)
  %i.ob = fmul reassoc nsz arcp contract afn float %i.mx, %i.oa
  %i.oc = fadd reassoc nsz arcp contract afn float %i.ob, 1.000000e+00
  %i.od = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.oc)
  %i.oe = fmul reassoc nsz arcp contract afn float %i.od, f0x3EAAE8E8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.01077 = phi nsz float [ %i.nw, %bb.q ], [ %i.oe, %bb.r ], [ %i.nd, %bb.p ]
  %i.of = load float, ptr %i.cu, align 4, !tbaa !451
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %.01077
  %i.oh = fpext reassoc nsz arcp contract afn float %i.og to double
  %i.oi = load float, ptr %i.cz, align 8, !tbaa !452
  %i.oj = fpext reassoc nsz arcp contract afn float %i.oi to double
  %i.ok = fpext reassoc nsz arcp contract afn float %i.nq to double
  %i.ol = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ok
  %i.om = fmul reassoc nsz arcp contract afn double %i.ol, %i.oj
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.oh, double noundef %i.om) #20
  %i.on = add nuw nsw i32 %.010781330, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.on, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.i
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.oo = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off = add i32 %i.oo, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.op = load float, ptr %i.em, align 4, !tbaa !21
  %i.oq = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.ej
  %i.or = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.oq)
  %i.os = fsub reassoc nsz arcp contract afn float %i.or, %i.op
  %i.ot = fdiv reassoc nsz arcp contract afn float %i.os, %i.eo
  %i.ou = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ot, float 0.000000e+00)
  %i.ov = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.ou, float 1.000000e+00) ; 2 uses
  %i.ow = icmp eq i32 %i.oo, 2
  br i1 %i.ow, label %.thread1211, label %.thread1209

.thread1209:                                      ; preds = %bb.t
  %i.ox = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.pb = load float, ptr %i.jk, align 16, !tbaa !456
  %i.pc = load float, ptr %i.jl, align 4, !tbaa !457
  %i.pd = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.pe = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.ov, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ox, ptr noundef nonnull %i.oy, ptr noundef nonnull %i.oz, ptr noundef nonnull %i.pa, float noundef %i.pb, float noundef %i.pc, ptr noundef nonnull %i.pd)
  %i.pf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pe, float 0.000000e+00)
  %i.pg = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pf, float 1.000000e+00)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !19
  %i.pj = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pg, float %i.pi)
  br label %bb.v

.thread1211:                                      ; preds = %bb.t
  %i.pk = fmul reassoc nnan nsz arcp contract afn float %i.ov, 1.900000e+01
  %i.pl = fadd reassoc nnan nsz arcp contract afn float %i.pk, 1.000000e+00
  %i.pm = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.pl)
  %i.pn = fmul reassoc nnan nsz arcp contract afn float %i.pm, f0x3EAAE8E8
  %i.po = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.ps = load float, ptr %i.jk, align 16, !tbaa !456
  %i.pt = load float, ptr %i.jl, align 4, !tbaa !457
  %i.pu = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.pv = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %i.pn, ptr noundef nonnull %i.f, ptr noundef nonnull %i.po, ptr noundef nonnull %i.pp, ptr noundef nonnull %i.pq, ptr noundef nonnull %i.pr, float noundef %i.ps, float noundef %i.pt, ptr noundef nonnull %i.pu)
  %i.pw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pv, float 0.000000e+00)
  %i.px = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.pw, float 1.000000e+00)
  %i.py = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.pz = load float, ptr %i.py, align 4, !tbaa !19
  %i.qa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.px, float %i.pz)
  %i.qb = fmul reassoc nsz arcp contract afn float %i.qa, 1.900000e+01
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, 1.000000e+00
  %i.qd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qc)
  %i.qe = fmul reassoc nsz arcp contract afn float %i.qd, f0x3EAAE8E8
  br label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.qf = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.e, i64 352 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.e, i64 368 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  %i.qj = load float, ptr %i.jk, align 16, !tbaa !456
  %i.qk = load float, ptr %i.jl, align 4, !tbaa !457
  %i.ql = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.qm = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef 0.000000e+00, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qf, ptr noundef nonnull %i.qg, ptr noundef nonnull %i.qh, ptr noundef nonnull %i.qi, float noundef %i.qj, float noundef %i.qk, ptr noundef nonnull %i.ql)
  %i.qn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qm, float 0.000000e+00)
  %i.qo = call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.qn, float 1.000000e+00)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread1211, %.thread1209
  %i.qp = phi ptr [ %i.pd, %.thread1209 ], [ %i.pu, %.thread1211 ], [ %i.ql, %bb.u ]
  %i.qq = phi ptr [ %i.pa, %.thread1209 ], [ %i.pr, %.thread1211 ], [ %i.qi, %bb.u ]
  %i.qr = phi ptr [ %i.oz, %.thread1209 ], [ %i.pq, %.thread1211 ], [ %i.qh, %bb.u ]
  %i.qs = phi ptr [ %i.oy, %.thread1209 ], [ %i.pp, %.thread1211 ], [ %i.qg, %bb.u ]
  %i.qt = phi ptr [ %i.ox, %.thread1209 ], [ %i.po, %.thread1211 ], [ %i.qf, %bb.u ]
  %.01074 = phi nsz float [ %i.pj, %.thread1209 ], [ %i.qe, %.thread1211 ], [ %i.qo, %bb.u ]
  %i.qu = load float, ptr %i.cz, align 8, !tbaa !452
  %i.qv = fpext reassoc nsz arcp contract afn float %i.qu to double
  %i.qw = fpext reassoc nsz arcp contract afn float %.01074 to double
  %i.qx = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.qw
  %i.qy = fmul reassoc nsz arcp contract afn double %i.qx, %i.qv
  call void @cairo_move_to(ptr noundef %i.aj, double noundef 0.000000e+00, double noundef %i.qy) #20
  %i.qz = getelementptr inbounds nuw i8, ptr %i.e, i64 424 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.e, i64 408 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 12 uses
  %i.rc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
  %i.rd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eo
  br label %bb.x

bb.w:                                             ; preds = %bb.ah
  call void @cairo_restore(ptr noundef %i.aj) #20
  call void @cairo_save(ptr noundef %i.aj) #20
  %i.re = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1432
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !223 ; 2 uses
  %i.rh = fmul reassoc nsz arcp contract afn double %i.rg, -4.000000e+00 ; 2 uses
  %i.ri = fmul reassoc nsz arcp contract afn double %i.rg, 8.000000e+00 ; 2 uses
  %i.rj = load <2 x float>, ptr %i.cu, align 4, !tbaa !13
  %i.rk = fpext reassoc nsz arcp contract afn <2 x float> %i.rj to <2 x double> ; 2 uses
  %i.rl = extractelement <2 x double> %i.rk, i64 0
  %i.rm = fadd reassoc nsz arcp contract afn double %i.ri, %i.rl
  %i.rn = extractelement <2 x double> %i.rk, i64 1
  %i.ro = fadd reassoc nsz arcp contract afn double %i.ri, %i.rn
  call void @cairo_rectangle(ptr noundef %i.aj, double noundef %i.rh, double noundef %i.rh, double noundef %i.rm, double noundef %i.ro) #20
  call void @cairo_clip(ptr noundef %i.aj) #20
  %i.rp = getelementptr inbounds nuw i8, ptr %i.e, i64 428
  %i.rq = getelementptr inbounds nuw i8, ptr %i.e, i64 436
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !13 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.rt = load float, ptr %i.rs, align 32, !tbaa !13 ; 3 uses
  %i.ru = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.ru, label %bb.ak [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.x:                                             ; preds = %bb.v, %bb.ah
  %.010731332 = phi i32 [ 1, %bb.v ], [ %i.tw, %bb.ah ] ; 2 uses
  %i.rv = uitofp nsz nneg i32 %.010731332 to float
  %i.rw = fmul reassoc nnan nsz arcp contract afn float %i.rv, f0x3B808081
  %i.rx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rw, float 2.400000e+00) ; 5 uses
  %i.ry = load i32, ptr %i.er, align 4, !tbaa !187 ; 2 uses
  %.off1122 = add i32 %i.ry, -1
  %switch1123 = icmp ult i32 %.off1122, 2
  br i1 %switch1123, label %bb.y, label %.thread1213

bb.y:                                             ; preds = %bb.x
  %i.rz = load float, ptr %i.em, align 4, !tbaa !21
  %i.sa = fmul reassoc nnan nsz arcp contract afn float %i.rx, 1.000000e+02
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, %i.rc
  %i.sc = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.sb)
  %i.sd = fsub reassoc nsz arcp contract afn float %i.sc, %i.rz
  %i.se = fmul reassoc nsz arcp contract afn float %i.sd, %i.rd
  %i.sf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.se, float 0.000000e+00)
  %i.sg = call reassoc nsz arcp contract afn noundef float @llvm.minnum.f32(float %i.sf, float 1.000000e+00) ; 2 uses
  %i.sh = icmp eq i32 %i.ry, 2
  br i1 %i.sh, label %bb.z, label %.thread1213

bb.z:                                             ; preds = %bb.y
  %i.si = fmul reassoc nnan nsz arcp contract afn float %i.rx, 1.900000e+01
  %i.sj = fadd reassoc nnan nsz arcp contract afn float %i.si, 1.000000e+00
  %i.sk = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sj)
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, f0x3EAAE8E8
  br label %.thread1213

.thread1213:                                      ; preds = %bb.x, %bb.z, %bb.y
  %.010711215 = phi float [ %i.sg, %bb.z ], [ %i.sg, %bb.y ], [ %i.rx, %bb.x ]
  %.01072 = phi nsz float [ %i.sl, %bb.z ], [ %i.rx, %bb.y ], [ %i.rx, %bb.x ] ; 2 uses
  %i.sm = load float, ptr %i.jk, align 16, !tbaa !456
  %i.sn = load float, ptr %i.jl, align 4, !tbaa !457
  %i.so = call reassoc nsz arcp contract afn fastcc float @filmic_spline(float noundef %.010711215, ptr noundef nonnull %i.f, ptr noundef nonnull %i.qt, ptr noundef nonnull %i.qs, ptr noundef nonnull %i.qr, ptr noundef nonnull %i.qq, float noundef %i.sm, float noundef %i.sn, ptr noundef nonnull %i.qp) ; 5 uses
  %i.sp = load float, ptr %i.qz, align 8, !tbaa !13
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sp, f0x3727C5AC
  %i.sr = fcmp reassoc nsz arcp contract afn ogt float %i.so, %i.sq
  br i1 %i.sr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread1213
  %i.ss = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.so, float 1.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ab:                                            ; preds = %.thread1213
  %i.st = load float, ptr %i.ra, align 8, !tbaa !13
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, f0xB727C5AC
  %i.sv = fcmp reassoc nsz arcp contract afn olt float %i.so, %i.su
  br i1 %i.sv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.sw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.so, float 0.000000e+00)
  call void @cairo_set_source_rgb(ptr noundef %i.aj, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #20
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.sx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !206 ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 680
  %.sroa.01144.0.copyload = load double, ptr %i.sy, align 8
  %.sroa.41145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 688
  %.sroa.41145.0.copyload = load double, ptr %.sroa.41145.0..sroa_idx, align 8
  %.sroa.51146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 696
  %.sroa.51146.0.copyload = load double, ptr %.sroa.51146.0..sroa_idx, align 8
  %.sroa.61147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 704
  %.sroa.61147.0.copyload = load double, ptr %.sroa.61147.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.aj, double noundef %.sroa.01144.0.copyload, double noundef %.sroa.41145.0.copyload, double noundef %.sroa.51146.0.copyload, double noundef %.sroa.61147.0.copyload) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa
  %.01069 = phi nsz float [ %i.ss, %bb.aa ], [ %i.sw, %bb.ac ], [ %i.so, %bb.ad ] ; 3 uses
  %i.sz = load i32, ptr %i.er, align 4, !tbaa !187
  switch i32 %i.sz, label %bb.ah [
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ta = load float, ptr %i.rb, align 4, !tbaa !19
  %i.tb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01069, float %i.ta)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.tc = load float, ptr %i.rb, align 4, !tbaa !19
  %i.td = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.01069, float %i.tc)
  %i.te = fmul reassoc nsz arcp contract afn float %i.td, 1.900000e+01
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, 1.000000e+00
  %i.tg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tf)
  %i.th = fmul reassoc nsz arcp contract afn float %i.tg, f0x3EAAE8E8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %.11070 = phi nsz float [ %i.tb, %bb.af ], [ %i.th, %bb.ag ], [ %.01069, %bb.ae ]
  %i.ti = load float, ptr %i.cu, align 4, !tbaa !451
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, %.01072
  %i.tk = fpext reassoc nsz arcp contract afn float %i.tj to double
  %i.tl = load float, ptr %i.cz, align 8, !tbaa !452
  %i.tm = fpext reassoc nsz arcp contract afn float %i.tl to double
  %i.tn = fpext reassoc nsz arcp contract afn float %.11070 to double
  %i.to = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.tn ; 2 uses
  %i.tp = fmul reassoc nsz arcp contract afn double %i.to, %i.tm
  call void @cairo_line_to(ptr noundef %i.aj, double noundef %i.tk, double noundef %i.tp) #20
  call void @cairo_stroke(ptr noundef %i.aj) #20
  %i.tq = load float, ptr %i.cu, align 4, !tbaa !451
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, %.01072
  %i.ts = fpext reassoc nsz arcp contract afn float %i.tr to double
  %i.tt = load float, ptr %i.cz, align 8, !tbaa !452
  %i.tu = fpext reassoc nsz arcp contract afn float %i.tt to double
  %i.tv = fmul reassoc nsz arcp contract afn double %i.to, %i.tu
  call void @cairo_move_to(ptr noundef %i.aj, double noundef %i.ts, double noundef %i.tv) #20
  %i.tw = add nuw nsw i32 %.010731332, 1          ; 2 uses
  %exitcond1347.not = icmp eq i32 %i.tw, 256
  br i1 %exitcond1347.not, label %bb.w, label %bb.x

bb.ai:                                            ; preds = %bb.w
  %i.tx = load float, ptr %i.em, align 4, !tbaa !21
  %i.ty = fmul reassoc nsz arcp contract afn float %i.rr, %i.eo
  %i.tz = fadd reassoc nsz arcp contract afn float %i.tx, %i.ty
  %i.ua = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.tz)
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, %i.ej
  %i.uc = load float, ptr %i.rb, align 4, !tbaa !19
end_hunk_0
