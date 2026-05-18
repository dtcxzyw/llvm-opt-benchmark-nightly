inline.NumInlined: 53
inline.NumDeleted: 15
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %i.t = icmp eq ptr %8, null
  %i.u = icmp eq ptr %10, null
  %i.v = bitcast <4 x i1> %i.s to i4
  %i.w = icmp ne i4 %i.v, 0
  %op.rdx.a = or i1 %i.w, %i.t
  %op.rdx259.a = or i1 %i.u, %i.l
  %op.rdx260.a = or i1 %op.rdx.a, %op.rdx259.a
  %op.rdx261 = or i1 %op.rdx260.a, %i.n
  br i1 %op.rdx261, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %5, label %bb.v [
    i32 16, label %bb.c
    i32 12, label %bb.c
    i32 10, label %bb.c
    i32 8, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  switch i32 %12, label %bb.v [
    i32 12, label %bb.d
    i32 10, label %bb.d
    i32 8, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.x = icmp samesign ugt i32 %5, 8
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = or i32 %4, %3
  %i.z = and i32 %i.y, 1
  %or.cond = icmp eq i32 %i.z, 0
  br i1 %or.cond, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp samesign ugt i32 %12, 8
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = or i32 %9, %7
  %i.ac = or i32 %i.ab, %11
  %i.ad = and i32 %i.ac, 1
  %or.cond109 = icmp eq i32 %i.ad, 0
  br i1 %or.cond109, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.i, label %SharpYuvInit.exit

bb.i:                                             ; preds = %bb.h
  %.pre.i = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  %i.af = load volatile ptr, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  %i.ag = icmp eq ptr %i.af, %.pre.i
  br i1 %i.ag, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @SharpYuvInitDsp() #10
  tail call void @SharpYuvInitGammaTables() #10
  %i.ah = load ptr, ptr @SharpYuvGetCPUInfo, align 8, !tbaa !7
  store volatile ptr %i.ah, ptr @SharpYuvInit.sharpyuv_last_cpuinfo_used, align 8, !tbaa !7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @SharpYuvInit.sharpyuv_lock) #10 ; 0 uses
  br label %SharpYuvInit.exit

SharpYuvInit.exit:                                ; preds = %bb.h, %.sink.split.i
  %i.aj = icmp eq i32 %5, %12
  br i1 %i.aj, label %bb.k, label %.preheader

.preheader:                                       ; preds = %SharpYuvInit.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.am = load i32, ptr %i.a, align 4, !tbaa !3
  %i.an = mul nsw i32 %i.am, %i.g
  %i.ao = add nsw i32 %i.an, %i.f
  %i.ap = sdiv i32 %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.az = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !3
  %i.bb = load i32, ptr %i.al, align 4, !tbaa !3
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !3
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.be = mul nsw i32 %i.bd, %i.g
  %i.bf = mul nsw i32 %i.bc, %i.g
  %i.bg = mul nsw i32 %i.az, %i.g
  %i.bh = mul nsw i32 %i.ay, %i.g
  %i.bi = mul nsw i32 %i.av, %i.g
  %i.bj = mul nsw i32 %i.bb, %i.g
  %i.bk = mul nsw i32 %i.ba, %i.g
  %i.bl = mul nsw i32 %i.ax, %i.g
  %i.bm = add nsw i32 %i.be, %i.f
  %i.bn = add nsw i32 %i.bf, %i.f
  %i.bo = add nsw i32 %i.bg, %i.f
  %i.bp = add nsw i32 %i.bh, %i.f
  %i.bq = add nsw i32 %i.bi, %i.f
  %i.br = add nsw i32 %i.bj, %i.f
  %i.bs = add nsw i32 %i.bk, %i.f
  %i.bt = add nsw i32 %i.bl, %i.f
  %i.bu = sdiv i32 %i.bo, %i.d
  %i.bv = sdiv i32 %i.br, %i.d
  %i.bw = sdiv i32 %i.bm, %i.d
  %i.bx = sdiv i32 %i.bp, %i.d
  %i.by = sdiv i32 %i.bs, %i.d
  %i.bz = sdiv i32 %i.bn, %i.d
  %i.ca = sdiv i32 %i.bq, %i.d
  %i.cb = sdiv i32 %i.bt, %i.d
  %i.cc = insertelement <8 x i32> poison, i32 %i.bw, i64 0
  %i.cd = insertelement <8 x i32> %i.cc, i32 %i.bz, i64 1
  %i.ce = insertelement <8 x i32> %i.cd, i32 %i.bu, i64 2
  %i.cf = insertelement <8 x i32> %i.ce, i32 %i.bx, i64 3
  %i.cg = insertelement <8 x i32> %i.cf, i32 %i.ca, i64 4
  %i.ch = insertelement <8 x i32> %i.cg, i32 %i.bv, i64 5
  %i.ci = insertelement <8 x i32> %i.ch, i32 %i.by, i64 6
  %i.cj = insertelement <8 x i32> %i.ci, i32 %i.cb, i64 7
  br label %.loopexit

bb.k:                                             ; preds = %SharpYuvInit.exit
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ck = load <2 x i32>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.cl = load <2 x i32>, ptr %.sroa.15.0..sroa_idx, align 4
  %i.cm = load <2 x i32>, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4
  %i.cn = shufflevector <2 x i32> %i.ck, <2 x i32> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <2 x i32> %i.cm, <2 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison>
  %i.cp = shufflevector <8 x i32> %i.cn, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 13, i32 14, i32 poison>
  %i.cq = insertelement <8 x i32> %i.cp, i32 %.sroa.21.0.copyload, i64 4
  %i.cr = insertelement <8 x i32> %i.cq, i32 %.sroa.33.0.copyload, i64 7
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.k
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.k ], [ %i.ap, %.preheader ] ; 3 uses
  %i.cs = phi <8 x i32> [ %i.cr, %bb.k ], [ %i.cj, %.preheader ] ; 30 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3  ; 2 uses
  %i.cv = shl i32 %i.cu, %i.j
  %i.cw = sub nsw i32 0, %i.j                     ; 3 uses
  %i.cx = ashr i32 %i.cu, %i.cw
  %i.cy = icmp slt i32 %i.j, 0                    ; 3 uses
  %i.cz = select i1 %i.cy, i32 %i.cx, i32 %i.cv   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3  ; 2 uses
  %i.dc = shl i32 %i.db, %i.j
  %i.dd = ashr i32 %i.db, %i.cw
  %i.de = select i1 %i.cy, i32 %i.dd, i32 %i.dc   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3  ; 2 uses
  %i.dh = shl i32 %i.dg, %i.j
  %i.di = ashr i32 %i.dg, %i.cw
  %i.dj = select i1 %i.cy, i32 %i.di, i32 %i.dh   ; 3 uses
  %i.dk = add nuw nsw i32 %13, 1                  ; 2 uses
  %i.dl = and i32 %i.dk, 2147483646               ; 14 uses
  %i.dm = add nuw nsw i32 %14, 1                  ; 3 uses
  %i.dn = and i32 %i.dm, 2147483646               ; 4 uses
  %i.do = lshr i32 %i.dk, 1                       ; 11 uses
  %i.dp = lshr i32 %i.dm, 1
  %i.dq = add nsw i32 %i.j, %5                    ; 24 uses
  %i.dr = mul nuw nsw i32 %i.dl, 3
  %i.ds = zext nneg i32 %i.dr to i64              ; 4 uses
  %i.dt = shl nuw nsw i64 %i.ds, 1
  %i.du = shl nuw nsw i64 %i.ds, 2
  %i.dv = tail call noalias noundef ptr @malloc(i64 noundef %i.du) #11 ; 19 uses
  %i.dw = zext nneg i32 %i.dl to i64              ; 16 uses
  %i.dx = zext nneg i32 %i.dn to i64
  %i.dy = shl nuw nsw i64 %i.dw, 1
  %i.dz = mul nuw nsw i64 %i.dy, %i.dx            ; 2 uses
  %i.ea = tail call noalias noundef ptr @malloc(i64 noundef %i.dz) #11 ; 6 uses
  %i.eb = tail call noalias noundef ptr @malloc(i64 noundef %i.dz) #11 ; 4 uses
  %i.ec = shl nuw nsw i64 %i.dw, 2
  %i.ed = tail call noalias noundef ptr @malloc(i64 noundef %i.ec) #11 ; 5 uses
  %i.ee = mul nuw nsw i32 %i.do, 3                ; 3 uses
  %i.ef = zext nneg i32 %i.ee to i64              ; 8 uses
  %i.eg = and i32 %i.dm, 2147483646
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = mul nuw nsw i64 %i.eh, %i.ef            ; 2 uses
  %i.ej = tail call noalias noundef ptr @malloc(i64 noundef %i.ei) #11 ; 10 uses
  %i.ek = tail call noalias noundef ptr @malloc(i64 noundef %i.ei) #11 ; 4 uses
  %i.el = shl nuw nsw i64 %i.ef, 1                ; 2 uses
  %i.em = tail call noalias noundef ptr @malloc(i64 noundef %i.el) #11 ; 4 uses
  %i.en = uitofp nneg i32 %i.dl to double
  %i.eo = fmul nnan double %i.en, 3.000000e+00
  %i.ep = uitofp nneg i32 %i.dn to double
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = fptoui double %i.eq to i64
  %16 = insertelement <7 x ptr> poison, ptr %i.ea, i64 0
  %17 = insertelement <7 x ptr> %16, ptr %i.ej, i64 1
  %18 = insertelement <7 x ptr> %17, ptr %i.eb, i64 2
  %19 = insertelement <7 x ptr> %18, ptr %i.ek, i64 3
  %20 = insertelement <7 x ptr> %19, ptr %i.ed, i64 4
  %21 = insertelement <7 x ptr> %20, ptr %i.em, i64 5
  %22 = insertelement <7 x ptr> %21, ptr %i.dv, i64 6
  %23 = icmp eq <7 x ptr> %22, splat (ptr null)
  %24 = bitcast <7 x i1> %23 to i7
  %.not = icmp eq i7 %24, 0
  br i1 %.not, label %.preheader288.i, label %DoSharpArgbToYuv.exit

.preheader288.i:                                  ; preds = %.loopexit
  %i.es = icmp sgt i32 %14, 0
  br i1 %i.es, label %.lr.ph.i, label %.preheader288..preheader287_crit_edge.i

.preheader288..preheader287_crit_edge.i:          ; preds = %.preheader288.i
  %.pre.i110 = shl nuw nsw i32 %i.dl, 1           ; 2 uses
  %.pre306.i = zext nneg i32 %.pre.i110 to i64
  %.pre308.i = tail call i32 @llvm.smax.i32(i32 range(i32 0, -1) %i.dl, i32 1)
  %.pre309.i = zext nneg i32 %.pre308.i to i64
  br label %.preheader287.i

.lr.ph.i:                                         ; preds = %.preheader288.i
  %i.et = add nsw i32 %14, -1
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ds ; 8 uses
  %i.ev = sext i32 %4 to i64                      ; 3 uses
  %i.ew = shl nuw nsw i32 %i.dl, 1                ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64              ; 5 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 9 uses
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.dv, i64 %i.dw ; 3 uses
  %invariant.gep13.i.i = getelementptr [2 x i8], ptr %i.dv, i64 %i.ex ; 3 uses
  %invariant.gep.i231.i = getelementptr [2 x i8], ptr %i.eu, i64 %i.dw ; 3 uses
  %invariant.gep13.i232.i = getelementptr [2 x i8], ptr %i.eu, i64 %i.ex ; 3 uses
  %i.ey = shl nsw i32 %4, 1
  %i.ez = sext i32 %i.ey to i64                   ; 3 uses
  %min.iters.check140 = icmp samesign ult i32 %i.dl, 8
  %n.vec143 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n151 = icmp eq i64 %n.vec143, %wide.trip.count.i.i
  %min.iters.check = icmp samesign ult i32 %i.dl, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %bb.l

.preheader287.i:                                  ; preds = %UpdateW.exit255.i, %.preheader288..preheader287_crit_edge.i
  %wide.trip.count.i257.pre-phi.i = phi i64 [ %.pre309.i, %.preheader288..preheader287_crit_edge.i ], [ %wide.trip.count.i.i, %UpdateW.exit255.i ] ; 2 uses
  %.pre-phi307.i = phi i64 [ %.pre306.i, %.preheader288..preheader287_crit_edge.i ], [ %i.ex, %UpdateW.exit255.i ] ; 4 uses
  %.pre-phi.i = phi i32 [ %.pre.i110, %.preheader288..preheader287_crit_edge.i ], [ %i.ew, %UpdateW.exit255.i ]
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.ds ; 7 uses
  %i.fb = add nsw i32 %i.dn, -2
  %i.fc = add nsw i32 %i.dl, -1                   ; 3 uses
  %i.fd = ashr i32 %i.fc, 1                       ; 6 uses
  %notmask.i.i.i.i = shl nsw i32 -1, %i.dq        ; 13 uses
  %i.fe = xor i32 %notmask.i.i.i.i, -1            ; 12 uses
  %i.ff = zext nneg i32 %i.do to i64              ; 8 uses
  %i.fg = add nsw i32 %i.fc, %i.dl
  %i.fh = sext i32 %i.fg to i64
  %i.fi = sext i32 %i.fc to i64                   ; 7 uses
  %i.fj = add nsw i32 %i.do, -1
  %i.fk = sext i32 %i.fj to i64                   ; 9 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.fi
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.fi
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dw ; 5 uses
  %i.fq = getelementptr [2 x i8], ptr %i.fa, i64 %i.dw ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fp, i64 %i.fi
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %i.fi
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.dw ; 3 uses
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.dw ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.fv, i64 %i.fi
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.fi
  %invariant.gep27.i259.i = getelementptr [2 x i8], ptr %i.dv, i64 %.pre-phi307.i
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.dw
  %invariant.gep27.i269.i = getelementptr [2 x i8], ptr %i.fa, i64 %.pre-phi307.i
  br label %.preheader.i

bb.l:                                             ; preds = %UpdateW.exit255.i, %.lr.ph.i
  %.0204296.i = phi ptr [ %0, %.lr.ph.i ], [ %i.km, %UpdateW.exit255.i ] ; 3 uses
  %.0205295.i = phi ptr [ %1, %.lr.ph.i ], [ %i.kn, %UpdateW.exit255.i ] ; 3 uses
  %.0206294.i = phi ptr [ %2, %.lr.ph.i ], [ %i.ko, %UpdateW.exit255.i ] ; 3 uses
  %.0211293.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kp, %UpdateW.exit255.i ] ; 2 uses
  %.0215292.i = phi ptr [ %i.ea, %.lr.ph.i ], [ %i.ki, %UpdateW.exit255.i ] ; 4 uses
  %.0217291.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.kl, %UpdateW.exit255.i ] ; 3 uses
  %.0219290.i = phi ptr [ %i.ej, %.lr.ph.i ], [ %i.kj, %UpdateW.exit255.i ] ; 2 uses
  %.0221289.i = phi ptr [ %i.eb, %.lr.ph.i ], [ %i.kk, %UpdateW.exit255.i ] ; 3 uses
  %i.gc = icmp eq i32 %.0211293.i, %i.et
  tail call fastcc void @ImportOneRow(ptr noundef %.0204296.i, ptr noundef %.0205295.i, ptr noundef %.0206294.i, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef nonnull %i.dv)
  br i1 %i.gc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gd = getelementptr inbounds i8, ptr %.0204296.i, i64 %i.ev
  %i.ge = getelementptr inbounds i8, ptr %.0205295.i, i64 %i.ev
  %i.gf = getelementptr inbounds i8, ptr %.0206294.i, i64 %i.ev
  tail call fastcc void @ImportOneRow(ptr noundef %i.gd, ptr noundef %i.ge, ptr noundef %i.gf, i32 noundef %3, i32 noundef %5, i32 noundef %13, ptr noundef nonnull %i.eu)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.eu, ptr nonnull align 2 %i.dv, i64 %i.dt, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.body144

vector.body144:                                   ; preds = %bb.o, %vector.body144
  %index145 = phi i64 [ %index.next149, %vector.body144 ], [ 0, %bb.o ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index145
  %wide.load146 = load <8 x i16>, ptr %i.gg, align 2, !tbaa !12
  %i.gh = zext <8 x i16> %wide.load146 to <8 x i32>
  %i.gi = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index145
  %wide.load147 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !12
  %i.gj = zext <8 x i16> %wide.load147 to <8 x i32>
  %i.gk = getelementptr [2 x i8], ptr %invariant.gep13.i.i, i64 %index145
  %wide.load148 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !12
  %i.gl = zext <8 x i16> %wide.load148 to <8 x i32>
  %i.gm = mul nuw nsw <8 x i32> %i.gh, splat (i32 13933)
  %i.gn = mul nuw <8 x i32> %i.gj, splat (i32 46871)
  %i.go = mul nuw nsw <8 x i32> %i.gl, splat (i32 4732)
  %i.gp = add nuw nsw <8 x i32> %i.gm, splat (i32 32768)
  %i.gq = add nuw <8 x i32> %i.gp, %i.gn
  %i.gr = add nuw <8 x i32> %i.gq, %i.go
  %i.gs = lshr <8 x i32> %i.gr, splat (i32 16)
  %i.gt = trunc nuw <8 x i32> %i.gs to <8 x i16>
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %.0215292.i, i64 %index145
  store <8 x i16> %i.gt, ptr %i.gu, align 2, !tbaa !12
  %index.next149 = add nuw i64 %index145, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next149, %n.vec143
  br i1 %i.gv, label %middle.block150, label %vector.body144, !llvm.loop !14

middle.block150:                                  ; preds = %vector.body144
  br i1 %cmp.n151, label %StoreGray.exit.i, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %bb.o, %middle.block150
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.o ], [ %n.vec143, %middle.block150 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph139 ], [ %indvars.iv.i.i.ph, %scalar.ph139.preheader ] ; 5 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.i.i
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !12
  %i.gy = zext i16 %i.gx to i32
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.gz = load i16, ptr %gep.i.i, align 2, !tbaa !12
  %i.ha = zext i16 %i.gz to i32
  %gep14.i.i = getelementptr [2 x i8], ptr %invariant.gep13.i.i, i64 %indvars.iv.i.i
  %i.hb = load i16, ptr %gep14.i.i, align 2, !tbaa !12
  %i.hc = zext i16 %i.hb to i32
  %i.hd = mul nuw nsw i32 %i.gy, 13933
  %i.he = mul nuw i32 %i.ha, 46871
  %i.hf = mul nuw nsw i32 %i.hc, 4732
  %i.hg = add nuw nsw i32 %i.hd, 32768
  %i.hh = add nuw i32 %i.hg, %i.he
  %i.hi = add nuw i32 %i.hh, %i.hf
  %i.hj = lshr i32 %i.hi, 16
  %i.hk = trunc nuw i32 %i.hj to i16
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.0215292.i, i64 %indvars.iv.i.i
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %StoreGray.exit.i, label %scalar.ph139, !llvm.loop !18

StoreGray.exit.i:                                 ; preds = %scalar.ph139, %middle.block150
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %.0215292.i, i64 %i.dw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %StoreGray.exit.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %StoreGray.exit.i ] ; 5 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %index
  %wide.load = load <8 x i16>, ptr %i.hn, align 2, !tbaa !12
  %i.ho = zext <8 x i16> %wide.load to <8 x i32>
  %i.hp = getelementptr [2 x i8], ptr %invariant.gep.i231.i, i64 %index
  %wide.load137 = load <8 x i16>, ptr %i.hp, align 2, !tbaa !12
  %i.hq = zext <8 x i16> %wide.load137 to <8 x i32>
  %i.hr = getelementptr [2 x i8], ptr %invariant.gep13.i232.i, i64 %index
  %wide.load138 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !12
  %i.hs = zext <8 x i16> %wide.load138 to <8 x i32>
  %i.ht = mul nuw nsw <8 x i32> %i.ho, splat (i32 13933)
  %i.hu = mul nuw <8 x i32> %i.hq, splat (i32 46871)
  %i.hv = mul nuw nsw <8 x i32> %i.hs, splat (i32 4732)
  %i.hw = add nuw nsw <8 x i32> %i.ht, splat (i32 32768)
  %i.hx = add nuw <8 x i32> %i.hw, %i.hu
  %i.hy = add nuw <8 x i32> %i.hx, %i.hv
  %i.hz = lshr <8 x i32> %i.hy, splat (i32 16)
  %i.ia = trunc nuw <8 x i32> %i.hz to <8 x i16>
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index
  store <8 x i16> %i.ia, ptr %i.ib, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ic = icmp eq i64 %index.next, %n.vec
  br i1 %i.ic, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %StoreGray.exit238.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %StoreGray.exit.i, %middle.block
  %indvars.iv.i233.i.ph = phi i64 [ 0, %StoreGray.exit.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i233.i = phi i64 [ %indvars.iv.next.i236.i, %scalar.ph ], [ %indvars.iv.i233.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %indvars.iv.i233.i
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !12
  %i.if = zext i16 %i.ie to i32
  %gep.i234.i = getelementptr [2 x i8], ptr %invariant.gep.i231.i, i64 %indvars.iv.i233.i
  %i.ig = load i16, ptr %gep.i234.i, align 2, !tbaa !12
  %i.ih = zext i16 %i.ig to i32
  %gep14.i235.i = getelementptr [2 x i8], ptr %invariant.gep13.i232.i, i64 %indvars.iv.i233.i
end_hunk_0
