inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@JTTmtx:bb.a
  %i.ld = getelementptr inbounds i8, ptr %3, i64 %i.lc
  store i8 0, ptr %i.ld, align 1, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !15
  %i.lg = sext i8 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %3, i64 %i.lg
  store i8 0, ptr %i.lh, align 1, !tbaa !15
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !15
  %i.lk = sext i8 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %3, i64 %i.lk
  store i8 4, ptr %i.ll, align 1, !tbaa !15
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !15
  %i.lo = sext i8 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %3, i64 %i.lo
  store i8 4, ptr %i.lp, align 1, !tbaa !15
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !15
  %i.ls = sext i8 %i.lr to i64
  %i.lt = getelementptr inbounds i8, ptr %3, i64 %i.ls
  store i8 1, ptr %i.lt, align 1, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !15
  %i.lw = sext i8 %i.lv to i64
  %i.lx = getelementptr inbounds i8, ptr %3, i64 %i.lw
  store i8 2, ptr %i.lx, align 1, !tbaa !15
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !15
  %i.ma = sext i8 %i.lz to i64
  %i.mb = getelementptr inbounds i8, ptr %3, i64 %i.ma
  store i8 2, ptr %i.mb, align 1, !tbaa !15
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !15
  %i.me = sext i8 %i.md to i64
  %i.mf = getelementptr inbounds i8, ptr %3, i64 %i.me
  store i8 6, ptr %i.mf, align 1, !tbaa !15
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !15
  %i.mi = sext i8 %i.mh to i64
  %i.mj = getelementptr inbounds i8, ptr %3, i64 %i.mi
  store i8 6, ptr %i.mj, align 1, !tbaa !15
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !15
  %i.mm = sext i8 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %3, i64 %i.mm
  store i8 6, ptr %i.mn, align 1, !tbaa !15
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !15
  %i.mq = sext i8 %i.mp to i64
  %i.mr = getelementptr inbounds i8, ptr %3, i64 %i.mq
  store i8 6, ptr %i.mr, align 1, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %.preheader
  %indvars.iv117 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next118, %.preheader ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %indvars.iv117 ; 20 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv117
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !16 ; 20 uses
  %i.mv = load double, ptr %i.ms, align 16, !tbaa !8
  store double %i.mv, ptr %i.mu, align 8, !tbaa !8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store double %i.mx, ptr %i.my, align 8, !tbaa !8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.na = load double, ptr %i.mz, align 16, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store double %i.na, ptr %i.nb, align 8, !tbaa !8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  store double %i.nd, ptr %i.ne, align 8, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.ng = load double, ptr %i.nf, align 16, !tbaa !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  store double %i.ng, ptr %i.nh, align 8, !tbaa !8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  store double %i.nj, ptr %i.nk, align 8, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.nm = load double, ptr %i.nl, align 16, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mu, i64 48
  store double %i.nm, ptr %i.nn, align 8, !tbaa !8
  %i.no = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  %i.np = load double, ptr %i.no, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  store double %i.np, ptr %i.nq, align 8, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %i.ns = load double, ptr %i.nr, align 16, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  store double %i.ns, ptr %i.nt, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ms, i64 72
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  store double %i.nv, ptr %i.nw, align 8, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ms, i64 80
  %i.ny = load double, ptr %i.nx, align 16, !tbaa !8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  store double %i.ny, ptr %i.nz, align 8, !tbaa !8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ms, i64 88
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mu, i64 88
  store double %i.ob, ptr %i.oc, align 8, !tbaa !8
  %i.od = getelementptr inbounds nuw i8, ptr %i.ms, i64 96
  %i.oe = load double, ptr %i.od, align 16, !tbaa !8
  %i.of = getelementptr inbounds nuw i8, ptr %i.mu, i64 96
  store double %i.oe, ptr %i.of, align 8, !tbaa !8
  %i.og = getelementptr inbounds nuw i8, ptr %i.ms, i64 104
  %i.oh = load double, ptr %i.og, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mu, i64 104
  store double %i.oh, ptr %i.oi, align 8, !tbaa !8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ms, i64 112
  %i.ok = load double, ptr %i.oj, align 16, !tbaa !8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mu, i64 112
  store double %i.ok, ptr %i.ol, align 8, !tbaa !8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ms, i64 120
  %i.on = load double, ptr %i.om, align 8, !tbaa !8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mu, i64 120
  store double %i.on, ptr %i.oo, align 8, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ms, i64 128
  %i.oq = load double, ptr %i.op, align 16, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %i.mu, i64 128
  store double %i.oq, ptr %i.or, align 8, !tbaa !8
  %i.os = getelementptr inbounds nuw i8, ptr %i.ms, i64 136
  %i.ot = load double, ptr %i.os, align 8, !tbaa !8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mu, i64 136
  store double %i.ot, ptr %i.ou, align 8, !tbaa !8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ms, i64 144
  %i.ow = load double, ptr %i.ov, align 16, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.mu, i64 144
  store double %i.ow, ptr %i.ox, align 8, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ms, i64 152
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mu, i64 152
  store double %i.oz, ptr %i.pa, align 8, !tbaa !8
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 20
  br i1 %exitcond120.not, label %bb.f, label %.preheader, !llvm.loop !19

bb.f:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLOSUMmtx(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 30, label %bb.i
    i32 45, label %bb.b
    i32 50, label %bb.c
    i32 62, label %bb.d
    i32 80, label %bb.e
    i32 0, label %bb.f
    i32 -1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.a = tail call ptr @loadaamtx() #15
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef %0) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %i.a, %bb.g ], [ @__const.BLOSUMmtx.tmpmtx45, %bb.b ], [ @__const.BLOSUMmtx.tmpmtx50, %bb.c ], [ @__const.BLOSUMmtx.tmpmtx62, %bb.d ], [ @__const.BLOSUMmtx.tmpmtx80, %bb.e ], [ @__const.BLOSUMmtx.tmpmtx0, %bb.f ], [ @__const.BLOSUMmtx.tmpmtx30, %bb.a ] ; 23 uses
  br label %.preheader64

.preheader64:                                     ; preds = %bb.i, %bb.k
  %indvars.iv87 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next88, %bb.k ] ; 6 uses
  %indvars.iv85 = phi i64 [ 1, %bb.i ], [ %indvars.iv.next86, %bb.k ] ; 4 uses
  %.05568 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.lcssa, %bb.k ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv87
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %sext = shl i64 %.05568, 32
  %5 = ashr exact i64 %sext, 32                   ; 2 uses
  %xtraiter = and i64 %indvars.iv85, 1
  %i.f = icmp eq i64 %indvars.iv87, 0
  br i1 %i.f, label %.epil.preheader, label %.preheader64.new

.preheader64.new:                                 ; preds = %.preheader64
  %unroll_iter = and i64 %indvars.iv85, 9223372036854775806
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader64.new
  %indvars.iv78 = phi i64 [ 0, %.preheader64.new ], [ %indvars.iv.next79.1, %bb.j ] ; 4 uses
  %indvars.iv = phi i64 [ %5, %.preheader64.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader64.new ], [ %niter.next.1, %bb.j ]
  %i.g = getelementptr inbounds [8 x i8], ptr %.0, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv87
  store double %i.h, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv78
  store double %i.h, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next79 = or disjoint i64 %indvars.iv78, 1 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.m = getelementptr [8 x i8], ptr %.0, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next79
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv87
  store double %i.o, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next79
  store double %i.o, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.j, !llvm.loop !22

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader64
  %indvars.iv78.epil.init = phi i64 [ 0, %.preheader64 ], [ %indvars.iv.next79.1, %.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ %5, %.preheader64 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod117 = trunc i64 %indvars.iv85 to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, 1
  %i.t = getelementptr inbounds [8 x i8], ptr %.0, i64 %indvars.iv.epil.init
  %i.u = load double, ptr %i.t, align 8, !tbaa !8 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv78.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv87
  store double %i.u, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv78.epil.init
  store double %i.u, ptr %i.y, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, 20
  br i1 %exitcond92.not, label %bb.l, label %.preheader64, !llvm.loop !23

bb.l:                                             ; preds = %bb.k
  %i.z = icmp eq i32 %0, -1
  br i1 %i.z, label %bb.m, label %.loopexit.loopexit76

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 3200
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8 ; 3 uses
  %i.ac = fcmp une double %i.ab, -1.000000e+00
  br i1 %i.ac, label %.preheader62.preheader, label %.loopexit.loopexit76

.preheader62.preheader:                           ; preds = %bb.m
  store double %i.ab, ptr %2, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 3208
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ae, ptr %i.af, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 3216
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 3224
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.ak, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 3232
  %i.an = load double, ptr %i.am, align 8, !tbaa !8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store double %i.an, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 3240
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 3248
  %i.at = load double, ptr %i.as, align 8, !tbaa !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store double %i.at, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 3256
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 3264
  %i.az = load double, ptr %i.ay, align 8, !tbaa !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  store double %i.az, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 3272
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %i.bc, ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 3280
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 3288
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %.0, i64 3296
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0, i64 3304
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 3312
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 3320
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 3328
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 3336
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 3344
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 3352
  %i.bx = fadd double %i.ab, 0.000000e+00
  %i.by = fadd double %i.bx, %i.ae
  %i.bz = fadd double %i.by, %i.ah
  %i.ca = fadd double %i.bz, %i.ak
  %i.cb = fadd double %i.ca, %i.an
  %i.cc = fadd double %i.cb, %i.aq
  %i.cd = fadd double %i.cc, %i.at
  %i.ce = fadd double %i.cd, %i.aw
  %i.cf = fadd double %i.ce, %i.az
  %i.cg = fadd double %i.cf, %i.bc
  %i.ch = load <2 x double>, ptr %2, align 8, !tbaa !8
  %i.ci = load <2 x double>, ptr %i.ai, align 8, !tbaa !8
  %i.cj = load <2 x double>, ptr %i.ao, align 8, !tbaa !8
  %i.ck = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.cl = load double, ptr %i.ba, align 8, !tbaa !8
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.bc, i64 1
  %i.co = load double, ptr %i.be, align 8, !tbaa !8 ; 3 uses
  store double %i.co, ptr %i.bf, align 8, !tbaa !8
  %i.cp = load double, ptr %i.bg, align 8, !tbaa !8 ; 3 uses
  store double %i.cp, ptr %i.bh, align 8, !tbaa !8
  %i.cq = fadd double %i.cg, %i.co
  %i.cr = fadd double %i.cq, %i.cp
  %i.cs = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cp, i64 1
  %i.cu = load double, ptr %i.bi, align 8, !tbaa !8 ; 3 uses
  store double %i.cu, ptr %i.bj, align 8, !tbaa !8
  %i.cv = load double, ptr %i.bk, align 8, !tbaa !8 ; 3 uses
  store double %i.cv, ptr %i.bl, align 8, !tbaa !8
  %i.cw = fadd double %i.cr, %i.cu
  %i.cx = fadd double %i.cw, %i.cv
  %i.cy = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cv, i64 1
  %i.da = load double, ptr %i.bm, align 8, !tbaa !8 ; 3 uses
  store double %i.da, ptr %i.bn, align 8, !tbaa !8
  %i.db = load double, ptr %i.bo, align 8, !tbaa !8 ; 3 uses
  store double %i.db, ptr %i.bp, align 8, !tbaa !8
  %i.dc = fadd double %i.cx, %i.da
  %i.dd = fadd double %i.dc, %i.db
  %i.de = insertelement <2 x double> poison, double %i.da, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.db, i64 1
  %i.dg = load double, ptr %i.bq, align 8, !tbaa !8 ; 3 uses
  store double %i.dg, ptr %i.br, align 8, !tbaa !8
  %i.dh = load double, ptr %i.bs, align 8, !tbaa !8 ; 3 uses
  store double %i.dh, ptr %i.bt, align 8, !tbaa !8
  %i.di = fadd double %i.dd, %i.dg
  %i.dj = fadd double %i.di, %i.dh
  %i.dk = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dh, i64 1
  %i.dm = load double, ptr %i.bu, align 8, !tbaa !8 ; 3 uses
  store double %i.dm, ptr %i.bv, align 8, !tbaa !8
  %i.dn = load double, ptr %i.bw, align 8, !tbaa !8 ; 2 uses
  %i.do = fadd double %i.dj, %i.dm
  %i.dp = fadd double %i.do, %i.dn
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.ds = fdiv <2 x double> %i.ch, %i.dr
  store <2 x double> %i.ds, ptr %2, align 8, !tbaa !8
  %i.dt = fdiv <2 x double> %i.ci, %i.dr
  store <2 x double> %i.dt, ptr %i.ai, align 8, !tbaa !8
  %i.du = fdiv <2 x double> %i.cj, %i.dr
  store <2 x double> %i.du, ptr %i.ao, align 8, !tbaa !8
  %i.dv = fdiv <2 x double> %i.ck, %i.dr
  store <2 x double> %i.dv, ptr %i.au, align 8, !tbaa !8
  %i.dw = fdiv <2 x double> %i.cn, %i.dr
  store <2 x double> %i.dw, ptr %i.ba, align 8, !tbaa !8
  %i.dx = fdiv <2 x double> %i.ct, %i.dr
  store <2 x double> %i.dx, ptr %i.bf, align 8, !tbaa !8
  %i.dy = fdiv <2 x double> %i.cz, %i.dr
  store <2 x double> %i.dy, ptr %i.bj, align 8, !tbaa !8
  %i.dz = fdiv <2 x double> %i.df, %i.dr
  store <2 x double> %i.dz, ptr %i.bn, align 8, !tbaa !8
  %i.ea = fdiv <2 x double> %i.dl, %i.dr
  store <2 x double> %i.ea, ptr %i.br, align 8, !tbaa !8
  %i.eb = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dn, i64 1
  %i.ed = fdiv <2 x double> %i.ec, %i.dr
  store <2 x double> %i.ed, ptr %i.bv, align 8, !tbaa !8
  br label %.loopexit

.loopexit.loopexit76:                             ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 16 dereferenceable(160) @__const.BLOSUMmtx.freqd, i64 160, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit76, %.preheader62.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 16 dereferenceable(26) @__const.BLOSUMmtx.locaminod, i64 26, i1 false), !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 65
  store i8 0, ptr %i.ee, align 1, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !15
  %i.eh = sext i8 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %4, i64 %i.eh
  store i8 3, ptr %i.ei, align 1, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !15
  %i.el = sext i8 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %4, i64 %i.el
  store i8 2, ptr %i.em, align 1, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15
  %i.ep = sext i8 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %4, i64 %i.ep
  store i8 2, ptr %i.eq, align 1, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = sext i8 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %4, i64 %i.et
  store i8 5, ptr %i.eu, align 1, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.ex = sext i8 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %4, i64 %i.ex
  store i8 2, ptr %i.ey, align 1, !tbaa !15
end_hunk_0
