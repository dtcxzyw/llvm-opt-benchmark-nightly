Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_cmyk?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FloatCMYKCLUTEval:bb.a
  %i.h = alloca [16 x i32], align 16              ; 7 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !35   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.r = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #6
  %i.s = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38
  call void @_cmsComputeComponentIncrements(i32 noundef %i.r, i32 noundef %i.u, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  call void @_cmsComputeComponentIncrements(i32 noundef %i.s, i32 noundef %i.w, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6
  %i.x = call i32 @_cmsGetTransformFlags(ptr noundef %0) #6
  %i.y = and i32 %i.x, 67108864
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not602 = icmp eq i32 %4, 0
  br i1 %.not602, label %._crit_edge586, label %.lr.ph585

.lr.ph585:                                        ; preds = %bb.c
  %i.z = load i32, ptr %i.e, align 16, !tbaa !10
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !10
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.j, align 4, !tbaa !10
  %.fr = freeze i32 %i.ao
  %.not524 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.not603 = icmp eq i32 %3, 0
  %i.aq = load i32, ptr %i.f, align 16
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %.not604 = icmp eq i32 %i.o, 0                  ; 2 uses
  %i.bb = zext i32 %i.o to i64                    ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bb
  %i.bf = load i32, ptr %5, align 4, !tbaa !40
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  %i.bj = zext i32 %i.bi to i64                   ; 3 uses
  br i1 %.not603, label %.lr.ph585.split, label %.lr.ph585.split.us

.lr.ph585.split.us:                               ; preds = %.lr.ph585
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 148
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !10
  %i.br = uitofp i32 %i.bq to float
  %i.bs = load <3 x i32>, ptr %i.bo, align 4, !tbaa !10
  %i.bt = shufflevector <3 x i32> %i.bs, <3 x i32> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 1>
  %i.bu = uitofp <4 x i32> %i.bt to <4 x float>
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !10 ; 2 uses
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !10 ; 2 uses
  %i.bx = load i32, ptr %i.bk, align 8, !tbaa !10 ; 2 uses
  %i.by = load i32, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !35  ; 4 uses
  %.not607 = icmp eq i32 %i.ca, 0
  %wide.trip.count627 = zext i32 %i.ca to i64     ; 3 uses
  %i.cb = add nsw i64 %i.bb, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 12
  %i.cc = trunc i64 %i.cb to i32                  ; 4 uses
  %i.cd = icmp ugt i64 %i.cb, 4294967295
  %n.vec = and i64 %i.bb, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  %xtraiter = and i64 %wide.trip.count627, 1
  %i.ce = icmp eq i32 %i.ca, 1
  %unroll_iter = and i64 %wide.trip.count627, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod723 = trunc i32 %i.ca to i1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge577.us, %.lr.ph585.split.us
  %.0583.us = phi i64 [ 0, %.lr.ph585.split.us ], [ %i.st, %._crit_edge577.us ] ; 2 uses
  %.0498582.us = phi i64 [ 0, %.lr.ph585.split.us ], [ %i.ss, %._crit_edge577.us ] ; 6 uses
  %.0499581.us = phi ptr [ null, %.lr.ph585.split.us ], [ %.3.us, %._crit_edge577.us ]
  %.0506580.us = phi i32 [ 0, %.lr.ph585.split.us ], [ %i.su, %._crit_edge577.us ]
  %.0507579.us = phi ptr [ %i.q, %.lr.ph585.split.us ], [ %i.me, %._crit_edge577.us ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.0498582.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0498582.us
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0498582.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0498582.us
  %i.cj = load i32, ptr %i.ap, align 16
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.0498582.us
  %.1.us = select i1 %.not524, ptr %.0499581.us, ptr %i.cm ; 2 uses
  %.not525.us = icmp ne ptr %.1.us, null
  %i.cn = zext i1 %.not525.us to i32
  %.0509.us = add i32 %i.o, %i.cn                 ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %.0583.us ; 3 uses
  %.not609 = icmp eq i32 %.0509.us, 0
  br i1 %.not609, label %.preheader559.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.0509.us to i64    ; 3 uses
  %min.iters.check677 = icmp ult i32 %.0509.us, 4
  br i1 %min.iters.check677, label %.lr.ph.us.preheader721, label %vector.ph678

vector.ph678:                                     ; preds = %.lr.ph.us.preheader
  %n.vec679 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph678
  %index681 = phi i64 [ 0, %vector.ph678 ], [ %index.next685, %vector.body680 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index681 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load682 = load <2 x i32>, ptr %i.co, align 16, !tbaa !10
  %wide.load683 = load <2 x i32>, ptr %i.cp, align 8, !tbaa !10
  %i.cq = zext <2 x i32> %wide.load682 to <2 x i64>
  %i.cr = zext <2 x i32> %wide.load683 to <2 x i64>
  %wide.gep = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cq
  %wide.gep684 = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index681 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cs, align 16, !tbaa !43
  store <2 x ptr> %wide.gep684, ptr %i.ct, align 16, !tbaa !43
  %index.next685 = add nuw i64 %index681, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next685, %n.vec679
  br i1 %i.cu, label %middle.block686, label %vector.body680, !llvm.loop !21

middle.block686:                                  ; preds = %vector.body680
  %cmp.n687 = icmp eq i64 %n.vec679, %wide.trip.count
  br i1 %cmp.n687, label %.preheader559.us, label %.lr.ph.us.preheader721

.lr.ph.us.preheader721:                           ; preds = %.lr.ph.us.preheader, %middle.block686
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec679, %middle.block686 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader721, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader721 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !10
  %i.cx = zext i32 %i.cw to i64
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cx
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %gep.us, ptr %i.cy, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader559.us, label %.lr.ph.us, !llvm.loop !22

.preheader559.us:                                 ; preds = %.lr.ph.us, %middle.block686, %bb.d
  %i.cz = load i32, ptr %i.bd, align 16
  %i.da = zext i32 %i.cz to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader559.us, %bb.ad
  %.2575.us = phi ptr [ %.1.us, %.preheader559.us ], [ %.3.us, %bb.ad ] ; 3 uses
  %.0500574.us = phi ptr [ %i.ci, %.preheader559.us ], [ %i.dm, %bb.ad ] ; 2 uses
  %.0501573.us = phi ptr [ %i.ch, %.preheader559.us ], [ %i.dl, %bb.ad ] ; 2 uses
  %.0502572.us = phi ptr [ %i.cg, %.preheader559.us ], [ %i.dk, %bb.ad ] ; 2 uses
  %.0503571.us = phi ptr [ %i.cf, %.preheader559.us ], [ %i.dj, %bb.ad ] ; 2 uses
  %.1505570.us = phi i32 [ 0, %.preheader559.us ], [ %i.rq, %bb.ad ]
  %.1508569.us = phi ptr [ %.0507579.us, %.preheader559.us ], [ %i.me, %bb.ad ] ; 25 uses
  %.1508569.us663 = ptrtoaddr ptr %.1508569.us to i64 ; 3 uses
  %i.db = load float, ptr %.0503571.us, align 4, !tbaa !48 ; 3 uses
  %or.cond.i.us = fcmp ult float %i.db, f0x3089705F
  %i.dc = fcmp ogt float %i.db, 1.000000e+02
  %i.dd = select i1 %i.dc, float 1.000000e+02, float %i.db
  %i.de = fdiv float %i.dd, 1.000000e+02
  %i.df = select i1 %or.cond.i.us, float 0.000000e+00, float %i.de ; 2 uses
  %i.dg = load float, ptr %.0502572.us, align 4, !tbaa !48
  %i.dh = load float, ptr %.0501573.us, align 4, !tbaa !48
  %i.di = load float, ptr %.0500574.us, align 4, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %.0503571.us, i64 %i.ar
  %i.dk = getelementptr inbounds nuw i8, ptr %.0502572.us, i64 %i.au
  %i.dl = getelementptr inbounds nuw i8, ptr %.0501573.us, i64 %i.ax
  %i.dm = getelementptr inbounds nuw i8, ptr %.0500574.us, i64 %i.ba
  %i.dn = fmul float %i.df, %i.br                 ; 2 uses
  %i.do = fpext float %i.dn to double
  %i.dp = fadd double %i.do, f0x4238000000000000
  %i.dq = bitcast double %i.dp to i64
  %.sroa.0.0.extract.trunc.i.us = trunc i64 %i.dq to i32
  %i.dr = ashr i32 %.sroa.0.0.extract.trunc.i.us, 16 ; 2 uses
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = fsub float %i.dn, %i.ds                 ; 3 uses
  %i.du = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %i.di, i64 1
  %i.dw = insertelement <4 x float> %i.dv, float %i.dg, i64 2
  %6 = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 0> ; 3 uses
  %7 = fcmp ult <4 x float> %6, splat (float f0x3089705F)
  %i.dx = fcmp ogt <4 x float> %6, splat (float 1.000000e+02)
  %i.dy = select <4 x i1> %i.dx, <4 x float> splat (float 1.000000e+02), <4 x float> %6
  %i.dz = fdiv <4 x float> %i.dy, splat (float 1.000000e+02)
  %i.ea = select <4 x i1> %7, <4 x float> zeroinitializer, <4 x float> %i.dz ; 4 uses
  %i.eb = fmul <4 x float> %i.ea, %i.bu           ; 2 uses
  %i.ec = fpext <4 x float> %i.eb to <4 x double>
  %i.ed = fadd <4 x double> %i.ec, splat (double f0x4238000000000000)
  %i.ee = bitcast <4 x double> %i.ed to <4 x i64>
  %i.ef = trunc <4 x i64> %i.ee to <4 x i32>
  %i.eg = ashr <4 x i32> %i.ef, splat (i32 16)    ; 4 uses
  %i.eh = sitofp <4 x i32> %i.eg to <4 x float>
  %i.ei = fsub <4 x float> %i.eb, %i.eh           ; 11 uses
  %i.ej = mul i32 %i.dr, %i.bv
  %i.ek = fcmp ult float %i.df, 1.000000e+00
  %spec.select.us = select i1 %i.ek, i32 %i.bv, i32 0
  %i.el = add i32 %i.ej, %spec.select.us
  %i.em = extractelement <4 x i32> %i.eg, i64 1
  %i.en = mul i32 %i.em, %i.bw                    ; 7 uses
  %i.eo = extractelement <4 x float> %i.ea, i64 1
  %i.ep = fcmp ult float %i.eo, 1.000000e+00
  %i.eq = select i1 %i.ep, i32 %i.bw, i32 0
  %i.er = add i32 %i.en, %i.eq                    ; 6 uses
  %i.es = extractelement <4 x i32> %i.eg, i64 3
  %i.et = mul i32 %i.es, %i.bx                    ; 7 uses
  %i.eu = extractelement <4 x float> %i.ea, i64 3
  %i.ev = fcmp ult float %i.eu, 1.000000e+00
  %i.ew = select i1 %i.ev, i32 %i.bx, i32 0
  %i.ex = add i32 %i.et, %i.ew                    ; 6 uses
  %i.ey = extractelement <4 x i32> %i.eg, i64 0
  %i.ez = mul i32 %i.ey, %i.by                    ; 9 uses
  %i.fa = extractelement <4 x float> %i.ea, i64 0
  %i.fb = fcmp ult float %i.fa, 1.000000e+00
  %i.fc = select i1 %i.fb, i32 %i.by, i32 0
  %i.fd = add i32 %i.ez, %i.fc                    ; 12 uses
  br i1 %.not604, label %._crit_edge.us, label %.lr.ph562.us

.lr.ph562.us:                                     ; preds = %bb.e
  %i.fe = add i32 %i.et, %i.en                    ; 2 uses
  %i.ff = add i32 %i.fe, %i.ez                    ; 5 uses
  %i.fg = extractelement <4 x float> %i.ei, i64 1 ; 6 uses
  %i.fh = extractelement <4 x float> %i.ei, i64 3 ; 6 uses
  %i.fi = fcmp ult float %i.fg, %i.fh             ; 2 uses
  %i.fj = extractelement <4 x float> %i.ei, i64 0 ; 6 uses
  %i.fk = fcmp ult float %i.fh, %i.fj             ; 2 uses
  %or.cond.us = select i1 %i.fi, i1 true, i1 %i.fk
  %i.fl = add i32 %i.er, %i.et                    ; 2 uses
  %i.fm = add i32 %i.fl, %i.ez                    ; 5 uses
  %i.fn = add i32 %i.ex, %i.er                    ; 2 uses
  %i.fo = add i32 %i.fn, %i.ez                    ; 5 uses
  %i.fp = add i32 %i.fn, %i.fd                    ; 9 uses
  %i.fq = fcmp ult float %i.fg, %i.fj             ; 2 uses
  %i.fr = fcmp ult float %i.fj, %i.fh             ; 2 uses
  %or.cond529.us = or i1 %i.fq, %i.fr
  %i.fs = add nsw i32 %i.fd, %i.fl
  %i.ft = fcmp ult float %i.fj, %i.fg             ; 2 uses
  %brmerge.us = or i1 %i.fi, %i.ft
  %i.fu = add i32 %i.fd, %i.er
  %i.fv = add i32 %i.fu, %i.et
  %i.fw = add nsw i32 %i.fd, %i.fe                ; 2 uses
  %i.fx = fcmp ult float %i.fh, %i.fg             ; 2 uses
  %brmerge534.us = or i1 %i.fx, %i.fq
  %i.fy = add nsw i32 %i.ex, %i.en                ; 2 uses
  %i.fz = add nsw i32 %i.fy, %i.ez                ; 2 uses
  %brmerge536.us = or i1 %i.fk, %i.ft
  %i.ga = add nsw i32 %i.fy, %i.fd
  %brmerge538.us = or i1 %i.fx, %i.fr
  %i.gb = add i32 %i.fd, %i.ex
  %i.gc = add i32 %i.gb, %i.en
  br i1 %or.cond.us, label %.lr.ph562.split.us.us, label %.lr.ph562.split.us587.preheader

.lr.ph562.split.us587.preheader:                  ; preds = %.lr.ph562.us
  br i1 %min.iters.check, label %.lr.ph562.split.us587.preheader719, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph562.split.us587.preheader
  %i.gd = xor i32 %i.ff, -1
  %i.ge = icmp ult i32 %i.gd, %i.cc
  %i.gf = xor i32 %i.fm, -1
  %i.gg = icmp ult i32 %i.gf, %i.cc
  %i.gh = or i1 %i.gg, %i.cd
  %i.gi = xor i32 %i.fo, -1
  %i.gj = icmp ult i32 %i.gi, %i.cc
  %i.gk = xor i32 %i.fp, -1
  %i.gl = icmp ult i32 %i.gk, %i.cc
  %i.gm = or i1 %i.ge, %i.gh
  %i.gn = or i1 %i.gj, %i.gm
  %i.go = or i1 %i.gl, %i.gn
  br i1 %i.go, label %.lr.ph562.split.us587.preheader719, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gp = sub i64 %i.b, %.1508569.us663           ; 2 uses
  %i.gq = zext i32 %i.fp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 2
  %i.gs = sub i64 %i.gr, %i.gp
  %diff.check = icmp ugt i64 %i.gs, -16
  %i.gt = zext i32 %i.fo to i64
  %i.gu = shl nuw nsw i64 %i.gt, 2
  %i.gv = sub i64 %i.gu, %i.gp
  %diff.check664 = icmp ugt i64 %i.gv, -16
  %conflict.rdx = or i1 %diff.check, %diff.check664
  %i.gw = zext i32 %i.fm to i64
  %i.gx = shl nuw nsw i64 %i.gw, 2
  %i.gy = add i64 %i.gx, %.1508569.us663
  %i.gz = sub i64 %i.gy, %i.b
  %diff.check665 = icmp ugt i64 %i.gz, -16
  %conflict.rdx666 = or i1 %conflict.rdx, %diff.check665
  %i.ha = zext i32 %i.ff to i64
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = add i64 %i.hb, %.1508569.us663
  %i.hd = sub i64 %i.hc, %i.b
  %diff.check667 = icmp ugt i64 %i.hd, -16
  %conflict.rdx668 = or i1 %conflict.rdx666, %diff.check667
  br i1 %conflict.rdx668, label %.lr.ph562.split.us587.preheader719, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat670 = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat672 = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.he = trunc nuw i64 %index to i32             ; 4 uses
  %i.hf = add i32 %i.ff, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hg
  %wide.load = load <4 x float>, ptr %i.hh, align 4, !tbaa !48 ; 2 uses
  %i.hi = add i32 %i.fm, %i.he
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hj
  %wide.load673 = load <4 x float>, ptr %i.hk, align 4, !tbaa !48 ; 2 uses
  %i.hl = fsub <4 x float> %wide.load673, %wide.load
  %i.hm = add i32 %i.fo, %i.he
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hn
  %wide.load674 = load <4 x float>, ptr %i.ho, align 4, !tbaa !48 ; 2 uses
  %i.hp = fsub <4 x float> %wide.load674, %wide.load673
  %i.hq = add i32 %i.fp, %i.he
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.hr
  %wide.load675 = load <4 x float>, ptr %i.hs, align 4, !tbaa !48
  %i.ht = fsub <4 x float> %wide.load675, %wide.load674
  %i.hu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hl, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.hv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hp, <4 x float> %broadcast.splat670, <4 x float> %i.hu)
  %i.hw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> %broadcast.splat672, <4 x float> %i.hv)
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  store <4 x float> %i.hw, ptr %i.hx, align 16, !tbaa !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hy = icmp eq i64 %index.next, %n.vec
  br i1 %i.hy, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph562.split.us587.preheader719

.lr.ph562.split.us587.preheader719:               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph562.split.us587.preheader, %middle.block
  %indvars.iv614.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph562.split.us587.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph562.split.us587

.lr.ph562.split.us587:                            ; preds = %.lr.ph562.split.us587.preheader719, %.lr.ph562.split.us587
  %indvars.iv614 = phi i64 [ %indvars.iv.next615, %.lr.ph562.split.us587 ], [ %indvars.iv614.ph, %.lr.ph562.split.us587.preheader719 ] ; 3 uses
  %i.hz = trunc nuw i64 %indvars.iv614 to i32     ; 4 uses
  %i.ia = add i32 %i.ff, %i.hz
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !48 ; 2 uses
  %i.ie = add i32 %i.fm, %i.hz
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !48 ; 2 uses
  %i.ii = fsub float %i.ih, %i.id
  %i.ij = add i32 %i.fo, %i.hz
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !48 ; 2 uses
  %i.in = fsub float %i.im, %i.ih
  %i.io = add i32 %i.fp, %i.hz
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !48
  %i.is = fsub float %i.ir, %i.im
  %i.it = call float @llvm.fmuladd.f32(float %i.ii, float %i.fg, float %i.id)
  %i.iu = call float @llvm.fmuladd.f32(float %i.in, float %i.fh, float %i.it)
  %i.iv = call float @llvm.fmuladd.f32(float %i.is, float %i.fj, float %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv614
  store float %i.iv, ptr %i.iw, align 4, !tbaa !48
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %exitcond618.not = icmp eq i64 %indvars.iv.next615, %i.bb
  br i1 %exitcond618.not, label %._crit_edge.us, label %.lr.ph562.split.us587, !llvm.loop !24

.lr.ph562.split.us.us:                            ; preds = %.lr.ph562.us, %bb.o
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %bb.o ], [ 0, %.lr.ph562.us ] ; 3 uses
  %i.ix = trunc nuw i64 %indvars.iv619 to i32     ; 16 uses
  %i.iy = add i32 %i.ff, %i.ix
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.iz
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !48 ; 6 uses
  br i1 %or.cond529.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph562.split.us.us
  %i.jc = add i32 %i.fm, %i.ix
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.1508569.us, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !48 ; 2 uses
  %i.jg = fsub float %i.jf, %i.jb
  %i.jh = add i32 %i.fp, %i.ix
end_hunk_0
