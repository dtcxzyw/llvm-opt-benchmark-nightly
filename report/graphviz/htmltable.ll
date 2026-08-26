Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/htmltable?download=true
inline.NumInlined: 100
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@size_html_tbl:bb.a
  %.not185 = icmp eq i64 %i.ne, 0
  %i.sv = extractelement <2 x double> %i.so, i64 1 ; 3 uses
  br i1 %.not185, label %._crit_edge178, label %.lr.ph177.preheader

.lr.ph177.preheader:                              ; preds = %.preheader
  %xtraiter354 = and i64 %i.ne, 7                 ; 3 uses
  %i.sw = icmp ult i64 %i.ne, 8
  br i1 %i.sw, label %.lr.ph177.epil.preheader, label %.lr.ph177.preheader.new

.lr.ph177.preheader.new:                          ; preds = %.lr.ph177.preheader
  %unroll_iter359 = and i64 %i.ne, -8
  br label %.lr.ph177

.lr.ph173:                                        ; preds = %.lr.ph173, %.lr.ph173.preheader.new
  %.047172 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %i.uc, %.lr.ph173 ] ; 9 uses
  %.049171 = phi double [ %i.sp, %.lr.ph173.preheader.new ], [ %i.ub, %.lr.ph173 ]
  %niter353 = phi i64 [ 0, %.lr.ph173.preheader.new ], [ %niter353.next.7, %.lr.ph173 ]
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !28
  %i.sz = fadd double %.049171, %i.sy
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !28
  %i.td = fadd double %i.sz, %i.tc
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !28
  %i.th = fadd double %i.td, %i.tg
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !28
  %i.tl = fadd double %i.th, %i.tk
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.to = load double, ptr %i.tn, align 8, !tbaa !28
  %i.tp = fadd double %i.tl, %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !28
  %i.tt = fadd double %i.tp, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 48
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !28
  %i.tx = fadd double %i.tt, %i.tw
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.047172
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 56
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !28
  %i.ub = fadd double %i.tx, %i.ua                ; 3 uses
  %i.uc = add nuw i64 %.047172, 8                 ; 2 uses
  %niter353.next.7 = add nuw i64 %niter353, 8     ; 2 uses
  %niter353.ncmp.7 = icmp eq i64 %niter353.next.7, %unroll_iter352
  br i1 %niter353.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph173, !llvm.loop !264

._crit_edge178.loopexit.unr-lcssa:                ; preds = %.lr.ph177
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod356.not, label %._crit_edge178, label %.lr.ph177.epil.preheader

.lr.ph177.epil.preheader:                         ; preds = %._crit_edge178.loopexit.unr-lcssa, %.lr.ph177.preheader
  %.0176.epil.init = phi i64 [ 0, %.lr.ph177.preheader ], [ %i.vp, %._crit_edge178.loopexit.unr-lcssa ]
  %.048175.epil.init = phi double [ %i.sv, %.lr.ph177.preheader ], [ %i.vo, %._crit_edge178.loopexit.unr-lcssa ]
  %lcmp.mod358 = icmp ne i64 %xtraiter354, 0
  call void @llvm.assume(i1 %lcmp.mod358)
  br label %.lr.ph177.epil

.lr.ph177.epil:                                   ; preds = %.lr.ph177.epil, %.lr.ph177.epil.preheader
  %.0176.epil = phi i64 [ %i.ug, %.lr.ph177.epil ], [ %.0176.epil.init, %.lr.ph177.epil.preheader ] ; 2 uses
  %.048175.epil = phi double [ %i.uf, %.lr.ph177.epil ], [ %.048175.epil.init, %.lr.ph177.epil.preheader ]
  %epil.iter355 = phi i64 [ %epil.iter355.next, %.lr.ph177.epil ], [ 0, %.lr.ph177.epil.preheader ]
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176.epil
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !28
  %i.uf = fadd double %.048175.epil, %i.ue        ; 2 uses
  %i.ug = add nuw i64 %.0176.epil, 1
  %epil.iter355.next = add i64 %epil.iter355, 1   ; 2 uses
  %epil.iter355.cmp.not = icmp eq i64 %epil.iter355.next, %xtraiter354
  br i1 %epil.iter355.cmp.not, label %._crit_edge178, label %.lr.ph177.epil, !llvm.loop !265

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit.unr-lcssa, %.lr.ph177.epil, %.preheader
  %.048.lcssa = phi double [ %i.sv, %.preheader ], [ %i.vo, %._crit_edge178.loopexit.unr-lcssa ], [ %i.uf, %.lr.ph177.epil ] ; 2 uses
  %i.uh = and i16 %i.ie, 1
  %.not58 = icmp eq i16 %i.uh, 0
  %i.ui = insertelement <2 x double> poison, double %.049.lcssa, i64 0
  %i.uj = insertelement <2 x double> %i.ui, double %.048.lcssa, i64 1 ; 3 uses
  br i1 %.not58, label %bb.bz, label %bb.bw

.lr.ph177:                                        ; preds = %.lr.ph177, %.lr.ph177.preheader.new
  %.0176 = phi i64 [ 0, %.lr.ph177.preheader.new ], [ %i.vp, %.lr.ph177 ] ; 9 uses
  %.048175 = phi double [ %i.sv, %.lr.ph177.preheader.new ], [ %i.vo, %.lr.ph177 ]
  %niter360 = phi i64 [ 0, %.lr.ph177.preheader.new ], [ %niter360.next.7, %.lr.ph177 ]
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !28
  %i.um = fadd double %.048175, %i.ul
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load double, ptr %i.uo, align 8, !tbaa !28
  %i.uq = fadd double %i.um, %i.up
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.ut = load double, ptr %i.us, align 8, !tbaa !28
  %i.uu = fadd double %i.uq, %i.ut
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !28
  %i.uy = fadd double %i.uu, %i.ux
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = load double, ptr %i.va, align 8, !tbaa !28
  %i.vc = fadd double %i.uy, %i.vb
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !28
  %i.vg = fadd double %i.vc, %i.vf
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !28
  %i.vk = fadd double %i.vg, %i.vj
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0176
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 56
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !28
  %i.vo = fadd double %i.vk, %i.vn                ; 3 uses
  %i.vp = add nuw i64 %.0176, 8                   ; 2 uses
  %niter360.next.7 = add nuw i64 %niter360, 8     ; 2 uses
  %niter360.ncmp.7 = icmp eq i64 %niter360.next.7, %unroll_iter359
  br i1 %niter360.ncmp.7, label %._crit_edge178.loopexit.unr-lcssa, label %.lr.ph177, !llvm.loop !266

bb.bw:                                            ; preds = %._crit_edge178
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !267 ; 2 uses
  %.not59 = icmp eq i16 %i.vr, 0
  br i1 %.not59, label %.sink.split279, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.vt = load i16, ptr %i.vs, align 4, !tbaa !268 ; 2 uses
  %.not60 = icmp eq i16 %i.vt, 0
  br i1 %.not60, label %.sink.split279, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vu = uitofp i16 %i.vr to double
  %i.vv = fcmp ogt double %.049.lcssa, %i.vu
  %i.vw = uitofp i16 %i.vt to double
  %i.vx = fcmp ogt double %.048.lcssa, %i.vw
  %or.cond = select i1 %i.vv, i1 true, i1 %i.vx
  br i1 %or.cond, label %.sink.split279, label %bb.bz

.sink.split279:                                   ; preds = %bb.bw, %bb.bx, %bb.by
  %.str.17.sink = phi ptr [ @.str.17, %bb.by ], [ @.str.18, %bb.bx ], [ @.str.18, %bb.bw ]
  %i.vy = phi <2 x double> [ zeroinitializer, %bb.by ], [ %i.uj, %bb.bx ], [ %i.uj, %bb.bw ]
  call void (ptr, ...) @agwarningf(ptr noundef nonnull %.str.17.sink) #22
  br label %bb.bz

bb.bz:                                            ; preds = %.sink.split279, %bb.by, %._crit_edge178
  %.152 = phi i32 [ %.060.i.lcssa253, %._crit_edge178 ], [ %.060.i.lcssa253, %bb.by ], [ 1, %.sink.split279 ]
  %i.vz = phi <2 x double> [ %i.uj, %._crit_edge178 ], [ zeroinitializer, %bb.by ], [ %i.vy, %.sink.split279 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.wc = load <2 x i16>, ptr %i.wa, align 2, !tbaa !232
  %i.wd = uitofp <2 x i16> %i.wc to <2 x double>
  %i.we = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.vz, <2 x double> %i.wd)
  store <2 x double> %i.we, ptr %i.wb, align 8, !tbaa !28
  %i.wf = load ptr, ptr %i.a, align 8, !tbaa !86
  %.not61 = icmp eq ptr %i.wf, null
  br i1 %.not61, label %popFontInfo.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wg = load ptr, ptr @size_html_tbl.savef.0, align 8, !tbaa !88 ; 2 uses
  %.not.i116 = icmp eq ptr %i.wg, null
  br i1 %.not.i116, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.wg, ptr %i.wh, align 8, !tbaa !87
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.wi = load ptr, ptr @size_html_tbl.savef.1, align 8, !tbaa !90 ; 2 uses
  %.not11.i = icmp eq ptr %i.wi, null
  br i1 %.not11.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.wi, ptr %i.wj, align 8, !tbaa !89
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.wk = load double, ptr @size_html_tbl.savef.2, align 8, !tbaa !91 ; 2 uses
  %i.wl = fcmp ult double %i.wk, 0.000000e+00
  br i1 %i.wl, label %popFontInfo.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %i.wk, ptr %i.wm, align 8, !tbaa !38
  br label %popFontInfo.exit

popFontInfo.exit:                                 ; preds = %bb.cf, %bb.ce, %bb.bz
  ret i32 %.152
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @pos_html_tbl(ptr nofree noundef captures(none) %0, ptr nofree noundef byval(%struct.boxf) align 8 captures(none) %1, i8 noundef zeroext range(i8 0, 16) %2) unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.boxf, align 8               ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !269  ; 3 uses
  %.not131 = icmp eq ptr %i.f, null
  br i1 %.not131, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not132 = icmp eq ptr %i.h, null
  br i1 %.not132, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.f) #22 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %gv_strdup.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #25
  %i.m = add i64 %i.l, 1
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.8, i64 noundef %i.m) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit:                                   ; preds = %bb.d
  store ptr %i.i, ptr %i.g, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %gv_strdup.exit, %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load double, ptr %i.q, align 8, !tbaa !270 ; 3 uses
  %i.u = load <2 x double>, ptr %i.o, align 8, !tbaa !28
  %i.v = load <2 x double>, ptr %i.p, align 8, !tbaa !28 ; 4 uses
  %i.w = load <2 x double>, ptr %1, align 8, !tbaa !28 ; 6 uses
  %i.x = fsub nsz <2 x double> %i.v, %i.w
  %i.y = fsub nsz <2 x double> %i.x, %i.u
  %i.z = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.y, <2 x double> zeroinitializer) ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !222 ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i32 %i.ac, 1
  %.not133 = icmp eq i32 %i.ad, 0
  %i.ae = extractelement <2 x double> %i.z, i64 0 ; 4 uses
  %i.af = extractelement <2 x double> %i.z, i64 1 ; 4 uses
  %i.ag = extractelement <2 x double> %i.v, i64 1 ; 3 uses
  %i.ah = extractelement <2 x double> %i.w, i64 0 ; 5 uses
  br i1 %.not133, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %i.ac, 6
  switch i32 %i.aj, label %bb.k [
    i32 4, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = fadd double %i.ah, %i.t
  store double %i.ak, ptr %i.p, align 8, !tbaa !123
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %foldExtExtBinop = fadd <2 x double> %i.v, %i.z
  %i.al = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.al, ptr %i.p, align 8, !tbaa !123
  %foldExtExtBinop243 = fadd <2 x double> %i.w, %i.z
  %i.am = extractelement <2 x double> %foldExtExtBinop243, i64 0 ; 2 uses
  store double %i.am, ptr %1, align 8, !tbaa !271
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.an = fmul nnan double %i.ae, 5.000000e-01    ; 2 uses
  %i.ao = fadd double %i.ah, %i.an                ; 2 uses
  store double %i.ao, ptr %1, align 8, !tbaa !271
  %i.ap = extractelement <2 x double> %i.v, i64 0
  %i.aq = fsub double %i.ap, %i.an
  store double %i.aq, ptr %i.p, align 8, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.g
  %i.ar = phi double [ %i.ah, %bb.g ], [ %i.ao, %bb.k ], [ %i.am, %bb.j ], [ %i.ah, %bb.i ] ; 2 uses
  %.0117 = phi double [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.as = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.as, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.at = and i16 %i.ab, 24
  switch i16 %i.at, label %bb.p [
    i16 16, label %bb.n
    i16 8, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = extractelement <2 x double> %i.w, i64 1
  %i.av = fadd double %i.t, %i.au
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %foldExtExtBinop245 = fadd <2 x double> %i.w, %i.z
  %i.aw = extractelement <2 x double> %foldExtExtBinop245, i64 1 ; 2 uses
  store double %i.aw, ptr %i.s, align 8, !tbaa !272
  %i.ax = fadd double %i.t, %i.aw
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ay = fmul nnan double %i.af, 5.000000e-01    ; 2 uses
  %i.az = extractelement <2 x double> %i.w, i64 1
  %i.ba = fadd double %i.az, %i.ay
  store double %i.ba, ptr %i.s, align 8, !tbaa !272
  %i.bb = fsub double %i.ag, %i.ay
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o, %bb.n
  %.sink = phi double [ %i.av, %bb.n ], [ %i.ax, %bb.o ], [ %i.bb, %bb.p ] ; 2 uses
  store double %.sink, ptr %i.r, align 8, !tbaa !124
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.l, %bb.f
  %i.bc = phi double [ %i.ag, %bb.f ], [ %i.ag, %bb.l ], [ %.sink, %.sink.split ]
  %i.bd = phi double [ %i.ah, %bb.f ], [ %i.ar, %bb.l ], [ %i.ar, %.sink.split ]
  %.1118 = phi double [ %i.ae, %bb.f ], [ %.0117, %bb.l ], [ %.0117, %.sink.split ] ; 2 uses
  %.0116 = phi double [ %i.af, %bb.f ], [ %i.af, %bb.l ], [ 0.000000e+00, %.sink.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !95
  %i.bg = uitofp i8 %i.bf to double               ; 2 uses
  %i.bh = fadd double %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !120
  %i.bk = sitofp i8 %i.bj to double               ; 6 uses
  %i.bl = fadd double %i.bh, %i.bk                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %i.bo = uitofp i64 %i.bn to double              ; 2 uses
  %i.bp = fdiv double %.1118, %i.bo               ; 3 uses
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bo, double %.1118) ; 2 uses
  %i.bs = fcmp ult double %i.br, 0.000000e+00
  %.in.v = select i1 %i.bs, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %i.br, %.in.v
  %i.bt = fptosi double %.in to i32               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !165 ; 3 uses
  %i.bw = add i64 %i.bn, 1                        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.bx = icmp ult i64 %i.bw, 2
  br i1 %i.bx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.q
  %unroll_iter = and i64 %umax, -2
  br label %bb.s

.unr-lcssa:                                       ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.r, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.q
  %.0114152.epil.init = phi i64 [ 0, %bb.q ], [ %i.dk, %.unr-lcssa ]
  %.0115151.epil.init = phi double [ %i.bl, %bb.q ], [ %i.dj, %.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0114152.epil.init
  store double %.0115151.epil.init, ptr %i.by, align 8, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.bz = fsub double %i.bc, %i.bg
  %i.ca = fsub double %i.bz, %i.bk                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !122 ; 2 uses
  %i.cd = uitofp i64 %i.cc to double              ; 2 uses
  %i.ce = fdiv double %.0116, %i.cd               ; 3 uses
  %i.cf = fneg double %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cd, double %.0116) ; 2 uses
  %i.ch = fcmp ult double %i.cg, 0.000000e+00
  %.in135.v = select i1 %i.ch, double -5.000000e-01, double 5.000000e-01
  %.in135 = fadd double %i.cg, %.in135.v
  %i.ci = fptosi double %.in135 to i32            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !164 ; 3 uses
  %i.cl = add i64 %i.cc, 1                        ; 2 uses
  %umax156 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1) ; 3 uses
  %xtraiter250 = and i64 %umax156, 1
  %i.cm = icmp ult i64 %i.cl, 2
  br i1 %i.cm, label %.epil.preheader249, label %.new248

.new248:                                          ; preds = %bb.r
  %unroll_iter253 = and i64 %umax156, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.new
  %.0114152 = phi i64 [ 0, %.new ], [ %i.dk, %bb.s ] ; 6 uses
  %.0115151 = phi double [ %i.bl, %.new ], [ %i.dj, %bb.s ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0114152 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !28
  %i.cp = fadd double %i.bp, %i.co
  %i.cq = icmp ult i64 %.0114152, 2147483648
  %i.cr = trunc i64 %.0114152 to i32
  %i.cs = icmp slt i32 %i.cr, %i.bt
  %i.ct = select i1 %i.cq, i1 %i.cs, i1 false
  %i.cu = uitofp i1 %i.ct to double
  %i.cv = fadd double %i.cp, %i.cu
  store double %.0115151, ptr %i.cn, align 8, !tbaa !28
  %i.cw = fadd double %i.cv, %i.bk
  %i.cx = fadd double %.0115151, %i.cw            ; 2 uses
  %i.cy = or disjoint i64 %.0114152, 1            ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cy ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !28
  %i.db = fadd double %i.bp, %i.da
  %i.dc = icmp ult i64 %.0114152, 2147483648
  %i.dd = trunc i64 %i.cy to i32
  %i.de = icmp slt i32 %i.dd, %i.bt
  %i.df = select i1 %i.dc, i1 %i.de, i1 false
  %i.dg = uitofp i1 %i.df to double
  %i.dh = fadd double %i.db, %i.dg
  store double %i.cx, ptr %i.cz, align 8, !tbaa !28
  %i.di = fadd double %i.dh, %i.bk
  %i.dj = fadd double %i.cx, %i.di                ; 2 uses
  %i.dk = add nuw i64 %.0114152, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.s, !llvm.loop !273

.preheader.unr-lcssa:                             ; preds = %bb.t
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.preheader, label %.epil.preheader249

.epil.preheader249:                               ; preds = %.preheader.unr-lcssa, %bb.r
  %.0112154.epil.init = phi i64 [ 0, %bb.r ], [ %i.en, %.preheader.unr-lcssa ]
  %.0113153.epil.init = phi double [ %i.ca, %bb.r ], [ %i.em, %.preheader.unr-lcssa ]
  %lcmp.mod252 = trunc i64 %umax156 to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0112154.epil.init
  store double %.0113153.epil.init, ptr %i.dl, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader249
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %.not137155 = icmp eq ptr %i.dm, null
  br i1 %.not137155, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not138 = icmp eq i8 %2, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.t, %.new248
  %.0112154 = phi i64 [ 0, %.new248 ], [ %i.en, %bb.t ] ; 6 uses
  %.0113153 = phi double [ %i.ca, %.new248 ], [ %i.em, %bb.t ] ; 2 uses
  %niter254 = phi i64 [ 0, %.new248 ], [ %niter254.next.1, %bb.t ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.0112154 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !28
  %i.ds = fadd double %i.ce, %i.dr
  %i.dt = icmp ult i64 %.0112154, 2147483648
  %i.du = trunc i64 %.0112154 to i32
  %i.dv = icmp slt i32 %i.du, %i.ci
  %i.dw = select i1 %i.dt, i1 %i.dv, i1 false
  %i.dx = uitofp i1 %i.dw to double
  %i.dy = fadd double %i.ds, %i.dx
  store double %.0113153, ptr %i.dq, align 8, !tbaa !28
  %i.dz = fadd double %i.dy, %i.bk
  %i.ea = fsub double %.0113153, %i.dz            ; 2 uses
  %i.eb = or disjoint i64 %.0112154, 1            ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !28
  %i.ee = fadd double %i.ce, %i.ed
  %i.ef = icmp ult i64 %.0112154, 2147483648
  %i.eg = trunc i64 %i.eb to i32
  %i.eh = icmp slt i32 %i.eg, %i.ci
  %i.ei = select i1 %i.ef, i1 %i.eh, i1 false
  %i.ej = uitofp i1 %i.ei to double
  %i.ek = fadd double %i.ee, %i.ej
  store double %i.ea, ptr %i.ec, align 8, !tbaa !28
  %i.el = fadd double %i.ek, %i.bk
  %i.em = fsub double %i.ea, %i.el                ; 2 uses
  %i.en = add nuw i64 %.0112154, 2                ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %.preheader.unr-lcssa, label %bb.t, !llvm.loop !274

bb.u:                                             ; preds = %.lr.ph, %pos_html_cell.exit
  %i.eo = phi ptr [ %i.dm, %.lr.ph ], [ %i.oq, %pos_html_cell.exit ] ; 20 uses
  %.pn = phi ptr [ %i.c, %.lr.ph ], [ %i.ep, %pos_html_cell.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eo, i64 108
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !115 ; 3 uses
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %i.eo, i64 110
  %.pre162 = load i16, ptr %.phi.trans.insert161, align 2, !tbaa !119 ; 3 uses
  br i1 %.not138, label %._crit_edge158, label %bb.v

._crit_edge158:                                   ; preds = %bb.u
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %.pre160 = load i16, ptr %.phi.trans.insert159, align 8, !tbaa !116
  %.phi.trans.insert163 = getelementptr inbounds nuw i8, ptr %i.eo, i64 106
  %.pre164 = load i16, ptr %.phi.trans.insert163, align 2, !tbaa !121
  %.pre165 = zext i16 %.pre to i64
  %.pre166 = zext i16 %.pre160 to i64
  %.pre168 = zext i16 %.pre162 to i64
  %.pre170 = zext i16 %.pre164 to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eq = icmp eq i16 %.pre, 0
  %spec.select = select i1 %i.eq, i8 8, i8 0      ; 2 uses
  %i.er = icmp eq i16 %.pre162, 0
  %i.es = or disjoint i8 %spec.select, 4
  %.1 = select i1 %i.er, i8 %i.es, i8 %spec.select ; 2 uses
  %i.et = zext i16 %.pre to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !116
  %i.ew = zext i16 %i.ev to i64                   ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, %i.et
  %i.ey = load i64, ptr %i.bm, align 8, !tbaa !118
  %i.ez = icmp eq i64 %i.ex, %i.ey
  %i.fa = or disjoint i8 %.1, 2
  %.2 = select i1 %i.ez, i8 %i.fa, i8 %.1
  %i.fb = zext i16 %.pre162 to i64                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 106
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !121
  %i.fe = zext i16 %i.fd to i64                   ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, %i.fb
  %i.fg = load i64, ptr %i.cb, align 8, !tbaa !122
  %i.fh = icmp eq i64 %i.ff, %i.fg
  %i.fi = zext i1 %i.fh to i8
  %spec.select139 = or disjoint i8 %.2, %i.fi
  %i.fj = and i8 %spec.select139, %2
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge158, %bb.v
  %.pre-phi171 = phi i64 [ %.pre170, %._crit_edge158 ], [ %i.fe, %bb.v ]
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge158 ], [ %i.fb, %bb.v ]
  %.pre-phi167 = phi i64 [ %.pre166, %._crit_edge158 ], [ %i.ew, %bb.v ]
  %.pre-phi = phi i64 [ %.pre165, %._crit_edge158 ], [ %i.et, %bb.v ]
  %.3 = phi i8 [ 0, %._crit_edge158 ], [ %i.fj, %bb.v ] ; 2 uses
  %i.fk = load ptr, ptr %i.bu, align 8, !tbaa !165
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.pre-phi ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !28 ; 7 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.pre-phi167
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !28
  %i.fp = load i8, ptr %i.bi, align 4, !tbaa !120
  %i.fq = sitofp i8 %i.fp to double               ; 2 uses
  %i.fr = fsub double %i.fo, %i.fq                ; 5 uses
  %i.fs = load ptr, ptr %i.cj, align 8, !tbaa !164
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.pre-phi169 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !28 ; 5 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.pre-phi171
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !28
  %i.fx = fadd double %i.fw, %i.fq                ; 7 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eo, i64 48 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !269
  %.not.i = icmp eq ptr %i.fz, null
  br i1 %.not.i, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !117
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !76 ; 3 uses
  %.not81.i = icmp eq ptr %i.gd, null
  br i1 %.not81.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ge = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.gd) #22 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.z, label %gv_strdup.exit141

bb.z:                                             ; preds = %bb.y
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gh = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gd) #25
  %i.gi = add i64 %i.gh, 1
  %i.gj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.8, i64 noundef %i.gi) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #26
  unreachable

gv_strdup.exit141:                                ; preds = %bb.y
  store ptr %i.ge, ptr %i.fy, align 8, !tbaa !269
  br label %bb.aa

bb.aa:                                            ; preds = %gv_strdup.exit141, %bb.x, %bb.w
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eo, i64 64 ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 8, !tbaa !221 ; 6 uses
  %i.gm = zext i16 %i.gl to i32                   ; 2 uses
  %i.gn = and i32 %i.gm, 1
  %.not82.i = icmp eq i32 %i.gn, 0
  br i1 %.not82.i, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %.sroa.0.0.copyload.i = load double, ptr %i.go, align 8, !tbaa !28 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %.sroa.9.0.copyload.i = load double, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !28 ; 2 uses
  %i.gp = fsub double %i.fr, %i.fm
  %i.gq = fsub double %i.gp, %.sroa.0.0.copyload.i ; 4 uses
  %i.gr = fcmp ogt double %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gs = and i32 %i.gm, 6
  switch i32 %i.gs, label %bb.af [
    i32 4, label %bb.ad
    i32 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gt = fadd double %i.fm, %.sroa.0.0.copyload.i
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.gu = fadd double %i.fr, %i.gq
  %i.gv = fadd double %i.fm, %i.gq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.gw = fmul nnan double %i.gq, 5.000000e-01    ; 2 uses
  %i.gx = fadd double %i.fm, %i.gw
  %i.gy = fsub double %i.fr, %i.gw
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.0142.0 = phi double [ %i.gx, %bb.af ], [ %i.fm, %bb.ad ], [ %i.gv, %bb.ae ], [ %i.fm, %bb.ab ] ; 4 uses
  %.sroa.15.0 = phi double [ %i.gy, %bb.af ], [ %i.gt, %bb.ad ], [ %i.gu, %bb.ae ], [ %i.fr, %bb.ab ] ; 4 uses
  %i.gz = fsub double %i.fu, %i.fx
  %i.ha = fsub double %i.gz, %.sroa.9.0.copyload.i ; 4 uses
  %i.hb = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.hb, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.hc = and i16 %i.gl, 24
  switch i16 %i.hc, label %bb.ak [
    i16 16, label %bb.ai
    i16 8, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.hd = fadd double %i.fx, %.sroa.9.0.copyload.i
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.he = fadd double %i.fu, %i.ha
  %i.hf = fadd double %i.fx, %i.ha
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.hg = fmul nnan double %i.ha, 5.000000e-01    ; 2 uses
  %i.hh = fadd double %i.fx, %i.hg
  %i.hi = fsub double %i.fu, %i.hg
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.aa
  %.sroa.0142.1 = phi double [ %i.fm, %bb.aa ], [ %.sroa.0142.0, %bb.ak ], [ %.sroa.0142.0, %bb.ai ], [ %.sroa.0142.0, %bb.aj ], [ %.sroa.0142.0, %bb.ag ] ; 2 uses
  %.sroa.9.0 = phi double [ %i.fx, %bb.aa ], [ %i.hh, %bb.ak ], [ %i.fx, %bb.ai ], [ %i.hf, %bb.aj ], [ %i.fx, %bb.ag ] ; 2 uses
  %.sroa.15.1 = phi double [ %i.fr, %bb.aa ], [ %.sroa.15.0, %bb.ak ], [ %.sroa.15.0, %bb.ai ], [ %.sroa.15.0, %bb.aj ], [ %.sroa.15.0, %bb.ag ] ; 2 uses
  %.sroa.22.0 = phi double [ %i.fu, %bb.aa ], [ %i.hi, %bb.ak ], [ %i.hd, %bb.ai ], [ %i.he, %bb.aj ], [ %i.fu, %bb.ag ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  store double %.sroa.0142.1, ptr %i.hj, align 8, !tbaa !28
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !28
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  store double %.sroa.15.1, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store double %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 63
  store i8 %.3, ptr %i.hk, align 1, !tbaa !275
  %i.hl = getelementptr inbounds nuw i8, ptr %i.eo, i64 61
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !108
  %i.hn = uitofp i8 %i.hm to double               ; 4 uses
  %i.ho = fadd double %.sroa.0142.1, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eo, i64 62
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !224
  %i.hr = uitofp i8 %i.hq to double               ; 4 uses
  %i.hs = fadd double %i.ho, %i.hr                ; 6 uses
  store double %i.hs, ptr %3, align 8
  %i.ht = fadd double %.sroa.9.0, %i.hn
  %i.hu = fadd double %i.ht, %i.hr                ; 6 uses
  store double %i.hu, ptr %i.dn, align 8
  %i.hv = fsub double %.sroa.15.1, %i.hn
  %i.hw = fsub double %i.hv, %i.hr                ; 6 uses
  store double %i.hw, ptr %i.do, align 8
  %i.hx = fsub double %.sroa.22.0, %i.hn
  %i.hy = fsub double %i.hx, %i.hr                ; 6 uses
  store double %i.hy, ptr %i.dp, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.eo, i64 112 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.eo, i64 120
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !109
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !24 ; 7 uses
  switch i32 %i.ib, label %bb.aw [
    i32 1, label %bb.am
    i32 3, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @pos_html_tbl(ptr noundef %i.ic, ptr noundef nonnull byval(%struct.boxf) align 8 %3, i8 noundef zeroext range(i8 0, 16) %.3), !inline_history !276
  br label %pos_html_cell.exit

bb.an:                                            ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %.sroa.0.0.copyload5.i = load double, ptr %i.id, align 8, !tbaa !28
  %.sroa.9.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %.sroa.9.0.copyload8.i = load double, ptr %.sroa.9.0..sroa_idx7.i, align 8, !tbaa !28
  %i.ie = fsub double %i.hw, %i.hs
  %i.if = fsub double %i.ie, %.sroa.0.0.copyload5.i ; 3 uses
  %i.ig = fcmp ogt double %i.if, 0.000000e+00
  br i1 %i.ig, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ih = and i16 %i.gl, 6
  switch i16 %i.ih, label %bb.ar [
    i16 4, label %bb.ap
    i16 2, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ii = fsub double %i.hw, %i.if
  store double %i.ii, ptr %i.do, align 8
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ij = fadd double %i.hs, %i.if
  store double %i.ij, ptr %3, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.ik = fsub double %i.hy, %i.hu
  %i.il = fsub double %i.ik, %.sroa.9.0.copyload8.i ; 3 uses
  %i.im = fcmp ogt double %i.il, 0.000000e+00
  br i1 %i.im, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.in = and i16 %i.gl, 24
  switch i16 %i.in, label %bb.av [
    i16 16, label %bb.at
    i16 8, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.io = fsub double %i.hy, %i.il
  store double %i.io, ptr %i.dp, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ip = fadd double %i.hu, %i.il
  store double %i.ip, ptr %i.dn, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  br label %pos_html_cell.exit

bb.aw:                                            ; preds = %bb.al
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %.sroa.0.0.copyload6.i = load double, ptr %i.iq, align 8, !tbaa !28
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %.sroa.9.0.copyload10.i = load double, ptr %.sroa.9.0..sroa_idx9.i, align 8, !tbaa !28
  %i.ir = fsub double %i.hw, %i.hs
  %i.is = fsub double %i.ir, %.sroa.0.0.copyload6.i ; 4 uses
  %i.it = fcmp ogt double %i.is, 0.000000e+00
  br i1 %i.it, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.iu = and i16 %i.gl, 6
  switch i16 %i.iu, label %.unreachabledefault.i [
    i16 6, label %bb.bb
    i16 4, label %bb.ay
    i16 2, label %bb.az
    i16 0, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.iv = fsub double %i.hw, %i.is
  store double %i.iv, ptr %i.do, align 8
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.iw = fadd double %i.hs, %i.is
  store double %i.iw, ptr %3, align 8
  br label %bb.bb

.unreachabledefault.i:                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.ix = fmul nnan double %i.is, 5.000000e-01    ; 2 uses
  %i.iy = fadd double %i.hs, %i.ix
  store double %i.iy, ptr %3, align 8
  %i.iz = fsub double %i.hw, %i.ix
  store double %i.iz, ptr %i.do, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw
  %i.ja = fsub double %i.hy, %i.hu
  %i.jb = fsub double %i.ja, %.sroa.9.0.copyload10.i ; 4 uses
  %i.jc = fcmp ogt double %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.jd = and i16 %i.gl, 24
  switch i16 %i.jd, label %bb.bf [
    i16 16, label %bb.bd
    i16 8, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.je = fsub double %i.hy, %i.jb
  store double %i.je, ptr %i.dp, align 8
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.jf = fadd double %i.hu, %i.jb
  store double %i.jf, ptr %i.dn, align 8
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.jg = fmul nnan double %i.jb, 5.000000e-01    ; 2 uses
  %i.jh = fadd double %i.hu, %i.jg
  store double %i.jh, ptr %i.dn, align 8
  %i.ji = fsub double %i.hy, %i.jg
  store double %i.ji, ptr %i.dp, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.jk = load i16, ptr %i.gk, align 8, !tbaa !221
  %i.jl = and i16 %i.jk, 768                      ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.jl, 256
  %switch.select.i = select i1 %switch.selectcmp.i, i8 114, i8 110
  %switch.selectcmp84.i = icmp eq i16 %i.jl, 512
  %switch.select85.i = select i1 %switch.selectcmp84.i, i8 108, i8 %switch.select.i ; 25 uses
  %i.jm = load ptr, ptr %i.hz, align 8, !tbaa !24 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !127 ; 9 uses
  %.not.i140 = icmp eq i64 %i.jo, 0
  br i1 %.not.i140, label %pos_html_cell.exit, label %iter.check

iter.check:                                       ; preds = %bb.bg
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !129 ; 25 uses
  %min.iters.check = icmp ult i64 %i.jo, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check191 = icmp ult i64 %i.jo, 16
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jq = and i64 %i.jo, 8
  %n.vec = and i64 %i.jo, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue221, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue221 ] ; 17 uses
  %i.jr = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.js = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jt = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ju = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jw = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jx = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jy = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.jz = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ka = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kc = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kd = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.ke = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.js, i64 56 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 96 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ju, i64 136 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jv, i64 176 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jw, i64 216 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 256 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 296 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 336 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 376 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kb, i64 416 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 456 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 496 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 536 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 576 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 616 ; 2 uses
  %i.kx = load i8, ptr %i.kh, align 8, !tbaa !131
  %i.ky = load i8, ptr %i.ki, align 8, !tbaa !131
  %i.kz = load i8, ptr %i.kj, align 8, !tbaa !131
  %i.la = load i8, ptr %i.kk, align 8, !tbaa !131
  %i.lb = load i8, ptr %i.kl, align 8, !tbaa !131
  %i.lc = load i8, ptr %i.km, align 8, !tbaa !131
  %i.ld = load i8, ptr %i.kn, align 8, !tbaa !131
  %i.le = load i8, ptr %i.ko, align 8, !tbaa !131
  %i.lf = load i8, ptr %i.kp, align 8, !tbaa !131
  %i.lg = load i8, ptr %i.kq, align 8, !tbaa !131
  %i.lh = load i8, ptr %i.kr, align 8, !tbaa !131
  %i.li = load i8, ptr %i.ks, align 8, !tbaa !131
  %i.lj = load i8, ptr %i.kt, align 8, !tbaa !131
  %i.lk = load i8, ptr %i.ku, align 8, !tbaa !131
  %i.ll = load i8, ptr %i.kv, align 8, !tbaa !131
  %i.lm = load i8, ptr %i.kw, align 8, !tbaa !131
  %i.ln = insertelement <16 x i8> poison, i8 %i.kx, i64 0
  %i.lo = insertelement <16 x i8> %i.ln, i8 %i.ky, i64 1
  %i.lp = insertelement <16 x i8> %i.lo, i8 %i.kz, i64 2
  %i.lq = insertelement <16 x i8> %i.lp, i8 %i.la, i64 3
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 4
  %i.ls = insertelement <16 x i8> %i.lr, i8 %i.lc, i64 5
  %i.lt = insertelement <16 x i8> %i.ls, i8 %i.ld, i64 6
  %i.lu = insertelement <16 x i8> %i.lt, i8 %i.le, i64 7
  %i.lv = insertelement <16 x i8> %i.lu, i8 %i.lf, i64 8
  %i.lw = insertelement <16 x i8> %i.lv, i8 %i.lg, i64 9
  %i.lx = insertelement <16 x i8> %i.lw, i8 %i.lh, i64 10
  %i.ly = insertelement <16 x i8> %i.lx, i8 %i.li, i64 11
  %i.lz = insertelement <16 x i8> %i.ly, i8 %i.lj, i64 12
  %i.ma = insertelement <16 x i8> %i.lz, i8 %i.lk, i64 13
  %i.mb = insertelement <16 x i8> %i.ma, i8 %i.ll, i64 14
  %i.mc = insertelement <16 x i8> %i.mb, i8 %i.lm, i64 15
  %i.md = icmp eq <16 x i8> %i.mc, zeroinitializer ; 16 uses
  %i.me = extractelement <16 x i1> %i.md, i64 0
  br i1 %i.me, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %switch.select85.i, ptr %i.kh, align 8, !tbaa !131
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.mf = extractelement <16 x i1> %i.md, i64 1
  br i1 %i.mf, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue
  store i8 %switch.select85.i, ptr %i.ki, align 8, !tbaa !131
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue
  %i.mg = extractelement <16 x i1> %i.md, i64 2
  br i1 %i.mg, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 %switch.select85.i, ptr %i.kj, align 8, !tbaa !131
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.mh = extractelement <16 x i1> %i.md, i64 3
  br i1 %i.mh, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 %switch.select85.i, ptr %i.kk, align 8, !tbaa !131
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.mi = extractelement <16 x i1> %i.md, i64 4
  br i1 %i.mi, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  store i8 %switch.select85.i, ptr %i.kl, align 8, !tbaa !131
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.mj = extractelement <16 x i1> %i.md, i64 5
  br i1 %i.mj, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  store i8 %switch.select85.i, ptr %i.km, align 8, !tbaa !131
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.mk = extractelement <16 x i1> %i.md, i64 6
  br i1 %i.mk, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  store i8 %switch.select85.i, ptr %i.kn, align 8, !tbaa !131
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.ml = extractelement <16 x i1> %i.md, i64 7
  br i1 %i.ml, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  store i8 %switch.select85.i, ptr %i.ko, align 8, !tbaa !131
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.mm = extractelement <16 x i1> %i.md, i64 8
  br i1 %i.mm, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  store i8 %switch.select85.i, ptr %i.kp, align 8, !tbaa !131
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.mn = extractelement <16 x i1> %i.md, i64 9
  br i1 %i.mn, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  store i8 %switch.select85.i, ptr %i.kq, align 8, !tbaa !131
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.mo = extractelement <16 x i1> %i.md, i64 10
  br i1 %i.mo, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  store i8 %switch.select85.i, ptr %i.kr, align 8, !tbaa !131
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.mp = extractelement <16 x i1> %i.md, i64 11
  br i1 %i.mp, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  store i8 %switch.select85.i, ptr %i.ks, align 8, !tbaa !131
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.mq = extractelement <16 x i1> %i.md, i64 12
  br i1 %i.mq, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  store i8 %switch.select85.i, ptr %i.kt, align 8, !tbaa !131
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.mr = extractelement <16 x i1> %i.md, i64 13
  br i1 %i.mr, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  store i8 %switch.select85.i, ptr %i.ku, align 8, !tbaa !131
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %i.ms = extractelement <16 x i1> %i.md, i64 14
  br i1 %i.ms, label %pred.store.if218, label %pred.store.continue219

pred.store.if218:                                 ; preds = %pred.store.continue217
  store i8 %switch.select85.i, ptr %i.kv, align 8, !tbaa !131
  br label %pred.store.continue219

pred.store.continue219:                           ; preds = %pred.store.if218, %pred.store.continue217
  %i.mt = extractelement <16 x i1> %i.md, i64 15
  br i1 %i.mt, label %pred.store.if220, label %pred.store.continue221

pred.store.if220:                                 ; preds = %pred.store.continue219
  store i8 %switch.select85.i, ptr %i.kw, align 8, !tbaa !131
  br label %pred.store.continue221

pred.store.continue221:                           ; preds = %pred.store.if220, %pred.store.continue219
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %pred.store.continue221
  %cmp.n = icmp eq i64 %i.jo, %n.vec
  br i1 %cmp.n, label %pos_html_cell.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.jq, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !278

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec222 = and i64 %i.jo, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue239, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next240, %pred.store.continue239 ] ; 9 uses
  %i.mv = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.mw = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.mx = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.my = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.mz = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.nb = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.nc = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %index223
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 96 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 136 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 176 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 216 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 256 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 296 ; 2 uses
  %i.nl = load i8, ptr %i.nd, align 8, !tbaa !131
  %i.nm = load i8, ptr %i.ne, align 8, !tbaa !131
  %i.nn = load i8, ptr %i.nf, align 8, !tbaa !131
  %i.no = load i8, ptr %i.ng, align 8, !tbaa !131
  %i.np = load i8, ptr %i.nh, align 8, !tbaa !131
  %i.nq = load i8, ptr %i.ni, align 8, !tbaa !131
  %i.nr = load i8, ptr %i.nj, align 8, !tbaa !131
  %i.ns = load i8, ptr %i.nk, align 8, !tbaa !131
  %i.nt = insertelement <8 x i8> poison, i8 %i.nl, i64 0
  %i.nu = insertelement <8 x i8> %i.nt, i8 %i.nm, i64 1
  %i.nv = insertelement <8 x i8> %i.nu, i8 %i.nn, i64 2
  %i.nw = insertelement <8 x i8> %i.nv, i8 %i.no, i64 3
  %i.nx = insertelement <8 x i8> %i.nw, i8 %i.np, i64 4
  %i.ny = insertelement <8 x i8> %i.nx, i8 %i.nq, i64 5
  %i.nz = insertelement <8 x i8> %i.ny, i8 %i.nr, i64 6
  %i.oa = insertelement <8 x i8> %i.nz, i8 %i.ns, i64 7
  %i.ob = icmp eq <8 x i8> %i.oa, zeroinitializer ; 8 uses
  %i.oc = extractelement <8 x i1> %i.ob, i64 0
  br i1 %i.oc, label %pred.store.if224, label %pred.store.continue225

pred.store.if224:                                 ; preds = %vec.epilog.vector.body
  store i8 %switch.select85.i, ptr %i.nd, align 8, !tbaa !131
  br label %pred.store.continue225

pred.store.continue225:                           ; preds = %pred.store.if224, %vec.epilog.vector.body
  %i.od = extractelement <8 x i1> %i.ob, i64 1
  br i1 %i.od, label %pred.store.if226, label %pred.store.continue227

pred.store.if226:                                 ; preds = %pred.store.continue225
  store i8 %switch.select85.i, ptr %i.ne, align 8, !tbaa !131
  br label %pred.store.continue227

pred.store.continue227:                           ; preds = %pred.store.if226, %pred.store.continue225
  %i.oe = extractelement <8 x i1> %i.ob, i64 2
  br i1 %i.oe, label %pred.store.if228, label %pred.store.continue229

pred.store.if228:                                 ; preds = %pred.store.continue227
  store i8 %switch.select85.i, ptr %i.nf, align 8, !tbaa !131
  br label %pred.store.continue229

pred.store.continue229:                           ; preds = %pred.store.if228, %pred.store.continue227
  %i.of = extractelement <8 x i1> %i.ob, i64 3
  br i1 %i.of, label %pred.store.if230, label %pred.store.continue231

pred.store.if230:                                 ; preds = %pred.store.continue229
  store i8 %switch.select85.i, ptr %i.ng, align 8, !tbaa !131
  br label %pred.store.continue231

pred.store.continue231:                           ; preds = %pred.store.if230, %pred.store.continue229
  %i.og = extractelement <8 x i1> %i.ob, i64 4
  br i1 %i.og, label %pred.store.if232, label %pred.store.continue233

pred.store.if232:                                 ; preds = %pred.store.continue231
  store i8 %switch.select85.i, ptr %i.nh, align 8, !tbaa !131
  br label %pred.store.continue233

pred.store.continue233:                           ; preds = %pred.store.if232, %pred.store.continue231
  %i.oh = extractelement <8 x i1> %i.ob, i64 5
  br i1 %i.oh, label %pred.store.if234, label %pred.store.continue235

pred.store.if234:                                 ; preds = %pred.store.continue233
  store i8 %switch.select85.i, ptr %i.ni, align 8, !tbaa !131
  br label %pred.store.continue235

pred.store.continue235:                           ; preds = %pred.store.if234, %pred.store.continue233
  %i.oi = extractelement <8 x i1> %i.ob, i64 6
  br i1 %i.oi, label %pred.store.if236, label %pred.store.continue237

pred.store.if236:                                 ; preds = %pred.store.continue235
  store i8 %switch.select85.i, ptr %i.nj, align 8, !tbaa !131
  br label %pred.store.continue237

pred.store.continue237:                           ; preds = %pred.store.if236, %pred.store.continue235
  %i.oj = extractelement <8 x i1> %i.ob, i64 7
  br i1 %i.oj, label %pred.store.if238, label %pred.store.continue239

pred.store.if238:                                 ; preds = %pred.store.continue237
  store i8 %switch.select85.i, ptr %i.nk, align 8, !tbaa !131
  br label %pred.store.continue239

pred.store.continue239:                           ; preds = %pred.store.if238, %pred.store.continue237
  %index.next240 = add nuw i64 %index223, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next240, %n.vec222
  br i1 %i.ok, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !279

vec.epilog.middle.block:                          ; preds = %pred.store.continue239
  %cmp.n241 = icmp eq i64 %i.jo, %n.vec222
  br i1 %cmp.n241, label %pos_html_cell.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.bi
  %.07.i = phi i64 [ %i.op, %bb.bi ], [ %.07.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ol = getelementptr inbounds nuw [40 x i8], ptr %i.jp, i64 %.07.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 16 ; 2 uses
  %i.on = load i8, ptr %i.om, align 8, !tbaa !131
  %i.oo = icmp eq i8 %i.on, 0
  br i1 %i.oo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %vec.epilog.scalar.ph
  store i8 %switch.select85.i, ptr %i.om, align 8, !tbaa !131
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %vec.epilog.scalar.ph
  %i.op = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.op, %i.jo
  br i1 %exitcond.not.i, label %pos_html_cell.exit, label %vec.epilog.scalar.ph, !llvm.loop !280

pos_html_cell.exit:                               ; preds = %bb.bi, %middle.block, %vec.epilog.middle.block, %bb.bg, %bb.am, %bb.av
  %i.oq = load ptr, ptr %i.ep, align 8, !tbaa !98 ; 2 uses
  %.not137 = icmp eq ptr %i.oq, null
  br i1 %.not137, label %._crit_edge, label %bb.u, !llvm.loop !281

._crit_edge:                                      ; preds = %pos_html_cell.exit, %.preheader
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %2, ptr %i.os, align 1, !tbaa !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.or, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !283
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @size_html_txt(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.textspan_t, align 16        ; 8 uses
  %4 = alloca %struct.textfont_t, align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !127  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.thread265, label %.lr.ph

._crit_edge.thread265:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.d, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !284
  br label %bb.aj

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !135
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138  ; 4 uses
  %.not.peel = icmp eq ptr %i.o, null
  br i1 %.not.peel, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 127
  %.not178.peel = icmp eq i32 %i.r, 0
  br i1 %.not178.peel, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !91 ; 2 uses
  %i.u = fcmp ogt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load double, ptr %i.g, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi double [ %i.v, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  store double %i.w, ptr %i.h, align 8, !tbaa !91
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !88   ; 2 uses
  %.not179.peel = icmp eq ptr %i.x, null
  br i1 %.not179.peel, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.y = load double, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  store double %i.y, ptr %i.h, align 8, !tbaa !91
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g
  %.ph = phi double [ %i.y, %bb.g ], [ %i.w, %bb.f ]
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.z, %.sink.split ] ; 2 uses
  %i.aa = phi double [ %i.w, %bb.f ], [ %.ph, %.sink.split ]
  store ptr %.sink, ptr %4, align 16, !tbaa !88
  %exitcond.peel.not = icmp eq i64 %i.b, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.r
  %.0156192 = phi i64 [ %i.ax, %bb.r ], [ 1, %bb.h ] ; 2 uses
  %.0157191 = phi ptr [ %.1, %bb.r ], [ %.sink, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.0156192 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !135
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %.preheader.lr.ph, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !138 ; 4 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = and i32 %i.aj, 127
  %.not178 = icmp eq i32 %i.ak, 0
  br i1 %.not178, label %bb.k, label %.preheader.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !91 ; 2 uses
  %i.an = fcmp ogt double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load double, ptr %i.g, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ap = phi double [ %i.ao, %bb.l ], [ %i.am, %bb.k ] ; 3 uses
  store double %i.ap, ptr %i.h, align 8, !tbaa !91
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !88 ; 2 uses
  %.not179 = icmp eq ptr %i.aq, null
  br i1 %.not179, label %.sink.split287, label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ar = load double, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  store double %i.ar, ptr %i.h, align 8, !tbaa !91
  br label %.sink.split287

.sink.split287:                                   ; preds = %bb.m, %bb.n
  %.ph288 = phi double [ %i.ar, %bb.n ], [ %i.ap, %bb.m ]
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %.sink.split287, %bb.m
  %.sink282 = phi ptr [ %i.aq, %bb.m ], [ %i.as, %.sink.split287 ] ; 3 uses
  %i.at = phi double [ %i.ap, %bb.m ], [ %.ph288, %.sink.split287 ]
  store ptr %.sink282, ptr %4, align 16, !tbaa !88
  %i.au = fcmp une double %i.at, %i.aa
  br i1 %i.au, label %.preheader.lr.ph, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq ptr %.0157191, null
  br i1 %i.av, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.sink282, ptr noundef nonnull dereferenceable(1) %.0157191) #25
  %.not180 = icmp eq i32 %i.aw, 0
  br i1 %.not180, label %bb.r, label %.preheader.lr.ph

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1 = phi ptr [ %.0157191, %bb.q ], [ %.sink282, %bb.p ]
  %i.ax = add nuw i64 %.0156192, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond.not, label %._crit_edge.thread, label %.peel.next, !llvm.loop !285

._crit_edge.thread:                               ; preds = %bb.r, %.lr.ph, %bb.c, %bb.h
  %.lcssa188.ph = phi i1 [ false, %.lr.ph ], [ true, %bb.h ], [ false, %bb.c ], [ true, %bb.r ] ; 2 uses
  %i.ay = zext i1 %.lcssa188.ph to i8
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.q, %bb.o, %bb.j, %.peel.next, %._crit_edge.thread
  %.sink11 = phi i8 [ %i.ay, %._crit_edge.thread ], [ 0, %.peel.next ], [ 0, %bb.j ], [ 0, %bb.o ], [ 0, %bb.q ]
  %.lcssa188264 = phi i1 [ %.lcssa188.ph, %._crit_edge.thread ], [ false, %.peel.next ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %.sink11, ptr %i.az, align 8, !tbaa !130
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load ptr, ptr %1, align 8, !tbaa !129
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ah
  %i.bm = phi ptr [ %.pre, %.preheader.lr.ph ], [ %i.bv, %bb.ah ] ; 2 uses
  %.0219 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.fc, %bb.ah ] ; 2 uses
  %.0153218 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.fd, %bb.ah ] ; 2 uses
  %.0155217 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.fe, %bb.ah ] ; 6 uses
  %.0168216 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.fa, %bb.ah ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %.0155217 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !135
  %.not227 = icmp eq i64 %i.bp, 0
  br i1 %.not227, label %._crit_edge208, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.preheader
  %.pre243 = load ptr, ptr %i.bn, align 8, !tbaa !136
  br label %.lr.ph207

._crit_edge220:                                   ; preds = %bb.ah
  %i.bq = icmp eq i64 %i.ff, 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.fc, ptr %i.br, align 8, !tbaa !284
  br i1 %i.bq, label %bb.aj, label %bb.ai

end_hunk_0
begin_hunk_1_@llvm.assume
!77 = !{!"htmltbl_t", !78, i64 0, !6, i64 104, !6, i64 160, !81, i64 168, !81, i64 176, !17, i64 184, !17, i64 192, !11, i64 200, !32, i64 208, !32, i64 208}
!78 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !79, i64 64, !79, i64 66, !79, i64 68, !80, i64 70, !56, i64 72}
!79 = !{!"short", !6, i64 0}
!80 = !{!"", !32, i64 0, !32, i64 0, !32, i64 0, !32, i64 0, !32, i64 0}
!81 = !{!"p1 double", !11, i64 0}
!82 = !{i8 0, i8 2}
!83 = !{!77, !16, i64 0}
!84 = !{!77, !16, i64 16}
!85 = !{!77, !16, i64 24}
!86 = !{!77, !11, i64 200}
!87 = !{!39, !16, i64 16}
!88 = !{!40, !16, i64 0}
!89 = !{!39, !16, i64 24}
!90 = !{!40, !16, i64 8}
!91 = !{!40, !13, i64 24}
!92 = !{!44, !5, i64 280}
!93 = !{!77, !16, i64 40}
!94 = !{!77, !5, i64 56}
!95 = !{!77, !6, i64 61}
!96 = !{!31, !13, i64 0}
!97 = !{!31, !13, i64 8}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTS10htmlcell_t", !11, i64 0}
!100 = !{!101, !16, i64 0}
!101 = !{!"htmlcell_t", !78, i64 0, !79, i64 104, !79, i64 106, !79, i64 108, !79, i64 110, !34, i64 112, !102, i64 128, !32, i64 136, !32, i64 136}
!102 = !{!"p1 _ZTS9htmltbl_t", !11, i64 0}
!103 = !{!101, !16, i64 16}
!104 = !{!101, !16, i64 24}
!105 = distinct !{null}
!106 = !{!101, !16, i64 40}
!107 = !{!101, !5, i64 56}
!108 = !{!101, !6, i64 61}
!109 = !{!101, !5, i64 120}
!110 = !{!111, !16, i64 40}
!111 = !{!"", !56, i64 0, !16, i64 32, !16, i64 40}
!112 = !{!111, !16, i64 32}
!113 = distinct !{!113, !114}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!101, !79, i64 108}
!116 = !{!101, !79, i64 104}
!117 = !{!101, !102, i64 128}
!118 = !{!77, !17, i64 192}
!119 = !{!101, !79, i64 110}
!120 = !{!77, !6, i64 60}
!121 = !{!101, !79, i64 106}
!122 = !{!77, !17, i64 184}
!123 = !{!56, !13, i64 16}
!124 = !{!56, !13, i64 24}
!125 = !{!77, !13, i64 88}
!126 = distinct !{!126, !114}
!127 = !{!128, !17, i64 8}
!128 = !{!"", !11, i64 0, !17, i64 8, !6, i64 16, !56, i64 24}
!129 = !{!128, !11, i64 0}
!130 = !{!128, !6, i64 16}
!131 = !{!132, !6, i64 16}
!132 = !{!"", !11, i64 0, !17, i64 8, !6, i64 16, !13, i64 24, !13, i64 32}
!133 = !{!132, !13, i64 24}
!134 = !{!132, !13, i64 32}
!135 = !{!132, !17, i64 8}
!136 = !{!132, !11, i64 0}
!137 = distinct !{!137, !114}
!138 = !{!139, !11, i64 8}
!139 = !{!"", !16, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32, !13, i64 40, !31, i64 48, !6, i64 64}
!140 = !{!139, !16, i64 0}
!141 = !{!139, !13, i64 32}
!142 = !{!139, !13, i64 40}
!143 = !{!40, !41, i64 16}
!144 = !{!139, !11, i64 16}
!145 = !{!139, !13, i64 48}
!146 = !{!139, !13, i64 56}
!147 = !{!139, !6, i64 64}
!148 = distinct !{!148, !114}
!149 = !{!78, !16, i64 0}
!150 = !{!78, !16, i64 8}
!151 = !{!78, !16, i64 16}
!152 = !{!78, !16, i64 32}
!153 = !{!78, !16, i64 24}
!154 = !{!78, !16, i64 40}
!155 = !{!78, !16, i64 48}
!156 = distinct !{!156, !114}
!157 = !{!139, !11, i64 24}
!158 = distinct !{!158, !114}
!159 = !{!160, !17, i64 16}
!160 = !{!"", !11, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!161 = distinct !{null}
!162 = !{!11, !11, i64 0}
!163 = distinct !{!163, !114}
!164 = !{!77, !81, i64 168}
!165 = !{!77, !81, i64 176}
!166 = distinct !{null, null}
!167 = distinct !{!167, !114}
!168 = !{!169, !171, i64 16}
!169 = !{!"Agobj_s", !170, i64 0, !171, i64 16}
!170 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !17, i64 8}
!171 = !{!"p1 _ZTS7Agrec_s", !11, i64 0}
!172 = !{!173, !176, i64 136}
!173 = !{!"Agnodeinfo_t", !174, i64 0, !175, i64 16, !11, i64 24, !31, i64 32, !13, i64 48, !13, i64 56, !56, i64 64, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !176, i64 136, !176, i64 144, !11, i64 152, !6, i64 160, !6, i64 161, !32, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !81, i64 176, !13, i64 184, !6, i64 192, !32, i64 193, !177, i64 200, !177, i64 208, !6, i64 216, !17, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !177, i64 240, !177, i64 248, !178, i64 256, !178, i64 272, !178, i64 288, !178, i64 304, !178, i64 320, !42, i64 336, !5, i64 344, !177, i64 352, !5, i64 360, !5, i64 364, !13, i64 368, !178, i64 376, !178, i64 392, !178, i64 408, !178, i64 424, !180, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!174 = !{!"Agrec_s", !16, i64 0, !171, i64 8}
!175 = !{!"p1 _ZTS10shape_desc", !11, i64 0}
!176 = !{!"p1 _ZTS11textlabel_t", !11, i64 0}
!177 = !{!"p1 _ZTS8Agnode_s", !11, i64 0}
!178 = !{!"elist", !179, i64 0, !17, i64 8}
!179 = !{!"p2 _ZTS8Agedge_s", !15, i64 0}
!180 = !{!"p1 _ZTS8Agedge_s", !11, i64 0}
!181 = !{!78, !6, i64 63}
!182 = !{!77, !16, i64 8}
!183 = !{!101, !16, i64 8}
!184 = distinct !{null}
!185 = distinct !{!185, !114}
!186 = !{!39, !11, i64 56}
!187 = !{!39, !42, i64 64}
!188 = !{!189, !42, i64 120}
!189 = !{!"Agraph_s", !169, i64 0, !190, i64 24, !191, i64 32, !191, i64 48, !70, i64 64, !193, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !42, i64 112, !42, i64 120, !194, i64 128}
!190 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!191 = !{!"dtlink_s_", !192, i64 0, !6, i64 8}
!192 = !{!"p1 _ZTS9dtlink_s_", !11, i64 0}
!193 = !{!"p1 _ZTS17graphviz_node_set", !11, i64 0}
!194 = !{!"p1 _ZTS8Agclos_s", !11, i64 0}
!195 = !{!196, !177, i64 56}
!196 = !{!"Agedge_s", !169, i64 0, !191, i64 24, !191, i64 40, !177, i64 56}
!197 = !{!30, !16, i64 0}
!198 = !{!5, !5, i64 0}
!199 = !{!30, !32, i64 106}
!200 = !{!30, !5, i64 24}
!201 = !{!202, !45, i64 168}
!202 = !{!"Agraphinfo_t", !174, i64 0, !203, i64 16, !176, i64 24, !56, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !32, i64 130, !6, i64 131, !5, i64 132, !13, i64 136, !13, i64 144, !79, i64 152, !11, i64 160, !45, i64 168, !11, i64 176, !204, i64 184, !5, i64 192, !205, i64 200, !205, i64 208, !205, i64 216, !206, i64 224, !79, i64 232, !79, i64 234, !5, i64 236, !208, i64 240, !42, i64 248, !177, i64 256, !209, i64 264, !42, i64 272, !5, i64 280, !177, i64 288, !177, i64 296, !210, i64 304, !177, i64 320, !177, i64 328, !5, i64 336, !5, i64 340, !32, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !177, i64 360, !177, i64 368, !177, i64 376, !204, i64 384, !32, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !32, i64 396}
!203 = !{!"p1 _ZTS8layout_t", !11, i64 0}
!204 = !{!"p2 _ZTS8Agnode_s", !15, i64 0}
!205 = !{!"p2 double", !15, i64 0}
!206 = !{!"p3 double", !207, i64 0}
!207 = !{!"any p3 pointer", !15, i64 0}
!208 = !{!"p2 _ZTS8Agraph_s", !15, i64 0}
!209 = !{!"p1 _ZTS6rank_t", !11, i64 0}
!210 = !{!"nlist_t", !204, i64 0, !17, i64 8}
!211 = !{i64 0, i64 32, !24, i64 32, i64 8, !162, i64 40, i64 8, !162}
!212 = distinct !{null}
!213 = !{!214, !32, i64 48}
!214 = !{!"", !215, i64 0, !32, i64 48}
!215 = !{!"", !6, i64 0, !11, i64 32, !99, i64 40}
!216 = !{}
!217 = !{!218, !17, i64 8}
!218 = !{!"", !6, i64 0, !17, i64 8}
!219 = distinct !{!219, !114}
!220 = distinct !{!220, !114}
!221 = !{!101, !79, i64 64}
!222 = !{!77, !79, i64 64}
!223 = !{!77, !6, i64 62}
!224 = !{!101, !6, i64 62}
!225 = !{!77, !6, i64 160}
!226 = distinct !{null, null}
!227 = !{!202, !32, i64 130}
!228 = !{!111, !13, i64 16}
!229 = !{!111, !13, i64 24}
!230 = !{!101, !79, i64 66}
!231 = !{!101, !79, i64 68}
!232 = !{!79, !79, i64 0}
!233 = distinct !{!233, !114}
!234 = distinct !{!234, !114}
!235 = distinct !{!235, !114}
!236 = distinct !{!236, !114}
!237 = !{!238, !11, i64 32}
!238 = !{!"", !6, i64 0, !11, i64 32, !11, i64 40}
!239 = distinct !{!239, !114}
!240 = distinct !{!240, !114}
!241 = distinct !{!241, !242}
!242 = !{!"llvm.loop.unroll.disable"}
!243 = distinct !{!243, !114}
!244 = distinct !{!244, !114, !245, !246}
!245 = !{!"llvm.loop.isvectorized", i32 1}
!246 = !{!"llvm.loop.unroll.runtime.disable"}
!247 = distinct !{!247, !114, !246, !245}
!248 = distinct !{!248, !114}
!249 = distinct !{!249, !242}
!250 = !{!101, !13, i64 88}
!251 = distinct !{!251, !114}
!252 = distinct !{!252, !114}
!253 = distinct !{!253, !114}
!254 = distinct !{!254, !242}
!255 = distinct !{!255, !114}
!256 = distinct !{!256, !114, !245, !246}
!257 = distinct !{!257, !114, !246, !245}
!258 = distinct !{!258, !114}
!259 = distinct !{!259, !242}
!260 = !{!101, !13, i64 96}
!261 = distinct !{!261, !114}
!262 = distinct !{!262, !114}
!263 = distinct !{!263, !242}
!264 = distinct !{!264, !114}
!265 = distinct !{!265, !242}
!266 = distinct !{!266, !114}
!267 = !{!77, !79, i64 66}
!268 = !{!77, !79, i64 68}
!269 = !{!101, !16, i64 48}
!270 = !{!77, !13, i64 96}
!271 = !{!56, !13, i64 0}
!272 = !{!56, !13, i64 8}
!273 = distinct !{!273, !114}
!274 = distinct !{!274, !114}
!275 = !{!101, !6, i64 63}
!276 = distinct !{null}
!277 = distinct !{!277, !114, !245, !246}
!278 = !{!"branch_weights", i32 8, i32 8}
!279 = distinct !{!279, !114, !245, !246}
!280 = distinct !{!280, !114, !246, !245}
!281 = distinct !{!281, !114}
!282 = !{!77, !6, i64 63}
!283 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28}
!284 = !{!128, !13, i64 40}
!285 = distinct !{!285, !114, !286}
!286 = !{!"llvm.loop.peeled.count", i32 1}
!287 = !{!65, !70, i64 256}
!288 = !{!289, !11, i64 0}
!289 = !{!"dt_s_", !11, i64 0, !290, i64 8, !291, i64 16, !11, i64 56, !5, i64 64, !70, i64 72, !70, i64 80, !11, i64 88}
!290 = !{!"p1 _ZTS9dtdisc_s_", !11, i64 0}
!291 = !{!"", !5, i64 0, !192, i64 8, !6, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!292 = distinct !{!292, !114}
!293 = distinct !{!293, !114}
!294 = !{!128, !13, i64 48}
!295 = !{!296, !16, i64 0}
!296 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !32, i64 32, !55, i64 36, !55, i64 44}
!297 = !{!296, !16, i64 8}
!298 = !{!296, !16, i64 16}
!299 = !{!296, !16, i64 24}
!300 = !{!296, !32, i64 32}
!301 = !{!78, !6, i64 61}
!302 = !{!78, !79, i64 64}
!303 = !{i64 0, i64 8, !28, i64 8, i64 8, !28}
end_hunk_1
