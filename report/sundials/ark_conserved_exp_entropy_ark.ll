Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_conserved_exp_entropy_ark?download=true
inline.NumInlined: 39
begin_hunk_0_@main:bb.a
  br i1 %i.ag, label %.split, label %bb.d

.split:                                           ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = tail call double @strtod(ptr noundef nonnull captures(none) %i.ai, ptr noundef null) #8, !inline_history !16 ; 2 uses
  %puts225 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %bb.d
  %.0228 = phi double [ %i.aj, %.split ], [ 0.000000e+00, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread214, %.split, %bb.e
  %str.1.sink = phi ptr [ @str.1, %bb.e ], [ @str.2, %.split ], [ @str.2, %.thread214 ], [ @str.2, %bb.d ]
  %.0223 = phi double [ %.0228, %bb.e ], [ %i.aj, %.split ], [ 0.000000e+00, %.thread214 ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %.0103208212221 = phi i1 [ %i.aa, %bb.e ], [ %i.aa, %.split ], [ %.0103208.ph, %.thread214 ], [ %i.aa, %bb.d ] ; 3 uses
  %.0102213219 = phi i1 [ true, %bb.e ], [ false, %.split ], [ false, %.thread214 ], [ false, %bb.d ] ; 3 uses
  %puts108 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink) ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef f0x3EB0C6F7A0B5ED8D) ; 0 uses
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef 1.000000e-10) ; 0 uses
  %i.am = fcmp ogt double %.0223, 0.000000e+00    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %.0223) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %str.3.str.4 = select i1 %.0103208212221, ptr @str.3, ptr @str.4
  %puts110 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.3.str.4) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ao = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %check_flag.exit, label %bb.i

check_flag.exit:                                  ; preds = %bb.h
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.9, i32 noundef %i.ao) #9 ; 0 uses
  br label %bb.ay

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.at = call ptr @N_VNew_Serial(i64 noundef 2, ptr noundef %i.as) #8 ; 10 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %check_ptr.exit, label %bb.j

check_ptr.exit:                                   ; preds = %bb.i
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.10) #9 ; 0 uses
  br label %bb.ay

bb.j:                                             ; preds = %bb.i
  %i.aw = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.at) #8 ; 8 uses
  %.not.i136 = icmp eq ptr %i.aw, null
  br i1 %.not.i136, label %check_ptr.exit138, label %bb.k

check_ptr.exit138:                                ; preds = %bb.j
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.11) #9 ; 0 uses
  br label %bb.ay

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.aw, align 8, !tbaa !19
  %i.ba = call ptr @N_VClone(ptr noundef nonnull %i.at) #8 ; 4 uses
  %.not.i139 = icmp eq ptr %i.ba, null
  br i1 %.not.i139, label %check_ptr.exit141, label %bb.l

check_ptr.exit141:                                ; preds = %bb.k
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.12) #9 ; 0 uses
  br label %bb.ay

bb.l:                                             ; preds = %bb.k
  %i.bd = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.ba) #8 ; 2 uses
  %.not.i142 = icmp eq ptr %i.bd, null
  br i1 %.not.i142, label %check_ptr.exit144, label %bb.m

check_ptr.exit144:                                ; preds = %bb.l
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.11) #9 ; 0 uses
  br label %bb.ay

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  br i1 %.0102213219, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call ptr @ARKStepCreate(ptr noundef null, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.at, ptr noundef %i.bg) #8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = call ptr @ARKStepCreate(ptr noundef nonnull @f, ptr noundef null, double noundef 0.000000e+00, ptr noundef nonnull %i.at, ptr noundef %i.bg) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = phi ptr [ %i.bi, %bb.o ], [ %i.bh, %bb.n ] ; 11 uses
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !12
  %.not.i145 = icmp eq ptr %i.bj, null
  br i1 %.not.i145, label %check_ptr.exit147, label %bb.q

check_ptr.exit147:                                ; preds = %bb.p
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.13) #9 ; 0 uses
  br label %bb.ay

bb.q:                                             ; preds = %bb.p
  %i.bm = call i32 @ARKodeSetOrder(ptr noundef nonnull %i.bj, i32 noundef 2) #8 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %check_flag.exit149, label %bb.r

check_flag.exit149:                               ; preds = %bb.q
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.14, i32 noundef %i.bm) #9 ; 0 uses
  br label %bb.ay

bb.r:                                             ; preds = %bb.q
  %i.bq = call i32 @ARKodeSStolerances(ptr noundef nonnull %i.bj, double noundef f0x3EB0C6F7A0B5ED8D, double noundef 1.000000e-10) #8 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %check_flag.exit151, label %bb.s

check_flag.exit151:                               ; preds = %bb.r
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bs, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.15, i32 noundef %i.bq) #9 ; 0 uses
  br label %bb.ay

bb.s:                                             ; preds = %bb.r
  br i1 %.0103208212221, label %check_flag.exit153.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call i32 @ARKodeSetRelaxFn(ptr noundef nonnull %i.bj, ptr noundef nonnull @Ent, ptr noundef nonnull @JacEnt) #8 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %check_flag.exit153, label %check_flag.exit153.thread

check_flag.exit153:                               ; preds = %bb.t
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.16, i32 noundef %i.bu) #9 ; 0 uses
  br label %bb.ay

check_flag.exit153.thread:                        ; preds = %bb.t, %bb.s
  br i1 %.0102213219, label %check_flag.exit165.thread, label %bb.u

bb.u:                                             ; preds = %check_flag.exit153.thread
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.bz = call ptr @SUNDenseMatrix(i64 noundef 2, i64 noundef 2, ptr noundef %i.by) #8 ; 4 uses
  %.not.i154 = icmp eq ptr %i.bz, null
  br i1 %.not.i154, label %check_ptr.exit156, label %bb.v

check_ptr.exit156:                                ; preds = %bb.u
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ca, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.17) #9 ; 0 uses
  br label %bb.ay

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.cd = call ptr @SUNLinSol_Dense(ptr noundef nonnull %i.at, ptr noundef nonnull %i.bz, ptr noundef %i.cc) #8 ; 3 uses
  %.not.i157 = icmp eq ptr %i.cd, null
  br i1 %.not.i157, label %check_ptr.exit159, label %bb.w

check_ptr.exit159:                                ; preds = %bb.v
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.18) #9 ; 0 uses
  br label %bb.ay

bb.w:                                             ; preds = %bb.v
  %i.cg = call i32 @ARKodeSetLinearSolver(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.bz) #8 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %check_flag.exit161, label %bb.x

check_flag.exit161:                               ; preds = %bb.w
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.19, i32 noundef %i.cg) #9 ; 0 uses
  br label %bb.ay

bb.x:                                             ; preds = %bb.w
  %i.ck = call i32 @ARKodeSetJacFn(ptr noundef nonnull %i.bj, ptr noundef nonnull @Jac) #8 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %check_flag.exit163, label %bb.y

check_flag.exit163:                               ; preds = %bb.x
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.20, i32 noundef %i.ck) #9 ; 0 uses
  br label %bb.ay

bb.y:                                             ; preds = %bb.x
  %i.co = call i32 @ARKodeSetNonlinConvCoef(ptr noundef nonnull %i.bj, double noundef 1.000000e-02) #8 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %check_flag.exit165, label %check_flag.exit165.thread

check_flag.exit165:                               ; preds = %bb.y
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.21, i32 noundef %i.co) #9 ; 0 uses
  br label %bb.ay

check_flag.exit165.thread:                        ; preds = %bb.y, %check_flag.exit153.thread
  %.0105.a = phi ptr [ null, %check_flag.exit153.thread ], [ %i.cd, %bb.y ]
  %.0104.a = phi ptr [ null, %check_flag.exit153.thread ], [ %i.bz, %bb.y ]
  br i1 %i.am, label %bb.z, label %check_flag.exit167.thread

bb.z:                                             ; preds = %check_flag.exit165.thread
  %i.cs = call i32 @ARKodeSetFixedStep(ptr noundef nonnull %i.bj, double noundef %.0223) #8 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %check_flag.exit167, label %check_flag.exit167.thread

check_flag.exit167:                               ; preds = %bb.z
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.22, i32 noundef %i.cs) #9 ; 0 uses
  br label %bb.ay

check_flag.exit167.thread:                        ; preds = %bb.z, %check_flag.exit165.thread
  %i.cw = call noalias ptr @fopen(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) ; 4 uses
  %i.cx = call i64 @fwrite(ptr nonnull @.str.25, i64 48, i64 1, ptr %i.cw) ; 0 uses
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !19
  %i.cy = call i32 @Ent(ptr noundef nonnull %i.at, ptr noundef nonnull %i.b, ptr poison) ; 0 uses
  %i.cz = load double, ptr %i.aw, align 8, !tbaa !19
  %i.da = load double, ptr %i.az, align 8, !tbaa !19
  %i.db = load double, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.27, double noundef 0.000000e+00, double noundef %i.cz, double noundef %i.da, double noundef %i.db, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #8 ; 0 uses
  %puts127 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts128 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.dd = load double, ptr %i.u, align 8, !tbaa !19
  %i.de = load double, ptr %i.aw, align 8, !tbaa !19
  %i.df = load double, ptr %i.az, align 8, !tbaa !19
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 0, double noundef %i.dd, double noundef %i.de, double noundef %i.df, double noundef %i.db, double noundef 0.000000e+00) ; 0 uses
  %i.dh = load double, ptr %i.u, align 8, !tbaa !19
  %i.di = fcmp olt double %i.dh, 5.000000e+00
  br i1 %i.di, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %check_flag.exit167.thread, %bb.ad
  %i.dj = phi ptr [ %i.dw, %bb.ad ], [ %i.bj, %check_flag.exit167.thread ]
  %i.dk = call i32 @ARKodeEvolve(ptr noundef %i.dj, double noundef 5.000000e+00, ptr noundef nonnull %i.at, ptr noundef nonnull %i.u, i32 noundef 2) #8 ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %check_flag.exit170, label %bb.aa

check_flag.exit170:                               ; preds = %.lr.ph
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.31, i32 noundef %i.dk) #9 ; 0 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !12
  br label %.loopexit

bb.aa:                                            ; preds = %.lr.ph
  %i.do = call i32 @Ent(ptr noundef nonnull %i.at, ptr noundef nonnull %i.c, ptr poison) ; 0 uses
  %i.dp = load double, ptr %i.u, align 8, !tbaa !19
  %i.dq = call i32 @ans(double noundef %i.dp, ptr noundef nonnull %i.ba) ; 0 uses
  %i.dr = load double, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.ds = fsub double %i.dr, %i.db                ; 2 uses
  %i.dt = load <2 x double>, ptr %i.aw, align 8, !tbaa !19
  %i.du = load <2 x double>, ptr %i.bd, align 8, !tbaa !19
  %i.dv = fsub <2 x double> %i.dt, %i.du          ; 2 uses
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !12  ; 3 uses
  %i.dx = call i32 @ARKodeGetNumSteps(ptr noundef %i.dw, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ab, label %check_flag.exit174

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.33, i32 noundef %i.dx) #9 ; 0 uses
  br label %check_flag.exit174

check_flag.exit174:                               ; preds = %bb.aa, %bb.ab
  %i.eb = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.ec = srem i64 %i.eb, 40
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %check_flag.exit174
  %i.ee = load double, ptr %i.u, align 8, !tbaa !19
  %i.ef = load double, ptr %i.aw, align 8, !tbaa !19
  %i.eg = load double, ptr %i.az, align 8, !tbaa !19
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %i.eb, double noundef %i.ee, double noundef %i.ef, double noundef %i.eg, double noundef %i.dr, double noundef %i.ds) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %check_flag.exit174
  %i.ei = load double, ptr %i.u, align 8, !tbaa !19
  %i.ej = load double, ptr %i.aw, align 8, !tbaa !19
  %i.ek = load double, ptr %i.az, align 8, !tbaa !19
  %i.el = extractelement <2 x double> %i.dv, i64 0
  %i.em = extractelement <2 x double> %i.dv, i64 1
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.27, double noundef %i.ei, double noundef %i.ej, double noundef %i.ek, double noundef %i.dr, double noundef %i.el, double noundef %i.em, double noundef %i.ds) #8 ; 0 uses
  %i.eo = load double, ptr %i.u, align 8, !tbaa !19
  %i.ep = fcmp olt double %i.eo, 5.000000e+00
  br i1 %i.ep, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %check_flag.exit167.thread, %check_flag.exit170
  %i.eq = phi ptr [ %.pre, %check_flag.exit170 ], [ %i.bj, %check_flag.exit167.thread ], [ %i.dw, %bb.ad ]
  %puts132 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.er = call i32 @fclose(ptr noundef %i.cw)     ; 0 uses
  %i.es = call i32 @ARKodeGetNumSteps(ptr noundef %i.eq, ptr noundef nonnull %i.e) #8 ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.ae, label %check_flag.exit176

bb.ae:                                            ; preds = %.loopexit
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.33, i32 noundef %i.es) #9 ; 0 uses
  br label %check_flag.exit176

check_flag.exit176:                               ; preds = %.loopexit, %bb.ae
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !12  ; 15 uses
  %i.ex = call i32 @ARKodeGetNumStepAttempts(ptr noundef %i.ew, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.af, label %check_flag.exit178

bb.af:                                            ; preds = %check_flag.exit176
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.35, i32 noundef %i.ex) #9 ; 0 uses
  br label %check_flag.exit178

check_flag.exit178:                               ; preds = %check_flag.exit176, %bb.af
  %i.fb = call i32 @ARKodeGetNumErrTestFails(ptr noundef %i.ew, ptr noundef nonnull %i.t) #8 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.ag, label %check_flag.exit180

bb.ag:                                            ; preds = %check_flag.exit178
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.36, i32 noundef %i.fb) #9 ; 0 uses
  br label %check_flag.exit180

check_flag.exit180:                               ; preds = %check_flag.exit178, %bb.ag
  %i.ff = call i32 @ARKodeGetNumRhsEvals(ptr noundef %i.ew, i32 noundef 0, ptr noundef nonnull %i.g) #8 ; 2 uses
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.ah, label %check_flag.exit182

bb.ah:                                            ; preds = %check_flag.exit180
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.37, i32 noundef %i.ff) #9 ; 0 uses
  br label %check_flag.exit182

check_flag.exit182:                               ; preds = %check_flag.exit180, %bb.ah
  %i.fj = call i32 @ARKodeGetNumRhsEvals(ptr noundef %i.ew, i32 noundef 1, ptr noundef nonnull %i.h) #8 ; 3 uses
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ai, label %check_flag.exit184

bb.ai:                                            ; preds = %check_flag.exit182
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.37, i32 noundef %i.fj) #9 ; 0 uses
  br label %check_flag.exit184

check_flag.exit184:                               ; preds = %check_flag.exit182, %bb.ai
  %puts133 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %i.fn = load i64, ptr %i.e, align 8, !tbaa !21
  %i.fo = load i64, ptr %i.f, align 8, !tbaa !21
  %i.fp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.fn, i64 noundef %i.fo) ; 0 uses
  %i.fq = load i64, ptr %i.t, align 8, !tbaa !21
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.fq) ; 0 uses
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !21
  %i.ft = load i64, ptr %i.h, align 8, !tbaa !21
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.fs, i64 noundef %i.ft) ; 0 uses
  br i1 %.0102213219, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %check_flag.exit184
  %i.fv = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef %i.ew, ptr noundef nonnull %i.r) #8 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.ak, label %check_flag.exit186

bb.ak:                                            ; preds = %bb.aj
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.fy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.42, i32 noundef %i.fv) #9 ; 0 uses
  br label %check_flag.exit186

check_flag.exit186:                               ; preds = %bb.aj, %bb.ak
  %i.fz = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef %i.ew, ptr noundef nonnull %i.s) #8 ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.al, label %check_flag.exit188

bb.al:                                            ; preds = %check_flag.exit186
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.43, i32 noundef %i.fz) #9 ; 0 uses
  br label %check_flag.exit188

check_flag.exit188:                               ; preds = %check_flag.exit186, %bb.al
  %i.gd = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef %i.ew, ptr noundef nonnull %i.o) #8 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %bb.am, label %check_flag.exit190

bb.am:                                            ; preds = %check_flag.exit188
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.44, i32 noundef %i.gd) #9 ; 0 uses
  br label %check_flag.exit190

check_flag.exit190:                               ; preds = %check_flag.exit188, %bb.am
  %i.gh = call i32 @ARKodeGetNumJacEvals(ptr noundef %i.ew, ptr noundef nonnull %i.p) #8 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.an, label %check_flag.exit192

bb.an:                                            ; preds = %check_flag.exit190
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gj, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.45, i32 noundef %i.gh) #9 ; 0 uses
  br label %check_flag.exit192

check_flag.exit192:                               ; preds = %check_flag.exit190, %bb.an
  %i.gl = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef %i.ew, ptr noundef nonnull %i.q) #8 ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %bb.ao, label %check_flag.exit194

bb.ao:                                            ; preds = %check_flag.exit192
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.go = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gn, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.46, i32 noundef %i.gl) #9 ; 0 uses
  br label %check_flag.exit194

check_flag.exit194:                               ; preds = %check_flag.exit192, %bb.ao
  %i.gp = load i64, ptr %i.r, align 8, !tbaa !21
  %i.gq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %i.gp) ; 0 uses
  %i.gr = load i64, ptr %i.s, align 8, !tbaa !21
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.gr) ; 0 uses
  %i.gt = load i64, ptr %i.o, align 8, !tbaa !21
  %i.gu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i64 noundef %i.gt) ; 0 uses
  %i.gv = load i64, ptr %i.p, align 8, !tbaa !21
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i64 noundef %i.gv) ; 0 uses
  %i.gx = load i64, ptr %i.q, align 8, !tbaa !21
  %i.gy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i64 noundef %i.gx) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %check_flag.exit194, %check_flag.exit184
  %.0106 = phi i32 [ %i.gl, %check_flag.exit194 ], [ %i.fj, %check_flag.exit184 ]
  br i1 %.0103208212221, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gz = call i32 @ARKodeGetNumRelaxFnEvals(ptr noundef %i.ew, ptr noundef nonnull %i.k) #8 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.ar, label %check_flag.exit196

bb.ar:                                            ; preds = %bb.aq
  %i.hb = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hb, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.52, i32 noundef %i.gz) #9 ; 0 uses
  br label %check_flag.exit196

check_flag.exit196:                               ; preds = %bb.aq, %bb.ar
  %i.hd = call i32 @ARKodeGetNumRelaxJacEvals(ptr noundef %i.ew, ptr noundef nonnull %i.l) #8 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.as, label %check_flag.exit198

bb.as:                                            ; preds = %check_flag.exit196
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.53, i32 noundef %i.hd) #9 ; 0 uses
  br label %check_flag.exit198

check_flag.exit198:                               ; preds = %check_flag.exit196, %bb.as
  %i.hh = call i32 @ARKodeGetNumRelaxFails(ptr noundef %i.ew, ptr noundef nonnull %i.i) #8 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.at, label %check_flag.exit200

bb.at:                                            ; preds = %check_flag.exit198
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.54, i32 noundef %i.hh) #9 ; 0 uses
  br label %check_flag.exit200

check_flag.exit200:                               ; preds = %check_flag.exit198, %bb.at
  %i.hl = call i32 @ARKodeGetNumRelaxBoundFails(ptr noundef %i.ew, ptr noundef nonnull %i.j) #8 ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %bb.au, label %check_flag.exit202

bb.au:                                            ; preds = %check_flag.exit200
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.55, i32 noundef %i.hl) #9 ; 0 uses
  br label %check_flag.exit202

check_flag.exit202:                               ; preds = %check_flag.exit200, %bb.au
  %i.hp = call i32 @ARKodeGetNumRelaxSolveFails(ptr noundef %i.ew, ptr noundef nonnull %i.n) #8 ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %bb.av, label %check_flag.exit204

bb.av:                                            ; preds = %check_flag.exit202
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.56, i32 noundef %i.hp) #9 ; 0 uses
  br label %check_flag.exit204

check_flag.exit204:                               ; preds = %check_flag.exit202, %bb.av
  %i.ht = call i32 @ARKodeGetNumRelaxSolveIters(ptr noundef %i.ew, ptr noundef nonnull %i.m) #8 ; 3 uses
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.aw, label %check_flag.exit206

bb.aw:                                            ; preds = %check_flag.exit204
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef %i.ht) #9 ; 0 uses
  br label %check_flag.exit206

check_flag.exit206:                               ; preds = %check_flag.exit204, %bb.aw
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !21
  %i.hy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i64 noundef %i.hx) ; 0 uses
  %i.hz = load i64, ptr %i.l, align 8, !tbaa !21
  %i.ia = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i64 noundef %i.hz) ; 0 uses
  %i.ib = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ic = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i64 noundef %i.ib) ; 0 uses
  %i.id = load i64, ptr %i.j, align 8, !tbaa !21
  %i.ie = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i64 noundef %i.id) ; 0 uses
  %i.if = load i64, ptr %i.n, align 8, !tbaa !21
  %i.ig = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i64 noundef %i.if) ; 0 uses
  %i.ih = load i64, ptr %i.m, align 8, !tbaa !21
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i64 noundef %i.ih) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %check_flag.exit206, %bb.ap
  %.1 = phi i32 [ %i.ht, %check_flag.exit206 ], [ %.0106, %bb.ap ]
  %putchar134 = call i32 @putchar(i32 10)         ; 0 uses
  call void @ARKodeFree(ptr noundef nonnull %i.d) #8
  %i.ij = call i32 @SUNLinSolFree(ptr noundef %.0105.a) #8 ; 0 uses
  call void @SUNMatDestroy(ptr noundef %.0104.a) #8
  call void @N_VDestroy(ptr noundef nonnull %i.at) #8
  call void @N_VDestroy(ptr noundef nonnull %i.ba) #8
  %i.ik = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %check_flag.exit167, %check_flag.exit165, %check_flag.exit163, %check_flag.exit161, %check_ptr.exit159, %check_ptr.exit156, %check_flag.exit153, %check_flag.exit151, %check_flag.exit149, %check_ptr.exit147, %check_ptr.exit144, %check_ptr.exit141, %check_ptr.exit138, %check_ptr.exit, %check_flag.exit, %bb.ax
  %.0107 = phi i32 [ %.1, %bb.ax ], [ 1, %check_flag.exit ], [ 1, %check_ptr.exit ], [ 1, %check_ptr.exit138 ], [ 1, %check_ptr.exit141 ], [ 1, %check_ptr.exit144 ], [ 1, %check_ptr.exit147 ], [ 1, %check_flag.exit149 ], [ 1, %check_flag.exit151 ], [ 1, %check_flag.exit153 ], [ 1, %check_ptr.exit156 ], [ 1, %check_ptr.exit159 ], [ 1, %check_flag.exit161 ], [ 1, %check_flag.exit163 ], [ 1, %check_flag.exit165 ], [ 1, %check_flag.exit167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0107
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_flag(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.64, ptr noundef %1, i32 noundef %0) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @check_ptr(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.65, ptr noundef %1) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #3

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #3

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #8 ; 2 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !19
  %i.e = tail call double @exp(double noundef %i.d) #8
  %i.f = fneg double %i.e
  store double %i.f, ptr %i.b, align 8, !tbaa !19
  %i.g = load double, ptr %i.a, align 8, !tbaa !19
  %i.h = tail call double @exp(double noundef %i.g) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.h, ptr %i.i, align 8, !tbaa !19
  ret i32 0
}

declare i32 @ARKodeSetOrder(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ARKodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetRelaxFn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Ent(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call double @exp(double noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call double @exp(double noundef %i.e) #8
  %i.g = fadd double %i.c, %i.f
  store double %i.g, ptr %1, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @JacEnt(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #8 ; 2 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #8 ; 2 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call double @exp(double noundef %i.c) #8
  store double %i.d, ptr %i.b, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !19
  %i.g = tail call double @exp(double noundef %i.f) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.g, ptr %i.h, align 8, !tbaa !19
  ret i32 0
}

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ARKodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Jac(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #8 ; 2 uses
  %i.b = tail call ptr @SUNDenseMatrix_Data(ptr noundef %3) #8 ; 4 uses
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !19
  %i.c = load double, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call double @exp(double noundef %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = tail call double @exp(double noundef %i.g) #8
  %i.i = fneg double %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.i, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !19
  ret i32 0
}

declare i32 @ARKodeSetNonlinConvCoef(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ans(double noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #8 ; 2 uses
  %i.b = fmul double %0, f0x401177CFA911AD5C      ; 2 uses
  %i.c = tail call double @exp(double noundef %i.b) #8
  %i.d = fadd double %i.c, f0x3FFA61298E1E069C    ; 2 uses
  %i.e = tail call double @log(double noundef %i.d) #8
  %i.f = fsub double f0x3FFF95D1BF6D7019, %i.e
  store double %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = tail call double @exp(double noundef %i.b) #8
  %i.h = fmul double %i.g, f0x401177CFA911AD5C
  %i.i = tail call double @log(double noundef %i.h) #8
  %i.j = tail call double @log(double noundef %i.d) #8
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !19
  ret i32 0
}

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepAttempts(ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
