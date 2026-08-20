inline.NumInlined: 23
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a

check_retval.exit85.2:                            ; preds = %bb.u, %bb.t
  %i.fj = load double, ptr %i.a, align 8, !tbaa !14
  %i.fk = load i64, ptr %i.c, align 8, !tbaa !22
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.fj, double noundef %i.fe, i64 noundef %i.fk) ; 0 uses
  %i.fm = call i32 @CVode(ptr noundef %i.cr, double noundef 4.000000e-01, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %check_retval.exit83, label %bb.v

bb.v:                                             ; preds = %check_retval.exit85.2
  %i.fo = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.fp = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 0
  br i1 %i.fq, label %bb.w, label %check_retval.exit85.3

bb.w:                                             ; preds = %bb.v
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.fp) #11 ; 0 uses
  br label %check_retval.exit85.3

check_retval.exit85.3:                            ; preds = %bb.w, %bb.v
  %i.ft = load double, ptr %i.a, align 8, !tbaa !14
  %i.fu = load i64, ptr %i.c, align 8, !tbaa !22
  %i.fv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.ft, double noundef %i.fo, i64 noundef %i.fu) ; 0 uses
  %i.fw = call i32 @CVode(ptr noundef %i.cr, double noundef 5.000000e-01, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %check_retval.exit83, label %bb.x

bb.x:                                             ; preds = %check_retval.exit85.3
  %i.fy = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.fz = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.y, label %check_retval.exit85.4

bb.y:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.fz) #11 ; 0 uses
  br label %check_retval.exit85.4

check_retval.exit85.4:                            ; preds = %bb.y, %bb.x
  %i.gd = load double, ptr %i.a, align 8, !tbaa !14
  %i.ge = load i64, ptr %i.c, align 8, !tbaa !22
  %i.gf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.gd, double noundef %i.fy, i64 noundef %i.ge) ; 0 uses
  %i.gg = call i32 @CVode(ptr noundef %i.cr, double noundef 6.000000e-01, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %check_retval.exit83, label %bb.z

bb.z:                                             ; preds = %check_retval.exit85.4
  %i.gi = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.gj = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.gk = icmp slt i32 %i.gj, 0
  br i1 %i.gk, label %bb.aa, label %check_retval.exit85.5

bb.aa:                                            ; preds = %bb.z
  %i.gl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.gj) #11 ; 0 uses
  br label %check_retval.exit85.5

check_retval.exit85.5:                            ; preds = %bb.aa, %bb.z
  %i.gn = load double, ptr %i.a, align 8, !tbaa !14
  %i.go = load i64, ptr %i.c, align 8, !tbaa !22
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.gn, double noundef %i.gi, i64 noundef %i.go) ; 0 uses
  %i.gq = call i32 @CVode(ptr noundef %i.cr, double noundef f0x3FE6666666666666, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %check_retval.exit83, label %bb.ab

bb.ab:                                            ; preds = %check_retval.exit85.5
  %i.gs = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.gt = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %bb.ac, label %check_retval.exit85.6

bb.ac:                                            ; preds = %bb.ab
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.gt) #11 ; 0 uses
  br label %check_retval.exit85.6

check_retval.exit85.6:                            ; preds = %bb.ac, %bb.ab
  %i.gx = load double, ptr %i.a, align 8, !tbaa !14
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !22
  %i.gz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.gx, double noundef %i.gs, i64 noundef %i.gy) ; 0 uses
  %i.ha = call i32 @CVode(ptr noundef %i.cr, double noundef f0x3FE9999999999999, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %check_retval.exit83, label %bb.ad

bb.ad:                                            ; preds = %check_retval.exit85.6
  %i.hc = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.hd = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.ae, label %check_retval.exit85.7

bb.ae:                                            ; preds = %bb.ad
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hf, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.hd) #11 ; 0 uses
  br label %check_retval.exit85.7

check_retval.exit85.7:                            ; preds = %bb.ae, %bb.ad
  %i.hh = load double, ptr %i.a, align 8, !tbaa !14
  %i.hi = load i64, ptr %i.c, align 8, !tbaa !22
  %i.hj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.hh, double noundef %i.hc, i64 noundef %i.hi) ; 0 uses
  %i.hk = call i32 @CVode(ptr noundef %i.cr, double noundef f0x3FECCCCCCCCCCCCC, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %check_retval.exit83, label %bb.af

bb.af:                                            ; preds = %check_retval.exit85.7
  %i.hm = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.hn = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.ho = icmp slt i32 %i.hn, 0
  br i1 %i.ho, label %bb.ag, label %check_retval.exit85.8

bb.ag:                                            ; preds = %bb.af
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.hn) #11 ; 0 uses
  br label %check_retval.exit85.8

check_retval.exit85.8:                            ; preds = %bb.ag, %bb.af
  %i.hr = load double, ptr %i.a, align 8, !tbaa !14
  %i.hs = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ht = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.hr, double noundef %i.hm, i64 noundef %i.hs) ; 0 uses
  %i.hu = call i32 @CVode(ptr noundef %i.cr, double noundef f0x3FEFFFFFFFFFFFFF, ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1) #10 ; 2 uses
  %i.hv = icmp slt i32 %i.hu, 0
  br i1 %i.hv, label %check_retval.exit83, label %bb.ah

bb.ah:                                            ; preds = %check_retval.exit85.8
  %i.hw = call double @N_VMaxNorm(ptr noundef %i.v) #10
  %i.hx = call i32 @CVodeGetNumSteps(ptr noundef %i.cr, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 0
  br i1 %i.hy, label %bb.ai, label %check_retval.exit85.9

bb.ai:                                            ; preds = %bb.ah
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, i32 noundef %i.hx) #11 ; 0 uses
  br label %check_retval.exit85.9

check_retval.exit85.9:                            ; preds = %bb.ai, %bb.ah
  %i.ib = load double, ptr %i.a, align 8, !tbaa !14
  %i.ic = load i64, ptr %i.c, align 8, !tbaa !22
  %i.id = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, double noundef %i.ib, double noundef %i.hw, i64 noundef %i.ic) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %check_retval.exit85.9, %check_retval.exit83
  call fastcc void @PrintFinalStats(ptr noundef %i.cr)
  call void @N_VDestroy(ptr noundef %i.v) #10
  call void @CVodeFree(ptr noundef nonnull %i.b) #10
  %i.ie = call i32 @SUNLinSolFree(ptr noundef %i.dr) #10 ; 0 uses
  call void @SUNMatDestroy(ptr noundef %i.dk) #10
  call void @free(ptr noundef nonnull %i.ab) #10
  %i.if = call i32 @SUNContext_Free(ptr noundef nonnull %i.d) #10 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %check_retval.exit81, %check_retval.exit79, %check_retval.exit77, %check_retval.exit75, %check_retval.exit73, %check_retval.exit71, %check_retval.exit69, %check_retval.exit67, %check_retval.exit65, %check_retval.exit63, %check_retval.exit, %.loopexit, %bb.e
  %.047 = phi i32 [ 1, %bb.e ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit63 ], [ 1, %check_retval.exit65 ], [ 1, %check_retval.exit67 ], [ 1, %check_retval.exit69 ], [ 1, %check_retval.exit71 ], [ 1, %check_retval.exit73 ], [ 1, %check_retval.exit75 ], [ 1, %check_retval.exit77 ], [ 1, %check_retval.exit79 ], [ 0, %.loopexit ], [ 1, %check_retval.exit81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.047
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_PopErrHandler(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_PushErrHandler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNAbortErrHandlerFn(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @SUNLogErrHandlerFn(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNContext_GetProfiler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #10 ; 86 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #10 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !24 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !25 ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !16 ; 16 uses
  %4 = getelementptr inbounds i8, ptr %i.a, i64 -8
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ax = insertelement <2 x double> poison, double %i.h, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.d, i64 1
  %i.az = insertelement <2 x double> poison, double %i.d, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.h, i64 1 ; 5 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %.split.us ] ; 45 uses
  %i.bb = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.bc = icmp eq i64 %indvars.iv, 1
  %i.bd = icmp eq i64 %indvars.iv, 5              ; 10 uses
  br i1 %i.bc, label %.split.us.loopexit, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.be = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 -16
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.1, label %.thread

.split.us.loopexit:                               ; preds = %.preheader
  %i.bj = load double, ptr %i.a, align 8, !tbaa !14
  %i.bk = load double, ptr %5, align 8, !tbaa !14
  %i.bl = load double, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.bm = fmul double %i.f, %i.bl
  %i.bn = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bk, i64 1
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bp)
  %i.br = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bl, i64 0
  %i.bs = fadd <2 x double> %i.bq, %i.br          ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fmul double %i.d, %i.bt
  %i.bv = extractelement <2 x double> %i.bs, i64 1
  %i.bw = fmul double %i.h, %i.bv
  %i.bx = fadd double %i.bu, %i.bm
  %i.by = fadd double %i.bw, %i.bx
  store double %i.by, ptr %i.b, align 8, !tbaa !14
  %i.bz = load double, ptr %i.j, align 8, !tbaa !14
  %i.ca = load double, ptr %i.k, align 8, !tbaa !14
  %i.cb = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.cc = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.cd = fsub double %i.cc, %i.cb
  %i.ce = fmul double %i.f, %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.ca, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ci)
  %i.ck = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cc, i64 0
  %i.cl = fadd <2 x double> %i.cj, %i.ck
  %i.cm = fmul <2 x double> %i.ba, %i.cl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %i.co = fadd double %i.cn, %i.ce
  %i.cp = extractelement <2 x double> %i.cm, i64 1
  %i.cq = fadd double %i.cp, %i.co
  store double %i.cq, ptr %i.n, align 8, !tbaa !14
  %i.cr = load double, ptr %i.o, align 8, !tbaa !14
  %i.cs = load double, ptr %i.p, align 8, !tbaa !14
  %i.ct = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.cu = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.cv = fsub double %i.cu, %i.ct
  %i.cw = fmul double %i.f, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cs, i64 1
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> splat (double -2.000000e+00), <2 x double> %i.da)
  %i.dc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cu, i64 0
  %i.dd = fadd <2 x double> %i.db, %i.dc          ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = fmul double %i.d, %i.de
  %i.dg = extractelement <2 x double> %i.dd, i64 1
  %i.dh = fmul double %i.h, %i.dg
  %i.di = fadd double %i.df, %i.cw
  %i.dj = fadd double %i.dh, %i.di
  store double %i.dj, ptr %i.s, align 8, !tbaa !14
  %i.dk = load double, ptr %i.t, align 8, !tbaa !14
  %i.dl = load double, ptr %i.u, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.do = load double, ptr %i.dn, align 8, !tbaa !14 ; 2 uses
  %i.dp = load double, ptr %i.v, align 8, !tbaa !14 ; 2 uses
  %i.dq = fsub double %i.dp, %i.do
  %i.dr = fmul double %i.f, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dl, i64 1
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> splat (double -2.000000e+00), <2 x double> %i.dv)
  %i.dx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dp, i64 0
  %i.dy = fadd <2 x double> %i.dw, %i.dx
  %i.dz = fmul <2 x double> %i.ba, %i.dy          ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 0
  %i.eb = fadd double %i.ea, %i.dr
  %i.ec = extractelement <2 x double> %i.dz, i64 1
  %i.ed = fadd double %i.ec, %i.eb
  store double %i.ed, ptr %i.w, align 8, !tbaa !14
  %i.ee = load double, ptr %i.x, align 8, !tbaa !14
  %i.ef = load double, ptr %i.y, align 8, !tbaa !14
  %i.eg = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.eh = load double, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ei = fsub double %i.eh, %i.eg
  %i.ej = fmul double %i.f, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ef, i64 1
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> splat (double -2.000000e+00), <2 x double> %i.en)
  %i.ep = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.eh, i64 0
  %i.eq = fadd <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0
  %i.es = fmul double %i.d, %i.er
  %i.et = extractelement <2 x double> %i.eq, i64 1
  %i.eu = fmul double %i.h, %i.et
  %i.ev = fadd double %i.es, %i.ej
  %i.ew = fadd double %i.eu, %i.ev
  store double %i.ew, ptr %i.ab, align 8, !tbaa !14
  %i.ex = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ey = load double, ptr %i.ad, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !14 ; 2 uses
  %i.fc = load double, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.fd = fsub double %i.fc, %i.fb
  %i.fe = fmul double %i.f, %i.fd
  %i.ff = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fh = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ey, i64 1
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> splat (double -2.000000e+00), <2 x double> %i.fi)
  %i.fk = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fc, i64 0
  %i.fl = fadd <2 x double> %i.fj, %i.fk
  %i.fm = fmul <2 x double> %i.ba, %i.fl          ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  %i.fo = fadd double %i.fn, %i.fe
  %i.fp = extractelement <2 x double> %i.fm, i64 1
  %i.fq = fadd double %i.fp, %i.fo
  store double %i.fq, ptr %i.af, align 8, !tbaa !14
  %i.fr = load double, ptr %i.ag, align 8, !tbaa !14
  %i.fs = load double, ptr %i.ah, align 8, !tbaa !14
  %i.ft = load double, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.fu = load double, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %i.fv = fsub double %i.fu, %i.ft
  %i.fw = fmul double %i.f, %i.fv
  %i.fx = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fs, i64 1
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ga)
  %i.gc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fu, i64 0
  %i.gd = fadd <2 x double> %i.gb, %i.gc          ; 2 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0
  %i.gf = fmul double %i.d, %i.ge
  %i.gg = extractelement <2 x double> %i.gd, i64 1
  %i.gh = fmul double %i.h, %i.gg
  %i.gi = fadd double %i.gf, %i.fw
  %i.gj = fadd double %i.gh, %i.gi
  store double %i.gj, ptr %i.ak, align 8, !tbaa !14
  %i.gk = load double, ptr %i.al, align 8, !tbaa !14
  %i.gl = load double, ptr %i.am, align 8, !tbaa !14
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 232
  %i.go = load double, ptr %i.gn, align 8, !tbaa !14 ; 2 uses
  %i.gp = load double, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.gq = fsub double %i.gp, %i.go
  %i.gr = fmul double %i.f, %i.gq
  %i.gs = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gl, i64 1
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> splat (double -2.000000e+00), <2 x double> %i.gv)
  %i.gx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gp, i64 0
  %i.gy = fadd <2 x double> %i.gw, %i.gx
  %i.gz = fmul <2 x double> %i.ba, %i.gy          ; 2 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0
  %i.hb = fadd double %i.ha, %i.gr
  %i.hc = extractelement <2 x double> %i.gz, i64 1
  %i.hd = fadd double %i.hc, %i.hb
  store double %i.hd, ptr %i.ao, align 8, !tbaa !14
  %i.he = load double, ptr %i.ap, align 8, !tbaa !14
  %i.hf = load double, ptr %i.aq, align 8, !tbaa !14
  %i.hg = load double, ptr %i.ar, align 8, !tbaa !14 ; 2 uses
  %i.hh = load double, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.hi = fsub double %i.hh, %i.hg
  %i.hj = fmul double %i.f, %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hf, i64 1
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> splat (double -2.000000e+00), <2 x double> %i.hn)
  %i.hp = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hh, i64 0
  %i.hq = fadd <2 x double> %i.ho, %i.hp          ; 2 uses
  %i.hr = extractelement <2 x double> %i.hq, i64 0
  %i.hs = fmul double %i.d, %i.hr
  %i.ht = extractelement <2 x double> %i.hq, i64 1
  %i.hu = fmul double %i.h, %i.ht
  %i.hv = fadd double %i.hs, %i.hj
  %i.hw = fadd double %i.hu, %i.hv
  store double %i.hw, ptr %i.at, align 8, !tbaa !14
  %i.hx = load double, ptr %i.au, align 8, !tbaa !14
  %i.hy = load double, ptr %i.av, align 8, !tbaa !14
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 312
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !14 ; 2 uses
  %i.ic = fsub double 0.000000e+00, %i.ib
  %i.id = fmul double %i.f, %i.ic
  %i.ie = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.hy, i64 1
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ih)
  %i.ij = fadd <2 x double> %i.ii, zeroinitializer
  %i.ik = fmul <2 x double> %i.ba, %i.ij          ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  %i.im = fadd double %i.il, %i.id
  %i.in = extractelement <2 x double> %i.ik, i64 1
  %i.io = fadd double %i.in, %i.im
  store double %i.io, ptr %i.aw, align 8, !tbaa !14
  br label %.split.us

.thread:                                          ; preds = %.preheader.split.preheader
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !14
  br label %.preheader.split.1

.preheader.split.1:                               ; preds = %.thread, %.preheader.split.preheader
  %i.ir = phi double [ %i.iq, %.thread ], [ 0.000000e+00, %.preheader.split.preheader ]
  %i.is = add nuw nsw i64 %indvars.iv, 4          ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !14 ; 2 uses
  %i.iv = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ix = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ir, i64 0
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ix)
  %i.iz = fmul double %i.f, %i.iu
  %i.ja = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.iu, i64 1
  %i.jc = fadd <2 x double> %i.jb, %i.iy
  %i.jd = fmul <2 x double> %i.ay, %i.jc          ; 2 uses
  %i.je = extractelement <2 x double> %i.jd, i64 1
  %i.jf = fadd double %i.je, %i.iz
  %i.jg = extractelement <2 x double> %i.jd, i64 0
  %i.jh = fadd double %i.jg, %i.jf
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bb
  store double %i.jh, ptr %i.ji, align 8, !tbaa !14
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.is
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.2, label %.thread.1

.thread.1:                                        ; preds = %.preheader.split.1
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !14
  br label %.preheader.split.2

.preheader.split.2:                               ; preds = %.thread.1, %.preheader.split.1
  %i.jr = phi double [ %i.jq, %.thread.1 ], [ 0.000000e+00, %.preheader.split.1 ]
  %i.js = load double, ptr %4, align 8, !tbaa !14 ; 2 uses
  %i.jt = add nuw nsw i64 %indvars.iv, 9          ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !14 ; 2 uses
  %i.jw = fsub double %i.jv, %i.js
  %i.jx = fmul double %i.f, %i.jw
  %i.jy = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = insertelement <2 x double> poison, double %i.js, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jr, i64 1
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> splat (double -2.000000e+00), <2 x double> %i.kb) ; 2 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0
  %i.ke = fadd double %i.kd, %i.jv
  %i.kf = fmul double %i.d, %i.ke
  %i.kg = extractelement <2 x double> %i.kc, i64 1
  %i.kh = fadd double %i.jn, %i.kg
  %i.ki = fmul double %i.h, %i.kh
  %i.kj = fadd double %i.kf, %i.jx
  %i.kk = fadd double %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.is
  store double %i.kk, ptr %i.kl, align 8, !tbaa !14
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jt
  %i.kn = load double, ptr %i.km, align 8, !tbaa !14
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.3, label %.thread.2

.thread.2:                                        ; preds = %.preheader.split.2
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !14
  br label %.preheader.split.3

.preheader.split.3:                               ; preds = %.thread.2, %.preheader.split.2
  %i.ku = phi double [ %i.kt, %.thread.2 ], [ 0.000000e+00, %.preheader.split.2 ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !14 ; 2 uses
  %i.ky = add nuw nsw i64 %indvars.iv, 14         ; 3 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !14 ; 2 uses
  %i.lb = fsub double %i.la, %i.kx
  %i.lc = fmul double %i.f, %i.lb
  %i.ld = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.ku, i64 1
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> splat (double -2.000000e+00), <2 x double> %i.lg) ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 0
  %i.lj = fadd double %i.li, %i.la
  %i.lk = fmul double %i.d, %i.lj
  %i.ll = extractelement <2 x double> %i.lh, i64 1
  %i.lm = fadd double %i.kq, %i.ll
  %i.ln = fmul double %i.h, %i.lm
  %i.lo = fadd double %i.lk, %i.lc
  %i.lp = fadd double %i.ln, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.jt
  store double %i.lp, ptr %i.lq, align 8, !tbaa !14
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ky
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !14
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 104
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.4, label %.thread.3

.thread.3:                                        ; preds = %.preheader.split.3
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 120
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !14
  br label %.preheader.split.4

.preheader.split.4:                               ; preds = %.thread.3, %.preheader.split.3
  %i.lz = phi double [ %i.ly, %.thread.3 ], [ 0.000000e+00, %.preheader.split.3 ]
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 72
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !14 ; 2 uses
  %i.md = add nuw nsw i64 %indvars.iv, 19         ; 3 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !14 ; 2 uses
  %i.mg = fsub double %i.mf, %i.mc
  %i.mh = fmul double %i.f, %i.mg
  %i.mi = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.lz, i64 1
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ml) ; 2 uses
  %i.mn = extractelement <2 x double> %i.mm, i64 0
  %i.mo = fadd double %i.mn, %i.mf
  %i.mp = fmul double %i.d, %i.mo
  %i.mq = extractelement <2 x double> %i.mm, i64 1
  %i.mr = fadd double %i.lv, %i.mq
  %i.ms = fmul double %i.h, %i.mr
  %i.mt = fadd double %i.mp, %i.mh
  %i.mu = fadd double %i.ms, %i.mt
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ky
  store double %i.mu, ptr %i.mv, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.md
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !14
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 144
  %i.na = load double, ptr %i.mz, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.5, label %.thread.4

.thread.4:                                        ; preds = %.preheader.split.4
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 160
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !14
  br label %.preheader.split.5

.preheader.split.5:                               ; preds = %.thread.4, %.preheader.split.4
  %i.ne = phi double [ %i.nd, %.thread.4 ], [ 0.000000e+00, %.preheader.split.4 ]
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 112
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !14 ; 2 uses
  %i.ni = add nuw nsw i64 %indvars.iv, 24         ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !14 ; 2 uses
  %i.nl = fsub double %i.nk, %i.nh
  %i.nm = fmul double %i.f, %i.nl
  %i.nn = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.ne, i64 1
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> splat (double -2.000000e+00), <2 x double> %i.nq) ; 2 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 0
  %i.nt = fadd double %i.ns, %i.nk
  %i.nu = fmul double %i.d, %i.nt
  %i.nv = extractelement <2 x double> %i.nr, i64 1
  %i.nw = fadd double %i.na, %i.nv
  %i.nx = fmul double %i.h, %i.nw
  %i.ny = fadd double %i.nu, %i.nm
  %i.nz = fadd double %i.nx, %i.ny
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.md
  store double %i.nz, ptr %i.oa, align 8, !tbaa !14
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ni
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !14
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 184
  %i.of = load double, ptr %i.oe, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.6, label %.thread.5

.thread.5:                                        ; preds = %.preheader.split.5
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 200
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !14
  br label %.preheader.split.6

.preheader.split.6:                               ; preds = %.thread.5, %.preheader.split.5
  %i.oj = phi double [ %i.oi, %.thread.5 ], [ 0.000000e+00, %.preheader.split.5 ]
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 152
  %i.om = load double, ptr %i.ol, align 8, !tbaa !14 ; 2 uses
  %i.on = add nuw nsw i64 %indvars.iv, 29         ; 3 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.on
  %i.op = load double, ptr %i.oo, align 8, !tbaa !14 ; 2 uses
  %i.oq = fsub double %i.op, %i.om
  %i.or = fmul double %i.f, %i.oq
  %i.os = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = insertelement <2 x double> poison, double %i.om, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.oj, i64 1
  %i.ow = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ov) ; 2 uses
  %i.ox = extractelement <2 x double> %i.ow, i64 0
  %i.oy = fadd double %i.ox, %i.op
  %i.oz = fmul double %i.d, %i.oy
  %i.pa = extractelement <2 x double> %i.ow, i64 1
  %i.pb = fadd double %i.of, %i.pa
  %i.pc = fmul double %i.h, %i.pb
  %i.pd = fadd double %i.oz, %i.or
  %i.pe = fadd double %i.pc, %i.pd
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ni
  store double %i.pe, ptr %i.pf, align 8, !tbaa !14
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.on
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !14
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 224
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !14
  br i1 %i.bd, label %.preheader.split.7, label %.thread.6

.thread.6:                                        ; preds = %.preheader.split.6
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 240
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !14
  br label %.preheader.split.7

.preheader.split.7:                               ; preds = %.thread.6, %.preheader.split.6
  %i.po = phi double [ %i.pn, %.thread.6 ], [ 0.000000e+00, %.preheader.split.6 ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 192
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !14 ; 2 uses
  %i.ps = add nuw nsw i64 %indvars.iv, 34         ; 3 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ps
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !14 ; 2 uses
  %i.pv = fsub double %i.pu, %i.pr
  %i.pw = fmul double %i.f, %i.pv
  %i.px = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pz = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.po, i64 1
  %i.qb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> splat (double -2.000000e+00), <2 x double> %i.qa) ; 2 uses
end_hunk_0
