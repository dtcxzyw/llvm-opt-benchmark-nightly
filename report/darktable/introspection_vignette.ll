Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_vignette?download=true
inline.NumInlined: 23
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mouse_moved:bb.a
  %spec.select220 = select reassoc nsz arcp contract afn i1 %i.fe, double 1.000000e-01, double %i.fd
  %i.ff = fcmp reassoc nsz arcp contract afn ogt double %spec.select220, %i.fa
  %spec.select221 = select i1 %i.fe, float 1.000000e-01, float %i.fc
  %spec.select223 = select i1 %i.ff, float %.219, float %spec.select221 ; 3 uses
  %i.fg = fdiv reassoc nsz arcp contract afn float %spec.select223, %.3188 ; 3 uses
  %i.fh = fcmp reassoc nsz arcp contract afn ugt float %i.fg, 1.000000e+00
  br i1 %i.fh, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !41
  %i.fk = call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.fl = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !17
  %i.fm = or i32 %i.fl, %4
  %i.fn = and i32 %i.fm, %i.fk
  %.not225 = icmp eq i32 %i.fn, 4
  br i1 %.not225, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fj to double
  %i.fp = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.fo
  %i.fq = fmul reassoc nsz arcp contract afn double %i.fa, 5.000000e-01
  %i.fr = fmul reassoc nsz arcp contract afn double %i.fq, %i.fp
  %i.fs = fptrunc reassoc nsz arcp contract afn double %i.fr to float
  %i.ft = fpext reassoc nsz arcp contract afn float %spec.select223 to double
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, 1.000000e+02
  %i.fv = fpext reassoc nsz arcp contract afn float %i.fs to double
  %i.fw = fdiv reassoc nsz arcp contract afn double %i.fu, %i.fv
  %i.fx = fptrunc reassoc nsz arcp contract afn double %i.fw to float
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !95
  call void @dt_bauhaus_slider_set(ptr noundef %i.fy, float noundef %i.fx) #18
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !96
  %i.gb = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.fg
  call void @dt_bauhaus_slider_set(ptr noundef %i.ga, float noundef %i.gb) #18
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.gc = fmul reassoc nsz arcp contract afn float %.219, 5.000000e-01
  %i.gd = fpext reassoc nsz arcp contract afn float %spec.select223 to double
  %i.ge = fmul reassoc nsz arcp contract afn double %i.gd, 1.000000e+02
  %i.gf = fpext reassoc nsz arcp contract afn float %i.gc to double
  %i.gg = fdiv reassoc nsz arcp contract afn double %i.ge, %i.gf
  %i.gh = fptrunc reassoc nsz arcp contract afn double %i.gg to float
  %i.gi = load ptr, ptr %i.d, align 8, !tbaa !95
  call void @dt_bauhaus_slider_set(ptr noundef %i.gi, float noundef %i.gh) #18
  %i.gj = call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.gk = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !17
  %i.gl = or i32 %i.gk, %4
  %i.gm = and i32 %i.gl, %i.gj
  %.not224 = icmp eq i32 %i.gm, 4
  br i1 %.not224, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.fg
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !96
  call void @dt_bauhaus_slider_set(ptr noundef %i.gp, float noundef %i.gn) #18
  br label %bb.am

bb.ah:                                            ; preds = %bb.s
  %i.gq = fmul reassoc nsz arcp contract afn float %i.j, %1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !41 ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ugt float %i.gs, 1.000000e+00
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gs, %.219
  %i.gv = select reassoc nsz arcp contract afn i1 %i.gt, float %.219, float %i.gu ; 3 uses
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, 5.000000e-01
  %i.gx = fpext reassoc nsz arcp contract afn float %i.gv to double
  %i.gy = fadd reassoc nsz arcp contract afn float %.3188, %i.u
  %i.gz = fsub reassoc nsz arcp contract afn float %i.gq, %i.gy
  %i.ha = fpext reassoc nsz arcp contract afn float %i.gz to double ; 2 uses
  %i.hb = fcmp reassoc nsz arcp contract afn olt double %i.ha, 0.000000e+00
  %i.hc = select reassoc nsz arcp contract afn i1 %i.hb, double 0.000000e+00, double %i.ha ; 2 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ogt double %i.hc, %i.gx
  %i.he = fptrunc reassoc nsz arcp contract afn double %i.hc to float
  %i.hf = select i1 %i.hd, float %i.gv, float %i.he
  %i.hg = fpext reassoc nsz arcp contract afn float %i.hf to double
  %i.hh = fmul reassoc nsz arcp contract afn double %i.hg, 1.000000e+02
  %i.hi = fpext reassoc nsz arcp contract afn float %i.gw to double
  %i.hj = fdiv reassoc nsz arcp contract afn double %i.hh, %i.hi
  %i.hk = fptrunc reassoc nsz arcp contract afn double %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set(ptr noundef %i.hm, float noundef %i.hk) #18
  br label %bb.am

bb.ai:                                            ; preds = %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !41 ; 2 uses
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.ho, 1.000000e+00
  br i1 %i.hp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hq = fpext reassoc nnan nsz arcp contract afn float %i.ho to double
  %i.hr = fpext reassoc nsz arcp contract afn float %.219 to double
  %i.hs = fsub reassoc nnan nsz arcp contract afn double 2.000000e+00, %i.hq
  %i.ht = fmul reassoc nsz arcp contract afn double %i.hs, %i.hr
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.hu = fpext reassoc nsz arcp contract afn float %.219 to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hv = phi reassoc nsz arcp contract afn double [ %i.ht, %bb.aj ], [ %i.hu, %bb.ak ]
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, 5.000000e-01
  %i.hx = fptrunc reassoc nsz arcp contract afn double %i.hw to float ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, 2.000000e+00 ; 2 uses
  %i.hz = fpext reassoc nsz arcp contract afn float %i.hy to double
  %i.ia = fmul reassoc nsz arcp contract afn float %2, %i.k
  %i.ib = fadd reassoc nsz arcp contract afn float %i.ia, %.3184
  %i.ic = fsub reassoc nsz arcp contract afn float %i.ac, %i.ib
  %i.id = fpext reassoc nsz arcp contract afn float %i.ic to double ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt double %i.id, 0.000000e+00
  %i.if = select reassoc nsz arcp contract afn i1 %i.ie, double 0.000000e+00, double %i.id ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ogt double %i.if, %i.hz
  %i.ih = fptrunc reassoc nsz arcp contract afn double %i.if to float
  %i.ii = select i1 %i.ig, float %i.hy, float %i.ih
  %i.ij = fpext reassoc nsz arcp contract afn float %i.ii to double
  %i.ik = fmul reassoc nsz arcp contract afn double %i.ij, 1.000000e+02
  %i.il = fpext reassoc nsz arcp contract afn float %i.hx to double
  %i.im = fdiv reassoc nsz arcp contract afn double %i.ik, %i.il
  %i.in = fptrunc reassoc nsz arcp contract afn double %i.im to float
  %i.io = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set(ptr noundef %i.ip, float noundef %i.in) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.s, %bb.ae, %bb.ad, %bb.ag, %bb.af, %bb.y, %bb.x, %bb.aa, %bb.z, %bb.u, %bb.al, %bb.ah
  call void @dt_control_queue_redraw_center() #18
  br label %bb.as

bb.an:                                            ; preds = %bb.r, %_get_grab.exit
  switch i32 %.0189, label %bb.ar [
    i32 0, label %bb.aq
    i32 1, label %.sink.split
    i32 2, label %bb.ao
    i32 4, label %bb.ap
    i32 8, label %bb.ao
    i32 16, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  br label %.sink.split

bb.ap:                                            ; preds = %bb.an, %bb.an
  br label %.sink.split

bb.aq:                                            ; preds = %bb.an
  br i1 %i.bw, label %bb.ar, label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.an, %bb.ap, %bb.ao
  %.str.7.sink = phi ptr [ @.str.7, %bb.ao ], [ @.str.6, %bb.an ], [ @.str.8, %bb.ap ], [ @.str.9, %bb.aq ]
  call void @dt_control_change_cursor(ptr noundef nonnull %.str.7.sink) #18
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.an, %bb.aq
  store i32 %.0189, ptr @mouse_moved.old_grab, align 4, !tbaa !17
  call void @dt_control_queue_redraw_center() #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am, %bb.t
  %.0 = phi i32 [ 0, %bb.t ], [ 1, %bb.am ], [ 0, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_control_queue_redraw_center() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readnone captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %4, 1
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @button_released(ptr nofree noundef readnone captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !164
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !109 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 4, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !166
  %i.l = load <2 x i32>, ptr %i.h, align 16, !tbaa !17 ; 5 uses
  %i.m = sitofp <2 x i32> %i.l to <2 x float>     ; 4 uses
  %i.n = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.m, splat (float 5.000000e-01)
  %i.o = fpext nnan <2 x float> %i.n to <2 x double>
  %i.p = load <2 x float>, ptr %i.i, align 4, !tbaa !13
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.m
  %i.r = fpext <2 x float> %i.q to <2 x double>
  %i.s = fmul reassoc nsz arcp contract afn <2 x double> %i.r, splat (double 5.000000e-01)
  %i.t = fadd reassoc nsz arcp contract afn <2 x double> %i.s, %i.o
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = load <2 x i32>, ptr %4, align 4, !tbaa !17
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !111
  %.not169 = icmp eq i32 %i.y, 0
  br i1 %.not169, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !166 ; 2 uses
  %i.ab = extractelement <2 x float> %i.m, i64 0
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab
  %i.ad = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.ac
  %i.ae = extractelement <2 x float> %i.m, i64 1
  %i.af = fmul reassoc nsz arcp contract afn float %i.aa, %i.ae
  %i.ag = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.af
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = extractelement <2 x i32> %i.l, i64 0
  %i.ai = extractelement <2 x i32> %i.l, i64 1
  %. = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.ah)
  %i.aj = sitofp reassoc nsz arcp contract afn i32 %. to float
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !166
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.aj
  %i.an = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !167 ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ugt float %i.ap, 1.000000e+00 ; 2 uses
  %i.ar = fdiv reassoc nsz arcp contract afn float %i.an, %i.ap
  %i.as = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ap
  %i.at = fdiv reassoc nsz arcp contract afn float %i.an, %i.as
  %.0151 = select nsz i1 %i.aq, float %i.an, float %i.ar
  %.0150 = select nsz i1 %i.aq, float %i.at, float %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1152 = phi nsz float [ %i.ad, %bb.c ], [ %.0151, %bb.d ]
  %.1 = phi nsz float [ %i.ag, %bb.c ], [ %.0150, %bb.d ]
  %i.au = load float, ptr %i.e, align 4, !tbaa !168
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3C23D70A ; 2 uses
  %i.aw = extractelement <2 x i32> %i.l, i64 0
  %i.ax = extractelement <2 x i32> %i.l, i64 1
  %.172 = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ax)
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %.172 to double
  %i.az = fdiv reassoc nsz arcp contract afn double 1.000000e+02, %i.ay
  %i.ba = fptrunc reassoc nsz arcp contract afn double %i.az to float ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !169 ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.bc, %i.ba
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !170 ; 2 uses
  %i.bh = fcmp reassoc nsz arcp contract afn ogt float %i.bg, 1.000000e-03
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bh, float %i.bg, float 1.000000e-03 ; 2 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.bi ; 2 uses
  %i.bk = fmul reassoc nnan nsz arcp contract afn float %i.bi, 5.000000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !171 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.bm, 2
  %switch.select = select i1 %switch.selectcmp, float f0x37800000, float 0.000000e+00
  %switch.selectcmp174 = icmp eq i32 %i.bm, 1
  %switch.select175 = select i1 %switch.selectcmp174, float 3.906250e-03, float %switch.select ; 2 uses
  %i.bn = tail call ptr @dt_alloc_aligned(i64 noundef 64) #18 ; 7 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %alloc_tea_states.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bn, i8 0, i64 64, i1 false)
  br label %alloc_tea_states.exit

alloc_tea_states.exit:                            ; preds = %bb.e, %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !172 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !173
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !174 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %alloc_tea_states.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = insertelement <2 x float> poison, float %i.k, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.u
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.w, %i.by ; 2 uses
  %i.ca = fcmp reassoc nsz arcp contract afn une float %switch.select175, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.bp, 0.000000e+00
  %.not171 = icmp eq i32 %i.g, 0                  ; 2 uses
  %.pre = load i32, ptr %i.bv, align 4, !tbaa !175
  %i.cd = extractelement <2 x float> %i.bz, i64 1
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.be
  br label %bb.g

._crit_edge197:                                   ; preds = %._crit_edge, %alloc_tea_states.exit
  tail call void @free(ptr noundef %i.bn) #18
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph196, %._crit_edge
  %i.cg = phi i32 [ %.pre, %.lr.ph196 ], [ %i.cw, %._crit_edge ]
  %indvars.iv201 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next202, %._crit_edge ] ; 3 uses
  %i.ch = phi i32 [ %i.bt, %.lr.ph196 ], [ %i.cx, %._crit_edge ]
  %i.ci = sext i32 %i.cg to i64
  %i.cj = shl nsw i64 %i.ci, 2
  %i.ck = mul i64 %i.cj, %indvars.iv201           ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ck
  %i.cn = trunc nuw nsw i64 %indvars.iv201 to i32 ; 2 uses
  %i.co = mul nuw nsw i32 %i.ch, %i.cn
  store i32 %i.co, ptr %i.bn, align 4, !tbaa !17
  %i.cp = load i32, ptr %i.bv, align 4, !tbaa !175 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.cr = uitofp nsz nneg i32 %i.cn to float
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cd, %i.cr
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %.1
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ct)
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cu, float %i.bj)
  br label %bb.h

._crit_edge:                                      ; preds = %.loopexit, %bb.g
  %i.cw = phi i32 [ %i.cp, %bb.g ], [ %i.lo, %.loopexit ]
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.cx = load i32, ptr %i.bs, align 4, !tbaa !174 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next202, %i.cy
  br i1 %i.cz, label %bb.g, label %._crit_edge197

bb.h:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.da = trunc nuw nsw i64 %indvars.iv to i32
  %i.db = uitofp nsz nneg i32 %i.da to float
  %i.dc = fadd reassoc nsz arcp contract afn float %i.ce, %i.db
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %.1152
  %i.de = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dd)
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.de, float %i.bj)
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.cv
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dg, float %i.bk) ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn ult float %i.dh, %i.av
  br i1 %i.di, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = fsub reassoc nsz arcp contract afn float %i.dh, %i.av
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 1.000000e+02
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.cf ; 4 uses
  %i.dm = fcmp reassoc nsz arcp contract afn ult float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.j, label %.thread178

.thread178:                                       ; preds = %bb.i
  %i.dn = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dn
  %.sroa.0.0.copyload223 = load <4 x float>, ptr %i.do, align 4, !tbaa !13, !alias.scope !176
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.dl, 0.000000e+00
  br i1 %i.dp, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  br i1 %i.ca, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dl, f0x40490FDB
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.dq)
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, 5.000000e-01
  %i.dt = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ds
  %i.du = load i32, ptr %i.bn, align 4, !tbaa !17
  %i.dv = load i32, ptr %i.cb, align 4, !tbaa !17 ; 4 uses
  %i.dw = shl i32 %i.dv, 4
  %i.dx = add i32 %i.dw, -1556008596
  %i.dy = add i32 %i.dv, -1640531527
  %i.dz = lshr i32 %i.dv, 5
  %i.ea = add nuw nsw i32 %i.dz, -939442524
  %i.eb = xor i32 %i.dx, %i.dy
  %i.ec = xor i32 %i.eb, %i.ea
  %i.ed = add i32 %i.ec, %i.du                    ; 4 uses
  %i.ee = shl i32 %i.ed, 4
  %i.ef = add i32 %i.ee, -1383041155
  %i.eg = add i32 %i.ed, -1640531527
  %i.eh = xor i32 %i.ef, %i.eg
  %i.ei = lshr i32 %i.ed, 5
  %i.ej = add nuw i32 %i.ei, 2123724318
  %i.ek = xor i32 %i.eh, %i.ej
  %i.el = add i32 %i.ek, %i.dv                    ; 4 uses
  %i.em = shl i32 %i.el, 4
  %i.en = add i32 %i.em, -1556008596
  %i.eo = add i32 %i.el, 1013904242
  %i.ep = lshr i32 %i.el, 5
  %i.eq = add nuw nsw i32 %i.ep, -939442524
  %i.er = xor i32 %i.en, %i.eo
  %i.es = xor i32 %i.er, %i.eq
  %i.et = add i32 %i.es, %i.ed                    ; 4 uses
  %i.eu = shl i32 %i.et, 4
  %i.ev = add i32 %i.eu, -1383041155
  %i.ew = add i32 %i.et, 1013904242
  %i.ex = xor i32 %i.ev, %i.ew
  %i.ey = lshr i32 %i.et, 5
  %i.ez = add nuw i32 %i.ey, 2123724318
  %i.fa = xor i32 %i.ex, %i.ez
  %i.fb = add i32 %i.fa, %i.el                    ; 4 uses
  %i.fc = shl i32 %i.fb, 4
  %i.fd = add i32 %i.fc, -1556008596
  %i.fe = add i32 %i.fb, -626627285
  %i.ff = lshr i32 %i.fb, 5
  %i.fg = add nuw nsw i32 %i.ff, -939442524
  %i.fh = xor i32 %i.fd, %i.fe
  %i.fi = xor i32 %i.fh, %i.fg
  %i.fj = add i32 %i.fi, %i.et                    ; 4 uses
  %i.fk = shl i32 %i.fj, 4
  %i.fl = add i32 %i.fk, -1383041155
  %i.fm = add i32 %i.fj, -626627285
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = lshr i32 %i.fj, 5
  %i.fp = add nuw i32 %i.fo, 2123724318
  %i.fq = xor i32 %i.fn, %i.fp
  %i.fr = add i32 %i.fq, %i.fb                    ; 4 uses
  %i.fs = shl i32 %i.fr, 4
  %i.ft = add i32 %i.fs, -1556008596
  %i.fu = add i32 %i.fr, 2027808484
  %i.fv = lshr i32 %i.fr, 5
  %i.fw = add nuw nsw i32 %i.fv, -939442524
  %i.fx = xor i32 %i.ft, %i.fu
  %i.fy = xor i32 %i.fx, %i.fw
  %i.fz = add i32 %i.fy, %i.fj                    ; 4 uses
  %i.ga = shl i32 %i.fz, 4
  %i.gb = add i32 %i.ga, -1383041155
  %i.gc = add i32 %i.fz, 2027808484
  %i.gd = xor i32 %i.gb, %i.gc
  %i.ge = lshr i32 %i.fz, 5
  %i.gf = add nuw i32 %i.ge, 2123724318
  %i.gg = xor i32 %i.gd, %i.gf
  %i.gh = add i32 %i.gg, %i.fr                    ; 4 uses
  %i.gi = shl i32 %i.gh, 4
  %i.gj = add i32 %i.gi, -1556008596
  %i.gk = add i32 %i.gh, 387276957
  %i.gl = lshr i32 %i.gh, 5
  %i.gm = add nuw nsw i32 %i.gl, -939442524
  %i.gn = xor i32 %i.gj, %i.gk
  %i.go = xor i32 %i.gn, %i.gm
  %i.gp = add i32 %i.go, %i.fz                    ; 4 uses
  %i.gq = shl i32 %i.gp, 4
  %i.gr = add i32 %i.gq, -1383041155
  %i.gs = add i32 %i.gp, 387276957
  %i.gt = xor i32 %i.gr, %i.gs
  %i.gu = lshr i32 %i.gp, 5
  %i.gv = add nuw i32 %i.gu, 2123724318
  %i.gw = xor i32 %i.gt, %i.gv
  %i.gx = add i32 %i.gw, %i.gh                    ; 4 uses
  %i.gy = shl i32 %i.gx, 4
  %i.gz = add i32 %i.gy, -1556008596
  %i.ha = add i32 %i.gx, -1253254570
  %i.hb = lshr i32 %i.gx, 5
  %i.hc = add nuw nsw i32 %i.hb, -939442524
  %i.hd = xor i32 %i.gz, %i.ha
  %i.he = xor i32 %i.hd, %i.hc
  %i.hf = add i32 %i.he, %i.gp                    ; 4 uses
  %i.hg = shl i32 %i.hf, 4
  %i.hh = add i32 %i.hg, -1383041155
  %i.hi = add i32 %i.hf, -1253254570
  %i.hj = xor i32 %i.hh, %i.hi
  %i.hk = lshr i32 %i.hf, 5
  %i.hl = add nuw i32 %i.hk, 2123724318
  %i.hm = xor i32 %i.hj, %i.hl
  %i.hn = add i32 %i.hm, %i.gx                    ; 4 uses
  %i.ho = shl i32 %i.hn, 4
  %i.hp = add i32 %i.ho, -1556008596
  %i.hq = add i32 %i.hn, 1401181199
  %i.hr = lshr i32 %i.hn, 5
  %i.hs = add nuw nsw i32 %i.hr, -939442524
  %i.ht = xor i32 %i.hp, %i.hq
  %i.hu = xor i32 %i.ht, %i.hs
  %i.hv = add i32 %i.hu, %i.hf                    ; 4 uses
  %i.hw = shl i32 %i.hv, 4
  %i.hx = add i32 %i.hw, -1383041155
  %i.hy = add i32 %i.hv, 1401181199
  %i.hz = xor i32 %i.hx, %i.hy
  %i.ia = lshr i32 %i.hv, 5
  %i.ib = add nuw i32 %i.ia, 2123724318
  %i.ic = xor i32 %i.hz, %i.ib
  %i.id = add i32 %i.ic, %i.hn                    ; 4 uses
  %i.ie = shl i32 %i.id, 4
  %i.if = add i32 %i.ie, -1556008596
  %i.ig = add i32 %i.id, -239350328
  %i.ih = lshr i32 %i.id, 5
  %i.ii = add nuw nsw i32 %i.ih, -939442524
  %i.ij = xor i32 %i.if, %i.ig
  %i.ik = xor i32 %i.ij, %i.ii
  %i.il = add i32 %i.ik, %i.hv                    ; 5 uses
  %i.im = shl i32 %i.il, 4
  %i.in = add i32 %i.im, -1383041155
  %i.io = add i32 %i.il, -239350328
  %i.ip = xor i32 %i.in, %i.io
  %i.iq = lshr i32 %i.il, 5
  %i.ir = add nuw i32 %i.iq, 2123724318
  %i.is = xor i32 %i.ip, %i.ir
  %i.it = add i32 %i.is, %i.id
  store i32 %i.il, ptr %i.bn, align 4, !tbaa !17
  store i32 %i.it, ptr %i.cb, align 4, !tbaa !17
  %i.iu = uitofp reassoc nsz arcp contract afn i32 %i.il to float ; 2 uses
  %i.iv = fmul reassoc nnan nsz arcp contract afn float %i.iu, f0x2F800000
  %i.iw = fcmp reassoc nsz arcp contract afn olt float %i.iv, 5.000000e-01
  %i.ix = fmul reassoc nnan nsz arcp contract afn float %i.iu, f0x30000000 ; 2 uses
  br i1 %i.iw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ix)
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, -1.000000e+00
  br label %tpdf.exit

bb.n:                                             ; preds = %bb.l
  %i.ja = fsub reassoc nnan nsz arcp contract afn float 2.000000e+00, %i.ix
  %i.jb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ja)
  %i.jc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jb
  br label %tpdf.exit

tpdf.exit:                                        ; preds = %bb.m, %bb.n
  %i.jd = phi reassoc nsz arcp contract afn float [ %i.iz, %bb.m ], [ %i.jc, %bb.n ]
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, %switch.select175
  br label %bb.o

.thread:                                          ; preds = %bb.h, %bb.j
  %i.jf = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.jf
  %.sroa.0.0.copyload222 = load <4 x float>, ptr %i.jg, align 4, !tbaa !13, !alias.scope !177
  br label %.loopexit

bb.o:                                             ; preds = %bb.k, %tpdf.exit
  %.0146 = phi nsz float [ %i.dl, %bb.k ], [ %i.dt, %tpdf.exit ] ; 2 uses
  %.0145 = phi nsz float [ 0.000000e+00, %bb.k ], [ %i.je, %tpdf.exit ]
  %i.jh = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.jh
  %.sroa.0.0.copyload = load <4 x float>, ptr %i.ji, align 4, !tbaa !13, !alias.scope !178 ; 2 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %.0146, 0.000000e+00
  br i1 %i.jj, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread178, %bb.o
  %.sroa.0.0 = phi nsz <4 x float> [ %.sroa.0.0.copyload, %bb.o ], [ %.sroa.0.0.copyload223, %.thread178 ] ; 2 uses
  %i.jk = phi i64 [ %i.jh, %bb.o ], [ %i.dn, %.thread178 ]
  %.0145182 = phi float [ %.0145, %bb.o ], [ 0.000000e+00, %.thread178 ] ; 2 uses
  %.0146181 = phi float [ %.0146, %bb.o ], [ 1.000000e+00, %.thread178 ] ; 2 uses
  %i.jl = fmul reassoc nsz arcp contract afn float %.0146181, %i.bp ; 2 uses
  br i1 %i.cc, label %.loopexit185.loopexit, label %.loopexit185.loopexit199

.loopexit185.loopexit:                            ; preds = %bb.p
  %i.jm = fadd reassoc nnan nsz arcp contract afn float %i.jl, 1.000000e+00
  %i.jn = insertelement <4 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = fmul reassoc nsz arcp contract afn <4 x float> %.sroa.0.0, %i.jo
  %i.jq = insertelement <4 x float> poison, float %.0145182, i64 0
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.js = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.jr
  br label %.loopexit185

.loopexit185.loopexit199:                         ; preds = %bb.p
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.jl, %.0145182
  %i.jt = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.ju = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0.0, %i.ju
  br label %.loopexit185

.loopexit185:                                     ; preds = %.loopexit185.loopexit199, %.loopexit185.loopexit
  %.sroa.0.1 = phi nsz <4 x float> [ %i.js, %.loopexit185.loopexit ], [ %i.jv, %.loopexit185.loopexit199 ] ; 4 uses
  %i.jw = fcmp reassoc nsz arcp contract afn ult <4 x float> %.sroa.0.1, zeroinitializer
  %i.jx = fcmp reassoc nsz arcp contract afn ole <4 x float> %.sroa.0.1, splat (float 1.000000e+00)
  %i.jy = select <4 x i1> %i.jx, <4 x float> %.sroa.0.1, <4 x float> splat (float 1.000000e+00)
  %i.jz = select <4 x i1> %i.jw, <4 x float> zeroinitializer, <4 x float> %i.jy
  %.sroa.0.2 = select nsz i1 %.not171, <4 x float> %i.jz, <4 x float> %.sroa.0.1 ; 6 uses
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.sroa.0.2, i64 0 ; 2 uses
  %i.ka = shufflevector <4 x float> %.sroa.0.2, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.kb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v3f32(float 0.000000e+00, <3 x float> %i.ka)
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, f0x3EAAAAAB ; 5 uses
  %i.kd = fmul reassoc nsz arcp contract afn float %.0146181, %i.br ; 5 uses
  %i.ke = fsub reassoc nsz arcp contract afn float %i.kc, %.sroa.0.0.vec.extract
  %i.kf = fmul reassoc nsz arcp contract afn float %i.kd, %i.ke
  %i.kg = fsub reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract, %i.kf ; 4 uses
  br i1 %.not171, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit185
  %i.kh = fcmp reassoc nsz arcp contract afn ult float %i.kg, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.kg, 1.000000e+00
  %spec.select173 = select reassoc nsz arcp contract afn i1 %.inv, float %i.kg, float 1.000000e+00
  %.ph = select i1 %i.kh, float 0.000000e+00, float %spec.select173
  %.sroa.0.0.vec.insert221285 = insertelement <4 x float> poison, float %.ph, i64 0
  %i.ki = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = shufflevector <4 x float> %.sroa.0.2, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kl = fsub reassoc nsz arcp contract afn <2 x float> %i.kj, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul reassoc nsz arcp contract afn <2 x float> %i.kn, %i.kl
  %i.kp = fsub reassoc nsz arcp contract afn <2 x float> %i.kk, %i.ko ; 3 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.kp, zeroinitializer
  %i.kr = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.kp, splat (float 1.000000e+00)
  %i.ks = select <2 x i1> %i.kr, <2 x float> %i.kp, <2 x float> splat (float 1.000000e+00)
  %i.kt = select <2 x i1> %i.kq, <2 x float> zeroinitializer, <2 x float> %i.ks
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert257301305 = shufflevector <4 x float> %.sroa.0.0.vec.insert221285, <4 x float> %i.ku, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %.sroa.0.12.vec.extract268302 = extractelement <4 x float> %.sroa.0.2, i64 3 ; 2 uses
  %i.kv = fsub reassoc nsz arcp contract afn float %i.kc, %.sroa.0.12.vec.extract268302
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kd, %i.kv
  %i.kx = fsub reassoc nsz arcp contract afn float %.sroa.0.12.vec.extract268302, %i.kw ; 3 uses
  %i.ky = fcmp reassoc nsz arcp contract afn ult float %i.kx, 0.000000e+00
  br i1 %i.ky, label %.loopexit.loopexit, label %bb.s

bb.r:                                             ; preds = %.loopexit185
  %.sroa.0.0.vec.insert221 = insertelement <4 x float> poison, float %i.kg, i64 0
  %i.kz = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = shufflevector <4 x float> %.sroa.0.2, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lc = fsub reassoc nsz arcp contract afn <2 x float> %i.la, %i.lb
  %i.ld = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul reassoc nsz arcp contract afn <2 x float> %i.le, %i.lc
  %i.lg = fsub reassoc nsz arcp contract afn <2 x float> %i.lb, %i.lf
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0.8.vec.insert257306 = shufflevector <4 x float> %.sroa.0.0.vec.insert221, <4 x float> %i.lh, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %.sroa.0.12.vec.extract268 = extractelement <4 x float> %.sroa.0.2, i64 3 ; 2 uses
  %i.li = fsub reassoc nsz arcp contract afn float %i.kc, %.sroa.0.12.vec.extract268
  %i.lj = fmul reassoc nsz arcp contract afn float %i.kd, %i.li
  %i.lk = fsub reassoc nsz arcp contract afn float %.sroa.0.12.vec.extract268, %i.lj
  br label %.loopexit.loopexit

bb.s:                                             ; preds = %bb.q
  %.inv.3 = fcmp reassoc nsz arcp contract afn ole float %i.kx, 1.000000e+00
  %spec.select173.3 = select reassoc nsz arcp contract afn i1 %.inv.3, float %i.kx, float 1.000000e+00
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.0.8.vec.insert257303 = phi <4 x float> [ %.sroa.0.8.vec.insert257301305, %bb.q ], [ %.sroa.0.8.vec.insert257301305, %bb.s ], [ %.sroa.0.8.vec.insert257306, %bb.r ]
  %i.ll = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.q ], [ %spec.select173.3, %bb.s ], [ %i.lk, %bb.r ]
  %.sroa.0.12.vec.insert272 = insertelement <4 x float> %.sroa.0.8.vec.insert257303, float %i.ll, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.thread, %bb.o
  %.sroa.0.3 = phi nsz <4 x float> [ %.sroa.0.0.copyload222, %.thread ], [ %.sroa.0.12.vec.insert272, %.loopexit.loopexit ], [ %.sroa.0.0.copyload, %bb.o ]
  %i.lm = phi i64 [ %i.jf, %.thread ], [ %i.jk, %.loopexit.loopexit ], [ %i.jh, %bb.o ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.lm
  store <4 x float> %.sroa.0.3, ptr %i.ln, align 16, !tbaa !112, !alias.scope !179, !nontemporal !180
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lo = load i32, ptr %i.bv, align 4, !tbaa !175 ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next, %i.lp
  br i1 %i.lq, label %bb.h, label %._crit_edge

bb.t:                                             ; preds = %bb.a, %._crit_edge197
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !114
  store i32 -999, ptr %i.a, align 4, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %.not = icmp eq i32 %i.h, 0
  %i.i = zext i1 %.not to i32
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.f, i32 noundef %i.i) #18
  ret void
}

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 5 uses
  %i.c = load <4 x float>, ptr %1, align 4, !tbaa !13
  store <4 x float> %i.c, ptr %i.b, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 4, !tbaa !13
  store i64 %i.f, ptr %i.d, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.h, ptr %i.i, align 4, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !13
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !17
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_vignette_params_t, align 16 ; 9 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !183
  tail call void @dt_database_start_transaction(ptr noundef %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store <4 x float> <float 4.000000e+01, float 1.000000e+02, float -1.000000e+00, float 5.000000e-01>, ptr %1, align 16, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x float> zeroinitializer, ptr %i.b, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !184
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.f, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.j = tail call i32 (...) %i.i() #18
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.g, i32 noundef %i.j, ptr noundef nonnull %1, i32 noundef 44, i32 noundef 1, i32 noundef 3) #18
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !183
  call void @dt_database_release_transaction(ptr noundef %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare void @dt_database_start_transaction(ptr noundef) local_unnamed_addr #3

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_database_release_transaction(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(44) ptr @malloc(i64 noundef 44) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109
  tail call void @free(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 16, !tbaa !109
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !89  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.f, i32 noundef %i.h) #18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.k = load i32, ptr %i.g, align 4, !tbaa !40
  %.not = icmp eq i32 %i.k, 0
  %i.l = zext i1 %.not to i32
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.j, i32 noundef %i.l) #18
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 80) #18 ; 15 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !89
  %i.d = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.12) #18
  store ptr %i.d, ptr %i.b, align 8, !tbaa !95
  %i.e = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.13) #18
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !97
  %i.g = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.14) #18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !187
  %i.i = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.15) #18
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189
  %i.m = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.17, i64 noundef 8) #18
  %i.n = tail call ptr @gtk_label_new(ptr noundef %i.m) #18 ; 5 uses
  tail call void @gtk_widget_set_halign(ptr noundef %i.n, i32 noundef 0) #18
  tail call void @gtk_label_set_xalign(ptr noundef %i.n, float noundef 5.000000e-01) #18
  tail call void @gtk_label_set_ellipsize(ptr noundef %i.n, i32 noundef 3) #18
  tail call void @dt_gui_add_class(ptr noundef %i.n, ptr noundef nonnull @.str.46) #18
  store ptr %i.n, ptr %i.a, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.o, align 8, !tbaa !16
  %i.p = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.16, i32 noundef 1048, ptr noundef nonnull @__FUNCTION__.gui_init, ptr noundef %i.l, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.q = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.18) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !93
  %i.s = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !94
  %i.u = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.20) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !190
  %i.w = call ptr @dt_bauhaus_toggle_from_params(ptr noundef %0, ptr noundef nonnull @.str.21) #18
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !115
  %i.y = call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.22) #18
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !96
  %i.aa = call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !191
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !187
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ac, i32 noundef 3) #18
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !188
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ad, i32 noundef 3) #18
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !93
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ae, i32 noundef 3) #18
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !94
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.af, i32 noundef 3) #18
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !96
  call void @dt_bauhaus_slider_set_digits(ptr noundef %i.ag, i32 noundef 3) #18
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !95
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ah, ptr noundef nonnull @.str.24) #18
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !97
  call void @dt_bauhaus_slider_set_format(ptr noundef %i.ai, ptr noundef nonnull @.str.24) #18
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.ak = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.aj, ptr noundef %i.ak) #18
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.al, ptr noundef %i.am) #18
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !187
  %i.ao = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.an, ptr noundef %i.ao) #18
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.aq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ap, ptr noundef %i.aq) #18
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !93
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ar, ptr noundef %i.as) #18
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.at, ptr noundef %i.au) #18
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.aw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.av, ptr noundef %i.aw) #18
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.ay = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ax, ptr noundef %i.ay) #18
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.ba = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.az, ptr noundef %i.ba) #18
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !191
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #18
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.bb, ptr noundef %i.bc) #18
  ret void
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_bauhaus_combobox_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @mouse_actions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.d = tail call ptr %i.c() #18
  %i.e = tail call ptr @dt_mouse_action_create_format(ptr noundef null, i32 noundef 7, i32 noundef 0, ptr noundef %i.a, ptr noundef %i.d) #18
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #18
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.h = tail call ptr %i.g() #18
  %i.i = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.e, i32 noundef 7, i32 noundef 4, ptr noundef %i.f, ptr noundef %i.h) #18
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #18
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.l = tail call ptr %i.k() #18
  %i.m = tail call ptr @dt_mouse_action_create_format(ptr noundef %i.i, i32 noundef 7, i32 noundef 4, ptr noundef %i.j, ptr noundef %i.l) #18
  ret ptr %i.m
}

declare ptr @dt_mouse_action_create_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !195
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !112
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !112
  store ptr @introspection_init.f6, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 600), align 8, !tbaa !112
  store ptr @introspection_init.f10, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 952), align 8, !tbaa !112
  store ptr @introspection_init.f12, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1128), align 8, !tbaa !112
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.12) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.13) #20
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.14) #20
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.15) #20
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.18) #20
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.19) #20
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.w

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.44) #20
  %.not31 = icmp eq i32 %i.l, 0
  br i1 %.not31, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.21) #20
  %.not32 = icmp eq i32 %i.n, 0
  br i1 %.not32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.22) #20
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.20) #20
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.23) #20
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.45) #20
  %.not36 = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select = select i1 %.not36, ptr %i.w, ptr null
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.v ], [ %i.u, %bb.u ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.12) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.13) #18
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.14) #18
  %.not14 = icmp eq i32 %i.c, 0
  br i1 %.not14, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.15) #18
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #18
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.19) #18
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.44) #18
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.21) #18
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.22) #18
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #18
  %.not21 = icmp eq i32 %i.j, 0
  br i1 %.not21, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.23) #18
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@llvm.sqrt.f32
declare float @llvm.sqrt.f32(float) #8

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v3f32(float, <3 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"dt_iop_fvector_2d_t", !12, i64 0, !12, i64 4}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !20, i64 8, !8, i64 16, !8, i64 20}
!22 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!23 = !{!"dt_pthread_mutex_t", !7, i64 0}
!24 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!25 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 8}
!27 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!28 = !{!"", !27, i64 0, !8, i64 8}
!29 = !{!"", !26, i64 0, !28, i64 16}
!30 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!31 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!32 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!33 = !{!"dt_iop_module_t", !8, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !18, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !19, i64 608, !21, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !22, i64 664, !8, i64 672, !8, i64 676, !15, i64 680, !15, i64 688, !8, i64 696, !15, i64 704, !23, i64 712, !15, i64 752, !15, i64 760, !24, i64 768, !24, i64 776, !15, i64 784, !29, i64 792, !30, i64 824, !30, i64 832, !30, i64 840, !30, i64 848, !30, i64 856, !30, i64 864, !30, i64 872, !8, i64 880, !30, i64 888, !30, i64 896, !30, i64 904, !31, i64 912, !31, i64 920, !30, i64 928, !30, i64 936, !8, i64 944, !32, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !30, i64 1096, !15, i64 1104, !8, i64 1112}
!34 = !{!33, !15, i64 680}
!35 = !{!"dt_iop_vignette_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !8, i64 24, !12, i64 28, !12, i64 32, !8, i64 36, !8, i64 40}
!36 = !{!35, !12, i64 16}
!37 = !{!35, !12, i64 20}
!38 = !{!35, !12, i64 0}
!39 = !{!35, !12, i64 4}
!40 = !{!35, !8, i64 24}
!41 = !{!35, !12, i64 28}
!42 = !{!"dt_codepath_t", !8, i64 0}
!43 = !{!"p1 _ZTS6_GList", !15, i64 0}
!44 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!45 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!46 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!47 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!48 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!49 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!50 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!51 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!52 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!53 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!54 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!55 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!56 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!57 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!58 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!59 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!60 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!61 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!62 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!63 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!64 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!65 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!66 = !{!"p1 omnipotent char", !15, i64 0}
!67 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!68 = !{!"_Bool", !7, i64 0}
!69 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!70 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!71 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!72 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!73 = !{!"", !67, i64 0, !23, i64 8, !7, i64 48, !68, i64 96, !68, i64 97, !69, i64 104, !70, i64 112, !71, i64 120, !72, i64 128, !72, i64 136, !72, i64 144}
!74 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!75 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!76 = !{!"dt_sys_resources_t", !20, i64 0, !20, i64 8, !19, i64 16, !19, i64 24, !8, i64 32}
!77 = !{!"dt_backthumb_t", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20}
!78 = !{!"dt_gimp_t", !8, i64 0, !66, i64 8, !66, i64 16, !8, i64 24, !8, i64 28}
!79 = !{!"dt_splash_t", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !8, i64 32}
!80 = !{!"darktable_t", !42, i64 0, !8, i64 4, !8, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !45, i64 56, !22, i64 64, !46, i64 72, !47, i64 80, !48, i64 88, !49, i64 96, !50, i64 104, !51, i64 112, !52, i64 120, !53, i64 128, !54, i64 136, !55, i64 144, !56, i64 152, !57, i64 160, !58, i64 168, !59, i64 176, !60, i64 184, !61, i64 192, !62, i64 200, !63, i64 208, !64, i64 216, !65, i64 224, !7, i64 232, !23, i64 2792, !23, i64 2832, !23, i64 2872, !23, i64 2912, !23, i64 2952, !23, i64 2992, !66, i64 3032, !66, i64 3040, !66, i64 3048, !66, i64 3056, !66, i64 3064, !66, i64 3072, !66, i64 3080, !66, i64 3088, !66, i64 3096, !66, i64 3104, !66, i64 3112, !66, i64 3120, !66, i64 3128, !73, i64 3136, !43, i64 3288, !11, i64 3296, !43, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !74, i64 3520, !75, i64 3528, !76, i64 3536, !77, i64 3576, !78, i64 3600, !79, i64 3632, !8, i64 3672}
!81 = !{!80, !22, i64 64}
!82 = !{!80, !50, i64 104}
!83 = !{!"p1 _ZTS7dt_ui_t", !15, i64 0}
!84 = !{!"dt_gui_widgets_t", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!85 = !{!"dt_gui_scrollbars_t", !30, i64 0, !30, i64 8, !8, i64 16}
!86 = !{!"p1 _ZTS14_cairo_surface", !15, i64 0}
!87 = !{!"dt_gui_gtk_t", !83, i64 0, !84, i64 8, !85, i64 56, !86, i64 80, !8, i64 88, !66, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !30, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!88 = !{!87, !11, i64 1432}
!89 = !{!33, !15, i64 704}
!90 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!91 = !{!"dt_action_t", !8, i64 0, !66, i64 8, !66, i64 16, !15, i64 24, !90, i64 32, !90, i64 40}
!92 = !{!"dt_iop_vignette_gui_data_t", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !30, i64 72}
!93 = !{!92, !30, i64 32}
!94 = !{!92, !30, i64 40}
!95 = !{!92, !30, i64 0}
!96 = !{!92, !30, i64 56}
!97 = !{!92, !30, i64 8}
!98 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!99 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!100 = !{!"dt_dev_histogram_collection_params_t", !99, i64 0, !8, i64 8}
!101 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16}
!102 = !{!"short", !7, i64 0}
!103 = !{!"", !102, i64 0, !102, i64 2}
!104 = !{!"", !8, i64 0, !7, i64 16}
!105 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !103, i64 48, !104, i64 64, !7, i64 96, !8, i64 112}
!106 = !{!"p1 float", !15, i64 0}
!107 = !{!"dt_dev_distorted_mask_cache_t", !106, i64 0, !101, i64 8, !20, i64 32, !20, i64 40}
!108 = !{!"dt_dev_pixelpipe_iop_t", !27, i64 0, !98, i64 8, !15, i64 16, !15, i64 24, !8, i64 32, !8, i64 36, !100, i64 40, !19, i64 56, !21, i64 64, !7, i64 88, !12, i64 104, !8, i64 108, !8, i64 112, !20, i64 120, !8, i64 128, !8, i64 132, !101, i64 136, !101, i64 156, !101, i64 176, !101, i64 196, !8, i64 216, !8, i64 220, !105, i64 224, !105, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !107, i64 528, !107, i64 576}
!109 = !{!108, !15, i64 16}
!110 = !{!"dt_iop_vignette_data_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !8, i64 24, !12, i64 28, !12, i64 32, !8, i64 36, !8, i64 40}
!111 = !{!110, !8, i64 24}
!112 = !{!7, !7, i64 0}
!113 = !{!"dt_iop_module_so_t", !91, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !18, i64 488, !7, i64 496, !15, i64 520, !8, i64 528, !15, i64 536, !8, i64 544, !8, i64 548}
!114 = !{!113, !15, i64 520}
!115 = !{!92, !30, i64 48}
!116 = !{!"dt_iop_dvector_2d_t", !11, i64 0, !11, i64 8}
!117 = !{!"dt_iop_vignette_params_v1_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 44, !116, i64 48}
!118 = !{!117, !11, i64 32}
!119 = !{!117, !11, i64 16}
!120 = !{!11, !11, i64 0}
!121 = !{!117, !8, i64 44}
!122 = !{!"dt_iop_vignette_params_v4_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !8, i64 24, !12, i64 28, !12, i64 32, !8, i64 36, !8, i64 40}
!123 = !{!122, !12, i64 12}
!124 = !{!117, !8, i64 40}
!125 = !{!122, !12, i64 8}
!126 = !{!122, !8, i64 24}
!127 = !{!"dt_iop_vignette_params_v2_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !8, i64 24, !12, i64 28, !12, i64 32}
!128 = !{!127, !8, i64 24}
!129 = !{!"dt_iop_vignette_params_v3_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !14, i64 16, !8, i64 24, !12, i64 28, !12, i64 32, !8, i64 36}
!130 = !{!129, !8, i64 24}
!131 = !{!129, !8, i64 36}
!132 = !{!122, !8, i64 36}
!133 = !{!122, !8, i64 40}
!134 = !{!87, !11, i64 1408}
!135 = !{!87, !11, i64 1384}
!136 = !{!87, !11, i64 1400}
!137 = !{!87, !11, i64 1392}
!138 = !{!33, !22, i64 664}
!139 = !{!80, !48, i64 88}
!140 = !{!"p1 _ZTS10_GSequence", !15, i64 0}
!141 = !{!"p1 _ZTS10_GPtrArray", !15, i64 0}
!142 = !{!"p1 long", !15, i64 0}
!143 = !{!"any p2 pointer", !15, i64 0}
!144 = !{!"p2 _ZTS9_dt_job_t", !143, i64 0}
!145 = !{!"p1 _ZTS15dt_lib_module_t", !15, i64 0}
!146 = !{!"", !145, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!147 = !{!"", !43, i64 0, !20, i64 8, !20, i64 16, !11, i64 24, !23, i64 32, !146, i64 72}
!148 = !{!"", !145, i64 0, !15, i64 8}
!149 = !{!"", !148, i64 0}
!150 = !{!"dt_control_t", !8, i64 0, !90, i64 8, !91, i64 16, !91, i64 64, !91, i64 112, !91, i64 160, !91, i64 208, !91, i64 256, !91, i64 304, !91, i64 352, !91, i64 400, !91, i64 448, !91, i64 496, !90, i64 544, !140, i64 552, !8, i64 560, !30, i64 568, !8, i64 576, !8, i64 580, !141, i64 584, !31, i64 592, !11, i64 600, !8, i64 608, !8, i64 612, !20, i64 616, !8, i64 624, !8, i64 628, !8, i64 632, !11, i64 640, !11, i64 648, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !23, i64 680, !8, i64 720, !8, i64 724, !7, i64 728, !8, i64 2728, !8, i64 2732, !8, i64 2736, !7, i64 2740, !8, i64 3340, !43, i64 3344, !23, i64 3352, !23, i64 3392, !23, i64 3432, !7, i64 3472, !7, i64 3476, !7, i64 3480, !8, i64 3484, !8, i64 3488, !23, i64 3496, !23, i64 3536, !7, i64 3576, !8, i64 3624, !142, i64 3632, !20, i64 3640, !20, i64 3648, !144, i64 3656, !7, i64 3664, !7, i64 3704, !23, i64 3744, !7, i64 3784, !7, i64 3808, !7, i64 3816, !147, i64 3840, !149, i64 3960}
!151 = !{!150, !8, i64 624}
!152 = !{!150, !8, i64 628}
!153 = distinct !{!153, i1 true, !"copy_pixel"}
!154 = distinct !{!154, !153, !"copy_pixel: argument 1:thread"}
!155 = distinct !{!155, !153, !"copy_pixel: argument 0:thread"}
!156 = distinct !{!156, i1 true, !"copy_pixel"}
!157 = distinct !{!157, !156, !"copy_pixel: argument 1:thread"}
!158 = distinct !{!158, !156, !"copy_pixel: argument 0:thread"}
!159 = distinct !{!159, i1 true, !"copy_pixel"}
!160 = distinct !{!160, !159, !"copy_pixel: argument 1"}
!161 = distinct !{!161, !159, !"copy_pixel: argument 0"}
!162 = distinct !{!162, i1 true, !"copy_pixel_nontemporal"}
!163 = distinct !{!163, !162, !"copy_pixel_nontemporal: argument 0"}
!164 = !{!108, !8, i64 132}
!165 = !{!110, !8, i64 40}
!166 = !{!101, !12, i64 16}
!167 = !{!110, !12, i64 28}
!168 = !{!110, !12, i64 0}
!169 = !{!110, !12, i64 4}
!170 = !{!110, !12, i64 32}
!171 = !{!110, !8, i64 36}
!172 = !{!110, !12, i64 8}
!173 = !{!110, !12, i64 12}
!174 = !{!101, !8, i64 12}
!175 = !{!101, !8, i64 8}
!176 = !{!155, !154}
!177 = !{!158, !157}
!178 = !{!161, !160}
!179 = !{!163}
!180 = !{i32 1}
!181 = !{!"dt_iop_vignette_global_data_t", !8, i64 0}
!182 = !{!181, !8, i64 0}
!183 = !{!80, !54, i64 136}
!184 = !{!35, !8, i64 36}
!185 = !{!35, !8, i64 40}
!186 = !{!113, !15, i64 48}
!187 = !{!92, !30, i64 16}
!188 = !{!92, !30, i64 24}
!189 = !{!33, !30, i64 824}
!190 = !{!92, !30, i64 64}
!191 = !{!92, !30, i64 72}
!192 = !{!33, !15, i64 40}
!193 = !{!"p1 _ZTS24dt_introspection_field_t", !15, i64 0}
!194 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !66, i64 8, !20, i64 16, !193, i64 24, !20, i64 32, !20, i64 40}
!195 = !{!194, !8, i64 0}
end_hunk_1
