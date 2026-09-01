Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsDiurnal_FSA_kry?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@main:bb.a
check_retval.exit117.preheader:                   ; preds = %check_retval.exit115.preheader
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !30
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.nn) #11
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !30
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.np) #11
  %i.nq = call i32 @CVodeSensInit1(ptr noundef nonnull %i.lq, i32 noundef 2, i32 noundef %.0155, ptr noundef null, ptr noundef nonnull %i.nj) #11 ; 2 uses
  %i.nr = icmp slt i32 %i.nq, 0
  br i1 %i.nr, label %check_retval.exit119, label %bb.x

check_retval.exit117.thread:                      ; preds = %check_retval.exit115.preheader
  %i.ns = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.nt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ns, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.13) #15 ; 0 uses
  br label %bb.ak

check_retval.exit119:                             ; preds = %check_retval.exit117.preheader
  %i.nu = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.nv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nu, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.14, i32 noundef %i.nq) #15 ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %check_retval.exit117.preheader
  %i.nw = call i32 @CVodeSensEEtolerances(ptr noundef nonnull %i.lq) #11 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, 0
  br i1 %i.nx, label %check_retval.exit121, label %bb.y

check_retval.exit121:                             ; preds = %bb.x
  %i.ny = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.nz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ny, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.15, i32 noundef %i.nw) #15 ; 0 uses
  br label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.oa = call i32 @CVodeSetSensErrCon(ptr noundef nonnull %i.lq, i32 noundef %.0156) #11 ; 2 uses
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %check_retval.exit123, label %bb.z

check_retval.exit123:                             ; preds = %bb.y
  %i.oc = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.od = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oc, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.16, i32 noundef %i.oa) #15 ; 0 uses
  br label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.oe = call i32 @CVodeSetSensDQMethod(ptr noundef nonnull %i.lq, i32 noundef 1, double noundef 0.000000e+00) #11 ; 2 uses
  %i.of = icmp slt i32 %i.oe, 0
  br i1 %i.of, label %check_retval.exit125, label %bb.aa

check_retval.exit125:                             ; preds = %bb.z
  %i.og = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.oh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.17, i32 noundef %i.oe) #15 ; 0 uses
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.oi = load ptr, ptr %i.al, align 8, !tbaa !18
  %i.oj = call i32 @CVodeSetSensParams(ptr noundef nonnull %i.lq, ptr noundef %i.oi, ptr noundef nonnull %i.na, ptr noundef nonnull %i.mx) #11 ; 2 uses
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %check_retval.exit127, label %bb.ab

check_retval.exit127:                             ; preds = %bb.aa
  %i.ol = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.om = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ol, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.18, i32 noundef %i.oj) #15 ; 0 uses
  br label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.on = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %switch.selectcmp = icmp eq i32 %.0155, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.21, ptr @.str.22
  %switch.selectcmp236 = icmp eq i32 %.0155, 1
  %switch.select237 = select i1 %switch.selectcmp236, ptr @.str.20, ptr %switch.select
  %i.oo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.select237) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %.str.23.sink = phi ptr [ %.not79, %bb.ab ], [ @.str.25, %bb.v ]
  %.055 = phi ptr [ %i.na, %bb.ab ], [ null, %bb.v ]
  %.053 = phi ptr [ %i.mx, %bb.ab ], [ null, %bb.v ]
  %.0 = phi ptr [ %i.nj, %bb.ab ], [ null, %bb.v ] ; 3 uses
  %i.op = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.23.sink) ; 0 uses
  %puts80 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts81 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts82 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts83 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ah
  %.056204 = phi i32 [ 1, %bb.ac ], [ %i.oz, %bb.ah ]
  %.057203 = phi double [ 7.200000e+03, %bb.ac ], [ %i.pa, %bb.ah ] ; 2 uses
  %i.oq = call i32 @CVode(ptr noundef nonnull %i.lq, double noundef %.057203, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.c, i32 noundef 1) #11 ; 2 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %check_retval.exit129, label %bb.ae

check_retval.exit129:                             ; preds = %bb.ad
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ot = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.29, i32 noundef %i.oq) #15 ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ou = load double, ptr %i.c, align 8, !tbaa !22
  call fastcc void @PrintOutput(ptr noundef nonnull %i.lq, double noundef %i.ou, ptr noundef nonnull %i.eo)
  br i1 %i.j, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ov = call i32 @CVodeGetSens(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.c, ptr noundef %.0) #11 ; 2 uses
  %i.ow = icmp slt i32 %i.ov, 0
  br i1 %i.ow, label %check_retval.exit131, label %bb.ag

check_retval.exit131:                             ; preds = %bb.af
  %i.ox = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.oy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ox, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.30, i32 noundef %i.ov) #15 ; 0 uses
  br label %.loopexit

bb.ag:                                            ; preds = %bb.af
  call fastcc void @PrintOutputS(ptr noundef %.0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %puts87 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.oz = add nuw nsw i32 %.056204, 1             ; 2 uses
  %i.pa = fadd double %.057203, 7.200000e+03
  %exitcond.not = icmp eq i32 %i.oz, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.ad

.loopexit:                                        ; preds = %bb.ah, %check_retval.exit131, %check_retval.exit129
  call fastcc void @PrintFinalStats(ptr noundef nonnull %i.lq, i32 noundef %.0157, i32 noundef %.0156, i32 noundef %.0155)
  call void @N_VDestroy(ptr noundef nonnull %i.eo) #11
  br i1 %i.j, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  call void @N_VDestroyVectorArray(ptr noundef %.0, i32 noundef 2) #11
  call void @free(ptr noundef %.055) #11
  call void @free(ptr noundef %.053) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  call fastcc void @FreeUserData(ptr noundef nonnull %i.al)
  call void @CVodeFree(ptr noundef nonnull %i.b) #11
  %i.pb = call i32 @SUNLinSolFree(ptr noundef nonnull %i.ml) #11 ; 0 uses
  %i.pc = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #11 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %check_retval.exit127, %check_retval.exit125, %check_retval.exit123, %check_retval.exit121, %check_retval.exit119, %check_retval.exit117.thread, %check_retval.exit115.thread, %check_retval.exit113.thread, %check_retval.exit111, %check_retval.exit109, %check_retval.exit107, %check_retval.exit105, %check_retval.exit103, %check_retval.exit101, %check_retval.exit99, %check_retval.exit97, %check_retval.exit92, %check_retval.exit90, %bb.aj
  %.058 = phi i32 [ 0, %bb.aj ], [ 1, %check_retval.exit127 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit97 ], [ 1, %check_retval.exit99 ], [ 1, %check_retval.exit101 ], [ 1, %check_retval.exit103 ], [ 1, %check_retval.exit105 ], [ 1, %check_retval.exit107 ], [ 1, %check_retval.exit109 ], [ 1, %check_retval.exit111 ], [ 1, %check_retval.exit113.thread ], [ 1, %check_retval.exit115.thread ], [ 1, %check_retval.exit117.thread ], [ 1, %check_retval.exit119 ], [ 1, %check_retval.exit121 ], [ 1, %check_retval.exit123 ], [ 1, %check_retval.exit125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.058
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((5408, 5416)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 15 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #11 ; 6 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !18     ; 4 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !22 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !22 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 5416
  %i.l = load double, ptr %i.k, align 8, !tbaa !32
  %i.m = fmul double %0, %i.l
  %i.n = tail call double @sin(double noundef %i.m) #11 ; 2 uses
  %i.o = fcmp ogt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = fneg <2 x double> %i.j
  %i.q = insertelement <2 x double> poison, double %i.n, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> %i.p, %i.r             ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = tail call double @exp(double noundef %i.t) #11
  %i.v = extractelement <2 x double> %i.s, i64 1
  %i.w = tail call double @exp(double noundef %i.v) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.w, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.0133 = phi double [ %i.u, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5408
  store double %.sink, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5432
  %i.z = load double, ptr %i.y, align 8, !tbaa !28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 5456
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 5440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !35 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5448
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36 ; 6 uses
  %i.ag = fmul double %i.h, %.0133                ; 2 uses
  %4 = insertelement <2 x double> poison, double %i.ab, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv139 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next140, %.loopexit.peel.begin ] ; 9 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = fadd double %i.ak, -5.000000e-01
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.z, double 3.000000e+01) ; 2 uses
  %i.an = fadd double %i.z, %i.am
  %i.ao = fmul double %i.am, 2.000000e-01
  %i.ap = tail call double @exp(double noundef %i.ao) #11
  %i.aq = fmul double %i.an, 2.000000e-01
  %i.ar = tail call double @exp(double noundef %i.aq) #11
  %i.as = icmp eq i64 %indvars.iv139, 0
  %i.at = select i1 %i.as, i64 1, i64 4294967295
  %i.au = icmp eq i64 %indvars.iv139, 14
  %i.av = select i1 %i.au, i64 4294967295, i64 1
  %i.aw = mul nuw nsw i64 %indvars.iv139, 30      ; 11 uses
  %i.ax = add nuw i64 %i.at, %indvars.iv139
  %i.ay = add nuw i64 %i.av, %indvars.iv139
  %i.az = or disjoint i64 %i.aw, 1                ; 2 uses
  %sext = mul i64 %i.ay, 128849018880
  %i.ba = ashr exact i64 %sext, 32                ; 2 uses
  %sext143 = mul i64 %i.ax, 128849018880
  %i.bb = ashr exact i64 %sext143, 32             ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb
  %i.be = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %6 = insertelement <2 x double> poison, double %i.ar, i64 0
  %7 = insertelement <2 x double> %6, double %i.ap, i64 1
  %8 = fmul <2 x double> %5, %7                   ; 6 uses
  %i.bf = load <2 x double>, ptr %i.bc, align 8, !tbaa !22 ; 5 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  %i.bh = fmul double %i.d, %i.bg
  %i.bi = fmul double %i.h, %i.bh                 ; 2 uses
  %i.bj = fmul double %i.f, %i.bg
  %i.bk = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bl = fmul double %i.bj, %i.bk                ; 2 uses
  %i.bm = fmul double %.sink, %i.bk               ; 2 uses
  %i.bn = fneg double %i.bi
  %i.bo = fsub double %i.bn, %i.bl
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.ag, double 2.000000e+00, double %i.bo)
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = fsub double %i.bi, %i.bl
  %i.bs = fsub double %i.br, %i.bm
  %i.bt = load <2 x double>, ptr %i.bd, align 8, !tbaa !22
  %i.bu = load <2 x double>, ptr %i.be, align 8, !tbaa !22
  %i.bv = fsub <2 x double> %i.bu, %i.bf
  %i.bw = fsub <2 x double> %i.bf, %i.bt
  %i.bx = fneg <2 x double> %i.bw
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x double> %9, %i.bx
  %i.bz = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bv, <2 x double> %i.by) ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aw
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !22 ; 4 uses
  %i.ce = trunc nuw nsw i64 %i.az to i32
  %i.cf = mul i64 %indvars.iv139, 128849018880
  %sext144 = add i64 %i.cf, 12884901888
  %i.cg = ashr exact i64 %sext144, 29
  %i.ch = getelementptr inbounds i8, ptr %i.a, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22 ; 4 uses
  %i.cj = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ck) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = fadd double %i.cd, %i.cm
  %i.co = fmul double %i.ad, %i.cn
  %i.cp = extractelement <2 x double> %i.cl, i64 1
  %i.cq = fadd double %i.ci, %i.cp
  %i.cr = fmul double %i.ad, %i.cq
  %i.cs = fsub double %i.cd, %i.cd
  %i.ct = fmul double %i.af, %i.cs
  %i.cu = fsub double %i.ci, %i.ci
  %i.cv = fmul double %i.af, %i.cu
  %i.cw = extractelement <2 x double> %i.ca, i64 0
  %i.cx = fadd double %i.cw, %i.co
  %i.cy = fadd double %i.ct, %i.cx
  %i.cz = fadd double %i.bq, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  store double %i.cz, ptr %i.da, align 8, !tbaa !22
  %i.db = extractelement <2 x double> %i.ca, i64 1
  %i.dc = fadd double %i.db, %i.cr
  %i.dd = fadd double %i.cv, %i.dc
  %i.de = fadd double %i.bs, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store double %i.de, ptr %i.dg, align 8, !tbaa !22
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %invariant.gep145 = getelementptr [8 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %invariant.gep147 = getelementptr [8 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 4 uses
  %11 = shufflevector <2 x double> %i.ah, <2 x double> %8, <2 x i32> <i32 0, i32 2> ; 2 uses
  %invariant.gep153 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aw
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.dk = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.dl = add nuw nsw i64 %i.dk, %i.aw            ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.dn = or disjoint i64 %i.dk, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dk
  %i.do = load double, ptr %gep, align 8, !tbaa !22
  %gep146 = getelementptr [8 x i8], ptr %invariant.gep145, i64 %i.dn
  %i.dp = load double, ptr %gep146, align 8, !tbaa !22
  %gep148 = getelementptr [8 x i8], ptr %invariant.gep147, i64 %i.dk
  %i.dq = load <2 x double>, ptr %i.dm, align 8, !tbaa !22 ; 4 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0 ; 3 uses
  %i.ds = fmul double %i.d, %i.dr
  %i.dt = fmul double %i.f, %i.dr
  %i.du = extractelement <2 x double> %i.dq, i64 1 ; 4 uses
  %i.dv = fmul double %i.dt, %i.du                ; 2 uses
  %i.dw = fmul double %.sink, %i.du               ; 2 uses
  %i.dx = load <2 x double>, ptr %gep148, align 8, !tbaa !22
  %i.dy = fsub double %i.dr, %i.do
  %i.dz = fmul double %i.h, %i.ds                 ; 2 uses
  %i.ea = fneg double %i.dy
  %i.eb = fneg double %i.dz
  %i.ec = fmul double %10, %i.ea
  %i.ed = fsub double %i.eb, %i.dv
  %i.ee = fsub <2 x double> %i.dx, %i.dq          ; 2 uses
  %i.ef = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.eg = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ec, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.ef, <2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fadd double %i.dw, %i.ej
  %i.el = fsub double %i.dz, %i.dv
  %i.em = fsub double %i.el, %i.dw
  %i.en = fsub double %i.du, %i.dp
  %i.eo = fneg double %i.en
  %i.ep = fmul double %10, %i.eo
  %i.eq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = add nsw i32 %i.er, -2
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.dh, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.di, i64 %i.et
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !22 ; 2 uses
  %i.ey = shl i32 %i.eq, 1
  %i.ez = add i32 %i.ey, 2                        ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %i.dj, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !22 ; 2 uses
  %i.fd = add nuw nsw i32 %i.ez, %i.ce
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22 ; 2 uses
  %i.fh = shufflevector <2 x double> %8, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.ee, <2 x i32> <i32 3, i32 1>
  %i.fj = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fc, i64 1
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fi, <2 x double> %i.fk) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 1
  %i.fn = fadd double %i.ev, %i.fm
  %i.fo = fmul double %i.ad, %i.fn
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.du, double -2.000000e+00, double %i.fg)
  %i.fq = fadd double %i.ex, %i.fp
  %i.fr = fmul double %i.ad, %i.fq
  %i.fs = fsub double %i.fc, %i.ev
  %i.ft = fmul double %i.af, %i.fs
  %i.fu = fsub double %i.fg, %i.ex
  %i.fv = fmul double %i.af, %i.fu
  %i.fw = extractelement <2 x double> %i.ei, i64 1
  %i.fx = fadd double %i.fw, %i.fo
  %i.fy = fadd double %i.ft, %i.fx
  %i.fz = fadd double %i.ek, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dl
  store double %i.fz, ptr %i.ga, align 8, !tbaa !22
  %i.gb = extractelement <2 x double> %i.fl, i64 0
  %i.gc = fadd double %i.gb, %i.fr
  %i.gd = fadd double %i.fv, %i.gc
  %i.ge = fadd double %i.em, %i.gd
  %gep154 = getelementptr inbounds [8 x i8], ptr %invariant.gep153, i64 %i.dn
  store double %i.ge, ptr %gep154, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !37

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.gf = add nuw nsw i64 %i.aw, 28               ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gf
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 224
  %i.gh = load double, ptr %gep.peel, align 8, !tbaa !22
  %gep146.peel = getelementptr i8, ptr %invariant.gep145, i64 232
  %i.gi = load double, ptr %gep146.peel, align 8, !tbaa !22
  %gep148.peel = getelementptr i8, ptr %invariant.gep147, i64 224
  %i.gj = load <2 x double>, ptr %i.gg, align 8, !tbaa !22 ; 4 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 0 ; 3 uses
  %i.gl = fmul double %i.d, %i.gk
  %i.gm = fmul double %i.f, %i.gk
  %i.gn = extractelement <2 x double> %i.gj, i64 1 ; 4 uses
  %i.go = fmul double %i.gm, %i.gn                ; 2 uses
  %i.gp = fmul double %.sink, %i.gn               ; 2 uses
  %i.gq = load <2 x double>, ptr %gep148.peel, align 8, !tbaa !22
  %i.gr = fsub double %i.gk, %i.gh
  %i.gs = fmul double %i.h, %i.gl                 ; 2 uses
  %i.gt = fneg double %i.gr
  %i.gu = fneg double %i.gs
  %i.gv = fmul double %10, %i.gt
  %i.gw = fsub double %i.gu, %i.go
  %i.gx = fsub <2 x double> %i.gq, %i.gj          ; 2 uses
  %i.gy = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.gz = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gv, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.gy, <2 x double> %i.ha) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = fadd double %i.gp, %i.hc
  %i.he = fsub double %i.gs, %i.go
  %i.hf = fsub double %i.he, %i.gp
  %i.hg = fsub double %i.gn, %i.gi
  %i.hh = fneg double %i.hg
  %i.hi = fmul double %10, %i.hh
  %i.hj = getelementptr i8, ptr %i.dh, i64 208
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !22 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.di, i64 208
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.dj, i64 208
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !22 ; 2 uses
  %i.hp = mul i64 %indvars.iv139, 128849018880
  %sext152 = add i64 %i.hp, 115964116992
  %i.hq = ashr exact i64 %sext152, 29
  %i.hr = getelementptr inbounds i8, ptr %i.a, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !22 ; 2 uses
  %i.ht = shufflevector <2 x double> %8, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.hu = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gx, <2 x i32> <i32 3, i32 1>
  %i.hv = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.ho, i64 1
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hu, <2 x double> %i.hw) ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 1
  %i.hz = fadd double %i.hk, %i.hy
  %i.ia = fmul double %i.ad, %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.gn, double -2.000000e+00, double %i.hs)
  %i.ic = fadd double %i.hm, %i.ib
  %i.id = fmul double %i.ad, %i.ic
  %i.ie = fsub double %i.ho, %i.hk
  %i.if = fmul double %i.af, %i.ie
  %i.ig = fsub double %i.hs, %i.hm
  %i.ih = fmul double %i.af, %i.ig
  %i.ii = extractelement <2 x double> %i.hb, i64 1
  %i.ij = fadd double %i.ii, %i.ia
  %i.ik = fadd double %i.if, %i.ij
  %i.il = fadd double %i.hd, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gf
  store double %i.il, ptr %i.im, align 8, !tbaa !22
  %i.in = extractelement <2 x double> %i.hx, i64 0
  %i.io = fadd double %i.in, %i.id
  %i.ip = fadd double %i.ih, %i.io
  %i.iq = fadd double %i.hf, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aw
  store double %i.iq, ptr %i.ir, align 8, !tbaa !22
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next140, 15
  br i1 %exitcond142.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 1808 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 3608
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 2 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !22 ; 4 uses
  %i.g = extractelement <2 x double> %i.f, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !22
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %.preheader106

.preheader106:                                    ; preds = %bb.a, %.preheader106
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader106 ], [ 0, %bb.a ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 15 uses
  %invariant.gep109 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 15 uses
  %i.j = load ptr, ptr %invariant.gep, align 8, !tbaa !13
  %i.k = load ptr, ptr %invariant.gep109, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.j, ptr noundef %i.k, i64 noundef 2, i64 noundef 2) #11
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 120
  %i.l = load ptr, ptr %gep.1, align 8, !tbaa !13
  %gep110.1 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 120
  %i.m = load ptr, ptr %gep110.1, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 2, i64 noundef 2) #11
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.n = load ptr, ptr %gep.2, align 8, !tbaa !13
  %gep110.2 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 240
  %i.o = load ptr, ptr %gep110.2, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 2, i64 noundef 2) #11
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 360
  %i.p = load ptr, ptr %gep.3, align 8, !tbaa !13
  %gep110.3 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 360
  %i.q = load ptr, ptr %gep110.3, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.p, ptr noundef %i.q, i64 noundef 2, i64 noundef 2) #11
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.r = load ptr, ptr %gep.4, align 8, !tbaa !13
  %gep110.4 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 480
  %i.s = load ptr, ptr %gep110.4, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.r, ptr noundef %i.s, i64 noundef 2, i64 noundef 2) #11
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 600
  %i.t = load ptr, ptr %gep.5, align 8, !tbaa !13
  %gep110.5 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 600
  %i.u = load ptr, ptr %gep110.5, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.t, ptr noundef %i.u, i64 noundef 2, i64 noundef 2) #11
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %i.v = load ptr, ptr %gep.6, align 8, !tbaa !13
  %gep110.6 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 720
  %i.w = load ptr, ptr %gep110.6, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.v, ptr noundef %i.w, i64 noundef 2, i64 noundef 2) #11
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 840
  %i.x = load ptr, ptr %gep.7, align 8, !tbaa !13
  %gep110.7 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 840
  %i.y = load ptr, ptr %gep110.7, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 2, i64 noundef 2) #11
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 960
  %i.z = load ptr, ptr %gep.8, align 8, !tbaa !13
  %gep110.8 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 960
  %i.aa = load ptr, ptr %gep110.8, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.z, ptr noundef %i.aa, i64 noundef 2, i64 noundef 2) #11
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1080
  %i.ab = load ptr, ptr %gep.9, align 8, !tbaa !13
  %gep110.9 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1080
  %i.ac = load ptr, ptr %gep110.9, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.ab, ptr noundef %i.ac, i64 noundef 2, i64 noundef 2) #11
  %gep.10 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1200
  %i.ad = load ptr, ptr %gep.10, align 8, !tbaa !13
  %gep110.10 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1200
  %i.ae = load ptr, ptr %gep110.10, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef 2, i64 noundef 2) #11
  %gep.11 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1320
  %i.af = load ptr, ptr %gep.11, align 8, !tbaa !13
  %gep110.11 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1320
  %i.ag = load ptr, ptr %gep110.11, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.af, ptr noundef %i.ag, i64 noundef 2, i64 noundef 2) #11
  %gep.12 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1440
  %i.ah = load ptr, ptr %gep.12, align 8, !tbaa !13
  %gep110.12 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1440
  %i.ai = load ptr, ptr %gep110.12, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.ah, ptr noundef %i.ai, i64 noundef 2, i64 noundef 2) #11
  %gep.13 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1560
  %i.aj = load ptr, ptr %gep.13, align 8, !tbaa !13
  %gep110.13 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1560
  %i.ak = load ptr, ptr %gep110.13, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.aj, ptr noundef %i.ak, i64 noundef 2, i64 noundef 2) #11
  %gep.14 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1680
  %i.al = load ptr, ptr %gep.14, align 8, !tbaa !13
  %gep110.14 = getelementptr inbounds nuw i8, ptr %invariant.gep109, i64 1680
  %i.am = load ptr, ptr %gep110.14, align 8, !tbaa !13
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.al, ptr noundef %i.am, i64 noundef 2, i64 noundef 2) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %.loopexit105, label %.preheader106

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 5408
  %i.ao = load double, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 5432
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !28 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 5456
  %i.as = load double, ptr %i.ar, align 8, !tbaa !34 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 5440
  %i.au = load double, ptr %i.at, align 8, !tbaa !35
  %i.av = fneg <2 x double> %i.f
  %i.aw = fneg double %i.ao
  %i.ax = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ay = fneg <2 x double> %i.f
  %i.az = shufflevector <2 x double> %i.f, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = insertelement <2 x double> poison, double %i.ao, i64 1
  %i.bb = insertelement <2 x double> poison, double %i.aw, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv133 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next134, %bb.e ] ; 5 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv133 to i32
  %i.bd = uitofp nneg i32 %i.bc to double
  %i.be = fadd double %i.bd, -5.000000e-01
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.aq, double 3.000000e+01) ; 2 uses
  %i.bg = fadd double %i.aq, %i.bf
  %i.bh = fmul double %i.bf, 2.000000e-01
  %i.bi = tail call double @exp(double noundef %i.bh) #11
  %i.bj = fmul double %i.as, %i.bi
  %i.bk = fmul double %i.bg, 2.000000e-01
  %i.bl = tail call double @exp(double noundef %i.bk) #11
  %i.bm = fmul double %i.as, %i.bl
  %i.bn = fadd double %i.bj, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.au, double 2.000000e+00, double %i.bn)
  %i.bp = mul nuw nsw i64 %indvars.iv133, 30      ; 2 uses
  %invariant.gep113 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv133
  %invariant.gep115 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv133
  %invariant.gep154 = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv129 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next130, %bb.d ] ; 4 uses
  %i.bu = shl nuw nsw i64 %indvars.iv129, 1       ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154, i64 %i.bu
  %i.bv = load double, ptr %gep, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bu
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !22
end_hunk_0
