Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsDiurnal_FSA_kry?download=true
inline.NumInlined: 49
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@main:bb.a

bb.w:                                             ; preds = %bb.v
  %i.mx = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #14 ; 5 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %check_retval.exit113.thread, label %check_retval.exit113.preheader

check_retval.exit113.preheader:                   ; preds = %bb.w
  store i32 0, ptr %i.mx, align 4, !tbaa !29
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  store i32 1, ptr %i.mz, align 4, !tbaa !29
  %i.na = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %check_retval.exit115.thread, label %check_retval.exit115.preheader

check_retval.exit113.thread:                      ; preds = %bb.w
  %i.nc = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.nd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nc, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %bb.ak

check_retval.exit115.preheader:                   ; preds = %check_retval.exit113.preheader
  %i.ne = load ptr, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !22
  store double %i.nf, ptr %i.na, align 8, !tbaa !22
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !22
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store double %i.nh, ptr %i.ni, align 8, !tbaa !22
  %i.nj = call ptr @N_VCloneVectorArray(i32 noundef 2, ptr noundef nonnull %i.eo) #11 ; 5 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %check_retval.exit117.thread, label %check_retval.exit117.preheader

check_retval.exit115.thread:                      ; preds = %check_retval.exit113.preheader
  %i.nl = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.nm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nl, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.12) #15 ; 0 uses
  br label %bb.ak

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
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 5440
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !35 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5448
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36 ; 6 uses
  %i.ag = fmul double %i.h, %.0133                ; 2 uses
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
  %i.aq = fmul double %i.ab, %i.ap                ; 5 uses
  %i.ar = fmul double %i.an, 2.000000e-01
  %i.as = tail call double @exp(double noundef %i.ar) #11
  %i.at = fmul double %i.ab, %i.as                ; 2 uses
  %i.au = icmp eq i64 %indvars.iv139, 0
  %i.av = select i1 %i.au, i64 1, i64 4294967295
  %i.aw = icmp eq i64 %indvars.iv139, 14
  %i.ax = select i1 %i.aw, i64 4294967295, i64 1
  %i.ay = mul nuw nsw i64 %indvars.iv139, 30      ; 11 uses
  %i.az = add nuw i64 %i.av, %indvars.iv139
  %i.ba = add nuw i64 %i.ax, %indvars.iv139
  %i.bb = or disjoint i64 %i.ay, 1                ; 2 uses
  %sext = mul i64 %i.ba, 128849018880
  %i.bc = ashr exact i64 %sext, 32                ; 2 uses
  %sext143 = mul i64 %i.az, 128849018880
  %i.bd = ashr exact i64 %sext143, 32             ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bd
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bc
  %i.bh = load <2 x double>, ptr %i.be, align 8, !tbaa !22 ; 5 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = fmul double %i.d, %i.bi
  %i.bk = fmul double %i.h, %i.bj                 ; 2 uses
  %i.bl = fmul double %i.f, %i.bi
  %i.bm = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bn = fmul double %i.bl, %i.bm                ; 2 uses
  %i.bo = fmul double %.sink, %i.bm               ; 2 uses
  %i.bp = fneg double %i.bk
  %i.bq = fsub double %i.bp, %i.bn
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ag, double 2.000000e+00, double %i.bq)
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = fsub double %i.bk, %i.bn
  %i.bu = fsub double %i.bt, %i.bo
  %i.bv = load <2 x double>, ptr %i.bf, align 8, !tbaa !22
  %i.bw = load <2 x double>, ptr %i.bg, align 8, !tbaa !22
  %i.bx = fsub <2 x double> %i.bw, %i.bh
  %i.by = fsub <2 x double> %i.bh, %i.bv
  %i.bz = fneg <2 x double> %i.by
  %i.ca = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.cb, %i.bz
  %i.cd = insertelement <2 x double> poison, double %i.at, i64 0 ; 3 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.bx, <2 x double> %i.cc) ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %4 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %5 = load double, ptr %4, align 8, !tbaa !22    ; 4 uses
  %6 = trunc nuw nsw i64 %i.bb to i32
  %7 = mul i64 %indvars.iv139, 128849018880
  %sext144 = add i64 %7, 12884901888
  %8 = ashr exact i64 %sext144, 29
  %i.ch = getelementptr inbounds i8, ptr %i.a, i64 %8
  %9 = load double, ptr %i.ch, align 8, !tbaa !22 ; 4 uses
  %10 = insertelement <2 x double> poison, double %5, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double -2.000000e+00), <2 x double> %11) ; 2 uses
  %i.ci = extractelement <2 x double> %12, i64 0
  %13 = fadd double %5, %i.ci
  %14 = fmul double %i.ad, %13
  %i.cj = extractelement <2 x double> %12, i64 1
  %15 = fadd double %9, %i.cj
  %16 = fmul double %i.ad, %15
  %17 = fsub double %5, %5
  %i.ck = fmul double %i.af, %17
  %18 = fsub double %9, %9
  %i.cl = fmul double %i.af, %18
  %i.cm = extractelement <2 x double> %i.cf, i64 0
  %i.cn = fadd double %i.cm, %14
  %i.co = fadd double %i.ck, %i.cn
  %i.cp = fadd double %i.bs, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  store double %i.cp, ptr %i.cq, align 8, !tbaa !22
  %i.cr = extractelement <2 x double> %i.cf, i64 1
  %i.cs = fadd double %i.cr, %16
  %i.ct = fadd double %i.cl, %i.cs
  %i.cu = fadd double %i.bu, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %i.cu, ptr %i.cw, align 8, !tbaa !22
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  %invariant.gep145 = getelementptr [8 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  %invariant.gep147 = getelementptr [8 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.da = insertelement <2 x double> %i.ah, double %i.at, i64 1 ; 2 uses
  %invariant.gep153 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ay
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.db = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.dc = add nuw nsw i64 %i.db, %i.ay            ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dc
  %i.de = or disjoint i64 %i.db, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.db
  %i.df = load double, ptr %gep, align 8, !tbaa !22
  %gep146 = getelementptr [8 x i8], ptr %invariant.gep145, i64 %i.de
  %i.dg = load double, ptr %gep146, align 8, !tbaa !22
  %gep148 = getelementptr [8 x i8], ptr %invariant.gep147, i64 %i.db
  %i.dh = load <2 x double>, ptr %i.dd, align 8, !tbaa !22 ; 4 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0 ; 3 uses
  %i.dj = fmul double %i.d, %i.di
  %i.dk = fmul double %i.f, %i.di
  %i.dl = extractelement <2 x double> %i.dh, i64 1 ; 4 uses
  %i.dm = fmul double %i.dk, %i.dl                ; 2 uses
  %i.dn = fmul double %.sink, %i.dl               ; 2 uses
  %i.do = load <2 x double>, ptr %gep148, align 8, !tbaa !22
  %i.dp = fsub double %i.di, %i.df
  %i.dq = fmul double %i.h, %i.dj                 ; 2 uses
  %i.dr = fneg double %i.dp
  %i.ds = fneg double %i.dq
  %i.dt = fmul double %i.aq, %i.dr
  %i.du = fsub double %i.ds, %i.dm
  %i.dv = fsub <2 x double> %i.do, %i.dh          ; 2 uses
  %i.dw = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.dt, i64 1
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.dw, <2 x double> %i.dy) ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fadd double %i.dn, %i.ea
  %i.ec = fsub double %i.dq, %i.dm
  %i.ed = fsub double %i.ec, %i.dn
  %i.ee = fsub double %i.dl, %i.dg
  %i.ef = fneg double %i.ee
  %i.eg = fmul double %i.aq, %i.ef
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = add nsw i32 %i.ei, -2
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.cx, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !22 ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.cy, i64 %i.ek
  %i.eo = load double, ptr %i.en, align 8, !tbaa !22 ; 2 uses
  %i.ep = shl i32 %i.eh, 1
  %i.eq = add i32 %i.ep, 2                        ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [8 x i8], ptr %i.cz, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !22 ; 2 uses
  %i.eu = add nuw nsw i32 %i.eq, %6
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !22 ; 2 uses
  %i.ey = shufflevector <2 x double> %i.cd, <2 x double> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.dv, <2 x i32> <i32 3, i32 1>
  %i.fa = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.et, i64 1
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ez, <2 x double> %i.fb) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 1
  %i.fe = fadd double %i.em, %i.fd
  %i.ff = fmul double %i.ad, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.dl, double -2.000000e+00, double %i.ex)
  %i.fh = fadd double %i.eo, %i.fg
  %i.fi = fmul double %i.ad, %i.fh
  %i.fj = fsub double %i.et, %i.em
  %i.fk = fmul double %i.af, %i.fj
  %i.fl = fsub double %i.ex, %i.eo
  %i.fm = fmul double %i.af, %i.fl
  %i.fn = extractelement <2 x double> %i.dz, i64 1
  %i.fo = fadd double %i.fn, %i.ff
  %i.fp = fadd double %i.fk, %i.fo
  %i.fq = fadd double %i.eb, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  store double %i.fq, ptr %i.fr, align 8, !tbaa !22
  %i.fs = extractelement <2 x double> %i.fc, i64 0
  %i.ft = fadd double %i.fs, %i.fi
  %i.fu = fadd double %i.fm, %i.ft
  %i.fv = fadd double %i.ed, %i.fu
  %gep154 = getelementptr inbounds [8 x i8], ptr %invariant.gep153, i64 %i.de
  store double %i.fv, ptr %gep154, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !37

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fw = add nuw nsw i64 %i.ay, 28               ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fw
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 224
  %i.fy = load double, ptr %gep.peel, align 8, !tbaa !22
  %gep146.peel = getelementptr i8, ptr %invariant.gep145, i64 232
  %i.fz = load double, ptr %gep146.peel, align 8, !tbaa !22
  %gep148.peel = getelementptr i8, ptr %invariant.gep147, i64 224
  %i.ga = load <2 x double>, ptr %i.fx, align 8, !tbaa !22 ; 4 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0 ; 3 uses
  %i.gc = fmul double %i.d, %i.gb
  %i.gd = fmul double %i.f, %i.gb
  %i.ge = extractelement <2 x double> %i.ga, i64 1 ; 4 uses
  %i.gf = fmul double %i.gd, %i.ge                ; 2 uses
  %i.gg = fmul double %.sink, %i.ge               ; 2 uses
  %i.gh = load <2 x double>, ptr %gep148.peel, align 8, !tbaa !22
  %i.gi = fsub double %i.gb, %i.fy
  %i.gj = fmul double %i.h, %i.gc                 ; 2 uses
  %i.gk = fneg double %i.gi
  %i.gl = fneg double %i.gj
  %i.gm = fmul double %i.aq, %i.gk
  %i.gn = fsub double %i.gl, %i.gf
  %i.go = fsub <2 x double> %i.gh, %i.ga          ; 2 uses
  %i.gp = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.go, <2 x i32> <i32 0, i32 2>
  %i.gq = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gm, i64 1
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.gp, <2 x double> %i.gr) ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  %i.gu = fadd double %i.gg, %i.gt
  %i.gv = fsub double %i.gj, %i.gf
  %i.gw = fsub double %i.gv, %i.gg
  %i.gx = fsub double %i.ge, %i.fz
  %i.gy = fneg double %i.gx
  %i.gz = fmul double %i.aq, %i.gy
  %i.ha = getelementptr i8, ptr %i.cx, i64 208
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !22 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.cy, i64 208
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !22 ; 2 uses
  %i.he = getelementptr i8, ptr %i.cz, i64 208
  %i.hf = load double, ptr %i.he, align 8, !tbaa !22 ; 2 uses
  %i.hg = mul i64 %indvars.iv139, 128849018880
  %sext152 = add i64 %i.hg, 115964116992
  %i.hh = ashr exact i64 %sext152, 29
  %i.hi = getelementptr inbounds i8, ptr %i.a, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !22 ; 2 uses
  %i.hk = shufflevector <2 x double> %i.cd, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.hl = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.go, <2 x i32> <i32 3, i32 1>
  %i.hm = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hf, i64 1
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hl, <2 x double> %i.hn) ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  %i.hq = fadd double %i.hb, %i.hp
  %i.hr = fmul double %i.ad, %i.hq
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.ge, double -2.000000e+00, double %i.hj)
  %i.ht = fadd double %i.hd, %i.hs
  %i.hu = fmul double %i.ad, %i.ht
  %i.hv = fsub double %i.hf, %i.hb
  %i.hw = fmul double %i.af, %i.hv
  %i.hx = fsub double %i.hj, %i.hd
  %i.hy = fmul double %i.af, %i.hx
  %i.hz = extractelement <2 x double> %i.gs, i64 1
  %i.ia = fadd double %i.hz, %i.hr
  %i.ib = fadd double %i.hw, %i.ia
  %i.ic = fadd double %i.gu, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fw
  store double %i.ic, ptr %i.id, align 8, !tbaa !22
  %i.ie = extractelement <2 x double> %i.ho, i64 0
  %i.if = fadd double %i.ie, %i.hu
  %i.ig = fadd double %i.hy, %i.if
  %i.ih = fadd double %i.gw, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ay
  store double %i.ih, ptr %i.ii, align 8, !tbaa !22
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
end_hunk_0
