Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/print_settings?download=true
inline.NumInlined: 118
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gui_post_expose:bb.a
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.oz, float noundef %i.pb, float noundef %i.pd, float noundef %i.pf) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  call void @cairo_move_to(ptr noundef %1, double noundef %.1478, double noundef %.1) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.pg = fpext reassoc nsz arcp contract afn float %i.jz to double ; 4 uses
  %i.ph = fsub reassoc nsz arcp contract afn float %i.kd, %i.jz
  %i.pi = fpext reassoc nsz arcp contract afn float %i.ph to double
  %i.pj = fsub reassoc nsz arcp contract afn double %i.pi, %i.kt
  %i.pk = fmul reassoc nsz arcp contract afn double %i.pj, 5.000000e-01
  %i.pl = fadd reassoc nsz arcp contract afn double %i.pk, %i.pg ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 6 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !101 ; 4 uses
  %i.po = fcmp reassoc nsz arcp contract afn ult float %i.kb, %i.pn
  br i1 %i.po, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pp = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !103
  %i.pr = fadd reassoc nsz arcp contract afn float %i.pq, %i.pn
  %i.ps = fcmp reassoc nsz arcp contract afn ugt float %i.kb, %i.pr
  br i1 %i.ps, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pt = extractelement <4 x float> %i.ju, i64 1
  %i.pu = fpext reassoc nsz arcp contract afn float %i.pt to double
  %i.pv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.pu) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.pw = load float, ptr %i.pm, align 4, !tbaa !101
  %i.px = fpext reassoc nsz arcp contract afn float %i.pw to double ; 2 uses
  %i.py = fadd reassoc nsz arcp contract afn double %i.kt, %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.qa to double ; 2 uses
  %i.qc = fadd reassoc nsz arcp contract afn double %i.py, %i.qb
  %i.qd = fsub reassoc nsz arcp contract afn double %i.lf, %i.qc
  %i.qe = fmul reassoc nsz arcp contract afn double %i.qd, 5.000000e-01
  %i.qf = fadd reassoc nsz arcp contract afn double %i.qe, %i.px ; 2 uses
  %i.qg = fcmp reassoc nsz arcp contract afn olt double %i.qf, %i.py
  br i1 %i.qg, label %bb.ap, label %._crit_edge584

._crit_edge584:                                   ; preds = %bb.ao
  %.pre585 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qh = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.qi = fsub reassoc nsz arcp contract afn double %i.qh, %i.kt ; 2 uses
  %i.qj = fmul reassoc nsz arcp contract afn double %i.ks, 2.700000e+01
  %i.qk = fadd reassoc nsz arcp contract afn double %i.qj, %i.pl
  %i.ql = fadd reassoc nsz arcp contract afn double %i.qk, %i.qb ; 2 uses
  %i.qm = fcmp reassoc nsz arcp contract afn olt double %i.qi, %i.ql
  %.523 = select reassoc nsz arcp contract afn i1 %i.qm, double %i.qi, double %i.ql
  %i.qn = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qn, %i.lf
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge584, %bb.ap
  %.pre-phi = phi double [ %.pre585, %._crit_edge584 ], [ %i.qn, %bb.ap ]
  %.2479 = phi nsz double [ %i.pl, %._crit_edge584 ], [ %.523, %bb.ap ] ; 3 uses
  %.2 = phi nsz double [ %i.qf, %._crit_edge584 ], [ %i.qo, %bb.ap ] ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #19
  %i.qp = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.qq = fadd reassoc nsz arcp contract afn double %.2479, %i.qp ; 3 uses
  %i.qr = load float, ptr %i.pm, align 4, !tbaa !101
  %i.qs = fpext reassoc nsz arcp contract afn float %i.qr to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.qs) #19
  call void @cairo_line_to(ptr noundef %1, double noundef %i.qq, double noundef %i.lf) #19
  call void @cairo_stroke_preserve(ptr noundef %1) #19
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.qt = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.qt) #19
  call void @cairo_stroke(ptr noundef %1) #19
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #19
  %i.qu = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.qv = fptrunc reassoc nsz arcp contract afn double %i.qu to float
  %i.qw = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.qx = sitofp reassoc nsz arcp contract afn i32 %i.qw to double
  %i.qy = fadd reassoc nsz arcp contract afn double %.pre-phi, %i.qx
  %i.qz = fptrunc reassoc nsz arcp contract afn double %i.qy to float
  %i.ra = fsub reassoc nsz arcp contract afn double %.2479, %i.ku
  %i.rb = fptrunc reassoc nsz arcp contract afn double %i.ra to float
  %i.rc = fsub reassoc nsz arcp contract afn double %.2, %i.ku
  %i.rd = fptrunc reassoc nsz arcp contract afn double %i.rc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.qv, float noundef %i.qz, float noundef %i.rb, float noundef %i.rd) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.re = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.re to double
  %i.rg = fmul reassoc nnan nsz arcp contract afn double %i.rf, 5.000000e-01
  %i.rh = fadd reassoc nsz arcp contract afn double %i.rg, %.2
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.rh) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.ri = load i32, ptr %i.pz, align 4, !tbaa !217
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.ri to double
  %i.rk = fmul reassoc nnan nsz arcp contract afn double %i.rj, -5.000000e-01
  %i.rl = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.rk, double noundef %i.rl) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  %.pre582 = load float, ptr %i.pm, align 4, !tbaa !101
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.rm = phi float [ %.pre582, %bb.aq ], [ %i.pn, %bb.an ], [ %i.pn, %bb.am ] ; 2 uses
  %.3480 = phi nsz double [ %.2479, %bb.aq ], [ %i.pl, %bb.an ], [ %i.pl, %bb.am ] ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.rm
  br i1 %i.rn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ro = getelementptr inbounds nuw i8, ptr %i.g, i64 3308 ; 3 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !103
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rp, %i.rm
  %i.rr = fcmp reassoc nsz arcp contract afn ugt float %i.kf, %i.rq
  br i1 %i.rr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rs = load i32, ptr %i.o, align 8, !tbaa !32
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !33
  %i.rw = extractelement <2 x float> %i.hq, i64 1
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rv, %i.rw
  %i.ry = extractelement <4 x float> %i.ju, i64 3
  %i.rz = fsub reassoc nsz arcp contract afn float %i.rx, %i.ry
  %i.sa = fpext reassoc nsz arcp contract afn float %i.rz to double
  %i.sb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.sa) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.sc = fpext reassoc nsz arcp contract afn float %i.kf to double ; 2 uses
  %i.sd = load float, ptr %i.pm, align 4, !tbaa !101
  %i.se = load float, ptr %i.ro, align 4, !tbaa !103
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.sd ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !217 ; 2 uses
  %i.si = sitofp reassoc nsz arcp contract afn i32 %i.sh to float ; 2 uses
  %i.sj = fadd reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.sk = fsub reassoc nsz arcp contract afn float %i.sf, %i.sj
  %i.sl = fpext reassoc nsz arcp contract afn float %i.sk to double
  %i.sm = fmul reassoc nsz arcp contract afn double %i.sl, 5.000000e-01
  %i.sn = fadd reassoc nsz arcp contract afn double %i.sm, %i.sc ; 2 uses
  %i.so = sitofp reassoc nsz arcp contract afn i32 %i.sh to double
  %i.sp = fadd reassoc nsz arcp contract afn double %i.ku, %i.so
  %i.sq = fadd reassoc nsz arcp contract afn double %i.sp, %i.sn
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sf to double
  %i.ss = fcmp reassoc nsz arcp contract afn ogt double %i.sq, %i.sr
  %i.st = fsub reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.su = fpext reassoc nsz arcp contract afn float %i.st to double
  %i.sv = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.sw = fsub reassoc nsz arcp contract afn double %i.su, %i.sv
  %.3 = select nsz i1 %i.ss, double %i.sw, double %i.sn ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #19
  %i.sx = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.sy = fadd reassoc nsz arcp contract afn double %.3480, %i.sx ; 3 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.sc) #19
  %i.sz = load float, ptr %i.pm, align 4, !tbaa !101
  %i.ta = load float, ptr %i.ro, align 4, !tbaa !103
  %i.tb = fadd reassoc nsz arcp contract afn float %i.ta, %i.sz
  %i.tc = fpext reassoc nsz arcp contract afn float %i.tb to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tc) #19
  call void @cairo_stroke_preserve(ptr noundef %1) #19
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.td = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.td) #19
  call void @cairo_stroke(ptr noundef %1) #19
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #19
  %i.te = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.tf = fptrunc reassoc nsz arcp contract afn double %i.te to float
  %i.tg = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.th = sitofp reassoc nsz arcp contract afn i32 %i.tg to double
  %i.ti = fadd reassoc nsz arcp contract afn double %i.sv, %i.th
  %i.tj = fptrunc reassoc nsz arcp contract afn double %i.ti to float
  %i.tk = fsub reassoc nsz arcp contract afn double %.3480, %i.ku
  %i.tl = fptrunc reassoc nsz arcp contract afn double %i.tk to float
  %i.tm = fsub reassoc nsz arcp contract afn double %.3, %i.ku
  %i.tn = fptrunc reassoc nsz arcp contract afn double %i.tm to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.tf, float noundef %i.tj, float noundef %i.tl, float noundef %i.tn) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.to = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.tp = sitofp reassoc nsz arcp contract afn i32 %i.to to double
  %i.tq = fmul reassoc nnan nsz arcp contract afn double %i.tp, 5.000000e-01
  %i.tr = fadd reassoc nsz arcp contract afn double %i.tq, %.3
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tr) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.ts = load i32, ptr %i.sg, align 4, !tbaa !217
  %i.tt = sitofp reassoc nsz arcp contract afn i32 %i.ts to double
  %i.tu = fmul reassoc nnan nsz arcp contract afn double %i.tt, -5.000000e-01
  %i.tv = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.tu, double noundef %i.tv) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %9 = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 3 uses
  %10 = fmul reassoc nsz arcp contract afn double %i.ks, 1.500000e+01 ; 2 uses
  %11 = fcmp reassoc nsz arcp contract afn olt double %10, %i.lf
  %12 = fsub reassoc nsz arcp contract afn double %i.lf, %9
  %13 = fadd reassoc nsz arcp contract afn double %i.kt, %i.lf
  %14 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 4 uses
  %15 = fsub reassoc nsz arcp contract afn double %13, %14
  %.4 = select nsz i1 %11, double %12, double %15 ; 2 uses
  %i.tw = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %16 = fptrunc reassoc nsz arcp contract afn double %i.tw to float ; 2 uses
  %i.tx = fsub reassoc nsz arcp contract afn double %.4, %i.ku
  %17 = fptrunc reassoc nsz arcp contract afn double %i.tx to float
  %18 = fpext reassoc nsz arcp contract afn <2 x float> %i.jw to <2 x double> ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %19) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %21 = load i32, ptr %8, align 4, !tbaa !217
  %22 = sitofp reassoc nsz arcp contract afn i32 %21 to float
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %23 = load i32, ptr %8, align 4, !tbaa !217
  %24 = sitofp reassoc nsz arcp contract afn i32 %23 to double
  %25 = fadd reassoc nsz arcp contract afn double %14, %24
  %i.ty = fptrunc reassoc nsz arcp contract afn double %25 to float
  %i.tz = fcmp reassoc nsz arcp contract afn olt double %10, %i.pg
  %i.ua = fsub reassoc nsz arcp contract afn double %i.pg, %9
  %i.ub = fadd reassoc nsz arcp contract afn double %i.kt, %i.pg
  %i.uc = fsub reassoc nsz arcp contract afn double %i.ub, %14
  %.4481 = select nsz i1 %i.tz, double %i.ua, double %i.uc ; 2 uses
  %i.ud = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ue = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uf = fadd reassoc nsz arcp contract afn <2 x float> %i.ud, %i.ue ; 2 uses
  %i.ug = extractelement <2 x float> %i.uf, i64 0
  %i.uh = fsub reassoc nsz arcp contract afn float %i.ug, %22
  %i.ui = fpext reassoc nsz arcp contract afn float %i.uh to double
  %i.uj = fmul reassoc nsz arcp contract afn double %i.ui, 5.000000e-01 ; 2 uses
  %i.uk = fsub reassoc nsz arcp contract afn double %i.uj, %i.ku
  %i.ul = fptrunc reassoc nsz arcp contract afn double %i.uk to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.ty, float noundef %16, float noundef %i.ul, float noundef %17) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uj, double noundef %.4) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  %i.um = extractelement <2 x double> %18, i64 1
  %i.un = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.um) #19 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #19
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #19
  %i.uo = extractelement <2 x float> %i.uf, i64 1
  %i.up = fpext reassoc nsz arcp contract afn float %i.uo to double
  %i.uq = fmul reassoc nsz arcp contract afn double %i.up, 5.000000e-01 ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #19
  %i.ur = load i32, ptr %8, align 4, !tbaa !217
  %i.us = sitofp reassoc nsz arcp contract afn i32 %i.ur to double ; 2 uses
  %i.ut = fadd reassoc nsz arcp contract afn double %14, %i.us
  %i.uu = fptrunc reassoc nsz arcp contract afn double %i.ut to float
  %i.uv = fsub reassoc nsz arcp contract afn double %.4481, %i.ku
  %i.uw = fptrunc reassoc nsz arcp contract afn double %i.uv to float
  %.neg567 = fmul reassoc nnan nsz arcp contract afn double %i.us, -5.000000e-01
  %.neg568 = fsub reassoc nsz arcp contract afn double %i.uq, %i.ku
  %i.ux = fadd reassoc nsz arcp contract afn double %.neg568, %.neg567
  %i.uy = fptrunc reassoc nsz arcp contract afn double %i.ux to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %16, float noundef %i.uu, float noundef %i.uw, float noundef %i.uy) #19
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #19
  %i.uz = fadd reassoc nsz arcp contract afn double %.4481, %9
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uz, double noundef %i.uq) #19
  call void @cairo_save(ptr noundef %1) #19
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #19
  %i.va = load i32, ptr %8, align 4, !tbaa !217
  %i.vb = sitofp reassoc nsz arcp contract afn i32 %i.va to double
  %i.vc = fmul reassoc nnan nsz arcp contract afn double %i.vb, -5.000000e-01
  %i.vd = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.vc, double noundef %i.vd) #19
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #19
  call void @cairo_restore(ptr noundef %1) #19
  call void @pango_font_description_free(ptr noundef %i.kk) #19
  call void @g_object_unref(ptr noundef %i.kp) #19
  call void @g_free(ptr noundef %i.le) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ab
  %i.ve = getelementptr inbounds nuw i8, ptr %i.g, i64 3328
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !218
  %.not516 = icmp ne i32 %i.vf, 0
  %i.vg = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !137
  %.604 = zext i1 %.not516 to i32
  call void @gtk_toggle_button_set_active(ptr noundef %i.vh, i32 noundef %.604) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_orientation(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0, i32 noundef 0, i8 noundef signext 114, ptr noundef nonnull @.str.5, i32 noundef 1351) #19
  %i.a = load i32, ptr %2, align 8, !tbaa !221
  %.not = icmp eq i32 %i.a, 13
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !223
  %i.f = icmp sgt i32 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  store i32 %i.g, ptr %i.i, align 8, !tbaa !138
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !127
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1344
  call void @dt_view_print_settings(ptr noundef %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139
  %i.n = load i32, ptr %i.i, align 8, !tbaa !138
  %i.o = icmp eq i32 %i.n, 1
  %i.p = zext i1 %i.o to i32
  call void @dt_bauhaus_combobox_set(ptr noundef %i.m, i32 noundef %i.p) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, i32 noundef 1363) #19
  call void @dt_control_queue_redraw_center() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_expose_again(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_set_orientation(ptr noundef nonnull %0, i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3296
  %i.e = load float, ptr %i.d, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3300
  %i.g = load float, ptr %i.f, align 4, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3304
  %i.i = load float, ptr %i.h, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3308
  %i.k = load float, ptr %i.j, align 4, !tbaa !103
  tail call void @dt_printing_setup_box(ptr noundef nonnull %i.a, i32 noundef 0, float noundef %i.e, float noundef %i.g, float noundef %i.i, float noundef %i.k) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  %.not.i.i = icmp eq i32 %i.n, 0                 ; 2 uses
  %..i.i = select i1 %.not.i.i, i64 728, i64 736
  %.11.i.i = select i1 %.not.i.i, i64 736, i64 728
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.11.i.i
  %.sink.in.i.i = load double, ptr %i.o, align 8, !tbaa !31
  %.sink.i.i = fptrunc double %.sink.in.i.i to float
  %storemerge.in.i.i = load double, ptr %i.p, align 8, !tbaa !31
  %storemerge.i.i = fptrunc double %storemerge.in.i.i to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.r = load i32, ptr %i.q, align 8, !tbaa !104
  tail call void @dt_printing_setup_page(ptr noundef nonnull %i.a, float noundef %.sink.i.i, float noundef %storemerge.i.i, i32 noundef %i.r) #19
  tail call void @dt_printing_setup_image(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.b, i32 noundef 100, i32 noundef 100, i32 noundef 4) #19
  tail call void @dt_control_queue_redraw_center() #19
  store i32 0, ptr %i.a, align 8, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @dt_control_queue_redraw_center() #19
  ret i32 0
}

declare double @gtk_spin_button_get_value(ptr noundef) local_unnamed_addr #4

declare i32 @gtk_toggle_button_get_active(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_printing_setup_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_printing_get_screen_pos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @dt_view_image_get_surface(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_busy_enter(...) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_paint_with_alpha(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @dt_control_busy_leave(...) local_unnamed_addr #4

declare void @cairo_fill(ptr noundef) local_unnamed_addr #4

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #4

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #4

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #4

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_draw_rounded_rectangle(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #4

declare void @cairo_rel_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @pango_cairo_update_layout(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #4

declare void @g_object_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(3496) ptr @malloc(i64 noundef 3496) #20 ; 77 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.a, ptr %i.b, align 8, !tbaa !88
  %i.c = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 5) #19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 29 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !224
  tail call void @dt_gui_add_help_link(ptr noundef %i.c, ptr noundef nonnull @.str.12) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3336 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3368 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3360 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3400
  store i32 0, ptr %i.k, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3396
  store i32 0, ptr %i.l, align 4, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3420
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
end_hunk_0
