Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rgbcurve?download=true
inline.NumInlined: 134
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_area_draw_callback:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.by, i64 432
  %wide.load.6 = load <8 x i16>, ptr %i.fp, align 2, !tbaa !153
  %wide.load601.6 = load <8 x i16>, ptr %i.fq, align 2, !tbaa !153
  %wide.load602.6 = load <8 x i16>, ptr %i.fr, align 2, !tbaa !153
  %wide.load603.6 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !153
  %i.ft = uitofp <8 x i16> %wide.load.6 to <8 x float>
  %i.fu = uitofp <8 x i16> %wide.load601.6 to <8 x float>
  %i.fv = uitofp <8 x i16> %wide.load602.6 to <8 x float>
  %i.fw = uitofp <8 x i16> %wide.load603.6 to <8 x float>
  %i.fx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ft, splat (float f0x37800000)
  %i.fy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fu, splat (float f0x37800000)
  %i.fz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fv, splat (float f0x37800000)
  %i.ga = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fw, splat (float f0x37800000)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 900
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 932
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 964
  %i.ge = getelementptr inbounds nuw i8, ptr %i.g, i64 996
  store <8 x float> %i.fx, ptr %i.gb, align 4, !tbaa !16
  store <8 x float> %i.fy, ptr %i.gc, align 4, !tbaa !16
  store <8 x float> %i.fz, ptr %i.gd, align 4, !tbaa !16
  store <8 x float> %i.ga, ptr %i.ge, align 4, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.by, i64 448
  %i.gg = getelementptr inbounds nuw i8, ptr %i.by, i64 464
  %i.gh = getelementptr inbounds nuw i8, ptr %i.by, i64 480
  %i.gi = getelementptr inbounds nuw i8, ptr %i.by, i64 496
  %wide.load.7 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !153
  %wide.load601.7 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !153
  %wide.load602.7 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !153
  %wide.load603.7 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !153
  %i.gj = uitofp <8 x i16> %wide.load.7 to <8 x float>
  %i.gk = uitofp <8 x i16> %wide.load601.7 to <8 x float>
  %i.gl = uitofp <8 x i16> %wide.load602.7 to <8 x float>
  %i.gm = uitofp <8 x i16> %wide.load603.7 to <8 x float>
  %i.gn = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gj, splat (float f0x37800000)
  %i.go = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gk, splat (float f0x37800000)
  %i.gp = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gl, splat (float f0x37800000)
  %i.gq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gm, splat (float f0x37800000)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 1028
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 1060
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 1092
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 1124
  store <8 x float> %i.gn, ptr %i.gr, align 4, !tbaa !16
  store <8 x float> %i.go, ptr %i.gs, align 4, !tbaa !16
  store <8 x float> %i.gp, ptr %i.gt, align 4, !tbaa !16
  store <8 x float> %i.gq, ptr %i.gu, align 4, !tbaa !16
  %i.gv = sext i32 %i.p to i64
  %i.gw = getelementptr [8 x i8], ptr %i.s, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !24 ; 12 uses
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, f0x3F333333
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gy, 8.000000e-01
  %i.hb = fmul reassoc nsz arcp contract afn float %i.gy, f0x3F666666
  %i.hc = fmul reassoc nsz arcp contract afn float %i.gy, 1.792000e+02
  %i.hd = fptosi float %i.hc to i32
  %i.he = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 0)
  %i.hf = tail call i32 @llvm.umin.i32(i32 %i.he, i32 255)
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !16
  %i.hj = fmul reassoc nsz arcp contract afn float %i.gy, 2.048000e+02
  %i.hk = fptosi float %i.hj to i32
  %i.hl = tail call i32 @llvm.smax.i32(i32 %i.hk, i32 0)
  %i.hm = tail call i32 @llvm.umin.i32(i32 %i.hl, i32 255)
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !16
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gy, 2.304000e+02
  %i.hr = fptosi float %i.hq to i32
  %i.hs = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.hs, i32 255)
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !16
  %i.hx = fmul reassoc nsz arcp contract afn float %i.gy, 2.560000e+02
  %i.hy = fptosi float %i.hx to i32
  %i.hz = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 255)
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !16 ; 4 uses
  %i.ie = fdiv reassoc nsz arcp contract afn float %i.hi, %i.id ; 2 uses
  %i.if = fdiv reassoc nsz arcp contract afn float %i.gz, %i.gy ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ogt float %i.ie, 0.000000e+00
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %i.if, 0.000000e+00
  %or.cond.i = and i1 %i.ih, %i.ig
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit519
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ie)
  %i.ij = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.if)
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ii, %i.ij
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit519
  %.135.i = phi nsz float [ %i.ik, %bb.d ], [ 0.000000e+00, %.loopexit519 ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.d ], [ 0, %.loopexit519 ] ; 2 uses
  %i.il = fdiv reassoc nsz arcp contract afn float %i.hp, %i.id ; 2 uses
  %i.im = fdiv reassoc nsz arcp contract afn float %i.ha, %i.gy ; 2 uses
  %i.in = fcmp reassoc nsz arcp contract afn ogt float %i.il, 0.000000e+00
  %i.io = fcmp reassoc nsz arcp contract afn ogt float %i.im, 0.000000e+00
  %or.cond.1.i = and i1 %i.io, %i.in
  br i1 %or.cond.1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ip = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.il)
  %i.iq = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.im)
  %i.ir = fdiv reassoc nsz arcp contract afn float %i.ip, %i.iq
  %i.is = fadd reassoc nsz arcp contract afn float %.135.i, %i.ir
  %i.it = add nuw nsw i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.135.1.i = phi nsz float [ %i.is, %bb.f ], [ %.135.i, %bb.e ] ; 2 uses
  %.1.1.i = phi i32 [ %i.it, %bb.f ], [ %.1.i, %bb.e ] ; 2 uses
  %i.iu = fdiv reassoc nsz arcp contract afn float %i.hw, %i.id ; 2 uses
  %i.iv = fdiv reassoc nsz arcp contract afn float %i.hb, %i.gy ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt float %i.iu, 0.000000e+00
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.iv, 0.000000e+00
  %or.cond.2.i = and i1 %i.ix, %i.iw
  br i1 %or.cond.2.i, label %bb.h, label %dt_iop_estimate_exp.exit

bb.h:                                             ; preds = %bb.g
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iu)
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.iv)
  %i.ja = fdiv reassoc nsz arcp contract afn float %i.iy, %i.iz
  %i.jb = fadd reassoc nsz arcp contract afn float %.135.1.i, %i.ja
  %i.jc = add nuw nsw i32 %.1.1.i, 1
  br label %dt_iop_estimate_exp.exit

dt_iop_estimate_exp.exit:                         ; preds = %bb.g, %bb.h
  %.135.2.i = phi nsz float [ %i.jb, %bb.h ], [ %.135.1.i, %bb.g ]
  %.1.2.i = phi i32 [ %i.jc, %bb.h ], [ %.1.1.i, %bb.g ] ; 2 uses
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1432
  %i.jf = load double, ptr %i.je, align 8, !tbaa !152
  %i.jg = fptosi double %i.jf to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #24
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !195 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !196 ; 2 uses
  %i.jl = sitofp reassoc nsz arcp contract afn i32 %i.ji to double
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1440
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !197 ; 2 uses
  %i.jp = fmul reassoc nsz arcp contract afn double %i.jo, %i.jl
  %i.jq = fptosi double %i.jp to i32
  %i.jr = sitofp reassoc nsz arcp contract afn i32 %i.jk to double
  %i.js = fmul reassoc nsz arcp contract afn double %i.jo, %i.jr
  %i.jt = fptosi double %i.js to i32
  %i.ju = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.jq, i32 noundef %i.jt) #24 ; 4 uses
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1440
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !197 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.ju, double noundef %i.jx, double noundef %i.jx) #24
  %i.jy = call ptr @cairo_create(ptr noundef %i.ju) #24 ; 137 uses
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #24
  call void @cairo_paint(ptr noundef %i.jy) #24
  %i.jz = sitofp reassoc nsz arcp contract afn i32 %i.jg to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.jy, double noundef %i.jz, double noundef %i.jz) #24
  %i.ka = shl nsw i32 %i.jg, 1                    ; 2 uses
  %i.kb = sub nsw i32 %i.jk, %i.ka                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.kc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1432
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !152
  call void @cairo_set_line_width(ptr noundef %i.jy, double noundef %i.ke) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #24
  %i.kf = sitofp reassoc nsz arcp contract afn i32 %i.kb to double ; 8 uses
  %i.kg = sitofp reassoc nsz arcp contract afn i32 %i.kb to float ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.g, i64 3224 ; 15 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.g, i64 3228 ; 14 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 3232 ; 11 uses
  %i.kk = fneg reassoc nsz arcp contract afn float %i.kg ; 5 uses
  %.not.i = icmp eq i32 %.1.2.i, 0
  %i.kl = uitofp nneg i32 %.1.2.i to float
  %i.km = fdiv reassoc nsz arcp contract afn float %.135.2.i, %i.kl
  %.2.i = select nsz i1 %.not.i, float 1.000000e+00, float %i.km
  %i.kn = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.ji, i64 0
  %i.ko = insertelement <2 x i32> poison, i32 %i.ka, i64 0
  %i.kp = insertelement <2 x i32> %i.ko, i32 %i.kb, i64 1
  %i.kq = sub nsw <2 x i32> %i.kn, %i.kp          ; 4 uses
  %i.kr = extractelement <2 x i32> %i.kq, i64 0
  %i.ks = sitofp reassoc nsz arcp contract afn i32 %i.kr to double ; 8 uses
  call void @cairo_rectangle(ptr noundef %i.jy, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ks, double noundef %i.kf) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #24
  call void @cairo_rectangle(ptr noundef %i.jy, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ks, double noundef %i.kf) #24
  call void @cairo_fill(ptr noundef %i.jy) #24
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1432
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !152
  %i.kw = fmul reassoc nsz arcp contract afn double %i.kv, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.jy, double noundef %i.kw) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #24
  call void @cairo_translate(ptr noundef %i.jy, double noundef 0.000000e+00, double noundef %i.kf) #24
  %i.kx = load float, ptr %i.kh, align 8, !tbaa !154 ; 4 uses
  %i.ky = load float, ptr %i.ki, align 4, !tbaa !155 ; 5 uses
  %i.kz = load float, ptr %i.kj, align 8, !tbaa !131 ; 5 uses
  %i.la = sitofp reassoc nsz arcp contract afn <2 x i32> %i.kq to <2 x float> ; 3 uses
  %i.lb = extractelement <2 x float> %i.la, i64 0 ; 16 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.kx, %i.lb ; 4 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.kx, %i.kg
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.kz
  %i.lf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.kz
  %i.lg = fmul reassoc nsz arcp contract afn float %i.kx, %i.kk ; 4 uses
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lf, %i.lg
  %i.li = fpext reassoc nsz arcp contract afn float %i.le to double ; 3 uses
  %i.lj = fpext reassoc nsz arcp contract afn float %i.lh to double ; 3 uses
  %factor.op.fmul.i = fneg reassoc nsz arcp contract afn float %i.lb ; 3 uses
  %factor.op.fmul47.i = fmul reassoc nsz arcp contract afn float %i.kx, %factor.op.fmul.i
  %.reass.reass.i = fmul reassoc nsz arcp contract afn float %factor.op.fmul47.i, %i.ky
  %i.lk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ky
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, %i.lc
  %i.lm = fpext reassoc nsz arcp contract afn float %.reass.reass.i to double ; 3 uses
  %i.ln = fpext reassoc nsz arcp contract afn float %i.ll to double ; 3 uses
  %i.lo = fsub reassoc nsz arcp contract afn float 2.500000e-01, %i.ky
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, %i.lc
  %i.lq = fpext reassoc nsz arcp contract afn float %i.lp to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.lq, double noundef %i.li) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.lq, double noundef %i.lj) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.lr = fsub reassoc nsz arcp contract afn float 2.500000e-01, %i.kz
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lr, %i.lg
  %i.lt = fpext reassoc nsz arcp contract afn float %i.ls to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.lm, double noundef %i.lt) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.ln, double noundef %i.lt) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.lu = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ky
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.lc
  %i.lw = fpext reassoc nsz arcp contract afn float %i.lv to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.lw, double noundef %i.li) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.lw, double noundef %i.lj) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.lx = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kz
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lx, %i.lg
  %i.lz = fpext reassoc nsz arcp contract afn float %i.ly to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.lm, double noundef %i.lz) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.ln, double noundef %i.lz) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.ma = fsub reassoc nsz arcp contract afn float 7.500000e-01, %i.ky
  %i.mb = fmul reassoc nsz arcp contract afn float %i.ma, %i.lc
  %i.mc = fpext reassoc nsz arcp contract afn float %i.mb to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mc, double noundef %i.li) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mc, double noundef %i.lj) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.md = fsub reassoc nsz arcp contract afn float 7.500000e-01, %i.kz
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, %i.lg
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.lm, double noundef %i.mf) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.ln, double noundef %i.mf) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._area_draw_callback.dashed, i64 16, i1 false)
  call void @cairo_set_dash(ptr noundef %i.jy, ptr noundef nonnull %i.b, i32 noundef 2, double noundef 0.000000e+00) #24
  %i.mg = load float, ptr %i.kh, align 8, !tbaa !154 ; 4 uses
  %i.mh = load float, ptr %i.ki, align 4, !tbaa !155 ; 9 uses
  %i.mi = load float, ptr %i.kj, align 8, !tbaa !131 ; 9 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mg, %i.lb ; 8 uses
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mg, %i.kg
  %i.ml = fmul reassoc nsz arcp contract afn float %i.mk, %i.mi
  %i.mm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.mi
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mg, %i.kk ; 8 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mm, %i.mn
  %i.mp = fpext reassoc nsz arcp contract afn float %i.ml to double ; 7 uses
  %i.mq = fpext reassoc nsz arcp contract afn float %i.mo to double ; 7 uses
  %factor.op.fmul47.i478 = fmul reassoc nsz arcp contract afn float %i.mg, %factor.op.fmul.i
  %.reass.reass.i479 = fmul reassoc nsz arcp contract afn float %factor.op.fmul47.i478, %i.mh
  %i.mr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.mh
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.mj
  %i.mt = fpext reassoc nsz arcp contract afn float %.reass.reass.i479 to double ; 7 uses
  %i.mu = fpext reassoc nsz arcp contract afn float %i.ms to double ; 7 uses
  %i.mv = fsub reassoc nsz arcp contract afn float 1.250000e-01, %i.mh
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, %i.mj
  %i.mx = fpext reassoc nsz arcp contract afn float %i.mw to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mx, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mx, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.my = fsub reassoc nsz arcp contract afn float 1.250000e-01, %i.mi
  %i.mz = fmul reassoc nsz arcp contract afn float %i.my, %i.mn
  %i.na = fpext reassoc nsz arcp contract afn float %i.mz to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.na) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.na) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nb = fsub reassoc nsz arcp contract afn float 2.500000e-01, %i.mh
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.mj
  %i.nd = fpext reassoc nsz arcp contract afn float %i.nc to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.nd, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.nd, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.ne = fsub reassoc nsz arcp contract afn float 2.500000e-01, %i.mi
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.mn
  %i.ng = fpext reassoc nsz arcp contract afn float %i.nf to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.ng) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.ng) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nh = fsub reassoc nsz arcp contract afn float 3.750000e-01, %i.mh
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, %i.mj
  %i.nj = fpext reassoc nsz arcp contract afn float %i.ni to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.nj, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.nj, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nk = fsub reassoc nsz arcp contract afn float 3.750000e-01, %i.mi
  %i.nl = fmul reassoc nsz arcp contract afn float %i.nk, %i.mn
  %i.nm = fpext reassoc nsz arcp contract afn float %i.nl to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.nm) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.nm) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nn = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.mh
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %i.mj
  %i.np = fpext reassoc nsz arcp contract afn float %i.no to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.np, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.np, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nq = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.mi
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.mn
  %i.ns = fpext reassoc nsz arcp contract afn float %i.nr to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.ns) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.ns) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nt = fsub reassoc nsz arcp contract afn float 6.250000e-01, %i.mh
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %i.mj
  %i.nv = fpext reassoc nsz arcp contract afn float %i.nu to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.nv, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.nv, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nw = fsub reassoc nsz arcp contract afn float 6.250000e-01, %i.mi
  %i.nx = fmul reassoc nsz arcp contract afn float %i.nw, %i.mn
  %i.ny = fpext reassoc nsz arcp contract afn float %i.nx to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.ny) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.ny) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.nz = fsub reassoc nsz arcp contract afn float 7.500000e-01, %i.mh
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nz, %i.mj
  %i.ob = fpext reassoc nsz arcp contract afn float %i.oa to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.ob, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.ob, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.oc = fsub reassoc nsz arcp contract afn float 7.500000e-01, %i.mi
  %i.od = fmul reassoc nsz arcp contract afn float %i.oc, %i.mn
  %i.oe = fpext reassoc nsz arcp contract afn float %i.od to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.oe) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.oe) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.of = fsub reassoc nsz arcp contract afn float 8.750000e-01, %i.mh
  %i.og = fmul reassoc nsz arcp contract afn float %i.of, %i.mj
  %i.oh = fpext reassoc nsz arcp contract afn float %i.og to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.oh, double noundef %i.mp) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.oh, double noundef %i.mq) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.oi = fsub reassoc nsz arcp contract afn float 8.750000e-01, %i.mi
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oi, %i.mn
  %i.ok = fpext reassoc nsz arcp contract afn float %i.oj to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.mt, double noundef %i.ok) #24
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.mu, double noundef %i.ok) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @cairo_set_dash(ptr noundef %i.jy, ptr noundef nonnull %i.b, i32 noundef 0, double noundef 0.000000e+00) #24
  %i.ol = load float, ptr %i.kh, align 8, !tbaa !154 ; 2 uses
  %i.om = load float, ptr %i.ki, align 4, !tbaa !155
  %i.on = fmul reassoc nsz arcp contract afn float %i.ol, %factor.op.fmul.i
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %i.om
  %i.op = fpext reassoc nsz arcp contract afn float %i.oo to double
  %i.oq = load float, ptr %i.kj, align 8, !tbaa !131
  %i.or = extractelement <2 x float> %i.la, i64 1 ; 3 uses
  %i.os = fneg reassoc nsz arcp contract afn float %i.or
  %i.ot = fmul reassoc nsz arcp contract afn float %i.ol, %i.os
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.oq
  %i.ov = fpext reassoc nsz arcp contract afn float %i.ou to double
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.op, double noundef %i.ov) #24
  %i.ow = load float, ptr %i.kh, align 8, !tbaa !154 ; 2 uses
  %i.ox = load float, ptr %i.ki, align 4, !tbaa !155
  %i.oy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ox
  %i.oz = fmul reassoc nsz arcp contract afn float %i.ow, %i.lb
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oz, %i.oy
  %i.pb = fpext reassoc nsz arcp contract afn float %i.pa to double
  %i.pc = load float, ptr %i.kj, align 8, !tbaa !131
  %i.pd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pc
  %i.pe = fmul reassoc nsz arcp contract afn float %i.ow, %i.or
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pe, %i.pd
  %i.pg = fpext reassoc nsz arcp contract afn float %i.pf to double
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.pb, double noundef %i.pg) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  %i.ph = icmp ne i32 %i.r, 1                     ; 2 uses
  %i.pi = icmp ne i32 %i.l, 0
  %or.cond = and i1 %i.pi, %i.ph
  br i1 %or.cond, label %bb.al, label %bb.i

bb.i:                                             ; preds = %dt_iop_estimate_exp.exit
  %i.pj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1432
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !152
  call void @cairo_set_line_width(ptr noundef %i.jy, double noundef %i.pl) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #24
  %i.pm = icmp sgt i32 %i.p, 0
  br i1 %i.pm, label %.lr.ph525, label %._crit_edge

.lr.ph525:                                        ; preds = %bb.i
  %wide.trip.count540 = zext nneg i32 %i.p to i64
  br label %bb.j

end_hunk_0
begin_hunk_1_@_area_draw_callback:bb.a
bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.yo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !210
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 336
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !222
  %i.yr = call ptr @pango_font_description_copy_static(ptr noundef %i.yq) #24 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.yr, i32 noundef 700) #24
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yr, double noundef 1.024000e+03) #24
  %i.ys = call ptr @pango_cairo_create_layout(ptr noundef %i.jy) #24 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.ys, ptr noundef %i.yr) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @.str.77, i64 24, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.ys, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ys, ptr noundef nonnull %5, ptr noundef null) #24
  %i.yt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !224
  %i.yv = sitofp reassoc nsz arcp contract afn i32 %i.yu to double
  %i.yw = fmul reassoc nnan nsz arcp contract afn double %i.ks, 1.024000e+03
  %i.yx = fdiv reassoc nsz arcp contract afn double %i.yw, %i.yv
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yr, double noundef %i.yx) #24
  call void @pango_layout_set_font_description(ptr noundef %i.ys, ptr noundef %i.yr) #24
  %i.yy = load float, ptr %i.kh, align 8, !tbaa !154
  %i.yz = fmul reassoc nsz arcp contract afn float %i.yy, 1.000000e+02
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, -1.000000e+02
  %i.zb = fptosi float %i.za to i32
  %i.zc = load <2 x float>, ptr %i.ki, align 4, !tbaa !16
  %i.zd = fmul reassoc nsz arcp contract afn <2 x float> %i.zc, splat (float 1.000000e+02) ; 2 uses
  %i.ze = extractelement <2 x float> %i.zd, i64 0
  %i.zf = fptosi float %i.ze to i32
  %i.zg = extractelement <2 x float> %i.zd, i64 1
  %i.zh = fptosi float %i.zg to i32
  %i.zi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.78, i32 noundef %i.zb, i32 noundef %i.zf, i32 noundef %i.zh) #24 ; 0 uses
  call void @cairo_set_source_rgba(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 5.000000e-01) #24
  call void @pango_layout_set_text(ptr noundef %i.ys, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ys, ptr noundef nonnull %5, ptr noundef null) #24
  %i.zj = fmul reassoc nnan nsz arcp contract afn float %i.lb, 9.800000e-01
  %i.zk = load i32, ptr %i.yt, align 4, !tbaa !224
  %i.zl = sitofp reassoc nsz arcp contract afn i32 %i.zk to float
  %i.zm = load i32, ptr %5, align 4, !tbaa !227
  %i.zn = sitofp reassoc nsz arcp contract afn i32 %i.zm to float
  %i.zo = fadd reassoc nsz arcp contract afn float %i.zl, %i.zn
  %i.zp = fsub reassoc nsz arcp contract afn float %i.zj, %i.zo
  %i.zq = fpext reassoc nsz arcp contract afn float %i.zp to double
  %i.zr = fmul reassoc nnan nsz arcp contract afn double %i.kf, -2.000000e-02
  %i.zs = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !225
  %i.zu = sitofp reassoc nsz arcp contract afn i32 %i.zt to double
  %i.zv = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !226
  %i.zx = sitofp reassoc nsz arcp contract afn i32 %i.zw to double
  %i.zy = fadd reassoc nsz arcp contract afn double %i.zu, %i.zx
  %i.zz = fsub reassoc nsz arcp contract afn double %i.zr, %i.zy
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.zq, double noundef %i.zz) #24
  call void @pango_cairo_show_layout(ptr noundef %i.jy, ptr noundef %i.ys) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @pango_font_description_free(ptr noundef %i.yr) #24
  call void @g_object_unref(ptr noundef %i.ys) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.aaa = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.aab = icmp sgt i32 %i.aaa, -1
  br i1 %i.aab, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !210
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 336
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !222
  %i.aaf = call ptr @pango_font_description_copy_static(ptr noundef %i.aae) #24 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.aaf, i32 noundef 700) #24
  call void @pango_font_description_set_absolute_size(ptr noundef %i.aaf, double noundef 1.024000e+03) #24
  %i.aag = call ptr @pango_cairo_create_layout(ptr noundef %i.jy) #24 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.aag, ptr noundef %i.aaf) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.75, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.aag, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aag, ptr noundef nonnull %6, ptr noundef null) #24
  %i.aah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !224
  %i.aaj = sitofp reassoc nsz arcp contract afn i32 %i.aai to double
  %i.aak = fmul reassoc nnan nsz arcp contract afn double %i.ks, 1.024000e+03
  %i.aal = fdiv reassoc nsz arcp contract afn double %i.aak, %i.aaj
  call void @pango_font_description_set_absolute_size(ptr noundef %i.aaf, double noundef %i.aal) #24
  call void @pango_layout_set_font_description(ptr noundef %i.aag, ptr noundef %i.aaf) #24
  %i.aam = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aan
  %i.aap = load <2 x float>, ptr %i.aao, align 4, !tbaa !16
  %i.aaq = fmul reassoc nsz arcp contract afn <2 x float> %i.aap, splat (float 2.550000e+02) ; 2 uses
  %i.aar = extractelement <2 x float> %i.aaq, i64 0 ; 2 uses
  %i.aas = extractelement <2 x float> %i.aaq, i64 1 ; 2 uses
  %i.aat = fsub reassoc nsz arcp contract afn float %i.aas, %i.aar
  %i.aau = fpext reassoc nsz arcp contract afn float %i.aar to double
  %i.aav = fpext reassoc nsz arcp contract afn float %i.aas to double
  %i.aaw = fpext reassoc nsz arcp contract afn float %i.aat to double
  %i.aax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.79, double noundef %i.aau, double noundef %i.aav, double noundef %i.aaw) #24 ; 0 uses
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #24
  call void @pango_layout_set_text(ptr noundef %i.aag, ptr noundef nonnull %i.a, i32 noundef -1) #24
  call void @pango_layout_get_pixel_extents(ptr noundef %i.aag, ptr noundef nonnull %6, ptr noundef null) #24
  %i.aay = fmul reassoc nnan nsz arcp contract afn float %i.lb, 9.800000e-01
  %i.aaz = load i32, ptr %i.aah, align 4, !tbaa !224
  %i.aba = sitofp reassoc nsz arcp contract afn i32 %i.aaz to float
  %i.abb = load i32, ptr %6, align 4, !tbaa !227
  %i.abc = sitofp reassoc nsz arcp contract afn i32 %i.abb to float
  %i.abd = fadd reassoc nsz arcp contract afn float %i.aba, %i.abc
  %i.abe = fsub reassoc nsz arcp contract afn float %i.aay, %i.abd
  %i.abf = fpext reassoc nsz arcp contract afn float %i.abe to double
  %i.abg = fmul reassoc nnan nsz arcp contract afn double %i.kf, -2.000000e-02
  %i.abh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !225
  %i.abj = sitofp reassoc nsz arcp contract afn i32 %i.abi to double
  %i.abk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !226
  %i.abm = sitofp reassoc nsz arcp contract afn i32 %i.abl to double
  %i.abn = fadd reassoc nsz arcp contract afn double %i.abj, %i.abm
  %i.abo = fsub reassoc nsz arcp contract afn double %i.abg, %i.abn
  call void @cairo_move_to(ptr noundef %i.jy, double noundef %i.abf, double noundef %i.abo) #24
  call void @pango_cairo_show_layout(ptr noundef %i.jy, ptr noundef %i.aag) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @pango_font_description_free(ptr noundef %i.aaf) #24
  call void @g_object_unref(ptr noundef %i.aag) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #24
  %i.abp = load i32, ptr %i.pq, align 8, !tbaa !130
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.abq ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !24
  %i.abt = load float, ptr %i.kh, align 8, !tbaa !154 ; 2 uses
  %i.abu = load float, ptr %i.ki, align 4, !tbaa !155
  %i.abv = fsub reassoc nsz arcp contract afn float %i.abs, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 4
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !25
  %i.aby = load float, ptr %i.kj, align 8, !tbaa !131
  %i.abz = fsub reassoc nsz arcp contract afn float %i.abx, %i.aby
  %i.aca = fmul reassoc nsz arcp contract afn float %i.abt, %i.lb
  %i.acb = fmul reassoc nsz arcp contract afn float %i.aca, %i.abv
  %i.acc = fpext reassoc nsz arcp contract afn float %i.acb to double
  %i.acd = fmul reassoc nsz arcp contract afn float %i.abt, %i.kk
  %i.ace = fmul reassoc nsz arcp contract afn float %i.acd, %i.abz
  %i.acf = fpext reassoc nsz arcp contract afn float %i.ace to double
  %i.acg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 1432
  %i.aci = load double, ptr %i.ach, align 8, !tbaa !152
  %i.acj = fmul reassoc nsz arcp contract afn double %i.aci, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.jy, double noundef %i.acc, double noundef %i.acf, double noundef %i.acj, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #24
  call void @cairo_stroke(ptr noundef %i.jy) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.ack = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 1432
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !152
  %i.acn = fmul reassoc nsz arcp contract afn double %i.acm, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.jy, double noundef %i.acn) #24
  call void @cairo_set_source_rgb(ptr noundef %i.jy, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #24
  %i.aco = load float, ptr %i.bt, align 4, !tbaa !16
  %i.acp = load float, ptr %i.kh, align 8, !tbaa !154
  %i.acq = load float, ptr %i.kj, align 8, !tbaa !131
  %i.acr = fsub reassoc nsz arcp contract afn float %i.aco, %i.acq
  %i.acs = fmul reassoc nsz arcp contract afn float %i.acp, %i.or
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, %i.acr
  %i.acu = fpext reassoc nsz arcp contract afn float %i.act to double
  call void @cairo_move_to(ptr noundef %i.jy, double noundef 0.000000e+00, double noundef %i.acu) #24
  %i.acv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gy
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ak
  call void @cairo_stroke(ptr noundef %i.jy) #24
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.ak
  %indvars.iv550 = phi i64 [ 1, %bb.af ], [ %indvars.iv.next551, %bb.ak ] ; 3 uses
  %i.acw = trunc nuw nsw i64 %indvars.iv550 to i32
  %i.acx = uitofp nsz nneg i32 %i.acw to float
  %i.acy = fmul reassoc nnan nsz arcp contract afn float %i.acx, f0x3B808081 ; 3 uses
  %i.acz = fcmp reassoc nsz arcp contract afn ogt float %i.acy, %i.gy
  br i1 %i.acz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ada = fmul reassoc nsz arcp contract afn float %i.acy, %i.acv
  %i.adb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ada, float %.2.i)
  %i.adc = fmul reassoc nsz arcp contract afn float %i.adb, %i.id
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv550
  %i.ade = load float, ptr %i.add, align 4, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi nsz float [ %i.adc, %bb.ai ], [ %i.ade, %bb.aj ]
  %i.adf = load float, ptr %i.kh, align 8, !tbaa !154
  %i.adg = load <2 x float>, ptr %i.ki, align 4, !tbaa !16
  %i.adh = insertelement <2 x float> poison, float %i.acy, i64 0
  %i.adi = insertelement <2 x float> %i.adh, float %.0, i64 1
  %i.adj = fsub reassoc nsz arcp contract afn <2 x float> %i.adi, %i.adg
  %i.adk = insertelement <2 x float> poison, float %i.adf, i64 0
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adm = fmul reassoc nsz arcp contract afn <2 x float> %i.adl, %i.la
  %i.adn = fmul reassoc nsz arcp contract afn <2 x float> %i.adm, %i.adj
  %i.ado = fpext reassoc nsz arcp contract afn <2 x float> %i.adn to <2 x double> ; 2 uses
  %i.adp = extractelement <2 x double> %i.ado, i64 0
  %i.adq = extractelement <2 x double> %i.ado, i64 1
  call void @cairo_line_to(ptr noundef %i.jy, double noundef %i.adp, double noundef %i.adq) #24
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %exitcond553.not = icmp eq i64 %indvars.iv.next551, 256
  br i1 %exitcond553.not, label %bb.ag, label %bb.ah

bb.al:                                            ; preds = %dt_iop_estimate_exp.exit, %bb.ag
  call void @cairo_destroy(ptr noundef %i.jy) #24
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ju, double noundef 0.000000e+00, double noundef 0.000000e+00) #24
  call void @cairo_paint(ptr noundef %1) #24
  call void @cairo_surface_destroy(ptr noundef %i.ju) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_button_press_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !88  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !41  ; 19 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2892
  %i.i = load i32, ptr %i.h, align 4, !tbaa !156
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.o = sext i32 %i.k to i64                     ; 14 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 6 uses
  %i.r = getelementptr [160 x i8], ptr %i.b, i64 %i.o ; 29 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !241
  switch i32 %i.t, label %bb.y [
    i32 1, label %bb.c
    i32 3, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %1, align 8, !tbaa !242    ; 2 uses
  %i.v = icmp eq i32 %i.u, 4
  br i1 %i.v, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !243
  %i.y = tail call i32 @gtk_accelerator_get_default_mod_mask() #24
  %i.z = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !11
  %i.aa = or i32 %i.z, %i.x
  %i.ab = and i32 %i.aa, %i.y
  %i.ac = icmp eq i32 %i.ab, 4
  %i.ad = icmp slt i32 %i.q, 20
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 8 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %.critedge, label %thread-pre-split

.critedge:                                        ; preds = %bb.e
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1432
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !152
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #24
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = shl nsw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.ak to double
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.aq = load <2 x i32>, ptr %i.al, align 4, !tbaa !11
  %i.ar = insertelement <2 x i32> poison, i32 %i.am, i64 0
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.at = sub nsw <2 x i32> %i.aq, %i.as          ; 2 uses
  %i.au = load <2 x double>, ptr %i.an, align 8, !tbaa !134
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fsub reassoc nsz arcp contract afn <2 x double> %i.au, %i.aw ; 3 uses
  %i.ay = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x double> ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ax, %i.ay
  %i.ba = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ax, zeroinitializer
  %i.bb = select <2 x i1> %i.ba, <2 x double> zeroinitializer, <2 x double> %i.ax
  %i.bc = select <2 x i1> %i.az, <2 x double> %i.ay, <2 x double> %i.bb
  %i.bd = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float>
  %i.be = fpext reassoc nsz arcp contract afn <2 x float> %i.bd to <2 x double>
  %i.bf = fdiv reassoc nsz arcp contract afn <2 x double> %i.bc, %i.be ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  store double %i.bg, ptr %i.ap, align 8, !tbaa !160
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  %i.bi = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store double %i.bi, ptr %i.bj, align 8, !tbaa !161
  %i.bk = fptrunc reassoc nsz arcp contract afn double %i.bg to float
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 3224 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !154
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 3228
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !155
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bk, %i.bm
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bo ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !145
  %i.bt = call reassoc nsz arcp contract afn fastcc float @dt_draw_curve_calc_value(ptr noundef %i.bs, float noundef %i.bq) ; 9 uses
  %i.bu = fcmp reassoc nsz arcp contract afn oge float %i.bt, 0.000000e+00
  %i.bv = fcmp reassoc nsz arcp contract afn ole float %i.bt, 1.000000e+00
  %or.cond3 = and i1 %i.bu, %i.bv
  br i1 %or.cond3, label %bb.f, label %bb.p

bb.f:                                             ; preds = %.critedge
  %i.bw = call fastcc i32 @_add_node(ptr noundef nonnull %i.r, ptr noundef nonnull %i.p, float noundef %i.bq, float noundef %i.bt) ; 6 uses
  %i.bx = icmp sgt i32 %i.q, 0
  br i1 %i.bx, label %.lr.ph202, label %._crit_edge203

.lr.ph202:                                        ; preds = %bb.f
  %i.by = load float, ptr %i.bl, align 8, !tbaa !154 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 3232
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !131 ; 6 uses
  %wide.trip.count217 = zext nneg i32 %i.q to i64 ; 6 uses
  %min.iters.check273 = icmp ult i32 %i.q, 17
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.memcheck274

scalar.ph272.preheader:                           ; preds = %bb.j, %vector.memcheck274, %.lr.ph202
  %indvars.iv214.ph = phi i64 [ 0, %vector.memcheck274 ], [ 0, %.lr.ph202 ], [ %n.vec279, %bb.j ] ; 4 uses
  %i.cb = sub nsw i64 %wide.trip.count217, %indvars.iv214.ph
  %xtraiter306 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %scalar.ph272.prol.loopexit, label %scalar.ph272.prol

scalar.ph272.prol:                                ; preds = %scalar.ph272.preheader, %bb.h
  %indvars.iv214.prol = phi i64 [ %indvars.iv.next215.prol, %bb.h ], [ %indvars.iv214.ph, %scalar.ph272.preheader ] ; 2 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %bb.h ], [ 0, %scalar.ph272.preheader ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214.prol
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !25
  %i.cf = fsub reassoc nsz arcp contract afn float %i.ce, %i.ca
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.by
  %i.ch = fsub reassoc nsz arcp contract afn float %i.bt, %i.cg ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.ch
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ci, 1.600000e-03
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %scalar.ph272.prol
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %scalar.ph272.prol
  %indvars.iv.next215.prol = add nuw nsw i64 %indvars.iv214.prol, 1 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %scalar.ph272.prol.loopexit, label %scalar.ph272.prol, !llvm.loop !228

scalar.ph272.prol.loopexit:                       ; preds = %bb.h, %scalar.ph272.preheader
  %indvars.iv214.unr = phi i64 [ %indvars.iv214.ph, %scalar.ph272.preheader ], [ %indvars.iv.next215.prol, %bb.h ]
  %i.ck = sub nsw i64 %indvars.iv214.ph, %wide.trip.count217
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge203, label %scalar.ph272

vector.memcheck274:                               ; preds = %.lr.ph202
  %i.cm = getelementptr i8, ptr %i.f, i64 132
  %i.cn = mul nsw i64 %i.o, 160                   ; 2 uses
  %i.co = getelementptr i8, ptr %i.b, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = shl nuw nsw i64 %wide.trip.count217, 3
  %i.cr = getelementptr i8, ptr %i.b, i64 %i.cn
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq
  %bound0275 = icmp ult ptr %i.ae, %i.cs
  %bound1276 = icmp ult ptr %i.cp, %i.cm
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph272.preheader, label %vector.ph278

vector.ph278:                                     ; preds = %vector.memcheck274
  %i.ct = and i64 %wide.trip.count217, 7          ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec279 = sub nsw i64 %wide.trip.count217, %i.cv ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <8 x float> poison, float %i.ca, i64 0
  %broadcast.splat281 = shufflevector <8 x float> %broadcast.splatinsert280, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <8 x float> poison, float %i.bt, i64 0
  %broadcast.splat283 = shufflevector <8 x float> %broadcast.splatinsert282, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body284

vector.body284:                                   ; preds = %bb.j, %vector.ph278
  %index285 = phi i64 [ 0, %vector.ph278 ], [ %index.next302, %bb.j ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index285
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %wide.vec286 = load <16 x float>, ptr %i.cx, align 4, !tbaa !25, !alias.scope !245
  %strided.vec287 = shufflevector <16 x float> %wide.vec286, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec287, %broadcast.splat281
  %i.cz = fmul reassoc nsz arcp contract afn <8 x float> %i.cy, %broadcast.splat
  %i.da = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat283, %i.cz ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn <8 x float> %i.da, %i.da
  %i.dc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.db, splat (float 1.600000e-03)
  %i.dd = bitcast <8 x i1> %i.dc to i8
  %.not305 = icmp eq i8 %i.dd, 0
  br i1 %.not305, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vector.body284
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130, !alias.scope !246, !noalias !245
  br label %bb.j

bb.j:                                             ; preds = %vector.body284, %bb.i
  %index.next302 = add nuw i64 %index285, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next302, %n.vec279
  br i1 %i.de, label %scalar.ph272.preheader, label %vector.body284, !llvm.loop !232

._crit_edge203:                                   ; preds = %scalar.ph272.prol.loopexit, %bb.o, %bb.f
  call void @dt_iop_color_picker_reset(ptr noundef %2, i32 noundef 1) #24
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.dg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  call void @dt_dev_add_history_item_target(ptr noundef %i.df, ptr noundef %2, i32 noundef 1, ptr noundef %i.dg) #24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !133
  call void @gtk_widget_queue_draw(ptr noundef %i.di) #24
  br label %bb.p

scalar.ph272:                                     ; preds = %scalar.ph272.prol.loopexit, %bb.o
  %indvars.iv214 = phi i64 [ %indvars.iv.next215.3, %bb.o ], [ %indvars.iv214.unr, %scalar.ph272.prol.loopexit ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !25
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dl, %i.ca
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.by
  %i.do = fsub reassoc nsz arcp contract afn float %i.bt, %i.dn ; 2 uses
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.do
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dp, 1.600000e-03
  br i1 %i.dq, label %bb.k, label %scalar.ph272.1

bb.k:                                             ; preds = %scalar.ph272
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %scalar.ph272.1

scalar.ph272.1:                                   ; preds = %bb.k, %scalar.ph272
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !25
  %i.du = fsub reassoc nsz arcp contract afn float %i.dt, %i.ca
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.by
  %i.dw = fsub reassoc nsz arcp contract afn float %i.bt, %i.dv ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dw
  %i.dy = fcmp reassoc nsz arcp contract afn olt float %i.dx, 1.600000e-03
  br i1 %i.dy, label %bb.l, label %scalar.ph272.2

bb.l:                                             ; preds = %scalar.ph272.1
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %scalar.ph272.2

scalar.ph272.2:                                   ; preds = %bb.l, %scalar.ph272.1
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !25
  %i.ec = fsub reassoc nsz arcp contract afn float %i.eb, %i.ca
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.by
  %i.ee = fsub reassoc nsz arcp contract afn float %i.bt, %i.ed ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, %i.ee
  %i.eg = fcmp reassoc nsz arcp contract afn olt float %i.ef, 1.600000e-03
  br i1 %i.eg, label %bb.m, label %scalar.ph272.3

bb.m:                                             ; preds = %scalar.ph272.2
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %scalar.ph272.3

scalar.ph272.3:                                   ; preds = %bb.m, %scalar.ph272.2
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv214
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 28
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !25
  %i.ek = fsub reassoc nsz arcp contract afn float %i.ej, %i.ca
  %i.el = fmul reassoc nsz arcp contract afn float %i.ek, %i.by
  %i.em = fsub reassoc nsz arcp contract afn float %i.bt, %i.el ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, %i.em
  %i.eo = fcmp reassoc nsz arcp contract afn olt float %i.en, 1.600000e-03
  br i1 %i.eo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %scalar.ph272.3
  store i32 %i.bw, ptr %i.ae, align 8, !tbaa !130
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %scalar.ph272.3
  %indvars.iv.next215.3 = add nuw nsw i64 %indvars.iv214, 4 ; 2 uses
  %exitcond218.not.3 = icmp eq i64 %indvars.iv.next215.3, %wide.trip.count217
  br i1 %exitcond218.not.3, label %._crit_edge203, label %scalar.ph272, !llvm.loop !233

bb.p:                                             ; preds = %._crit_edge203, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.y
end_hunk_1
begin_hunk_2_@_area_button_press_callback:bb.a
  store <2 x float> %i.hc, ptr %i.hb, align 4, !tbaa !16
  %indvars.iv.next207.6 = add nuw nsw i64 %indvars.iv206, 7 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next207.6
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next207.6
  %i.hf = load <2 x float>, ptr %i.hd, align 4, !tbaa !16
  store <2 x float> %i.hf, ptr %i.he, align 4, !tbaa !16
  %indvars.iv.next207.7 = add nuw nsw i64 %indvars.iv206, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next207.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge195, label %scalar.ph, !llvm.loop !236

bb.t:                                             ; preds = %bb.r
  store i32 1, ptr %i.l, align 4, !tbaa !51
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i32 -2, ptr %i.hg, align 8, !tbaa !130
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !48
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.hi, i32 noundef 1) #24
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.hk = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.hj, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %i.hk) #24
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !133
  tail call void @gtk_widget_queue_draw(ptr noundef %i.hm) #24
  br label %bb.y

bb.u:                                             ; preds = %bb.b
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !130 ; 7 uses
  %i.hp = icmp sgt i32 %i.ho, -1
  br i1 %i.hp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.hq = icmp eq i32 %i.ho, 0
  br i1 %i.hq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hr = add nsw i32 %i.q, -1                    ; 4 uses
  %i.hs = icmp eq i32 %i.ho, %i.hr
  br i1 %i.hs, label %bb.x, label %.preheader190

.preheader190:                                    ; preds = %bb.w
  %i.ht = icmp slt i32 %i.ho, %i.hr
  br i1 %i.ht, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader190
  %i.hu = zext nneg i32 %i.ho to i64              ; 5 uses
  %i.hv = add i32 %i.q, -2
  %i.hw = sub i32 %i.hv, %i.ho                    ; 3 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.hw, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check224 = icmp ult i32 %i.hw, 15
  br i1 %min.iters.check224, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hz = and i64 %i.hy, 12
  %n.vec = and i64 %i.hy, 8589934576              ; 4 uses
  %i.ia = add nuw nsw i64 %n.vec, %i.hu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ib = add nuw i64 %index, %i.hu               ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = getelementptr [8 x i8], ptr %i.r, i64 %i.ib
  %i.if = getelementptr i8, ptr %i.ie, i64 72
  %wide.vec = load <16 x float>, ptr %i.id, align 4, !tbaa !16
  %wide.vec226 = load <16 x float>, ptr %i.if, align 4, !tbaa !16
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ib
  %i.ih = getelementptr [8 x i8], ptr %i.r, i64 %i.ib
  %i.ii = getelementptr i8, ptr %i.ih, i64 64
  store <16 x float> %wide.vec, ptr %i.ig, align 4, !tbaa !16
  store <16 x float> %wide.vec226, ptr %i.ii, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !162

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.hy, 8589934588           ; 3 uses
  %i.ik = add nuw nsw i64 %n.vec230, %i.hu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.il = add nuw i64 %index231, %i.hu            ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %wide.vec232 = load <8 x float>, ptr %i.in, align 4, !tbaa !16
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.il
  store <8 x float> %wide.vec232, ptr %i.io, align 4, !tbaa !16
  %index.next236 = add nuw i64 %index231, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.ip, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %i.hy, %n.vec230
  br i1 %cmp.n237, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.hu, %iter.check ], [ %i.ia, %vec.epilog.iter.check ], [ %i.ik, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.iq = phi float [ 1.000000e+00, %bb.w ], [ 0.000000e+00, %bb.v ] ; 2 uses
  %i.ir = zext nneg i32 %i.ho to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ir ; 2 uses
  store float %i.iq, ptr %i.is, align 4, !tbaa !24
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store float %i.iq, ptr %i.it, align 4, !tbaa !25
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.iv = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.iu, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.iv) #24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !133
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ix) #24
  br label %bb.y

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader190
  %i.iy = sext i32 %i.hr to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.iy
  store <2 x float> zeroinitializer, ptr %i.iz, align 4, !tbaa !16
  store i32 -2, ptr %i.hn, align 8, !tbaa !130
  %i.ja = load i32, ptr %i.p, align 4, !tbaa !11
  %i.jb = add nsw i32 %i.ja, -1
  store i32 %i.jb, ptr %i.p, align 4, !tbaa !11
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.jd = getelementptr inbounds [32 x i8], ptr %0, i64 %i.o
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.jc, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.jd) #24
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !133
  tail call void @gtk_widget_queue_draw(ptr noundef %i.jf) #24
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ji = load <2 x float>, ptr %i.jg, align 4, !tbaa !16
  store <2 x float> %i.ji, ptr %i.jh, align 4, !tbaa !16
  %i.jj = trunc nuw i64 %indvars.iv.next to i32
  %i.jk = icmp sgt i32 %i.hr, %i.jj
  br i1 %i.jk, label %.lr.ph, label %._crit_edge, !llvm.loop !239

bb.y:                                             ; preds = %bb.p, %bb.x, %._crit_edge, %bb.t, %._crit_edge195, %bb.b, %bb.u, %bb.q, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.p ], [ 1, %._crit_edge ], [ 1, %._crit_edge195 ], [ 1, %bb.x ], [ 1, %bb.t ], [ 0, %bb.b ], [ 0, %bb.u ], [ 0, %bb.q ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_area_motion_notify_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 13 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.e = load double, ptr %i.d, align 8, !tbaa !152
  %i.f = fptosi double %i.e to i32                ; 4 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2892
  %i.i = load i32, ptr %i.h, align 4, !tbaa !156
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #24
  %i.j = shl nsw i32 %i.f, 1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.p = load <2 x double>, ptr %i.l, align 8, !tbaa !134
  %i.q = load <2 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.r = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.t = sub nsw <2 x i32> %i.q, %i.s             ; 2 uses
  %i.u = load <2 x double>, ptr %i.n, align 8, !tbaa !134
  %i.v = insertelement <2 x double> poison, double %i.o, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fsub reassoc nsz arcp contract afn <2 x double> %i.u, %i.w ; 3 uses
  %i.y = sitofp reassoc nsz arcp contract afn <2 x i32> %i.t to <2 x double> ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.x, %i.y
  %i.aa = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.x, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> zeroinitializer, <2 x double> %i.x
  %i.ac = select <2 x i1> %i.z, <2 x double> %i.y, <2 x double> %i.ab
  %i.ad = sitofp reassoc nsz arcp contract afn <2 x i32> %i.t to <2 x float>
  %i.ae = fpext reassoc nsz arcp contract afn <2 x float> %i.ad to <2 x double>
  %i.af = fdiv reassoc nsz arcp contract afn <2 x double> %i.ac, %i.ae ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  store double %i.ag, ptr %i.l, align 8, !tbaa !160
  %i.ah = extractelement <2 x double> %i.af, i64 1
  %i.ai = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ah ; 2 uses
  store double %i.ai, ptr %i.m, align 8, !tbaa !161
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !248
  %i.al = and i32 %i.ak, 256
  %.not194 = icmp eq i32 %i.al, 0
  br i1 %.not194, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = fptrunc reassoc nsz arcp contract afn <2 x double> %i.p to <2 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 3224
  %i.ao = load float, ptr %i.an, align 8, !tbaa !154 ; 3 uses
  %i.ap = fpext reassoc nsz arcp contract afn float %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 3228 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ao, -1.000000e+00
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ar, %i.ao
  %i.at = fpext reassoc nsz arcp contract afn <2 x float> %i.am to <2 x double>
  %i.au = insertelement <2 x double> %i.af, double %i.ai, i64 1
  %i.av = fsub reassoc nsz arcp contract afn <2 x double> %i.at, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fdiv reassoc nsz arcp contract afn <2 x double> %i.av, %i.ax
  %i.az = load <2 x float>, ptr %i.aq, align 4, !tbaa !16
  %i.ba = fpext reassoc nsz arcp contract afn <2 x float> %i.az to <2 x double>
  %i.bb = fadd reassoc nsz arcp contract afn <2 x double> %i.ay, %i.ba ; 2 uses
  %i.bc = fptrunc reassoc nsz arcp contract afn <2 x double> %i.bb to <2 x float> ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %i.as, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.be, %i.bc
  %i.bg = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.bb, splat (double f0xB690000000000000)
  %i.bh = select <2 x i1> %i.bg, <2 x float> zeroinitializer, <2 x float> %i.bc
  %i.bi = select <2 x i1> %i.bf, <2 x float> %i.be, <2 x float> %i.bh
  store <2 x float> %i.bi, ptr %i.aq, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !133
  call void @gtk_widget_queue_draw(ptr noundef %i.bk) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 480
  %i.bq = sext i32 %i.bo to i64                   ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11 ; 5 uses
  %i.bt = getelementptr inbounds [160 x i8], ptr %i.bm, i64 %i.bq ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 504
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !51
  %.not191 = icmp eq i32 %i.bv, 1
  %.not192 = icmp eq i32 %i.bo, 0
  %or.cond = or i1 %.not192, %.not191
  br i1 %or.cond, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #24
  %i.bw = shl nsw i32 %i.f, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ca = load <2 x double>, ptr %i.by, align 8, !tbaa !134 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.cd = load <2 x i32>, ptr %i.bx, align 4, !tbaa !11
  %i.ce = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.cf = shufflevector <2 x i32> %i.ce, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cg = sub nsw <2 x i32> %i.cd, %i.cf          ; 2 uses
  %i.ch = load <2 x double>, ptr %i.cb, align 8, !tbaa !134
  %i.ci = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fsub reassoc nsz arcp contract afn <2 x double> %i.ch, %i.cj ; 3 uses
  %i.cl = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cg to <2 x double> ; 2 uses
  %i.cm = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.ck, %i.cl
  %i.cn = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.ck, zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x double> zeroinitializer, <2 x double> %i.ck
  %i.cp = select <2 x i1> %i.cm, <2 x double> %i.cl, <2 x double> %i.co
  %i.cq = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cg to <2 x float>
  %i.cr = fpext reassoc nsz arcp contract afn <2 x float> %i.cq to <2 x double>
  %i.cs = fdiv reassoc nsz arcp contract afn <2 x double> %i.cp, %i.cr ; 3 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  store double %i.ct, ptr %i.by, align 8, !tbaa !160
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.cu ; 2 uses
  store double %i.cv, ptr %i.bz, align 8, !tbaa !161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 3224
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !154 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 3228
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !16 ; 5 uses
  %i.da = insertelement <2 x double> %i.cs, double %i.cv, i64 1 ; 2 uses
  %i.db = fptrunc reassoc nsz arcp contract afn <2 x double> %i.da to <2 x float> ; 3 uses
  %i.dc = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.de = fdiv reassoc nsz arcp contract afn <2 x float> %i.db, %i.dd
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.de, %i.cz ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !248
  %i.di = and i32 %i.dh, 256
  %.not193 = icmp eq i32 %i.di, 0
  br i1 %.not193, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f
  %i.dj = icmp sgt i32 %i.bs, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.bs to i64   ; 2 uses
  %i.dk = extractelement <2 x float> %i.db, i64 0 ; 3 uses
  %i.dl = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dm = icmp eq i32 %i.bs, 1
  br i1 %i.dm, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !130 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.dq
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !16
  %i.dt = fsub reassoc nsz arcp contract afn <2 x float> %i.ds, %i.cz
  %i.du = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, %i.dd
  %i.dv = fpext reassoc nsz arcp contract afn <2 x float> %i.du to <2 x double>
  %i.dw = fsub reassoc nsz arcp contract afn <2 x double> %i.ca, %i.dv
  %i.dx = fptrunc reassoc nsz arcp contract afn <2 x double> %i.dw to <2 x float>
  %i.dy = fpext reassoc nsz arcp contract afn <2 x float> %i.dx to <2 x double> ; 2 uses
  %i.dz = fsub reassoc nsz arcp contract afn <2 x double> %i.da, %i.dy
  %i.ea = fptrunc reassoc nsz arcp contract afn <2 x double> %i.dz to <2 x float>
  %i.eb = fsub reassoc nsz arcp contract afn <2 x double> %i.ca, %i.dy
  %i.ec = fptrunc reassoc nsz arcp contract afn <2 x double> %i.eb to <2 x float>
  %i.ed = fsub reassoc nsz arcp contract afn <2 x float> %i.ea, %i.ec
  %i.ee = fdiv reassoc nsz arcp contract afn <2 x float> %i.ed, %i.dd ; 2 uses
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.ef = load i32, ptr %i.dg, align 8, !tbaa !248
  %i.eg = extractelement <2 x float> %i.ee, i64 0
  %i.eh = extractelement <2 x float> %i.ee, i64 1
  call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, float noundef %i.eg, float noundef %i.eh, i32 noundef %i.ef)
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ei = icmp slt i32 %i.bs, 20
  %i.ej = icmp eq i32 %i.do, -1
  %or.cond200 = and i1 %i.ei, %i.ej
  br i1 %or.cond200, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.ek = extractelement <2 x float> %i.df, i64 0
  %i.el = extractelement <2 x float> %i.df, i64 1
  %i.em = call fastcc i32 @_add_node(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.br, float noundef %i.ek, float noundef %i.el)
  store i32 %i.em, ptr %i.dn, align 8, !tbaa !130
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.eo = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bq
  call void @dt_dev_add_history_item_target(ptr noundef %i.en, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.eo) #24
  br label %bb.k

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0171204.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %spec.select202.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0172203.epil.init = phi float [ 1.600000e-03, %.lr.ph.preheader ], [ %spec.select201.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod209 = trunc i32 %i.bs to i1
  call void @llvm.assume(i1 %lcmp.mod209)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.eq = load <2 x float>, ptr %i.ep, align 4, !tbaa !16
  %i.er = fsub reassoc nsz arcp contract afn <2 x float> %i.eq, %i.cz ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 1
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.cx
  %i.eu = fsub reassoc nsz arcp contract afn float %i.dl, %i.et ; 2 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.eu
  %i.ew = extractelement <2 x float> %i.er, i64 0
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ew, %i.cx
  %i.ey = fsub reassoc nsz arcp contract afn float %i.dk, %i.ex ; 2 uses
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, %i.ey
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, %i.ev
  %i.fb = fcmp reassoc nsz arcp contract afn olt float %i.fa, %.0172203.epil.init
  %i.fc = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %spec.select202.epil = select i1 %i.fb, i32 %i.fc, i32 %.0171204.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.0171.lcssa = phi i32 [ -1, %.preheader ], [ %spec.select202.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select202.epil, %.lr.ph.epil.preheader ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i32 %.0171.lcssa, ptr %i.fd, align 8, !tbaa !130
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.0171204 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %spec.select202.1, %.lr.ph ]
  %.0172203 = phi float [ 1.600000e-03, %.lr.ph.preheader.new ], [ %spec.select201.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ff = load <2 x float>, ptr %i.fe, align 4, !tbaa !16
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.cz ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.cx
  %i.fj = fsub reassoc nsz arcp contract afn float %i.dl, %i.fi ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %i.fl = extractelement <2 x float> %i.fg, i64 0
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.cx
  %i.fn = fsub reassoc nsz arcp contract afn float %i.dk, %i.fm ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fn
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fk ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn olt float %i.fp, %.0172203 ; 2 uses
  %spec.select201 = select nsz i1 %i.fq, float %i.fp, float %.0172203 ; 2 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select202 = select i1 %i.fq, i32 %i.fr, i32 %.0171204
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.ft = load <2 x float>, ptr %i.fs, align 4, !tbaa !16
  %i.fu = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.cz ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 1
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.cx
  %i.fx = fsub reassoc nsz arcp contract afn float %i.dl, %i.fw ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx
  %i.fz = extractelement <2 x float> %i.fu, i64 0
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, %i.cx
  %i.gb = fsub reassoc nsz arcp contract afn float %i.dk, %i.ga ; 2 uses
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.gb
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fy ; 2 uses
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gd, %spec.select201 ; 2 uses
  %spec.select201.1 = select nsz i1 %i.ge, float %i.gd, float %spec.select201 ; 2 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv.next to i32
  %spec.select202.1 = select i1 %i.ge, i32 %i.gf, i32 %spec.select202 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.k:                                             ; preds = %bb.e, %._crit_edge, %bb.i, %bb.j
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !130
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @gtk_widget_grab_focus(ptr noundef %0) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @gtk_widget_queue_draw(ptr noundef %0) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.d
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_area_leave_notify_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !250
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i32 -1, ptr %i.f, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_scrolled_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2892
  %i.i = load i32, ptr %i.h, align 4, !tbaa !156
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 @dt_gui_get_scroll_deltas(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a) #24
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 3224 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !154 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 3228 ; 2 uses
  %i.o = load double, ptr %i.a, align 8, !tbaa !134
  %i.p = fmul reassoc nsz arcp contract afn double %i.o, 1.000000e-01
  %i.q = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.p
  %i.r = fpext reassoc nsz arcp contract afn float %i.m to double
  %i.s = fmul reassoc nsz arcp contract afn double %i.q, %i.r ; 2 uses
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float
  %i.u = fcmp reassoc nsz arcp contract afn olt double %i.s, f0x3FEFFFFFF0000000
  %spec.select = select i1 %i.u, float 1.000000e+00, float %i.t ; 4 uses
  store float %spec.select, ptr %i.l, align 8, !tbaa !154
  %i.v = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %i.w = fdiv reassoc nsz arcp contract afn float %i.v, %spec.select
  %i.x = load <2 x double>, ptr %i.k, align 8, !tbaa !134
  %i.y = fptrunc reassoc nsz arcp contract afn <2 x double> %i.x to <2 x float> ; 2 uses
  %i.z = load <2 x float>, ptr %i.n, align 4, !tbaa !16
  %i.aa = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.ab
  %i.ad = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn <2 x float> %i.ac, %i.z
  %i.ah = fsub reassoc nsz arcp contract afn <2 x float> %i.ag, %i.af ; 3 uses
  %i.ai = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ah, %i.aj
  %i.al = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ah, zeroinitializer
  %i.am = select <2 x i1> %i.al, <2 x float> zeroinitializer, <2 x float> %i.ah
  %i.an = select <2 x i1> %i.ak, <2 x float> %i.aj, <2 x float> %i.am
  store <2 x float> %i.an, ptr %i.n, align 4, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  call void @gtk_widget_queue_draw(ptr noundef %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %.not54 = icmp eq i32 %i.ar, 1
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49
  %.not55 = icmp eq i32 %i.at, 0
  br i1 %.not55, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.av = load i32, ptr %i.au, align 8, !tbaa !130
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.ax = call i32 @dt_gui_get_scroll_delta(ptr noundef %1, ptr noundef nonnull %i.a) #24
  %.not56 = icmp eq i32 %i.ax, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = load double, ptr %i.a, align 8, !tbaa !134
  %i.az = fmul reassoc nsz arcp contract afn double %i.ay, f0xBF50624DE0000000 ; 2 uses
  store double %i.az, ptr %i.a, align 8, !tbaa !134
  %i.ba = fptrunc reassoc nsz arcp contract afn double %i.az to float
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !252
  call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, float noundef 0.000000e+00, float noundef %i.ba, i32 noundef %i.bc)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %bb.d, %bb.a, %bb.i
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.i ], [ 1, %bb.d ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_area_key_press_callback(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2892
  %i.e = load i32, ptr %i.d, align 4, !tbaa !156
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.fold.split

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51
  %.not24 = icmp eq i32 %i.i, 1
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.d, label %.fold.split

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load i32, ptr %i.l, align 8, !tbaa !130
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.fold.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !254
  switch i32 %i.p, label %.fold.split [
    i32 65362, label %bb.i
    i32 65431, label %bb.i
    i32 65364, label %bb.f
    i32 65433, label %bb.f
    i32 65363, label %bb.g
    i32 65432, label %bb.g
    i32 65361, label %bb.h
    i32 65430, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.e
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.e
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e, %bb.e
  %.020 = phi nsz float [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ], [ 1.000000e-03, %bb.g ], [ -1.000000e-03, %bb.h ], [ 0.000000e+00, %bb.e ]
  %.0 = phi nsz float [ 1.000000e-03, %bb.e ], [ -1.000000e-03, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ 1.000000e-03, %bb.e ]
  tail call void @dt_iop_color_picker_reset(ptr noundef nonnull %2, i32 noundef 1) #24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !255
  tail call fastcc void @_move_point_internal(ptr noundef nonnull %2, ptr noundef %0, float noundef %.020, float noundef %.0, i32 noundef %i.r)
  br label %.fold.split

.fold.split:                                      ; preds = %bb.e, %bb.i, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.e ]
  ret i32 %.1
}

declare ptr @dt_bauhaus_combobox_new_interpolation(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @interpolator_callback(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !41
  %i.h = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %0) #24 ; 4 uses
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 492
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 500
  store i32 %i.h, ptr %i.k, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store i32 %i.h, ptr %i.l, align 4, !tbaa !11
  store i32 %i.h, ptr %i.j, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.sink.split
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.m, ptr noundef nonnull %1, i32 noundef 1, ptr noundef %0) #24
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  tail call void @gtk_widget_queue_draw(ptr noundef %i.o) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_grid_new() local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 504 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.f, i32 noundef %i.h) #24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 492
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.j, i32 noundef %i.l) #24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
end_hunk_2
