Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_spots?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_process:bb.a
  %i.lx = icmp slt i64 %indvars.iv.next348.a, %i.hi
  br i1 %i.lx, label %.lr.ph317.split.us, label %.loopexit305.a

.loopexit305.a:                                   ; preds = %..loopexit302_crit_edge.us, %.lr.ph317, %bb.n, %bb.m, %bb.k, %bb.l
  %indvars.iv.next351.a = add nsw i64 %indvars.iv350.a, 1 ; 2 uses
  %i.ly = icmp slt i64 %indvars.iv.next351.a, %i.hl
  br i1 %i.ly, label %bb.k, label %._crit_edge

bb.r:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !201 ; 2 uses
  %.not.i270 = icmp eq ptr %i.ma, null
  br i1 %.not.i270, label %dt_masks_get_mask.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 88
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !203 ; 2 uses
  %.not12.i = icmp eq ptr %i.mc, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.md = call i32 %i.mc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #16, !inline_history !184 ; 0 uses
  %.pre = load i32, ptr %i.k, align 4, !tbaa !38
  %.pre371.a = load float, ptr %i.ac, align 4, !tbaa !92
  %.pre372.a = load i32, ptr %i.m, align 4, !tbaa !38
  %.pre373.a = load i32, ptr %i.j, align 4, !tbaa !38
  %.pre374 = load i32, ptr %i.l, align 4, !tbaa !38
  %i.me = sitofp reassoc nsz arcp contract afn i32 %.pre to float
  %i.mf = sitofp reassoc nsz arcp contract afn i32 %.pre372.a to float
  %i.mg = sitofp reassoc nsz arcp contract afn i32 %.pre373.a to float
  %i.mh = sitofp reassoc nsz arcp contract afn i32 %.pre374 to float
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.r, %bb.s, %bb.t
  %i.mi = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mh, %bb.t ]
  %i.mj = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mg, %bb.t ]
  %i.mk = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.mf, %bb.t ]
  %i.ml = phi float [ %i.bh, %bb.r ], [ %i.bh, %bb.s ], [ %.pre371.a, %bb.t ] ; 7 uses
  %i.mm = phi float [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.s ], [ %i.me, %bb.t ]
  %i.mn = fmul reassoc nsz arcp contract afn float %i.ml, %i.mm
  %i.mo = fptosi float %i.mn to i32               ; 4 uses
  %i.mp = fmul reassoc nsz arcp contract afn float %i.ml, %i.mk
  %i.mq = fptosi float %i.mp to i32               ; 2 uses
  %i.mr = fmul reassoc nsz arcp contract afn float %i.ml, %i.mj
  %i.ms = fptosi float %i.mr to i32               ; 4 uses
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ml, %i.mi
  %i.mu = fptosi float %i.mt to i32               ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !43 ; 3 uses
  %i.mx = and i32 %i.mw, 2
  %.not.i271 = icmp eq i32 %i.mx, 0
  br i1 %.not.i271, label %bb.u, label %masks_point_calc_delta.exit.i

masks_point_calc_delta.exit.i:                    ; preds = %dt_masks_get_mask.exit
  %i.my = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !41
  %i.na = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val44.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val45.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val46.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nb = getelementptr i8, ptr %.val46.i, i64 144
  %i.nc = load <2 x float>, ptr %i.mz, align 4, !tbaa !34
  %i.nd = load <2 x float>, ptr %i.na, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ne = load <2 x i32>, ptr %i.nb, align 16, !tbaa !38
  %i.nf = sitofp <2 x i32> %i.ne to <2 x float>
  %i.ng = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ni = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nj = fmul reassoc nsz arcp contract afn <4 x float> %i.nh, %i.ni
  %i.nk = shufflevector <2 x float> %i.nc, <2 x float> %i.nd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nl = fmul reassoc nsz arcp contract afn <4 x float> %i.nj, %i.nk
  store <4 x float> %i.nl, ptr %i.c, align 16, !tbaa !34
  %i.nm = sitofp reassoc nsz arcp contract afn i32 %.val44.i to double
  %i.nn = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val45.i, ptr noundef %.val46.i, double noundef %i.nm, i32 noundef 3, ptr noundef nonnull %i.c, i64 noundef 2) #16 ; 2 uses
  %.not.i.i = icmp eq i32 %i.nn, 0
  %i.no = load <2 x float>, ptr %i.c, align 16
  %i.np = load <2 x float>, ptr %i.aq, align 8
  %i.nq = fsub reassoc nsz arcp contract afn <2 x float> %i.no, %i.np
  %i.nr = fptosi <2 x float> %i.nq to <2 x i32>
  %i.ns = select i1 %.not.i.i, <2 x i32> zeroinitializer, <2 x i32> %i.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %masks_get_delta.exit

bb.u:                                             ; preds = %dt_masks_get_mask.exit
  %i.nt = and i32 %i.mw, 1
  %.not27.i = icmp eq i32 %i.nt, 0
  br i1 %.not27.i, label %bb.v, label %masks_point_calc_delta.exit55.i

masks_point_calc_delta.exit55.i:                  ; preds = %bb.u
  %i.nu = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !41
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val36.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val37.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val38.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.nx = getelementptr i8, ptr %.val38.i, i64 144
  %i.ny = load <2 x float>, ptr %i.nv, align 4, !tbaa !34
  %i.nz = load <2 x float>, ptr %i.nw, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.oa = load <2 x i32>, ptr %i.nx, align 16, !tbaa !38
  %i.ob = sitofp <2 x i32> %i.oa to <2 x float>
  %i.oc = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> zeroinitializer
  %i.oe = shufflevector <2 x float> %i.ob, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.of = fmul reassoc nsz arcp contract afn <4 x float> %i.od, %i.oe
  %i.og = shufflevector <2 x float> %i.ny, <2 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.oh = fmul reassoc nsz arcp contract afn <4 x float> %i.of, %i.og
  store <4 x float> %i.oh, ptr %i.b, align 16, !tbaa !34
  %i.oi = sitofp reassoc nsz arcp contract afn i32 %.val36.i to double
  %i.oj = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val37.i, ptr noundef %.val38.i, double noundef %i.oi, i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef 2) #16 ; 2 uses
  %.not.i54.i = icmp eq i32 %i.oj, 0
  %i.ok = load <2 x float>, ptr %i.b, align 16
  %i.ol = load <2 x float>, ptr %i.ar, align 8
  %i.om = fsub reassoc nsz arcp contract afn <2 x float> %i.ok, %i.ol
  %i.on = fptosi <2 x float> %i.om to <2 x i32>
  %i.oo = select i1 %.not.i54.i, <2 x i32> zeroinitializer, <2 x i32> %i.on
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %masks_get_delta.exit

bb.v:                                             ; preds = %bb.u
  %i.op = and i32 %i.mw, 32
  %.not28.i = icmp eq i32 %i.op, 0
  br i1 %.not28.i, label %masks_get_delta.exit.thread, label %masks_point_calc_delta.exit59.i

masks_point_calc_delta.exit59.i:                  ; preds = %bb.v
  %i.oq = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !41
  %i.os = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.val.i = load i32, ptr %i.al, align 16, !tbaa !192
  %.val29.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.val30.i = load ptr, ptr %i.s, align 8, !tbaa !81 ; 2 uses
  %i.ot = getelementptr i8, ptr %.val30.i, i64 144
  %i.ou = load <2 x float>, ptr %i.or, align 4, !tbaa !34
  %i.ov = load <2 x float>, ptr %i.os, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ow = load <2 x i32>, ptr %i.ot, align 16, !tbaa !38
  %i.ox = sitofp <2 x i32> %i.ow to <2 x float>
  %i.oy = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.pa = shufflevector <2 x float> %i.ox, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pb = fmul reassoc nsz arcp contract afn <4 x float> %i.oz, %i.pa
  %i.pc = shufflevector <2 x float> %i.ou, <2 x float> %i.ov, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pd = fmul reassoc nsz arcp contract afn <4 x float> %i.pb, %i.pc
  store <4 x float> %i.pd, ptr %i.a, align 16, !tbaa !34
  %i.pe = sitofp reassoc nsz arcp contract afn i32 %.val.i to double
  %i.pf = call i32 @dt_dev_distort_transform_plus(ptr noundef %.val29.i, ptr noundef %.val30.i, double noundef %i.pe, i32 noundef 3, ptr noundef nonnull %i.a, i64 noundef 2) #16 ; 2 uses
  %.not.i58.i = icmp eq i32 %i.pf, 0
  %i.pg = load <2 x float>, ptr %i.a, align 16
  %i.ph = load <2 x float>, ptr %i.as, align 8
  %i.pi = fsub reassoc nsz arcp contract afn <2 x float> %i.pg, %i.ph
  %i.pj = fptosi <2 x float> %i.pi to <2 x i32>
  %i.pk = select i1 %.not.i58.i, <2 x i32> zeroinitializer, <2 x i32> %i.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %masks_get_delta.exit

masks_get_delta.exit:                             ; preds = %masks_point_calc_delta.exit.i, %masks_point_calc_delta.exit55.i, %masks_point_calc_delta.exit59.i
  %.0.i272 = phi i32 [ %i.nn, %masks_point_calc_delta.exit.i ], [ %i.pf, %masks_point_calc_delta.exit59.i ], [ %i.oj, %masks_point_calc_delta.exit55.i ]
  %i.pl = phi <2 x i32> [ %i.ns, %masks_point_calc_delta.exit.i ], [ %i.pk, %masks_point_calc_delta.exit59.i ], [ %i.oo, %masks_point_calc_delta.exit55.i ] ; 3 uses
  %.not250.not = icmp eq i32 %.0.i272, 0
  br i1 %.not250.not, label %masks_get_delta.exit.thread, label %bb.w

masks_get_delta.exit.thread:                      ; preds = %bb.v, %masks_get_delta.exit
  %i.pm = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

bb.w:                                             ; preds = %masks_get_delta.exit
  %i.pn = icmp ne <2 x i32> %i.pl, zeroinitializer ; 2 uses
  %i.po = extractelement <2 x i1> %i.pn, i64 0
  %i.pp = extractelement <2 x i1> %i.pn, i64 1
  %or.cond = select i1 %i.po, i1 true, i1 %i.pp
  br i1 %or.cond, label %.preheader306, label %..loopexit307_crit_edge

..loopexit307_crit_edge:                          ; preds = %bb.w
  %.pre375 = load ptr, ptr %i.i, align 8, !tbaa !200
  br label %.loopexit307

.preheader306:                                    ; preds = %bb.w
  %i.pq = add i32 %i.mo, -1
  %i.pr = add i32 %i.pq, %i.mq
  %.0223327 = add nsw i32 %i.mo, 1                ; 2 uses
  %i.ps = icmp slt i32 %.0223327, %i.pr
  %.pre376 = load ptr, ptr %i.i, align 8          ; 3 uses
  br i1 %i.ps, label %.lr.ph330, label %.loopexit307

.lr.ph330:                                        ; preds = %.preheader306
  %i.pt = load i32, ptr %i.ad, align 4, !tbaa !93 ; 2 uses
  %i.pu = add i32 %i.ms, -1
  %i.pv = add i32 %i.pu, %i.mu
  %.0222324 = add i32 %i.ms, 1                    ; 2 uses
  %i.pw = icmp sge i32 %.0222324, %i.pv
  %i.px = load i32, ptr %i.l, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.pz = extractelement <2 x i32> %i.pl, i64 0
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sext i32 %.0222324 to i64
  %i.qc = add i32 %i.mu, -1
  %i.qd = add i32 %i.qc, %i.ms
  %i.qe = sext i32 %.0223327 to i64
  %i.qf = sext i32 %i.pt to i64                   ; 2 uses
  %i.qg = extractelement <2 x i32> %i.pl, i64 1
  %i.qh = sext i32 %i.qg to i64
  %i.qi = add i32 %i.mq, -1
  %i.qj = add i32 %i.qi, %i.mo
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph330, %.loopexit303
  %indvars.iv363 = phi i64 [ %i.qe, %.lr.ph330 ], [ %indvars.iv.next364, %.loopexit303 ] ; 6 uses
  %i.qk = icmp slt i64 %indvars.iv363, %i.qf
  br i1 %i.qk, label %.loopexit303, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ql = load i32, ptr %i.ae, align 4, !tbaa !94
  %i.qm = add nsw i32 %i.ql, %i.pt
  %i.qn = sext i32 %i.qm to i64
  %.not251 = icmp slt i64 %indvars.iv363, %i.qn
  br i1 %.not251, label %bb.z, label %.loopexit303

bb.z:                                             ; preds = %bb.y
  %i.qo = sub nsw i64 %indvars.iv363, %i.qh       ; 3 uses
  %i.qp = load i32, ptr %i.am, align 4, !tbaa !93 ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %i.qo, %i.qq
  br i1 %i.qr, label %.loopexit303, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.qs = load i32, ptr %i.an, align 4, !tbaa !94
  %i.qt = add nsw i32 %i.qs, %i.qp
  %i.qu = sext i32 %i.qt to i64
  %.not252 = icmp sge i64 %i.qo, %i.qu
  %brmerge338 = select i1 %.not252, i1 true, i1 %i.pw
  br i1 %brmerge338, label %.loopexit303, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.aa
  %i.qv = load i32, ptr %5, align 4, !tbaa !95    ; 2 uses
  %i.qw = trunc i64 %indvars.iv363 to i32
  %i.qx = sub i32 %i.qw, %i.mo
  %i.qy = sitofp reassoc nsz arcp contract afn i32 %i.qx to float
  %i.qz = sub nsw i64 %indvars.iv363, %i.qf
  %i.ra = sext i32 %i.qv to i64                   ; 2 uses
  %i.rb = trunc nsw i64 %i.qo to i32
  %i.rc = sub i32 %i.rb, %i.qp
  %i.rd = sext i32 %i.rc to i64
  br i1 %i.ap, label %.lr.ph326.split.us, label %.loopexit303

.lr.ph326.split.us:                               ; preds = %.lr.ph326, %..loopexit_crit_edge.us
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %..loopexit_crit_edge.us ], [ %i.qb, %.lr.ph326 ] ; 6 uses
  %i.re = icmp slt i64 %indvars.iv358, %i.ra
  br i1 %i.re, label %..loopexit_crit_edge.us, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph326.split.us
  %i.rf = load i32, ptr %i.af, align 4, !tbaa !96 ; 2 uses
  %i.rg = add nsw i32 %i.rf, %i.qv
  %i.rh = sext i32 %i.rg to i64
  %.not253.us = icmp slt i64 %indvars.iv358, %i.rh
  br i1 %.not253.us, label %bb.ac, label %..loopexit_crit_edge.us

bb.ac:                                            ; preds = %bb.ab
  %i.ri = sub nsw i64 %indvars.iv358, %i.qa       ; 3 uses
  %i.rj = load i32, ptr %4, align 4, !tbaa !95    ; 2 uses
  %i.rk = sext i32 %i.rj to i64                   ; 2 uses
  %i.rl = icmp slt i64 %i.ri, %i.rk
  br i1 %i.rl, label %..loopexit_crit_edge.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rm = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  %i.rn = add nsw i32 %i.rm, %i.rj
  %i.ro = sext i32 %i.rn to i64
  %.not254.us = icmp slt i64 %i.ri, %i.ro
  br i1 %.not254.us, label %iter.check, label %..loopexit_crit_edge.us

iter.check:                                       ; preds = %bb.ad
  %i.rp = load float, ptr %i.ac, align 4, !tbaa !92 ; 2 uses
  %i.rq = fdiv reassoc nsz arcp contract afn float %i.qy, %i.rp
  %i.rr = fptosi float %i.rq to i32
  %i.rs = mul nsw i32 %i.px, %i.rr
  %i.rt = trunc i64 %indvars.iv358 to i32
  %i.ru = sub i32 %i.rt, %i.ms
  %i.rv = sitofp reassoc nsz arcp contract afn i32 %i.ru to float
  %i.rw = fdiv reassoc nsz arcp contract afn float %i.rv, %i.rp
  %i.rx = fptosi float %i.rw to i32
  %i.ry = add nsw i32 %i.rs, %i.rx
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %.pre376, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !34
  %i.sc = load float, ptr %i.py, align 4, !tbaa !204
  %i.sd = fmul reassoc nsz arcp contract afn float %i.sc, %i.sb ; 7 uses
  %i.se = sext i32 %i.rf to i64
  %i.sf = mul nuw nsw i64 %i.qz, %i.se
  %i.sg = sub nsw i64 %indvars.iv358, %i.ra
  %i.sh = add i64 %i.sg, %i.sf                    ; 2 uses
  %i.si = mul i64 %i.sh, %i.r
  %i.sj = getelementptr [4 x i8], ptr %3, i64 %i.si ; 8 uses
  %i.sk = sext i32 %i.rm to i64
  %i.sl = mul nsw i64 %i.sk, %i.rd
  %i.sm = sub nsw i64 %i.ri, %i.rk
  %i.sn = add nsw i64 %i.sm, %i.sl                ; 2 uses
  %i.so = mul i64 %i.sn, %i.r
  %i.sp = getelementptr [4 x i8], ptr %2, i64 %i.so ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sq = mul i64 %i.au, %i.sh
  %scevgep395 = getelementptr i8, ptr %scevgep, i64 %i.sq
  %i.sr = mul i64 %i.av, %i.sn
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.sr
  %bound0 = icmp ult ptr %i.sj, %scevgep397
  %bound1 = icmp ult ptr %i.sp, %scevgep395
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check398, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.sd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ss = getelementptr [4 x i8], ptr %i.sj, i64 %index ; 5 uses
  %i.st = getelementptr i8, ptr %i.ss, i64 32     ; 2 uses
  %i.su = getelementptr i8, ptr %i.ss, i64 64     ; 2 uses
  %i.sv = getelementptr i8, ptr %i.ss, i64 96     ; 2 uses
  %wide.load = load <8 x float>, ptr %i.ss, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load399.a = load <8 x float>, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load400.a = load <8 x float>, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %wide.load401.a = load <8 x float>, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.sw = getelementptr [4 x i8], ptr %i.sp, i64 %index ; 4 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 32
  %i.sy = getelementptr i8, ptr %i.sw, i64 64
  %i.sz = getelementptr i8, ptr %i.sw, i64 96
  %wide.load402.a = load <8 x float>, ptr %i.sw, align 4, !tbaa !34, !alias.scope !206
  %wide.load403 = load <8 x float>, ptr %i.sx, align 4, !tbaa !34, !alias.scope !206
  %wide.load404 = load <8 x float>, ptr %i.sy, align 4, !tbaa !34, !alias.scope !206
  %wide.load405 = load <8 x float>, ptr %i.sz, align 4, !tbaa !34, !alias.scope !206
  %i.ta = fsub reassoc nsz arcp contract afn <8 x float> %wide.load402.a, %wide.load
  %i.tb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load403, %wide.load399.a
  %i.tc = fsub reassoc nsz arcp contract afn <8 x float> %wide.load404, %wide.load400.a
  %i.td = fsub reassoc nsz arcp contract afn <8 x float> %wide.load405, %wide.load401.a
  %i.te = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ta
  %i.tf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tb
  %i.tg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.tc
  %i.th = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.td
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %i.te, %wide.load
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %i.tf, %wide.load399.a
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %i.tg, %wide.load400.a
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %i.th, %wide.load401.a
  store <8 x float> %i.ti, ptr %i.ss, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tj, ptr %i.st, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tk, ptr %i.su, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  store <8 x float> %i.tl, ptr %i.sv, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tm = icmp eq i64 %index.next, %n.vec
  br i1 %i.tm, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert407 = insertelement <4 x float> poison, float %i.sd, i64 0
  %broadcast.splat408 = shufflevector <4 x float> %broadcast.splatinsert407, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index409 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next412, %vec.epilog.vector.body ] ; 3 uses
  %i.tn = getelementptr [4 x i8], ptr %i.sj, i64 %index409 ; 2 uses
  %wide.load410 = load <4 x float>, ptr %i.tn, align 4, !tbaa !34, !alias.scope !205, !noalias !206 ; 2 uses
  %i.to = getelementptr [4 x i8], ptr %i.sp, i64 %index409
  %wide.load411 = load <4 x float>, ptr %i.to, align 4, !tbaa !34, !alias.scope !206
  %i.tp = fsub reassoc nsz arcp contract afn <4 x float> %wide.load411, %wide.load410
  %i.tq = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat408, %i.tp
  %i.tr = fadd reassoc nsz arcp contract afn <4 x float> %i.tq, %wide.load410
  store <4 x float> %i.tr, ptr %i.tn, align 4, !tbaa !34, !alias.scope !205, !noalias !206
  %index.next412 = add nuw i64 %index409, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.ts, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !189

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n413, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv353.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec406, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod495.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv353.prol = phi i64 [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.tt = getelementptr [4 x i8], ptr %i.sj, i64 %indvars.iv353.prol ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !34 ; 2 uses
  %i.tv = getelementptr [4 x i8], ptr %i.sp, i64 %indvars.iv353.prol
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !34
  %i.tx = fsub reassoc nsz arcp contract afn float %i.tw, %i.tu
  %i.ty = fmul reassoc nsz arcp contract afn float %i.sd, %i.tx
  %i.tz = fadd reassoc nsz arcp contract afn float %i.ty, %i.tu
  store float %i.tz, ptr %i.tt, align 4, !tbaa !34
  %indvars.iv.next354.prol = add nuw nsw i64 %indvars.iv353.prol, 1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !190

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv353.unr = phi i64 [ %indvars.iv353.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next354.prol, %vec.epilog.scalar.ph.prol ]
  %i.ua = sub nsw i64 %indvars.iv353.ph, %wide.trip.count
  %i.ub = icmp ugt i64 %i.ua, -4
  br i1 %i.ub, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv353 = phi i64 [ %indvars.iv.next354.3, %vec.epilog.scalar.ph ], [ %indvars.iv353.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.uc = getelementptr [4 x i8], ptr %i.sj, i64 %indvars.iv353 ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !34 ; 2 uses
  %i.ue = getelementptr [4 x i8], ptr %i.sp, i64 %indvars.iv353
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !34
  %i.ug = fsub reassoc nsz arcp contract afn float %i.uf, %i.ud
  %i.uh = fmul reassoc nsz arcp contract afn float %i.sd, %i.ug
  %i.ui = fadd reassoc nsz arcp contract afn float %i.uh, %i.ud
  store float %i.ui, ptr %i.uc, align 4, !tbaa !34
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  %i.uj = getelementptr [4 x i8], ptr %i.sj, i64 %indvars.iv.next354 ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !34 ; 2 uses
  %i.ul = getelementptr [4 x i8], ptr %i.sp, i64 %indvars.iv.next354
  %i.um = load float, ptr %i.ul, align 4, !tbaa !34
  %i.un = fsub reassoc nsz arcp contract afn float %i.um, %i.uk
  %i.uo = fmul reassoc nsz arcp contract afn float %i.sd, %i.un
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, %i.uk
  store float %i.up, ptr %i.uj, align 4, !tbaa !34
  %indvars.iv.next354.1 = add nuw nsw i64 %indvars.iv353, 2 ; 2 uses
  %i.uq = getelementptr [4 x i8], ptr %i.sj, i64 %indvars.iv.next354.1 ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !34 ; 2 uses
  %i.us = getelementptr [4 x i8], ptr %i.sp, i64 %indvars.iv.next354.1
  %i.ut = load float, ptr %i.us, align 4, !tbaa !34
  %i.uu = fsub reassoc nsz arcp contract afn float %i.ut, %i.ur
  %i.uv = fmul reassoc nsz arcp contract afn float %i.sd, %i.uu
  %i.uw = fadd reassoc nsz arcp contract afn float %i.uv, %i.ur
  store float %i.uw, ptr %i.uq, align 4, !tbaa !34
  %indvars.iv.next354.2 = add nuw nsw i64 %indvars.iv353, 3 ; 2 uses
  %i.ux = getelementptr [4 x i8], ptr %i.sj, i64 %indvars.iv.next354.2 ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !34 ; 2 uses
  %i.uz = getelementptr [4 x i8], ptr %i.sp, i64 %indvars.iv.next354.2
  %i.va = load float, ptr %i.uz, align 4, !tbaa !34
  %i.vb = fsub reassoc nsz arcp contract afn float %i.va, %i.uy
  %i.vc = fmul reassoc nsz arcp contract afn float %i.sd, %i.vb
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, %i.uy
  store float %i.vd, ptr %i.ux, align 4, !tbaa !34
  %indvars.iv.next354.3 = add nuw nsw i64 %indvars.iv353, 4 ; 2 uses
  %exitcond357.not.3 = icmp eq i64 %indvars.iv.next354.3, %wide.trip.count356
  br i1 %exitcond357.not.3, label %..loopexit_crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !191

..loopexit_crit_edge.us:                          ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ad, %bb.ac, %bb.ab, %.lr.ph326.split.us
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1 ; 2 uses
  %lftr.wideiv361 = trunc i64 %indvars.iv.next359 to i32
  %exitcond362.not = icmp eq i32 %i.qd, %lftr.wideiv361
  br i1 %exitcond362.not, label %.loopexit303, label %.lr.ph326.split.us

.loopexit303:                                     ; preds = %..loopexit_crit_edge.us, %.lr.ph326, %bb.aa, %bb.z, %bb.x, %bb.y
  %indvars.iv.next364 = add nsw i64 %indvars.iv363, 1 ; 2 uses
  %lftr.wideiv366 = trunc i64 %indvars.iv.next364 to i32
  %exitcond367.not = icmp eq i32 %i.qj, %lftr.wideiv366
  br i1 %exitcond367.not, label %.loopexit307, label %bb.x

.loopexit307:                                     ; preds = %.loopexit303, %.preheader306, %..loopexit307_crit_edge, %masks_get_delta.exit.thread
  %.sink = phi ptr [ %i.pm, %masks_get_delta.exit.thread ], [ %.pre375, %..loopexit307_crit_edge ], [ %.pre376, %.preheader306 ], [ %.pre376, %.loopexit303 ]
  call void @free(ptr noundef %.sink) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.ae

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %bb.ae

bb.ae:                                            ; preds = %masks_form_is_in_roi.exit.thread, %.loopexit307, %._crit_edge, %.critedge, %masks_form_is_in_roi.exit, %bb.c
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1
  %i.ve = getelementptr inbounds nuw i8, ptr %.0229334, i64 8
  %.0229 = load ptr, ptr %i.ve, align 8, !tbaa !30 ; 2 uses
  %i.vf = icmp samesign ult i64 %indvars.iv368, 63
  %i.vg = icmp ne ptr %.0229, null
  %i.vh = select i1 %i.vf, i1 %i.vg, i1 false
  br i1 %i.vh, label %bb.c, label %.loopexit310

.loopexit310:                                     ; preds = %bb.ae, %.preheader309, %bb.b, %bb.a
  ret void
}

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

end_hunk_0
