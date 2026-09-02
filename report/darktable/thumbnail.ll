Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbnail?download=true
inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_thumb_resize_overlays:bb.a
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !195
  %i.jm = sext i16 %i.jl to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.ji, i32 noundef %i.jm) #22
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !108
  call void @gtk_widget_set_size_request(ptr noundef %i.jo, i32 noundef %i.jb, i32 noundef %i.jb) #22
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !108
  call void @gtk_widget_set_halign(ptr noundef %i.jp, i32 noundef 2) #22
  %i.jq = load ptr, ptr %i.jn, align 8, !tbaa !108
  %i.jr = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !194
  %i.ju = sext i16 %i.jt to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.jq, i32 noundef %i.ju) #22
  %i.jv = load ptr, ptr %i.jn, align 8, !tbaa !108
  %i.jw = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !195
  %i.jz = sitofp i16 %i.jy to double
  %i.ka = fadd reassoc nsz arcp contract afn double %i.al, %i.jz
  %i.kb = fptosi double %i.ka to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.jv, i32 noundef %i.kb) #22
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !109
  call void @gtk_widget_set_size_request(ptr noundef %i.kd, i32 noundef %i.jb, i32 noundef %i.jb) #22
  %i.ke = load ptr, ptr %i.kc, align 8, !tbaa !109
  call void @gtk_widget_set_halign(ptr noundef %i.ke, i32 noundef 2) #22
  %i.kf = load ptr, ptr %i.kc, align 8, !tbaa !109
  %i.kg = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !194
  %i.kj = sext i16 %i.ki to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.kf, i32 noundef %i.kj) #22
  %i.kk = load ptr, ptr %i.kc, align 8, !tbaa !109
  %i.kl = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !195
  %i.ko = sitofp i16 %i.kn to double
  %i.kp = fmul reassoc nnan nsz arcp contract afn double %i.ak, 5.000000e+00
  %i.kq = fadd reassoc nsz arcp contract afn double %i.kp, %i.ko
  %i.kr = fptosi double %i.kq to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.kk, i32 noundef %i.kr) #22
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !110
  call void @gtk_widget_set_size_request(ptr noundef %i.kt, i32 noundef %i.jb, i32 noundef %i.jb) #22
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !110
  call void @gtk_widget_set_halign(ptr noundef %i.ku, i32 noundef 2) #22
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !110
  %i.kw = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !194
  %i.kz = sext i16 %i.ky to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.kv, i32 noundef %i.kz) #22
  %i.la = load ptr, ptr %i.ks, align 8, !tbaa !110
  %i.lb = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !195
  %i.le = sitofp i16 %i.ld to double
  %i.lf = fmul reassoc nnan nsz arcp contract afn double %i.ak, 7.500000e+00
  %i.lg = fadd reassoc nsz arcp contract afn double %i.lf, %i.le
  %i.lh = fptosi double %i.lg to i32
  call void @gtk_widget_set_margin_end(ptr noundef %i.la, i32 noundef %i.lh) #22
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !96
  %i.lk = fmul reassoc nnan nsz arcp contract afn double %i.ak, 6.000000e+00
  %i.ll = fptosi double %i.lk to i32
  %i.lm = fmul reassoc nnan nsz arcp contract afn double %i.ak, 3.000000e+00
  %i.ln = fptosi double %i.lm to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.lj, i32 noundef %i.ll, i32 noundef %i.ln) #22
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !95
  call void @gtk_widget_get_size_request(ptr noundef %i.lp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !171
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !94
  call void @gtk_widget_get_size_request(ptr noundef %i.lr, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ls = load i32, ptr %i.e, align 4, !tbaa !171
  %i.lt = load i32, ptr %i.a, align 4, !tbaa !171 ; 3 uses
  %i.lu = sub nsw i32 %i.ls, %i.lt
  %i.lv = sdiv i32 %i.lu, 2                       ; 3 uses
  %i.lw = load i32, ptr %i.f, align 4, !tbaa !171
  %i.lx = load i32, ptr %i.b, align 4, !tbaa !171
  %i.ly = sub nsw i32 %i.lw, %i.lx
  %i.lz = sdiv i32 %i.ly, 2                       ; 4 uses
  %i.ma = sitofp reassoc nsz arcp contract afn i32 %.0312 to float
  %i.mb = fmul reassoc nnan nsz arcp contract afn float %i.ma, 5.000000e-01
  %i.mc = sitofp reassoc nsz arcp contract afn i32 %i.lt to float
  %i.md = fmul reassoc nnan nsz arcp contract afn float %i.mc, 4.000000e-02
  %i.me = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.mb, float %i.md) ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !93
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %i.lt to double
  %i.mi = fmul reassoc nnan nsz arcp contract afn double %i.mh, 3.000000e-02
  %i.mj = sitofp reassoc nsz arcp contract afn i32 %i.lz to double
  %i.mk = fadd reassoc nsz arcp contract afn double %i.mi, %i.mj
  %i.ml = fptosi double %i.mk to i32
  call void @gtk_widget_set_margin_top(ptr noundef %i.mg, i32 noundef %i.ml) #22
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !93
  %i.mn = load i32, ptr %i.a, align 4, !tbaa !171
  %i.mo = sitofp reassoc nsz arcp contract afn i32 %i.mn to double
  %i.mp = fmul reassoc nnan nsz arcp contract afn double %i.mo, 3.000000e-02
  %i.mq = sitofp reassoc nsz arcp contract afn i32 %i.lv to double ; 9 uses
  %i.mr = fadd reassoc nsz arcp contract afn double %i.mp, %i.mq
  %i.ms = fptosi double %i.mr to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.mm, i32 noundef %i.ms) #22
  %i.mt = call ptr @pango_attr_list_new() #22     ; 4 uses
  %i.mu = fpext reassoc nsz arcp contract afn float %i.me to double ; 14 uses
  %i.mv = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.536000e+03
  %i.mw = fptosi double %i.mv to i32
  %i.mx = call ptr @pango_attr_size_new_absolute(i32 noundef %i.mw) #22
  call void @pango_attr_list_insert(ptr noundef %i.mt, ptr noundef %i.mx) #22
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_label_set_attributes(ptr noundef %i.mz, ptr noundef %i.mt) #22
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !112
  call void @gtk_label_set_attributes(ptr noundef %i.nb, ptr noundef %i.mt) #22
  call void @pango_attr_list_unref(ptr noundef %i.mt) #22
  store i32 0, ptr %i.e, align 4, !tbaa !171
  store i32 0, ptr %i.f, align 4, !tbaa !171
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !101
  %i.nd = call ptr @gtk_label_get_layout(ptr noundef %i.nc) #22
  call void @pango_layout_get_pixel_size(ptr noundef %i.nd, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ne = call noalias ptr @gtk_border_new() #22  ; 4 uses
  %i.nf = call noalias ptr @gtk_border_new() #22  ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !99
  %i.ni = call i32 @gtk_widget_get_state_flags(ptr noundef %i.nh) #22
  %i.nj = load ptr, ptr %i.ng, align 8, !tbaa !99
  %i.nk = call ptr @gtk_widget_get_style_context(ptr noundef %i.nj) #22
  %i.nl = load ptr, ptr %i.lo, align 8, !tbaa !95
  %i.nm = call i32 @gtk_widget_get_state_flags(ptr noundef %i.nl) #22
  %i.nn = load ptr, ptr %i.lo, align 8, !tbaa !95
  %i.no = call ptr @gtk_widget_get_style_context(ptr noundef %i.nn) #22
  call void @gtk_style_context_get_margin(ptr noundef %i.nk, i32 noundef %i.ni, ptr noundef %i.ne) #22
  call void @gtk_style_context_get_border(ptr noundef %i.no, i32 noundef %i.nm, ptr noundef %i.nf) #22
  %i.np = fptosi float %i.me to i32               ; 3 uses
  %i.nq = fmul reassoc nnan nsz arcp contract afn double %i.mu, 8.000000e-01
  %i.nr = fptosi double %i.nq to i32              ; 5 uses
  %i.ns = load i32, ptr %i.b, align 4, !tbaa !171
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !194
  %i.nv = sext i16 %i.nu to i32
  %i.nw = mul nsw i32 %i.ns, %i.nv
  %i.nx = sdiv i32 %i.nw, 1000                    ; 2 uses
  %i.ny = load i32, ptr %i.a, align 4, !tbaa !171
  %i.nz = load i16, ptr %i.ne, align 2, !tbaa !197
  %i.oa = sext i16 %i.nz to i32
  %i.ob = mul nsw i32 %i.ny, %i.oa
  %i.oc = sdiv i32 %i.ob, 1000
  %i.od = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !194 ; 2 uses
  %i.of = sext i16 %i.oe to i32
  %i.og = load i16, ptr %i.nf, align 2, !tbaa !197 ; 2 uses
  %i.oh = sext i16 %i.og to i32
  %i.oi = fmul reassoc nnan nsz arcp contract afn float %i.me, 3.000000e+00 ; 3 uses
  %i.oj = fmul reassoc nnan nsz arcp contract afn double %i.mu, 2.000000e+00 ; 2 uses
  %i.ok = fptrunc reassoc nsz arcp contract afn double %i.oj to float ; 2 uses
  %i.ol = load i32, ptr %i.f, align 4, !tbaa !171
  %i.om = add i32 %i.nr, %i.np
  %i.on = add i32 %i.om, %i.ol
  %i.oo = sitofp reassoc nsz arcp contract afn i32 %i.on to double
  %i.op = fpext reassoc nsz arcp contract afn float %i.oi to double ; 2 uses
  %i.oq = fmul reassoc nnan nsz arcp contract afn double %i.op, 1.250000e-01 ; 2 uses
  %i.or = sitofp reassoc nsz arcp contract afn i32 %i.nx to double
  %i.os = sitofp i16 %i.oe to double
  %i.ot = fsub reassoc nsz arcp contract afn double %i.or, %i.oq
  %i.ou = fadd reassoc nsz arcp contract afn double %i.ot, %i.os
  %i.ov = fadd reassoc nsz arcp contract afn double %i.ou, %i.oo
  %i.ow = fptosi double %i.ov to i32              ; 2 uses
  %i.ox = sitofp reassoc nsz arcp contract afn i32 %i.ow to float
  %i.oy = fadd reassoc nsz arcp contract afn float %i.oi, %i.ox
  %i.oz = fpext reassoc nsz arcp contract afn float %i.oy to double
  %i.pa = sitofp reassoc nsz arcp contract afn i32 %i.np to double ; 3 uses
  %.neg332 = fmul reassoc nnan nsz arcp contract afn double %i.op, -2.500000e-01 ; 2 uses
  %i.pb = fadd reassoc nsz arcp contract afn double %.neg332, %i.pa
  %i.pc = fadd reassoc nsz arcp contract afn double %i.pb, %i.oz
  %i.pd = fptosi double %i.pc to i32              ; 2 uses
  call void @gtk_border_free(ptr noundef nonnull %i.ne) #22
  call void @gtk_border_free(ptr noundef nonnull %i.nf) #22
  %i.pe = load ptr, ptr %i.ng, align 8, !tbaa !99
  %i.pf = load i32, ptr %i.e, align 4, !tbaa !171
  %i.pg = sitofp reassoc nsz arcp contract afn i32 %i.pf to double
  %i.ph = sitofp reassoc nsz arcp contract afn i32 %i.nr to double
  %i.pi = fmul reassoc nnan nsz arcp contract afn double %i.ph, 2.000000e+00
  %i.pj = fadd reassoc nsz arcp contract afn double %i.pi, %i.pg ; 3 uses
  %i.pk = load i32, ptr %i.a, align 4, !tbaa !171
  %i.pl = sitofp reassoc nsz arcp contract afn i32 %i.pk to double ; 2 uses
  %i.pm = fcmp reassoc nsz arcp contract afn ogt double %i.pj, %i.pl
  br i1 %i.pm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.pn = fmul reassoc nnan nsz arcp contract afn double %i.pa, 2.000000e+00
  %1 = fadd reassoc nsz arcp contract afn double %i.pn, %.neg332
  %i.po = fmul reassoc nnan nsz arcp contract afn float %i.me, 2.000000e+00
  %i.pp = fpext reassoc nsz arcp contract afn float %i.po to double
  %i.pq = fmul reassoc nnan nsz arcp contract afn float %i.me, 2.100000e+01
  %i.pr = fpext reassoc nsz arcp contract afn float %i.pq to double
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pr, %i.pp
  %i.pt = fadd reassoc nsz arcp contract afn double %i.ps, %1
  %i.pu = fptosi double %i.pt to i32
  %i.pv = sitofp reassoc nsz arcp contract afn i32 %i.pu to double ; 2 uses
  %i.pw = fcmp reassoc nsz arcp contract afn olt double %i.pj, %i.pv
  %. = select reassoc nsz arcp contract afn i1 %i.pw, double %i.pv, double %i.pj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.px = phi reassoc nsz arcp contract afn double [ %i.pl, %bb.h ], [ %., %bb.i ]
  %i.py = fptosi double %i.px to i32
  %i.pz = add nsw i32 %i.nx, %i.of                ; 2 uses
  %i.qa = sub i32 %i.pd, %i.pz
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.qa to float
  %i.qc = sitofp reassoc nsz arcp contract afn i32 %i.np to float
  %i.qd = fadd reassoc nsz arcp contract afn float %i.ok, %i.qc
  %i.qe = fadd reassoc nsz arcp contract afn float %i.qd, %i.qb
  %i.qf = fptosi float %i.qe to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.pe, i32 noundef %i.py, i32 noundef %i.qf) #22
  %i.qg = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_label_set_xalign(ptr noundef %i.qg, float noundef 0.000000e+00) #22
  %i.qh = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_label_set_yalign(ptr noundef %i.qh, float noundef 0.000000e+00) #22
  %i.qi = load ptr, ptr %i.ng, align 8, !tbaa !99
  call void @gtk_widget_set_valign(ptr noundef %i.qi, i32 noundef 1) #22
  %i.qj = load ptr, ptr %i.ng, align 8, !tbaa !99
  call void @gtk_widget_set_halign(ptr noundef %i.qj, i32 noundef 1) #22
  %i.qk = load ptr, ptr %i.ng, align 8, !tbaa !99
  %i.ql = add nsw i32 %i.pz, %i.lz
  call void @gtk_widget_set_margin_top(ptr noundef %i.qk, i32 noundef %i.ql) #22
  %i.qm = load ptr, ptr %i.ng, align 8, !tbaa !99
  %i.qn = add nsw i32 %i.lv, %i.oh
  %i.qo = add nsw i32 %i.qn, %i.oc
  call void @gtk_widget_set_margin_start(ptr noundef %i.qm, i32 noundef %i.qo) #22
  %i.qp = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_widget_set_margin_top(ptr noundef %i.qp, i32 noundef %i.nr) #22
  %i.qq = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_widget_set_margin_start(ptr noundef %i.qq, i32 noundef %i.nr) #22
  %i.qr = load ptr, ptr %i.my, align 8, !tbaa !101
  call void @gtk_widget_set_margin_end(ptr noundef %i.qr, i32 noundef %i.nr) #22
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !102
  %i.qu = fptosi float %i.oi to i32               ; 14 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.qt, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.qv = load ptr, ptr %i.qs, align 8, !tbaa !102
  call void @gtk_widget_set_valign(ptr noundef %i.qv, i32 noundef 1) #22
  %i.qw = load ptr, ptr %i.qs, align 8, !tbaa !102
  %i.qx = fsub reassoc nsz arcp contract afn double %i.pa, %i.oq
  %i.qy = sitofp i16 %i.og to double
  %i.qz = fadd reassoc nsz arcp contract afn double %i.qx, %i.qy ; 3 uses
  %i.ra = fadd reassoc nsz arcp contract afn double %i.qz, %i.mq
  %i.rb = fptosi double %i.ra to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.qw, i32 noundef %i.rb) #22
  %i.rc = load ptr, ptr %i.qs, align 8, !tbaa !102
  %i.rd = add nsw i32 %i.lz, %i.ow                ; 7 uses
  call void @gtk_widget_set_margin_top(ptr noundef %i.rc, i32 noundef %i.rd) #22
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.rf = fadd reassoc nsz arcp contract afn double %i.mu, %i.mq
  %i.rg = fadd reassoc nsz arcp contract afn double %i.rf, %i.qz ; 5 uses
  %i.rh = load ptr, ptr %i.re, align 8, !tbaa !98
  call void @gtk_widget_set_size_request(ptr noundef %i.rh, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.ri = load ptr, ptr %i.re, align 8, !tbaa !98
  call void @gtk_widget_set_valign(ptr noundef %i.ri, i32 noundef 1) #22
  %i.rj = load ptr, ptr %i.re, align 8, !tbaa !98
  call void @gtk_widget_set_margin_top(ptr noundef %i.rj, i32 noundef %i.rd) #22
  %i.rk = load ptr, ptr %i.re, align 8, !tbaa !98
  %i.rl = fmul reassoc nnan nsz arcp contract afn double %i.mu, 3.000000e+00
  %i.rm = fadd reassoc nsz arcp contract afn double %i.rg, %i.rl
  %i.rn = fptosi double %i.rm to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.rk, i32 noundef %i.rn) #22
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !98
  call void @gtk_widget_set_size_request(ptr noundef %i.rp, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.rq = load ptr, ptr %i.ro, align 8, !tbaa !98
  call void @gtk_widget_set_valign(ptr noundef %i.rq, i32 noundef 1) #22
  %i.rr = load ptr, ptr %i.ro, align 8, !tbaa !98
  call void @gtk_widget_set_margin_top(ptr noundef %i.rr, i32 noundef %i.rd) #22
  %i.rs = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.rt = fmul reassoc nnan nsz arcp contract afn double %i.mu, 6.000000e+00
  %i.ru = fadd reassoc nsz arcp contract afn double %i.rg, %i.rt
  %i.rv = fptosi double %i.ru to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.rs, i32 noundef %i.rv) #22
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !98
  call void @gtk_widget_set_size_request(ptr noundef %i.rx, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.ry = load ptr, ptr %i.rw, align 8, !tbaa !98
  call void @gtk_widget_set_valign(ptr noundef %i.ry, i32 noundef 1) #22
  %i.rz = load ptr, ptr %i.rw, align 8, !tbaa !98
  call void @gtk_widget_set_margin_top(ptr noundef %i.rz, i32 noundef %i.rd) #22
  %i.sa = load ptr, ptr %i.rw, align 8, !tbaa !98
  %i.sb = fmul reassoc nnan nsz arcp contract afn double %i.mu, 9.000000e+00
  %i.sc = fadd reassoc nsz arcp contract afn double %i.rg, %i.sb
  %i.sd = fptosi double %i.sc to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sa, i32 noundef %i.sd) #22
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !98
  call void @gtk_widget_set_size_request(ptr noundef %i.sf, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !98
  call void @gtk_widget_set_valign(ptr noundef %i.sg, i32 noundef 1) #22
  %i.sh = load ptr, ptr %i.se, align 8, !tbaa !98
  call void @gtk_widget_set_margin_top(ptr noundef %i.sh, i32 noundef %i.rd) #22
  %i.si = load ptr, ptr %i.se, align 8, !tbaa !98
  %i.sj = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.200000e+01
  %i.sk = fadd reassoc nsz arcp contract afn double %i.rg, %i.sj
  %i.sl = fptosi double %i.sk to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.si, i32 noundef %i.sl) #22
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !98
  call void @gtk_widget_set_size_request(ptr noundef %i.sn, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.so = load ptr, ptr %i.sm, align 8, !tbaa !98
  call void @gtk_widget_set_valign(ptr noundef %i.so, i32 noundef 1) #22
  %i.sp = load ptr, ptr %i.sm, align 8, !tbaa !98
  call void @gtk_widget_set_margin_top(ptr noundef %i.sp, i32 noundef %i.rd) #22
  %i.sq = load ptr, ptr %i.sm, align 8, !tbaa !98
  %i.sr = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.500000e+01
  %i.ss = fadd reassoc nsz arcp contract afn double %i.rg, %i.sr
  %i.st = fptosi double %i.ss to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sq, i32 noundef %i.st) #22
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !105
  call void @gtk_widget_set_size_request(ptr noundef %i.sv, i32 noundef %i.qu, i32 noundef %i.qu) #22
  %i.sw = load ptr, ptr %i.su, align 8, !tbaa !105
  call void @gtk_widget_set_valign(ptr noundef %i.sw, i32 noundef 1) #22
  %i.sx = load ptr, ptr %i.su, align 8, !tbaa !105
  call void @gtk_widget_set_halign(ptr noundef %i.sx, i32 noundef 1) #22
  %i.sy = load ptr, ptr %i.su, align 8, !tbaa !105
  call void @gtk_widget_set_margin_top(ptr noundef %i.sy, i32 noundef %i.rd) #22
  %i.sz = load ptr, ptr %i.su, align 8, !tbaa !105
  %i.ta = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.800000e+01 ; 2 uses
  %i.tb = fadd reassoc nsz arcp contract afn double %i.oj, %i.mq
  %i.tc = fadd reassoc nsz arcp contract afn double %i.tb, %i.ta
  %i.td = fadd reassoc nsz arcp contract afn double %i.tc, %i.qz
  %i.te = fptosi double %i.td to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.sz, i32 noundef %i.te) #22
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !106
  call void @gtk_widget_set_state_flags(ptr noundef %i.tg, i32 noundef 1, i32 noundef 0) #22
  %i.th = load ptr, ptr %i.tf, align 8, !tbaa !106
  %i.ti = fptosi float %i.ok to i32               ; 10 uses
  call void @gtk_widget_set_size_request(ptr noundef %i.th, i32 noundef %i.ti, i32 noundef %i.ti) #22
  %i.tj = load ptr, ptr %i.tf, align 8, !tbaa !106
  call void @gtk_widget_set_halign(ptr noundef %i.tj, i32 noundef 1) #22
  %i.tk = load ptr, ptr %i.tf, align 8, !tbaa !106
  %i.tl = add nsw i32 %i.lz, %i.pd                ; 6 uses
  call void @gtk_widget_set_margin_top(ptr noundef %i.tk, i32 noundef %i.tl) #22
  %i.tm = load ptr, ptr %i.tf, align 8, !tbaa !106
  %i.tn = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.300000e+01
  %i.to = fadd reassoc nsz arcp contract afn double %i.tn, %i.mq
  %i.tp = fptosi double %i.to to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.tm, i32 noundef %i.tp) #22
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !107
  call void @gtk_widget_set_size_request(ptr noundef %i.tr, i32 noundef %i.ti, i32 noundef %i.ti) #22
  %i.ts = load ptr, ptr %i.tq, align 8, !tbaa !107
  call void @gtk_widget_set_halign(ptr noundef %i.ts, i32 noundef 1) #22
  %i.tt = load ptr, ptr %i.tq, align 8, !tbaa !107
  call void @gtk_widget_set_margin_top(ptr noundef %i.tt, i32 noundef %i.tl) #22
  %i.tu = load ptr, ptr %i.tq, align 8, !tbaa !107
  %i.tv = fmul reassoc nnan nsz arcp contract afn double %i.mu, 1.000000e+01
  %i.tw = fadd reassoc nsz arcp contract afn double %i.tv, %i.mq
  %i.tx = fptosi double %i.tw to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.tu, i32 noundef %i.tx) #22
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !108
  call void @gtk_widget_set_size_request(ptr noundef %i.tz, i32 noundef %i.ti, i32 noundef %i.ti) #22
  %i.ua = load ptr, ptr %i.ty, align 8, !tbaa !108
  call void @gtk_widget_set_halign(ptr noundef %i.ua, i32 noundef 1) #22
  %i.ub = load ptr, ptr %i.ty, align 8, !tbaa !108
  call void @gtk_widget_set_margin_top(ptr noundef %i.ub, i32 noundef %i.tl) #22
  %i.uc = load ptr, ptr %i.ty, align 8, !tbaa !108
  %i.ud = fmul reassoc nnan nsz arcp contract afn double %i.mu, 7.000000e+00
  %i.ue = fadd reassoc nsz arcp contract afn double %i.ud, %i.mq
  %i.uf = fptosi double %i.ue to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.uc, i32 noundef %i.uf) #22
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !109
  call void @gtk_widget_set_size_request(ptr noundef %i.uh, i32 noundef %i.ti, i32 noundef %i.ti) #22
  %i.ui = load ptr, ptr %i.ug, align 8, !tbaa !109
  call void @gtk_widget_set_halign(ptr noundef %i.ui, i32 noundef 1) #22
  %i.uj = load ptr, ptr %i.ug, align 8, !tbaa !109
  call void @gtk_widget_set_margin_top(ptr noundef %i.uj, i32 noundef %i.tl) #22
  %i.uk = load ptr, ptr %i.ug, align 8, !tbaa !109
  %i.ul = fmul reassoc nnan nsz arcp contract afn double %i.mu, 4.000000e+00
  %i.um = fadd reassoc nsz arcp contract afn double %i.ul, %i.mq
  %i.un = fptosi double %i.um to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.uk, i32 noundef %i.un) #22
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !110
  call void @gtk_widget_set_size_request(ptr noundef %i.up, i32 noundef %i.ti, i32 noundef %i.ti) #22
  %i.uq = load ptr, ptr %i.uo, align 8, !tbaa !110
  call void @gtk_widget_set_halign(ptr noundef %i.uq, i32 noundef 1) #22
  %i.ur = load ptr, ptr %i.uo, align 8, !tbaa !110
  call void @gtk_widget_set_margin_top(ptr noundef %i.ur, i32 noundef %i.tl) #22
  %i.us = load ptr, ptr %i.uo, align 8, !tbaa !110
  %i.ut = sitofp reassoc nsz arcp contract afn i32 %i.lv to float
  %i.uu = fadd reassoc nsz arcp contract afn float %i.me, %i.ut
  %i.uv = fptosi float %i.uu to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.us, i32 noundef %i.uv) #22
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !111
  call void @gtk_widget_set_margin_top(ptr noundef %i.ux, i32 noundef %i.tl) #22
  %i.uy = load ptr, ptr %i.uw, align 8, !tbaa !111
end_hunk_0
