Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_brusselator1D?download=true
inline.NumInlined: 35
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  store double 1.000000e+00, ptr %i.cx, align 8, !tbaa !16
  %i.cy = add nuw nsw i64 %.2356, 3               ; 2 uses
  %exitcond369.not.2 = icmp eq i64 %i.cy, 201
  br i1 %exitcond369.not.2, label %bb.j, label %check_flag.exit250

bb.j:                                             ; preds = %check_flag.exit250
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.az) #10
  %i.cz = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.az) #10 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %check_flag.exit252.thread, label %check_flag.exit252

check_flag.exit252.thread:                        ; preds = %bb.j
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.ak

check_flag.exit252:                               ; preds = %bb.j, %check_flag.exit252
  %.3357 = phi i64 [ %i.dl, %check_flag.exit252 ], [ 0, %bb.j ] ; 4 uses
  %.idx232 = mul nuw nsw i64 %.3357, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx232
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !16
  %i.df = mul nuw i64 %.3357, 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store double 1.000000e+00, ptr %i.dh, align 8, !tbaa !16
  %i.di = mul nuw i64 %.3357, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !16
  %i.dl = add nuw nsw i64 %.3357, 3               ; 2 uses
  %exitcond370.not.2 = icmp eq i64 %i.dl, 201
  br i1 %exitcond370.not.2, label %bb.k, label %check_flag.exit252

bb.k:                                             ; preds = %check_flag.exit252
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.dn = call ptr @ARKStepCreate(ptr noundef null, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.an, ptr noundef %i.dm) #10 ; 18 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !26
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %check_flag.exit254, label %bb.l

check_flag.exit254:                               ; preds = %bb.k
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dp, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.10) #11 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.k
  %i.dr = call i32 @ARKodeSetUserData(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.r) #10 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %check_flag.exit256, label %bb.m

check_flag.exit256:                               ; preds = %bb.l
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.du = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.11, i32 noundef %i.dr) #11 ; 0 uses
  br label %bb.ak

bb.m:                                             ; preds = %bb.l
  %i.dv = call i32 @ARKodeSStolerances(ptr noundef nonnull %i.dn, double noundef f0x3EB0C6F7A0B5ED8D, double noundef 1.000000e-10) #10 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %check_flag.exit258, label %bb.n

check_flag.exit258:                               ; preds = %bb.m
  %i.dx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dx, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.12, i32 noundef %i.dv) #11 ; 0 uses
  br label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ea = call ptr @SUNBandMatrix(i64 noundef 603, i64 noundef 4, i64 noundef 4, ptr noundef %i.dz) #10 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %check_flag.exit260, label %bb.o

check_flag.exit260:                               ; preds = %bb.n
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ec, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.13) #11 ; 0 uses
  br label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.ee = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ef = call ptr @SUNLinSol_Band(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ea, ptr noundef %i.ee) #10 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %check_flag.exit262, label %bb.p

check_flag.exit262:                               ; preds = %bb.o
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ei = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.14) #11 ; 0 uses
  br label %bb.ak

bb.p:                                             ; preds = %bb.o
  %i.ej = call i32 @ARKodeSetLinearSolver(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ea) #10 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %check_flag.exit264, label %bb.q

check_flag.exit264:                               ; preds = %bb.p
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.15, i32 noundef %i.ej) #11 ; 0 uses
  br label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.en = call i32 @ARKodeSetJacFn(ptr noundef nonnull %i.dn, ptr noundef nonnull @Jac) #10 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %check_flag.exit266, label %bb.r

check_flag.exit266:                               ; preds = %bb.q
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.16, i32 noundef %i.en) #11 ; 0 uses
  br label %bb.ak

bb.r:                                             ; preds = %bb.q
  %i.er = call i32 @ARKodeSetAutonomous(ptr noundef nonnull %i.dn, i32 noundef 1) #10 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %check_flag.exit268, label %bb.s

check_flag.exit268:                               ; preds = %bb.r
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.17, i32 noundef %i.er) #11 ; 0 uses
  br label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.ev = call noalias ptr @fopen(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.t
  %.4358 = phi i64 [ 0, %bb.s ], [ %i.fa, %bb.t ] ; 2 uses
  %i.ew = load double, ptr %i.bd, align 8, !tbaa !24
  %i.ex = uitofp nneg i64 %.4358 to double
  %i.ey = fmul double %i.ew, %i.ex
  %i.ez = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.20, double noundef %i.ey) #10 ; 0 uses
  %i.fa = add nuw nsw i64 %.4358, 1               ; 2 uses
  %exitcond371.not = icmp eq i64 %i.fa, 201
  br i1 %exitcond371.not, label %bb.u, label %bb.t

bb.u:                                             ; preds = %bb.t
  %i.fb = call i32 @fclose(ptr noundef %i.ev)     ; 0 uses
  %i.fc = call noalias ptr @fopen(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) ; 5 uses
  %i.fd = call noalias ptr @fopen(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) ; 5 uses
  %i.fe = call noalias ptr @fopen(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19) ; 5 uses
  %i.ff = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.an) #10 ; 7 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %check_flag.exit270.thread, label %check_flag.exit270

check_flag.exit270.thread:                        ; preds = %bb.u
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fh, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.ak

check_flag.exit270:                               ; preds = %bb.u, %check_flag.exit270
  %.5359 = phi i64 [ %i.fm, %check_flag.exit270 ], [ 0, %bb.u ] ; 2 uses
  %.idx231 = mul nuw nsw i64 %.5359, 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx231
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !16
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.24, double noundef %i.fk) #10 ; 0 uses
  %i.fm = add nuw nsw i64 %.5359, 1               ; 2 uses
  %exitcond372.not = icmp eq i64 %i.fm, 201
  br i1 %exitcond372.not, label %.preheader353.a, label %check_flag.exit270

.preheader353.a:                                  ; preds = %check_flag.exit270, %.preheader353.a
  %.6360 = phi i64 [ %i.fr, %.preheader353.a ], [ 0, %check_flag.exit270 ] ; 2 uses
  %.idx230 = mul nuw nsw i64 %.6360, 24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx230
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !16
  %i.fq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.24, double noundef %i.fp) #10 ; 0 uses
  %i.fr = add nuw nsw i64 %.6360, 1               ; 2 uses
  %exitcond373.not = icmp eq i64 %i.fr, 201
  br i1 %exitcond373.not, label %.preheader352, label %.preheader353.a

.preheader352:                                    ; preds = %.preheader353.a, %.preheader352
  %.7361 = phi i64 [ %i.fw, %.preheader352 ], [ 0, %.preheader353.a ] ; 2 uses
  %.idx229 = mul nuw nsw i64 %.7361, 24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx229
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !16
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.24, double noundef %i.fu) #10 ; 0 uses
  %i.fw = add nuw nsw i64 %.7361, 1               ; 2 uses
  %exitcond374.not = icmp eq i64 %i.fw, 201
  br i1 %exitcond374.not, label %bb.v, label %.preheader352

bb.v:                                             ; preds = %.preheader352
  %fputc = call i32 @fputc(i32 10, ptr %i.fc)     ; 0 uses
  %fputc214 = call i32 @fputc(i32 10, ptr %i.fd)  ; 0 uses
  %fputc215 = call i32 @fputc(i32 10, ptr %i.fe)  ; 0 uses
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !16
  %puts216 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts217 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.z
  %.0366 = phi i32 [ 0, %bb.v ], [ %i.gz, %bb.z ]
  %.0193365 = phi double [ 1.000000e-01, %bb.v ], [ %i.gy, %bb.z ] ; 2 uses
  %i.fx = call i32 @ARKodeEvolve(ptr noundef nonnull %i.dn, double noundef %.0193365, ptr noundef nonnull %i.an, ptr noundef nonnull %i.b, i32 noundef 1) #10 ; 2 uses
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %check_flag.exit272, label %bb.x

check_flag.exit272:                               ; preds = %bb.w
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.28, i32 noundef %i.fx) #11 ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.gb = call double @N_VWL2Norm(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ar) #10 ; 2 uses
  %0 = fmul double %i.gb, %i.gb
  %1 = fdiv double %0, 2.010000e+02
  %2 = call double @sqrt(double noundef %1) #10
  %3 = call double @N_VWL2Norm(ptr noundef nonnull %i.an, ptr noundef nonnull %i.av) #10 ; 2 uses
  %4 = fmul double %3, %3
  %5 = fdiv double %4, 2.010000e+02
  %6 = call double @sqrt(double noundef %5) #10
  %i.gc = call double @N_VWL2Norm(ptr noundef nonnull %i.an, ptr noundef nonnull %i.az) #10 ; 2 uses
  %i.gd = fmul double %i.gc, %i.gc
  %i.ge = fdiv double %i.gd, 2.010000e+02
  %i.gf = call double @sqrt(double noundef %i.ge) #10
  %i.gg = load double, ptr %i.b, align 8, !tbaa !16
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, double noundef %i.gg, double noundef %2, double noundef %6, double noundef %i.gf) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.y
  %.8362 = phi i64 [ 0, %bb.x ], [ %i.gl, %bb.y ] ; 2 uses
  %.idx226 = mul nuw nsw i64 %.8362, 24
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx226
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !16
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.24, double noundef %i.gj) #10 ; 0 uses
  %i.gl = add nuw nsw i64 %.8362, 1               ; 2 uses
  %exitcond375.not = icmp eq i64 %i.gl, 201
  br i1 %exitcond375.not, label %.preheader351, label %bb.y

.preheader351:                                    ; preds = %bb.y, %.preheader351
  %.9363 = phi i64 [ %i.gq, %.preheader351 ], [ 0, %bb.y ] ; 2 uses
  %.idx225 = mul nuw nsw i64 %.9363, 24
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx225
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !16
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.24, double noundef %i.go) #10 ; 0 uses
  %i.gq = add nuw nsw i64 %.9363, 1               ; 2 uses
  %exitcond376.not = icmp eq i64 %i.gq, 201
  br i1 %exitcond376.not, label %.preheader, label %.preheader351

.preheader:                                       ; preds = %.preheader351, %.preheader
  %.10364 = phi i64 [ %i.gv, %.preheader ], [ 0, %.preheader351 ] ; 2 uses
  %.idx = mul nuw nsw i64 %.10364, 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.idx
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !16
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fe, ptr noundef nonnull @.str.24, double noundef %i.gt) #10 ; 0 uses
  %i.gv = add nuw nsw i64 %.10364, 1              ; 2 uses
  %exitcond377.not = icmp eq i64 %i.gv, 201
  br i1 %exitcond377.not, label %bb.z, label %.preheader

bb.z:                                             ; preds = %.preheader
  %i.gw = fadd double %.0193365, 1.000000e-01     ; 2 uses
  %i.gx = fcmp ogt double %i.gw, 1.000000e+01
  %i.gy = select i1 %i.gx, double 1.000000e+01, double %i.gw
  %fputc220 = call i32 @fputc(i32 10, ptr %i.fc)  ; 0 uses
  %fputc222 = call i32 @fputc(i32 10, ptr %i.fd)  ; 0 uses
  %fputc224 = call i32 @fputc(i32 10, ptr %i.fe)  ; 0 uses
  %i.gz = add nuw nsw i32 %.0366, 1               ; 2 uses
  %exitcond378.not = icmp eq i32 %i.gz, 100
  br i1 %exitcond378.not, label %.loopexit, label %bb.w

.loopexit:                                        ; preds = %bb.z, %check_flag.exit272
  %puts227 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ha = call i32 @fclose(ptr noundef %i.fc)     ; 0 uses
  %i.hb = call i32 @fclose(ptr noundef %i.fd)     ; 0 uses
  %i.hc = call i32 @fclose(ptr noundef %i.fe)     ; 0 uses
  %i.hd = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.aa, label %check_flag.exit274

bb.aa:                                            ; preds = %.loopexit
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.31, i32 noundef %i.hd) #11 ; 0 uses
  br label %check_flag.exit274

check_flag.exit274:                               ; preds = %.loopexit, %bb.aa
  %i.hh = call i32 @ARKodeGetNumStepAttempts(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 0
  br i1 %i.hi, label %bb.ab, label %check_flag.exit276

bb.ab:                                            ; preds = %check_flag.exit274
  %i.hj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.32, i32 noundef %i.hh) #11 ; 0 uses
  br label %check_flag.exit276

check_flag.exit276:                               ; preds = %check_flag.exit274, %bb.ab
  %i.hl = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.dn, i32 noundef 0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %bb.ac, label %check_flag.exit278

bb.ac:                                            ; preds = %check_flag.exit276
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef %i.hl) #11 ; 0 uses
  br label %check_flag.exit278

check_flag.exit278:                               ; preds = %check_flag.exit276, %bb.ac
  %i.hp = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.dn, i32 noundef 1, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %bb.ad, label %check_flag.exit280

bb.ad:                                            ; preds = %check_flag.exit278
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef %i.hp) #11 ; 0 uses
  br label %check_flag.exit280

check_flag.exit280:                               ; preds = %check_flag.exit278, %bb.ad
  %i.ht = call i32 @ARKodeGetNumLinSolvSetups(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.ae, label %check_flag.exit282

bb.ae:                                            ; preds = %check_flag.exit280
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.34, i32 noundef %i.ht) #11 ; 0 uses
  br label %check_flag.exit282

check_flag.exit282:                               ; preds = %check_flag.exit280, %bb.ae
  %i.hx = call i32 @ARKodeGetNumErrTestFails(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.l) #10 ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %bb.af, label %check_flag.exit284

bb.af:                                            ; preds = %check_flag.exit282
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.35, i32 noundef %i.hx) #11 ; 0 uses
  br label %check_flag.exit284

check_flag.exit284:                               ; preds = %check_flag.exit282, %bb.af
  %i.ib = call i32 @ARKodeGetNumNonlinSolvIters(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.j) #10 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.ag, label %check_flag.exit286

bb.ag:                                            ; preds = %check_flag.exit284
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.36, i32 noundef %i.ib) #11 ; 0 uses
  br label %check_flag.exit286

check_flag.exit286:                               ; preds = %check_flag.exit284, %bb.ag
  %i.if = call i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.ah, label %check_flag.exit288

bb.ah:                                            ; preds = %check_flag.exit286
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.37, i32 noundef %i.if) #11 ; 0 uses
  br label %check_flag.exit288

check_flag.exit288:                               ; preds = %check_flag.exit286, %bb.ah
  %i.ij = call i32 @ARKodeGetNumJacEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %bb.ai, label %check_flag.exit290

bb.ai:                                            ; preds = %check_flag.exit288
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.38, i32 noundef %i.ij) #11 ; 0 uses
  br label %check_flag.exit290

check_flag.exit290:                               ; preds = %check_flag.exit288, %bb.ai
  %i.in = call i32 @ARKodeGetNumLinRhsEvals(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.io = icmp slt i32 %i.in, 0
  br i1 %i.io, label %bb.aj, label %check_flag.exit292

bb.aj:                                            ; preds = %check_flag.exit290
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.iq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.39, i32 noundef %i.in) #11 ; 0 uses
  br label %check_flag.exit292

check_flag.exit292:                               ; preds = %check_flag.exit290, %bb.aj
  %puts228 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.ir = load i64, ptr %i.c, align 8, !tbaa !27
  %i.is = load i64, ptr %i.d, align 8, !tbaa !27
  %i.it = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.ir, i64 noundef %i.is) ; 0 uses
  %i.iu = load i64, ptr %i.e, align 8, !tbaa !27
  %i.iv = load i64, ptr %i.f, align 8, !tbaa !27
  %i.iw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.iu, i64 noundef %i.iv) ; 0 uses
  %i.ix = load i64, ptr %i.g, align 8, !tbaa !27
  %i.iy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.ix) ; 0 uses
  %i.iz = load i64, ptr %i.i, align 8, !tbaa !27
  %i.ja = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %i.iz) ; 0 uses
  %i.jb = load i64, ptr %i.h, align 8, !tbaa !27
  %i.jc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i64 noundef %i.jb) ; 0 uses
  %i.jd = load i64, ptr %i.j, align 8, !tbaa !27
  %i.je = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %i.jd) ; 0 uses
  %i.jf = load i64, ptr %i.k, align 8, !tbaa !27
  %i.jg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i64 noundef %i.jf) ; 0 uses
  %i.jh = load i64, ptr %i.l, align 8, !tbaa !27
  %i.ji = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.jh) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.an) #10
  call void @N_VDestroy(ptr noundef nonnull %i.ar) #10
  call void @N_VDestroy(ptr noundef nonnull %i.av) #10
  call void @N_VDestroy(ptr noundef nonnull %i.az) #10
  call void @free(ptr noundef %i.r) #10
  call void @ARKodeFree(ptr noundef nonnull %i.a) #10
  %i.jj = call i32 @SUNLinSolFree(ptr noundef nonnull %i.ef) #10 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.ea) #10
  %i.jk = call i32 @SUNContext_Free(ptr noundef nonnull %i.m) #10 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %check_flag.exit270.thread, %check_flag.exit268, %check_flag.exit266, %check_flag.exit264, %check_flag.exit262, %check_flag.exit260, %check_flag.exit258, %check_flag.exit256, %check_flag.exit254, %check_flag.exit252.thread, %check_flag.exit250.thread, %check_flag.exit248.thread, %check_flag.exit246.thread, %check_flag.exit244, %check_flag.exit242, %check_flag.exit240, %check_flag.exit238, %check_flag.exit236, %check_flag.exit, %check_flag.exit292
  %.0195 = phi i32 [ 0, %check_flag.exit292 ], [ 1, %check_flag.exit ], [ 1, %check_flag.exit236 ], [ 1, %check_flag.exit238 ], [ 1, %check_flag.exit240 ], [ 1, %check_flag.exit242 ], [ 1, %check_flag.exit244 ], [ 1, %check_flag.exit246.thread ], [ 1, %check_flag.exit248.thread ], [ 1, %check_flag.exit250.thread ], [ 1, %check_flag.exit252.thread ], [ 1, %check_flag.exit254 ], [ 1, %check_flag.exit256 ], [ 1, %check_flag.exit258 ], [ 1, %check_flag.exit260 ], [ 1, %check_flag.exit262 ], [ 1, %check_flag.exit264 ], [ 1, %check_flag.exit266 ], [ 1, %check_flag.exit268 ], [ 1, %check_flag.exit270.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1
end_hunk_0
begin_hunk_1_@Jac:bb.a
  %i.q = fdiv double %i.p, %i.d
  %.idx86.i = mul i64 %.085.i, 24
  %i.r = getelementptr i8, ptr %i.i, i64 %.idx86.i ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.k ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !16
  %i.x = fadd double %i.q, %i.w
  store double %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = load double, ptr %i.l, align 8, !tbaa !21
  %i.z = fdiv double %i.y, %i.d
  %i.aa = fdiv double %i.z, %i.d
  %i.ab = getelementptr i8, ptr %i.r, i64 -16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.k ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !16
  %i.ag = fadd double %i.af, %i.aa
  store double %i.ag, ptr %i.ae, align 8, !tbaa !16
  %i.ah = load double, ptr %i.m, align 8, !tbaa !22
  %i.ai = fdiv double %i.ah, %i.d
  %i.aj = fdiv double %i.ai, %i.d
  %i.ak = getelementptr i8, ptr %i.r, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.k ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !16
  %i.ap = fadd double %i.ao, %i.aj
  store double %i.ap, ptr %i.an, align 8, !tbaa !16
  %i.aq = load double, ptr %i.f, align 8, !tbaa !20
  %i.ar = fmul double %i.aq, 2.000000e+00
  %i.as = fdiv double %i.ar, %i.d
  %i.at = fdiv double %i.as, %i.d
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.k ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = fsub double %i.aw, %i.at
  store double %i.ax, ptr %i.av, align 8, !tbaa !16
  %i.ay = load double, ptr %i.l, align 8, !tbaa !21
  %i.az = fmul double %i.ay, 2.000000e+00
  %i.ba = fdiv double %i.az, %i.d
  %i.bb = fdiv double %i.ba, %i.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.k ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !16
  %i.bg = fsub double %i.bf, %i.bb
  store double %i.bg, ptr %i.be, align 8, !tbaa !16
  %i.bh = load double, ptr %i.m, align 8, !tbaa !22
  %i.bi = fmul double %i.bh, 2.000000e+00
  %i.bj = fdiv double %i.bi, %i.d
  %i.bk = fdiv double %i.bj, %i.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.k ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = fsub double %i.bo, %i.bk
  store double %i.bp, ptr %i.bn, align 8, !tbaa !16
  %i.bq = load double, ptr %i.f, align 8, !tbaa !20
  %i.br = fdiv double %i.bq, %i.d
  %i.bs = fdiv double %i.br, %i.d
  %i.bt = add nuw nsw i64 %.085.i, 1              ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %i.k
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24    ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !16
  %i.bz = fadd double %i.by, %i.bs
  store double %i.bz, ptr %i.bx, align 8, !tbaa !16
  %i.ca = load double, ptr %i.l, align 8, !tbaa !21
  %i.cb = fdiv double %i.ca, %i.d
  %i.cc = fdiv double %i.cb, %i.d
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.k
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24    ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !16
  %i.ci = fadd double %i.ch, %i.cc
  store double %i.ci, ptr %i.cg, align 8, !tbaa !16
  %i.cj = load double, ptr %i.m, align 8, !tbaa !22
  %i.ck = fdiv double %i.cj, %i.d
  %i.cl = fdiv double %i.ck, %i.d
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.k
  %i.cp = getelementptr i8, ptr %i.co, i64 -24    ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16
  %i.cr = fadd double %i.cq, %i.cl
  store double %i.cr, ptr %i.cp, align 8, !tbaa !16
  %exitcond.not.i = icmp eq i64 %.085.i, %i.n
  br i1 %exitcond.not.i, label %LaplaceMatrix.exit, label %bb.b

LaplaceMatrix.exit:                               ; preds = %bb.b
  %i.cs = getelementptr i8, ptr %4, i64 56
  %.val7 = load double, ptr %i.cs, align 8, !tbaa !19
  %i.ct = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 4 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %check_flag.exit.thread.i, label %.lr.ph.i8

LaplaceMatrix.exit.thread:                        ; preds = %bb.a
  %i.cv = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %check_flag.exit.thread.i, label %ReactionJac.exit

.lr.ph.i8:                                        ; preds = %LaplaceMatrix.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !44 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !45 ; 3 uses
  %i.dc = fdiv double -1.000000e+00, %.val7
  br label %check_flag.exit.i

check_flag.exit.thread.i:                         ; preds = %LaplaceMatrix.exit.thread, %LaplaceMatrix.exit
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %ReactionJac.exit

check_flag.exit.i:                                ; preds = %check_flag.exit.i, %.lr.ph.i8
  %.03.i = phi i64 [ 1, %.lr.ph.i8 ], [ %i.fc, %check_flag.exit.i ] ; 3 uses
  %i.df = mul nuw nsw i64 %.03.i, 3               ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16 ; 6 uses
  %i.di = add nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16
  %i.dl = add nuw nsw i64 %i.df, 2                ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !16 ; 3 uses
  %i.do = fmul double %i.dh, 2.000000e+00         ; 2 uses
  %i.dp = fadd double %i.dn, 1.000000e+00
  %i.dq = fneg double %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.df
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !46
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.db ; 3 uses
  %i.du = fneg double %i.do
  %i.dv = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1
  %i.dx = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dn, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dy, <2 x double> %i.ea)
  %i.ec = load <2 x double>, ptr %i.dt, align 8, !tbaa !16
  %i.ed = fadd <2 x double> %i.eb, %i.ec
  store <2 x double> %i.ed, ptr %i.dt, align 8, !tbaa !16
  %i.ee = getelementptr i8, ptr %i.dt, i64 16     ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !16
  %i.eg = fsub double %i.ef, %i.dn
  store double %i.eg, ptr %i.ee, align 8, !tbaa !16
  %i.eh = fmul double %i.dh, %i.dh                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.di
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !46
  %i.ek = getelementptr [8 x i8], ptr %i.ej, i64 %i.db ; 3 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -8     ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !16
  %i.en = fadd double %i.eh, %i.em
  store double %i.en, ptr %i.el, align 8, !tbaa !16
  %i.eo = load double, ptr %i.ek, align 8, !tbaa !16
  %i.ep = fsub double %i.eo, %i.eh
  store double %i.ep, ptr %i.ek, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dl
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %i.db ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -16    ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !16
  %i.ev = fsub double %i.eu, %i.dh
  store double %i.ev, ptr %i.et, align 8, !tbaa !16
  %i.ew = getelementptr i8, ptr %i.es, i64 -8     ; 2 uses
  %i.ex = fsub double %i.dc, %i.dh
  %i.ey = load <2 x double>, ptr %i.ew, align 8, !tbaa !16
  %i.ez = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ex, i64 1
  %i.fb = fadd <2 x double> %i.fa, %i.ey
  store <2 x double> %i.fb, ptr %i.ew, align 8, !tbaa !16
  %i.fc = add nuw nsw i64 %.03.i, 1
  %exitcond.not.i9 = icmp eq i64 %.03.i, %i.n
  br i1 %exitcond.not.i9, label %ReactionJac.exit, label %check_flag.exit.i

ReactionJac.exit:                                 ; preds = %check_flag.exit.i, %LaplaceMatrix.exit.thread, %check_flag.exit.thread.i
  ret i32 0
}

declare i32 @ARKodeSetAutonomous(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumStepAttempts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @SUNMatZero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"double", !5, i64 0}
!14 = !{!"", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!15 = !{!14, !12, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!14, !13, i64 16}
!18 = !{!14, !13, i64 24}
!19 = !{!14, !13, i64 56}
!20 = !{!14, !13, i64 32}
!21 = !{!14, !13, i64 40}
!22 = !{!14, !13, i64 48}
!23 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!24 = !{!14, !13, i64 8}
!25 = !{!23, !23, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!12, !12, i64 0}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !35, !36}
!32 = distinct !{!32, !35}
!33 = !{!29}
!34 = !{!30}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"p1 _ZTS22_generic_SUNMatrix_Ops", !9, i64 0}
!38 = !{!"_generic_SUNMatrix", !9, i64 0, !37, i64 8, !23, i64 16}
!39 = !{!38, !9, i64 0}
!40 = !{!"p1 double", !9, i64 0}
!41 = !{!"any p2 pointer", !9, i64 0}
!42 = !{!"p2 double", !41, i64 0}
!43 = !{!"_SUNMatrixContent_Band", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !40, i64 48, !12, i64 56, !42, i64 64}
!44 = !{!43, !42, i64 64}
!45 = !{!43, !12, i64 40}
!46 = !{!40, !40, i64 0}
end_hunk_1
