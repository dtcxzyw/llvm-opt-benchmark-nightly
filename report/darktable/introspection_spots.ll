Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_process:bb.a
  %i.lb = fmul reassoc nsz arcp contract afn float %i.io, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kx
  store float %i.lc, ptr %i.kw, align 4, !tbaa !34
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !34 ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !34
  %i.lh = fsub reassoc nsz arcp contract afn float %i.lg, %i.le
  %i.li = fmul reassoc nsz arcp contract afn float %i.io, %i.lh
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, %i.le
  store float %i.lj, ptr %i.ld, align 4, !tbaa !34
  %indvars.iv.next344.1 = add nuw nsw i64 %indvars.iv343, 2 ; 2 uses
  %i.lk = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.1 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !34 ; 2 uses
  %i.lm = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.1
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !34
  %i.lo = fsub reassoc nsz arcp contract afn float %i.ln, %i.ll
  %i.lp = fmul reassoc nsz arcp contract afn float %i.io, %i.lo
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.ll
  store float %i.lq, ptr %i.lk, align 4, !tbaa !34
  %indvars.iv.next344.2 = add nuw nsw i64 %indvars.iv343, 3 ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv.next344.2 ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !34 ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %i.jd, i64 %indvars.iv.next344.2
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !34
  %i.lv = fsub reassoc nsz arcp contract afn float %i.lu, %i.ls
  %i.lw = fmul reassoc nsz arcp contract afn float %i.io, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, %i.ls
  store float %i.lx, ptr %i.lr, align 4, !tbaa !34
  %indvars.iv.next344.3 = add nuw nsw i64 %indvars.iv343, 4 ; 2 uses
  %exitcond346.not.3 = icmp eq i64 %indvars.iv.next344.3, %wide.trip.count
  br i1 %exitcond346.not.3, label %..loopexit302_crit_edge.us, label %vec.epilog.scalar.ph449, !llvm.loop !183

..loopexit302_crit_edge.us:                       ; preds = %vec.epilog.scalar.ph449.prol.loopexit, %vec.epilog.scalar.ph449, %middle.block445, %vec.epilog.middle.block461, %bb.q, %bb.p, %bb.o, %.lr.ph317.split.us
  %indvars.iv.next348 = add nsw i64 %indvars.iv347, 1 ; 2 uses
  %i.ly = icmp slt i64 %indvars.iv.next348, %i.hd
  br i1 %i.ly, label %.lr.ph317.split.us, label %.loopexit305

.loopexit305:                                     ; preds = %..loopexit302_crit_edge.us, %.lr.ph317, %bb.n, %bb.m, %bb.k, %bb.l
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.lz = icmp slt i64 %indvars.iv.next351, %i.hg
  br i1 %i.lz, label %bb.k, label %._crit_edge

bb.r:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !201 ; 2 uses
  %.not.i270 = icmp eq ptr %i.mb, null
  br i1 %.not.i270, label %dt_masks_get_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 88
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !203 ; 2 uses
  %.not12.i = icmp eq ptr %i.md, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.me = call i32 %i.md(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #16, !inline_history !184 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !38
  %.pre371 = load float, ptr %i.ac, align 4, !tbaa !92
  %.pre372 = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre373 = load i32, ptr %i.j, align 4, !tbaa !38
  %.pre374 = load i32, ptr %i.l, align 4, !tbaa !38
  %i.mf = sitofp reassoc nsz arcp contract afn i32 %.pre to float
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %.pre372 to float
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %.pre373 to float
  %i.mi = sitofp reassoc nsz arcp contract afn i32 %.pre374 to float
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.mj = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mi, %bb.t ]
  %i.mk = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mh, %bb.t ]
  %i.ml = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mg, %bb.t ]
  %i.mm = phi float [ %i.bc, %bb.r ], [ %i.bc, %bb.s ], [ %.pre371, %bb.t ] ; 7 uses
  %i.mn = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mf, %bb.t ]
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mm, %i.mn
  %i.mp = fptosi float %i.mo to i32               ; 3 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, %i.ml
  %i.mr = fptosi float %i.mq to i32
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mm, %i.mk
  %i.mt = fptosi float %i.ms to i32               ; 3 uses
  %i.mu = fmul reassoc nsz arcp contract afn float %i.mm, %i.mj
  %i.mv = fptosi float %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !43 ; 3 uses
  %i.my = and i32 %i.mx, 2
  %.not.i271 = icmp eq i32 %i.my, 0
  br i1 %.not.i271, label %bb.u, label %masks_point_calc_delta.exit.i

masks_point_calc_delta.exit.i:                    ; preds = %dt_masks_get_mask.exit
  %i.mz = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !41
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val44.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val45.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val46.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nc = getelementptr i8, ptr %.val46.i, i64 144
  %i.nd = load <2 x float>, ptr %i.na, align 4, !tbaa !34
  %i.ne = load <2 x float>, ptr %i.nb, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.nf = load <2 x i32>, ptr %i.nc, align 16, !tbaa !38
  %i.ng = sitofp reassoc nsz arcp contract afn <2 x i32> %i.nf to <2 x float>
  %i.nh = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nj = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nk = fmul reassoc nsz arcp contract afn <4 x float> %i.ni, %i.nj
  %i.nl = shufflevector <2 x float> %i.nd, <2 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nm = fmul reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nl
  store <4 x float> %i.nm, ptr %i.c, align 16, !tbaa !34
  %i.nn = sitofp reassoc nsz arcp contract afn i32 %.val44.i to double
  %i.no = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val45.i, ptr noundef %.val46.i, double noundef %i.nn, i32 noundef 3, ptr noundef nonnull %i.c, i64 noundef 2) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.no, 0
  %i.np = load <2 x float>, ptr %i.c, align 16
  %i.nq = load <2 x float>, ptr %i.aq, align 8
  %i.nr = fsub reassoc nsz arcp contract afn <2 x float> %i.np, %i.nq
  %i.ns = fptosi <2 x float> %i.nr to <2 x i32>
  %i.nt = select i1 %.not.i.i, <2 x i32> zeroinitializer, <2 x i32> %i.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %masks_get_delta.exit

bb.u:                                             ; preds = %dt_masks_get_mask.exit
  %i.nu = and i32 %i.mx, 1
  %.not27.i = icmp eq i32 %i.nu, 0
  br i1 %.not27.i, label %bb.v, label %masks_point_calc_delta.exit55.i

masks_point_calc_delta.exit55.i:                  ; preds = %bb.u
  %i.nv = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !41
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val36.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val37.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val38.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ny = getelementptr i8, ptr %.val38.i, i64 144
  %i.nz = load <2 x float>, ptr %i.nw, align 4, !tbaa !34
  %i.oa = load <2 x float>, ptr %i.nx, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ob = load <2 x i32>, ptr %i.ny, align 16, !tbaa !38
  %i.oc = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ob to <2 x float>
  %i.od = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <4 x i32> zeroinitializer
  %i.of = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %i.oe, %i.of
  %i.oh = shufflevector <2 x float> %i.nz, <2 x float> %i.oa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oi = fmul reassoc nsz arcp contract afn <4 x float> %i.og, %i.oh
  store <4 x float> %i.oi, ptr %i.b, align 16, !tbaa !34
  %i.oj = sitofp reassoc nsz arcp contract afn i32 %.val36.i to double
  %i.ok = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val37.i, ptr noundef %.val38.i, double noundef %i.oj, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #16 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.ok, 0
  %i.ol = load <2 x float>, ptr %i.b, align 16
  %i.om = load <2 x float>, ptr %i.ar, align 8
  %i.on = fsub reassoc nsz arcp contract afn <2 x float> %i.ol, %i.om
  %i.oo = fptosi <2 x float> %i.on to <2 x i32>
  %i.op = select i1 %.not.i54.i, <2 x i32> zeroinitializer, <2 x i32> %i.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %masks_get_delta.exit

bb.v:                                             ; preds = %bb.u
  %i.oq = and i32 %i.mx, 32
  %.not28.i = icmp eq i32 %i.oq, 0
  br i1 %.not28.i, label %masks_get_delta.exit.thread, label %masks_point_calc_delta.exit59.i

masks_point_calc_delta.exit59.i:                  ; preds = %bb.v
  %i.or = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !41
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.val.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val29.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val30.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ou = getelementptr i8, ptr %.val30.i, i64 144
  %i.ov = load <2 x float>, ptr %i.os, align 4, !tbaa !34
  %i.ow = load <2 x float>, ptr %i.ot, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ox = load <2 x i32>, ptr %i.ou, align 16, !tbaa !38
  %i.oy = sitofp reassoc nsz arcp contract afn <2 x i32> %i.ox to <2 x float>
  %i.oz = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.pb = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pc = fmul reassoc nsz arcp contract afn <4 x float> %i.pa, %i.pb
  %i.pd = shufflevector <2 x float> %i.ov, <2 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pe = fmul reassoc nsz arcp contract afn <4 x float> %i.pc, %i.pd
  store <4 x float> %i.pe, ptr %i.a, align 16, !tbaa !34
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %.val.i to double
  %i.pg = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val29.i, ptr noundef %.val30.i, double noundef %i.pf, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #16 ; 2 uses
  %.not.i58.i = icmp eq i32 %i.pg, 0
  %i.ph = load <2 x float>, ptr %i.a, align 16
  %i.pi = load <2 x float>, ptr %i.as, align 8
  %i.pj = fsub reassoc nsz arcp contract afn <2 x float> %i.ph, %i.pi
  %i.pk = fptosi <2 x float> %i.pj to <2 x i32>
  %i.pl = select i1 %.not.i58.i, <2 x i32> zeroinitializer, <2 x i32> %i.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %masks_get_delta.exit

masks_get_delta.exit:                             ; preds = %masks_point_calc_delta.exit.i, %masks_point_calc_delta.exit55.i, %masks_point_calc_delta.exit59.i
  %.0.i272 = phi i32 [ %i.no, %masks_point_calc_delta.exit.i ], [ %i.pg, %masks_point_calc_delta.exit59.i ], [ %i.ok, %masks_point_calc_delta.exit55.i ]
  %i.pm = phi <2 x i32> [ %i.nt, %masks_point_calc_delta.exit.i ], [ %i.pl, %masks_point_calc_delta.exit59.i ], [ %i.op, %masks_point_calc_delta.exit55.i ] ; 3 uses
  %.not250.not = icmp eq i32 %.0.i272, 0
  br i1 %.not250.not, label %masks_get_delta.exit.thread, label %bb.w

masks_get_delta.exit.thread:                      ; preds = %bb.v, %masks_get_delta.exit
  %i.pn = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

bb.w:                                             ; preds = %masks_get_delta.exit
  %7 = icmp ne <2 x i32> %i.pm, zeroinitializer   ; 2 uses
  %8 = extractelement <2 x i1> %7, i64 0
  %9 = extractelement <2 x i1> %7, i64 1
  %or.cond = select i1 %8, i1 true, i1 %9
  br i1 %or.cond, label %.preheader306, label %..loopexit307_crit_edge

..loopexit307_crit_edge:                          ; preds = %bb.w
  %.pre375 = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

.preheader306:                                    ; preds = %bb.w
  %i.po = add i32 %i.mp, -1
  %i.pp = add i32 %i.po, %i.mr                    ; 2 uses
  %.0223327 = add nsw i32 %i.mp, 1                ; 2 uses
  %i.pq = icmp slt i32 %.0223327, %i.pp
  %.pre376 = load ptr, ptr %i.i, align 8          ; 3 uses
  br i1 %i.pq, label %.lr.ph330, label %.loopexit307

.lr.ph330:                                        ; preds = %.preheader306
  %i.pr = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.ps = add i32 %i.mt, -1
  %i.pt = add i32 %i.ps, %i.mv                    ; 2 uses
  %.0222324 = add i32 %i.mt, 1                    ; 2 uses
  %i.pu = icmp sge i32 %.0222324, %i.pt
  %i.pv = load i32, ptr %i.l, align 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.px = extractelement <2 x i32> %i.pm, i64 0
  %i.py = sext i32 %i.px to i64                   ; 2 uses
  %i.pz = sext i32 %.0222324 to i64
  %i.qa = sext i32 %.0223327 to i64
  %i.qb = sext i32 %i.pr to i64                   ; 2 uses
  %i.qc = extractelement <2 x i32> %i.pm, i64 1   ; 2 uses
  %i.qd = sext i32 %i.qc to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph330, %.loopexit303
  %indvars.iv363 = phi i64 [ %i.qa, %.lr.ph330 ], [ %indvars.iv.next364, %.loopexit303 ] ; 7 uses
  %i.qe = icmp slt i64 %indvars.iv363, %i.qb
  br i1 %i.qe, label %.loopexit303, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qf = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.qg = add nsw i32 %i.qf, %i.pr
  %i.qh = sext i32 %i.qg to i64
  %.not251 = icmp slt i64 %indvars.iv363, %i.qh
  br i1 %.not251, label %bb.z, label %.loopexit303

bb.z:                                             ; preds = %bb.y
  %i.qi = sub nsw i64 %indvars.iv363, %i.qd       ; 2 uses
  %i.qj = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = icmp slt i64 %i.qi, %i.qk
  br i1 %i.ql, label %.loopexit303, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qm = load i32, ptr %i.an, align 4, !tbaa !94
  %i.qn = add nsw i32 %i.qm, %i.qj
  %i.qo = sext i32 %i.qn to i64
  %.not252 = icmp sge i64 %i.qi, %i.qo
  %brmerge338 = select i1 %.not252, i1 true, i1 %i.pu
  br i1 %brmerge338, label %.loopexit303, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.aa
  %i.qp = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.qq = trunc i64 %indvars.iv363 to i32
  %i.qr = sub i32 %i.qq, %i.mp
  %i.qs = sitofp reassoc nsz arcp contract afn i32 %i.qr to float
  %i.qt = sub nsw i64 %indvars.iv363, %i.qb
  %i.qu = sext i32 %i.qp to i64                   ; 2 uses
  %i.qv = add i32 %i.qc, %i.qj
  %i.qw = trunc nsw i64 %indvars.iv363 to i32
  %i.qx = sub i32 %i.qw, %i.qv
  %i.qy = sext i32 %i.qx to i64
  br i1 %i.ap, label %.lr.ph326.split.us, label %.loopexit303

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %..loopexit_crit_edge.us
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %..loopexit_crit_edge.us ], [ %i.pz, %.lr.ph326 ] ; 7 uses
  %i.qz = icmp slt i64 %indvars.iv358, %i.qu
  br i1 %i.qz, label %..loopexit_crit_edge.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph326.split.us
  %i.ra = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.rb = add nsw i32 %i.ra, %i.qp
  %i.rc = sext i32 %i.rb to i64
  %.not253.us = icmp slt i64 %indvars.iv358, %i.rc
  br i1 %.not253.us, label %bb.ac, label %..loopexit_crit_edge.us

bb.ac:                                            ; preds = %bb.ab
  %i.rd = sub nsw i64 %indvars.iv358, %i.py       ; 2 uses
  %i.re = load i32, ptr %4, align 4, !tbaa !95    ; 2 uses
  %i.rf = sext i32 %i.re to i64                   ; 2 uses
  %i.rg = icmp slt i64 %i.rd, %i.rf
  br i1 %i.rg, label %..loopexit_crit_edge.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rh = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.ri = add nsw i32 %i.rh, %i.re
  %i.rj = sext i32 %i.ri to i64
  %.not254.us = icmp slt i64 %i.rd, %i.rj
  br i1 %.not254.us, label %iter.check, label %..loopexit_crit_edge.us

iter.check:                                       ; preds = %bb.ad
  %i.rk = load float, ptr %i.ac, align 4, !tbaa !92 ; 2 uses
  %i.rl = fdiv reassoc nsz arcp contract afn float %i.qs, %i.rk
  %i.rm = fptosi float %i.rl to i32
  %i.rn = mul nsw i32 %i.pv, %i.rm
  %i.ro = trunc i64 %indvars.iv358 to i32
  %i.rp = sub i32 %i.ro, %i.mt
  %i.rq = sitofp reassoc nsz arcp contract afn i32 %i.rp to float
  %i.rr = fdiv reassoc nsz arcp contract afn float %i.rq, %i.rk
  %i.rs = fptosi float %i.rr to i32
  %i.rt = add nsw i32 %i.rn, %i.rs
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %.pre376, i64 %i.ru
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !34
  %i.rx = load float, ptr %i.pw, align 4, !tbaa !204
  %i.ry = fmul reassoc nsz arcp contract afn float %i.rx, %i.rw ; 7 uses
  %i.rz = sext i32 %i.ra to i64
  %i.sa = mul nuw nsw i64 %i.qt, %i.rz
  %i.sb = sub nsw i64 %indvars.iv358, %i.qu
  %i.sc = add i64 %i.sb, %i.sa                    ; 2 uses
  %i.sd = mul i64 %i.sc, %i.r
  %i.se = getelementptr [4 x i8], ptr %3, i64 %i.sd ; 8 uses
  %i.sf = sext i32 %i.rh to i64
  %i.sg = mul nsw i64 %i.sf, %i.qy
  %i.sh = add nsw i64 %i.py, %i.rf
  %i.si = sub nsw i64 %indvars.iv358, %i.sh
  %i.sj = add nsw i64 %i.si, %i.sg                ; 2 uses
  %i.sk = mul i64 %i.sj, %i.r
  %i.sl = getelementptr [4 x i8], ptr %2, i64 %i.sk ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sm = mul i64 %i.sc, %i.r
  %i.sn = add i64 %i.sm, %wide.trip.count
  %i.so = shl i64 %i.sn, 2
  %i.sp = getelementptr i8, ptr %3, i64 %i.so
  %i.sq = mul i64 %i.sj, %i.r
  %i.sr = add i64 %i.sq, %wide.trip.count
  %i.ss = shl i64 %i.sr, 2
  %i.st = getelementptr i8, ptr %2, i64 %i.ss
  %bound0 = icmp ult ptr %i.se, %i.st
  %bound1 = icmp ult ptr %i.sl, %i.sp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ry, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.su = getelementptr [4 x i8], ptr %i.se, i64 %index ; 5 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 32     ; 2 uses
  %i.sw = getelementptr i8, ptr %i.su, i64 64     ; 2 uses
  %i.sx = getelementptr i8, ptr %i.su, i64 96     ; 2 uses
  %wide.load = load <8 x float>, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load401 = load <8 x float>, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load402 = load <8 x float>, ptr %i.sw, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load403 = load <8 x float>, ptr %i.sx, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.sy = getelementptr [4 x i8], ptr %i.sl, i64 %index ; 4 uses
  %i.sz = getelementptr i8, ptr %i.sy, i64 32
  %i.ta = getelementptr i8, ptr %i.sy, i64 64
  %i.tb = getelementptr i8, ptr %i.sy, i64 96
  %wide.load404 = load <8 x float>, ptr %i.sy, align 4, !tbaa !34, !alias.scope !206
  %wide.load405 = load <8 x float>, ptr %i.sz, align 4, !tbaa !34, !alias.scope !206
  %wide.load406 = load <8 x float>, ptr %i.ta, align 4, !tbaa !34, !alias.scope !206
  %wide.load407 = load <8 x float>, ptr %i.tb, align 4, !tbaa !34, !alias.scope !206
  %i.tc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load404, %wide.load
  %i.td = fsub reassoc nsz arcp contract afn <8 x float> %wide.load405, %wide.load401
  %i.te = fsub reassoc nsz arcp contract afn <8 x float> %wide.load406, %wide.load402
  %i.tf = fsub reassoc nsz arcp contract afn <8 x float> %wide.load407, %wide.load403
  %i.tg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tc
  %i.th = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.td
  %i.ti = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.te
  %i.tj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tf
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %i.tg, %wide.load
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %i.th, %wide.load401
  %i.tm = fadd reassoc nsz arcp contract afn <8 x float> %i.ti, %wide.load402
  %i.tn = fadd reassoc nsz arcp contract afn <8 x float> %i.tj, %wide.load403
  store <8 x float> %i.tk, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tl, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tm, ptr %i.sw, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tn, ptr %i.sx, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.to = icmp eq i64 %index.next, %n.vec
  br i1 %i.to, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert409 = insertelement <4 x float> poison, float %i.ry, i64 0
  %broadcast.splat410 = shufflevector <4 x float> %broadcast.splatinsert409, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index411 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next414, %vec.epilog.vector.body ] ; 3 uses
  %i.tp = getelementptr [4 x i8], ptr %i.se, i64 %index411 ; 2 uses
  %wide.load412 = load <4 x float>, ptr %i.tp, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.tq = getelementptr [4 x i8], ptr %i.sl, i64 %index411
  %wide.load413 = load <4 x float>, ptr %i.tq, align 4, !tbaa !34, !alias.scope !206
  %i.tr = fsub reassoc nsz arcp contract afn <4 x float> %wide.load413, %wide.load412
  %i.ts = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat410, %i.tr
  %i.tt = fadd reassoc nsz arcp contract afn <4 x float> %i.ts, %wide.load412
  store <4 x float> %i.tt, ptr %i.tp, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next414 = add nuw i64 %index411, 4       ; 2 uses
  %i.tu = icmp eq i64 %index.next414, %n.vec408
  br i1 %i.tu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n415, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv353.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec408, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod500.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv353.prol = phi i64 [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter501 = phi i64 [ %prol.iter501.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tv = getelementptr [4 x i8], ptr %i.se, i64 %indvars.iv353.prol ; 2 uses
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !34 ; 2 uses
  %i.tx = getelementptr [4 x i8], ptr %i.sl, i64 %indvars.iv353.prol
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !34
end_hunk_0
