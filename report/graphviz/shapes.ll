Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@poly_init:bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.6, i64 noundef 64) #28 ; 0 uses
  tail call fastcc void @graphviz_exit() #29
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16         ; 13 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val = load ptr, ptr %i.i, align 8, !tbaa !45 ; 7 uses
  %i.j = icmp eq ptr %.val.val.val, @p_plain      ; 2 uses
  %i.k = load i32, ptr %.val.val.val, align 8, !tbaa !49
  %i.l = icmp ne i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !54
  %i.w = tail call ptr @agget(ptr noundef %0, ptr noundef nonnull @.str.7) #26
  %i.x = tail call zeroext i1 @mapbool(ptr noundef %i.w) #26
  %i.y = or i1 %i.l, %i.x                         ; 3 uses
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %gv_alloc.exit
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @N_width, align 8, !tbaa !56
  %i.aa = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.z, double noundef 0.000000e+00, double noundef 1.000000e-02) #26
  %i.ab = load ptr, ptr @N_height, align 8, !tbaa !56
  %i.ac = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.ab, double noundef 0.000000e+00, double noundef 2.000000e-02) #26
  %i.ad = tail call nsz double @llvm.maxnum.f64(double %i.aa, double %i.ac)
  %i.ae = fmul double %i.ad, 7.200000e+01         ; 2 uses
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !58
  %i.an = tail call nsz double @llvm.minnum.f64(double %i.ak, double %i.am)
  %i.ao = fmul double %i.an, 7.200000e+01
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !10
  %i.au = fmul <2 x double> %i.at, splat (double 7.200000e+01)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %gv_alloc.exit, %bb.f
  %i.av = phi <2 x double> [ %i.au, %bb.f ], [ zeroinitializer, %gv_alloc.exit ], [ %i.aq, %bb.e ], [ %i.ah, %bb.d ] ; 5 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 7 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0 ; 5 uses
  %i.ay = load ptr, ptr @N_peripheries, align 8, !tbaa !56
  %i.az = trunc i64 %i.n to i32
  %i.ba = tail call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.ay, i32 noundef %i.az, i32 noundef 0) #26 ; 6 uses
  %i.bb = sext i32 %i.ba to i64                   ; 10 uses
  %i.bc = load ptr, ptr @N_orientation, align 8, !tbaa !56
  %i.bd = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.bc, double noundef 0.000000e+00, double noundef -3.600000e+02) #26
  %i.be = fadd double %i.r, %i.bd                 ; 3 uses
  %i.bf = icmp eq i64 %i.p, 0
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load ptr, ptr @N_skew, align 8, !tbaa !56
  %i.bh = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.bg, double noundef 0.000000e+00, double noundef -1.000000e+02) #26
  %i.bi = load ptr, ptr @N_sides, align 8, !tbaa !56
  %i.bj = tail call i32 @late_int(ptr noundef nonnull %0, ptr noundef %i.bi, i32 noundef 4, i32 noundef 0) #26
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load ptr, ptr @N_distortion, align 8, !tbaa !56
  %i.bm = tail call double @late_double(ptr noundef nonnull %0, ptr noundef %i.bl, double noundef 0.000000e+00, double noundef -1.000000e+02) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0509 = phi i64 [ %i.bk, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %.0497 = phi double [ %i.bh, %bb.h ], [ %i.t, %bb.g ] ; 5 uses
  %.0496 = phi double [ %i.bm, %bb.h ], [ %i.v, %bb.g ] ; 5 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %.sroa.20.0.copyload = load double, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !10 ; 6 uses
  %.sroa.0384.0.copyload = load double, ptr %i.bq, align 8, !tbaa !10 ; 5 uses
  %i.br = fcmp ule double %.sroa.0384.0.copyload, 0.000000e+00
  %i.bs = fcmp ule double %.sroa.20.0.copyload, 0.000000e+00
  %or.cond.not528 = select i1 %i.br, i1 %i.bs, i1 false
  %or.cond12 = or i1 %i.j, %or.cond.not528
  br i1 %or.cond12, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = tail call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #26 ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !10
  %i.bu = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26 ; 2 uses
  %i.bv = load double, ptr %i.a, align 8, !tbaa !10
  %i.bw = load double, ptr %i.b, align 8, !tbaa !10
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  store double %i.ca, ptr %i.a, align 8, !tbaa !10
  %i.cb = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  store double %i.cb, ptr %i.b, align 8, !tbaa !10
  %i.cc = icmp sgt i32 %i.bu, 0
  br i1 %i.cc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cd = fmul nnan double %i.ca, 7.200000e+01    ; 2 uses
  %i.ce = call double @llvm.fmuladd.f64(double %i.cd, double 2.000000e+00, double %.sroa.0384.0.copyload) ; 2 uses
  %.not529 = icmp eq i32 %i.bu, 1
  br i1 %.not529, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = fmul nnan double %i.cb, 7.200000e+01
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double 2.000000e+00, double %.sroa.20.0.copyload)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ch = call double @llvm.fmuladd.f64(double %i.cd, double 2.000000e+00, double %.sroa.20.0.copyload)
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.ci = fadd double %.sroa.0384.0.copyload, 1.600000e+01
  %i.cj = fadd double %.sroa.20.0.copyload, 8.000000e+00
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.ck = fadd double %.sroa.0384.0.copyload, 1.600000e+01
  %i.cl = fadd double %.sroa.20.0.copyload, 8.000000e+00
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.p, %bb.i
  %.sroa.0384.1 = phi double [ %.sroa.0384.0.copyload, %bb.i ], [ %i.ck, %bb.p ], [ %i.ce, %bb.m ], [ %i.ce, %bb.n ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.20.1 = phi double [ %.sroa.20.0.copyload, %bb.i ], [ %i.cl, %bb.p ], [ %i.cg, %bb.m ], [ %i.ch, %bb.n ], [ %i.cj, %bb.o ]
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !59
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !162
  %i.cr = fsub double %.sroa.0384.1, %i.cq
  %i.cs = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !163
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !165 ; 2 uses
  %i.cy = fcmp ogt double %i.cx, 0.000000e+00
  %i.cz = insertelement <2 x double> poison, double %.sroa.0384.1, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %.sroa.20.1, i64 1 ; 2 uses
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = fmul nnan double %i.cx, 7.200000e+01
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fdiv <2 x double> %i.da, %i.dd
  %i.df = call <2 x double> @llvm.ceil.v2f64(<2 x double> %i.de)
  %i.dg = fmul <2 x double> %i.dd, %i.df
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dh = phi <2 x double> [ %i.dg, %bb.r ], [ %i.da, %bb.q ] ; 6 uses
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !72, !range !73, !noundef !74
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !75
  %i.dp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(7) @.str.4) #31
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.dr = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #26 ; 3 uses
  %i.ds = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.dt = call i64 @gvusershape_size(ptr noundef %i.ds, ptr noundef %i.dr) #26 ; 2 uses
  %.sroa.0361.0.extract.trunc366 = trunc i64 %i.dt to i32 ; 2 uses
  %.sroa.14.0.extract.shift367 = lshr i64 %i.dt, 32 ; 2 uses
  %2 = icmp eq i32 %.sroa.0361.0.extract.trunc366, -1
  %i.du = icmp eq i64 %.sroa.14.0.extract.shift367, 4294967295
  %or.cond5 = and i1 %2, %i.du
  br i1 %or.cond5, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not532 = icmp eq ptr %i.dr, null
  %i.dv = select i1 %.not532, ptr @.str.11, ptr %i.dr
  %i.dw = call ptr @agnameof(ptr noundef nonnull %0) #26
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.dv, ptr noundef %i.dw) #26
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %.sroa.14.0.extract.trunc368 = trunc nuw i64 %.sroa.14.0.extract.shift367 to i32
  %i.dx = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 130
  store i8 1, ptr %i.ea, align 2, !tbaa !166
  %3 = add nsw i32 %.sroa.0361.0.extract.trunc366, 2
  %4 = add nsw i32 %.sroa.14.0.extract.trunc368, 2
  br label %bb.ac

bb.x:                                             ; preds = %bb.s
  %i.eb = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #26 ; 4 uses
  %.not530 = icmp eq ptr %i.eb, null
  br i1 %.not530, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !76
  %.not531 = icmp eq i8 %i.ec, 0
  br i1 %.not531, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.ee = call i64 @gvusershape_size(ptr noundef %i.ed, ptr noundef nonnull %i.eb) #26 ; 2 uses
  %.sroa.0361.0.extract.trunc = trunc i64 %i.ee to i32 ; 2 uses
  %.sroa.14.0.extract.shift = lshr i64 %i.ee, 32  ; 2 uses
  %5 = icmp eq i32 %.sroa.0361.0.extract.trunc, -1
  %i.ef = icmp eq i64 %.sroa.14.0.extract.shift, 4294967295
  %or.cond8 = and i1 %5, %i.ef
  br i1 %or.cond8, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = call ptr @agnameof(ptr noundef nonnull %0) #26
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.eb, ptr noundef %i.eg) #26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.14.0.extract.shift to i32
  %i.eh = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !23
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 130
  store i8 1, ptr %i.ek, align 2, !tbaa !166
  %6 = add nsw i32 %.sroa.0361.0.extract.trunc, 2
  %7 = add nsw i32 %.sroa.14.0.extract.trunc, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.y, %bb.ab, %bb.aa, %bb.t, %bb.w, %bb.v
  %.sroa.0361.0 = phi i32 [ 0, %bb.v ], [ %3, %bb.w ], [ 0, %bb.t ], [ 0, %bb.aa ], [ %6, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  %.sroa.14.0 = phi i32 [ 0, %bb.v ], [ %4, %bb.w ], [ 0, %bb.t ], [ 0, %bb.aa ], [ %7, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %8 = sitofp nsz i32 %.sroa.0361.0 to double
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %9 = sitofp i32 %.sroa.14.0 to double           ; 3 uses
  %10 = insertelement <2 x double> poison, double %8, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %i.em = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dh, <2 x double> %11)
  store <2 x double> %i.em, ptr %1, align 16, !tbaa !10
  %i.en = icmp ult i64 %.0509, 3
  br i1 %i.en, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i = call noundef i1 @llvm.is.fpclass.f64(double %.0496, /* (pzero) */ i32 64)
  br i1 %.not.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i538 = call noundef i1 @llvm.is.fpclass.f64(double %.0497, /* (pzero) */ i32 64)
  br i1 %.not.i.i538, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %.1510 = phi i64 [ %.0509, %bb.ae ], [ 120, %bb.af ], [ %.0509, %bb.ac ] ; 31 uses
  %i.eo = call ptr @agget(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #26 ; 2 uses
  %.not533 = icmp eq ptr %i.eo, null
  br i1 %.not533, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !76  ; 3 uses
  switch i8 %i.ep, label %bb.aj [
    i8 116, label %bb.ai
    i8 98, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 136
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 104
  store i8 %i.ep, ptr %i.et, align 8, !tbaa !167
  %i.eu = icmp ne i8 %i.ep, 99
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ev = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 136
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  store i8 99, ptr %i.ey, align 8, !tbaa !167
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.not691 = phi i1 [ false, %bb.aj ], [ %i.eu, %bb.ai ]
  %i.ez = phi ptr [ %i.ev, %bb.aj ], [ %i.eq, %bb.ai ]
  %i.fa = icmp eq i64 %.1510, 4
  br i1 %i.fa, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.fb = call double @fmod(double noundef %i.be, double noundef 9.000000e+01) #26
  %i.fc = call double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp olt double %i.fc, 5.000000e-01
  br i1 %i.fd, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %.not.i.i539 = call noundef i1 @llvm.is.fpclass.f64(double %.0496, /* (pzero) */ i32 64)
  br i1 %.not.i.i539, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %.not.i.i540 = call noundef i1 @llvm.is.fpclass.f64(double %.0497, /* (pzero) */ i32 64)
  br i1 %.not.i.i540, label %._crit_edge657, label %.thread

._crit_edge657:                                   ; preds = %bb.an
  %.sroa.3.0.copyload.pre = load double, ptr %i.el, align 8, !tbaa !10
  br label %bb.au

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.am, %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !77 ; 2 uses
  %.not534 = icmp eq ptr %i.fj, null
  br i1 %.not534, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !169
  %i.fl = load double, ptr %1, align 16
  %i.fm = load double, ptr %i.el, align 8
  %i.fn = call { double, double } %i.fk(double %i.fl, double %i.fm) #26 ; 2 uses
  %i.fo = extractvalue { double, double } %i.fn, 0
  %i.fp = extractvalue { double, double } %i.fn, 1 ; 2 uses
  store double %i.fo, ptr %1, align 16, !tbaa !10
  store double %i.fp, ptr %i.el, align 8, !tbaa !10
  br label %bb.au

bb.ap:                                            ; preds = %.thread
  %i.fq = load double, ptr %i.el, align 8, !tbaa !17 ; 3 uses
  %i.fr = fmul double %i.fq, f0x3FF6A09E667F3BCD  ; 3 uses
  %i.fs = fcmp ule double %i.aw, %i.fr
  %brmerge = or i1 %i.fs, %.not691
  br i1 %brmerge, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = fdiv double %i.fq, %i.aw                ; 2 uses
  %i.fu = fneg double %i.ft
  %i.fv = call double @llvm.fmuladd.f64(double %i.fu, double %i.ft, double 1.000000e+00)
  %i.fw = fdiv double 1.000000e+00, %i.fv
  %i.fx = call double @sqrt(double noundef %i.fw) #26
  %i.fy = load double, ptr %1, align 16, !tbaa !18
  %i.fz = fmul double %i.fx, %i.fy                ; 2 uses
  store double %i.fz, ptr %1, align 16, !tbaa !18
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ga = load double, ptr %1, align 16, !tbaa !18
  %i.gb = fmul double %i.ga, f0x3FF6A09E667F3BCD  ; 2 uses
  store double %i.gb, ptr %1, align 16, !tbaa !18
  store double %i.fr, ptr %i.el, align 8, !tbaa !17
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = phi double [ %i.fr, %bb.ar ], [ %i.fq, %bb.aq ] ; 2 uses
  %i.gd = phi double [ %i.gb, %bb.ar ], [ %i.fz, %bb.aq ]
  %i.ge = icmp ugt i64 %.1510, 2
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gf = uitofp i64 %.1510 to double
  %i.gg = fdiv double f0x400921FB54442D18, %i.gf
  %i.gh = call double @cos(double noundef %i.gg) #26
  %i.gi = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gc, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fdiv <2 x double> %i.gj, %i.gl          ; 2 uses
  store <2 x double> %i.gm, ptr %1, align 16, !tbaa !10
  %i.gn = extractelement <2 x double> %i.gm, i64 1
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge657, %bb.ao, %bb.at, %bb.as
  %.sroa.3.0.copyload = phi double [ %i.fp, %bb.ao ], [ %i.gn, %bb.at ], [ %i.gc, %bb.as ], [ %.sroa.3.0.copyload.pre, %._crit_edge657 ]
  %i.go = phi i1 [ false, %bb.ao ], [ false, %bb.at ], [ false, %bb.as ], [ true, %._crit_edge657 ] ; 2 uses
  %i.gp = load ptr, ptr @N_fixed, align 8, !tbaa !56
  %i.gq = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.gp, ptr noundef nonnull @.str.15) #26 ; 3 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !76
  %i.gs = icmp eq i8 %i.gr, 115
  br i1 %i.gs, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gt = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gq, ptr noundef nonnull dereferenceable(6) @.str.16) #31
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store double %i.ax, ptr %1, align 16, !tbaa !10
  store double %i.aw, ptr %i.el, align 8, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 2048, ptr %i.gv, align 8
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.gw = call zeroext i1 @mapbool(ptr noundef nonnull %i.gq) #26
  br i1 %i.gw, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.gx = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 136
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !59 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !162
  %i.hc = fcmp olt double %i.ax, %i.hb
  br i1 %i.hc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.he = load double, ptr %i.hd, align 8, !tbaa !170
  %i.hf = fcmp olt double %i.aw, %i.he
  br i1 %i.hf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hg = call ptr @agnameof(ptr noundef nonnull %0) #26
  %i.hh = call ptr @agraphof(ptr noundef nonnull %0) #26
  %i.hi = call ptr @agnameof(ptr noundef %i.hh) #26
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.17, ptr noundef %i.hg, ptr noundef %i.hi) #26
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  store double %i.ax, ptr %1, align 16, !tbaa !10
  store double %i.aw, ptr %i.el, align 8, !tbaa !10
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax
  %i.hj = load <2 x double>, ptr %1, align 16, !tbaa !10
  %i.hk = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.av, <2 x double> %i.hj) ; 4 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 1
  %i.hm = extractelement <2 x double> %i.hk, i64 0
  store <2 x double> %i.hk, ptr %1, align 16, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.aw
  %.not535 = phi i1 [ false, %bb.aw ], [ true, %bb.bb ], [ true, %bb.bc ] ; 2 uses
  %i.hn = phi double [ %i.aw, %bb.aw ], [ %i.aw, %bb.bb ], [ %i.hl, %bb.bc ]
  %i.ho = phi double [ %i.ax, %bb.aw ], [ %i.ax, %bb.bb ], [ %i.hm, %bb.bc ]
  %i.hp = phi <2 x double> [ %i.av, %bb.aw ], [ %i.av, %bb.bb ], [ %i.hk, %bb.bc ]
  br i1 %i.y, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hq = call nsz double @llvm.maxnum.f64(double %i.ho, double %i.hn) ; 3 uses
  store double %i.hq, ptr %i.el, align 8, !tbaa !17
  store double %i.hq, ptr %1, align 16, !tbaa !18
  %i.hr = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ht = phi <2 x double> [ %i.hs, %bb.be ], [ %i.hp, %bb.bd ]
  %i.hu = load ptr, ptr @N_nojustify, align 8, !tbaa !56
  %i.hv = call ptr @late_string(ptr noundef nonnull %0, ptr noundef %i.hu, ptr noundef nonnull @.str.15) #26
  %i.hw = call zeroext i1 @mapbool(ptr noundef %i.hv) #26
  %i.hx = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  br i1 %i.hw, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.go, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hy = load double, ptr %1, align 16, !tbaa !18
  %i.hz = call nsz double @llvm.maxnum.f64(double %i.hx, double %i.hy)
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.ia = load double, ptr %i.el, align 8, !tbaa !17 ; 3 uses
  %i.ib = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.ic = fcmp olt double %i.ib, %i.ia
  br i1 %i.ic, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.id = load double, ptr %1, align 16, !tbaa !18
  %i.ie = fmul double %i.ib, %i.ib
  %i.if = fmul double %i.ia, %i.ia
  %i.ig = fdiv double %i.ie, %i.if
  %i.ih = fsub double 1.000000e+00, %i.ig
  %i.ii = call double @sqrt(double noundef %i.ih) #26
  %i.ij = fmul double %i.id, %i.ii
  %i.ik = call nsz double @llvm.maxnum.f64(double %i.hx, double %i.ij)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bf, %bb.bi, %bb.bh, %bb.bj
  %.sink696 = phi double [ %i.hz, %bb.bh ], [ %i.hx, %bb.bi ], [ %i.ik, %bb.bj ], [ %i.hx, %bb.bf ]
  %i.il = fsub double %.sink696, %i.cr
  %i.im = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 136
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !59 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  store double %i.il, ptr %i.ip, align 8, !tbaa !171
  br i1 %.not535, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.iq = load double, ptr %i.el, align 8, !tbaa !17
  %i.ir = fsub double %i.iq, %.sroa.3.0.copyload  ; 2 uses
  %i.is = extractelement <2 x double> %i.dh, i64 1 ; 3 uses
  %i.it = fcmp olt double %i.is, %9
  %i.iu = fsub double %9, %i.is
  %i.iv = fadd double %i.iu, %i.ir
  %.0476 = select i1 %i.it, double %i.iv, double %i.ir
  %i.iw = fadd double %i.is, %.0476
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  store double %i.iw, ptr %i.ix, align 8, !tbaa !172
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.iy = load ptr, ptr @N_penwidth, align 8, !tbaa !56
  %i.iz = call double @late_double(ptr noundef nonnull %0, ptr noundef %i.iy, double noundef 1.000000e+00, double noundef 0.000000e+00) #26 ; 3 uses
  %i.ja = icmp eq i32 %i.ba, 0
  %spec.store.select = select i1 %i.ja, i64 1, i64 %i.bb
  %i.jb = icmp ne i32 %i.ba, 0
  %i.jc = fcmp ogt double %i.iz, 0.000000e+00
  %or.cond10 = select i1 %i.jb, i1 %i.jc, i1 false
  %i.jd = zext i1 %or.cond10 to i64
  %spec.select = add nsw i64 %spec.store.select, %i.jd ; 8 uses
  %i.je = icmp ult i64 %.1510, 3
  br i1 %i.je, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %bb.bm
  %i.jf = shl nsw i64 %spec.select, 1             ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %.thread.i, label %bb.bo

.thread.i:                                        ; preds = %bb.bn
  %i.jg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit

bb.bo:                                            ; preds = %bb.bn
  %mul.ov.i = icmp ugt i64 %i.jf, 1152921504606846975
  br i1 %mul.ov.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ji = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jh, ptr noundef nonnull @.str.5, i64 noundef %i.jf, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.jj = call noalias ptr @calloc(i64 noundef %i.jf, i64 noundef 16) #27 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.br, label %gv_calloc.exit

bb.br:                                            ; preds = %bb.bq
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jm = shl nuw nsw i64 %spec.select, 5
  %i.jn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.6, i64 noundef %i.jm) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.bq
  %i.jo = phi ptr [ %i.jg, %.thread.i ], [ %i.jj, %bb.bq ] ; 8 uses
  %i.jp = load <2 x double>, ptr %1, align 16, !tbaa !10 ; 2 uses
  %i.jq = fmul <2 x double> %i.jp, splat (double 5.000000e-01) ; 5 uses
  %i.jr = fneg <2 x double> %i.jq
  store <2 x double> %i.jr, ptr %i.jo, align 8, !tbaa !10
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x double> %i.jq, ptr %i.js, align 8, !tbaa !10
  %i.jt = icmp ugt i32 %i.ba, 1
  br i1 %i.jt, label %.preheader.preheader, label %bb.bt

.preheader.preheader:                             ; preds = %gv_calloc.exit
  %i.ju = add nsw i64 %i.bb, -1                   ; 3 uses
  %xtraiter756 = and i64 %i.ju, 1
  %i.jv = icmp eq i32 %i.ba, 2
  br i1 %i.jv, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter763 = and i64 %i.ju, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod760.not = icmp eq i64 %xtraiter756, 0
  br i1 %lcmp.mod760.not, label %bb.bs, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.0502636.epil.init = phi i64 [ 2, %.preheader.preheader ], [ %i.kl, %.unr-lcssa ]
  %.epil.init759 = phi <2 x double> [ %i.jq, %.preheader.preheader ], [ %i.kg, %.unr-lcssa ]
  %lcmp.mod762 = trunc i64 %i.ju to i1
  call void @llvm.assume(i1 %lcmp.mod762)
  %i.jw = fadd <2 x double> %.epil.init759, splat (double 4.000000e+00) ; 3 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.0502636.epil.init ; 2 uses
  %i.jy = fneg <2 x double> %i.jw
  store <2 x double> %i.jy, ptr %i.jx, align 8, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <2 x double> %i.jw, ptr %i.jz, align 8, !tbaa !10
  br label %bb.bs

bb.bs:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa = phi <2 x double> [ %i.kg, %.unr-lcssa ], [ %i.jw, %.preheader.epil.preheader ] ; 2 uses
  %i.ka = fmul <2 x double> %.lcssa, splat (double 2.000000e+00)
  br label %bb.bt

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0502636 = phi i64 [ 2, %.preheader.preheader.new ], [ %i.kl, %.preheader ] ; 3 uses
  %i.kb = phi <2 x double> [ %i.jq, %.preheader.preheader.new ], [ %i.kg, %.preheader ]
  %niter764 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter764.next.1, %.preheader ]
  %i.kc = fadd <2 x double> %i.kb, splat (double 4.000000e+00) ; 3 uses
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.0502636 ; 2 uses
  %i.ke = fneg <2 x double> %i.kc
  store <2 x double> %i.ke, ptr %i.kd, align 8, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <2 x double> %i.kc, ptr %i.kf, align 8, !tbaa !10
  %i.kg = fadd <2 x double> %i.kc, splat (double 4.000000e+00) ; 5 uses
  %i.kh = getelementptr [16 x i8], ptr %i.jo, i64 %.0502636 ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 32
  %i.kj = fneg <2 x double> %i.kg
  store <2 x double> %i.kj, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr i8, ptr %i.kh, i64 48
  store <2 x double> %i.kg, ptr %i.kk, align 8, !tbaa !10
  %i.kl = add i64 %.0502636, 4                    ; 2 uses
  %niter764.next.1 = add i64 %niter764, 2         ; 2 uses
  %niter764.ncmp.1 = icmp eq i64 %niter764.next.1, %unroll_iter763
  br i1 %niter764.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !151

bb.bt:                                            ; preds = %bb.bs, %gv_calloc.exit
  %i.km = phi <2 x double> [ %i.ka, %bb.bs ], [ %i.jp, %gv_calloc.exit ] ; 3 uses
  %i.kn = phi <2 x double> [ %.lcssa, %bb.bs ], [ %i.jq, %gv_calloc.exit ]
  %i.ko = icmp ugt i64 %spec.select, %i.bb
  br i1 %i.ko, label %bb.bu, label %.loopexit

bb.bu:                                            ; preds = %bb.bt
  %i.kp = fmul double %i.iz, 5.000000e-01
  %i.kq = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = fadd <2 x double> %i.kr, %i.kn          ; 3 uses
  %.idx = shl nsw i64 %i.bb, 5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx ; 2 uses
  %i.ku = fneg <2 x double> %i.ks
  store <2 x double> %i.ku, ptr %i.kt, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <2 x double> %i.ks, ptr %i.kv, align 8, !tbaa !10
  %i.kw = fmul <2 x double> %i.ks, splat (double 2.000000e+00)
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bm
  %i.kx = mul i64 %spec.select, %.1510            ; 5 uses
  %.not.i541 = icmp eq i64 %i.kx, 0
  br i1 %.not.i541, label %.thread.i544, label %bb.bw

.thread.i544:                                     ; preds = %bb.bv
  %i.ky = call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #27
  br label %gv_calloc.exit545

bb.bw:                                            ; preds = %bb.bv
  %mul.ov.i543 = icmp ugt i64 %i.kx, 1152921504606846975
  br i1 %mul.ov.i543, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.5, i64 noundef %i.kx, i64 noundef 16) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.lb = call noalias ptr @calloc(i64 noundef %i.kx, i64 noundef 16) #27 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bz, label %gv_calloc.exit545

bb.bz:                                            ; preds = %bb.by
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.le = shl nuw i64 %i.kx, 4
  %i.lf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.6, i64 noundef %i.le) #28 ; 0 uses
  call fastcc void @graphviz_exit() #29
  unreachable

gv_calloc.exit545:                                ; preds = %.thread.i544, %bb.by
  %i.lg = phi ptr [ %i.ky, %.thread.i544 ], [ %i.lb, %bb.by ] ; 21 uses
  %i.lh = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !38
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !45
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !77 ; 2 uses
  %.not536 = icmp eq ptr %i.ln, null
  br i1 %.not536, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %gv_calloc.exit545
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !173
  call void %i.lp(ptr noundef %i.lg, ptr noundef nonnull %1) #26
  %i.lq = load <2 x double>, ptr %1, align 16, !tbaa !10
  %i.lr = fmul <2 x double> %i.lq, splat (double 5.000000e-01)
  br label %.loopexit563

bb.cb:                                            ; preds = %gv_calloc.exit545
  %i.ls = uitofp i64 %.1510 to double
  %i.lt = fdiv double f0x401921FB54442D18, %i.ls  ; 5 uses
  %i.lu = fmul nnan double %i.lt, 5.000000e-01    ; 2 uses
  %i.lv = call double @sin(double noundef %i.lu) #26 ; 2 uses
  %i.lw = call double @llvm.fabs.f64(double %.0496)
  %i.lx = call double @llvm.fabs.f64(double %.0497)
  %i.ly = fadd double %i.lx, %i.lw
  %i.lz = call double @hypot(double noundef %i.ly, double noundef 1.000000e+00) #26 ; 2 uses
  %i.ma = fmul double %.0496, f0x3FF6A09E667F3BCD
  %i.mb = call double @cos(double noundef %i.lu) #26
  %i.mc = fdiv double %i.ma, %i.mb                ; 2 uses
  %i.md = fmul double %.0497, 5.000000e-01        ; 2 uses
end_hunk_0
