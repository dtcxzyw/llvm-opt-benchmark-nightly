inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_mask:bb.a

bb.as:                                            ; preds = %bb.ar
  store float 1.000000e+00, ptr %gep.3, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next349.3 = add nuw nsw i64 %indvars.iv348, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge312.unr-lcssa, label %.preheader.new

bb.au:                                            ; preds = %._crit_edge314.split
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ml = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.mm = load i64, ptr %10, align 8, !tbaa !132
  %i.mn = add nsw i64 %i.mm, -1290608000
  %i.mo = sitofp reassoc nsz arcp contract afn i64 %i.mn to double
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !134
  %i.mr = sitofp reassoc nsz arcp contract afn i64 %i.mq to double
  %i.ms = fmul reassoc nnan nsz arcp contract afn double %i.mr, f0x3EB0C6F7A0B5ED8D
  %i.mt = fadd reassoc nsz arcp contract afn double %i.ms, %i.mo ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.mu = fsub reassoc nsz arcp contract afn double %i.mt, %.1274
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.mk, double noundef %i.mu) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge314.split
  %.2275 = phi nsz double [ %.1274, %._crit_edge314.split ], [ %i.mt, %bb.au ]
  br i1 %i.at, label %.lr.ph334.preheader, label %._crit_edge335

.lr.ph334.preheader:                              ; preds = %bb.av
  %i.mv = sext i32 %i.as to i64
  %wide.trip.count360 = sext i32 %i.ar to i64
  br label %.lr.ph334

._crit_edge335:                                   ; preds = %_path_falloff.exit, %bb.av
  %i.mw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.mx = and i32 %i.mw, 4112
  %or.cond253.not = icmp eq i32 %i.mx, 4112
  br i1 %or.cond253.not, label %bb.bd, label %bb.be

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %_path_falloff.exit
  %indvars.iv357 = phi i64 [ %i.mv, %.lr.ph334.preheader ], [ %indvars.iv.next358, %_path_falloff.exit ] ; 4 uses
  %.0191331 = phi i32 [ 0, %.lr.ph334.preheader ], [ %.1.lcssa, %_path_falloff.exit ] ; 4 uses
  %i.my = phi <4 x i32> [ splat (i32 -100), %.lr.ph334.preheader ], [ %i.pz, %_path_falloff.exit ] ; 2 uses
  %i.mz = shl nsw i64 %indvars.iv357, 1           ; 3 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.mz
  %i.nb = load <2 x float>, ptr %i.na, align 4, !tbaa !11
  %i.nc = fptosi <2 x float> %i.nb to <2 x i32>   ; 3 uses
  %i.nd = icmp sgt i32 %.0191331, 0               ; 2 uses
  %i.ne = shl nuw nsw i32 %.0191331, 1
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.mz
  %i.ni = getelementptr [4 x i8], ptr %i.ap, i64 %i.mz
  %.sroa.016.0.in = select i1 %i.nd, ptr %i.ng, ptr %i.nh
  %.sroa.7.0.in.v = select i1 %i.nd, ptr %i.ng, ptr %i.ni
  %.sroa.7.0.in = getelementptr i8, ptr %.sroa.7.0.in.v, i64 4
  %i.nj = trunc nsw i64 %indvars.iv357 to i32
  %i.nk = icmp eq i32 %.0191331, %i.nj
  %spec.store.select = select i1 %i.nk, i32 0, i32 %.0191331
  %.sroa.7.1315 = load float, ptr %.sroa.7.0.in, align 4, !tbaa !11 ; 2 uses
  %.sroa.016.1316 = load float, ptr %.sroa.016.0.in, align 4, !tbaa !11 ; 2 uses
  %.sroa.9.1317 = fptosi float %.sroa.7.1315 to i32 ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn oeq float %.sroa.016.1316, f0xFF7FFFFF
  br i1 %i.nl, label %.lr.ph321, label %._crit_edge322

.lr.ph321:                                        ; preds = %.lr.ph334
  %i.nm = trunc i64 %indvars.iv357 to i32
  %i.nn = add i32 %i.nm, -1
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph321, %bb.aw
  %.sroa.9.1319 = phi i32 [ %.sroa.9.1317, %.lr.ph321 ], [ %.sroa.9.1, %bb.aw ]
  %.sroa.7.1318 = phi float [ %.sroa.7.1315, %.lr.ph321 ], [ %.sroa.7.1, %bb.aw ]
  %i.no = fcmp reassoc nsz arcp contract afn oeq float %.sroa.7.1318, f0xFF7FFFFF
  %.2 = select i1 %i.no, i32 %i.nn, i32 %.sroa.9.1319 ; 2 uses
  %i.np = shl nsw i32 %.2, 1
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.nq ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %.sroa.7.1 = load float, ptr %i.ns, align 4, !tbaa !11 ; 2 uses
  %.sroa.016.1 = load float, ptr %i.nr, align 4, !tbaa !11 ; 2 uses
  %.sroa.9.1 = fptosi float %.sroa.7.1 to i32     ; 2 uses
  %i.nt = fcmp reassoc nsz arcp contract afn oeq float %.sroa.016.1, f0xFF7FFFFF
  br i1 %i.nt, label %bb.aw, label %._crit_edge322

._crit_edge322:                                   ; preds = %bb.aw, %.lr.ph334
  %.sroa.016.1.lcssa = phi float [ %.sroa.016.1316, %.lr.ph334 ], [ %.sroa.016.1, %bb.aw ]
  %.1.lcssa = phi i32 [ %spec.store.select, %.lr.ph334 ], [ %.2, %bb.aw ]
  %.sroa.9.1.lcssa = phi i32 [ %.sroa.9.1317, %.lr.ph334 ], [ %.sroa.9.1, %bb.aw ] ; 2 uses
  %.sroa.0.1272.le = fptosi float %.sroa.016.1.lcssa to i32 ; 2 uses
  %i.nu = shufflevector <2 x i32> %i.nc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.nv = insertelement <4 x i32> %i.nu, i32 %.sroa.0.1272.le, i64 2
  %i.nw = insertelement <4 x i32> %i.nv, i32 %.sroa.9.1.lcssa, i64 3 ; 3 uses
  %i.nx = icmp eq <4 x i32> %i.my, %i.nw
  %i.ny = freeze <4 x i1> %i.nx
  %i.nz = bitcast <4 x i1> %i.ny to i4
  %i.oa = icmp eq i4 %i.nz, -1
  br i1 %i.oa, label %_path_falloff.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge322
  %i.ob = load i32, ptr %4, align 4, !tbaa !28    ; 2 uses
  %i.oc = insertelement <2 x i32> poison, i32 %.sroa.0.1272.le, i64 0
  %i.od = insertelement <2 x i32> %i.oc, i32 %.sroa.9.1.lcssa, i64 1
  %i.oe = sub nsw <2 x i32> %i.od, %i.nc
  %i.of = sitofp <2 x i32> %i.oe to <2 x float>   ; 5 uses
  %foldExtExtBinop = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.of, %i.of
  %foldExtExtBinop447 = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.of, %i.of
  %shift = shufflevector <2 x float> %foldExtExtBinop447, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop449 = fadd reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %shift
  %i.og = extractelement <2 x float> %foldExtExtBinop449, i64 0
  %i.oh = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.og)
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, 1.000000e+00
  %i.oj = fptosi float %i.oi to i32               ; 3 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  %i.ol = shufflevector <4 x i32> %i.nu, <4 x i32> %i.nw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br i1 %i.ok, label %.lr.ph.i, label %_path_falloff.exit

.lr.ph.i:                                         ; preds = %bb.ax
  %i.om = load i32, ptr %7, align 4, !tbaa !28
  %i.on = load i32, ptr %6, align 4, !tbaa !28
  %i.oo = uitofp nneg i32 %i.oj to float          ; 2 uses
  %i.op = insertelement <2 x i32> poison, i32 %i.on, i64 0
  %i.oq = insertelement <2 x i32> %i.op, i32 %i.om, i64 1
  %i.or = sub <2 x i32> %i.nc, %i.oq
  %i.os = sext i32 %i.ob to i64
  %i.ot = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = shufflevector <4 x i32> %i.nu, <4 x i32> %i.nw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ow = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ou
  %i.ox = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.oo
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bc, %.lr.ph.i
  %.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.py, %bb.bc ] ; 2 uses
  %i.oy = uitofp nneg i32 %.06.i to float         ; 2 uses
  %i.oz = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.pa, %i.of
  %i.pc = fmul reassoc nsz arcp contract afn <2 x float> %i.pb, %i.ow
  %i.pd = fptosi <2 x float> %i.pc to <2 x i32>
  %i.pe = add <2 x i32> %i.or, %i.pd              ; 2 uses
  %i.pf = fmul reassoc nsz arcp contract afn float %i.oy, %i.ox
  %i.pg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pf ; 3 uses
  %i.ph = extractelement <2 x i32> %i.pe, i64 1   ; 2 uses
  %i.pi = mul nsw i32 %i.ph, %i.ob
  %i.pj = extractelement <2 x i32> %i.pe, i64 0   ; 2 uses
  %i.pk = add nsw i32 %i.pi, %i.pj
  %i.pl = sext i32 %i.pk to i64                   ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.pl ; 3 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !11, !alias.scope !150
  %i.po = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pn, float %i.pg)
  store float %i.po, ptr %i.pm, align 4, !tbaa !11, !alias.scope !150
  %i.pp = icmp sgt i32 %i.pj, 0
  br i1 %i.pp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.pq = getelementptr i8, ptr %i.pm, i64 -4     ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !11, !alias.scope !150
  %i.ps = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pr, float %i.pg)
  store float %i.ps, ptr %i.pq, align 4, !tbaa !11, !alias.scope !150
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.pt = icmp sgt i32 %i.ph, 0
  br i1 %i.pt, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pu = sub nsw i64 %i.pl, %i.os
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.pu ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !11, !alias.scope !150
  %i.px = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pw, float %i.pg)
  store float %i.px, ptr %i.pv, align 4, !tbaa !11, !alias.scope !150
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.py = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.py, %i.oj
  br i1 %exitcond.not.i, label %_path_falloff.exit, label %bb.ay

_path_falloff.exit:                               ; preds = %bb.bc, %bb.ax, %._crit_edge322
  %i.pz = phi <4 x i32> [ %i.my, %._crit_edge322 ], [ %i.ol, %bb.ax ], [ %i.ov, %bb.bc ]
  %indvars.iv.next358 = add nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge335, label %.lr.ph334

bb.bd:                                            ; preds = %._crit_edge335
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.qb = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #25 ; 0 uses
  %i.qc = load i64, ptr %9, align 8, !tbaa !132
  %i.qd = add nsw i64 %i.qc, -1290608000
  %i.qe = sitofp reassoc nsz arcp contract afn i64 %i.qd to double
  %i.qf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !134
  %i.qh = sitofp reassoc nsz arcp contract afn i64 %i.qg to double
  %i.qi = fmul reassoc nnan nsz arcp contract afn double %i.qh, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %15 = fsub reassoc nsz arcp contract afn double %i.qe, %.2275
  %16 = fadd reassoc nsz arcp contract afn double %15, %i.qi
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.qa, double noundef %16) #25
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge335
  call void @free(ptr noundef %i.ao) #25
  call void @free(ptr noundef %i.ap) #25
  %i.qj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.qk = and i32 %i.qj, 4112
  %or.cond254.not = icmp eq i32 %i.qk, 4112
  br i1 %or.cond254.not, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.qm = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #25 ; 0 uses
  %i.qn = load i64, ptr %8, align 8, !tbaa !132
  %i.qo = add nsw i64 %i.qn, -1290608000
  %i.qp = sitofp reassoc nsz arcp contract afn i64 %i.qo to double
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !134
  %i.qs = sitofp reassoc nsz arcp contract afn i64 %i.qr to double
  %i.qt = fmul reassoc nnan nsz arcp contract afn double %i.qs, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %17 = fsub reassoc nsz arcp contract afn double %i.qp, %.0276
  %18 = fadd reassoc nsz arcp contract afn double %17, %i.qt
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.ql, double noundef %18) #25
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.n, %bb.d
  %.1193 = phi i32 [ 0, %bb.d ], [ 0, %bb.n ], [ 1, %bb.bf ], [ 1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.a, %bb.bg
  %.2194 = phi i32 [ %.1193, %bb.bg ], [ 0, %bb.a ]
  ret i32 %.2194
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_path_get_mask_roi(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.cs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.h = load i64, ptr %10, align 8, !tbaa !132
  %i.i = add nsw i64 %i.h, -1290608000
  %i.j = sitofp reassoc nsz arcp contract afn i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !134
  %i.m = sitofp reassoc nsz arcp contract afn i64 %i.l to double
  %i.n = fmul reassoc nnan nsz arcp contract afn double %i.m, f0x3EB0C6F7A0B5ED8D
  %i.o = fadd reassoc nsz arcp contract afn double %i.n, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.p = phi reassoc nsz arcp contract afn double [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.q = load <2 x i32>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !28 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !153 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i32 0, ptr %i.e, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.y = load i32, ptr %i.x, align 16, !tbaa !50
  %i.z = sitofp reassoc nsz arcp contract afn i32 %i.y to double
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !137
  %i.ac = call fastcc i32 @_path_get_pts_border(ptr noundef %i.w, ptr noundef %2, double noundef %i.z, i32 noundef 3, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i32 noundef 0)
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = load i32, ptr %i.d, align 4             ; 10 uses
  %i.af = icmp slt i32 %i.ae, 3
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !135
  call void @free(ptr noundef %i.ag) #25
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !135
  call void @free(ptr noundef %i.ah) #25
  br label %bb.cr

bb.e:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aj = and i32 %i.ai, 4112
  %or.cond344.not = icmp eq i32 %i.aj, 4112
  br i1 %or.cond344.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.al = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #25 ; 0 uses
  %i.am = load i64, ptr %9, align 8, !tbaa !132
  %i.an = add nsw i64 %i.am, -1290608000
  %i.ao = sitofp reassoc nsz arcp contract afn i64 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.ar = sitofp reassoc nsz arcp contract afn i64 %i.aq to double
  %i.as = fmul reassoc nnan nsz arcp contract afn double %i.ar, f0x3EB0C6F7A0B5ED8D
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.ao ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.au = fsub reassoc nsz arcp contract afn double %i.at, %i.p
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.ak, double noundef %i.au) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0381 = phi nsz double [ %i.p, %bb.e ], [ %i.at, %bb.f ] ; 4 uses
  store double %.0381, ptr %i.a, align 8, !tbaa !154
  %i.av = load ptr, ptr %2, align 8, !tbaa !20
  %i.aw = call i32 @g_list_length(ptr noundef %i.av) #25 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, 3                    ; 12 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !28  ; 6 uses
  %i.az = icmp slt i32 %i.ax, %i.ay               ; 4 uses
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.bb = sitofp <2 x i32> %i.q to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0276414 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bq, %bb.l ] ; 2 uses
  %i.be = shl nsw i32 %.0276414, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !11 ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = fcmp reassoc nsz arcp contract afn oeq float %i.bi, f0xFF7FFFFF
  br i1 %i.bj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn oeq float %i.bk, f0xFF7FFFFF
  br i1 %i.bl, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bk, -1.000000e+00
  %i.bn = fptosi float %i.bm to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bd
  %i.bp = fsub reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bb
  store <2 x float> %i.bp, ptr %i.bg, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1277.ph = phi i32 [ %i.bn, %bb.j ], [ %.0276414, %bb.k ]
  %i.bq = add nsw i32 %.1277.ph, 1                ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.ay
  br i1 %i.br, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.i, %bb.g
  %i.bs = icmp slt i32 %i.ax, %i.ae               ; 3 uses
  br i1 %i.bs, label %.lr.ph419, label %._crit_edge432

.lr.ph419:                                        ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !135 ; 8 uses
  %i.bu = sitofp <2 x i32> %i.q to <2 x float>    ; 7 uses
  %i.bv = sext i32 %i.ax to i64                   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 6 uses
  %i.bw = sub nsw i64 %wide.trip.count, %i.bv     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph419
  %i.bx = xor i64 %i.bv, -1
  %i.by = add nsw i64 %i.bx, %wide.trip.count     ; 2 uses
  %i.bz = shl nsw i64 %i.bv, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bz ; 2 uses
  %mul.result = shl nsw i64 %i.by, 3              ; 2 uses
  %mul.overflow = icmp ugt i64 %i.by, 2305843009213693951
  %i.ca = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.cb = icmp ult ptr %i.ca, %scevgep
  %i.cc = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep623 = getelementptr i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cd = getelementptr i8, ptr %scevgep623, i64 %mul.result
  %i.ce = icmp ult ptr %i.cd, %scevgep623
  %i.cf = or i1 %i.ce, %mul.overflow
  %i.cg = or i1 %i.cb, %i.cf
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.ch = add nsw i64 %n.vec, %i.bv
  %broadcast.splat = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat625 = shufflevector <2 x float> %i.bu, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert626 = insertelement <8 x float> poison, float %i.u, i64 0
  %broadcast.splat627 = shufflevector <8 x float> %broadcast.splatinsert626, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_0
begin_hunk_1_@_path_get_mask_roi:bb.a
  %i.acq = getelementptr [4 x i8], ptr %.pre533.pre, i64 %i.acp ; 2 uses
  %i.acr = getelementptr i8, ptr %i.acq, i64 4
  %.sroa.031.1 = load float, ptr %i.acq, align 4, !tbaa !11 ; 2 uses
  %.sroa.6.1 = load float, ptr %i.acr, align 4, !tbaa !11 ; 2 uses
  %.sroa.8.1 = fptosi float %.sroa.6.1 to i32     ; 2 uses
  %i.acs = fcmp reassoc nsz arcp contract afn oeq float %.sroa.031.1, f0xFF7FFFFF
  br i1 %i.acs, label %bb.ca, label %._crit_edge465

._crit_edge465:                                   ; preds = %bb.ca, %.lr.ph476
  %.sroa.031.1.lcssa = phi float [ %.sroa.031.1458, %.lr.ph476 ], [ %.sroa.031.1, %bb.ca ]
  %.1.lcssa = phi i32 [ %spec.store.select, %.lr.ph476 ], [ %.2, %bb.ca ]
  %.sroa.8.1.lcssa = phi i32 [ %.sroa.8.1460, %.lr.ph476 ], [ %.sroa.8.1, %bb.ca ] ; 3 uses
  %.sroa.032.1.le = fptosi float %.sroa.031.1.lcssa to i32 ; 3 uses
  %.not337 = icmp eq i32 %.sroa.029.0471, %i.abv
  %.not338 = icmp eq i32 %.sroa.530.0470, %i.aca
  %or.cond357 = select i1 %.not337, i1 %.not338, i1 false
  %.not339 = icmp eq i32 %.sroa.0.0473, %.sroa.032.1.le
  %or.cond358 = select i1 %or.cond357, i1 %.not339, i1 false
  %.not340 = icmp eq i32 %.sroa.5.0472, %.sroa.8.1.lcssa
  %or.cond359 = select i1 %or.cond358, i1 %.not340, i1 false
  br i1 %or.cond359, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge465
  %i.act = sext i32 %.0258469 to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.act ; 4 uses
  store i32 %i.abv, ptr %i.acu, align 4, !tbaa !28
  %i.acv = getelementptr i8, ptr %i.acu, i64 4
  store i32 %i.aca, ptr %i.acv, align 4, !tbaa !28
  %i.acw = getelementptr i8, ptr %i.acu, i64 8
  store i32 %.sroa.032.1.le, ptr %i.acw, align 4, !tbaa !28
  %i.acx = getelementptr i8, ptr %i.acu, i64 12
  store i32 %.sroa.8.1.lcssa, ptr %i.acx, align 4, !tbaa !28
  %i.acy = add nsw i32 %.0258469, 4
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge465, %bb.cb
  %.1259 = phi i32 [ %i.acy, %bb.cb ], [ %.0258469, %._crit_edge465 ] ; 3 uses
  %.sroa.530.1 = phi i32 [ %i.aca, %bb.cb ], [ %.sroa.530.0470, %._crit_edge465 ]
  %.sroa.029.1 = phi i32 [ %i.abv, %bb.cb ], [ %.sroa.029.0471, %._crit_edge465 ]
  %.sroa.5.1 = phi i32 [ %.sroa.8.1.lcssa, %bb.cb ], [ %.sroa.5.0472, %._crit_edge465 ]
  %.sroa.0.1 = phi i32 [ %.sroa.032.1.le, %bb.cb ], [ %.sroa.0.0473, %._crit_edge465 ]
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.preheader, label %.lr.ph476

._crit_edge484:                                   ; preds = %_path_falloff_roi.exit, %.preheader404, %.preheader
  call void @free(ptr noundef %i.abj) #25
  %i.acz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ada = and i32 %i.acz, 4112
  %or.cond360.not = icmp eq i32 %i.ada, 4112
  br i1 %or.cond360.not, label %bb.co, label %bb.cp

bb.cd:                                            ; preds = %.lr.ph483, %_path_falloff_roi.exit
  %indvars.iv529 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next530, %_path_falloff_roi.exit ] ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %indvars.iv529 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load <2 x i32>, ptr %i.adb, align 16, !tbaa !28 ; 2 uses
  %i.ade = load <2 x i32>, ptr %i.adc, align 8, !tbaa !28
  %i.adf = sub nsw <2 x i32> %i.ade, %i.add       ; 3 uses
  %i.adg = extractelement <2 x i32> %i.adf, i64 0 ; 3 uses
  %i.adh = mul nsw i32 %i.adg, %i.adg
  %i.adi = extractelement <2 x i32> %i.adf, i64 1 ; 3 uses
  %i.adj = mul nsw i32 %i.adi, %i.adi
  %i.adk = add nuw nsw i32 %i.adj, %i.adh
  %i.adl = uitofp nneg i32 %i.adk to float
  %i.adm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.adl)
  %i.adn = fadd reassoc nsz arcp contract afn float %i.adm, 1.000000e+00
  %i.ado = fptosi float %i.adn to i32             ; 3 uses
  %.inv.i = icmp sgt i32 %i.adg, -1
  %i.adp = select i1 %.inv.i, i32 1, i32 -1       ; 2 uses
  %.inv89.i = icmp sgt i32 %i.adi, -1
  %i.adq = select i1 %.inv89.i, i32 1, i32 -1     ; 2 uses
  %i.adr = icmp sgt i32 %i.ado, 0
  br i1 %i.adr, label %.lr.ph.i373, label %_path_falloff_roi.exit

.lr.ph.i373:                                      ; preds = %bb.cd
  %i.ads = sitofp <2 x i32> %i.adf to <2 x float>
  %i.adt = mul nsw i32 %i.adq, %i.abm
  %i.adu = uitofp nneg i32 %i.ado to float        ; 2 uses
  %i.adv = sext i32 %i.adp to i64
  %i.adw = sext i32 %i.adt to i64
  %i.adx = insertelement <2 x float> poison, float %i.adu, i64 0
  %i.ady = shufflevector <2 x float> %i.adx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adz = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ady
  %i.aea = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.adu
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cn, %.lr.ph.i373
  %.05.i = phi i32 [ 0, %.lr.ph.i373 ], [ %i.afp, %bb.cn ] ; 2 uses
  %i.aeb = uitofp nneg i32 %.05.i to float        ; 2 uses
  %i.aec = insertelement <2 x float> poison, float %i.aeb, i64 0
  %i.aed = shufflevector <2 x float> %i.aec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aee = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.aed, %i.ads
  %i.aef = fmul reassoc nsz arcp contract afn <2 x float> %i.aee, %i.adz
  %i.aeg = fptosi <2 x float> %i.aef to <2 x i32>
  %i.aeh = add nsw <2 x i32> %i.add, %i.aeg       ; 3 uses
  %i.aei = fmul reassoc nsz arcp contract afn float %i.aeb, %i.aea
  %i.aej = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aei ; 6 uses
  %i.aek = extractelement <2 x i32> %i.aeh, i64 1 ; 5 uses
  %i.ael = sext i32 %i.aek to i64
  %i.aem = mul nsw i64 %i.ael, %i.abn
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aem
  %i.aeo = extractelement <2 x i32> %i.aeh, i64 0 ; 4 uses
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aep ; 4 uses
  %i.aer = icmp sgt i32 %i.aeo, -1                ; 2 uses
  br i1 %i.aer, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.aes = icmp slt <2 x i32> %i.aeh, %i.s        ; 2 uses
  %i.aet = icmp sgt i32 %i.aek, -1
  %i.aeu = extractelement <2 x i1> %i.aes, i64 1
  %i.aev = and i1 %i.aet, %i.aeu
  %i.aew = extractelement <2 x i1> %i.aes, i64 0
  %or.cond90.i = select i1 %i.aew, i1 %i.aev, i1 false
  br i1 %or.cond90.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.aex = load float, ptr %i.aeq, align 4, !tbaa !11 ; 2 uses
  %i.aey = fcmp reassoc nsz arcp contract afn ogt float %i.aex, %i.aej
  %..i = select reassoc nsz arcp contract afn i1 %i.aey, float %i.aex, float %i.aej
  store float %..i, ptr %i.aeq, align 4, !tbaa !11
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.aez = add nsw i32 %i.aeo, %i.adp             ; 2 uses
  %i.afa = icmp sgt i32 %i.aez, -1
  br i1 %i.afa, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.afb = icmp slt i32 %i.aez, %i.abm
  %i.afc = icmp sgt i32 %i.aek, -1
  %i.afd = icmp slt i32 %i.aek, %i.abp
  %i.afe = and i1 %i.afc, %i.afd
  %or.cond91.i = select i1 %i.afb, i1 %i.afe, i1 false
  br i1 %or.cond91.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aff = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.adv ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !11 ; 2 uses
  %i.afh = fcmp reassoc nsz arcp contract afn ogt float %i.afg, %i.aej
  %.92.i = select reassoc nsz arcp contract afn i1 %i.afh, float %i.afg, float %i.aej
  store float %.92.i, ptr %i.aff, align 4, !tbaa !11
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.afi = icmp slt i32 %i.aeo, %i.abm
  %or.cond93.i = and i1 %i.aer, %i.afi
  br i1 %or.cond93.i, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.afj = add nsw i32 %i.aek, %i.adq             ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, -1
  %i.afl = icmp slt i32 %i.afj, %i.abp
  %or.cond94.i = and i1 %i.afk, %i.afl
  br i1 %or.cond94.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.afm = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.adw ; 2 uses
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !11 ; 2 uses
  %i.afo = fcmp reassoc nsz arcp contract afn ogt float %i.afn, %i.aej
  %.95.i = select reassoc nsz arcp contract afn i1 %i.afo, float %i.afn, float %i.aej
  store float %.95.i, ptr %i.afm, align 4, !tbaa !11
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.afp = add nuw nsw i32 %.05.i, 1              ; 2 uses
  %exitcond.not.i374 = icmp eq i32 %i.afp, %i.ado
  br i1 %exitcond.not.i374, label %_path_falloff_roi.exit, label %bb.ce

_path_falloff_roi.exit:                           ; preds = %bb.cn, %bb.cd
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 4 ; 2 uses
  %i.afq = icmp samesign ult i64 %indvars.iv.next530, %i.abo
  br i1 %i.afq, label %bb.cd, label %._crit_edge484

bb.co:                                            ; preds = %._crit_edge484
  %i.afr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.afs = call reassoc nsz arcp contract afn fastcc double @dt_get_lap_time(ptr noundef %i.a)
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull %i.afr, double noundef %i.afs) #25
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge484, %bb.by
  call void @free(ptr noundef %i.hk) #25
  call void @free(ptr noundef %.pre533.pre) #25
  %i.aft = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.afu = and i32 %i.aft, 4112
  %or.cond361.not = icmp eq i32 %i.afu, 4112
  br i1 %or.cond361.not, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.afv = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.afw = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #25 ; 0 uses
  %i.afx = load i64, ptr %5, align 8, !tbaa !132
  %i.afy = add nsw i64 %i.afx, -1290608000
  %i.afz = sitofp reassoc nsz arcp contract afn i64 %i.afy to double
  %i.aga = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !134
  %i.agc = sitofp reassoc nsz arcp contract afn i64 %i.agb to double
  %i.agd = fmul reassoc nnan nsz arcp contract afn double %i.agc, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %11 = fsub reassoc nsz arcp contract afn double %i.afz, %.0381
  %12 = fadd reassoc nsz arcp contract afn double %11, %i.agd
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.40, ptr noundef nonnull %i.afv, double noundef %12) #25
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %.thread390, %.thread392, %bb.w, %bb.d
  %.5 = phi i32 [ 0, %bb.d ], [ 1, %bb.w ], [ 0, %.thread390 ], [ 0, %.thread392 ], [ 1, %bb.cq ], [ 1, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %bb.cr
  %.6 = phi i32 [ %.5, %bb.cr ], [ 0, %bb.a ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_path_get_area(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #3 {
bb.a:
  %i.a = tail call fastcc i32 @_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_path_get_source_area(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #3 {
bb.a:
  %i.a = tail call fastcc i32 @_get_area(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_path_events_mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double %3, i32 %4, float noundef %5, ptr noundef %6, i32 %7, ptr noundef %8, i32 noundef %9) #3 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 5 uses
  %i.c = alloca [2 x float], align 8              ; 6 uses
  %i.d = alloca [2 x float], align 4              ; 6 uses
  %i.e = alloca [2 x float], align 8              ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca float, align 4                    ; 4 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !166
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1432
  %i.m = load double, ptr %i.l, align 8, !tbaa !167
  %i.n = fmul reassoc nsz arcp contract afn double %i.m, 7.000000e+00
  %i.o = fpext reassoc nsz arcp contract afn float %5 to double
  %i.p = fdiv reassoc nsz arcp contract afn double %i.n, %i.o
  %i.q = fptrunc reassoc nsz arcp contract afn double %i.p to float ; 21 uses
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %8, align 8, !tbaa !32
  %i.s = tail call ptr @g_list_nth_data(ptr noundef %i.r, i32 noundef %9) #25 ; 7 uses
  %.not360 = icmp eq ptr %i.s, null
  br i1 %.not360, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !65  ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.x = load float, ptr %i.w, align 8, !tbaa !174 ; 2 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.x, 0.000000e+00
  %i.z = select reassoc nsz arcp contract afn i1 %i.y, float %i.x, float 1.000000e+00
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 156
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !182 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = uitofp nneg i32 %i.ab to float
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.af = load i32, ptr %i.ae, align 16, !tbaa !183
  %i.ag = sitofp reassoc nsz arcp contract afn i32 %i.af to float
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  br label %dt_masks_get_image_size.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 2760
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !184 ; 3 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 156
  %i.am = load i32, ptr %i.al, align 4, !tbaa !182 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !183
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to float
  %i.ar = uitofp nneg i32 %i.am to float
  %i.as = insertelement <2 x float> poison, float %i.z, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.aq, i64 1
  %i.aw = fdiv reassoc nsz arcp contract afn <2 x float> %i.av, %i.at
  br label %dt_masks_get_image_size.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  %i.ay = load <2 x i32>, ptr %i.ax, align 8, !tbaa !28
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>
  br label %dt_masks_get_image_size.exit

dt_masks_get_image_size.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.ba = phi <2 x float> [ %i.ai, %bb.d ], [ %i.az, %bb.h ], [ %i.aw, %bb.g ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.bc = load <2 x i32>, ptr %i.bb, align 16, !tbaa !28
  %i.bd = sitofp <2 x i32> %i.bc to <2 x float>   ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 132 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !185
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.i, label %bb.q

bb.i:                                             ; preds = %dt_masks_get_image_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bh = extractelement <2 x float> %i.ba, i64 0
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %1 ; 2 uses
  store float %i.bi, ptr %i.a, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bk = extractelement <2 x float> %i.ba, i64 1
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, %2 ; 2 uses
  store float %i.bl, ptr %i.bj, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 172
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %.not375 = icmp eq i32 %i.bn, 0
  br i1 %.not375, label %g_list_shorter_than.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %.047.i = load ptr, ptr %6, align 8, !tbaa !27  ; 2 uses
  %.not6.i = icmp eq ptr %.047.i, null
  br i1 %.not6.i, label %g_list_shorter_than.exit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %.047.i, i64 8
  %.047.i.1 = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %.not6.i.1 = icmp eq ptr %.047.i.1, null
  br i1 %.not6.i.1, label %g_list_shorter_than.exit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.047.i.1, i64 8
  %.047.i.2 = load ptr, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %.not6.i.2 = icmp eq ptr %.047.i.2, null
  br i1 %.not6.i.2, label %g_list_shorter_than.exit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bq = getelementptr inbounds nuw i8, ptr %.047.i.2, i64 8
  %.047.i.3 = load ptr, ptr %i.bq, align 8, !tbaa !27
  %.not6.i.3 = icmp eq ptr %.047.i.3, null
  br i1 %.not6.i.3, label %g_list_shorter_than.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.3
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !49  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bi, %i.bt ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %i.bu, %i.q
  br i1 %i.bv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bw = fneg reassoc nsz arcp contract afn float %i.q ; 2 uses
  %i.bx = fcmp reassoc nsz arcp contract afn ogt float %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !11
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bl, %i.bz ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.ca, %i.q
  %i.cc = fcmp reassoc nsz arcp contract afn ogt float %i.ca, %i.bw
  %or.cond = and i1 %i.cb, %i.cc
  br i1 %or.cond, label %g_list_shorter_than.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br label %g_list_shorter_than.exit.sink.split

g_list_shorter_than.exit.sink.split:              ; preds = %bb.l, %bb.m
  %.sink = phi i32 [ 0, %bb.m ], [ 1, %bb.l ]
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 180
  store i32 %.sink, ptr %i.cd, align 4, !tbaa !186
  br label %g_list_shorter_than.exit

g_list_shorter_than.exit:                         ; preds = %g_list_shorter_than.exit.sink.split, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.i
  %i.ce = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i64 noundef 1) #25 ; 0 uses
  %i.cf = load ptr, ptr %6, align 8, !tbaa !20
  %i.cg = load i32, ptr %i.be, align 4, !tbaa !185
  %i.ch = call ptr @g_list_nth_data(ptr noundef %i.cf, i32 noundef %i.cg) #25 ; 5 uses
  %i.ci = load <2 x float>, ptr %i.a, align 8, !tbaa !11
  %i.cj = fdiv reassoc nsz arcp contract afn <2 x float> %i.ci, %i.bd ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !187
  %i.cm = and i32 %i.cl, 8
end_hunk_1
begin_hunk_2_@_path_events_post_expose:bb.a
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_path_bounding_box.exit, label %.lr.ph107.i.i

_path_bounding_box.exit:                          ; preds = %.lr.ph107.i.i, %.lr.ph107.i.i.prol.loopexit
  %.lcssa325 = phi <2 x float> [ %.lcssa325.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.kk, %.lr.ph107.i.i ] ; 2 uses
  %.lcssa = phi <2 x float> [ %.lcssa.unr, %.lr.ph107.i.i.prol.loopexit ], [ %i.kl, %.lr.ph107.i.i ]
  %i.km = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa, splat (float 4.000000e+00)
  %i.kn = fsub reassoc nsz arcp contract afn <2 x float> %i.km, %.lcssa325
  %i.ko = fptosi <2 x float> %i.kn to <2 x i32>
  %i.kp = fadd reassoc nsz arcp contract afn <2 x float> %.lcssa325, splat (float -2.000000e+00)
  %i.kq = fptosi <2 x float> %i.kp to <2 x i32>
  %i.kr = sitofp <2 x i32> %i.kq to <2 x float>
  %i.ks = sitofp <2 x i32> %i.ko to <2 x float>
  %i.kt = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ks, splat (float 5.000000e-01)
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, %i.kr ; 2 uses
  %i.kv = load i32, ptr %i.k, align 8, !tbaa !48
  %i.kw = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.kx = extractelement <2 x float> %i.ku, i64 0
  %i.ky = extractelement <2 x float> %i.ku, i64 1
  call void @dt_masks_closest_point(i32 noundef %i.kv, i32 noundef %i.m, ptr noundef %i.kw, float noundef %i.kx, float noundef %i.ky, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #25
  %i.kz = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.la = load ptr, ptr %i.iu, align 8, !tbaa !33
  %i.lb = load float, ptr %i.e, align 4, !tbaa !11
  %i.lc = load float, ptr %i.f, align 4, !tbaa !11
  call void @dt_masks_closest_point(i32 noundef %i.kz, i32 noundef %i.m, ptr noundef %i.la, float noundef %i.lb, float noundef %i.lc, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #25
  %i.ld = load float, ptr %i.g, align 4, !tbaa !11
  %i.le = load float, ptr %i.h, align 4, !tbaa !11
  %i.lf = load float, ptr %i.e, align 4, !tbaa !11
  %i.lg = load float, ptr %i.f, align 4, !tbaa !11
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.ld, float noundef %i.le, float noundef %i.lf, float noundef %i.lg, float noundef %1, i32 noundef 0) #25
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #25
  %i.lh = load ptr, ptr %i.iu, align 8, !tbaa !33
  %i.li = mul nuw nsw i32 %4, 6
  %i.lj = zext nneg i32 %i.li to i64              ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = load <2 x float>, ptr %i.lk, align 4, !tbaa !11
  %i.lm = fpext <2 x float> %i.ll to <2 x double> ; 2 uses
  %i.ln = extractelement <2 x double> %i.lm, i64 0
  %i.lo = extractelement <2 x double> %i.lm, i64 1
  call void @cairo_move_to(ptr noundef %0, double noundef %i.ln, double noundef %i.lo) #25
  %i.lp = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.lq = icmp slt i32 %i.m, %i.lp
  br i1 %i.lq, label %.lr.ph277, label %._crit_edge278

._crit_edge278:                                   ; preds = %.lr.ph277, %_path_bounding_box.exit
  %i.lr = load ptr, ptr %i.iu, align 8, !tbaa !33
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lj
  %i.lt = load <2 x float>, ptr %i.ls, align 4, !tbaa !11
  %i.lu = fpext <2 x float> %i.lt to <2 x double> ; 2 uses
  %i.lv = extractelement <2 x double> %i.lu, i64 0
  %i.lw = extractelement <2 x double> %i.lu, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.lv, double noundef %i.lw) #25
  %i.lx = load i32, ptr %i.bv, align 4, !tbaa !202
  %i.ly = icmp eq i32 %i.lx, %3
  br i1 %i.ly, label %bb.an, label %bb.ap

.lr.ph277:                                        ; preds = %_path_bounding_box.exit, %.lr.ph277
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.lr.ph277 ], [ %i.ix, %_path_bounding_box.exit ] ; 2 uses
  %i.lz = load ptr, ptr %i.iu, align 8, !tbaa !33
  %.idx315 = shl nuw nsw i64 %indvars.iv291, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx315
  %i.mb = load <2 x float>, ptr %i.ma, align 4, !tbaa !11
  %i.mc = fpext <2 x float> %i.mb to <2 x double> ; 2 uses
  %i.md = extractelement <2 x double> %i.mc, i64 0
  %i.me = extractelement <2 x double> %i.mc, i64 1
  call void @cairo_line_to(ptr noundef %0, double noundef %i.md, double noundef %i.me) #25
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %i.mf = load i32, ptr %i.ir, align 8, !tbaa !36
  %i.mg = trunc nuw i64 %indvars.iv.next292 to i32
  %i.mh = icmp sgt i32 %i.mf, %i.mg
  br i1 %i.mh, label %.lr.ph277, label %._crit_edge278

bb.an:                                            ; preds = %._crit_edge278
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !26
  %.not250 = icmp eq i32 %i.mj, 0
  br i1 %.not250, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !197
  %i.mm = icmp ne i32 %i.ml, 0
  %i.mn = zext i1 %i.mm to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge278
  %i.mo = phi i32 [ 0, %._crit_edge278 ], [ 1, %bb.an ], [ %i.mn, %bb.ao ]
  call void @dt_masks_line_stroke(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.mo, float noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.b, %bb.ap, %.thread, %bb.am, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #6

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #7

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @_path_init_ctrl_points(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call i32 @g_list_length(ptr noundef %i.a) #25 ; 2 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.l
  %.076.in = phi ptr [ %i.cf, %bb.l ], [ %0, %bb.a ]
  %.04775 = phi i32 [ %i.cg, %bb.l ], [ 0, %bb.a ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !27 ; 5 uses
  %i.d = load ptr, ptr %.076, align 8, !tbaa !31  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !194
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.076, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !233  ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %g_list_prev_wraparound.exit, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit:                      ; preds = %bb.b
  %i.j = tail call ptr @g_list_last(ptr noundef nonnull %.076) #25 ; 2 uses
  %.not.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i49, label %bb.c, label %g_list_prev_wraparound.exit.thread

g_list_prev_wraparound.exit.thread:               ; preds = %bb.b, %g_list_prev_wraparound.exit
  %i.k = phi ptr [ %i.j, %g_list_prev_wraparound.exit ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !233  ; 2 uses
  %.not6.i50 = icmp eq ptr %i.m, null
  br i1 %.not6.i50, label %bb.c, label %g_list_next_wraparound.exit.thread

bb.c:                                             ; preds = %g_list_prev_wraparound.exit.thread, %g_list_prev_wraparound.exit
  %i.n = phi ptr [ %i.k, %g_list_prev_wraparound.exit.thread ], [ null, %g_list_prev_wraparound.exit ] ; 2 uses
  %i.o = tail call ptr @g_list_last(ptr noundef %i.n) #25
  br label %g_list_next_wraparound.exit.thread

g_list_next_wraparound.exit.thread:               ; preds = %bb.c, %g_list_prev_wraparound.exit.thread
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.k, %g_list_prev_wraparound.exit.thread ]
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.m, %g_list_prev_wraparound.exit.thread ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 2 uses
  %.not6.i53 = icmp eq ptr %i.t, null
  %spec.select66 = select i1 %.not6.i53, ptr %i.r, ptr %i.t ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select66, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not6.i55 = icmp eq ptr %i.v, null
  %spec.select = select i1 %.not6.i55, ptr %i.r, ptr %i.v
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !31   ; 4 uses
  %i.y = load ptr, ptr %spec.select66, align 8, !tbaa !31 ; 4 uses
  %i.z = load ptr, ptr %spec.select, align 8, !tbaa !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !11
  %i.ac = load <2 x float>, ptr %i.x, align 4, !tbaa !11 ; 3 uses
  %i.ad = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.y, align 4, !tbaa !11
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, 6.000000e+00
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ag, %i.ab
  %i.ai = extractelement <2 x float> %i.ad, i64 1
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ah, %i.ai
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, f0x3E2AAAAB
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, splat (float 6.000000e+00)
  %i.am = fadd reassoc nsz arcp contract afn <2 x float> %i.al, %i.ac
  %i.an = fsub reassoc nsz arcp contract afn <2 x float> %i.am, %i.ae
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3E2AAAAB)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %i.ar = fcmp reassoc nsz arcp contract afn oeq float %i.aq, -1.000000e+00
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %g_list_next_wraparound.exit.thread
  %i.as = extractelement <2 x float> %i.ac, i64 0
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 6.000000e+00
  %i.au = load float, ptr %i.w, align 4, !tbaa !11
  %i.av = extractelement <2 x float> %i.ad, i64 0
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.at
  %1 = fsub reassoc nsz arcp contract afn float %i.aw, %i.au
  %i.ax = fmul reassoc nsz arcp contract afn float %1, f0x3E2AAAAB
  store float %i.ax, ptr %i.ap, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %g_list_next_wraparound.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11
  %i.ba = fcmp reassoc nsz arcp contract afn oeq float %i.az, -1.000000e+00
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ak, ptr %i.ay, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> %i.ao, ptr %i.bb, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = load <2 x float>, ptr %i.x, align 4, !tbaa !11
  %i.bf = load <2 x float>, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.bg = load <2 x float>, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, splat (float 6.000000e+00)
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.bh, %i.be
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bg
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, splat (float f0x3E2AAAAB)
  %i.bl = extractelement <2 x float> %i.bg, i64 1
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 6.000000e+00
  %i.bn = extractelement <2 x float> %i.bf, i64 1
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bd
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3E2AAAAB
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !11
  %i.bt = fcmp reassoc nsz arcp contract afn oeq float %i.bs, -1.000000e+00
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = extractelement <2 x float> %i.bg, i64 0
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 6.000000e+00
  %i.bw = extractelement <2 x float> %i.bf, i64 0
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bv, %i.bw
  %i.by = load float, ptr %i.z, align 4, !tbaa !11
  %i.bz = fsub reassoc nsz arcp contract afn float %i.bx, %i.by
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, f0x3E2AAAAB
  store float %i.ca, ptr %i.br, align 4, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !11
  %i.cd = fcmp reassoc nsz arcp contract afn oeq float %i.cc, -1.000000e+00
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.bq, ptr %i.cb, align 4, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x float> %i.bk, ptr %i.ce, align 4, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.cg = add nuw i32 %.04775, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.l, %bb.a
  ret void
}

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dt_masks_point_in_form_exact(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_path_get_pts_border(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef range(i32 0, 4) %3, ptr noundef %4, ptr nofree noundef captures(none) initializes((0, 8)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(none) %8, i32 noundef %9) unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %14 = alloca %struct.timeval, align 8           ; 5 uses
  %15 = alloca %struct.timeval, align 8           ; 5 uses
  %16 = alloca %struct.timeval, align 8           ; 5 uses
  %i.h = alloca [5 x float], align 16             ; 5 uses
  %i.i = alloca [5 x float], align 16             ; 5 uses
  %i.j = alloca [2 x float], align 8              ; 6 uses
  %i.k = alloca [2 x float], align 8              ; 7 uses
  %i.l = alloca [2 x float], align 8              ; 5 uses
  %i.m = alloca [2 x float], align 8              ; 5 uses
  %i.n = alloca [2 x float], align 8              ; 5 uses
  %i.o = alloca [2 x float], align 8              ; 4 uses
  %i.p = alloca [2 x float], align 8              ; 6 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.r = call i32 @gettimeofday(ptr noundef nonnull %16, ptr noundef null) #25 ; 0 uses
  %i.s = load i64, ptr %16, align 8, !tbaa !132
  %i.t = add nsw i64 %i.s, -1290608000
  %i.u = sitofp reassoc nsz arcp contract afn i64 %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !134
  %i.x = sitofp reassoc nsz arcp contract afn i64 %i.w to double
  %i.y = fmul reassoc nnan nsz arcp contract afn double %i.x, f0x3EB0C6F7A0B5ED8D
  %i.z = fadd reassoc nsz arcp contract afn double %i.y, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.aa = phi reassoc nsz arcp contract afn double [ %i.z, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ac = load <2 x i32>, ptr %i.ab, align 16, !tbaa !28
  %i.ad = sitofp <2 x i32> %i.ac to <2 x float>   ; 9 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 1 ; 5 uses
  %i.ag = extractelement <2 x float> %i.ad, i64 0 ; 5 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !20
  %i.ai = tail call i32 @g_list_length(ptr noundef %i.ah) #25 ; 11 uses
  store ptr null, ptr %5, align 8, !tbaa !135
  store i32 0, ptr %6, align 4, !tbaa !28
  %i.aj = icmp ne ptr %7, null                    ; 6 uses
  br i1 %i.aj, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %dt_get_debug_wtime.exit
  store ptr null, ptr %7, align 8, !tbaa !135
  store i32 0, ptr %8, align 4, !tbaa !28
  %i.ak = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.17) ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.critedge438, label %bb.c

.critedge.thread:                                 ; preds = %dt_get_debug_wtime.exit
  %i.am = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.17) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge438, label %.thread

bb.c:                                             ; preds = %.critedge
  %i.ao = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 1000000, ptr noundef nonnull @.str.18) ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ar = and i32 %i.aq, 4096
  %.not.i475 = icmp eq i32 %i.ar, 0
  br i1 %.not.i475, label %dt_masks_dynbuf_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !234
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.as, ptr noundef %i.at) #25
  br label %dt_masks_dynbuf_free.exit

dt_masks_dynbuf_free.exit:                        ; preds = %bb.d, %bb.e
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !234
  tail call void @free(ptr noundef %i.au) #25
  tail call void @free(ptr noundef nonnull %i.ak) #25
  br label %.critedge438

.thread:                                          ; preds = %.critedge.thread, %bb.c
  %i.av = phi ptr [ %i.ak, %bb.c ], [ %i.am, %.critedge.thread ] ; 24 uses
  %.0370 = phi ptr [ %i.ao, %bb.c ], [ null, %.critedge.thread ] ; 27 uses
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 1)
  %i.ax = mul i32 %i.aw, 10
  %i.ay = zext i32 %i.ax to i64                   ; 5 uses
  %i.az = tail call fastcc ptr @dt_masks_dynbuf_init(i64 noundef %i.ay, ptr noundef nonnull @.str.19) ; 28 uses
  %i.ba = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #27 ; 25 uses
  %.not.i476 = icmp eq ptr %i.ba, null
  br i1 %.not.i476, label %dt_masks_intbuf_init.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 7 uses
  %i.bc = tail call i64 @g_strlcpy(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.20, i64 noundef 128) #25 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 136 ; 5 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !236
  %i.be = shl nuw nsw i64 %i.ay, 2
  %i.bf = tail call ptr @dt_alloc_aligned(i64 noundef %i.be) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bf, i64 64) ]
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %_dt_masks_intbuf_growto.exit.thread.i, label %bb.g

_dt_masks_intbuf_growto.exit.thread.i:            ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 4294967296) %i.ay) #25
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !238 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.bg, null
  br i1 %.not19.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 144 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !239
  %i.bj = shl i64 %i.bi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.bf, ptr nonnull align 4 %i.bg, i64 %i.bj, i1 false)
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.bl = and i32 %i.bk, 4096
  %.not20.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !239
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !238
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.bb, i64 noundef %i.bm, ptr noundef nonnull %i.bf, ptr noundef %i.bn) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !238
  tail call void @free(ptr noundef %i.bo) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  store i64 %i.ay, ptr %i.bp, align 8, !tbaa !239
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !238
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.br = and i32 %i.bq, 4096
  %.not13.i = icmp eq i32 %i.br, 0
end_hunk_2
begin_hunk_3_@_path_get_pts_border:bb.a

bb.ar:                                            ; preds = %g_list_next_wraparound.exit.thread
  %.0370.val457 = load ptr, ptr %.0370, align 8, !tbaa !234
  %.0370.val458 = load i64, ptr %i.gz, align 8, !tbaa !240
  %i.js = getelementptr [4 x i8], ptr %.0370.val457, i64 %.0370.val458
  %i.jt = getelementptr i8, ptr %i.js, i64 -8
  %i.ju = load float, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.jv = load <2 x float>, ptr %i.jt, align 4, !tbaa !11 ; 3 uses
  %i.jw = extractelement <2 x float> %i.jv, i64 0
  %i.jx = fsub reassoc nsz arcp contract afn float %i.jw, %i.ju
  %i.jy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jx)
  %i.jz = fcmp reassoc nsz arcp contract afn ogt float %i.jy, 1.000000e+00
  br i1 %i.jz, label %._crit_edge659, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ka = load float, ptr %i.hi, align 4, !tbaa !11
  %i.kb = extractelement <2 x float> %i.jv, i64 1
  %i.kc = fsub reassoc nsz arcp contract afn float %i.kb, %i.ka
  %i.kd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kc)
  %i.ke = fcmp reassoc nsz arcp contract afn ogt float %i.kd, 1.000000e+00
  br i1 %i.ke, label %._crit_edge659, label %bb.at

._crit_edge659:                                   ; preds = %bb.ar, %bb.as
  store <2 x float> %i.jv, ptr %i.l, align 8, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge659, %bb.as
  %i.kf = load <2 x float>, ptr %i.j, align 8, !tbaa !11 ; 11 uses
  %i.kg = load i64, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %i.kh = add i64 %i.kg, 2                        ; 2 uses
  %i.ki = load i64, ptr %i.hk, align 8, !tbaa !241 ; 3 uses
  %.not.i496 = icmp ult i64 %i.kh, %i.ki
  br i1 %.not.i496, label %bb.aw, label %bb.au, !prof !242

bb.au:                                            ; preds = %bb.at
  %i.kj = icmp eq i64 %i.ki, 0
  br i1 %i.kj, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kk = shl i64 %i.ki, 1
  %i.kl = add i64 %i.kk, 2
  %i.km = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.av, i64 noundef %i.kl)
  %.not11.i = icmp eq i32 %i.km, 0
  br i1 %.not11.i, label %bb.ba, label %._crit_edge.i497

._crit_edge.i497:                                 ; preds = %bb.av
  %.pre.i498 = load i64, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i = add i64 %.pre.i498, 2
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i497, %bb.at
  %.pre-phi.i499 = phi i64 [ %.pre12.i, %._crit_edge.i497 ], [ %i.kh, %bb.at ]
  %i.kn = phi i64 [ %.pre.i498, %._crit_edge.i497 ], [ %i.kg, %bb.at ]
  %i.ko = load ptr, ptr %i.av, align 8, !tbaa !234
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.kn
  store i64 %.pre-phi.i499, ptr %i.hj, align 8, !tbaa !240
  store <2 x float> %i.kf, ptr %i.kp, align 4, !tbaa !11
  br label %bb.ba

.critedge423:                                     ; preds = %g_list_next_wraparound.exit.thread
  %i.kq = load <2 x float>, ptr %i.j, align 8, !tbaa !11
  %i.kr = load i64, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %i.ks = add i64 %i.kr, 2                        ; 2 uses
  %i.kt = load i64, ptr %i.hk, align 8, !tbaa !241 ; 3 uses
  %.not.i500 = icmp ult i64 %i.ks, %i.kt
  br i1 %.not.i500, label %bb.az, label %bb.ax, !prof !242

bb.ax:                                            ; preds = %.critedge423
  %i.ku = icmp eq i64 %i.kt, 0
  br i1 %i.ku, label %dt_masks_dynbuf_add_2.exit506.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kv = shl i64 %i.kt, 1
  %i.kw = add i64 %i.kv, 2
  %i.kx = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.av, i64 noundef %i.kw)
  %.not11.i501 = icmp eq i32 %i.kx, 0
  br i1 %.not11.i501, label %dt_masks_dynbuf_add_2.exit506.thread, label %._crit_edge.i502

._crit_edge.i502:                                 ; preds = %bb.ay
  %.pre.i503 = load i64, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i504 = add i64 %.pre.i503, 2
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i502, %.critedge423
  %.pre-phi.i505 = phi i64 [ %.pre12.i504, %._crit_edge.i502 ], [ %i.ks, %.critedge423 ]
  %i.ky = phi i64 [ %.pre.i503, %._crit_edge.i502 ], [ %i.kr, %.critedge423 ]
  %i.kz = load ptr, ptr %i.av, align 8, !tbaa !234
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.ky
  store i64 %.pre-phi.i505, ptr %i.hj, align 8, !tbaa !240
  store <2 x float> %i.kq, ptr %i.la, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit506.thread

dt_masks_dynbuf_add_2.exit506.thread:             ; preds = %bb.az, %bb.ay, %bb.ax
  %i.lb = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store float 0.000000e+00, ptr %i.lb, align 8, !tbaa !11
  br label %.critedge427

bb.ba:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0370.val439 = load i64, ptr %i.gz, align 8, !tbaa !240 ; 4 uses
  %i.lc = sub i64 0, %.0370.val439
  %i.ld = uitofp reassoc nsz arcp contract afn i64 %i.lc to float
  %i.le = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store float %i.ld, ptr %i.le, align 8, !tbaa !11
  %i.lf = fcmp reassoc nsz arcp contract afn oeq float %i.ju, f0xFF7FFFFF
  br i1 %i.lf, label %bb.bb, label %._crit_edge663

._crit_edge663:                                   ; preds = %bb.ba
  %.pre664 = load float, ptr %i.hi, align 4, !tbaa !11
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %.0370.val449 = load ptr, ptr %.0370, align 8, !tbaa !234
  %i.lg = getelementptr [4 x i8], ptr %.0370.val449, i64 %.0370.val439 ; 4 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -8     ; 2 uses
  %i.li = load float, ptr %i.lh, align 4, !tbaa !11 ; 2 uses
  %i.lj = fcmp reassoc nsz arcp contract afn oeq float %i.li, f0xFF7FFFFF
  br i1 %i.lj, label %bb.bc, label %._crit_edge660

._crit_edge660:                                   ; preds = %bb.bb
  %.phi.trans.insert661 = getelementptr i8, ptr %i.lg, i64 -4
  %.pre662 = load float, ptr %.phi.trans.insert661, align 4, !tbaa !11
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lk = getelementptr i8, ptr %i.lg, i64 -16
  %i.ll = getelementptr i8, ptr %i.lg, i64 -12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !11
  %i.ln = load <2 x float>, ptr %i.lk, align 4, !tbaa !11 ; 2 uses
  store <2 x float> %i.ln, ptr %i.lh, align 4, !tbaa !11
  %i.lo = extractelement <2 x float> %i.ln, i64 0
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge660, %bb.bc
  %i.lp = phi float [ %i.lm, %bb.bc ], [ %.pre662, %._crit_edge660 ] ; 2 uses
  %i.lq = phi float [ %i.lo, %bb.bc ], [ %i.li, %._crit_edge660 ] ; 2 uses
  store float %i.lq, ptr %i.k, align 8, !tbaa !11
  store float %i.lp, ptr %i.hi, align 4, !tbaa !11
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge663, %bb.bd
  %i.lr = phi float [ %i.lp, %bb.bd ], [ %.pre664, %._crit_edge663 ] ; 3 uses
  %i.ls = phi float [ %i.lq, %bb.bd ], [ %i.ju, %._crit_edge663 ] ; 3 uses
  %i.lt = add i64 %.0370.val439, 2                ; 2 uses
  %i.lu = load i64, ptr %i.hl, align 8, !tbaa !241 ; 3 uses
  %.not.i507 = icmp ult i64 %i.lt, %i.lu
  br i1 %.not.i507, label %bb.bh, label %bb.bf, !prof !242

bb.bf:                                            ; preds = %bb.be
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %dt_masks_dynbuf_add_2.exit513, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lw = shl i64 %i.lu, 1
  %i.lx = add i64 %i.lw, 2
  %i.ly = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %.0370, i64 noundef %i.lx)
  %.not11.i508 = icmp eq i32 %i.ly, 0
  br i1 %.not11.i508, label %dt_masks_dynbuf_add_2.exit513, label %._crit_edge.i509

._crit_edge.i509:                                 ; preds = %bb.bg
  %.pre.i510 = load i64, ptr %i.gz, align 8, !tbaa !240 ; 2 uses
  %.pre12.i511 = add i64 %.pre.i510, 2
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i509, %bb.be
  %.pre-phi.i512 = phi i64 [ %.pre12.i511, %._crit_edge.i509 ], [ %i.lt, %bb.be ]
  %i.lz = phi i64 [ %.pre.i510, %._crit_edge.i509 ], [ %.0370.val439, %bb.be ]
  %i.ma = load ptr, ptr %.0370, align 8, !tbaa !234
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lz ; 2 uses
  store float %i.ls, ptr %i.mb, align 4, !tbaa !11
  store i64 %.pre-phi.i512, ptr %i.gz, align 8, !tbaa !240
  %i.mc = getelementptr i8, ptr %i.mb, i64 4
  store float %i.lr, ptr %i.mc, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit513

dt_masks_dynbuf_add_2.exit513:                    ; preds = %bb.bf, %bb.bg, %bb.bh
  %.0370.val468 = load ptr, ptr %.0370, align 8, !tbaa !234 ; 3 uses
  %i.md = sext i32 %i.hz to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %.0370.val468, i64 %i.md ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !11 ; 2 uses
  store float %i.mf, ptr %i.id, align 8, !tbaa !11
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.0370.val468, i64 %i.ic
  store float %i.mf, ptr %i.mg, align 4, !tbaa !11
  %i.mh = getelementptr i8, ptr %i.me, i64 4
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !11 ; 2 uses
  %i.mj = or disjoint i64 %i.ic, 1                ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.mj
  store float %i.mi, ptr %i.mk, align 4, !tbaa !11
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0370.val468, i64 %i.mj
  store float %i.mi, ptr %i.ml, align 4, !tbaa !11
  br i1 %i.hf, label %bb.bi, label %.critedge427

bb.bi:                                            ; preds = %dt_masks_dynbuf_add_2.exit513
  %i.mm = fmul reassoc nsz arcp contract afn <2 x float> %i.jg, splat (float f0x3F7FFE08)
  %i.mn = fmul reassoc nsz arcp contract afn <2 x float> %i.jj, splat (float f0x37FBA738)
  %i.mo = fmul reassoc nsz arcp contract afn <2 x float> %i.jp, splat (float 2.999970e-10)
  %i.mp = fmul reassoc nsz arcp contract afn <2 x float> %i.jm, splat (float f0x26901D7C)
  %i.mq = fneg reassoc nsz arcp contract afn <2 x float> %i.jg
  %i.mr = fpext <2 x float> %i.jj to <2 x double>
  %i.ms = fpext <2 x float> %i.jp to <2 x double>
  %i.mt = fpext <2 x float> %i.jm to <2 x double>
  %i.mu = fadd reassoc nsz arcp contract afn <2 x float> %i.mn, %i.mm
  %i.mv = fadd reassoc nsz arcp contract afn <2 x float> %i.mu, %i.mp
  %i.mw = fadd reassoc nsz arcp contract afn <2 x float> %i.mv, %i.mo ; 2 uses
  %i.mx = fpext <2 x float> %i.mq to <2 x double>
  %i.my = fmul reassoc nsz arcp contract afn <2 x double> %i.mx, splat (double f0x4007FFE08AFA0ED4)
  %i.mz = fmul reassoc nsz arcp contract afn <2 x double> %i.mr, splat (double f0x4007FFC115FE6C7C)
  %17 = fmul reassoc nsz arcp contract afn <2 x double> %i.ms, splat (double f0x3F0F74F153844524)
  %i.na = fmul reassoc nsz arcp contract afn <2 x double> %i.mt, splat (double f0x3DF49DA7D1E82B00)
  %i.nb = fadd reassoc nsz arcp contract afn <2 x double> %i.mz, %i.my
  %18 = fadd reassoc nsz arcp contract afn <2 x double> %i.nb, %i.na
  %i.nc = fadd reassoc nsz arcp contract afn <2 x double> %18, %17 ; 5 uses
  %i.nd = extractelement <2 x double> %i.nc, i64 0
  %i.ne = fcmp reassoc nsz arcp contract afn oeq double %i.nd, 0.000000e+00
  %i.nf = extractelement <2 x double> %i.nc, i64 1 ; 3 uses
  %i.ng = fcmp reassoc nsz arcp contract afn oeq double %i.nf, 0.000000e+00
  %or.cond.i = select i1 %i.ne, i1 %i.ng, i1 false
  br i1 %or.cond.i, label %_path_border_get_XY.exit516, label %_path_border_get_XY.exit

_path_border_get_XY.exit:                         ; preds = %bb.bi
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x double> %i.nc, %i.nc
  %i.nh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ni = fmul reassoc nsz arcp contract afn double %i.nf, %i.nf
  %i.nj = fadd reassoc nsz arcp contract afn double %i.ni, %i.nh
  %i.nk = call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.nj)
  %i.nl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.nk
  %i.nm = fpext <2 x float> %i.mw to <2 x double> ; 2 uses
  %i.nn = extractelement <2 x float> %i.jb, i64 1
  %i.no = fpext reassoc nsz arcp contract afn float %i.nn to double
  %i.np = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nq = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nr = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ns = fmul reassoc nsz arcp contract afn <2 x double> %i.nq, %i.np
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fmul reassoc nsz arcp contract afn <2 x double> %i.nt, %i.nr ; 2 uses
  %i.nv = fadd reassoc nsz arcp contract afn <2 x double> %i.nu, %i.nm
  %i.nw = fsub reassoc nsz arcp contract afn <2 x double> %i.nm, %i.nu
  %i.nx = shufflevector <2 x double> %i.nv, <2 x double> %i.nw, <2 x i32> <i32 0, i32 3>
  %i.ny = fptrunc <2 x double> %i.nx to <2 x float> ; 3 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0
  %i.oa = fcmp reassoc nsz arcp contract afn oeq float %i.nz, f0xFF7FFFFF
  %i.ob = extractelement <2 x float> %i.ny, i64 1
  br i1 %i.oa, label %_path_border_get_XY.exit516, label %bb.bj

_path_border_get_XY.exit516:                      ; preds = %bb.bi, %_path_border_get_XY.exit
  %storemerge.i515 = phi float [ %i.ob, %_path_border_get_XY.exit ], [ f0xFF7FFFFF, %bb.bi ]
  store <2 x float> %i.mw, ptr %i.n, align 8, !tbaa !11
  %i.oc = insertelement <2 x float> <float f0xFF7FFFFF, float poison>, float %storemerge.i515, i64 1 ; 2 uses
  store <2 x float> %i.oc, ptr %i.m, align 8, !tbaa !11
  br label %bb.bj

bb.bj:                                            ; preds = %_path_border_get_XY.exit516, %_path_border_get_XY.exit
  %i.od = phi <2 x float> [ %i.oc, %_path_border_get_XY.exit516 ], [ %i.ny, %_path_border_get_XY.exit ] ; 4 uses
  %i.oe = extractelement <2 x float> %i.od, i64 0
  %i.of = fsub reassoc nsz arcp contract afn float %i.oe, %i.ls
  %i.og = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.of)
  %or.cond428 = fcmp reassoc nsz arcp contract afn ogt float %i.og, 1.000000e+00
  br i1 %or.cond428, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oh = extractelement <2 x float> %i.od, i64 1
  %i.oi = fsub reassoc nsz arcp contract afn float %i.oh, %i.lr
  %i.oj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.oi)
  %or.cond429 = fcmp reassoc nsz arcp contract afn ogt float %i.oj, 1.000000e+00
  br i1 %or.cond429, label %bb.bl, label %.critedge427

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ok = load ptr, ptr %1, align 8, !tbaa !20    ; 4 uses
  %.not6.i.i517 = icmp eq ptr %i.ok, null
  br i1 %.not6.i.i517, label %_path_is_clockwise.exit527, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !29 ; 2 uses
  %.not6.i.1.i518 = icmp eq ptr %i.om, null
  br i1 %.not6.i.1.i518, label %_path_is_clockwise.exit527, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !29
  %.not6.i.2.i519 = icmp eq ptr %i.oo, null
  br i1 %.not6.i.2.i519, label %_path_is_clockwise.exit527, label %g_list_next_wraparound.exit.i520

g_list_shorter_than.exit._crit_edge.i525:         ; preds = %g_list_next_wraparound.exit.i520
  %i.op = fcmp reassoc nsz arcp contract afn olt float %i.pd, 0.000000e+00
  br label %_path_is_clockwise.exit527

g_list_next_wraparound.exit.i520:                 ; preds = %bb.bn, %g_list_next_wraparound.exit.i520
  %.01625.i521 = phi ptr [ %i.or, %g_list_next_wraparound.exit.i520 ], [ %i.ok, %bb.bn ] ; 2 uses
  %.01524.i522 = phi float [ %i.pd, %g_list_next_wraparound.exit.i520 ], [ 0.000000e+00, %bb.bn ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.01625.i521, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !29 ; 3 uses
  %.not6.i19.i523 = icmp eq ptr %i.or, null       ; 2 uses
  %spec.select.i524 = select i1 %.not6.i19.i523, ptr %i.ok, ptr %i.or
  %i.os = load ptr, ptr %.01625.i521, align 8, !tbaa !31 ; 2 uses
  %i.ot = load ptr, ptr %spec.select.i524, align 8, !tbaa !31 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !11
  %i.ov = load float, ptr %i.os, align 4, !tbaa !11
  %i.ow = fsub reassoc nsz arcp contract afn float %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !11
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !11
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, %i.oy
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pb, %i.ow
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, %.01524.i522 ; 2 uses
  br i1 %.not6.i19.i523, label %g_list_shorter_than.exit._crit_edge.i525, label %g_list_next_wraparound.exit.i520

_path_is_clockwise.exit527:                       ; preds = %bb.bl, %bb.bm, %bb.bn, %g_list_shorter_than.exit._crit_edge.i525
  %.0.i526 = phi i1 [ %i.op, %g_list_shorter_than.exit._crit_edge.i525 ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.pe = extractelement <2 x float> %i.kf, i64 1
  %i.pf = fsub reassoc nsz arcp contract afn float %i.lr, %i.pe ; 2 uses
  %i.pg = extractelement <2 x float> %i.kf, i64 0
  %i.ph = fsub reassoc nsz arcp contract afn float %i.ls, %i.pg ; 2 uses
  %i.pi = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.pf, float %i.ph) ; 3 uses
  %foldExtExtBinop896 = fsub reassoc nsz arcp contract afn <2 x float> %i.od, %i.kf
  %i.pj = extractelement <2 x float> %foldExtExtBinop896, i64 1 ; 2 uses
  %foldExtExtBinop898 = fsub reassoc nsz arcp contract afn <2 x float> %i.od, %i.kf
  %i.pk = extractelement <2 x float> %foldExtExtBinop898, i64 0 ; 2 uses
  %i.pl = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.pj, float %i.pk) ; 3 uses
  %i.pm = fcmp reassoc nsz arcp contract afn oeq float %i.pi, %i.pl
  br i1 %i.pm, label %.critedge427, label %bb.bo

bb.bo:                                            ; preds = %_path_is_clockwise.exit527
  %i.pn = fpext reassoc nsz arcp contract afn float %i.pl to double ; 2 uses
  %i.po = fpext reassoc nsz arcp contract afn float %i.pi to double ; 3 uses
  %i.pp = fcmp reassoc nsz arcp contract afn olt float %i.pl, %i.pi
  %or.cond.i528 = and i1 %.0.i526, %i.pp
  %i.pq = fadd reassoc nsz arcp contract afn double %i.pn, f0x401921FB54442D18
  %spec.select.i529 = select i1 %or.cond.i528, double %i.pq, double %i.pn ; 4 uses
  %i.pr = fcmp reassoc nsz arcp contract afn ule double %spec.select.i529, %i.po
  %or.cond3.i = or i1 %.0.i526, %i.pr
  %i.ps = fadd reassoc nsz arcp contract afn double %i.po, f0x401921FB54442D18
  %.082.i = select nsz i1 %or.cond3.i, double %i.po, double %i.ps ; 4 uses
  %i.pt = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.pf, float noundef %i.ph) #24 ; 4 uses
  %i.pu = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.pj, float noundef %i.pk) #24 ; 2 uses
  %i.pv = fcmp reassoc nsz arcp contract afn ogt double %spec.select.i529, %.082.i
  %i.pw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pt, float %i.pu)
  %i.px = fpext reassoc nsz arcp contract afn float %i.pw to double
  %i.py = fsub reassoc nsz arcp contract afn double %.082.i, %spec.select.i529
  %i.pz = fsub reassoc nsz arcp contract afn double %spec.select.i529, %.082.i ; 2 uses
  %.sink.i = select i1 %i.pv, double %i.pz, double %i.py
  %i.qa = fmul reassoc nsz arcp contract afn double %.sink.i, %i.px
  %.086.i = fptosi double %i.qa to i32            ; 6 uses
  %i.qb = icmp slt i32 %.086.i, 2
  br i1 %i.qb, label %.critedge427, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qc = uitofp nneg i32 %.086.i to double
  %i.qd = fdiv reassoc nsz arcp contract afn double %i.pz, %i.qc
  %i.qe = fptrunc reassoc nsz arcp contract afn double %i.qd to float ; 4 uses
  %i.qf = fsub reassoc nsz arcp contract afn float %i.pu, %i.pt
  %i.qg = uitofp nneg i32 %.086.i to float
  %i.qh = fdiv reassoc nsz arcp contract afn float %i.qf, %i.qg ; 3 uses
  %i.qi = fpext reassoc nsz arcp contract afn float %i.qe to double
  %i.qj = fadd reassoc nsz arcp contract afn double %.082.i, %i.qi
  %i.qk = fptrunc reassoc nsz arcp contract afn double %i.qj to float ; 2 uses
  %.val.i = load i64, ptr %i.hj, align 8, !tbaa !240
  %i.ql = lshr i64 %.val.i, 1
  %i.qm = trunc i64 %i.ql to i32                  ; 2 uses
  %i.qn = shl nuw i32 %.086.i, 1
  %i.qo = add i32 %i.qn, -2                       ; 2 uses
  %i.qp = add nsw i32 %i.qo, %i.qm
  %i.qq = insertelement <2 x i32> poison, i32 %i.qm, i64 0
  %i.qr = insertelement <2 x i32> %i.qq, i32 %i.qp, i64 1
  %i.qs = sitofp <2 x i32> %i.qr to <2 x float>
  %i.qt = load i64, ptr %i.bd, align 8, !tbaa !236 ; 2 uses
  %i.qu = add i64 %i.qt, 2                        ; 2 uses
  %i.qv = load i64, ptr %i.hm, align 8, !tbaa !239 ; 3 uses
  %.not.i.i530 = icmp ult i64 %i.qu, %i.qv
  br i1 %.not.i.i530, label %bb.bs, label %bb.bq, !prof !242

bb.bq:                                            ; preds = %bb.bp
  %i.qw = icmp eq i64 %i.qv, 0
  br i1 %i.qw, label %dt_masks_intbuf_add2.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qx = shl i64 %i.qv, 1
  %i.qy = add i64 %i.qx, 2
  %i.qz = call fastcc i32 @_dt_masks_intbuf_growto(ptr noundef nonnull %i.ba, i64 noundef %i.qy)
  %.not11.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not11.i.i, label %dt_masks_intbuf_add2.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.br
  %.pre.i.i = load i64, ptr %i.bd, align 8, !tbaa !236 ; 2 uses
  %.pre12.i.i = add i64 %.pre.i.i, 2
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i, %bb.bp
  %.pre-phi.i.i = phi i64 [ %.pre12.i.i, %._crit_edge.i.i ], [ %i.qu, %bb.bp ]
  %i.ra = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.qt, %bb.bp ]
  %i.rb = fptosi <2 x float> %i.qs to <2 x i32>
  %i.rc = load ptr, ptr %i.ba, align 8, !tbaa !238
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ra
  store i64 %.pre-phi.i.i, ptr %i.bd, align 8, !tbaa !236
  store <2 x i32> %i.rb, ptr %i.rd, align 4, !tbaa !28
  br label %dt_masks_intbuf_add2.exit.i

dt_masks_intbuf_add2.exit.i:                      ; preds = %bb.bs, %bb.br, %bb.bq
  %i.re = load i64, ptr %i.hj, align 8, !tbaa !240 ; 2 uses
  %i.rf = zext nneg i32 %i.qo to i64              ; 4 uses
  %i.rg = add i64 %i.re, %i.rf                    ; 3 uses
  %i.rh = load i64, ptr %i.hk, align 8, !tbaa !241 ; 3 uses
  %.not.i92.i = icmp ult i64 %i.rg, %i.rh
  br i1 %.not.i92.i, label %bb.bv, label %bb.bt, !prof !242

bb.bt:                                            ; preds = %dt_masks_intbuf_add2.exit.i
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %dt_masks_dynbuf_reserve_n.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bt, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.rj, %.preheader.i.i ], [ %i.rh, %bb.bt ] ; 3 uses
end_hunk_3
begin_hunk_4_@_path_get_pts_border:bb.a
  br i1 %.not.i326.i, label %dt_masks_dynbuf_free.exit.i, label %bb.ej

bb.ej:                                            ; preds = %.thread364.i
  %i.agq = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.agq, ptr noundef %.pre492.i) #25
  %.pre491.i = load ptr, ptr %i.vt, align 8, !tbaa !234
  br label %dt_masks_dynbuf_free.exit.i

dt_masks_dynbuf_free.exit.i:                      ; preds = %bb.ej, %.thread364.i
  %i.agr = phi ptr [ %.pre492.i, %.thread364.i ], [ %.pre491.i, %bb.ej ]
  call void @free(ptr noundef %i.agr) #25
  call void @free(ptr noundef nonnull %i.vt) #25
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.df, %bb.de, %dt_masks_dynbuf_free.exit.i, %bb.cq
  %.10226.ph.i = phi i32 [ 0, %bb.cq ], [ %.0227.lcssa.i, %dt_masks_dynbuf_free.exit.i ], [ 0, %bb.de ], [ 0, %bb.df ]
  call void @free(ptr noundef %i.vr) #25
  br label %_path_find_self_intersection.exit

_path_find_self_intersection.exit:                ; preds = %bb.ci, %bb.ck, %bb.cp, %.sink.split.i
  %.10226.i = phi i32 [ 0, %bb.ci ], [ 0, %bb.ck ], [ 0, %bb.cp ], [ %.10226.ph.i, %.sink.split.i ] ; 2 uses
  %i.ags = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.agt = and i32 %i.ags, 4112
  %or.cond431.not = icmp eq i32 %i.agt, 4112
  br i1 %or.cond431.not, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_path_find_self_intersection.exit
  %i.agu = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.agv = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #25 ; 0 uses
  %i.agw = load i64, ptr %13, align 8, !tbaa !132
  %i.agx = add nsw i64 %i.agw, -1290608000
  %i.agy = sitofp reassoc nsz arcp contract afn i64 %i.agx to double
  %i.agz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !134
  %i.ahb = sitofp reassoc nsz arcp contract afn i64 %i.aha to double
  %i.ahc = fmul reassoc nnan nsz arcp contract afn double %i.ahb, f0x3EB0C6F7A0B5ED8D
  %i.ahd = fadd reassoc nsz arcp contract afn double %i.ahc, %i.agy ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ahe = fsub reassoc nsz arcp contract afn double %i.ahd, %.1567
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.agu, double noundef %i.ahe) #25
  br label %bb.el

bb.el:                                            ; preds = %_path_find_self_intersection.exit, %bb.ek, %bb.ch
  %.2 = phi nsz double [ %.1567, %_path_find_self_intersection.exit ], [ %i.ahd, %bb.ek ], [ %.1567, %bb.ch ] ; 3 uses
  %.0371 = phi i32 [ %.10226.i, %_path_find_self_intersection.exit ], [ %.10226.i, %bb.ek ], [ 0, %bb.ch ] ; 2 uses
  %i.ahf = icmp eq i32 %3, 0
  %or.cond9 = and i1 %i.ahf, %i.cs
  %i.ahg = load ptr, ptr %5, align 8, !tbaa !135  ; 2 uses
  %i.ahh = load i32, ptr %6, align 4, !tbaa !28
  %i.ahi = sext i32 %i.ahh to i64                 ; 2 uses
  br i1 %or.cond9, label %bb.em, label %bb.ev

bb.em:                                            ; preds = %bb.el
  %i.ahj = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef %i.ahg, i64 noundef %i.ahi) #25
  %.not412 = icmp eq i32 %i.ahj, 0
  br i1 %.not412, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.ahk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ahl = load <2 x float>, ptr %i.ahk, align 8, !tbaa !11
  %i.ahm = fmul reassoc nsz arcp contract afn <2 x float> %i.ahl, %i.ad
  store <2 x float> %i.ahm, ptr %i.p, align 8, !tbaa !11
  %i.ahn = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 4, ptr noundef nonnull %i.p, i64 noundef 1) #25
  %.not413 = icmp eq i32 %i.ahn, 0
  br i1 %.not413, label %.thread581, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aho = load ptr, ptr %5, align 8, !tbaa !135  ; 7 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 8
  %i.ahq = load <2 x float>, ptr %i.p, align 8, !tbaa !11
  %i.ahr = load <2 x float>, ptr %i.ahp, align 8, !tbaa !11
  %i.ahs = fsub reassoc nsz arcp contract afn <2 x float> %i.ahq, %i.ahr ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aho, i64 64) ]
  %i.aht = load i32, ptr %6, align 4, !tbaa !28   ; 5 uses
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %iter.check874, label %._crit_edge621

iter.check874:                                    ; preds = %bb.eo
  %wide.trip.count657 = zext nneg i32 %i.aht to i64 ; 6 uses
  %min.iters.check852 = icmp ult i32 %i.aht, 4
  br i1 %min.iters.check852, label %.lr.ph620.preheader, label %vector.main.loop.iter.check853

vector.main.loop.iter.check853:                   ; preds = %iter.check874
  %min.iters.check854 = icmp ult i32 %i.aht, 16
  br i1 %min.iters.check854, label %vec.epilog.ph878, label %vector.ph855

vector.ph855:                                     ; preds = %vector.main.loop.iter.check853
  %i.ahv = and i64 %wide.trip.count657, 12
  %n.vec856 = and i64 %wide.trip.count657, 2147483632 ; 4 uses
  %broadcast.splat858 = shufflevector <2 x float> %i.ahs, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat860 = shufflevector <2 x float> %i.ahs, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body861

vector.body861:                                   ; preds = %vector.body861, %vector.ph855
  %index862 = phi i64 [ 0, %vector.ph855 ], [ %index.next870, %vector.body861 ] ; 3 uses
  %i.ahw = shl nuw nsw i64 %index862, 3
  %i.ahx = shl i64 %index862, 3
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahw ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahx
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64 ; 2 uses
  %wide.vec863 = load <16 x float>, ptr %i.ahy, align 64, !tbaa !11 ; 2 uses
  %strided.vec864 = shufflevector <16 x float> %wide.vec863, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec865 = shufflevector <16 x float> %wide.vec863, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec866 = load <16 x float>, ptr %i.aia, align 64, !tbaa !11 ; 2 uses
  %strided.vec867 = shufflevector <16 x float> %wide.vec866, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec868 = shufflevector <16 x float> %wide.vec866, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aib = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat858, %strided.vec864
  %i.aic = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat858, %strided.vec867
  %i.aid = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat860, %strided.vec865
  %i.aie = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat860, %strided.vec868
  %interleaved.vec = shufflevector <8 x float> %i.aib, <8 x float> %i.aid, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ahy, align 64, !tbaa !11
  %interleaved.vec869 = shufflevector <8 x float> %i.aic, <8 x float> %i.aie, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec869, ptr %i.aia, align 64, !tbaa !11
  %index.next870 = add nuw i64 %index862, 16      ; 2 uses
  %i.aif = icmp eq i64 %index.next870, %n.vec856
  br i1 %i.aif, label %middle.block871, label %vector.body861, !llvm.loop !247

middle.block871:                                  ; preds = %vector.body861
  %cmp.n872 = icmp eq i64 %n.vec856, %wide.trip.count657
  br i1 %cmp.n872, label %._crit_edge621, label %vec.epilog.iter.check876

vec.epilog.iter.check876:                         ; preds = %middle.block871
  %min.epilog.iters.check877 = icmp eq i64 %i.ahv, 0
  br i1 %min.epilog.iters.check877, label %.lr.ph620.preheader, label %vec.epilog.ph878, !prof !248

vec.epilog.ph878:                                 ; preds = %vector.main.loop.iter.check853, %vec.epilog.iter.check876
  %vec.epilog.resume.val873 = phi i64 [ %n.vec856, %vec.epilog.iter.check876 ], [ 0, %vector.main.loop.iter.check853 ]
  %n.vec879 = and i64 %wide.trip.count657, 2147483644 ; 3 uses
  %broadcast.splat881 = shufflevector <2 x float> %i.ahs, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat883 = shufflevector <2 x float> %i.ahs, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body884

vec.epilog.vector.body884:                        ; preds = %vec.epilog.vector.body884, %vec.epilog.ph878
  %index885 = phi i64 [ %vec.epilog.resume.val873, %vec.epilog.ph878 ], [ %index.next890, %vec.epilog.vector.body884 ] ; 2 uses
  %i.aig = shl nuw nsw i64 %index885, 3
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.aig ; 2 uses
  %wide.vec886 = load <8 x float>, ptr %i.aih, align 32, !tbaa !11 ; 2 uses
  %strided.vec887 = shufflevector <8 x float> %wide.vec886, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec888 = shufflevector <8 x float> %wide.vec886, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aii = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat881, %strided.vec887
  %i.aij = fadd reassoc nsz arcp contract afn <4 x float> %broadcast.splat883, %strided.vec888
  %interleaved.vec889 = shufflevector <4 x float> %i.aii, <4 x float> %i.aij, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec889, ptr %i.aih, align 32, !tbaa !11
  %index.next890 = add nuw i64 %index885, 4       ; 2 uses
  %i.aik = icmp eq i64 %index.next890, %n.vec879
  br i1 %i.aik, label %vec.epilog.middle.block891, label %vec.epilog.vector.body884, !llvm.loop !249

vec.epilog.middle.block891:                       ; preds = %vec.epilog.vector.body884
  %cmp.n892 = icmp eq i64 %n.vec879, %wide.trip.count657
  br i1 %cmp.n892, label %._crit_edge621, label %.lr.ph620.preheader

.lr.ph620.preheader:                              ; preds = %iter.check874, %vec.epilog.iter.check876, %vec.epilog.middle.block891
  %indvars.iv654.ph = phi i64 [ 0, %iter.check874 ], [ %n.vec856, %vec.epilog.iter.check876 ], [ %n.vec879, %vec.epilog.middle.block891 ]
  br label %.lr.ph620

._crit_edge621:                                   ; preds = %.lr.ph620, %middle.block871, %vec.epilog.middle.block891, %bb.eo
  %i.ail = sext i32 %i.aht to i64
  %i.aim = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef 1, ptr noundef nonnull %i.aho, i64 noundef %i.ail) #25
  %.not414 = icmp eq i32 %i.aim, 0
  br i1 %.not414, label %.thread581, label %bb.ep

.lr.ph620:                                        ; preds = %.lr.ph620.preheader, %.lr.ph620
  %indvars.iv654 = phi i64 [ %indvars.iv.next655, %.lr.ph620 ], [ %indvars.iv654.ph, %.lr.ph620.preheader ] ; 2 uses
  %.idx754 = shl nuw nsw i64 %indvars.iv654, 3
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aho, i64 %.idx754 ; 2 uses
  %i.aio = load <2 x float>, ptr %i.ain, align 8, !tbaa !11
  %i.aip = fadd reassoc nsz arcp contract afn <2 x float> %i.ahs, %i.aio
  store <2 x float> %i.aip, ptr %i.ain, align 8, !tbaa !11
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %wide.trip.count657
  br i1 %exitcond658.not, label %._crit_edge621, label %.lr.ph620, !llvm.loop !250

.thread581:                                       ; preds = %bb.en, %._crit_edge621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.fq

bb.ep:                                            ; preds = %._crit_edge621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.em
  %i.aiq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94 ; 2 uses
  %i.air = and i32 %i.aiq, 4112
  %or.cond432.not = icmp eq i32 %i.air, 4112
  br i1 %or.cond432.not, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.ait = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #25 ; 0 uses
  %i.aiu = load i64, ptr %12, align 8, !tbaa !132
  %i.aiv = add nsw i64 %i.aiu, -1290608000
  %i.aiw = sitofp reassoc nsz arcp contract afn i64 %i.aiv to double
  %i.aix = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !134
  %i.aiz = sitofp reassoc nsz arcp contract afn i64 %i.aiy to double
  %i.aja = fmul reassoc nnan nsz arcp contract afn double %i.aiz, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %19 = fsub reassoc nsz arcp contract afn double %i.aiw, %.2
  %20 = fadd reassoc nsz arcp contract afn double %19, %i.aja
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.ais, double noundef %20) #25
  %.pre669 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  %i.ajb = phi i32 [ %i.aiq, %bb.eq ], [ %.pre669, %bb.er ]
  %i.ajc = and i32 %i.ajb, 4096
  %.not.i550 = icmp eq i32 %i.ajc, 0
  br i1 %.not.i550, label %dt_masks_dynbuf_free.exit551, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.aje = load ptr, ptr %i.az, align 8, !tbaa !234
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ajd, ptr noundef %i.aje) #25
  br label %dt_masks_dynbuf_free.exit551

dt_masks_dynbuf_free.exit551:                     ; preds = %bb.es, %bb.et
  %i.ajf = load ptr, ptr %i.az, align 8, !tbaa !234
  call void @free(ptr noundef %i.ajf) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.ajg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ajh = and i32 %i.ajg, 4096
  %.not.i552 = icmp eq i32 %i.ajh, 0
  br i1 %.not.i552, label %dt_masks_intbuf_free.exit553, label %bb.eu

bb.eu:                                            ; preds = %dt_masks_dynbuf_free.exit551
  %i.aji = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aji) #25
  br label %dt_masks_intbuf_free.exit553

dt_masks_intbuf_free.exit553:                     ; preds = %dt_masks_dynbuf_free.exit551, %bb.eu
  %i.ajj = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.ajj) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.ev:                                            ; preds = %bb.el
  %i.ajk = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ahg, i64 noundef %i.ahi) #25
  %.not405 = icmp eq i32 %i.ajk, 0
  br i1 %.not405, label %bb.fq, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.aj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.ajl = load ptr, ptr %7, align 8, !tbaa !135
  %i.ajm = load i32, ptr %8, align 4, !tbaa !28
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = call i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %4, double noundef %2, i32 noundef %3, ptr noundef %i.ajl, i64 noundef %i.ajn) #25
  %.not406 = icmp eq i32 %i.ajo, 0
  br i1 %.not406, label %bb.fq, label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.ajp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.ajq = and i32 %i.ajp, 4112
  %or.cond433.not = icmp eq i32 %i.ajq, 4112
  br i1 %or.cond433.not, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ajs = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #25 ; 0 uses
  %i.ajt = load i64, ptr %11, align 8, !tbaa !132
  %i.aju = add nsw i64 %i.ajt, -1290608000
  %i.ajv = sitofp reassoc nsz arcp contract afn i64 %i.aju to double
  %i.ajw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !134
  %i.ajy = sitofp reassoc nsz arcp contract afn i64 %i.ajx to double
  %i.ajz = fmul reassoc nnan nsz arcp contract afn double %i.ajy, f0x3EB0C6F7A0B5ED8D
  %i.aka = fadd reassoc nsz arcp contract afn double %i.ajz, %i.ajv ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.akb = fsub reassoc nsz arcp contract afn double %i.aka, %.2
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.ajr, double noundef %i.akb) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.3 = phi nsz double [ %.2, %bb.ey ], [ %i.aka, %bb.ez ]
  br i1 %i.aj, label %.preheader590, label %.loopexit

.preheader590:                                    ; preds = %bb.fa
  br i1 %.not622, label %.preheader, label %.preheader589.lr.ph

.preheader589.lr.ph:                              ; preds = %.preheader590
  %i.akc = load ptr, ptr %7, align 8, !tbaa !135  ; 18 uses
  %min.iters.check836 = icmp ult i32 %i.ai, 5
  br i1 %min.iters.check836, label %.preheader589.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader589.lr.ph
  %scevgep = getelementptr nuw i8, ptr %i.akc, i64 8
  %i.akd = mul nuw nsw i64 %i.fm, 24              ; 2 uses
  %scevgep833 = getelementptr i8, ptr %i.akc, i64 %i.akd
  %scevgep834 = getelementptr i8, ptr %i.fo, i64 8
  %scevgep835 = getelementptr i8, ptr %i.fo, i64 %i.akd
  %bound0 = icmp ult ptr %scevgep, %scevgep835
  %bound1 = icmp ult ptr %scevgep834, %scevgep833
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader589.preheader, label %vector.ph837

vector.ph837:                                     ; preds = %vector.memcheck
  %i.ake = and i64 %i.fm, 3                       ; 2 uses
  %i.akf = icmp eq i64 %i.ake, 0
  %i.akg = select i1 %i.akf, i64 4, i64 %i.ake
  %n.vec838 = sub nsw i64 %i.fm, %i.akg           ; 2 uses
  br label %vector.body839

vector.body839:                                   ; preds = %vector.body839, %vector.ph837
  %index840 = phi i64 [ 0, %vector.ph837 ], [ %index.next849, %vector.body839 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph837 ], [ %vec.ind.next, %vector.body839 ] ; 2 uses
  %i.akh = mul nuw nsw <4 x i64> %vec.ind, splat (i64 6) ; 4 uses
  %i.aki = add nuw nsw <4 x i64> %i.akh, splat (i64 2) ; 2 uses
  %i.akj = extractelement <4 x i64> %i.aki, i64 0
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akj
  %wide.vec841 = load <24 x float>, ptr %i.akk, align 8, !tbaa !11, !alias.scope !251 ; 4 uses
  %strided.vec842 = shufflevector <24 x float> %wide.vec841, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec843 = shufflevector <24 x float> %wide.vec841, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec844 = shufflevector <24 x float> %wide.vec841, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %strided.vec845 = shufflevector <24 x float> %wide.vec841, <24 x float> poison, <4 x i32> <i32 3, i32 9, i32 15, i32 21>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.akc, <4 x i64> %i.aki
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec842, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.akl = add nuw nsw <4 x i64> %i.akh, splat (i64 3)
  %wide.gep846 = getelementptr inbounds nuw [4 x i8], ptr %i.akc, <4 x i64> %i.akl
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec843, <4 x ptr> align 4 %wide.gep846, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.akm = add nuw nsw <4 x i64> %i.akh, splat (i64 4)
  %wide.gep847 = getelementptr inbounds nuw [4 x i8], ptr %i.akc, <4 x i64> %i.akm
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec844, <4 x ptr> align 4 %wide.gep847, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %i.akn = add nuw nsw <4 x i64> %i.akh, splat (i64 5)
  %wide.gep848 = getelementptr inbounds nuw [4 x i8], ptr %i.akc, <4 x i64> %i.akn
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec845, <4 x ptr> align 4 %wide.gep848, <4 x i1> splat (i1 true)), !tbaa !11, !alias.scope !254, !noalias !251
  %index.next849 = add nuw i64 %index840, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ako = icmp eq i64 %index.next849, %n.vec838
  br i1 %i.ako, label %.preheader589.preheader, label %vector.body839, !llvm.loop !256

.preheader589.preheader:                          ; preds = %vector.body839, %vector.memcheck, %.preheader589.lr.ph
  %indvars.iv644.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader589.lr.ph ], [ %n.vec838, %vector.body839 ] ; 5 uses
  %i.akp = sub nsw i64 %i.fm, %indvars.iv644.ph
  %xtraiter918 = and i64 %i.akp, 1
  %lcmp.mod919.not = icmp eq i64 %xtraiter918, 0
  br i1 %lcmp.mod919.not, label %.preheader589.prol.loopexit, label %.preheader589.prol

.preheader589.prol:                               ; preds = %.preheader589.preheader
  %i.akq = mul nuw nsw i64 %indvars.iv644.ph, 6   ; 4 uses
  %i.akr = add nuw nsw i64 %i.akq, 2              ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akr
  %i.akt = load float, ptr %i.aks, align 8, !tbaa !11
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akr
  store float %i.akt, ptr %i.aku, align 4, !tbaa !11
  %i.akv = add nuw nsw i64 %i.akq, 3              ; 2 uses
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akv
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !11
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akv
  store float %i.akx, ptr %i.aky, align 4, !tbaa !11
  %i.akz = add nuw nsw i64 %i.akq, 4              ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.akz
  %i.alb = load float, ptr %i.ala, align 8, !tbaa !11
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akz
  store float %i.alb, ptr %i.alc, align 4, !tbaa !11
  %i.ald = add nuw nsw i64 %i.akq, 5              ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ald
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !11
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.ald
  store float %i.alf, ptr %i.alg, align 4, !tbaa !11
  %indvars.iv.next645.prol = add nuw nsw i64 %indvars.iv644.ph, 1
  br label %.preheader589.prol.loopexit

.preheader589.prol.loopexit:                      ; preds = %.preheader589.prol, %.preheader589.preheader
  %indvars.iv644.unr = phi i64 [ %indvars.iv644.ph, %.preheader589.preheader ], [ %indvars.iv.next645.prol, %.preheader589.prol ]
  %i.alh = add nsw i64 %i.fm, -1
  %i.ali = icmp eq i64 %indvars.iv644.ph, %i.alh
  br i1 %i.ali, label %.preheader, label %.preheader589

.preheader589:                                    ; preds = %.preheader589.prol.loopexit, %.preheader589
  %indvars.iv644 = phi i64 [ %indvars.iv.next645.1, %.preheader589 ], [ %indvars.iv644.unr, %.preheader589.prol.loopexit ] ; 3 uses
  %i.alj = mul nuw nsw i64 %indvars.iv644, 6      ; 4 uses
  %i.alk = add nuw nsw i64 %i.alj, 2              ; 2 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alk
  %i.alm = load float, ptr %i.all, align 8, !tbaa !11
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alk
  store float %i.alm, ptr %i.aln, align 4, !tbaa !11
  %i.alo = add nuw nsw i64 %i.alj, 3              ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alo
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !11
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alo
  store float %i.alq, ptr %i.alr, align 4, !tbaa !11
  %i.als = add nuw nsw i64 %i.alj, 4              ; 2 uses
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.als
  %i.alu = load float, ptr %i.alt, align 8, !tbaa !11
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.als
  store float %i.alu, ptr %i.alv, align 4, !tbaa !11
  %i.alw = add nuw nsw i64 %i.alj, 5              ; 2 uses
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.alw
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !11
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.alw
  store float %i.aly, ptr %i.alz, align 4, !tbaa !11
  %i.ama = mul nuw i64 %indvars.iv644, 6          ; 4 uses
  %i.amb = add nuw i64 %i.ama, 8                  ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amb
  %i.amd = load float, ptr %i.amc, align 8, !tbaa !11
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.amb
  store float %i.amd, ptr %i.ame, align 4, !tbaa !11
  %i.amf = add nuw i64 %i.ama, 9                  ; 2 uses
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amf
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !11
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.amf
  store float %i.amh, ptr %i.ami, align 4, !tbaa !11
  %i.amj = add nuw i64 %i.ama, 10                 ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amj
  %i.aml = load float, ptr %i.amk, align 8, !tbaa !11
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.amj
  store float %i.aml, ptr %i.amm, align 4, !tbaa !11
  %i.amn = add nuw i64 %i.ama, 11                 ; 2 uses
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.amn
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !11
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.amn
  store float %i.amp, ptr %i.amq, align 4, !tbaa !11
  %indvars.iv.next645.1 = add nuw nsw i64 %indvars.iv644, 2 ; 2 uses
  %exitcond648.not.1 = icmp eq i64 %indvars.iv.next645.1, %i.fm
  br i1 %exitcond648.not.1, label %.preheader, label %.preheader589, !llvm.loop !257

.preheader:                                       ; preds = %.preheader589.prol.loopexit, %.preheader589, %.preheader590
  %i.amr = icmp sgt i32 %.0371, 0
  br i1 %i.amr, label %.lr.ph617, label %.loopexit

.lr.ph617:                                        ; preds = %.preheader
  %.val464 = load ptr, ptr %i.az, align 8, !tbaa !234
  %i.ams = mul nsw i32 %i.ai, 3
  %i.amt = mul i32 %i.ai, 6                       ; 2 uses
  %i.amu = zext i32 %i.amt to i64
  %i.amv = or disjoint i32 %i.amt, 1
  %i.amw = zext i32 %i.amv to i64                 ; 2 uses
  %wide.trip.count652 = zext nneg i32 %.0371 to i64
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph617, %bb.fl
  %indvars.iv649 = phi i64 [ 0, %.lr.ph617 ], [ %indvars.iv.next650, %bb.fl ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv649, 3
  %i.amx = getelementptr inbounds nuw i8, ptr %.val464, i64 %.idx ; 2 uses
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !11
  %i.amz = fptosi float %i.amy to i32             ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amx, i64 4
  %i.anb = load float, ptr %i.ana, align 4, !tbaa !11
  %i.anc = fptosi float %i.anb to i32             ; 5 uses
  %.not411 = icmp sgt i32 %i.amz, %i.anc
  br i1 %.not411, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.and = load ptr, ptr %7, align 8, !tbaa !135
  %i.ane = shl nsw i32 %i.amz, 1
  %i.anf = sext i32 %i.ane to i64
  %i.ang = getelementptr inbounds [4 x i8], ptr %i.and, i64 %i.anf ; 2 uses
  store float f0xFF7FFFFF, ptr %i.ang, align 4, !tbaa !11
  %i.anh = sitofp reassoc nsz arcp contract afn i32 %i.anc to float
  br label %bb.fl

bb.fd:                                            ; preds = %bb.fb
  %i.ani = icmp slt i32 %i.ams, %i.anc
  %.pre665 = load ptr, ptr %7, align 8, !tbaa !135 ; 4 uses
  br i1 %i.ani, label %bb.fe, label %bb.fk

bb.fe:                                            ; preds = %bb.fd
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %.pre665, i64 %i.amu ; 2 uses
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !11
  %i.anl = fcmp reassoc nsz arcp contract afn oeq float %i.ank, f0xFF7FFFFF
  br i1 %i.anl, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %.pre665, i64 %i.amw ; 3 uses
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !11 ; 3 uses
  %i.ano = fcmp reassoc nsz arcp contract afn oeq float %i.ann, f0xFF7FFFFF
  %i.anp = sitofp reassoc nsz arcp contract afn i32 %i.anc to float ; 3 uses
  br i1 %i.ano, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store float %i.anp, ptr %i.anm, align 4, !tbaa !11
  br label %bb.fj

bb.fh:                                            ; preds = %bb.ff
  %i.anq = fcmp reassoc nsz arcp contract afn ogt float %i.ann, %i.anp
  %.434 = select reassoc nsz arcp contract afn i1 %i.anq, float %i.ann, float %i.anp
  store float %.434, ptr %i.anm, align 4, !tbaa !11
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fe
  %i.anr = sitofp reassoc nsz arcp contract afn i32 %i.anc to float
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.pre665, i64 %i.amw
  store float %i.anr, ptr %i.ans, align 4, !tbaa !11
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %bb.fg
  store float f0xFF7FFFFF, ptr %i.anj, align 4, !tbaa !11
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fd
  %i.ant = shl nsw i32 %i.amz, 1
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds [4 x i8], ptr %.pre665, i64 %i.anu ; 2 uses
  store float f0xFF7FFFFF, ptr %i.anv, align 4, !tbaa !11
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fc
  %.sink782 = phi ptr [ %i.anv, %bb.fk ], [ %i.ang, %bb.fc ]
  %.sink = phi float [ f0xFF7FFFFF, %bb.fk ], [ %i.anh, %bb.fc ]
  %i.anw = getelementptr i8, ptr %.sink782, i64 4
  store float %.sink, ptr %i.anw, align 4, !tbaa !11
  %indvars.iv.next650 = add nuw nsw i64 %indvars.iv649, 1 ; 2 uses
  %exitcond653.not = icmp eq i64 %indvars.iv.next650, %wide.trip.count652
  br i1 %exitcond653.not, label %.loopexit, label %bb.fb

.loopexit:                                        ; preds = %bb.fl, %.preheader, %bb.fa
  %i.anx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94 ; 2 uses
  %i.any = and i32 %i.anx, 4112
  %or.cond435.not = icmp eq i32 %i.any, 4112
  br i1 %or.cond435.not, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.loopexit
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.aoa = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #25 ; 0 uses
  %i.aob = load i64, ptr %10, align 8, !tbaa !132
  %i.aoc = add nsw i64 %i.aob, -1290608000
  %i.aod = sitofp reassoc nsz arcp contract afn i64 %i.aoc to double
  %i.aoe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !134
  %i.aog = sitofp reassoc nsz arcp contract afn i64 %i.aof to double
  %i.aoh = fmul reassoc nnan nsz arcp contract afn double %i.aog, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %21 = fsub reassoc nsz arcp contract afn double %i.aod, %.3
  %22 = fadd reassoc nsz arcp contract afn double %21, %i.aoh
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.anz, double noundef %22) #25
  %.pre666 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  br label %bb.fn

bb.fn:                                            ; preds = %.loopexit, %bb.fm
  %i.aoi = phi i32 [ %i.anx, %.loopexit ], [ %.pre666, %bb.fm ]
  %i.aoj = and i32 %i.aoi, 4096
  %.not.i554 = icmp eq i32 %i.aoj, 0
  %.pre668 = load ptr, ptr %i.az, align 8, !tbaa !234 ; 2 uses
  br i1 %.not.i554, label %dt_masks_dynbuf_free.exit555, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aok = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aok, ptr noundef %.pre668) #25
  %.pre667 = load ptr, ptr %i.az, align 8, !tbaa !234
  br label %dt_masks_dynbuf_free.exit555

dt_masks_dynbuf_free.exit555:                     ; preds = %bb.fn, %bb.fo
  %i.aol = phi ptr [ %.pre668, %bb.fn ], [ %.pre667, %bb.fo ]
  call void @free(ptr noundef %i.aol) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.aom = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aon = and i32 %i.aom, 4096
  %.not.i556 = icmp eq i32 %i.aon, 0
  br i1 %.not.i556, label %dt_masks_intbuf_free.exit557, label %bb.fp

bb.fp:                                            ; preds = %dt_masks_dynbuf_free.exit555
  %i.aoo = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aoo) #25
  br label %dt_masks_intbuf_free.exit557

dt_masks_intbuf_free.exit557:                     ; preds = %dt_masks_dynbuf_free.exit555, %bb.fp
  %i.aop = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.aop) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  br label %.critedge438

bb.fq:                                            ; preds = %bb.ex, %bb.ev, %.thread581
  %i.aoq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aor = and i32 %i.aoq, 4096
  %.not.i558 = icmp eq i32 %i.aor, 0
  br i1 %.not.i558, label %dt_masks_dynbuf_free.exit559, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aos = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.aot = load ptr, ptr %i.az, align 8, !tbaa !234
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aos, ptr noundef %i.aot) #25
  br label %dt_masks_dynbuf_free.exit559

dt_masks_dynbuf_free.exit559:                     ; preds = %bb.fq, %bb.fr
  %i.aou = load ptr, ptr %i.az, align 8, !tbaa !234
  call void @free(ptr noundef %i.aou) #25
  call void @free(ptr noundef nonnull %i.az) #25
  %i.aov = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.aow = and i32 %i.aov, 4096
  %.not.i560 = icmp eq i32 %i.aow, 0
  br i1 %.not.i560, label %dt_masks_intbuf_free.exit561, label %bb.fs

bb.fs:                                            ; preds = %dt_masks_dynbuf_free.exit559
  %i.aox = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bb, ptr noundef %i.aox) #25
  br label %dt_masks_intbuf_free.exit561

dt_masks_intbuf_free.exit561:                     ; preds = %dt_masks_dynbuf_free.exit559, %bb.fs
  %i.aoy = load ptr, ptr %i.ba, align 8, !tbaa !238
  call void @free(ptr noundef %i.aoy) #25
  call void @free(ptr noundef nonnull %i.ba) #25
  call void @free(ptr noundef %i.fo) #25
  %i.aoz = load ptr, ptr %5, align 8, !tbaa !135
  call void @free(ptr noundef %i.aoz) #25
  store ptr null, ptr %5, align 8, !tbaa !135
  store i32 0, ptr %6, align 4, !tbaa !28
  br i1 %i.aj, label %.critedge437, label %.critedge438

.critedge437:                                     ; preds = %dt_masks_intbuf_free.exit561
  %i.apa = load ptr, ptr %7, align 8, !tbaa !135
  call void @free(ptr noundef %i.apa) #25
  store ptr null, ptr %7, align 8, !tbaa !135
  store i32 0, ptr %8, align 4, !tbaa !28
  br label %.critedge438

.critedge438:                                     ; preds = %.critedge.thread, %dt_masks_intbuf_free.exit553, %dt_masks_intbuf_free.exit557, %dt_masks_intbuf_free.exit561, %.critedge437, %bb.v, %dt_masks_intbuf_free.exit, %.critedge, %dt_masks_dynbuf_free.exit
  %.1 = phi i32 [ 0, %bb.v ], [ 0, %dt_masks_dynbuf_free.exit ], [ 0, %.critedge ], [ 0, %dt_masks_intbuf_free.exit ], [ 1, %dt_masks_intbuf_free.exit557 ], [ 1, %dt_masks_intbuf_free.exit553 ], [ 0, %dt_masks_intbuf_free.exit561 ], [ 0, %.critedge437 ], [ 0, %.critedge.thread ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @dt_masks_dynbuf_init(i64 noundef range(i64 0, 4294967296) %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #27 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = tail call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 128) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 0, ptr %i.d, align 8, !tbaa !240
  %i.e = shl nuw nsw i64 %0, 2
  %i.f = tail call ptr @dt_alloc_aligned(i64 noundef %i.e) #25 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_dt_masks_dynbuf_growto.exit.thread, label %bb.c

_dt_masks_dynbuf_growto.exit.thread:              ; preds = %bb.b
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.b, i64 noundef %0) #25
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %.not19.i = icmp eq ptr %i.g, null
  br i1 %.not19.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !241
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.f, ptr nonnull align 4 %i.g, i64 %i.j, i1 false)
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.l = and i32 %i.k, 4096
  %.not20.i = icmp eq i32 %i.l, 0
  br i1 %.not20.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.h, align 8, !tbaa !241
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !234
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b, i64 noundef %i.m, ptr noundef nonnull %i.f, ptr noundef %i.n) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !234
  tail call void @free(ptr noundef %i.o) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %0, ptr %i.p, align 8, !tbaa !241
  store ptr %i.f, ptr %i.a, align 8, !tbaa !234
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.r = and i32 %i.q, 4096
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef nonnull %i.f) #25
  br label %bb.i

bb.i:                                             ; preds = %_dt_masks_dynbuf_growto.exit.thread, %bb.h
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.s = icmp eq ptr %.pr, null
  br i1 %i.s, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.a) #25
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ %i.a, %bb.i ], [ null, %bb.a ], [ %i.a, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_path_is_clockwise(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %.not6.i = icmp eq ptr %i.a, null
  br i1 %.not6.i, label %g_list_shorter_than.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not6.i.1 = icmp eq ptr %i.c, null
  br i1 %.not6.i.1, label %g_list_shorter_than.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %.not6.i.2 = icmp eq ptr %i.e, null
  br i1 %.not6.i.2, label %g_list_shorter_than.exit.thread, label %g_list_next_wraparound.exit

g_list_shorter_than.exit._crit_edge:              ; preds = %g_list_next_wraparound.exit
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.u, 0.000000e+00
  %i.g = zext i1 %i.f to i32
  br label %g_list_shorter_than.exit.thread

g_list_next_wraparound.exit:                      ; preds = %bb.c, %g_list_next_wraparound.exit
  %.01625 = phi ptr [ %i.i, %g_list_next_wraparound.exit ], [ %i.a, %bb.c ] ; 2 uses
  %.01524 = phi float [ %i.u, %g_list_next_wraparound.exit ], [ 0.000000e+00, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.01625, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %.not6.i19 = icmp eq ptr %i.i, null             ; 2 uses
  %spec.select = select i1 %.not6.i19, ptr %i.a, ptr %i.i
  %i.j = load ptr, ptr %.01625, align 8, !tbaa !31 ; 2 uses
  %i.k = load ptr, ptr %spec.select, align 8, !tbaa !31 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !11
  %i.m = load float, ptr %i.j, align 4, !tbaa !11
  %i.n = fsub reassoc nsz arcp contract afn float %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !11
end_hunk_4
begin_hunk_5_@_path_points_recurs:bb.a
  %i.bc = fptrunc reassoc nsz arcp contract afn double %3 to float ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load float, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !11
  %i.bh = fpext reassoc nsz arcp contract afn float %i.be to double
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bg, %i.be
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bc, %i.bc
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bi
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double
  %i.bm = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bm, 2.000000e+00
  %i.bo = fsub reassoc nsz arcp contract afn double 3.000000e+00, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bo, %i.bl
  %i.bq = fadd reassoc nsz arcp contract afn double %i.bp, %i.bh
  %i.br = fptrunc reassoc nsz arcp contract afn double %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 4
  tail call fastcc void @_path_border_get_XY(float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, float noundef %i.ay, float noundef %i.az, float noundef %i.bb, float noundef %i.bc, float noundef %i.br, ptr noundef %5, ptr noundef %i.bs, ptr noundef %7, ptr noundef %i.bt)
  %.pre.pre = load float, ptr %5, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi float [ %.pre.pre, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %i.bu = fsub reassoc nsz arcp contract afn double %3, %2
  %i.bv = fcmp reassoc nsz arcp contract afn olt double %i.bu, 1.000000e-04
  br i1 %i.bv, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.pre103 = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bw = load float, ptr %4, align 4, !tbaa !11
  %i.bx = fptosi float %i.bw to i32
  %i.by = fptosi float %.pre to i32
  %or.cond = icmp eq i32 %i.bx, %i.by
  br i1 %or.cond, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !11
  %i.cb = fptosi float %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11 ; 3 uses
  %i.ce = fptosi float %i.cd to i32
  %or.cond93 = icmp eq i32 %i.cb, %i.ce
  br i1 %or.cond93, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load float, ptr %6, align 4, !tbaa !11
  %i.cg = fptosi float %i.cf to i32
  %i.ch = load float, ptr %7, align 4, !tbaa !11
  %i.ci = fptosi float %i.ch to i32
  %or.cond94 = icmp eq i32 %i.cg, %i.ci
  br i1 %or.cond94, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  %i.cl = fptosi float %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11
  %i.co = fptosi float %i.cn to i32
  %or.cond95 = icmp eq i32 %i.cl, %i.co
  br i1 %or.cond95, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge, %bb.j, %bb.h
  %i.cp = phi float [ %.pre103, %._crit_edge ], [ %i.cd, %bb.j ], [ %i.cd, %bb.h ]
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !240 ; 2 uses
  %i.ct = add i64 %i.cs, 2                        ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !241 ; 3 uses
  %.not.i = icmp ult i64 %i.ct, %i.cv
  br i1 %.not.i, label %bb.n, label %bb.l, !prof !242

bb.l:                                             ; preds = %bb.k
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %dt_masks_dynbuf_add_2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = shl i64 %i.cv, 1
  %i.cy = add i64 %i.cx, 2
  %i.cz = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %10, i64 noundef %i.cy)
  %.not11.i = icmp eq i32 %i.cz, 0
  br i1 %.not11.i, label %dt_masks_dynbuf_add_2.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load i64, ptr %i.cr, align 8, !tbaa !240 ; 2 uses
  %.pre12.i = add i64 %.pre.i, 2
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  %.pre-phi.i = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.ct, %bb.k ]
  %i.da = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.cs, %bb.k ]
  %i.db = load ptr, ptr %10, align 8, !tbaa !234
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da ; 2 uses
  store float %.pre, ptr %i.dc, align 4, !tbaa !11
  store i64 %.pre-phi.i, ptr %i.cr, align 8, !tbaa !240
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  store float %i.cp, ptr %i.dd, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit

dt_masks_dynbuf_add_2.exit:                       ; preds = %bb.l, %bb.m, %bb.n
  %i.de = load float, ptr %5, align 4, !tbaa !11
  store float %i.de, ptr %8, align 4, !tbaa !11
  %i.df = load float, ptr %i.cq, align 4, !tbaa !11
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !11
  %.not92 = icmp eq i32 %12, 0
  br i1 %.not92, label %bb.t, label %bb.o

bb.o:                                             ; preds = %dt_masks_dynbuf_add_2.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.di = load <2 x float>, ptr %7, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !240 ; 2 uses
  %i.dl = add i64 %i.dk, 2                        ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !241 ; 3 uses
  %.not.i96 = icmp ult i64 %i.dl, %i.dn
  br i1 %.not.i96, label %bb.r, label %bb.p, !prof !242

bb.p:                                             ; preds = %bb.o
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %dt_masks_dynbuf_add_2.exit102, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = shl i64 %i.dn, 1
  %i.dq = add i64 %i.dp, 2
  %i.dr = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %i.dq)
  %.not11.i97 = icmp eq i32 %i.dr, 0
  br i1 %.not11.i97, label %dt_masks_dynbuf_add_2.exit102, label %._crit_edge.i98

._crit_edge.i98:                                  ; preds = %bb.q
  %.pre.i99 = load i64, ptr %i.dj, align 8, !tbaa !240 ; 2 uses
  %.pre12.i100 = add i64 %.pre.i99, 2
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i98, %bb.o
  %.pre-phi.i101 = phi i64 [ %.pre12.i100, %._crit_edge.i98 ], [ %i.dl, %bb.o ]
  %i.ds = phi i64 [ %.pre.i99, %._crit_edge.i98 ], [ %i.dk, %bb.o ]
  %i.dt = load ptr, ptr %11, align 8, !tbaa !234
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds
  store i64 %.pre-phi.i101, ptr %i.dj, align 8, !tbaa !240
  store <2 x float> %i.di, ptr %i.du, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit102

dt_masks_dynbuf_add_2.exit102:                    ; preds = %bb.p, %bb.q, %bb.r
  %i.dv = load float, ptr %7, align 4, !tbaa !11
  store float %i.dv, ptr %9, align 4, !tbaa !11
  %i.dw = load float, ptr %i.dh, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.dw, ptr %i.dx, align 4, !tbaa !11
  br label %bb.t

bb.s:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %i.dy = fadd reassoc nsz arcp contract afn double %3, %2
  %i.dz = fmul reassoc nsz arcp contract afn double %i.dy, 5.000000e-01 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 -36028797027352577, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 -36028797027352577, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 0, ptr %i.d, align 8
  call fastcc void @_path_points_recurs(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %i.dz, ptr noundef %4, ptr noundef %i.a, ptr noundef %6, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  call fastcc void @_path_points_recurs(ptr noundef %0, ptr noundef %1, double noundef %i.dz, double noundef %3, ptr noundef %i.c, ptr noundef %5, ptr noundef %i.d, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.t

bb.t:                                             ; preds = %dt_masks_dynbuf_add_2.exit, %dt_masks_dynbuf_add_2.exit102, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_path_border_get_XY(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %10, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %11, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %12, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %13) unnamed_addr #0 {
bb.a:
  %i.a = fsub reassoc nsz arcp contract afn float 1.000000e+00, %8 ; 4 uses
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %i.a ; 2 uses
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, %i.a ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %8, 3.000000e+00 ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.b, %i.d ; 2 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.d, %8
  %i.g = fmul reassoc nsz arcp contract afn float %i.f, %i.a ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %8, %8
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %8 ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.c, %0
  %i.k = fmul reassoc nsz arcp contract afn float %i.e, %2
  %14 = fmul reassoc nsz arcp contract afn float %i.g, %4
  %i.l = fmul reassoc nsz arcp contract afn float %i.i, %6
  %i.m = fadd reassoc nsz arcp contract afn float %i.k, %i.l
  %15 = fadd reassoc nsz arcp contract afn float %i.m, %i.j
  %i.n = fadd reassoc nsz arcp contract afn float %15, %14
  store float %i.n, ptr %10, align 4, !tbaa !11
  %i.o = fmul reassoc nsz arcp contract afn float %i.c, %1
  %i.p = fmul reassoc nsz arcp contract afn float %i.e, %3
  %16 = fmul reassoc nsz arcp contract afn float %i.g, %5
  %i.q = fmul reassoc nsz arcp contract afn float %i.i, %7
  %i.r = fadd reassoc nsz arcp contract afn float %i.p, %i.q
  %17 = fadd reassoc nsz arcp contract afn float %i.r, %i.o
  %i.s = fadd reassoc nsz arcp contract afn float %17, %16
  store float %i.s, ptr %11, align 4, !tbaa !11
  %i.t = fpext reassoc nsz arcp contract afn float %8 to double ; 4 uses
  %i.u = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.t ; 3 uses
  %i.v = fmul reassoc nsz arcp contract afn double %i.t, %i.t ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn double %i.u, %i.u ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn double %i.t, 2.000000e+00
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, %i.u ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn double %i.w, %i.z
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 3.000000e+00 ; 2 uses
  %i.ac = fsub reassoc nsz arcp contract afn double %i.z, %i.v
  %i.ad = fmul reassoc nsz arcp contract afn double %i.ac, 3.000000e+00 ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn double %i.v, 3.000000e+00 ; 2 uses
  %i.af = fneg reassoc nsz arcp contract afn float %0
  %i.ag = fpext reassoc nsz arcp contract afn float %i.af to double
  %i.ah = fmul reassoc nsz arcp contract afn double %i.x, %i.ag
  %i.ai = fpext reassoc nsz arcp contract afn float %2 to double
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ab, %i.ai
  %i.ak = fpext reassoc nsz arcp contract afn float %4 to double
  %i.al = fmul reassoc nsz arcp contract afn double %i.ad, %i.ak
  %i.am = fpext reassoc nsz arcp contract afn float %6 to double
  %i.an = fmul reassoc nsz arcp contract afn double %i.ae, %i.am
  %18 = fadd reassoc nsz arcp contract afn double %i.ah, %i.an
  %19 = fadd reassoc nsz arcp contract afn double %18, %i.aj
  %i.ao = fadd reassoc nsz arcp contract afn double %19, %i.al ; 4 uses
  %i.ap = fneg reassoc nsz arcp contract afn float %1
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fmul reassoc nsz arcp contract afn double %i.x, %i.aq
  %i.as = fpext reassoc nsz arcp contract afn float %3 to double
  %i.at = fmul reassoc nsz arcp contract afn double %i.ab, %i.as
  %i.au = fpext reassoc nsz arcp contract afn float %5 to double
  %i.av = fmul reassoc nsz arcp contract afn double %i.ad, %i.au
  %i.aw = fpext reassoc nsz arcp contract afn float %7 to double
  %i.ax = fmul reassoc nsz arcp contract afn double %i.ae, %i.aw
  %20 = fadd reassoc nsz arcp contract afn double %i.ar, %i.ax
  %21 = fadd reassoc nsz arcp contract afn double %20, %i.at
  %i.ay = fadd reassoc nsz arcp contract afn double %21, %i.av ; 4 uses
  %i.az = fcmp reassoc nsz arcp contract afn oeq double %i.ao, 0.000000e+00
  %i.ba = fcmp reassoc nsz arcp contract afn oeq double %i.ay, 0.000000e+00
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float f0xFF7FFFFF, ptr %12, align 4, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ao, %i.ao
  %i.bc = fmul reassoc nsz arcp contract afn double %i.ay, %i.ay
  %i.bd = fadd reassoc nsz arcp contract afn double %i.bb, %i.bc
  %i.be = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.bd)
  %i.bf = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.be ; 2 uses
  %i.bg = load float, ptr %10, align 4, !tbaa !11
  %i.bh = fpext reassoc nsz arcp contract afn float %i.bg to double
  %i.bi = fpext reassoc nsz arcp contract afn float %9 to double ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn double %i.ay, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn double %i.bj, %i.bf
  %i.bl = fadd reassoc nsz arcp contract afn double %i.bk, %i.bh
  %i.bm = fptrunc reassoc nsz arcp contract afn double %i.bl to float
  store float %i.bm, ptr %12, align 4, !tbaa !11
  %i.bn = load float, ptr %11, align 4, !tbaa !11
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fmul reassoc nsz arcp contract afn double %i.ao, %i.bi
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, %i.bf
  %i.br = fsub reassoc nsz arcp contract afn double %i.bo, %i.bq
  %i.bs = fptrunc reassoc nsz arcp contract afn double %i.br to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi float [ %i.bs, %bb.c ], [ f0xFF7FFFFF, %bb.b ]
  store float %storemerge, ptr %13, align 4, !tbaa !11
  ret void
}

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_dt_masks_dynbuf_growto(ptr noundef %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = shl i64 %1, 2
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef %i.a) #25 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 64) ]
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i64 noundef %1) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !234    ; 2 uses
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !241
  %i.g = shl i64 %i.f, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.i = and i32 %i.h, 4096
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.e, align 8, !tbaa !241
  %i.l = load ptr, ptr %0, align 8, !tbaa !234
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull %i.b, ptr noundef %i.l) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !234
  tail call void @free(ptr noundef %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %1, ptr %i.n, align 8, !tbaa !241
  store ptr %i.b, ptr %0, align 8, !tbaa !234
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_dt_masks_intbuf_growto(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = shl i64 %1, 2
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef %i.a) #25 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 64) ]
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.c, i64 noundef %1) #25
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !238    ; 2 uses
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !239
  %i.g = shl i64 %i.f, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !94
  %i.i = and i32 %i.h, 4096
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.e, align 8, !tbaa !239
  %i.l = load ptr, ptr %0, align 8, !tbaa !238
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.32, ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull %i.b, ptr noundef %i.l) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !238
  tail call void @free(ptr noundef %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %1, ptr %i.n, align 8, !tbaa !239
  store ptr %i.b, ptr %0, align 8, !tbaa !238
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_optimize_intersection_points(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 0) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #19 {
bb.a:
  %i.a = sub nsw i32 %3, %1                       ; 8 uses
  %i.b = load i32, ptr %4, align 4, !tbaa !28     ; 3 uses
  %.not.i = icmp slt i32 %i.b, %2
  %i.c = select i1 %.not.i, i32 %i.a, i32 0
  %i.d = load i32, ptr %5, align 4, !tbaa !28     ; 3 uses
  %.not.i68 = icmp slt i32 %i.d, %2
  %i.e = select i1 %.not.i68, i32 %i.a, i32 0
  %i.f = add nsw i32 %i.e, %i.d
  %i.g = add i32 %i.b, 42
  %i.h = add i32 %i.g, %i.c
  %i.i = icmp sgt i32 %i.h, %i.f
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = xor i32 %1, -1                           ; 2 uses
  %invariant.op = sub i32 1, %1
  %invariant.op105 = sub i32 1, %1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %.pre93 = phi i32 [ %i.b, %.preheader ], [ %.pre, %.backedge ] ; 8 uses
  %i.k = phi i32 [ %i.d, %.preheader ], [ %i.di, %.backedge ] ; 2 uses
  %.083 = phi i32 [ 0, %.preheader ], [ %.083.be, %.backedge ] ; 3 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !11 ; 3 uses
  %i.p = getelementptr i8, ptr %i.n, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !11 ; 3 uses
  %i.r = shl nsw i32 %.pre93, 1
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !11
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !11
end_hunk_5
