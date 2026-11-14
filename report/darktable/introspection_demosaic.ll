Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 136
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 156
begin_hunk_0_@process:bb.a
bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0390 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !84
  %.not407 = icmp eq i32 %i.cj, 0
  br i1 %.not407, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !83
  %.not408 = icmp eq i32 %i.cl, 0
  br i1 %.not408, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  store i32 1, ptr %i.cm, align 4, !tbaa !454
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o, %_demosaic_full.exit
  %.1393 = phi i32 [ %.0392, %bb.o ], [ %.0392, %bb.n ], [ %.0392, %bb.m ], [ 0, %_demosaic_full.exit ] ; 2 uses
  %.1391 = phi i32 [ %.0390, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  %i.cn = phi i1 [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_demosaic_full.exit ]
  %.not183.i = phi i1 [ false, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %_demosaic_full.exit ]
  %.0389 = phi i32 [ 1, %bb.o ], [ %.0390, %bb.n ], [ %.0390, %bb.m ], [ 0, %_demosaic_full.exit ]
  br i1 %.0.shrunk.i, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.cp = and i32 %i.co, 33554432
  %.not410 = icmp eq i32 %i.cp, 0
  br i1 %.not410, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.s, ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull @.str.7) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cq = add i32 %.0394, -3
  %or.cond11 = icmp ult i32 %i.cq, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !450 ; 3 uses
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @dt_iop_clip_and_zoom_demosaic_passthrough_monochrome_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo) #27
  br label %bb.ry

bb.u:                                             ; preds = %bb.s
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_third_size_xtrans_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo, ptr noundef nonnull %i.x) #27
  br label %bb.ry

bb.w:                                             ; preds = %bb.u
  tail call void @dt_iop_clip_and_zoom_demosaic_half_size_f(ptr noundef %3, ptr noundef %2, ptr noundef %5, ptr noundef nonnull %4, i32 noundef %i.cs, i32 noundef %i.bo, i32 noundef %.fr1070) #27
  br label %bb.ry

bb.x:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 628
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !454 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 128                  ; 2 uses
  %i.cw = icmp ne i32 %i.cu, 0                    ; 3 uses
  %i.cx = and i32 %i.bl, 2048
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond13 = select i1 %i.cy, i1 true, i1 %i.v
  %or.cond15 = or i1 %or.cond13, %i.cn
  %i.cz = icmp ne i32 %.1391, 0                   ; 2 uses
  %or.cond17 = or i1 %i.cz, %or.cond15
  %spec.select432.not = select i1 %or.cond17, i1 true, i1 %i.cv ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !450
  %i.dc = icmp eq i32 %i.db, %i.bo
  br i1 %i.dc, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !451
  %i.df = icmp eq i32 %i.de, %i.bq
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dj = load float, ptr %i.di, align 4, !tbaa !34
  %i.dk = fsub reassoc nsz arcp contract afn float %i.dh, %i.dj
  %i.dl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, f0x322BCC77
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dn = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ %i.dm, %bb.z ] ; 5 uses
  %i.do = add i32 %.0394, -3
  %i.dp = icmp ult i32 %i.do, 2
  %i.dq = or i32 %.1393, %i.bf
  %i.dr = icmp ne i32 %i.dq, 0
  %or.cond21 = or i1 %i.dp, %i.dr
  %or.cond23 = select i1 %or.cond21, i1 true, i1 %i.v
  br i1 %or.cond23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !83
  %i.du = icmp ne i32 %i.dt, 0
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dv = phi i1 [ %i.du, %bb.ab ], [ false, %bb.aa ] ; 5 uses
  br i1 %i.bg, label %bb.ae, label %switch.early.test

switch.early.test:                                ; preds = %bb.ac
  switch i32 %.fr1070, label %bb.ad [
    i32 9, label %bb.ae
    i32 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %switch.early.test
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !123
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond25.not413 = select i1 %i.dx, i1 true, i1 %i.cw
  %or.cond27 = select i1 %or.cond25.not413, i1 true, i1 %i.v
  %.not414 = icmp eq i32 %i.bj, 0
  %not.or.cond27 = xor i1 %or.cond27, true
  %spec.select433 = select i1 %not.or.cond27, i1 %.not414, i1 false
  br label %bb.ae

bb.ae:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ac, %bb.ad
  %i.dy = phi i1 [ false, %switch.early.test ], [ %spec.select433, %bb.ad ], [ false, %bb.ac ], [ false, %switch.early.test ] ; 3 uses
  %.val438 = load ptr, ptr %i.r, align 8, !tbaa !439 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val438, i64 272
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val438, i64 276
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !12 ; 2 uses
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ea, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val438, i64 280
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !12 ; 2 uses
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ed, float %i.ef)
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eg, float 1.000000e+00) ; 13 uses
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ea, float %i.ec)
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ei, float %i.ef)
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ej, float 1.000000e+00)
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.em = load float, ptr %i.el, align 4, !tbaa !124
  %i.en = fptosi float %i.em to i32               ; 2 uses
  br i1 %i.dv, label %bb.af, label %_radius_requested.exit.thread698

bb.af:                                            ; preds = %bb.ae
  %.val440 = load ptr, ptr %i.aa, align 16, !tbaa !57 ; 6 uses
  %.val442 = load ptr, ptr %i.y, align 16, !tbaa !56 ; 3 uses
  %i.eo = getelementptr i8, ptr %.val438, i64 644
  %.val441.val = load i32, ptr %i.eo, align 4, !tbaa !447
  %i.ep = getelementptr i8, ptr %.val442, i64 128 ; 2 uses
  %.val442.val = load float, ptr %i.ep, align 8, !tbaa !455
  %i.eq = fcmp reassoc nsz arcp contract afn ole float %.val442.val, 0.000000e+00 ; 2 uses
  %i.er = and i32 %.val441.val, 2                 ; 2 uses
  %i.es = icmp ne ptr %.val440, null              ; 3 uses
  %i.et = icmp ne i32 %i.er, 0                    ; 2 uses
  %or.cond.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i, label %bb.ag, label %_noise_requested.exit

bb.ag:                                            ; preds = %bb.af
  %i.eu = getelementptr inbounds nuw i8, ptr %.val440, i64 192
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !125
  %i.ew = icmp eq i32 %i.ev, 0
  %or.cond3.i = select i1 %i.ew, i1 %i.eq, i1 false
  br i1 %or.cond3.i, label %_noise_requested.exit.thread, label %_noise_requested.exit.thread691

_noise_requested.exit:                            ; preds = %bb.af
  %.not = xor i1 %i.eq, true
  %.not415 = select i1 %i.es, i1 true, i1 %.not
  br i1 %.not415, label %_noise_requested.exit.thread691, label %_noise_requested.exit.thread

_noise_requested.exit.thread:                     ; preds = %bb.ag, %_noise_requested.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !126
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bw, i64 1860
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !127
  %i.fb = icmp ugt i32 %i.fa, 4096
  %spec.select18.i.i = select nsz i1 %i.fb, float 3.300000e-01, float 4.000000e-01
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bw, i64 132
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !124 ; 3 uses
  %i.fe = fcmp reassoc nsz arcp contract afn ogt float %i.fd, 1.000000e+03
  br i1 %i.fe, label %_get_variance_threshold.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_noise_requested.exit.thread
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.fd, 1.000000e+02
  br i1 %i.ff, label %_get_variance_threshold.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fd, 1.200000e-04
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, f0xBD9374BC
  br label %_get_variance_threshold.exit.i

_get_variance_threshold.exit.i:                   ; preds = %_noise_requested.exit.thread, %bb.ah, %bb.ai
  %i.fi = phi float [ f0x3D449BA8, %_noise_requested.exit.thread ], [ %i.fh, %bb.ai ], [ f0xBD75C28E, %bb.ah ]
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %spec.select18.i.i
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, 1.000000e+02
  %i.fl = fptosi float %i.fk to i32
  %i.fm = sitofp reassoc nsz arcp contract afn i32 %i.fl to float
  %i.fn = fmul reassoc nnan nsz arcp contract afn float %i.fm, f0x3C23D70A ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 28 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !129
  %i.fq = fsub reassoc nsz arcp contract afn float %i.fp, %i.fn
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fq)
  %i.fs = fcmp reassoc nsz arcp contract afn uge float %i.fr, f0x3C23D70A
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.fu = and i32 %i.ft, 33554432
  %.not.i456 = icmp eq i32 %i.fu, 0
  br i1 %.not.i456, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_get_variance_threshold.exit.i
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fn to double
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.188, ptr noundef nonnull %.val438, ptr noundef nonnull %0, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, double noundef %i.fv) #27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_get_variance_threshold.exit.i
  %or.cond.i457 = and i1 %i.es, %i.et
  br i1 %or.cond.i457, label %bb.al, label %_capture_noise.exit

bb.al:                                            ; preds = %bb.ak
  %i.fw = getelementptr inbounds nuw i8, ptr %.val440, i64 192
  store i32 1, ptr %i.fw, align 8, !tbaa !125
  br i1 %i.fs, label %bb.am, label %_capture_noise.exit

bb.am:                                            ; preds = %bb.al
  store float %i.fn, ptr %i.fo, align 4, !tbaa !129
  %i.fx = getelementptr inbounds nuw i8, ptr %.val440, i64 200
  store float %i.fn, ptr %i.fx, align 8, !tbaa !130
  br label %_capture_noise.exit

_capture_noise.exit:                              ; preds = %bb.ak, %bb.al, %bb.am
  store float %i.fn, ptr %i.ep, align 8, !tbaa !455
  %.val445.pre = load ptr, ptr %i.aa, align 16, !tbaa !57
  %.val446.pre = load ptr, ptr %i.r, align 8, !tbaa !439 ; 2 uses
  %.val447.pre = load ptr, ptr %i.y, align 16, !tbaa !56
  %.phi.trans.insert = getelementptr i8, ptr %.val446.pre, i64 644
  %.val446.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !447
  %.pre1266 = and i32 %.val446.val.pre, 2
  br label %_noise_requested.exit.thread691

_noise_requested.exit.thread691:                  ; preds = %bb.ag, %_capture_noise.exit, %_noise_requested.exit
  %.pre-phi = phi i32 [ 1, %bb.ag ], [ %.pre1266, %_capture_noise.exit ], [ %i.er, %_noise_requested.exit ]
  %.val447 = phi ptr [ %.val442, %bb.ag ], [ %.val447.pre, %_capture_noise.exit ], [ %.val442, %_noise_requested.exit ]
  %.val446 = phi ptr [ %.val438, %bb.ag ], [ %.val446.pre, %_capture_noise.exit ], [ %.val438, %_noise_requested.exit ] ; 4 uses
  %.val445 = phi ptr [ %.val440, %bb.ag ], [ %.val445.pre, %_capture_noise.exit ], [ %.val440, %_noise_requested.exit ] ; 6 uses
  %i.fy = getelementptr i8, ptr %.val447, i64 124 ; 2 uses
  %.val447.val = load float, ptr %i.fy, align 4, !tbaa !456
  %i.fz = fcmp reassoc nsz arcp contract afn ole float %.val447.val, 0.000000e+00 ; 2 uses
  %i.ga = icmp ne ptr %.val445, null              ; 3 uses
  %i.gb = icmp ne i32 %.pre-phi, 0                ; 2 uses
  %or.cond.i458 = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond.i458, label %bb.an, label %_radius_requested.exit

bb.an:                                            ; preds = %_noise_requested.exit.thread691
  %i.gc = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !131
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %_radius_requested.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !132
  %i.gh = icmp eq i32 %i.gg, 0
  %or.cond5.i462 = select i1 %i.gh, i1 %i.fz, i1 false
  br i1 %or.cond5.i462, label %_radius_requested.exit.thread, label %_radius_requested.exit.thread698

_radius_requested.exit:                           ; preds = %_noise_requested.exit.thread691
  %.not730 = xor i1 %i.fz, true
  %.not416 = select i1 %i.ga, i1 true, i1 %.not730
  br i1 %.not416, label %_radius_requested.exit.thread698, label %_radius_requested.exit.thread

_radius_requested.exit.thread:                    ; preds = %bb.an, %bb.ao, %_radius_requested.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !126
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.gl = getelementptr inbounds nuw i8, ptr %.val446, i64 240
  %i.gm = load i32, ptr %i.gl, align 16, !tbaa !457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  %.not.i.i464 = icmp eq i32 %i.gm, 0             ; 2 uses
  br i1 %.not.i.i464, label %.thread176.i.i, label %bb.ap

.thread176.i.i:                                   ; preds = %_radius_requested.exit.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.aq

bb.ap:                                            ; preds = %_radius_requested.exit.thread
  %i.go = getelementptr inbounds nuw i8, ptr %.val446, i64 256
  %i.gp = load <2 x float>, ptr %i.go, align 16, !tbaa !12 ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gp, splat (float 1.000000e+00)
  %i.gr = select <2 x i1> %i.gq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gp
  %i.gs = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.val446, i64 264
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !12 ; 2 uses
  %i.gw = fcmp reassoc nsz arcp contract afn olt float %i.gv, 1.000000e+00
  %spec.select162.i.i = select reassoc nsz arcp contract afn i1 %i.gw, float 1.000000e+00, float %i.gv
  %i.gx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select162.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread176.i.i
  %i.gy = phi ptr [ %i.gn, %.thread176.i.i ], [ %i.gt, %bb.ap ]
  %i.gz = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread176.i.i ], [ %i.gx, %bb.ap ]
  %i.ha = phi <2 x float> [ splat (float 1.000000e+00), %.thread176.i.i ], [ %i.gs, %bb.ap ]
  store <2 x float> %i.ha, ptr %i.n, align 16, !tbaa !12
  store float %i.gz, ptr %i.gy, align 4, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store float 1.000000e+00, ptr %i.hb, align 4, !tbaa !12
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gk, i64 1508
  %i.hd = load i32, ptr %i.bn, align 4, !tbaa !450 ; 4 uses
  %i.he = load <2 x i32>, ptr %i.bn, align 4, !tbaa !15
  %i.hf = load <2 x i32>, ptr %i.hc, align 4, !tbaa !15 ; 3 uses
  %i.hg = load <2 x i32>, ptr %4, align 4, !tbaa !15 ; 4 uses
  %i.hh = sdiv <2 x i32> %i.hf, splat (i32 5)
  %i.hi = icmp slt <2 x i32> %i.hg, %i.hh
  %i.hj = sub nsw <2 x i32> %i.hf, %i.hg
  %i.hk = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hj to <2 x float>
  %i.hl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hk, splat (float 2.000000e-01)
  %i.hm = fptosi <2 x float> %i.hl to <2 x i32>
  %i.hn = select <2 x i1> %i.hi, <2 x i32> %i.hm, <2 x i32> zeroinitializer ; 9 uses
  %i.ho = sub nsw <2 x i32> %i.he, %i.hn
  %i.hp = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ho to <2 x float> ; 2 uses
  %i.hq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hf to <2 x float> ; 3 uses
  %i.hr = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hq, splat (float 8.000000e-01)
  %i.hs = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hg to <2 x float>
  %i.ht = sitofp reassoc nsz arcp contract afn <2 x i32> %i.hn to <2 x float>
  %i.hu = fadd reassoc nsz arcp contract afn <2 x float> %i.hs, %i.ht
  %i.hv = fsub reassoc nsz arcp contract afn <2 x float> %i.hr, %i.hu ; 2 uses
  %i.hw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hv, %i.hp
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hp, <2 x float> %i.hv
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>   ; 4 uses
  %i.hz = extractelement <2 x i32> %i.hy, i64 0   ; 30 uses
  %i.ia = add nsw <2 x i32> %i.hn, %i.hg          ; 2 uses
  %i.ib = sitofp reassoc nsz arcp contract afn i32 %i.hz to float
  %i.ic = extractelement <2 x float> %i.hq, i64 0
  %i.id = fdiv reassoc nsz arcp contract afn float %i.ib, %i.ic
  %i.ie = fcmp reassoc nsz arcp contract afn olt float %i.id, 2.000000e-01
  br i1 %i.ie, label %_calc_auto_radius.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.if = extractelement <2 x i32> %i.hy, i64 1   ; 10 uses
  %i.ig = sitofp reassoc nsz arcp contract afn i32 %i.if to float
  %i.ih = extractelement <2 x float> %i.hq, i64 1
  %i.ii = fdiv reassoc nsz arcp contract afn float %i.ig, %i.ih
  %i.ij = fcmp reassoc nsz arcp contract afn olt float %i.ii, 2.000000e-01
  br i1 %i.ij, label %_calc_auto_radius.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ik = sext i32 %i.hz to i64                   ; 11 uses
  %i.il = sext i32 %i.if to i64
  %i.im = shl nsw i64 %i.ik, 2
  %i.in = mul i64 %i.im, %i.il
  %i.io = tail call ptr @dt_alloc_aligned(i64 noundef %i.in) #27 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.io, i64 64) ]
  %.not158.i.i = icmp eq ptr %i.io, null
  br i1 %.not158.i.i, label %_calc_auto_radius.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ip = icmp sgt i32 %i.if, 0                   ; 3 uses
  br i1 %.not.i.i464, label %.preheader182.i.i, label %bb.au

.preheader182.i.i:                                ; preds = %bb.at
  %i.iq = icmp sgt i32 %i.hz, 0
  %or.cond.i.i = and i1 %i.iq, %i.ip
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader182.i.i
  %wide.trip.count228.i.i = zext nneg i32 %i.if to i64 ; 2 uses
  %wide.trip.count223.i.i = zext nneg i32 %i.hz to i64 ; 10 uses
  %i.ir = add nsw i64 %wide.trip.count223.i.i, -1 ; 2 uses
  %i.is = shl nuw nsw i64 %wide.trip.count223.i.i, 4
  %i.it = getelementptr i8, ptr %2, i64 %i.is
  %scevgep1661 = getelementptr i8, ptr %i.it, i64 -12
  %i.iu = add nuw nsw i64 %wide.trip.count228.i.i, 4611686018427387903
  %i.iv = mul i64 %i.iu, %i.ik
  %i.iw = add i64 %i.iv, %wide.trip.count223.i.i
  %i.ix = shl i64 %i.iw, 2
  %scevgep1662 = getelementptr i8, ptr %i.io, i64 %i.ix
  %i.iy = extractelement <2 x i32> %i.hn, i64 0
  %i.iz = extractelement <2 x i32> %i.hn, i64 1
  %min.iters.check1664 = icmp ult i32 %i.hz, 5
  %i.ja = trunc nsw i64 %i.ir to i32
  %i.jb = icmp ugt i64 %i.ir, 4294967295
  %min.iters.check1669 = icmp ult i32 %i.hz, 33
  %i.jc = and i64 %wide.trip.count223.i.i, 31     ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 32, i64 %i.jc      ; 2 uses
  %n.vec1671 = sub nsw i64 %wide.trip.count223.i.i, %i.je ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.je, 5
  %i.jf = and i64 %wide.trip.count223.i.i, 3      ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  %i.jh = select i1 %i.jg, i64 4, i64 %i.jf
  %n.vec1682 = sub nsw i64 %wide.trip.count223.i.i, %i.jh ; 2 uses
  br label %iter.check

bb.au:                                            ; preds = %bb.at
  br i1 %i.bd, label %.preheader184.i.i, label %.preheader187.i.i

.preheader187.i.i:                                ; preds = %bb.au
  br i1 %i.ip, label %.preheader186.lr.ph.i.i, label %.loopexit.i.i

.preheader186.lr.ph.i.i:                          ; preds = %.preheader187.i.i
  %i.ji = icmp sgt i32 %i.hz, 0
  %i.jj = sext i32 %i.hd to i64                   ; 3 uses
  %i.jk = extractelement <2 x i32> %i.hn, i64 0
  %i.jl = sext i32 %i.jk to i64                   ; 3 uses
  %invariant.gep191.i.i = getelementptr [4 x i8], ptr %2, i64 %i.jl
  br i1 %i.ji, label %.preheader186.preheader.i.i, label %.loopexit.i.i

.preheader186.preheader.i.i:                      ; preds = %.preheader186.lr.ph.i.i
  %i.jm = extractelement <2 x i32> %i.hn, i64 1
  %i.jn = sext i32 %i.jm to i64                   ; 3 uses
  %wide.trip.count208.i.i = zext nneg i32 %i.if to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.hz to i64 ; 7 uses
  %i.jo = add nsw i64 %i.jn, %wide.trip.count208.i.i
  %i.jp = shl nsw i64 %i.jo, 2
  %i.jq = add nsw i64 %i.jp, -4
  %i.jr = mul i64 %i.jq, %i.jj
  %i.js = shl nsw i64 %i.jl, 2
  %i.jt = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ju = getelementptr i8, ptr %2, i64 %i.jr
  %i.jv = getelementptr i8, ptr %i.ju, i64 %i.js
  %scevgep = getelementptr i8, ptr %i.jv, i64 %i.jt
  %i.jw = mul nsw i64 %i.jn, %i.jj
  %i.jx = add i64 %i.jw, %i.jl
  %i.jy = shl i64 %i.jx, 2
  %scevgep1649 = getelementptr i8, ptr %2, i64 %i.jy
  %i.jz = add nuw nsw i64 %wide.trip.count208.i.i, 4611686018427387903
  %i.ka = mul i64 %i.jz, %i.ik
  %i.kb = add i64 %i.ka, %wide.trip.count.i.i
  %i.kc = shl i64 %i.kb, 2
  %scevgep1650 = getelementptr i8, ptr %i.io, i64 %i.kc
  %min.iters.check = icmp ult i32 %i.hz, 8
  %bound0 = icmp ult ptr %i.io, %scevgep
  %bound1 = icmp ult ptr %scevgep1649, %scevgep1650
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.hd, 0
  %i.kd = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1651 = insertelement <8 x i32> poison, i32 %.fr1070, i64 0
  %broadcast.splat1652 = shufflevector <8 x i32> %broadcast.splatinsert1651, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader186.i.i

.preheader184.i.i:                                ; preds = %bb.au
  br i1 %i.ip, label %.preheader183.lr.ph.i.i, label %.preheader.i.preheader.i.i

.preheader183.lr.ph.i.i:                          ; preds = %.preheader184.i.i
  %i.ke = icmp sgt i32 %i.hz, 0
  %i.kf = sext i32 %i.hd to i64
  %i.kg = extractelement <2 x i32> %i.hn, i64 0
  %i.kh = sext i32 %i.kg to i64
  %invariant.gep197.i.i = getelementptr [4 x i8], ptr %2, i64 %i.kh
  br i1 %i.ke, label %.preheader183.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader183.preheader.i.i:                      ; preds = %.preheader183.lr.ph.i.i
  %i.ki = extractelement <2 x i32> %i.hn, i64 1
  %i.kj = sext i32 %i.ki to i64
  %wide.trip.count218.i.i = zext nneg i32 %i.if to i64
  %wide.trip.count213.i.i = zext nneg i32 %i.hz to i64 ; 2 uses
  %xtraiter5299 = and i64 %wide.trip.count213.i.i, 1
  %i.kk = icmp eq i32 %i.hz, 1
  %unroll_iter = and i64 %wide.trip.count213.i.i, 2147483646
  %lcmp.mod5300.not = icmp eq i64 %xtraiter5299, 0
  %lcmp.mod5301 = trunc i32 %i.hz to i1
  br label %.preheader183.i.i

.preheader183.i.i:                                ; preds = %._crit_edge194.i.i, %.preheader183.preheader.i.i
  %indvars.iv215.i.i = phi i64 [ 0, %.preheader183.preheader.i.i ], [ %indvars.iv.next216.i.i, %._crit_edge194.i.i ] ; 4 uses
  %i.kl = mul nuw nsw i64 %indvars.iv215.i.i, %i.ik
  %i.km = add nsw i64 %indvars.iv215.i.i, %i.kj
  %i.kn = mul nsw i64 %i.km, %i.kf
  %gep198.i.i = getelementptr [4 x i8], ptr %invariant.gep197.i.i, i64 %i.kn ; 3 uses
  %i.ko = trunc i64 %indvars.iv215.i.i to i32
  %i.kp = add i32 %i.ko, 600
  %i.kq = urem i32 %i.kp, 6
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.kr ; 3 uses
  %i.kt = getelementptr [4 x i8], ptr %i.io, i64 %i.kl ; 3 uses
  br i1 %i.kk, label %.epil.preheader, label %.preheader183.i.i.new

._crit_edge194.i.i.unr-lcssa:                     ; preds = %.preheader183.i.i.new
  br i1 %lcmp.mod5300.not, label %._crit_edge194.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge194.i.i.unr-lcssa, %.preheader183.i.i
  %indvars.iv210.i.i.epil.init = phi i64 [ 0, %.preheader183.i.i ], [ %indvars.iv.next211.i.i.1, %._crit_edge194.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod5301)
  %gep195.i.i.epil = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i.epil.init
  %i.ku = load float, ptr %gep195.i.i.epil, align 4, !tbaa !12
  %i.kv = trunc i64 %indvars.iv210.i.i.epil.init to i32
  %i.kw = add i32 %i.kv, 600
  %i.kx = urem i32 %i.kw, 6
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !133
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.lb
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !12
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.ku
  %i.lf = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv210.i.i.epil.init
  store float %i.le, ptr %i.lf, align 4, !tbaa !12
  br label %._crit_edge194.i.i

._crit_edge194.i.i:                               ; preds = %._crit_edge194.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.not.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count218.i.i
  br i1 %exitcond219.not.i.i, label %.loopexit.i.i, label %.preheader183.i.i

.preheader183.i.i.new:                            ; preds = %.preheader183.i.i, %.preheader183.i.i.new
  %indvars.iv210.i.i = phi i64 [ %indvars.iv.next211.i.i.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader183.i.i.new ], [ 0, %.preheader183.i.i ]
  %gep195.i.i = getelementptr [4 x i8], ptr %gep198.i.i, i64 %indvars.iv210.i.i
  %i.lg = load float, ptr %gep195.i.i, align 4, !tbaa !12
  %i.lh = trunc i64 %indvars.iv210.i.i to i32
  %i.li = add i32 %i.lh, 600
  %i.lj = urem i32 %i.li, 6
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !133
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@process:bb.a
  %or.cond5.us.i.i.i = and i1 %i.aga, %i.afz
  br i1 %or.cond5.us.i.i.i, label %bb.ek, label %bb.eq

bb.ek:                                            ; preds = %bb.ej
  %i.agb = getelementptr i8, ptr %i.afe, i64 -4
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !12 ; 9 uses
  %i.agd = fcmp reassoc nsz arcp contract afn ogt float %i.agc, 5.000000e-03
  br i1 %i.agd, label %.thread340.us.i.i.i, label %bb.en

.thread340.us.i.i.i:                              ; preds = %bb.ek
  %i.age = getelementptr i8, ptr %i.afe, i64 -8
  %i.agf = load float, ptr %i.age, align 4, !tbaa !12 ; 2 uses
  %i.agg = fcmp reassoc nsz arcp contract afn ogt float %i.agf, %i.agc
  %.325.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agg, float %i.agf, float %i.agc ; 2 uses
  %i.agh = getelementptr i8, ptr %i.afk, i64 -8
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !12 ; 3 uses
  %i.agj = fcmp reassoc nsz arcp contract afn ogt float %.325.us.i.i.i, %i.agi
  %i.agk = fcmp reassoc nsz arcp contract afn ogt float %i.agi, %i.agc
  %spec.select349.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.agk, float %i.agi, float %i.agc
  %i.agl = select reassoc nsz arcp contract afn i1 %i.agj, float %.325.us.i.i.i, float %spec.select349.us.i.i.i
  %i.agm = fcmp reassoc nsz arcp contract afn olt float %i.agl, f0x3F666666
  br i1 %i.agm, label %bb.el, label %bb.en

bb.el:                                            ; preds = %.thread340.us.i.i.i
  %i.agn = fcmp reassoc nsz arcp contract afn ogt float %i.afs, %i.agc
  %i.ago = select reassoc nsz arcp contract afn i1 %i.agn, float %i.afs, float %i.agc ; 3 uses
  %i.agp = fcmp reassoc nsz arcp contract afn ogt float %i.ago, f0x3C23D70A
  br i1 %i.agp, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.agq = fcmp reassoc nsz arcp contract afn olt float %i.afs, %i.agc
  %i.agr = select reassoc nsz arcp contract afn i1 %i.agq, float %i.afs, float %i.agc ; 2 uses
  %i.ags = fmul reassoc nsz arcp contract afn float %i.agr, %.1355.us.i.i.i
  %i.agt = fcmp reassoc nsz arcp contract afn ogt float %i.ago, %i.ags
  %i.agu = fdiv reassoc nsz arcp contract afn float %i.ago, %i.agr
  %spec.select.us.i175.i.i = select nsz i1 %i.agt, float %i.agu, float %.1355.us.i.i.i
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %.thread340.us.i.i.i, %bb.ek
  %.4.us.i173.i.i = phi nsz float [ %.1355.us.i.i.i, %bb.ek ], [ %.1355.us.i.i.i, %.thread340.us.i.i.i ], [ %spec.select.us.i175.i.i, %bb.em ], [ %.1355.us.i.i.i, %bb.el ] ; 4 uses
  %i.agv = fcmp reassoc nsz arcp contract afn ule float %i.afg, 5.000000e-03
  %or.cond.us.i174.i.i = or i1 %i.agv, %i.afr
  br i1 %or.cond.us.i174.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.agw = fcmp reassoc nsz arcp contract afn ogt float %i.afs, %i.afg
  %i.agx = select reassoc nsz arcp contract afn i1 %i.agw, float %i.afs, float %i.afg ; 3 uses
  %i.agy = fcmp reassoc nsz arcp contract afn ogt float %i.agx, f0x3C23D70A
  br i1 %i.agy, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.agz = fcmp reassoc nsz arcp contract afn olt float %i.afs, %i.afg
  %i.aha = select reassoc nsz arcp contract afn i1 %i.agz, float %i.afs, float %i.afg ; 2 uses
  %i.ahb = fmul reassoc nsz arcp contract afn float %.4.us.i173.i.i, %i.aha
  %i.ahc = fcmp reassoc nsz arcp contract afn ogt float %i.agx, %i.ahb
  %i.ahd = fdiv reassoc nsz arcp contract afn float %i.agx, %i.aha
  %spec.select329.us.i.i.i = select nsz i1 %i.ahc, float %i.ahd, float %.4.us.i173.i.i
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.en, %bb.ej, %.thread338.us.i.i.i
  %.8.us.i.i.i = phi nsz float [ %.1355.us.i.i.i, %.thread338.us.i.i.i ], [ %.1355.us.i.i.i, %bb.ej ], [ %.4.us.i173.i.i, %bb.en ], [ %spec.select329.us.i.i.i, %bb.ep ], [ %.4.us.i173.i.i, %bb.eo ] ; 6 uses
  br i1 %i.afr, label %bb.ff, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ahe = fcmp reassoc nsz arcp contract afn ogt float %i.afp, 5.000000e-03
  br i1 %i.ahe, label %bb.es, label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.ahf = fcmp reassoc nsz arcp contract afn ogt float %i.afg, 5.000000e-03
  br i1 %i.ahf, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.ahg = fcmp reassoc nsz arcp contract afn ogt float %i.afg, %i.afp
  %i.ahh = select reassoc nsz arcp contract afn i1 %i.ahg, float %i.afg, float %i.afp ; 3 uses
  %i.ahi = fcmp reassoc nsz arcp contract afn ogt float %i.ahh, f0x3C23D70A
  br i1 %i.ahi, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ahj = fcmp reassoc nsz arcp contract afn olt float %i.afg, %i.afp
  %i.ahk = select reassoc nsz arcp contract afn i1 %i.ahj, float %i.afg, float %i.afp ; 2 uses
  %i.ahl = fmul reassoc nsz arcp contract afn float %.8.us.i.i.i, %i.ahk
  %i.ahm = fcmp reassoc nsz arcp contract afn ogt float %i.ahh, %i.ahl
  %i.ahn = fdiv reassoc nsz arcp contract afn float %i.ahh, %i.ahk
  %spec.select330.us.i.i.i = select nsz i1 %i.ahm, float %i.ahn, float %.8.us.i.i.i
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.11.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.es ], [ %spec.select330.us.i.i.i, %bb.eu ], [ %.8.us.i.i.i, %bb.et ] ; 4 uses
  %i.aho = getelementptr [4 x i8], ptr %i.afd, i64 %i.aev
  %i.ahp = getelementptr i8, ptr %i.aho, i64 12
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !12 ; 7 uses
  %i.ahr = getelementptr [4 x i8], ptr %i.afd, i64 %i.aex ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 8
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !12 ; 2 uses
  %i.ahu = fcmp reassoc nsz arcp contract afn ogt float %i.ahq, %i.aht
  %.331.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ahu, float %i.ahq, float %i.aht ; 2 uses
  %i.ahv = getelementptr i8, ptr %i.ahr, i64 16
  %i.ahw = load float, ptr %i.ahv, align 4, !tbaa !12 ; 2 uses
  %i.ahx = fcmp reassoc nsz arcp contract afn ogt float %.331.us.i.i.i, %i.ahw
  %spec.select350.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.ahx, float %.331.us.i.i.i, float %i.ahw
  %i.ahy = fcmp reassoc nsz arcp contract afn olt float %spec.select350.us.i.i.i, f0x3F666666
  %i.ahz = fcmp reassoc nsz arcp contract afn ogt float %i.ahq, 5.000000e-03
  %or.cond7.us.i.i.i = and i1 %i.ahz, %i.ahy
  br i1 %or.cond7.us.i.i.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.aia = fcmp reassoc nsz arcp contract afn ogt float %i.ahq, %i.afp
  %i.aib = select reassoc nsz arcp contract afn i1 %i.aia, float %i.ahq, float %i.afp ; 3 uses
  %i.aic = fcmp reassoc nsz arcp contract afn ogt float %i.aib, f0x3C23D70A
  br i1 %i.aic, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.aid = fcmp reassoc nsz arcp contract afn olt float %i.ahq, %i.afp
  %i.aie = select reassoc nsz arcp contract afn i1 %i.aid, float %i.ahq, float %i.afp ; 2 uses
  %i.aif = fmul reassoc nsz arcp contract afn float %i.aie, %.11.us.i.i.i
  %i.aig = fcmp reassoc nsz arcp contract afn ogt float %i.aib, %i.aif
  %i.aih = fdiv reassoc nsz arcp contract afn float %i.aib, %i.aie
  %spec.select333.us.i.i.i = select nsz i1 %i.aig, float %i.aih, float %.11.us.i.i.i
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.er
  %.15.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.er ], [ %.11.us.i.i.i, %bb.ev ], [ %spec.select333.us.i.i.i, %bb.ex ], [ %.11.us.i.i.i, %bb.ew ] ; 5 uses
  %i.aii = fcmp reassoc nsz arcp contract afn ogt float %i.afm, 5.000000e-03
  br i1 %i.aii, label %bb.ez, label %bb.ff

bb.ez:                                            ; preds = %bb.ey
  %i.aij = fcmp reassoc nsz arcp contract afn ogt float %i.afi, 5.000000e-03
  br i1 %i.aij, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.aik = fcmp reassoc nsz arcp contract afn ogt float %i.afi, %i.afm
  %i.ail = select reassoc nsz arcp contract afn i1 %i.aik, float %i.afi, float %i.afm ; 3 uses
  %i.aim = fcmp reassoc nsz arcp contract afn ogt float %i.ail, f0x3C23D70A
  br i1 %i.aim, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ain = fcmp reassoc nsz arcp contract afn olt float %i.afi, %i.afm
  %i.aio = select reassoc nsz arcp contract afn i1 %i.ain, float %i.afi, float %i.afm ; 2 uses
  %i.aip = fmul reassoc nsz arcp contract afn float %.15.us.i.i.i, %i.aio
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt float %i.ail, %i.aip
  %i.air = fdiv reassoc nsz arcp contract afn float %i.ail, %i.aio
  %spec.select334.us.i.i.i = select nsz i1 %i.aiq, float %i.air, float %.15.us.i.i.i
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.18.us.i.i.i = phi nsz float [ %.15.us.i.i.i, %bb.ez ], [ %spec.select334.us.i.i.i, %bb.fb ], [ %.15.us.i.i.i, %bb.fa ] ; 4 uses
  %i.ais = getelementptr inbounds [4 x i8], ptr %i.afd, i64 %i.aev
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !12 ; 7 uses
  %i.aiu = getelementptr [4 x i8], ptr %i.afd, i64 %i.aex ; 2 uses
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 -4
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !12 ; 2 uses
  %i.aix = fcmp reassoc nsz arcp contract afn ogt float %i.ait, %i.aiw
  %.335.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aix, float %i.ait, float %i.aiw ; 2 uses
  %i.aiy = getelementptr i8, ptr %i.aiu, i64 4
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !12 ; 2 uses
  %i.aja = fcmp reassoc nsz arcp contract afn ogt float %.335.us.i.i.i, %i.aiz
  %spec.select351.us.i.i.i = select reassoc nsz arcp contract afn i1 %i.aja, float %.335.us.i.i.i, float %i.aiz
  %i.ajb = fcmp reassoc nsz arcp contract afn olt float %spec.select351.us.i.i.i, f0x3F666666
  %i.ajc = fcmp reassoc nsz arcp contract afn ogt float %i.ait, 5.000000e-03
  %or.cond9.us.i.i.i = and i1 %i.ajc, %i.ajb
  br i1 %or.cond9.us.i.i.i, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.ajd = fcmp reassoc nsz arcp contract afn ogt float %i.ait, %i.afm
  %i.aje = select reassoc nsz arcp contract afn i1 %i.ajd, float %i.ait, float %i.afm ; 3 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.aje, f0x3C23D70A
  br i1 %i.ajf, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ajg = fcmp reassoc nsz arcp contract afn olt float %i.ait, %i.afm
  %i.ajh = select reassoc nsz arcp contract afn i1 %i.ajg, float %i.ait, float %i.afm ; 2 uses
  %i.aji = fmul reassoc nsz arcp contract afn float %i.ajh, %.18.us.i.i.i
  %i.ajj = fcmp reassoc nsz arcp contract afn ogt float %i.aje, %i.aji
  %i.ajk = fdiv reassoc nsz arcp contract afn float %i.aje, %i.ajh
  %spec.select337.us.i.i.i = select nsz i1 %i.ajj, float %i.ajk, float %.18.us.i.i.i
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.ey, %bb.eq
  %.23.us.i.i.i = phi nsz float [ %.8.us.i.i.i, %bb.eq ], [ %.15.us.i.i.i, %bb.ey ], [ %.18.us.i.i.i, %bb.fc ], [ %spec.select337.us.i.i.i, %bb.fe ], [ %.18.us.i.i.i, %bb.fd ] ; 3 uses
  %indvars.iv.next.i171.i.i = add nuw nsw i64 %indvars.iv.i169.i.i, 3 ; 2 uses
  %i.ajl = icmp samesign ult i64 %indvars.iv.next.i171.i.i, %i.aez
  br i1 %i.ajl, label %.thread338.us.i.i.i, label %._crit_edge.us.i172.i.i

._crit_edge.us.i172.i.i:                          ; preds = %bb.ff
  %indvars.iv.next368.i.i.i = add nuw nsw i64 %indvars.iv367.i.i.i, 3 ; 2 uses
  %i.ajm = icmp samesign ult i64 %indvars.iv.next368.i.i.i, %i.afa
  br i1 %i.ajm, label %.lr.ph.us.i.i.i, label %._crit_edge360.loopexit.i.i.i

._crit_edge360.loopexit.i.i.i:                    ; preds = %._crit_edge.us.i172.i.i
  %i.ajn = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %.23.us.i.i.i)
  br label %_calcRadiusXtrans.exit.i.i

_calcRadiusXtrans.exit.i.i:                       ; preds = %._crit_edge360.loopexit.i.i.i, %.lr.ph359.i.i.i, %.critedge.i.i.i
  %.0266.lcssa.i.i.i = phi float [ 0.000000e+00, %.critedge.i.i.i ], [ %i.ajn, %._crit_edge360.loopexit.i.i.i ], [ 0.000000e+00, %.lr.ph359.i.i.i ]
  %i.ajo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.0266.lcssa.i.i.i
  %i.ajp = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ajo)
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, 2.000000e-01
  br label %bb.fg

bb.fg:                                            ; preds = %_calcRadiusXtrans.exit.i.i, %_calcRadiusBayer.exit.i.i, %_calcRadiusMono.exit.i.i
  %i.ajr = phi reassoc nsz arcp contract afn float [ %i.uz, %_calcRadiusMono.exit.i.i ], [ %i.ym, %_calcRadiusBayer.exit.i.i ], [ %i.ajq, %_calcRadiusXtrans.exit.i.i ] ; 2 uses
  tail call void @free(ptr noundef %i.io) #27
  %i.ajs = fcmp reassoc nsz arcp contract afn ogt float %i.ajr, 1.500000e+00
  %i.ajt = select reassoc nsz arcp contract afn i1 %i.ajs, float 1.500000e+00, float %i.ajr
  br label %_calc_auto_radius.exit.i

_calc_auto_radius.exit.i:                         ; preds = %bb.fg, %bb.as, %bb.ar, %bb.aq
  %.not35.i = phi ptr [ @.str.196, %bb.aq ], [ @.str.196, %bb.ar ], [ @.str.196, %bb.as ], [ @.str.11, %bb.fg ]
  %.not37.i = phi i1 [ true, %bb.aq ], [ true, %bb.ar ], [ true, %bb.as ], [ false, %bb.fg ]
  %.1.i.i = phi nsz float [ 5.000000e-01, %bb.aq ], [ 5.000000e-01, %bb.ar ], [ 5.000000e-01, %bb.as ], [ %i.ajt, %bb.fg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  %i.aju = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !137
  %i.ajw = fsub reassoc nsz arcp contract afn float %i.ajv, %.1.i.i
  %i.ajx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ajw)
  %i.ajy = fcmp reassoc nsz arcp contract afn uge float %i.ajx, 4.000000e-02 ; 2 uses
  %i.ajz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.aka = and i32 %i.ajz, 33554432
  %.not.i465 = icmp eq i32 %i.aka, 0
  br i1 %.not.i465, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_calc_auto_radius.exit.i
  %i.akb = select i1 %i.bh, ptr @.str.192, ptr @.str.191
  %i.akc = select i1 %i.bd, ptr @.str.190, ptr %i.akb
  %i.akd = select i1 %i.ajy, ptr @.str.195, ptr @.str.194
  %i.ake = fpext reassoc nsz arcp contract afn float %.1.i.i to double
  %i.akf = extractelement <2 x i32> %i.hy, i64 1
  %i.akg = extractelement <2 x i32> %i.ia, i64 0
  %i.akh = extractelement <2 x i32> %i.ia, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.akc, ptr noundef %.val446, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull %i.akd, double noundef %i.ake, ptr noundef nonnull %.not35.i, i32 noundef %i.akg, i32 noundef %i.akh, i32 noundef %i.hz, i32 noundef %i.akf) #27
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_calc_auto_radius.exit.i
  %or.cond.i466 = and i1 %i.ga, %i.gb
  br i1 %or.cond.i466, label %bb.fj, label %_capture_radius.exit

bb.fj:                                            ; preds = %bb.fi
  %i.aki = getelementptr inbounds nuw i8, ptr %.val445, i64 188
  store i32 1, ptr %i.aki, align 4, !tbaa !132
  br i1 %i.ajy, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akj = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  %i.akk = load float, ptr %i.akj, align 4, !tbaa !131
  %i.akl = fcmp reassoc nsz arcp contract afn olt float %i.akk, 0.000000e+00
  br i1 %i.akl, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  store float %.1.i.i, ptr %i.aju, align 4, !tbaa !137
  %i.akm = getelementptr inbounds nuw i8, ptr %.val445, i64 196
  store float %.1.i.i, ptr %i.akm, align 4, !tbaa !131
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  br i1 %.not37.i, label %bb.fn, label %_capture_radius.exit

bb.fn:                                            ; preds = %bb.fm
  %i.akn = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.197, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.akn) #27
  br label %_capture_radius.exit

_capture_radius.exit:                             ; preds = %bb.fi, %bb.fm, %bb.fn
  store float %.1.i.i, ptr %i.fy, align 4, !tbaa !456
  br label %_radius_requested.exit.thread698

_radius_requested.exit.thread698:                 ; preds = %bb.ao, %_radius_requested.exit, %_capture_radius.exit, %bb.ae
  %.val450 = load i32, ptr %i.bn, align 4, !tbaa !450 ; 2 uses
  %.val451 = load i32, ptr %i.bp, align 4, !tbaa !451 ; 3 uses
  %i.ako = tail call i64 (...) @dt_get_available_mem() #27 ; 2 uses
  %i.akp = sext i32 %.val450 to i64
  %i.akq = shl nsw i64 %i.akp, 2
  %i.akr = sext i32 %.val451 to i64
  %i.aks = mul i64 %i.akq, %i.akr                 ; 4 uses
  %i.akt = load i32, ptr %i.da, align 4, !tbaa !450
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !451
  %i.akx = sext i32 %i.akw to i64
  %.neg8.i = mul i64 %i.aks, -4
  %.neg9.i = select i1 %i.dn, i64 0, i64 %.neg8.i
  %i.aky = select i1 %i.dy, i64 %i.aks, i64 0
  %i.akz = mul nsw i64 %i.aku, -16
  %.neg4.i = mul i64 %i.akz, %i.akx
  %i.ala = add i64 %i.aks, %i.aky
  %.neg6.i = sub i64 %i.ako, %i.ala
  %.neg7.i = add i64 %.neg6.i, %.neg9.i
  %.168.i = add i64 %.neg7.i, %.neg4.i            ; 3 uses
  %.neg.i = mul i64 %i.aks, -5
  %i.alb = select i1 %spec.select432.not, i64 0, i64 %.neg.i
  %.066.i = add i64 %.168.i, %i.alb               ; 2 uses
  switch i32 %.0394, label %bb.ft [
    i32 1026, label %bb.fu
    i32 1025, label %bb.fo
    i32 1028, label %bb.fo
    i32 5, label %bb.fp
    i32 6, label %bb.fp
    i32 1029, label %bb.fs
    i32 1, label %bb.fq
    i32 2, label %bb.fr
    i32 1024, label %bb.fr
    i32 7, label %bb.fs
    i32 3, label %bb.fs
    i32 4, label %bb.fs
    i32 1027, label %bb.fs
  ]

bb.fo:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fp:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fq:                                            ; preds = %_radius_requested.exit.thread698
  br label %bb.fu

bb.fr:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.fs:                                            ; preds = %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698, %_radius_requested.exit.thread698
  br label %bb.fu

bb.ft:                                            ; preds = %_radius_requested.exit.thread698
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %_radius_requested.exit.thread698
  %i.alc = phi i32 [ 6, %bb.ft ], [ 6, %bb.fq ], [ 25, %bb.fo ], [ 48, %_radius_requested.exit.thread698 ], [ 6, %bb.fp ], [ 6, %bb.fs ], [ 6, %bb.fr ]
  %.064.i = phi i32 [ 4, %bb.ft ], [ 2, %bb.fq ], [ 25, %bb.fo ], [ 48, %_radius_requested.exit.thread698 ], [ 2, %bb.fp ], [ 1, %bb.fs ], [ 4, %bb.fr ]
  %.063.i = phi i32 [ 8, %bb.ft ], [ 6, %bb.fq ], [ 12, %bb.fo ], [ 18, %_radius_requested.exit.thread698 ], [ 10, %bb.fp ], [ 0, %bb.fs ], [ 6, %bb.fr ]
  %spec.select.i = select i1 %i.dv, i32 %i.alc, i32 %.064.i ; 2 uses
  %spec.select77.i = select i1 %i.dv, i32 18, i32 %.063.i ; 3 uses
  %i.ald = shl i32 %.val450, 2
  %i.ale = mul i32 %i.ald, %spec.select.i
  %i.alf = sext i32 %i.ale to i64                 ; 2 uses
  %i.alg = sdiv i64 %.168.i, %i.alf
  %.fr.i = freeze i64 %i.alg
  %i.alh = sdiv i64 %.fr.i, 4
  %i.ali = trunc i64 %i.alh to i32                ; 3 uses
  %i.alj = sdiv i64 %.066.i, %i.alf
  %i.alk = trunc i64 %i.alj to i32                ; 2 uses
  %i.all = load <1 x i32>, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8
  %i.alm = shufflevector <1 x i32> %i.all, <1 x i32> poison, <2 x i32> zeroinitializer
  %i.aln = and <2 x i32> %i.alm, <i32 41943040, i32 16777216>
  %i.alo = icmp eq <2 x i32> %i.aln, zeroinitializer
  %i.alp = bitcast <2 x i1> %i.alo to i2
  %.not5226 = icmp eq i2 %i.alp, 0
  br i1 %.not5226, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.alq = lshr i64 %i.ako, 20
  %i.alr = trunc i64 %i.alq to i32
  %i.als = lshr i64 %.066.i, 20
  %i.alt = trunc i64 %i.als to i32
  %i.alu = lshr i64 %.168.i, 20
  %i.alv = trunc i64 %i.alu to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.200, i32 noundef %i.alr, i32 noundef %i.alt, i32 noundef %i.alv, i32 noundef %spec.select.i, i32 noundef %i.alk, i32 noundef %i.ali) #27
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.not75.i = icmp sgt i32 %.val451, %i.alk       ; 7 uses
  br i1 %.not75.i, label %_tiling_requirements.exit, label %.thread

_tiling_requirements.exit:                        ; preds = %bb.fw
  %i.alw = load i32, ptr %i.ac, align 4, !tbaa !448
  %i.alx = icmp eq i32 %i.alw, 9
  %i.aly = select i1 %i.alx, i32 6, i32 2
  %i.alz = srem i32 %i.ali, %i.aly
  %i.ama = sub nsw i32 %i.ali, %i.alz             ; 2 uses
  %i.amb = shl nuw nsw i32 %spec.select77.i, 1    ; 2 uses
  %i.amc = sub nsw i32 %i.ama, %i.amb             ; 4 uses
  %i.amd = add nsw i32 %.val451, -1
  %i.ame = add i32 %i.amd, %i.amc
  %i.amf = sdiv i32 %i.ame, %i.amc
  %i.amg = icmp slt i32 %i.amc, 30
  br i1 %i.amg, label %.split, label %bb.fx

.split:                                           ; preds = %_tiling_requirements.exit
  %i.amh = add nuw nsw i32 %i.amb, 30
  %i.ami = add nsw i32 %i.bq, 29
  %i.amj = sdiv i32 %i.ami, 30
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.8) #27
  br label %bb.fx

.thread:                                          ; preds = %bb.fw
  %i.amk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.aml = and i32 %i.amk, 16777216
  %.not417 = icmp eq i32 %i.aml, 0
  br i1 %.not417, label %bb.gl, label %bb.fx

bb.fx:                                            ; preds = %_tiling_requirements.exit, %.split, %.thread
  %.0682722 = phi i32 [ %i.amj, %.split ], [ 1, %.thread ], [ %i.amf, %_tiling_requirements.exit ] ; 3 uses
  %.0684719 = phi i32 [ 30, %.split ], [ %i.bq, %.thread ], [ %i.amc, %_tiling_requirements.exit ] ; 2 uses
  %.0686716 = phi i32 [ %i.amh, %.split ], [ %i.bq, %.thread ], [ %i.ama, %_tiling_requirements.exit ] ; 3 uses
  %.0688708713 = phi i32 [ %spec.select77.i, %.split ], [ 0, %.thread ], [ %spec.select77.i, %_tiling_requirements.exit ] ; 3 uses
  %i.amm = phi ptr [ @.str.21, %.split ], [ @.str.11, %.thread ], [ @.str.11, %_tiling_requirements.exit ]
  %i.amn = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !122
  %i.amo = and i32 %i.amn, 33554432
  %.not418 = icmp eq i32 %i.amo, 0
  br i1 %.not418, label %bb.gl, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.amp = select i1 %.not75.i, ptr @.str.10, ptr @.str.11
  %i.amq = select i1 %i.dn, ptr @.str.12, ptr @.str.13
  %i.amr = select i1 %spec.select.not, ptr @.str.16, ptr @.str.15
  %i.ams = select i1 %i.bd, ptr @.str.14, ptr %i.amr
  switch i32 %.0394, label %bb.gk [
    i32 0, label %_method_str.exit
    i32 1, label %bb.fz
    i32 2, label %bb.ga
    i32 5, label %bb.gb
    i32 6, label %bb.gc
    i32 3, label %bb.gd
    i32 4, label %bb.ge
    i32 1024, label %bb.gf
    i32 1025, label %bb.gg
    i32 1026, label %bb.gh
    i32 1028, label %bb.gi
    i32 1027, label %bb.gd
    i32 1029, label %bb.ge
    i32 7, label %bb.gj
  ]

bb.fz:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.ga:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gb:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gc:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gd:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.ge:                                            ; preds = %bb.fy, %bb.fy
  br label %_method_str.exit

bb.gf:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gg:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gh:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gi:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gj:                                            ; preds = %bb.fy
  br label %_method_str.exit

bb.gk:                                            ; preds = %bb.fy
  br label %_method_str.exit

_method_str.exit:                                 ; preds = %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.gd, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %bb.gj, %bb.gk
  %.0.i470 = phi ptr [ @.str.207, %bb.gk ], [ @.str.175, %bb.gj ], [ @.str.201, %bb.fz ], [ @.str.150, %bb.ga ], [ @.str.152, %bb.gb ], [ @.str.154, %bb.gc ], [ @.str.202, %bb.gd ], [ @.str.203, %bb.ge ], [ @.str.164, %bb.gf ], [ @.str.204, %bb.gg ], [ @.str.205, %bb.gh ], [ @.str.206, %bb.gi ], [ @.str.146, %bb.fy ]
  %i.amt = select i1 %spec.select432.not, ptr @.str.11, ptr @.str.17
  %i.amu = select i1 %i.dv, ptr @.str.18, ptr @.str.11
  %i.amv = select i1 %i.dy, ptr @.str.19, ptr @.str.11
  %i.amw = select i1 %i.cw, ptr @.str.20, ptr @.str.11
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.amp, ptr noundef nonnull %i.amq, ptr noundef nonnull %i.ams, ptr noundef nonnull %.0.i470, ptr noundef nonnull %i.amt, ptr noundef nonnull %i.amu, ptr noundef nonnull %i.amv, ptr noundef nonnull %i.amw, ptr noundef nonnull %i.amm, i32 noundef %.0682722, i32 noundef %.0686716, i32 noundef %.0688708713) #27
  br label %bb.gl

bb.gl:                                            ; preds = %bb.fx, %_method_str.exit, %.thread
  %.0682723 = phi i32 [ %.0682722, %bb.fx ], [ %.0682722, %_method_str.exit ], [ 1, %.thread ] ; 3 uses
  %.0684720 = phi i32 [ %.0684719, %bb.fx ], [ %.0684719, %_method_str.exit ], [ %i.bq, %.thread ] ; 3 uses
  %.0686717 = phi i32 [ %.0686716, %bb.fx ], [ %.0686716, %_method_str.exit ], [ %i.bq, %.thread ]
  %.0688708714 = phi i32 [ %.0688708713, %bb.fx ], [ %.0688708713, %_method_str.exit ], [ 0, %.thread ] ; 3 uses
  br i1 %i.dn, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amx = sext i32 %i.bo to i64
  %i.amy = sext i32 %i.bq to i64
  %i.amz = shl nsw i64 %i.amx, 4
  %i.ana = mul i64 %i.amz, %i.amy
  %i.anb = tail call ptr @dt_alloc_aligned(i64 noundef %i.ana) #27 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anb, i64 64) ]
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.anc = phi ptr [ %i.anb, %bb.gm ], [ %3, %bb.gl ] ; 8 uses
  %.not420 = icmp eq ptr %i.anc, null
  br i1 %.not420, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.and = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.and) #27
  br label %bb.ry

bb.gp:                                            ; preds = %bb.gn
  br i1 %i.dy, label %bb.gq, label %bb.gx

bb.gq:                                            ; preds = %bb.gp
  %i.ane = sitofp reassoc nsz arcp contract afn i32 %i.en to float
  %i.anf = fmul reassoc nnan nsz arcp contract afn float %i.ane, f0x38D1B717 ; 2 uses
  %i.ang = sext i32 %i.bo to i64
  %i.anh = sext i32 %i.bq to i64
  %i.ani = shl nsw i64 %i.ang, 2
  %i.anj = mul i64 %i.ani, %i.anh                 ; 2 uses
  %i.ank = tail call ptr @dt_alloc_aligned(i64 noundef %i.anj) #27 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ank, i64 64) ]
  %.not421 = icmp eq ptr %i.ank, null
  br i1 %.not421, label %bb.gw, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.anl = load i32, ptr %i.z, align 8, !tbaa !123
  switch i32 %i.anl, label %bb.gx [
    i32 2, label %bb.gs
    i32 1, label %bb.gt
    i32 3, label %bb.gu
  ]

bb.gs:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.ank, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  br label %bb.gx

bb.gt:                                            ; preds = %bb.gr
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.ank, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.anf)
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gr
  %i.anm = tail call ptr @dt_alloc_aligned(i64 noundef %i.anj) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.anm, i64 64) ]
  %.not422 = icmp eq ptr %i.anm, null
  br i1 %.not422, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call fastcc void @green_equilibration_favg(ptr noundef %i.anm, ptr noundef %2, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070)
  tail call fastcc void @green_equilibration_lavg(ptr noundef %i.ank, ptr noundef nonnull %i.anm, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %.fr1070, float noundef %i.anf)
  tail call void @free(ptr noundef nonnull %i.anm) #27
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gq
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24) #27
  %i.ann = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ann) #27
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gr, %bb.gu, %bb.gv, %bb.gt, %bb.gs, %bb.gp
  %.1 = phi ptr [ %2, %bb.gp ], [ %2, %bb.gw ], [ %i.ank, %bb.gr ], [ %i.ank, %bb.gu ], [ %i.ank, %bb.gv ], [ %i.ank, %bb.gt ], [ %i.ank, %bb.gs ] ; 3 uses
  %.0387 = phi ptr [ null, %bb.gp ], [ null, %bb.gw ], [ %i.ank, %bb.gr ], [ %i.ank, %bb.gu ], [ %i.ank, %bb.gv ], [ %i.ank, %bb.gt ], [ %i.ank, %bb.gs ] ; 2 uses
  %.14125 = ptrtoaddr ptr %.1 to i64              ; 2 uses
  br i1 %.not75.i, label %bb.gy, label %.thread726

bb.gy:                                            ; preds = %bb.gx
  %i.ano = sext i32 %i.bo to i64
  %i.anp = sext i32 %.0686717 to i64
  %i.anq = shl nsw i64 %i.ano, 4
  %i.anr = mul i64 %i.anq, %i.anp
  %i.ans = tail call ptr @dt_alloc_aligned(i64 noundef %i.anr) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ans, i64 64) ]
  %.not423 = icmp eq ptr %i.ans, null
  br i1 %.not423, label %bb.gz, label %.thread726

bb.gz:                                            ; preds = %bb.gy
  tail call void @free(ptr noundef %.0387) #27
  br i1 %i.dn, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  tail call void @free(ptr noundef nonnull %i.anc) #27
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #27
  %i.ant = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.ant) #27
  br label %bb.ry

.thread726:                                       ; preds = %bb.gx, %bb.gy
  %i.anu = phi ptr [ %i.ans, %bb.gy ], [ %i.anc, %bb.gx ] ; 82 uses
  %i.anv = icmp sgt i32 %.0682723, 0
  br i1 %i.anv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread726
  %i.anw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eh ; 4 uses
  %.not424 = icmp eq i32 %i.bj, 0
  %i.anx = add i32 %.0688708714, %.0684720
  %i.any = select i1 %.not424, i32 0, i32 2
  %i.anz = icmp slt i32 %i.bo, 1                  ; 3 uses
  %i.aoa = sext i32 %i.bo to i64                  ; 45 uses
  %i.aob = zext i32 %i.bo to i64                  ; 33 uses
  %i.aoc = shl nsw i64 %i.aoa, 2                  ; 2 uses
  %i.aod = icmp eq i32 %.0394, 2
  %or.cond31 = or i1 %i.bg, %i.aod
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aof = icmp slt i32 %i.bo, 8
  %i.aog = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aok = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aol = add nsw i32 %i.bo, -17
  %i.aom = sdiv i32 %i.aol, 112                   ; 2 uses
  %invariant.op.i553 = fmul reassoc nnan nsz arcp contract afn float %i.anw, 6.553500e+04
  %i.aon = mul i32 %i.bo, 112
  %smax.i554 = tail call i32 @llvm.smax.i32(i32 %i.aom, i32 0)
  %i.aoo = icmp slt i32 %i.bo, 20
  %i.aop = add nsw i32 %i.bo, -21
  %i.aoq = sdiv i32 %i.aop, 92
  %i.aor = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.aos = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.aot = mul i32 %i.bo, 92
  %i.aou = shl i32 %i.bo, 2                       ; 11 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aow = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.s, i64 272
  %i.aoy = icmp eq i32 %.0394, 1026               ; 32 uses
  %i.aoz = select i1 %i.aoy, i32 3, i32 1
  %i.apa = icmp eq i32 %.0394, 1028
  %i.apb = add i32 %.0394, -1025
  %or.cond29 = icmp ult i32 %i.apb, 2
  %i.apc = zext i1 %i.aoy to i32
  %i.apd = shl nuw nsw i32 4, %i.apc              ; 2 uses
  %i.ape = select i1 %i.aoy, i64 2083776, i64 1131200
  %.neg.i511 = select i1 %i.aoy, i32 -17, i32 -12 ; 9 uses
  %i.apf = select i1 %i.aoy, i32 17, i32 12       ; 11 uses
  %i.apg = select i1 %i.aoy, i64 1428864, i64 714432 ; 10 uses
  %i.aph = select i1 %i.aoy, i64 119072, i64 59536 ; 2 uses
  %i.api = sub nsw i32 %i.bo, %i.apf              ; 2 uses
  %i.apj = icmp slt i32 %.neg.i511, %i.api
  %i.apk = add i32 %i.apf, %i.bo                  ; 3 uses
  %i.apl = shl nsw i32 %i.bo, 1                   ; 12 uses
  %i.apm = add i32 %i.apl, -2                     ; 10 uses
  %i.apn = select i1 %i.aoy, i32 5, i32 6         ; 5 uses
  %i.apo = add nuw nsw i32 %i.apn, 2              ; 2 uses
  %i.app = select i1 %i.aoy, i32 4, i32 8         ; 4 uses
  %i.apq = select i1 %i.aoy, i32 13, i32 8        ; 5 uses
  %i.apr = select i1 %i.aoy, i32 14, i32 9        ; 5 uses
  %i.aps = select i1 %i.aoy, i32 15, i32 10       ; 5 uses
  %i.apt = zext nneg i32 %i.apf to i64            ; 8 uses
  %i.apu = add nsw i32 %i.apf, -4
  %i.apv = add nsw i32 %i.apd, -4                 ; 2 uses
  %.not1292.i = icmp eq i32 %i.apv, 0
  %reass.sub955.i.neg = select i1 %i.aoy, i32 -88, i32 -98
  %reass.sub955.i = select i1 %i.aoy, i32 88, i32 98 ; 14 uses
  %i.apw = add nuw nsw i32 %.neg.i511, 3          ; 2 uses
  %i.apx = add nuw nsw i32 %.neg.i511, 6          ; 2 uses
  %i.apy = select i1 %i.aoy, i32 -12, i32 -6      ; 2 uses
  %i.apz = zext nneg i32 %i.apd to i64            ; 10 uses
  %i.aqa = select i1 %i.aoy, i32 -13, i32 -4      ; 2 uses
  %i.aqb = zext nneg i32 %i.apq to i64            ; 2 uses
  %i.aqc = zext nneg i32 %i.apr to i64            ; 7 uses
  %i.aqd = zext nneg i32 %i.aps to i64            ; 7 uses
  %i.aqe = add nsw i64 %i.apt, -4
  %wide.trip.count1495.i = zext i32 %i.apv to i64
  %i.aqf = icmp sgt i32 %i.bo, 0                  ; 4 uses
  %i.aqg = add i32 %i.bo, 13                      ; 5 uses
  %i.aqh = add nsw i32 %i.bo, -13
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = sext i32 %i.aqg to i64
  %gep1350.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %invariant.gep1344.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %gep1350.1.1.i = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %invariant.gep1344.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %invariant.gep1344.3.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 4 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.aql = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %invariant.gep1344.4.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %invariant.gep1344.5.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.aqo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.not123.i.i = icmp eq i32 %i.bo, 0
  %i.aqs = add nsw i32 %i.bo, -2
  %i.aqt = sext i32 %i.aqs to i64
  %i.aqu = sext i32 %i.apl to i64                 ; 2 uses
  %exitcond129.peel.not.i.i = icmp eq i32 %i.bo, 1
  %exitcond129.peel147.not.i.i = icmp eq i32 %i.bo, 2
  %i.aqv = add nsw i32 %i.bo, -3                  ; 2 uses
  %i.aqw = sext i32 %i.aqv to i64
  %i.aqx = mul nuw nsw i32 %i.bo, 3               ; 8 uses
  %i.aqy = sub nsw i32 0, %i.aou
  %i.aqz = sub nuw nsw i32 -2, %i.aou
  %i.ara = sext i32 %i.aqz to i64                 ; 2 uses
  %i.arb = sub nsw i32 2, %i.aou
  %i.arc = sext i32 %i.arb to i64                 ; 2 uses
  %i.ard = sub nsw i32 0, %i.apl
  %i.are = sub nuw i32 -4, %i.apl
  %i.arf = sext i32 %i.are to i64                 ; 2 uses
  %i.arg = sub nsw i32 4, %i.apl
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = zext nneg i32 %i.apl to i64            ; 4 uses
  %i.arj = zext nneg i32 %i.aou to i64            ; 2 uses
  %i.ark = xor i32 %i.aou, -1
  %i.arl = sext i32 %i.ark to i64                 ; 2 uses
  %i.arm = sub nsw i32 1, %i.aou
  %i.arn = sext i32 %i.arm to i64                 ; 2 uses
  %i.aro = sub nsw i32 0, %i.bo
  %i.arp = sub i32 -4, %i.bo
  %i.arq = sext i32 %i.arp to i64                 ; 2 uses
  %i.arr = sub i32 4, %i.bo
  %i.ars = sext i32 %i.arr to i64                 ; 2 uses
  %i.art = sext i32 %i.aqy to i64                 ; 2 uses
  %i.aru = sub nsw i32 0, %i.aqx
  %i.arv = sub nuw i32 -3, %i.aqx
  %i.arw = sext i32 %i.arv to i64                 ; 2 uses
  %i.arx = sub nsw i32 3, %i.aqx
  %i.ary = sext i32 %i.arx to i64                 ; 2 uses
  %i.arz = zext nneg i32 %i.aqx to i64            ; 2 uses
  %i.asa = sub nuw i32 -2, %i.aqx
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = sub nsw i32 2, %i.aqx
  %i.asd = sext i32 %i.asc to i64                 ; 2 uses
  %i.ase = sub nuw i32 -3, %i.apl
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  %i.asg = sub nsw i32 3, %i.apl
  %i.ash = sext i32 %i.asg to i64                 ; 2 uses
  %i.asi = xor i32 %i.aqx, -1
  %i.asj = sext i32 %i.asi to i64                 ; 2 uses
  %i.ask = sub nsw i32 1, %i.aqx
  %i.asl = sext i32 %i.ask to i64                 ; 2 uses
  %i.asm = sub i32 -3, %i.bo
  %i.asn = sext i32 %i.asm to i64                 ; 2 uses
  %i.aso = sub i32 3, %i.bo
  %i.asp = sext i32 %i.aso to i64                 ; 2 uses
  %i.asq = sext i32 %i.aru to i64                 ; 2 uses
  %i.asr = sub nuw nsw i32 -2, %i.apl
  %i.ass = sext i32 %i.asr to i64                 ; 2 uses
  %i.ast = sub nsw i32 2, %i.apl
  %i.asu = sext i32 %i.ast to i64                 ; 2 uses
  %i.asv = xor i32 %i.apl, -1
  %i.asw = sext i32 %i.asv to i64                 ; 4 uses
  %i.asx = sub nsw i32 1, %i.apl
  %i.asy = sext i32 %i.asx to i64                 ; 4 uses
  %i.asz = sub i32 -2, %i.bo
  %i.ata = sext i32 %i.asz to i64                 ; 4 uses
  %i.atb = sub i32 2, %i.bo
  %i.atc = sext i32 %i.atb to i64                 ; 4 uses
  %i.atd = sext i32 %i.ard to i64                 ; 4 uses
  %i.ate = xor i32 %i.bo, -1
  %i.atf = sext i32 %i.ate to i64                 ; 4 uses
  %i.atg = sub i32 1, %i.bo
  %i.ath = sext i32 %i.atg to i64                 ; 4 uses
  %i.ati = sext i32 %i.aro to i64                 ; 4 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.atk = icmp ne i32 %.1393, 0                  ; 2 uses
  %i.atl = shl nuw nsw i64 %i.aob, 2
  %i.atm = add nsw i32 %.neg.i511, -1             ; 2 uses
  %i.atn = zext i32 %.0684720 to i64
  %wide.trip.count = zext nneg i32 %.0682723 to i64
  %scevgep1695 = getelementptr i8, ptr %i.anu, i64 12 ; 5 uses
  %scevgep1789 = getelementptr i8, ptr %i.anu, i64 16 ; 2 uses
  %scevgep1845 = getelementptr i8, ptr %i.anu, i64 4 ; 2 uses
  %scevgep1846 = getelementptr i8, ptr %i.anu, i64 8 ; 2 uses
  %scevgep2077 = getelementptr i8, ptr %i.anu, i64 -4
  %i.ato = shl nsw i64 %i.aoa, 4
  %scevgep2079 = getelementptr i8, ptr %i.anu, i64 32 ; 2 uses
  %i.atp = shl nsw i64 %i.aoa, 2
  %scevgep2129 = getelementptr i8, ptr %i.anu, i64 -4
  %i.atq = shl nsw i64 %i.aoa, 4
  %i.atr = shl nsw i64 %i.aoa, 2
  %i.ats = mul i32 %i.bo, 384
  %i.att = shl i32 %i.bo, 2
  %scevgep2234 = getelementptr i8, ptr %i.anu, i64 -212
  %i.atu = mul i32 %i.bo, 384
  %i.atv = select i1 %i.aoy, i64 1905152, i64 952576
  %i.atw = mul nuw nsw i64 %i.aqd, 488            ; 9 uses
  %i.atx = add nuw nsw i64 %i.aqd, 1
  %i.aty = add nsw i32 %.neg.i511, 122
  %i.atz = mul nuw nsw i64 %i.aqd, 492            ; 5 uses
  %i.aua = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.aub = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auc = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aud = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.aue = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auf = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aug = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.auh = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aui = select i1 %i.aoy, i64 1905152, i64 952576
  %i.auj = add nuw nsw i64 %i.apg, %i.atz         ; 2 uses
  %i.auk = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aul = select i1 %i.aoy, i64 1905152, i64 952576
  %i.aum = select i1 %i.aoy, i64 1547936, i64 773968
  %i.aun = mul nuw nsw i64 %i.aqd, 122
  %i.auo = mul nuw nsw i64 %i.aqd, 123
  %i.aup = mul nuw nsw i64 %i.aqc, 492            ; 3 uses
  %i.auq = add nuw nsw i64 %i.apg, %i.aup
  %i.aur = add nuw nsw i64 %i.auq, 178608
  %i.aus = add nuw nsw i64 %i.apg, %i.aup
  %i.aut = add nuw nsw i64 %i.apg, %i.aup
  %scevgep3998 = getelementptr i8, ptr %i.d, i64 -8
  %i.auu = shl nuw nsw i64 %i.aob, 2
  %scevgep5097 = getelementptr i8, ptr %.1, i64 %i.auu
  %i.auv = shl nsw i64 %i.aoa, 2
  %i.auw = shl nuw nsw i64 %i.aob, 4
  %i.aux = insertelement <4 x ptr> poison, ptr %i.anu, i64 0
  %i.auy = shufflevector <4 x ptr> %i.aux, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.auz = getelementptr i8, ptr %i.anu, <4 x i64> <i64 12, i64 8, i64 4, i64 4> ; 2 uses
  %scevgep5100 = getelementptr i8, ptr %i.anu, i64 12
  %i.ava = shl nuw nsw i64 %i.aob, 4              ; 3 uses
  %i.avb = getelementptr i8, ptr %i.anu, i64 %i.ava
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.les = fadd reassoc nsz arcp contract afn float %i.ler, %i.ldg
  %i.let = load float, ptr %i.lcw, align 4, !tbaa !12, !noalias !492
  %i.leu = fsub reassoc nsz arcp contract afn float %i.ldw, %i.let
  %i.lev = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.leu)
  %i.lew = fadd reassoc nsz arcp contract afn float %i.les, %i.lev ; 2 uses
  %i.lex = insertelement <2 x float> poison, float %i.ldk, i64 0
  %i.ley = shufflevector <2 x float> %i.lex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lez = fadd reassoc nsz arcp contract afn <2 x float> %i.lea, %i.ley
  %i.lfa = fsub reassoc nsz arcp contract afn float %i.lcq, %i.lcy
  %i.lfb = insertelement <2 x float> poison, float %i.leh, i64 0
  %i.lfc = insertelement <2 x float> %i.lfb, float %i.lfa, i64 1
  %i.lfd = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lfc)
  %i.lfe = fadd reassoc nsz arcp contract afn <2 x float> %i.lez, %i.lfd ; 2 uses
  %i.lff = insertelement <2 x float> poison, float %i.ldo, i64 0
  %i.lfg = shufflevector <2 x float> %i.lff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lfh = fadd reassoc nsz arcp contract afn <2 x float> %i.leq, %i.lfg
  %i.lfi = fsub reassoc nsz arcp contract afn float %i.lcs, %i.lda
  %i.lfj = insertelement <2 x float> poison, float %i.lei, i64 0
  %i.lfk = insertelement <2 x float> %i.lfj, float %i.lfi, i64 1
  %i.lfl = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lfk)
  %i.lfm = fadd reassoc nsz arcp contract afn <2 x float> %i.lfh, %i.lfl ; 2 uses
  %i.lfn = insertelement <2 x float> poison, float %i.lds, i64 0
  %i.lfo = shufflevector <2 x float> %i.lfn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lfp = fadd reassoc nsz arcp contract afn <2 x float> %i.leq, %i.lfo
  %i.lfq = fsub reassoc nsz arcp contract afn float %i.lcu, %i.ldc
  %i.lfr = insertelement <2 x float> poison, float %i.lej, i64 0
  %i.lfs = insertelement <2 x float> %i.lfr, float %i.lfq, i64 1
  %i.lft = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lfs)
  %i.lfu = fadd reassoc nsz arcp contract afn <2 x float> %i.lfp, %i.lft ; 2 uses
  %i.lfv = fsub reassoc nsz arcp contract afn float %i.ldw, %i.lbm
  %i.lfw = fsub reassoc nsz arcp contract afn float %i.lcq, %i.lbo
  %i.lfx = insertelement <2 x float> poison, float %i.lcd, i64 0
  %i.lfy = insertelement <2 x float> %i.lfx, float %i.lcs, i64 1
  %i.lfz = insertelement <2 x float> poison, float %i.lbr, i64 0
  %i.lga = shufflevector <2 x float> %i.lfz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lgb = fsub reassoc nsz arcp contract afn <2 x float> %i.lfy, %i.lga
  %i.lgc = insertelement <2 x float> poison, float %i.lcf, i64 0
  %i.lgd = insertelement <2 x float> %i.lgc, float %i.lcu, i64 1
  %i.lge = insertelement <2 x float> poison, float %i.lbu, i64 0
  %i.lgf = shufflevector <2 x float> %i.lge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lgg = fsub reassoc nsz arcp contract afn <2 x float> %i.lgd, %i.lgf
  %i.lgh = fmul reassoc nsz arcp contract afn float %i.lew, %i.lfw
  %i.lgi = insertelement <2 x float> poison, float %i.lek, i64 0
  %i.lgj = insertelement <2 x float> %i.lgi, float %i.lfv, i64 1
  %i.lgk = fmul reassoc nsz arcp contract afn <2 x float> %i.lfe, %i.lgj
  %i.lgl = insertelement <2 x float> poison, float %i.lem, i64 0
  %i.lgm = insertelement <2 x float> %i.lgl, float %i.lgh, i64 1
  %i.lgn = fadd reassoc nsz arcp contract afn <2 x float> %i.lgk, %i.lgm
  %i.lgo = insertelement <2 x float> poison, float %i.lef, i64 0
  %i.lgp = insertelement <2 x float> %i.lgo, float %i.lew, i64 1
  %i.lgq = fadd reassoc nsz arcp contract afn <2 x float> %i.lfe, %i.lgp
  %i.lgr = fdiv reassoc nsz arcp contract afn <2 x float> %i.lgn, %i.lgq ; 2 uses
  %i.lgs = fmul reassoc nsz arcp contract afn <2 x float> %i.lfu, %i.lgb
  %i.lgt = fmul reassoc nsz arcp contract afn <2 x float> %i.lfm, %i.lgg
  %i.lgu = fadd reassoc nsz arcp contract afn <2 x float> %i.lgs, %i.lgt
  %i.lgv = fadd reassoc nsz arcp contract afn <2 x float> %i.lfu, %i.lfm
  %i.lgw = fdiv reassoc nsz arcp contract afn <2 x float> %i.lgu, %i.lgv
  %i.lgx = fsub reassoc nsz arcp contract afn <2 x float> %i.lgw, %i.lgr
  %i.lgy = insertelement <2 x float> poison, float %i.lby, i64 0
  %i.lgz = shufflevector <2 x float> %i.lgy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lha = fmul reassoc nsz arcp contract afn <2 x float> %i.lgx, %i.lgz
  %i.lhb = insertelement <2 x float> poison, float %i.lbg, i64 0
  %i.lhc = shufflevector <2 x float> %i.lhb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lhd = fadd reassoc nsz arcp contract afn <2 x float> %i.lgr, %i.lhc
  %i.lhe = fadd reassoc nsz arcp contract afn <2 x float> %i.lhd, %i.lha ; 2 uses
  %i.lhf = extractelement <2 x float> %i.lhe, i64 0
  store float %i.lhf, ptr %i.lcg, align 4, !tbaa !12, !noalias !492
  %i.lhg = extractelement <2 x float> %i.lhe, i64 1
  store float %i.lhg, ptr %i.lcv, align 4, !tbaa !12, !noalias !492
  %i.lhh = add nuw nsw i32 %.0743918.i, 2         ; 2 uses
  %i.lhi = icmp slt i32 %i.lhh, %i.jyd
  br i1 %i.lhi, label %.lr.ph921.i, label %._crit_edge922.i, !llvm.loop !320

._crit_edge935.split.i:                           ; preds = %._crit_edge931.i, %._crit_edge925.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !494
  %i.lhj = add nuw i32 %.0745937.i, 1
  %indvars.iv.next950.i = add i32 %indvars.iv949.i, 92
  %indvars.iv.next1017.i = add i32 %indvars.iv1016.i, 92
  %indvars.iv.next1019.i = add i32 %indvars.iv1018.i, -92
  %indvars.iv.next1059.i = add i32 %indvars.iv1058.i, 92
  br i1 %i.ktc, label %._crit_edge939.i, label %bb.oa

.lr.ph930.i:                                      ; preds = %._crit_edge931.i, %.lr.ph930.preheader.i
  %indvars.iv1064.i = phi i32 [ %i.kth, %.lr.ph930.preheader.i ], [ %indvars.iv.next1065.i, %._crit_edge931.i ] ; 2 uses
  %indvars.iv1060.i = phi i32 [ %i.ktg, %.lr.ph930.preheader.i ], [ %indvars.iv.next1061.i, %._crit_edge931.i ] ; 2 uses
  %.0739932.i = phi i32 [ %i.iwa, %.lr.ph930.preheader.i ], [ %i.lhz, %._crit_edge931.i ]
  %i.lhk = sext i32 %indvars.iv1060.i to i64      ; 3 uses
  %i.lhl = zext i32 %indvars.iv1064.i to i64      ; 3 uses
  br i1 %min.iters.check3215, label %scalar.ph3214.preheader, label %vector.ph3216

vector.ph3216:                                    ; preds = %.lr.ph930.i
  %i.lhm = add nuw nsw i64 %n.vec3217, %i.lhl
  %i.lhn = add nsw i64 %i.kto, %i.lhk
  %invariant.gep5366 = getelementptr [4 x i8], ptr %i.anu, i64 %i.lhk
  br label %vector.body3220

vector.body3220:                                  ; preds = %vector.body3220, %vector.ph3216
  %index3221 = phi i64 [ 0, %vector.ph3216 ], [ %index.next3226, %vector.body3220 ] ; 3 uses
  %i.lho = add nuw i64 %index3221, %i.lhl         ; 3 uses
  %i.lhp = getelementptr inbounds nuw [4 x i8], ptr %i.iuy, i64 %i.lho
  %wide.load3222 = load <8 x float>, ptr %i.lhp, align 4, !tbaa !12, !noalias !492
  %.idx5211 = shl i64 %index3221, 4
  %gep5367 = getelementptr i8, ptr %invariant.gep5366, i64 %.idx5211
  %i.lhq = getelementptr inbounds nuw [4 x i8], ptr %i.iva, i64 %i.lho
  %wide.load3223 = load <8 x float>, ptr %i.lhq, align 4, !tbaa !12, !noalias !492
  %i.lhr = getelementptr inbounds nuw [4 x i8], ptr %i.ivb, i64 %i.lho
  %wide.load3224 = load <8 x float>, ptr %i.lhr, align 4, !tbaa !12, !noalias !492
  %i.lhs = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load3224, <8 x float> zeroinitializer)
  %i.lht = fmul reassoc nsz arcp contract afn <8 x float> %i.lhs, %broadcast.splat3219
  %i.lhu = shufflevector <8 x float> %wide.load3222, <8 x float> %wide.load3223, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lhv = call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.lhu, <16 x float> zeroinitializer)
  %i.lhw = fmul reassoc nsz arcp contract afn <16 x float> %i.lhv, %i.avu
  %i.lhx = shufflevector <8 x float> %i.lht, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3225 = shufflevector <16 x float> %i.lhw, <16 x float> %i.lhx, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec3225, ptr %gep5367, align 4, !tbaa !12, !alias.scope !492
  %index.next3226 = add nuw i64 %index3221, 8     ; 2 uses
  %i.lhy = icmp eq i64 %index.next3226, %n.vec3217
  br i1 %i.lhy, label %middle.block3227, label %vector.body3220, !llvm.loop !321

middle.block3227:                                 ; preds = %vector.body3220
  br i1 %cmp.n3228, label %._crit_edge931.i, label %scalar.ph3214.preheader

scalar.ph3214.preheader:                          ; preds = %.lr.ph930.i, %middle.block3227
  %indvars.iv1066.i.ph = phi i64 [ %i.lhl, %.lr.ph930.i ], [ %i.lhm, %middle.block3227 ]
  %indvars.iv1062.i.ph = phi i64 [ %i.lhk, %.lr.ph930.i ], [ %i.lhn, %middle.block3227 ]
  %.0738926.i.ph = phi i32 [ %i.ktb, %.lr.ph930.i ], [ %i.ktq, %middle.block3227 ]
  br label %scalar.ph3214

._crit_edge931.i:                                 ; preds = %scalar.ph3214, %middle.block3227
  %i.lhz = add nuw nsw i32 %.0739932.i, 1         ; 2 uses
  %i.lia = icmp slt i32 %i.lhz, %i.iwc
  %indvars.iv.next1061.i = add i32 %indvars.iv1060.i, %i.aou
  %indvars.iv.next1065.i = add i32 %indvars.iv1064.i, 112
  br i1 %i.lia, label %.lr.ph930.i, label %._crit_edge935.split.i

scalar.ph3214:                                    ; preds = %scalar.ph3214.preheader, %scalar.ph3214
  %indvars.iv1066.i = phi i64 [ %indvars.iv.next1067.i, %scalar.ph3214 ], [ %indvars.iv1066.i.ph, %scalar.ph3214.preheader ] ; 4 uses
  %indvars.iv1062.i = phi i64 [ %indvars.iv.next1063.i, %scalar.ph3214 ], [ %indvars.iv1062.i.ph, %scalar.ph3214.preheader ] ; 2 uses
  %.0738926.i = phi i32 [ %i.lip, %scalar.ph3214 ], [ %.0738926.i.ph, %scalar.ph3214.preheader ]
  %i.lib = getelementptr inbounds nuw [4 x i8], ptr %i.iuy, i64 %indvars.iv1066.i
  %i.lic = load float, ptr %i.lib, align 4, !tbaa !12, !noalias !492
  %i.lid = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lic, float 0.000000e+00)
  %i.lie = getelementptr inbounds [4 x i8], ptr %i.anu, i64 %indvars.iv1062.i
  %i.lif = getelementptr inbounds nuw [4 x i8], ptr %i.iva, i64 %indvars.iv1066.i
  %i.lig = load float, ptr %i.lif, align 4, !tbaa !12, !noalias !492
  %i.lih = getelementptr inbounds nuw [4 x i8], ptr %i.ivb, i64 %indvars.iv1066.i
  %i.lii = load float, ptr %i.lih, align 4, !tbaa !12, !noalias !492
  %i.lij = insertelement <4 x float> poison, float %i.lig, i64 0
  %i.lik = insertelement <4 x float> %i.lij, float %i.lii, i64 1
  %i.lil = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lid, i64 0
  %i.lim = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lik, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>)
  %i.lin = shufflevector <4 x float> %i.lil, <4 x float> %i.lim, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lio = fmul reassoc nsz arcp contract afn <4 x float> %i.lin, %i.avw
  store <4 x float> %i.lio, ptr %i.lie, align 4, !tbaa !12, !alias.scope !492
  %i.lip = add nuw nsw i32 %.0738926.i, 1         ; 2 uses
  %indvars.iv.next1063.i = add nsw i64 %indvars.iv1062.i, 4
  %indvars.iv.next1067.i = add nuw nsw i64 %indvars.iv1066.i, 1
  %i.liq = icmp slt i32 %i.lip, %i.ktd
  br i1 %i.liq, label %scalar.ph3214, label %._crit_edge931.i, !llvm.loop !322

bb.og:                                            ; preds = %bb.nw
  %i.lir = load i32, ptr %i.aoe, align 4, !tbaa !139 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anu, ptr noundef %i.awz, i32 noundef %i.bo, i32 noundef %i.awp, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 4)
  %i.lis = icmp slt i32 %i.awp, 8
  %or.cond.i551 = or i1 %i.aof, %i.lis
  br i1 %or.cond.i551, label %demosaic_box3.exit, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.lit = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !544
  %.not.i552 = icmp eq ptr %i.lit, null
  br i1 %.not.i552, label %bb.oi, label %.preheader1027.preheader.i

bb.oi:                                            ; preds = %bb.oh
  %i.liu = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !542 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.liu, i64 64) ]
  store ptr %i.liu, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !544
  %i.liv = tail call ptr @dt_alloc_aligned(i64 noundef 262144) #27, !noalias !542 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.liv, i64 64) ]
  store ptr %i.liv, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !544
  %i.liw = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !544 ; 3 uses
  %i.lix = icmp ne ptr %i.liw, null
  %i.liy = icmp ne ptr %i.liv, null
  %or.cond.i.i571 = select i1 %i.lix, i1 %i.liy, i1 false
  br i1 %or.cond.i.i571, label %.preheader.i.i572, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  tail call void @free(ptr noundef %i.liw) #27, !noalias !542
  tail call void @free(ptr noundef %i.liv) #27, !noalias !542
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140, !noalias !544
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140, !noalias !544
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.212) #27, !noalias !542
  br label %.preheader1027.preheader.i

.preheader.i.i572:                                ; preds = %bb.oi, %bb.op
  %indvars.iv.i.i573 = phi i64 [ %indvars.iv.next.i.i574, %bb.op ], [ 0, %bb.oi ] ; 4 uses
  %i.liz = trunc nuw nsw i64 %indvars.iv.i.i573 to i32
  %i.lja = uitofp nsz nneg i32 %i.liz to double   ; 4 uses
  %i.ljb = fmul reassoc nnan nsz arcp contract afn double %i.lja, f0x3EF0001000100010 ; 3 uses
  %i.ljc = fcmp reassoc nsz arcp contract afn ugt double %i.ljb, 1.867000e-03
  br i1 %i.ljc, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %.preheader.i.i572
  %i.ljd = fmul reassoc nnan nsz arcp contract afn double %i.lja, f0x3F31001100110011
  br label %bb.om

bb.ol:                                            ; preds = %.preheader.i.i572
  %i.lje = tail call fast double @llvm.log.f64(double %i.ljb)
  %i.ljf = fmul reassoc nnan nsz arcp contract afn double %i.lje, f0x3FDAAAAAAAAAAAAB
  %i.ljg = tail call reassoc nnan nsz arcp contract afn double @llvm.exp.f64(double %i.ljf)
  %i.ljh = fmul reassoc nnan nsz arcp contract afn double %i.ljg, f0x3FF0B60BF5D78812
  %i.lji = fadd reassoc nsz arcp contract afn double %i.ljh, -4.444500e-02
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %i.ljj = phi reassoc nsz arcp contract afn double [ %i.ljd, %bb.ok ], [ %i.lji, %bb.ol ]
  %i.ljk = fptrunc reassoc nsz arcp contract afn double %i.ljj to float
  %i.ljl = getelementptr inbounds nuw [4 x i8], ptr %i.liw, i64 %indvars.iv.i.i573
  store float %i.ljk, ptr %i.ljl, align 4, !tbaa !12, !noalias !542
  %i.ljm = fcmp reassoc nsz arcp contract afn ugt double %i.ljb, 3.174600e-02
  br i1 %i.ljm, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.ljn = fmul reassoc nnan nsz arcp contract afn double %i.lja, f0x3EAE1E3C3C5A5A78
  br label %bb.op

bb.oo:                                            ; preds = %bb.om
  %i.ljo = fmul reassoc nnan nsz arcp contract afn double %i.lja, f0x3EEEA3850F60F739
  %i.ljp = fadd reassoc nnan nsz arcp contract afn double %i.ljo, f0x3FA5C99942418271
  %i.ljq = tail call reassoc nnan nsz arcp contract afn double @llvm.log.f64(double %i.ljp)
  %i.ljr = fmul reassoc nnan nsz arcp contract afn double %i.ljq, 2.400000e+00
  %i.ljs = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ljr)
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %i.ljt = phi reassoc nsz arcp contract afn double [ %i.ljn, %bb.on ], [ %i.ljs, %bb.oo ]
  %i.lju = fptrunc reassoc nsz arcp contract afn double %i.ljt to float
  %i.ljv = getelementptr inbounds nuw [4 x i8], ptr %i.liv, i64 %indvars.iv.i.i573
  store float %i.lju, ptr %i.ljv, align 4, !tbaa !12, !noalias !542
  %indvars.iv.next.i.i574 = add nuw nsw i64 %indvars.iv.i.i573, 1 ; 2 uses
  %exitcond.not.i.i575 = icmp eq i64 %indvars.iv.next.i.i574, 65536
  br i1 %exitcond.not.i.i575, label %.preheader1027.preheader.i, label %.preheader.i.i572

.preheader1027.preheader.i:                       ; preds = %bb.op, %bb.oj, %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !544
  %i.ljw = tail call ptr @dt_alloc_aligned(i64 noundef 443904) #27, !noalias !542 ; 31 uses
  %i.ljx = ptrtoaddr ptr %i.ljw to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ljw, i64 64) ]
  store ptr %i.ljw, ptr %i.b, align 16, !tbaa !140, !noalias !544
  %i.ljy = getelementptr inbounds nuw i8, ptr %i.ljw, i64 73984 ; 14 uses
  store ptr %i.ljy, ptr %i.aog, align 8, !tbaa !140, !noalias !544
  %i.ljz = getelementptr inbounds nuw i8, ptr %i.ljw, i64 147968 ; 6 uses
  store ptr %i.ljz, ptr %i.aoh, align 16, !tbaa !140, !noalias !544
  %i.lka = getelementptr inbounds nuw i8, ptr %i.ljw, i64 221952 ; 5 uses
  store ptr %i.lka, ptr %i.aoi, align 8, !tbaa !140, !noalias !544
  %i.lkb = getelementptr inbounds nuw i8, ptr %i.ljw, i64 295936 ; 5 uses
  store ptr %i.lkb, ptr %i.aoj, align 16, !tbaa !140, !noalias !544
  %i.lkc = getelementptr inbounds nuw i8, ptr %i.ljw, i64 369920 ; 6 uses
  store ptr %i.lkc, ptr %i.aok, align 8, !tbaa !140, !noalias !544
  %i.lkd = icmp ult i32 %i.lir, 2
  %i.lke = select i1 %i.lkd, i32 %i.lir, i32 3    ; 2 uses
  %i.lkf = tail call i32 @llvm.usub.sat.i32(i32 %i.lir, i32 2) ; 2 uses
  %i.lkg = add nsw i32 %i.awp, -17
  %i.lkh = sdiv i32 %i.lkg, 112                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(443904) %i.ljw, i8 0, i64 443904, i1 false), !noalias !542
  %.not1191.i = icmp eq i32 %i.lke, 0
  %i.lki = icmp sgt i32 %i.lkf, 0
  %i.lkj = tail call i32 @llvm.smax.i32(i32 %i.lkh, i32 0)
  %scevgep4492 = getelementptr i8, ptr %i.ljw, i64 295400
  %scevgep4573 = getelementptr i8, ptr %i.ljw, i64 295400
  %i.lkk = add i64 %i.ljx, 372112
  %i.lkl = getelementptr inbounds nuw i8, ptr %i.awz, i64 128
  %i.lkm = getelementptr inbounds nuw i8, ptr %i.awz, i64 256
  %i.lkn = getelementptr inbounds nuw i8, ptr %i.awz, i64 384
  br label %.preheader1027.i

.preheader1027.i:                                 ; preds = %._crit_edge1187.i, %.preheader1027.preheader.i
  %indvars.iv1156 = phi i32 [ %indvars.iv.next1157, %._crit_edge1187.i ], [ 6, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1137 = phi i32 [ %indvars.iv.next1138, %._crit_edge1187.i ], [ 7, %.preheader1027.preheader.i ] ; 3 uses
  %indvars.iv1132 = phi i32 [ %indvars.iv.next1133, %._crit_edge1187.i ], [ 8, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1115 = phi i32 [ %indvars.iv.next1116, %._crit_edge1187.i ], [ 5, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1112 = phi i32 [ %indvars.iv.next1113, %._crit_edge1187.i ], [ 4, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge1187.i ], [ 128, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv1309.i = phi i32 [ %indvars.iv.next1310.i, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %indvars.iv.i555 = phi i32 [ %indvars.iv.next.i560, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 2 uses
  %.08821189.i = phi i32 [ %i.lmx, %._crit_edge1187.i ], [ 0, %.preheader1027.preheader.i ] ; 5 uses
  %smin1161 = call i32 @llvm.smin.i32(i32 %i.awp, i32 %indvars.iv) ; 5 uses
  %i.lko = add i32 %smin1161, %indvars.iv1112
  %i.lkp = call i32 @llvm.smax.i32(i32 %i.lko, i32 5)
  %smax1153 = zext nneg i32 %i.lkp to i64         ; 4 uses
  %i.lkq = add i32 %smin1161, %indvars.iv1137
  %i.lkr = call i32 @llvm.smax.i32(i32 %i.lkq, i32 2)
  %smax1145 = zext nneg i32 %i.lkr to i64         ; 3 uses
  %i.lks = add i32 %smin1161, %indvars.iv1132
  %i.lkt = call i32 @llvm.smax.i32(i32 %i.lks, i32 1)
  %smax1134 = zext nneg i32 %i.lkt to i64
  %i.lku = add i32 %smin1161, %indvars.iv1115
  %i.lkv = call i32 @llvm.umax.i32(i32 %i.lku, i32 2)
  %umax = zext i32 %i.lkv to i64
  %i.lkw = mul nuw i32 %.08821189.i, 112          ; 4 uses
  %i.lkx = add nuw nsw i32 %i.lkw, 128
  %i.lky = tail call i32 @llvm.smin.i32(i32 %i.lkx, i32 %i.awp) ; 2 uses
  %i.lkz = sub nsw i32 %i.lky, %i.lkw             ; 5 uses
  %i.lla = add nsw i32 %i.lkz, 8
  %i.llb = icmp sgt i32 %i.lkz, 0                 ; 3 uses
  %i.llc = icmp sgt i32 %i.lkz, -4
  %i.lld = add i32 %i.lkw, -4
  %i.lle = icmp sgt i32 %i.lkz, -8
  %i.llf = icmp slt i32 %i.lkz, -5                ; 2 uses
  %i.llg = icmp eq i32 %.08821189.i, 0            ; 2 uses
  %i.llh = select i1 %i.llg, i32 6, i32 0         ; 3 uses
  %i.lli = icmp eq i32 %.08821189.i, %i.lkh       ; 2 uses
  %.neg949.i = select i1 %i.lli, i32 -6, i32 0    ; 2 uses
  %i.llj = add nsw i32 %i.lla, %.neg949.i         ; 2 uses
  %i.llk = add nsw i32 %i.llj, -1
  %i.lll = icmp slt i32 %i.llh, %i.llk
  %i.llm = add nuw nsw i32 %i.llh, 2
  %i.lln = add nsw i32 %i.llj, -2
  %i.llo = icmp slt i32 %i.llm, %i.lln
  %i.llp = select i1 %i.llg, i32 4, i32 8         ; 3 uses
  %i.llq = or disjoint i32 %i.llp, %i.lkw
  %.neg950.i = select i1 %i.lli, i32 -4, i32 -8
  %i.llr = add nsw i32 %i.lky, %.neg950.i         ; 2 uses
  %i.lls = icmp slt i32 %i.llq, %i.llr
  %i.llt = zext nneg i32 %i.llh to i64            ; 6 uses
  %i.llu = add nuw nsw i64 %i.llt, 2              ; 3 uses
  %narrow.i = add nuw nsw i32 %i.llp, 4
  %i.llv = or disjoint i32 %i.llp, %indvars.iv1309.i
  %i.llw = zext i32 %i.llv to i64
  %i.llx = add i32 %.neg949.i, %smin1161          ; 2 uses
  %i.lly = add i32 %i.llx, %indvars.iv1137
  %i.llz = sext i32 %i.lly to i64                 ; 2 uses
  %i.lma = add i32 %i.llx, %indvars.iv1156
  %i.lmb = sext i32 %i.lma to i64                 ; 3 uses
  %i.lmc = mul nuw nsw i64 %i.llt, 544            ; 6 uses
  %i.lmd = mul nuw nsw i64 %i.llt, 544            ; 8 uses
  %i.lme = add nuw nsw i64 %i.lmd, 1644
  %i.lmf = add nuw nsw i64 %i.lmd, 552
  %i.lmg = mul nuw nsw i64 %i.llt, 544            ; 3 uses
  %i.lmh = or disjoint i64 %i.lmg, 8
  %i.lmi = mul nsw i64 %i.llz, 544                ; 2 uses
  %scevgep4493 = getelementptr i8, ptr %scevgep4492, i64 %i.lmi
  %scevgep4495 = getelementptr i8, ptr %i.ljw, i64 %i.lmg
  %scevgep4574 = getelementptr i8, ptr %scevgep4573, i64 %i.lmi
  %i.lmj = mul nuw nsw i64 %i.llt, 544            ; 2 uses
  %scevgep4576 = getelementptr i8, ptr %i.ljw, i64 %i.lmj
  %i.lmk = or disjoint i64 %i.lmj, 4
  %invariant.op = or disjoint i64 %i.lmg, 4
  %i.lml = getelementptr i8, ptr %i.ljw, i64 %i.lmd
  %i.lmm = getelementptr i8, ptr %i.lml, i64 74536
  %i.lmn = getelementptr i8, ptr %i.ljw, i64 %i.lmd
  %i.lmo = getelementptr i8, ptr %i.lmn, i64 75628
  %i.lmp = getelementptr i8, ptr %i.ljw, i64 %i.lmd
  %i.lmq = getelementptr i8, ptr %i.lmp, i64 73992
  %i.lmr = getelementptr i8, ptr %i.ljw, i64 %i.lmd
  %i.lms = getelementptr i8, ptr %i.lmr, i64 76172
  %i.lmt = getelementptr i8, ptr %i.ljw, i64 %i.lmc
  %i.lmu = getelementptr i8, ptr %i.lmt, i64 74536
  %i.lmv = getelementptr i8, ptr %i.ljw, i64 %i.lmc
  %i.lmw = getelementptr i8, ptr %i.lmv, i64 75628
  br label %bb.oq

._crit_edge1190.split.i:                          ; preds = %._crit_edge1187.i
  tail call void @free(ptr noundef %i.ljw) #27, !noalias !542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !544
  br label %demosaic_box3.exit

._crit_edge1187.i:                                ; preds = %._crit_edge1183.split.i
  %i.lmx = add nuw nsw i32 %.08821189.i, 1
  %indvars.iv.next.i560 = add i32 %indvars.iv.i555, %i.aon
  %indvars.iv.next1310.i = add nuw i32 %indvars.iv1309.i, 112
  %exitcond1318.i = icmp eq i32 %.08821189.i, %i.lkj
  %indvars.iv.next = add nuw i32 %indvars.iv, 112
  %indvars.iv.next1113 = add i32 %indvars.iv1112, -112
  %indvars.iv.next1116 = add i32 %indvars.iv1115, -112
  %indvars.iv.next1133 = add i32 %indvars.iv1132, -112
  %indvars.iv.next1138 = add i32 %indvars.iv1137, -112
  %indvars.iv.next1157 = add i32 %indvars.iv1156, -112
  br i1 %exitcond1318.i, label %._crit_edge1190.split.i, label %.preheader1027.i

bb.oq:                                            ; preds = %._crit_edge1183.split.i, %.preheader1027.i
  %indvars.iv1121 = phi i32 [ %indvars.iv.next1122, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 4 uses
  %indvars.iv1118 = phi i32 [ %indvars.iv.next1119, %._crit_edge1183.split.i ], [ 128, %.preheader1027.i ] ; 3 uses
  %indvars.iv1212.i = phi i32 [ %indvars.iv.next1213.i, %._crit_edge1183.split.i ], [ %indvars.iv.i555, %.preheader1027.i ] ; 2 uses
  %.08871185.i = phi i32 [ %i.ozm, %._crit_edge1183.split.i ], [ 0, %.preheader1027.i ] ; 5 uses
  %smin5004 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lmy = add i32 %smin5004, %indvars.iv1121
  %smin5005 = call i32 @llvm.smin.i32(i32 %i.lmy, i32 128)
  %i.lmz = add i32 %smin5005, -1                  ; 3 uses
  %i.lna = zext i32 %i.lmz to i64
  %i.lnb = add nuw nsw i64 %i.lna, 1              ; 5 uses
  %smin1149 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1118)
  %i.lnc = add i32 %smin1149, %indvars.iv1121
  %smin1150 = call i32 @llvm.smin.i32(i32 %i.lnc, i32 128)
  %i.lnd = add nsw i32 %smin1150, 3
  %i.lne = zext i32 %i.lnd to i64                 ; 3 uses
  %i.lnf = mul nuw i32 %.08871185.i, 112          ; 5 uses
  %i.lng = add nuw i32 %i.lnf, 128
  %i.lnh = tail call i32 @llvm.smin.i32(i32 %i.lng, i32 %i.bo) ; 3 uses
  %i.lni = sub i32 %i.lnh, %i.lnf                 ; 7 uses
  %i.lnj = tail call i32 @llvm.smin.i32(i32 %i.lni, i32 128) ; 12 uses
  %i.lnk = add nsw i32 %i.lnj, 8                  ; 2 uses
  br i1 %i.llb, label %.lr.ph1038.i, label %.preheader1026.i

.lr.ph1038.i:                                     ; preds = %bb.oq
  %i.lnl = add nsw i32 %i.lnj, 4                  ; 3 uses
  %i.lnm = icmp sgt i32 %i.lni, 0
  %i.lnn = load ptr, ptr @lmmse_gamma_in, align 8, !noalias !544 ; 2 uses
  %i.lno = icmp eq ptr %i.lnn, null
  br i1 %i.lnm, label %.lr.ph.i566.preheader, label %.lr.ph1049.i

.lr.ph.i566.preheader:                            ; preds = %.lr.ph1038.i
  %min.iters.check5007 = icmp ult i32 %i.lmz, 7
  %min.iters.check5011 = icmp ult i32 %i.lmz, 31
  %i.lnp = and i64 %i.lnb, 24
  %n.vec5013 = and i64 %i.lnb, 8589934560         ; 8 uses
  %i.lnq = shl nuw nsw i64 %n.vec5013, 2
  %i.lnr = trunc i64 %n.vec5013 to i32
  %i.lns = or disjoint i32 %i.lnr, 4
  %i.lnt = icmp eq i64 %n.vec5013, 32
  %i.lnu = icmp eq i64 %n.vec5013, 64
  %i.lnv = icmp eq i64 %n.vec5013, 96
  %cmp.n5025 = icmp eq i64 %i.lnb, %n.vec5013
  %min.epilog.iters.check5029 = icmp eq i64 %i.lnp, 0
  %n.vec5032 = and i64 %i.lnb, 8589934584         ; 5 uses
  %i.lnw = shl nuw nsw i64 %n.vec5032, 2
  %i.lnx = trunc i64 %n.vec5032 to i32
  %i.lny = or disjoint i32 %i.lnx, 4
  %cmp.n5041 = icmp eq i64 %i.lnb, %n.vec5032
  br label %.lr.ph.i566

end_hunk_2
begin_hunk_3_@process:bb.a

vector.memcheck1792:                              ; preds = %iter.check1822
  %i.pvp = add i64 %i.pvl, -1                     ; 2 uses
  %i.pvq = shl i64 %i.pvp, 2
  %i.pvr = and i64 %i.pvq, -16
  %i.pvs = getelementptr i8, ptr %scevgep1789, i64 %i.pvr
  %i.pvt = and i64 %i.pvp, -4
  %i.pvu = getelementptr i8, ptr %i.pgp, i64 %i.pvt
  %i.pvv = getelementptr i8, ptr %i.pvu, i64 4
  %bound01793 = icmp ult ptr %scevgep1695, %i.pvv
  %bound11794 = icmp ult ptr %i.pgp, %i.pvs
  %found.conflict1795 = and i1 %bound01793, %bound11794
  br i1 %found.conflict1795, label %.lr.ph28.i.preheader, label %vector.main.loop.iter.check1796

vector.main.loop.iter.check1796:                  ; preds = %vector.memcheck1792
  %min.iters.check1797 = icmp ult i64 %i.pvm, 124
  br i1 %min.iters.check1797, label %vec.epilog.ph1826, label %vector.ph1798

vector.ph1798:                                    ; preds = %vector.main.loop.iter.check1796
  %i.pvw = and i64 %i.pvo, 24
  %n.vec1799 = and i64 %i.pvo, 9223372036854775776 ; 4 uses
  %i.pvx = shl i64 %n.vec1799, 2                  ; 2 uses
  br label %vector.body1800

vector.body1800:                                  ; preds = %vector.ph1798, %vector.body1800
  %index1801 = phi i64 [ 0, %vector.ph1798 ], [ %index.next1818, %vector.body1800 ] ; 2 uses
  %vec.ind1802 = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph1798 ], [ %vec.ind.next1819, %vector.body1800 ] ; 5 uses
  %step.add1803 = add nuw <8 x i64> %vec.ind1802, splat (i64 32)
  %step.add.21804 = add nuw <8 x i64> %vec.ind1802, splat (i64 64)
  %step.add.31805 = add nuw <8 x i64> %vec.ind1802, splat (i64 96)
  %i.pvy = shl nuw i64 %index1801, 2
  %i.pvz = getelementptr inbounds nuw i8, ptr %i.pgp, i64 %i.pvy ; 4 uses
  %i.pwa = getelementptr inbounds nuw i8, ptr %i.pvz, i64 32
  %i.pwb = getelementptr inbounds nuw i8, ptr %i.pvz, i64 64
  %i.pwc = getelementptr inbounds nuw i8, ptr %i.pvz, i64 96
  %wide.load1806 = load <8 x float>, ptr %i.pvz, align 64, !tbaa !12, !alias.scope !590
  %wide.load1807 = load <8 x float>, ptr %i.pwa, align 32, !tbaa !12, !alias.scope !590
  %wide.load1808 = load <8 x float>, ptr %i.pwb, align 64, !tbaa !12, !alias.scope !590
  %wide.load1809 = load <8 x float>, ptr %i.pwc, align 32, !tbaa !12, !alias.scope !590
  %wide.gep1810 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %vec.ind1802
  %wide.gep1811 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %step.add1803
  %wide.gep1812 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %step.add.21804
  %wide.gep1813 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %step.add.31805
  %wide.gep1814 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1810, i64 12
  %wide.gep1815 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1811, i64 12
  %wide.gep1816 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1812, i64 12
  %wide.gep1817 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1813, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1806, <8 x ptr> align 4 %wide.gep1814, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !591, !noalias !590
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1807, <8 x ptr> align 4 %wide.gep1815, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !591, !noalias !590
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1808, <8 x ptr> align 4 %wide.gep1816, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !591, !noalias !590
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1809, <8 x ptr> align 4 %wide.gep1817, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !591, !noalias !590
  %index.next1818 = add nuw i64 %index1801, 32    ; 2 uses
  %vec.ind.next1819 = add nuw <8 x i64> %vec.ind1802, splat (i64 128)
  %i.pwd = icmp eq i64 %index.next1818, %n.vec1799
  br i1 %i.pwd, label %middle.block1820, label %vector.body1800, !llvm.loop !407

middle.block1820:                                 ; preds = %vector.body1800
  %cmp.n1821 = icmp eq i64 %i.pvo, %n.vec1799
  br i1 %cmp.n1821, label %.thread12.i, label %vec.epilog.iter.check1823

vec.epilog.iter.check1823:                        ; preds = %middle.block1820
  %min.epilog.iters.check1825 = icmp eq i64 %i.pvw, 0
  br i1 %min.epilog.iters.check1825, label %.lr.ph28.i.preheader, label %vec.epilog.ph1826, !prof !545

vec.epilog.ph1826:                                ; preds = %vector.main.loop.iter.check1796, %vec.epilog.iter.check1823
  %vec.epilog.resume.val1827 = phi i64 [ %n.vec1799, %vec.epilog.iter.check1823 ], [ 0, %vector.main.loop.iter.check1796 ]
  %bc.resume.val1828 = phi i64 [ %i.pvx, %vec.epilog.iter.check1823 ], [ 0, %vector.main.loop.iter.check1796 ]
  %n.vec1829 = and i64 %i.pvo, 9223372036854775800 ; 3 uses
  %i.pwe = shl i64 %n.vec1829, 2
  %broadcast.splatinsert1830 = insertelement <8 x i64> poison, i64 %bc.resume.val1828, i64 0
  %broadcast.splat1831 = shufflevector <8 x i64> %broadcast.splatinsert1830, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1832 = add nuw <8 x i64> %broadcast.splat1831, <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>
  br label %vec.epilog.vector.body1833

vec.epilog.vector.body1833:                       ; preds = %vec.epilog.vector.body1833, %vec.epilog.ph1826
  %index1834 = phi i64 [ %vec.epilog.resume.val1827, %vec.epilog.ph1826 ], [ %index.next1839, %vec.epilog.vector.body1833 ] ; 2 uses
  %vec.ind1835 = phi <8 x i64> [ %induction1832, %vec.epilog.ph1826 ], [ %vec.ind.next1840, %vec.epilog.vector.body1833 ] ; 2 uses
  %i.pwf = shl nuw i64 %index1834, 2
  %i.pwg = getelementptr inbounds nuw i8, ptr %i.pgp, i64 %i.pwf
  %wide.load1836 = load <8 x float>, ptr %i.pwg, align 32, !tbaa !12, !alias.scope !590
  %wide.gep1837 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %vec.ind1835
  %wide.gep1838 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1837, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load1836, <8 x ptr> align 4 %wide.gep1838, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !591, !noalias !590
  %index.next1839 = add nuw i64 %index1834, 8     ; 2 uses
  %vec.ind.next1840 = add nuw <8 x i64> %vec.ind1835, splat (i64 32)
  %i.pwh = icmp eq i64 %index.next1839, %n.vec1829
  br i1 %i.pwh, label %vec.epilog.middle.block1841, label %vec.epilog.vector.body1833, !llvm.loop !408

vec.epilog.middle.block1841:                      ; preds = %vec.epilog.vector.body1833
  %cmp.n1842 = icmp eq i64 %i.pvo, %n.vec1829
  br i1 %cmp.n1842, label %.thread12.i, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %iter.check1822, %vector.memcheck1792, %vec.epilog.iter.check1823, %vec.epilog.middle.block1841
  %.016727.i.ph = phi i64 [ 0, %iter.check1822 ], [ 0, %vector.memcheck1792 ], [ %i.pvx, %vec.epilog.iter.check1823 ], [ %i.pwe, %vec.epilog.middle.block1841 ]
  br label %.lr.ph28.i

.lr.ph.i586:                                      ; preds = %.lr.ph.i586.preheader5248, %.lr.ph.i586
  %.016826.i = phi i64 [ %i.pwv, %.lr.ph.i586 ], [ %.016826.i.ph, %.lr.ph.i586.preheader5248 ] ; 3 uses
  %i.pwi = getelementptr inbounds nuw [4 x i8], ptr %i.pgn, i64 %.016826.i
  %i.pwj = load float, ptr %i.pwi, align 4, !tbaa !12
  %i.pwk = getelementptr inbounds nuw [4 x i8], ptr %i.pgp, i64 %.016826.i ; 2 uses
  %i.pwl = load float, ptr %i.pwk, align 4, !tbaa !12 ; 2 uses
  %i.pwm = fsub reassoc nsz arcp contract afn float %i.pwj, %i.pwl ; 2 uses
  %i.pwn = fmul reassoc nsz arcp contract afn float %i.pwm, 1.000000e+01
  %i.pwo = fsub reassoc nsz arcp contract afn float 5.000000e+00, %i.pwn
  %i.pwp = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.pwo)
  %i.pwq = fadd reassoc nsz arcp contract afn float %i.pwp, 1.000000e+00
  %i.pwr = fdiv reassoc nsz arcp contract afn float %i.pwm, %i.pwq
  %i.pws = fadd reassoc nsz arcp contract afn float %i.pwr, %i.pwl ; 3 uses
  %i.pwt = fcmp reassoc nsz arcp contract afn ult float %i.pws, 0.000000e+00
  %.inv17.i = fcmp reassoc nsz arcp contract afn ole float %i.pws, 1.000000e+00
  %spec.select.i587 = select reassoc nsz arcp contract afn i1 %.inv17.i, float %i.pws, float 1.000000e+00
  %i.pwu = select reassoc nsz arcp contract afn i1 %i.pwt, float 0.000000e+00, float %spec.select.i587
  store float %i.pwu, ptr %i.pwk, align 4, !tbaa !12
  %i.pwv = add nuw i64 %.016826.i, 1              ; 2 uses
  %exitcond.not.i588 = icmp eq i64 %i.pwv, %i.pfn
  br i1 %exitcond.not.i588, label %._crit_edge.i589, label %.lr.ph.i586, !llvm.loop !409

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader, %.lr.ph28.i
  %.016727.i = phi i64 [ %i.pxa, %.lr.ph28.i ], [ %.016727.i.ph, %.lr.ph28.i.preheader ] ; 3 uses
  %i.pww = getelementptr inbounds nuw i8, ptr %i.pgp, i64 %.016727.i
  %i.pwx = load float, ptr %i.pww, align 4, !tbaa !12
  %i.pwy = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %.016727.i
  %i.pwz = getelementptr inbounds nuw i8, ptr %i.pwy, i64 12
  store float %i.pwx, ptr %i.pwz, align 4, !tbaa !12
  %i.pxa = add nuw i64 %.016727.i, 4              ; 2 uses
  %i.pxb = icmp ult i64 %i.pxa, %i.pvl
  br i1 %i.pxb, label %.lr.ph28.i, label %.thread12.i, !llvm.loop !410

bb.qs:                                            ; preds = %._crit_edge.i589
  %i.pxc = getelementptr inbounds nuw i8, ptr %.val453, i64 124
  %i.pxd = load float, ptr %i.pxc, align 4, !tbaa !456
  %i.pxe = getelementptr inbounds nuw i8, ptr %.val453, i64 132
  %i.pxf = load float, ptr %i.pxe, align 4, !tbaa !592
  %i.pxg = getelementptr inbounds nuw i8, ptr %.val453, i64 140
  %i.pxh = load float, ptr %i.pxg, align 4, !tbaa !142 ; 3 uses
  %.val188.i = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.pxi = getelementptr i8, ptr %.val188.i, i64 1508
  %i.pxj = load <2 x i32>, ptr %i.pxi, align 4, !tbaa !15
  %i.pxk = tail call ptr @dt_alloc_aligned(i64 noundef %i.pfn) #27 ; 14 uses
  %.not.i194.i = icmp ne ptr %i.pxk, null         ; 2 uses
  %or.cond.i195.i = and i1 %i.pus, %.not.i194.i
  br i1 %or.cond.i195.i, label %.lr.ph6.i.i, label %_cs_precalc_gauss_idx.exit.i

.lr.ph6.i.i:                                      ; preds = %bb.qs
  %i.pxl = sdiv <2 x i32> %i.pxj, splat (i32 2)   ; 2 uses
  %i.pxm = extractelement <2 x i32> %i.pxl, i64 1 ; 2 uses
  %i.pxn = sub i32 %i.pfl, %i.pxm
  %i.pxo = extractelement <2 x i32> %i.pxl, i64 0 ; 2 uses
  %i.pxp = sub i32 %i.pfj, %i.pxo
  %i.pxq = fsub reassoc nsz arcp contract afn float -5.000000e-01, %i.pxh
  br i1 %i.aqf, label %.lr.ph.preheader.i196.i, label %_cs_precalc_gauss_idx.exit.thread.i

.lr.ph.preheader.i196.i:                          ; preds = %.lr.ph6.i.i
  %i.pxr = fmul reassoc nsz arcp contract afn float %i.pxh, %i.pxh
  %i.pxs = fmul reassoc nsz arcp contract afn float %i.pxr, 8.000000e+00
  %i.pxt = fadd reassoc nsz arcp contract afn float %i.pxs, 1.000000e+00
  %i.pxu = tail call i32 @llvm.smin.i32(i32 %i.pxo, i32 %i.pxm)
  %i.pxv = sitofp reassoc nsz arcp contract afn i32 %i.pxu to float
  %wide.trip.count11.i.i = zext nneg i32 %i.awp to i64
  %i.pxw = fmul reassoc nsz arcp contract afn float %i.pxt, %i.pxf
  %i.pxx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.pxv
  br label %.lr.ph.i197.i

.lr.ph.i197.i:                                    ; preds = %._crit_edge.i203.i, %.lr.ph.preheader.i196.i
  %indvars.iv8.i.i = phi i64 [ 0, %.lr.ph.preheader.i196.i ], [ %indvars.iv.next9.i.i, %._crit_edge.i203.i ] ; 3 uses
  %i.pxy = trunc nuw nsw i64 %indvars.iv8.i.i to i32 ; 3 uses
  %i.pxz = add i32 %i.pxn, %i.pxy
  %i.pya = sitofp reassoc nsz arcp contract afn i32 %i.pxz to float
  %i.pyb = xor i32 %i.pxy, -1
  %i.pyc = add nsw i32 %i.awp, %i.pyb
  %i.pyd = mul nuw nsw i64 %indvars.iv8.i.i, %i.aob
  %invariant.gep.i198.i = getelementptr inbounds nuw i8, ptr %i.pxk, i64 %i.pyd
  br label %bb.qt

._crit_edge.i203.i:                               ; preds = %bb.qt
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 1 ; 2 uses
  %exitcond12.not.i.i = icmp eq i64 %indvars.iv.next9.i.i, %wide.trip.count11.i.i
  br i1 %exitcond12.not.i.i, label %_cs_precalc_gauss_idx.exit.thread.i, label %.lr.ph.i197.i

bb.qt:                                            ; preds = %bb.qt, %.lr.ph.i197.i
  %indvars.iv.i199.i = phi i64 [ 0, %.lr.ph.i197.i ], [ %indvars.iv.next.i201.i, %bb.qt ] ; 3 uses
  %i.pye = trunc nuw nsw i64 %indvars.iv.i199.i to i32 ; 3 uses
  %i.pyf = add i32 %i.pxp, %i.pye
  %i.pyg = sitofp reassoc nsz arcp contract afn i32 %i.pyf to float
  %i.pyh = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.pya, float noundef %i.pyg) #29
  %i.pyi = fmul reassoc nsz arcp contract afn float %i.pyh, %i.pxx
  %i.pyj = fadd reassoc nsz arcp contract afn float %i.pyi, %i.pxq ; 2 uses
  %i.pyk = fcmp reassoc nsz arcp contract afn olt float %i.pyj, 0.000000e+00
  %i.pyl = select reassoc nsz arcp contract afn i1 %i.pyk, float 0.000000e+00, float %i.pyj ; 2 uses
  %i.pym = fmul reassoc nsz arcp contract afn float %i.pyl, %i.pyl
  %i.pyn = fmul reassoc nsz arcp contract afn float %i.pym, %i.pxw
  %i.pyo = fadd reassoc nsz arcp contract afn float %i.pyn, %i.pxd
  %i.pyp = xor i32 %i.pye, -1
  %i.pyq = add nsw i32 %i.bo, %i.pyp
  %i.pyr = tail call i32 @llvm.umin.i32(i32 %i.pye, i32 %i.pxy)
  %..i.i604 = tail call i32 @llvm.smin.i32(i32 %i.pyq, i32 %i.pyr)
  %i.pys = tail call i32 @llvm.smin.i32(i32 %i.pyc, i32 %..i.i604)
  %i.pyt = tail call i32 @llvm.smin.i32(i32 %i.pys, i32 8)
  %i.pyu = sitofp reassoc nsz arcp contract afn i32 %i.pyt to float
  %i.pyv = fmul reassoc nnan nsz arcp contract afn float %i.pyu, 1.250000e+01
  %i.pyw = fmul reassoc nsz arcp contract afn float %i.pyv, %i.pyo
  %i.pyx = fptosi float %i.pyw to i32
  %i.pyy = tail call i32 @llvm.smax.i32(i32 %i.pyx, i32 0)
  %i.pyz = tail call i32 @llvm.umin.i32(i32 %i.pyy, i32 255)
  %i.pza = trunc nuw i32 %i.pyz to i8
  %gep.i200.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i198.i, i64 %indvars.iv.i199.i
  store i8 %i.pza, ptr %gep.i200.i, align 1, !tbaa !133
  %indvars.iv.next.i201.i = add nuw nsw i64 %indvars.iv.i199.i, 1 ; 2 uses
  %exitcond.not.i202.i = icmp eq i64 %indvars.iv.next.i201.i, %i.aob
  br i1 %exitcond.not.i202.i, label %._crit_edge.i203.i, label %bb.qt

_cs_precalc_gauss_idx.exit.i:                     ; preds = %bb.qs
  br i1 %.not.i194.i, label %_cs_precalc_gauss_idx.exit.thread.i, label %bb.rk

_cs_precalc_gauss_idx.exit.thread.i:              ; preds = %._crit_edge.i203.i, %_cs_precalc_gauss_idx.exit.i, %.lr.ph6.i.i
  br i1 %.not183.i, label %.preheader19.i, label %.preheader20.i

.preheader20.i:                                   ; preds = %_cs_precalc_gauss_idx.exit.thread.i
  %i.pzb = shl i64 %i.pfn, 2                      ; 4 uses
  %.not38.i = icmp eq i64 %i.pzb, 0
  br i1 %.not38.i, label %.thread12.i, label %.lr.ph30.i.preheader

.lr.ph30.i.preheader:                             ; preds = %.preheader20.i
  %i.pzc = add i64 %i.pzb, -1                     ; 2 uses
  %i.pzd = lshr i64 %i.pzc, 2
  %i.pze = add nuw nsw i64 %i.pzd, 1              ; 2 uses
  %min.iters.check1964 = icmp ult i64 %i.pzb, 29
  br i1 %min.iters.check1964, label %.lr.ph30.i.preheader5246, label %vector.memcheck1965

vector.memcheck1965:                              ; preds = %.lr.ph30.i.preheader
  %i.pzf = lshr i64 %i.pzc, 2                     ; 2 uses
  %i.pzg = shl i64 %i.pzf, 4
  %i.pzh = getelementptr i8, ptr %scevgep1789, i64 %i.pzg
  %i.pzi = getelementptr i8, ptr %i.pxk, i64 %i.pzf
  %i.pzj = getelementptr i8, ptr %i.pzi, i64 1
  %bound01966 = icmp ult ptr %scevgep1695, %i.pzj
  %bound11967 = icmp ult ptr %i.pxk, %i.pzh
  %found.conflict1968 = and i1 %bound01966, %bound11967
  br i1 %found.conflict1968, label %.lr.ph30.i.preheader5246, label %vector.ph1969

vector.ph1969:                                    ; preds = %vector.memcheck1965
  %n.vec1970 = and i64 %i.pze, 9223372036854775800 ; 3 uses
  %i.pzk = shl i64 %n.vec1970, 2
  br label %vector.body1971

vector.body1971:                                  ; preds = %vector.body1971, %vector.ph1969
  %index1972 = phi i64 [ 0, %vector.ph1969 ], [ %index.next1977, %vector.body1971 ] ; 2 uses
  %vec.ind1973 = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph1969 ], [ %vec.ind.next1978, %vector.body1971 ] ; 2 uses
  %i.pzl = getelementptr inbounds nuw i8, ptr %i.pxk, i64 %index1972
  %wide.load1974 = load <8 x i8>, ptr %i.pzl, align 1, !tbaa !133, !alias.scope !593
  %i.pzm = uitofp <8 x i8> %wide.load1974 to <8 x float>
  %i.pzn = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.pzm, splat (float f0x3B808081)
  %wide.gep1975 = getelementptr inbounds nuw [4 x i8], ptr %i.anu, <8 x i64> %vec.ind1973
  %wide.gep1976 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1975, i64 12
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.pzn, <8 x ptr> align 4 %wide.gep1976, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !594, !noalias !593
  %index.next1977 = add nuw i64 %index1972, 8     ; 2 uses
  %vec.ind.next1978 = add nuw <8 x i64> %vec.ind1973, splat (i64 32)
  %i.pzo = icmp eq i64 %index.next1977, %n.vec1970
  br i1 %i.pzo, label %middle.block1979, label %vector.body1971, !llvm.loop !414

middle.block1979:                                 ; preds = %vector.body1971
  %cmp.n1980 = icmp eq i64 %i.pze, %n.vec1970
  br i1 %cmp.n1980, label %.thread12.i, label %.lr.ph30.i.preheader5246

.lr.ph30.i.preheader5246:                         ; preds = %vector.memcheck1965, %.lr.ph30.i.preheader, %middle.block1979
  %.016629.i.ph = phi i64 [ 0, %vector.memcheck1965 ], [ 0, %.lr.ph30.i.preheader ], [ %i.pzk, %middle.block1979 ]
  br label %.lr.ph30.i

.preheader19.i:                                   ; preds = %_cs_precalc_gauss_idx.exit.thread.i
  %i.pzp = getelementptr inbounds nuw i8, ptr %.val453, i64 136
  %i.pzq = load i32, ptr %i.pzp, align 8, !tbaa !143 ; 2 uses
  %i.pzr = icmp sgt i32 %i.pzq, 0
  br i1 %i.pzr, label %.lr.ph32.i, label %.preheader.i591

.lr.ph32.i:                                       ; preds = %.preheader19.i
  %i.pzs = getelementptr inbounds nuw i8, ptr %i.pfo, i64 216
  %i.pzt = load ptr, ptr %i.pzs, align 8, !tbaa !145 ; 2 uses
  %wide.trip.count290.i.i = zext nneg i32 %i.awp to i64 ; 2 uses
  %brmerge1067.not = select i1 %i.pus, i1 %i.aqf, i1 false
  br i1 %brmerge1067.not, label %.preheader275.lr.ph.i.i, label %.preheader.i591

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader5246, %.lr.ph30.i
  %.016629.i = phi i64 [ %i.qab, %.lr.ph30.i ], [ %.016629.i.ph, %.lr.ph30.i.preheader5246 ] ; 3 uses
  %i.pzu = lshr exact i64 %.016629.i, 2
  %i.pzv = getelementptr inbounds nuw i8, ptr %i.pxk, i64 %i.pzu
  %i.pzw = load i8, ptr %i.pzv, align 1, !tbaa !133
  %i.pzx = uitofp reassoc nsz arcp contract afn i8 %i.pzw to float
  %i.pzy = fmul reassoc nnan nsz arcp contract afn float %i.pzx, f0x3B808081
  %i.pzz = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %.016629.i
  %i.qaa = getelementptr inbounds nuw i8, ptr %i.pzz, i64 12
  store float %i.pzy, ptr %i.qaa, align 4, !tbaa !12
  %i.qab = add nuw i64 %.016629.i, 4              ; 2 uses
  %i.qac = icmp ult i64 %i.qab, %i.pzb
  br i1 %i.qac, label %.lr.ph30.i, label %.thread12.i, !llvm.loop !415

.preheader.i591:                                  ; preds = %_blur_mul.exit.i.loopexit, %.lr.ph32.i, %.preheader19.i
  br i1 %.not36.i, label %.thread12.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.preheader.i591
  %min.iters.check1864 = icmp ult i64 %i.pfn, 16
  br i1 %min.iters.check1864, label %.lr.ph35.i.preheader5244, label %vector.scevcheck1844

vector.scevcheck1844:                             ; preds = %.lr.ph35.i.preheader
  %i.qad = add nsw i64 %i.pfn, -1                 ; 2 uses
  %mul.result = shl i64 %i.qad, 4                 ; 4 uses
  %mul.overflow = icmp ugt i64 %i.qad, 1152921504606846975
  %i.qae = getelementptr i8, ptr %i.anu, i64 %mul.result
  %i.qaf = icmp ult ptr %i.qae, %i.anu
  %i.qag = getelementptr i8, ptr %scevgep1845, i64 %mul.result
  %i.qah = icmp ult ptr %i.qag, %scevgep1845
  %i.qai = getelementptr i8, ptr %scevgep1846, i64 %mul.result
  %i.qaj = icmp ult ptr %i.qai, %scevgep1846
  %i.qak = or i1 %i.qaj, %mul.overflow
  %i.qal = getelementptr i8, ptr %scevgep1695, i64 %mul.result
  %i.qam = icmp ult ptr %i.qal, %scevgep1695
  %i.qan = or i1 %i.qah, %i.qaf
  %i.qao = or i1 %i.qan, %i.qak
  %i.qap = or i1 %i.qam, %i.qao
  br i1 %i.qap, label %.lr.ph35.i.preheader5244, label %vector.memcheck1865

vector.memcheck1865:                              ; preds = %vector.scevcheck1844
  %i.qaq = mul nsw i64 %i.pfm, %i.aoa             ; 2 uses
  %i.qar = shl i64 %i.qaq, 2                      ; 3 uses
  %i.qas = getelementptr i8, ptr %i.pgp, i64 %i.qar
  %i.qat = shl i64 %i.qaq, 4
  %i.qau = getelementptr i8, ptr %i.anu, i64 %i.qat ; 3 uses
  %i.qav = getelementptr i8, ptr %i.pgo, i64 %i.qar
  %i.qaw = getelementptr i8, ptr %i.pgm, i64 %i.qar
  %bound01866 = icmp ult ptr %i.pgp, %i.qau
  %bound11867 = icmp ult ptr %i.anu, %i.qas
  %found.conflict1868 = and i1 %bound01866, %bound11867
  %bound01869 = icmp ult ptr %i.pgo, %i.qau
  %bound11870 = icmp ult ptr %i.anu, %i.qav
  %found.conflict1871 = and i1 %bound01869, %bound11870
  %conflict.rdx1872 = or i1 %found.conflict1868, %found.conflict1871
  %bound01873 = icmp ult ptr %i.pgm, %i.qau
  %bound11874 = icmp ult ptr %i.anu, %i.qaw
  %found.conflict1875 = and i1 %bound01873, %bound11874
  %conflict.rdx1876 = or i1 %conflict.rdx1872, %found.conflict1875
  br i1 %conflict.rdx1876, label %.lr.ph35.i.preheader5244, label %vector.ph1877

vector.ph1877:                                    ; preds = %vector.memcheck1865
  %n.vec1878 = and i64 %i.pfn, 2305843009213693944 ; 3 uses
  br label %vector.body1879

vector.body1879:                                  ; preds = %vector.body1879, %vector.ph1877
  %index1880 = phi i64 [ 0, %vector.ph1877 ], [ %index.next1892, %vector.body1879 ] ; 4 uses
  %vec.ind1881 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1877 ], [ %vec.ind.next1893, %vector.body1879 ] ; 2 uses
  %i.qax = getelementptr inbounds nuw [4 x i8], ptr %i.pgp, i64 %index1880
  %wide.load1882 = load <8 x float>, ptr %i.qax, align 32, !tbaa !12, !alias.scope !595, !noalias !596 ; 3 uses
  %i.qay = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1882, zeroinitializer ; 10 uses
  %i.qaz = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load1882, splat (float 1.000000e+00)
  %i.qba = select reassoc nsz arcp contract afn <8 x i1> %i.qaz, <8 x float> %wide.load1882, <8 x float> splat (float 1.000000e+00)
  %i.qbb = getelementptr [4 x i8], ptr %i.pgo, i64 %index1880
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.qbb, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !597, !noalias !596
  %i.qbc = getelementptr [4 x i8], ptr %i.pgm, i64 %index1880
  %wide.masked.load1883 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 32 %i.qbc, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !598, !noalias !596 ; 4 uses
  %i.qbd = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %wide.masked.load1883
  %i.qbe = fmul reassoc nsz arcp contract afn <8 x float> %i.qbd, %i.qba
  %i.qbf = fadd reassoc nsz arcp contract afn <8 x float> %i.qbe, %wide.masked.load1883 ; 4 uses
  %i.qbg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.load1883, splat (float 1.000000e-03)
  %i.qbh = select reassoc nsz arcp contract afn <8 x i1> %i.qbg, <8 x float> %wide.masked.load1883, <8 x float> splat (float 1.000000e-03) ; 4 uses
  %i.qbi = shl <8 x i64> %vec.ind1881, splat (i64 4)
  %wide.gep1884 = getelementptr inbounds nuw i8, ptr %i.anu, <8 x i64> %i.qbi ; 5 uses
  %wide.masked.gather1885 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1884, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !596
  %i.qbj = fmul reassoc nsz arcp contract afn <8 x float> %i.qbf, %wide.masked.gather1885
  %i.qbk = fdiv reassoc nsz arcp contract afn <8 x float> %i.qbj, %i.qbh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qbk, <8 x ptr> align 4 %wide.gep1884, <8 x i1> %i.qay), !tbaa !12, !alias.scope !596
  %wide.gep1886 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1884, i64 4 ; 2 uses
  %wide.masked.gather1887 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1886, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !596
  %i.qbl = fmul reassoc nsz arcp contract afn <8 x float> %i.qbf, %wide.masked.gather1887
  %i.qbm = fdiv reassoc nsz arcp contract afn <8 x float> %i.qbl, %i.qbh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qbm, <8 x ptr> align 4 %wide.gep1886, <8 x i1> %i.qay), !tbaa !12, !alias.scope !596
  %wide.gep1888 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1884, i64 8 ; 2 uses
  %wide.masked.gather1889 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1888, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !596
  %i.qbn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1889, %i.qbf
  %i.qbo = fdiv reassoc nsz arcp contract afn <8 x float> %i.qbn, %i.qbh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qbo, <8 x ptr> align 4 %wide.gep1888, <8 x i1> %i.qay), !tbaa !12, !alias.scope !596
  %wide.gep1890 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1884, i64 12 ; 2 uses
  %wide.masked.gather1891 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1890, <8 x i1> %i.qay, <8 x float> poison), !tbaa !12, !alias.scope !596
  %i.qbp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather1891, %i.qbf
  %i.qbq = fdiv reassoc nsz arcp contract afn <8 x float> %i.qbp, %i.qbh
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.qbq, <8 x ptr> align 4 %wide.gep1890, <8 x i1> %i.qay), !tbaa !12, !alias.scope !596
  %index.next1892 = add nuw i64 %index1880, 8     ; 2 uses
  %vec.ind.next1893 = add nuw <8 x i64> %vec.ind1881, splat (i64 8)
  %i.qbr = icmp eq i64 %index.next1892, %n.vec1878
  br i1 %i.qbr, label %middle.block1894, label %vector.body1879, !llvm.loop !421

middle.block1894:                                 ; preds = %vector.body1879
  %cmp.n1895 = icmp eq i64 %i.pfn, %n.vec1878
  br i1 %cmp.n1895, label %.thread12.i, label %.lr.ph35.i.preheader5244

.lr.ph35.i.preheader5244:                         ; preds = %vector.memcheck1865, %vector.scevcheck1844, %.lr.ph35.i.preheader, %middle.block1894
  %.016434.i.ph = phi i64 [ 0, %vector.memcheck1865 ], [ 0, %vector.scevcheck1844 ], [ 0, %.lr.ph35.i.preheader ], [ %n.vec1878, %middle.block1894 ]
  br label %.lr.ph35.i

.preheader275.lr.ph.i.i:                          ; preds = %.lr.ph32.i, %_blur_mul.exit.i.loopexit
  %.016531.i = phi i32 [ %i.rft, %_blur_mul.exit.i.loopexit ], [ 0, %.lr.ph32.i ]
  br label %.preheader275.i.i

.preheader275.i.i:                                ; preds = %.preheader275.lr.ph.i.i, %._crit_edge.i207.i
  %indvars.iv287.i.i = phi i64 [ %indvars.iv.next288.i.i, %._crit_edge.i207.i ], [ 0, %.preheader275.lr.ph.i.i ] ; 5 uses
  %i.qbs = mul nuw nsw i64 %indvars.iv287.i.i, %i.aoa
  %i.qbt = trunc nuw nsw i64 %indvars.iv287.i.i to i32
  br label %bb.qu

._crit_edge.i207.i:                               ; preds = %bb.rb
  %indvars.iv.next288.i.i = add nuw nsw i64 %indvars.iv287.i.i, 1 ; 2 uses
  %exitcond291.not.i.i = icmp eq i64 %indvars.iv.next288.i.i, %wide.trip.count290.i.i
  br i1 %exitcond291.not.i.i, label %.preheader272.i.i, label %.preheader275.i.i

bb.qu:                                            ; preds = %bb.rb, %.preheader275.i.i
  %indvars.iv.i205.i = phi i64 [ 0, %.preheader275.i.i ], [ %indvars.iv.next.i206.i, %bb.rb ] ; 5 uses
  %i.qbu = add nuw nsw i64 %indvars.iv.i205.i, %i.qbs ; 5 uses
  %i.qbv = getelementptr inbounds nuw [4 x i8], ptr %i.pgp, i64 %i.qbu
  %i.qbw = load float, ptr %i.qbv, align 4, !tbaa !12
  %i.qbx = fcmp reassoc nsz arcp contract afn ogt float %i.qbw, 0.000000e+00
  br i1 %i.qbx, label %bb.qv, label %bb.rb

bb.qv:                                            ; preds = %bb.qu
  %i.qby = getelementptr inbounds nuw i8, ptr %i.pxk, i64 %i.qbu
  %i.qbz = load i8, ptr %i.qby, align 1, !tbaa !133 ; 2 uses
  %i.qca = zext i8 %i.qbz to i64
  %.idx.i.i601 = shl nuw nsw i64 %i.qca, 7
  %i.qcb = getelementptr inbounds nuw i8, ptr %i.pzt, i64 %.idx.i.i601 ; 20 uses
  %i.qcc = icmp ult i8 %i.qbz, 66                 ; 4 uses
  %.neg.i208.i = select i1 %i.qcc, i32 -2, i32 -4 ; 5 uses
  %i.qcd = select i1 %i.qcc, i32 2, i32 4         ; 6 uses
  %i.qce = zext nneg i32 %i.qcd to i64            ; 2 uses
  %.not.i209.i = icmp samesign uge i64 %indvars.iv.i205.i, %i.qce
  %.not263.i.i = icmp samesign uge i64 %indvars.iv287.i.i, %i.qce
  %or.cond.not272.i.i = select i1 %.not.i209.i, i1 %.not263.i.i, i1 false
  %i.qcf = sub nsw i32 %i.bo, %i.qcd
  %i.qcg = sext i32 %i.qcf to i64
  %i.qch = icmp slt i64 %indvars.iv.i205.i, %i.qcg
  %or.cond267.i.i = select i1 %or.cond.not272.i.i, i1 %i.qch, i1 false
  %i.qci = sub nsw i32 %i.awp, %i.qcd
  %i.qcj = sext i32 %i.qci to i64
  %i.qck = icmp slt i64 %indvars.iv287.i.i, %i.qcj
  %or.cond269.i.i = select i1 %or.cond267.i.i, i1 %i.qck, i1 false
  br i1 %or.cond269.i.i, label %bb.qw, label %.preheader273.preheader.i.i

.preheader273.preheader.i.i:                      ; preds = %bb.qv
  %i.qcl = trunc i64 %indvars.iv.i205.i to i32    ; 3 uses
  %i.qcm = add i32 %.neg.i208.i, %i.qcl
  %i.qcn = select i1 %i.qcc, i32 -5, i32 -9
  %i.qco = icmp ult i32 %i.qcn, %i.qcm
  %i.qcp = or disjoint i32 %i.qcd, 1
  %i.qcq = sub nsw i32 %i.qcp, %.neg.i208.i       ; 2 uses
  %trip.count.minus.11930 = add nsw i32 %i.qcq, -1
  %broadcast.splatinsert1931 = insertelement <8 x i32> poison, i32 %trip.count.minus.11930, i64 0
  %broadcast.splat1932 = shufflevector <8 x i32> %broadcast.splatinsert1931, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1935 = insertelement <8 x i32> poison, i32 %i.qcl, i64 0
  %broadcast.splat1936 = shufflevector <8 x i32> %broadcast.splatinsert1935, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1939 = insertelement <8 x i32> poison, i32 %.neg.i208.i, i64 0
  %broadcast.splat1940 = shufflevector <8 x i32> %broadcast.splatinsert1939, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction1941 = add nsw <8 x i32> %broadcast.splat1940, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %n.rnd.up1928 = add nuw nsw i32 %i.qcq, 7
  %n.vec1929 = and i32 %n.rnd.up1928, 24
  %i.qcr = icmp samesign uge <8 x i32> %broadcast.splat1932, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qcs = add <8 x i32> %induction1941, %broadcast.splat1936 ; 2 uses
  %i.qct = extractelement <8 x i32> %i.qcs, i64 0
  %i.qcu = icmp ult <8 x i32> %i.qcs, %broadcast.splat1938 ; 2 uses
  %i.qcv = select <8 x i1> %i.qcr, <8 x i1> %i.qcu, <8 x i1> zeroinitializer ; 2 uses
  %i.qcw = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %induction1941, i1 true)
  %i.qcx = zext i32 %i.qct to i64
  %i.qcy = icmp eq i32 %n.vec1929, 8
  %vec.ind.next1952 = add nsw <8 x i32> %broadcast.splat1940, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.qcz = icmp samesign ugt <8 x i32> %broadcast.splat1932, <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.qda = add <8 x i32> %vec.ind.next1952, %broadcast.splat1936 ; 2 uses
  %i.qdb = extractelement <8 x i32> %i.qda, i64 0
  %i.qdc = icmp ult <8 x i32> %i.qda, %broadcast.splat1938 ; 2 uses
  %i.qdd = select <8 x i1> %i.qcz, <8 x i1> %i.qdc, <8 x i1> zeroinitializer ; 2 uses
  %i.qde = zext i32 %i.qdb to i64
  br label %.preheader273.i.i

bb.qw:                                            ; preds = %bb.qv
  %i.qdf = getelementptr inbounds nuw [4 x i8], ptr %i.pgo, i64 %i.qbu ; 57 uses
  br i1 %i.qcc, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  %i.qdg = getelementptr inbounds nuw i8, ptr %i.qcb, i64 28
  %i.qdh = load float, ptr %i.qdg, align 4, !tbaa !12
  %i.qdi = getelementptr inbounds [4 x i8], ptr %i.qdf, i64 %i.asw
  %i.qdj = load float, ptr %i.qdi, align 4, !tbaa !12
  %i.qdk = getelementptr inbounds [4 x i8], ptr %i.qdf, i64 %i.asy
  %i.qdl = load float, ptr %i.qdk, align 4, !tbaa !12
  %i.qdm = fadd reassoc nsz arcp contract afn float %i.qdl, %i.qdj
end_hunk_3
begin_hunk_4_@color_smoothing:bb.a

vector.body284:                                   ; preds = %vector.main.loop.iter.check280, %vector.body284
  %index285 = phi i64 [ %index.next303, %vector.body284 ], [ 0, %vector.main.loop.iter.check280 ]
  %pointer.phi286 = phi ptr [ %ptr.ind304, %vector.body284 ], [ %0, %vector.main.loop.iter.check280 ] ; 2 uses
  %vector.gep287 = getelementptr i8, ptr %pointer.phi286, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 8 uses
  %i.agg = extractelement <4 x ptr> %vector.gep287, i64 0
  %wide.vec291 = load <16 x float>, ptr %i.agg, align 4, !tbaa !12
  %strided.vec292 = shufflevector <16 x float> %wide.vec291, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.agh = extractelement <4 x ptr> %vector.gep287, i64 0
  %i.agi = getelementptr i8, ptr %i.agh, i64 64
  %wide.vec293 = load <16 x float>, ptr %i.agi, align 4, !tbaa !12
  %strided.vec294 = shufflevector <16 x float> %wide.vec293, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.agj = extractelement <4 x ptr> %vector.gep287, i64 0
  %i.agk = getelementptr i8, ptr %i.agj, i64 128
  %wide.vec295 = load <16 x float>, ptr %i.agk, align 4, !tbaa !12
  %strided.vec296 = shufflevector <16 x float> %wide.vec295, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.agl = extractelement <4 x ptr> %vector.gep287, i64 0
  %i.agm = getelementptr i8, ptr %i.agl, i64 192
  %wide.vec297 = load <16 x float>, ptr %i.agm, align 4, !tbaa !12
  %strided.vec298 = shufflevector <16 x float> %wide.vec297, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep299 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep287, i64 12
  %wide.gep300 = getelementptr i8, <4 x ptr> %vector.gep287, i64 76
  %wide.gep301 = getelementptr i8, <4 x ptr> %vector.gep287, i64 140
  %wide.gep302 = getelementptr i8, <4 x ptr> %vector.gep287, i64 204
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec292, <4 x ptr> align 4 %wide.gep299, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec294, <4 x ptr> align 4 %wide.gep300, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec296, <4 x ptr> align 4 %wide.gep301, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec298, <4 x ptr> align 4 %wide.gep302, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next303 = add nuw i64 %index285, 16      ; 2 uses
  %ptr.ind304 = getelementptr i8, ptr %pointer.phi286, i64 256
  %i.agn = icmp eq i64 %index.next303, %n.vec283
  br i1 %i.agn, label %vec.epilog.iter.check307, label %vector.body284, !llvm.loop !675

vec.epilog.iter.check307:                         ; preds = %vector.body284
  br i1 %min.epilog.iters.check309, label %vec.epilog.scalar.ph308.preheader, label %vec.epilog.ph310, !prof !138

vec.epilog.scalar.ph308.preheader:                ; preds = %vec.epilog.vector.body314, %.preheader175, %vec.epilog.iter.check307
  %.1177.ph = phi ptr [ %0, %.preheader175 ], [ %i.adh, %vec.epilog.iter.check307 ], [ %i.adn, %vec.epilog.vector.body314 ]
  %.0149176.ph = phi i32 [ 0, %.preheader175 ], [ %i.adi, %vec.epilog.iter.check307 ], [ %i.ado, %vec.epilog.vector.body314 ]
  br label %vec.epilog.scalar.ph308

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check280, %vec.epilog.iter.check307
  %vec.epilog.resume.val311 = phi i64 [ %n.vec283, %vec.epilog.iter.check307 ], [ 0, %vector.main.loop.iter.check280 ]
  %bc.resume.val312 = phi ptr [ %i.adh, %vec.epilog.iter.check307 ], [ %0, %vector.main.loop.iter.check280 ]
  br label %vec.epilog.vector.body314

vec.epilog.vector.body314:                        ; preds = %vec.epilog.vector.body314, %vec.epilog.ph310
  %index315 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph310 ], [ %index.next321, %vec.epilog.vector.body314 ]
  %pointer.phi316 = phi ptr [ %bc.resume.val312, %vec.epilog.ph310 ], [ %ptr.ind322, %vec.epilog.vector.body314 ] ; 2 uses
  %vector.gep317 = getelementptr i8, ptr %pointer.phi316, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.ago = extractelement <4 x ptr> %vector.gep317, i64 0
  %wide.vec318 = load <16 x float>, ptr %i.ago, align 4, !tbaa !12
  %strided.vec319 = shufflevector <16 x float> %wide.vec318, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep320 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep317, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec319, <4 x ptr> align 4 %wide.gep320, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next321 = add nuw i64 %index315, 4       ; 2 uses
  %ptr.ind322 = getelementptr i8, ptr %pointer.phi316, i64 64
  %i.agp = icmp eq i64 %index.next321, %n.vec313
  br i1 %i.agp, label %vec.epilog.scalar.ph308.preheader, label %vec.epilog.vector.body314, !llvm.loop !676

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph308
  br i1 %exitcond214.not, label %iter.check.preheader, label %iter.check306.1

iter.check306.1:                                  ; preds = %._crit_edge
  br i1 %min.iters.check279.1, label %vec.epilog.scalar.ph308.preheader.1, label %vector.main.loop.iter.check280.1

vector.main.loop.iter.check280.1:                 ; preds = %iter.check306.1
  br i1 %min.iters.check281.1, label %vec.epilog.ph310.1, label %vector.ph282.1

vector.ph282.1:                                   ; preds = %vector.main.loop.iter.check280.1
  %i.agq = getelementptr i8, ptr %i.ahj, i64 %i.ads ; 2 uses
  br label %vector.body284.1

vector.body284.1:                                 ; preds = %vector.body284.1, %vector.ph282.1
  %index285.1 = phi i64 [ 0, %vector.ph282.1 ], [ %index.next303.1, %vector.body284.1 ]
  %pointer.phi286.1 = phi ptr [ %i.ahj, %vector.ph282.1 ], [ %ptr.ind304.1, %vector.body284.1 ] ; 2 uses
  %vector.gep287.1 = getelementptr i8, ptr %pointer.phi286.1, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 8 uses
  %i.agr = extractelement <4 x ptr> %vector.gep287.1, i64 0
  %wide.vec291.1 = load <16 x float>, ptr %i.agr, align 4, !tbaa !12
  %strided.vec292.1 = shufflevector <16 x float> %wide.vec291.1, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ags = extractelement <4 x ptr> %vector.gep287.1, i64 0
  %i.agt = getelementptr i8, ptr %i.ags, i64 64
  %wide.vec293.1 = load <16 x float>, ptr %i.agt, align 4, !tbaa !12
  %strided.vec294.1 = shufflevector <16 x float> %wide.vec293.1, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.agu = extractelement <4 x ptr> %vector.gep287.1, i64 0
  %i.agv = getelementptr i8, ptr %i.agu, i64 128
  %wide.vec295.1 = load <16 x float>, ptr %i.agv, align 4, !tbaa !12
  %strided.vec296.1 = shufflevector <16 x float> %wide.vec295.1, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.agw = extractelement <4 x ptr> %vector.gep287.1, i64 0
  %i.agx = getelementptr i8, ptr %i.agw, i64 192
  %wide.vec297.1 = load <16 x float>, ptr %i.agx, align 4, !tbaa !12
  %strided.vec298.1 = shufflevector <16 x float> %wide.vec297.1, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep299.1 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep287.1, i64 12
  %wide.gep300.1 = getelementptr i8, <4 x ptr> %vector.gep287.1, i64 76
  %wide.gep301.1 = getelementptr i8, <4 x ptr> %vector.gep287.1, i64 140
  %wide.gep302.1 = getelementptr i8, <4 x ptr> %vector.gep287.1, i64 204
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec292.1, <4 x ptr> align 4 %wide.gep299.1, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec294.1, <4 x ptr> align 4 %wide.gep300.1, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec296.1, <4 x ptr> align 4 %wide.gep301.1, <4 x i1> splat (i1 true)), !tbaa !12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec298.1, <4 x ptr> align 4 %wide.gep302.1, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next303.1 = add nuw i64 %index285.1, 16  ; 2 uses
  %ptr.ind304.1 = getelementptr i8, ptr %pointer.phi286.1, i64 256
  %i.agy = icmp eq i64 %index.next303.1, %n.vec283.1
  br i1 %i.agy, label %vec.epilog.iter.check307.1, label %vector.body284.1, !llvm.loop !675

vec.epilog.iter.check307.1:                       ; preds = %vector.body284.1
  br i1 %min.epilog.iters.check309.1, label %vec.epilog.scalar.ph308.preheader.1, label %vec.epilog.ph310.1, !prof !138

vec.epilog.ph310.1:                               ; preds = %vec.epilog.iter.check307.1, %vector.main.loop.iter.check280.1
  %vec.epilog.resume.val311.1 = phi i64 [ %n.vec283.1, %vec.epilog.iter.check307.1 ], [ 0, %vector.main.loop.iter.check280.1 ]
  %bc.resume.val312.1 = phi ptr [ %i.agq, %vec.epilog.iter.check307.1 ], [ %i.ahj, %vector.main.loop.iter.check280.1 ]
  %i.agz = getelementptr i8, ptr %i.ahj, i64 %i.adx
  br label %vec.epilog.vector.body314.1

vec.epilog.vector.body314.1:                      ; preds = %vec.epilog.vector.body314.1, %vec.epilog.ph310.1
  %index315.1 = phi i64 [ %vec.epilog.resume.val311.1, %vec.epilog.ph310.1 ], [ %index.next321.1, %vec.epilog.vector.body314.1 ]
  %pointer.phi316.1 = phi ptr [ %bc.resume.val312.1, %vec.epilog.ph310.1 ], [ %ptr.ind322.1, %vec.epilog.vector.body314.1 ] ; 2 uses
  %vector.gep317.1 = getelementptr i8, ptr %pointer.phi316.1, <4 x i64> <i64 0, i64 16, i64 32, i64 48> ; 2 uses
  %i.aha = extractelement <4 x ptr> %vector.gep317.1, i64 0
  %wide.vec318.1 = load <16 x float>, ptr %i.aha, align 4, !tbaa !12
  %strided.vec319.1 = shufflevector <16 x float> %wide.vec318.1, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.gep320.1 = getelementptr inbounds nuw i8, <4 x ptr> %vector.gep317.1, i64 12
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec319.1, <4 x ptr> align 4 %wide.gep320.1, <4 x i1> splat (i1 true)), !tbaa !12
  %index.next321.1 = add nuw i64 %index315.1, 4   ; 2 uses
  %ptr.ind322.1 = getelementptr i8, ptr %pointer.phi316.1, i64 64
  %i.ahb = icmp eq i64 %index.next321.1, %n.vec313.1
  br i1 %i.ahb, label %vec.epilog.scalar.ph308.preheader.1, label %vec.epilog.vector.body314.1, !llvm.loop !676

vec.epilog.scalar.ph308.preheader.1:              ; preds = %vec.epilog.vector.body314.1, %vec.epilog.iter.check307.1, %iter.check306.1
  %.1177.ph.1 = phi ptr [ %i.ahj, %iter.check306.1 ], [ %i.agq, %vec.epilog.iter.check307.1 ], [ %i.agz, %vec.epilog.vector.body314.1 ]
  %.0149176.ph.1 = phi i32 [ 0, %iter.check306.1 ], [ %i.adt, %vec.epilog.iter.check307.1 ], [ %i.ady, %vec.epilog.vector.body314.1 ]
  br label %vec.epilog.scalar.ph308.1

vec.epilog.scalar.ph308.1:                        ; preds = %vec.epilog.scalar.ph308.1, %vec.epilog.scalar.ph308.preheader.1
  %.1177.1957 = phi ptr [ %i.ahf, %vec.epilog.scalar.ph308.1 ], [ %.1177.ph.1, %vec.epilog.scalar.ph308.preheader.1 ] ; 3 uses
  %.0149176.1958 = phi i32 [ %i.ahe, %vec.epilog.scalar.ph308.1 ], [ %.0149176.ph.1, %vec.epilog.scalar.ph308.preheader.1 ]
  %i.ahc = load float, ptr %.1177.1957, align 4, !tbaa !12
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1177.1957, i64 12
  store float %i.ahc, ptr %i.ahd, align 4, !tbaa !12
  %i.ahe = add nuw nsw i32 %.0149176.1958, 1      ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1177.1957, i64 16
  %exitcond.not.1 = icmp eq i32 %i.ahe, %1
  br i1 %exitcond.not.1, label %iter.check.preheader, label %vec.epilog.scalar.ph308.1, !llvm.loop !677

iter.check.preheader:                             ; preds = %vec.epilog.scalar.ph308.1, %._crit_edge
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph308:                          ; preds = %vec.epilog.scalar.ph308.preheader, %vec.epilog.scalar.ph308
  %.1177 = phi ptr [ %i.ahj, %vec.epilog.scalar.ph308 ], [ %.1177.ph, %vec.epilog.scalar.ph308.preheader ] ; 3 uses
  %.0149176 = phi i32 [ %i.ahi, %vec.epilog.scalar.ph308 ], [ %.0149176.ph, %vec.epilog.scalar.ph308.preheader ]
  %i.ahg = load float, ptr %.1177, align 4, !tbaa !12
  %i.ahh = getelementptr inbounds nuw i8, ptr %.1177, i64 12
  store float %i.ahg, ptr %i.ahh, align 4, !tbaa !12
  %i.ahi = add nuw nsw i32 %.0149176, 1           ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %.1177, i64 16 ; 6 uses
  %exitcond.not = icmp eq i32 %i.ahi, %1
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph308, !llvm.loop !677
}

declare void @dt_iop_clip_and_zoom_roi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [9 x [9 x float]], align 16       ; 7 uses
  %i.b = tail call noalias dereferenceable_or_null(224) ptr @malloc(i64 noundef 224) #28 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.b, ptr %i.c, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <8 x i32> splat (i32 -999), ptr %i.b, align 8, !tbaa !15
  store <8 x i32> splat (i32 -999), ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store <8 x i32> splat (i32 -999), ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store <8 x i32> splat (i32 -999), ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store <8 x i32> splat (i32 -999), ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store <8 x i32> splat (i32 -999), ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store <4 x i32> splat (i32 -999), ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 -999, ptr %i.j, align 8, !tbaa !686
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef 32768) #27 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr %i.k, ptr %i.l, align 8, !tbaa !145
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  br label %bb.c

bb.b:                                             ; preds = %_calc_9x9_gauss_coeffs.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_calc_9x9_gauss_coeffs.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_calc_9x9_gauss_coeffs.exit ] ; 3 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = fmul reassoc nnan nsz arcp contract afn float %i.r, f0x3C23D70A ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, 1.000000e-07
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float 1.000000e-07, float %i.s ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 6.600000e-01
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.v, float 6.250000e+00, float 2.025000e+01 ; 5 uses
  %i.w = fmul reassoc nnan nsz arcp contract afn float %i.u, %i.u ; 9 uses
  %i.x = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.y = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.z = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.aa = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.ab = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.ac = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.ad = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.ae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  %i.af = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.w
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.u, %bb.c
  %indvars.iv.i = phi i64 [ -4, %bb.c ], [ %indvars.iv.next.i, %bb.u ] ; 4 uses
  %.03440.i = phi float [ 0.000000e+00, %bb.c ], [ %.2.8.i, %bb.u ] ; 2 uses
  %i.ag = mul nsw i64 %indvars.iv.i, %indvars.iv.i
  %i.ah = getelementptr [36 x i8], ptr %i.a, i64 %indvars.iv.i ; 9 uses
  %i.ai = trunc i64 %i.ag to i32                  ; 5 uses
  %i.aj = add i32 %i.ai, 16
  %i.ak = uitofp nsz nneg i32 %i.aj to float      ; 3 uses
  %i.al = fcmp reassoc nsz arcp contract afn ult float %spec.select.i, %i.ak ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader37.i
  %i.am = fmul reassoc nnan nsz arcp contract afn float %i.ak, -5.000000e-01
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.x
  %i.ao = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.an) ; 2 uses
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, %.03440.i
  br label %bb.e

bb.e:                                             ; preds = %.preheader37.i, %bb.d
  %.sink = phi float [ %i.ao, %bb.d ], [ 0.000000e+00, %.preheader37.i ]
  %.2.i = phi nsz float [ %i.ap, %bb.d ], [ %.03440.i, %.preheader37.i ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ah, i64 144
  store float %.sink, ptr %i.aq, align 4, !tbaa !12
  %i.ar = add i32 %i.ai, 9
  %i.as = uitofp nsz nneg i32 %i.ar to float      ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ult float %spec.select.i, %i.as ; 2 uses
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = fmul reassoc nnan nsz arcp contract afn float %i.as, -5.000000e-01
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.y
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.av) ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn float %.2.i, %i.aw
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink79 = phi float [ %i.aw, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.2.1.i = phi nsz float [ %i.ax, %bb.f ], [ %.2.i, %bb.e ] ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ah, i64 148
  store float %.sink79, ptr %i.ay, align 4, !tbaa !12
  %i.az = add i32 %i.ai, 4
  %i.ba = uitofp nsz nneg i32 %i.az to float      ; 3 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ult float %spec.select.i, %i.ba ; 2 uses
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.ba, -5.000000e-01
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.z
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bd) ; 2 uses
  %i.bf = fadd reassoc nsz arcp contract afn float %.2.1.i, %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink80 = phi float [ %i.be, %bb.h ], [ 0.000000e+00, %bb.g ]
  %.2.2.i = phi nsz float [ %i.bf, %bb.h ], [ %.2.1.i, %bb.g ] ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ah, i64 152
  store float %.sink80, ptr %i.bg, align 4, !tbaa !12
  %i.bh = add i32 %i.ai, 1
  %i.bi = uitofp nsz nneg i32 %i.bh to float      ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn ult float %spec.select.i, %i.bi ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.bi, -5.000000e-01
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %i.aa
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bl) ; 2 uses
  %i.bn = fadd reassoc nsz arcp contract afn float %.2.2.i, %i.bm
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink81 = phi float [ %i.bm, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.2.3.i = phi nsz float [ %i.bn, %bb.j ], [ %.2.2.i, %bb.i ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ah, i64 156
  store float %.sink81, ptr %i.bo, align 4, !tbaa !12
  %i.bp = uitofp nsz nneg i32 %i.ai to float      ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ult float %spec.select.i, %i.bp
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = fmul reassoc nnan nsz arcp contract afn float %i.bp, -5.000000e-01
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.ab
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bs) ; 2 uses
  %i.bu = fadd reassoc nsz arcp contract afn float %.2.3.i, %i.bt
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink82 = phi float [ %i.bt, %bb.l ], [ 0.000000e+00, %bb.k ]
  %.2.4.i = phi nsz float [ %i.bu, %bb.l ], [ %.2.3.i, %bb.k ] ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ah, i64 160
  store float %.sink82, ptr %i.bv, align 4, !tbaa !12
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bi, -5.000000e-01
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.ac
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bx) ; 2 uses
  %i.bz = fadd reassoc nsz arcp contract afn float %.2.4.i, %i.by
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink83 = phi float [ %i.by, %bb.n ], [ 0.000000e+00, %bb.m ]
  %.2.5.i = phi nsz float [ %i.bz, %bb.n ], [ %.2.4.i, %bb.m ] ; 2 uses
  %i.ca = getelementptr i8, ptr %i.ah, i64 164
  store float %.sink83, ptr %i.ca, align 4, !tbaa !12
  br i1 %i.bb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.ba, -5.000000e-01
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.ad
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cc) ; 2 uses
  %i.ce = fadd reassoc nsz arcp contract afn float %.2.5.i, %i.cd
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink84 = phi float [ %i.cd, %bb.p ], [ 0.000000e+00, %bb.o ]
  %.2.6.i = phi nsz float [ %i.ce, %bb.p ], [ %.2.5.i, %bb.o ] ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ah, i64 168
  store float %.sink84, ptr %i.cf, align 4, !tbaa !12
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.as, -5.000000e-01
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.ae
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ch) ; 2 uses
  %i.cj = fadd reassoc nsz arcp contract afn float %.2.6.i, %i.ci
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.sink85 = phi float [ %i.ci, %bb.r ], [ 0.000000e+00, %bb.q ]
  %.2.7.i = phi nsz float [ %i.cj, %bb.r ], [ %.2.6.i, %bb.q ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ah, i64 172
  store float %.sink85, ptr %i.ck, align 4, !tbaa !12
  br i1 %i.al, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = fmul reassoc nnan nsz arcp contract afn float %i.ak, -5.000000e-01
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.af
  %i.cn = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.cm) ; 2 uses
  %i.co = fadd reassoc nsz arcp contract afn float %.2.7.i, %i.cn
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink86 = phi float [ %i.cn, %bb.t ], [ 0.000000e+00, %bb.s ]
  %.2.8.i = phi nsz float [ %i.co, %bb.t ], [ %.2.7.i, %bb.s ] ; 3 uses
  %i.cp = getelementptr i8, ptr %i.ah, i64 176
  store float %.sink86, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %_calc_9x9_gauss_coeffs.exit, label %.preheader37.i

_calc_9x9_gauss_coeffs.exit:                      ; preds = %bb.u
  %.idx = shl nuw nsw i64 %indvars.iv, 7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 4 uses
  %i.cr = load <12 x float>, ptr %i.m, align 16, !tbaa !12
  %i.cs = shufflevector <12 x float> %i.cr, <12 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 10, i32 11>
  %i.ct = insertelement <8 x float> poison, float %.2.8.i, i64 0
  %i.cu = shufflevector <8 x float> %i.ct, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.cv = fdiv reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cu
  store <8 x float> %i.cv, ptr %i.cq, align 64, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cx = load <16 x float>, ptr %i.n, align 16, !tbaa !12
  %i.cy = shufflevector <16 x float> %i.cx, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 6, i32 7, i32 8, i32 9, i32 10, i32 15>
  %i.cz = fdiv reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cu
  store <8 x float> %i.cz, ptr %i.cw, align 32, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.db = load <12 x float>, ptr %i.o, align 16, !tbaa !12
  %i.dc = shufflevector <12 x float> %i.db, <12 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> %i.dc, %i.cu
  store <8 x float> %i.dd, ptr %i.da, align 64, !tbaa !12
  %i.de = load float, ptr %i.p, align 16, !tbaa !12
  %i.df = fdiv reassoc nsz arcp contract afn float %i.de, %.2.8.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  store float %i.df, ptr %i.dg, align 32, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145
  tail call void @free(ptr noundef %i.d) #27
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @free(ptr noundef %i.e) #27
  store ptr null, ptr %i.a, align 8, !tbaa !149
  %i.f = load ptr, ptr @lmmse_gamma_in, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.f) #27
  %i.g = load ptr, ptr @lmmse_gamma_out, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.g) #27
  store ptr null, ptr @lmmse_gamma_in, align 8, !tbaa !140
  store ptr null, ptr @lmmse_gamma_out, align 8, !tbaa !140
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 2 uses
  %i.d = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.c) #27
  %i.e = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.c) #27
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp ne i32 %i.d, 0                      ; 4 uses
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.h, align 16, !tbaa !687
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %1, align 4, !tbaa !688
  store i32 %i.i, ptr %i.b, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !689
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !690
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store float %i.n, ptr %i.o, align 8, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !691
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !150  ; 4 uses
  %i.w = load <4 x float>, ptr %i.p, align 4, !tbaa !12
  store <4 x float> %i.w, ptr %i.q, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load float, ptr %i.x, align 4, !tbaa !692
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store float %i.y, ptr %i.z, align 4, !tbaa !142
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !693 ; 2 uses
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to float
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.af, i32 4)
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.ag, 6.500000e-05
  %i.ai = fptosi float %i.ah to i32
  %i.aj = add nsw i32 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !143
  %i.al = and i32 %i.v, 1024
  %i.am = and i32 %i.v, 2048                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1540
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !694
  %i.ar = and i32 %i.aq, 16384
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1608
  %i.at = load i32, ptr %i.as, align 8, !tbaa !695
  %i.au = icmp eq i32 %i.at, 9                    ; 2 uses
  %i.av = icmp ne i32 %i.ar, 0                    ; 4 uses
  %or.cond3 = select i1 %i.au, i1 true, i1 %i.av
  %i.aw = select i1 %or.cond3, i1 true, i1 %i.g
  %spec.select = xor i1 %i.aw, true
  %.not92 = xor i1 %i.au, true
  %i.ax = add i32 %i.v, -3
  %i.ay = icmp ult i32 %i.ax, 2                   ; 2 uses
  %i.az = icmp ne i32 %i.al, 0                    ; 2 uses
  %or.cond5 = select i1 %spec.select, i1 %i.az, i1 false
  %i.ba = or disjoint i32 %i.am, 5
  %.0 = select i1 %or.cond5, i32 %i.ba, i32 %i.v
  %or.cond7 = select i1 %.not92, i1 true, i1 %i.az
  %.not = icmp eq i32 %i.am, 0
  %i.bb = select i1 %.not, i32 1025, i32 3074
  %.1 = select i1 %or.cond7, i32 %.0, i32 %i.bb
  %.not93 = xor i1 %i.av, true
  %or.cond9 = select i1 %.not93, i1 true, i1 %i.ay
  %.2 = select i1 %or.cond9, i32 %.1, i32 2
  %.3 = select i1 %i.g, i32 7, i32 %.2            ; 3 uses
  %i.bc = icmp eq i32 %.3, 1027
  %spec.store.select = select i1 %i.bc, i32 3, i32 %.3 ; 2 uses
  %i.bd = icmp eq i32 %spec.store.select, 1029
  %spec.store.select14 = select i1 %i.bd, i32 4, i32 %spec.store.select ; 3 uses
  %.not89 = icmp eq i32 %spec.store.select14, 0
  br i1 %.not89, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %i.o, align 8, !tbaa !141
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %or.cond11 = select i1 %i.ay, i1 true, i1 %i.av
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.g
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 8, !tbaa !123
  store i32 0, ptr %i.l, align 4, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.be = and i32 %spec.store.select14, 2048
  %.not90 = icmp eq i32 %i.be, 0
  br i1 %.not90, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.l, align 4, !tbaa !146
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %spec.store.select14, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 216
  switch i32 %.3, label %bb.j [
    i32 1, label %bb.k
    i32 6, label %bb.k
    i32 2049, label %bb.k
    i32 1028, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.j
  %.sink = phi i32 [ 1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ]
  store i32 %.sink, ptr %i.bg, align 8, !tbaa !696
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.bh, align 8, !tbaa !696
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 1904
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  %i.bl = tail call i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef nonnull %i.bi, ptr noundef null, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bk, ptr noundef null) #27
  %.not91 = icmp eq i32 %i.bl, 0
  br i1 %.not91, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1104 ; 2 uses
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.bn) #27
  %i.bo = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #27
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.bo, ptr noundef nonnull %i.bn) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  ret void
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #12

declare i32 @dt_colorspaces_conversion_matrices_rgb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152) ptr @malloc(i64 noundef 152) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !56
  tail call void @free(ptr noundef %i.b) #27
  store ptr null, ptr %i.a, align 16, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((488, 492), (676, 680)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !697 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !57  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %i.h = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.g) #27
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @dt_image_is_mono_sraw(ptr noundef nonnull %i.g) #27
  %.not25 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not25, i32 3, i32 7
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !150
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1608
  %i.m = load i32, ptr %i.l, align 8, !tbaa !152
  %i.n = icmp eq i32 %i.m, 9
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1025, ptr %i.o, align 4, !tbaa !150
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1540
  %i.q = load i32, ptr %i.p, align 4, !tbaa !58
  %i.r = and i32 %i.q, 16384
  %.not24 = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.s, align 4, !tbaa !150
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 5, ptr %i.s, align 4, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.val = load ptr, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_get_variance_threshold.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 1860
  %i.u = load i32, ptr %i.t, align 4, !tbaa !127
  %i.v = icmp ugt i32 %i.u, 4096
  %spec.select18.i = select nsz i1 %i.v, float 3.300000e-01, float 4.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 132
  %i.x = load float, ptr %i.w, align 4, !tbaa !124 ; 3 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, 1.000000e+03
  br i1 %i.y, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+02
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = fmul reassoc nsz arcp contract afn float %i.x, 1.200000e-04
end_hunk_4
