Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsAdvDiff_ASAi_bnd?download=true
inline.NumInlined: 25
inline.NumDeleted: 2
begin_hunk_0_@main:bb.a
  br i1 %i.bs, label %check_retval.exit96, label %bb.o

check_retval.exit96:                              ; preds = %bb.n
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, i32 noundef %i.br) #11 ; 0 uses
  br label %bb.ac

bb.o:                                             ; preds = %bb.n
  %puts57 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.bv = call i32 @CVodeAdjInit(ptr noundef nonnull %i.an, i64 noundef 50, i32 noundef 1) #9 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %check_retval.exit98, label %bb.p

check_retval.exit98:                              ; preds = %bb.o
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, i32 noundef %i.bv) #11 ; 0 uses
  br label %bb.ac

bb.p:                                             ; preds = %bb.o
  %puts59 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.bz = call i32 @CVodeF(ptr noundef nonnull %i.an, double noundef 1.000000e+00, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %check_retval.exit100, label %bb.q

check_retval.exit100:                             ; preds = %bb.p
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, i32 noundef %i.bz) #11 ; 0 uses
  br label %bb.ac

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !24
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.cd) ; 0 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cg = call ptr @N_VNew_Serial(i64 noundef 800, ptr noundef %i.cf) #9 ; 7 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %check_retval.exit102, label %bb.r

check_retval.exit102:                             ; preds = %bb.q
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %bb.ac

bb.r:                                             ; preds = %bb.q
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.cg) #9
  %puts62 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ck = call i32 @CVodeCreateB(ptr noundef nonnull %i.an, i32 noundef 2, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %check_retval.exit104, label %bb.s

check_retval.exit104:                             ; preds = %bb.r
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18, i32 noundef %i.ck) #11 ; 0 uses
  br label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.co = load i32, ptr %i.d, align 4, !tbaa !24
  %i.cp = call i32 @CVodeSetUserDataB(ptr noundef nonnull %i.an, i32 noundef %i.co, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %check_retval.exit106, label %bb.t

check_retval.exit106:                             ; preds = %bb.s
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.19, i32 noundef %i.cp) #11 ; 0 uses
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.ct = load i32, ptr %i.d, align 4, !tbaa !24
  %i.cu = call i32 @CVodeInitB(ptr noundef nonnull %i.an, i32 noundef %i.ct, ptr noundef nonnull @fB, double noundef 1.000000e+00, ptr noundef nonnull %i.cg) #9 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %check_retval.exit108, label %bb.u

check_retval.exit108:                             ; preds = %bb.t
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.20, i32 noundef %i.cu) #11 ; 0 uses
  br label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !24
  %i.cz = call i32 @CVodeSStolerancesB(ptr noundef nonnull %i.an, i32 noundef %i.cy, double noundef f0x3EB0C6F7A0B5ED8D, double noundef 1.000000e-05) #9 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %check_retval.exit110, label %bb.v

check_retval.exit110:                             ; preds = %bb.u
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, i32 noundef %i.cz) #11 ; 0 uses
  br label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.de = call ptr @SUNBandMatrix(i64 noundef 800, i64 noundef 20, i64 noundef 20, ptr noundef %i.dd) #9 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %check_retval.exit112, label %bb.w

check_retval.exit112:                             ; preds = %bb.v
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.dj = call ptr @SUNLinSol_Band(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.de, ptr noundef %i.di) #9 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %check_retval.exit114, label %bb.x

check_retval.exit114:                             ; preds = %bb.w
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !24
  %i.do = call i32 @CVodeSetLinearSolverB(ptr noundef nonnull %i.an, i32 noundef %i.dn, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.de) #9 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %check_retval.exit116, label %bb.y

check_retval.exit116:                             ; preds = %bb.x
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.22, i32 noundef %i.do) #11 ; 0 uses
  br label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ds = load i32, ptr %i.d, align 4, !tbaa !24
  %i.dt = call i32 @CVodeSetJacFnB(ptr noundef nonnull %i.an, i32 noundef %i.ds, ptr noundef nonnull @JacB) #9 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %check_retval.exit118, label %bb.z

check_retval.exit118:                             ; preds = %bb.y
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.23, i32 noundef %i.dt) #11 ; 0 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.y
  %puts71 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.dx = call i32 @CVodeB(ptr noundef nonnull %i.an, double noundef 0.000000e+00, i32 noundef 1) #9 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %check_retval.exit120, label %bb.aa

check_retval.exit120:                             ; preds = %bb.z
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, i32 noundef %i.dx) #11 ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i32, ptr %i.d, align 4, !tbaa !24
  %i.ec = call i32 @CVodeGetB(ptr noundef nonnull %i.an, i32 noundef %i.eb, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cg) #9 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %check_retval.exit122, label %bb.ab

check_retval.exit122:                             ; preds = %bb.aa
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26, i32 noundef %i.ec) #11 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.val75 = load double, ptr %i.f, align 8, !tbaa !21
  %.val76 = load double, ptr %i.j, align 8, !tbaa !22
  call fastcc void @PrintOutput(ptr noundef nonnull %i.cg, double %.val75, double %.val76)
  call void @N_VDestroy(ptr noundef nonnull %i.r) #9
  call void @N_VDestroy(ptr noundef nonnull %i.cg) #9
  call void @CVodeFree(ptr noundef nonnull %i.b) #9
  %i.eg = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bj) #9 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.be) #9
  %i.eh = call i32 @SUNLinSolFree(ptr noundef nonnull %i.dj) #9 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.de) #9
  call void @free(ptr noundef nonnull %i.f) #9
  %i.ei = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %check_retval.exit122, %check_retval.exit120, %check_retval.exit118, %check_retval.exit116, %check_retval.exit114, %check_retval.exit112, %check_retval.exit110, %check_retval.exit108, %check_retval.exit106, %check_retval.exit104, %check_retval.exit102, %check_retval.exit100, %check_retval.exit98, %check_retval.exit96, %check_retval.exit94, %check_retval.exit92, %check_retval.exit90, %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit, %bb.ab
  %.0 = phi i32 [ 0, %bb.ab ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ 1, %check_retval.exit88 ], [ 1, %check_retval.exit90 ], [ 1, %check_retval.exit92 ], [ 1, %check_retval.exit94 ], [ 1, %check_retval.exit96 ], [ 1, %check_retval.exit98 ], [ 1, %check_retval.exit100 ], [ 1, %check_retval.exit102 ], [ 1, %check_retval.exit104 ], [ 1, %check_retval.exit106 ], [ 1, %check_retval.exit108 ], [ 1, %check_retval.exit110 ], [ 1, %check_retval.exit112 ], [ 1, %check_retval.exit114 ], [ 1, %check_retval.exit116 ], [ 1, %check_retval.exit118 ], [ 1, %check_retval.exit120 ], [ 1, %check_retval.exit122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 18 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !13 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !12 ; 5 uses
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %i.j = getelementptr i8, ptr %i.a, i64 160
  %i.k = insertelement <2 x double> poison, double %i.h, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.d, i64 1 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %indvars.iv59 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next60, %.split.us ] ; 9 uses
  %i.m = add nsw i64 %indvars.iv59, -1            ; 5 uses
  %i.n = icmp eq i64 %indvars.iv59, 1
  %i.o = add nuw nsw i64 %indvars.iv59, -41       ; 2 uses
  %i.p = add nsw i64 %indvars.iv59, -2            ; 2 uses
  %i.q = icmp eq i64 %indvars.iv59, 20            ; 3 uses
  br i1 %i.n, label %.thread.us.peel.next, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.r = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.m
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.p
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  br i1 %i.q, label %.preheader.split.peel.next, label %.thread.peel

.thread.peel:                                     ; preds = %.preheader.split.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv59
  %i.w = load double, ptr %i.v, align 8, !tbaa !10
  br label %.preheader.split.peel.next

.preheader.split.peel.next:                       ; preds = %.thread.peel, %.preheader.split.preheader
  %i.x = phi double [ %i.w, %.thread.peel ], [ 0.000000e+00, %.preheader.split.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv59
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.x, i64 0
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ad)
  %i.af = fmul double %i.f, %i.aa
  %i.ag = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.aa, i64 1
  %i.ai = fadd <2 x double> %i.ah, %i.ae
  %i.aj = fmul <2 x double> %i.l, %i.ai           ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 1
  %i.al = fadd double %i.ak, %i.af
  %i.am = extractelement <2 x double> %i.aj, i64 0
  %i.an = fadd double %i.am, %i.al
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.m
  store double %i.an, ptr %i.ao, align 8, !tbaa !10
  %i.ap = getelementptr [8 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv59 ; 2 uses
  %invariant.gep68 = getelementptr [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %invariant.gep70 = getelementptr [8 x i8], ptr %i.a, i64 %i.m
  br label %.preheader.split

.thread.us.peel.next:                             ; preds = %.preheader
  %i.aq = load double, ptr %i.a, align 8, !tbaa !10
  %i.ar = load double, ptr %i.i, align 8, !tbaa !10
  %i.as = load double, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.at = fmul double %i.f, %i.as
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ar, i64 0
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> splat (double -2.000000e+00), <2 x double> %i.aw)
  %i.ay = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.as, i64 1
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fmul <2 x double> %i.l, %i.az           ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 1
  %i.bc = fadd double %i.bb, %i.at
  %i.bd = extractelement <2 x double> %i.ba, i64 0
  %i.be = fadd double %i.bd, %i.bc
  store double %i.be, ptr %i.b, align 8, !tbaa !10
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  br label %.thread46.us

.thread46.us:                                     ; preds = %.thread46.us, %.thread.us.peel.next
  %indvars.iv53 = phi i64 [ 2, %.thread.us.peel.next ], [ %indvars.iv.next54, %.thread46.us ] ; 2 uses
  %i.bf = mul nuw nsw i64 %indvars.iv53, 20       ; 3 uses
  %i.bg = add nsw i64 %i.bf, -20                  ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %4 = getelementptr [8 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bj = getelementptr i8, ptr %4, i64 -152
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %i.bf
  %i.bl = load double, ptr %gep73, align 8, !tbaa !10 ; 2 uses
  %i.bm = load double, ptr %4, align 8, !tbaa !10 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bk, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> splat (double -2.000000e+00), <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  %i.bt = fadd double %i.bs, %i.bm
  %i.bu = fmul double %i.d, %i.bt
  %i.bv = fsub double %i.bm, %i.bl
  %i.bw = fmul double %i.f, %i.bv
  %i.bx = extractelement <2 x double> %i.br, i64 1
  %i.by = fadd double %i.bx, 0.000000e+00
  %i.bz = fmul double %i.h, %i.by
  %i.ca = fadd double %i.bu, %i.bw
  %i.cb = fadd double %i.bz, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bg
  store double %i.cb, ptr %i.cc, align 8, !tbaa !10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 3 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, 40
  br i1 %exitcond57.not, label %.split.us.loopexit.peel.begin, label %.thread46.us, !llvm.loop !25

.preheader.split:                                 ; preds = %.preheader.split.peel.next, %.thread46
  %indvars.iv = phi i64 [ 2, %.preheader.split.peel.next ], [ %indvars.iv.next, %.thread46 ] ; 2 uses
  %i.cd = mul nuw nsw i64 %indvars.iv, 20         ; 3 uses
  %i.ce = add nsw i64 %i.cd, -20                  ; 3 uses
  %i.cf = add nuw nsw i64 %i.ce, %i.m             ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr [8 x i8], ptr %i.ap, i64 %i.ce
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !10
  br i1 %i.q, label %.thread46, label %.thread

.thread:                                          ; preds = %.preheader.split
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ce
  %i.ck = load double, ptr %gep, align 8, !tbaa !10
  br label %.thread46

.thread46:                                        ; preds = %.thread, %.preheader.split
  %i.cl = phi double [ %i.ck, %.thread ], [ 0.000000e+00, %.preheader.split ]
  %gep69 = getelementptr [8 x i8], ptr %invariant.gep68, i64 %i.cd
  %i.cm = load double, ptr %gep69, align 8, !tbaa !10 ; 2 uses
  %gep71 = getelementptr [8 x i8], ptr %invariant.gep70, i64 %i.cd
  %i.cn = load double, ptr %gep71, align 8, !tbaa !10 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cl, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> splat (double -2.000000e+00), <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fadd double %i.ct, %i.cn
  %i.cv = fmul double %i.d, %i.cu
  %i.cw = fsub double %i.cn, %i.cm
  %i.cx = fmul double %i.f, %i.cw
  %i.cy = extractelement <2 x double> %i.cs, i64 1
  %i.cz = fadd double %i.cj, %i.cy
  %i.da = fmul double %i.h, %i.cz
  %i.db = fadd double %i.cv, %i.cx
  %i.dc = fadd double %i.da, %i.db
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  store double %i.dc, ptr %i.dd, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %.preheader.split.peel, label %.preheader.split, !llvm.loop !26

.split.us.loopexit.peel.begin:                    ; preds = %.thread46.us
  %i.de = mul nuw nsw i64 %indvars.iv.next54, 20  ; 3 uses
  %i.df = add nsw i64 %i.de, -20                  ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !10
  %5 = getelementptr [8 x i8], ptr %i.a, i64 %i.de
  %i.di = getelementptr i8, ptr %5, i64 -152
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10
  %gep73.peel = getelementptr [8 x i8], ptr %invariant.gep72, i64 %i.de
  %i.dk = load double, ptr %gep73.peel, align 8, !tbaa !10 ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dj, i64 1
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> splat (double -2.000000e+00), <2 x double> %i.do) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fadd double %i.dq, 0.000000e+00
  %i.ds = fmul double %i.d, %i.dr
  %i.dt = fsub double 0.000000e+00, %i.dk
  %i.du = fmul double %i.f, %i.dt
  %i.dv = extractelement <2 x double> %i.dp, i64 1
  %i.dw = fadd double %i.dv, 0.000000e+00
  %i.dx = fmul double %i.h, %i.dw
  %i.dy = fadd double %i.ds, %i.du
  %i.dz = fadd double %i.dx, %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.df
  store double %i.dz, ptr %i.ea, align 8, !tbaa !10
  br label %.split.us

.preheader.split.peel:                            ; preds = %.thread46
  %i.eb = mul nuw nsw i64 %indvars.iv.next, 20    ; 2 uses
  %i.ec = add nsw i64 %i.eb, -20                  ; 3 uses
  %i.ed = add nuw nsw i64 %i.ec, %i.m             ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !10
  %i.eg = getelementptr [8 x i8], ptr %i.ap, i64 %i.ec
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !10
  br i1 %i.q, label %.split.us.loopexit75.peel.next, label %.thread.peel76

.thread.peel76:                                   ; preds = %.preheader.split.peel
  %gep.peel = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ec
  %i.ei = load double, ptr %gep.peel, align 8, !tbaa !10
  br label %.split.us.loopexit75.peel.next

.split.us.loopexit75.peel.next:                   ; preds = %.thread.peel76, %.preheader.split.peel
  %i.ej = phi double [ %i.ei, %.thread.peel76 ], [ 0.000000e+00, %.preheader.split.peel ]
  %gep69.peel = getelementptr [8 x i8], ptr %invariant.gep68, i64 %i.eb
  %i.ek = load double, ptr %gep69.peel, align 8, !tbaa !10 ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.ej, i64 1
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double -2.000000e+00), <2 x double> %i.eo) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fadd double %i.eq, 0.000000e+00
  %i.es = fmul double %i.d, %i.er
  %i.et = fsub double 0.000000e+00, %i.ek
  %i.eu = fmul double %i.f, %i.et
  %i.ev = extractelement <2 x double> %i.ep, i64 1
  %i.ew = fadd double %i.eh, %i.ev
  %i.ex = fmul double %i.h, %i.ew
  %i.ey = fadd double %i.es, %i.eu
  %i.ez = fadd double %i.ex, %i.ey
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ed
  store double %i.ez, ptr %i.fa, align 8, !tbaa !10
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit75.peel.next, %.split.us.loopexit.peel.begin
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, 21
  br i1 %exitcond63.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.split.us
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @Jac(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 13 uses
  %i.g = fadd double %i.b, %i.f
  %i.h = fmul double %i.g, -2.000000e+00          ; 7 uses
  %i.i = fadd double %i.b, %i.d                   ; 6 uses
  %i.j = fsub double %i.b, %i.d                   ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %indvars.iv62 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next63, %.split.us ] ; 7 uses
  %i.k = add nuw nsw i64 %indvars.iv62, -21       ; 3 uses
  %i.l = add nsw i64 %indvars.iv62, -1
  %i.m = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.l) #9 ; 6 uses
  store double %i.h, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store double %i.j, ptr %i.n, align 8, !tbaa !10
  switch i64 %indvars.iv62, label %.preheader.split.split.peel.next [
    i64 1, label %.preheader.split.us.peel.next
    i64 20, label %.preheader.split.split.us.peel.next
  ]

.preheader.split.us.peel.next:                    ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %i.f, ptr %i.o, align 8, !tbaa !10
  %i.p = add nuw nsw i64 %indvars.iv62, 19
  %i.q = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.p) #9 ; 3 uses
  store double %i.h, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -160
  store double %i.i, ptr %i.r, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.peel.next, %bb.b
  %i.s = phi ptr [ %i.q, %.preheader.split.us.peel.next ], [ %i.x, %bb.b ] ; 2 uses
  %indvars.iv5784 = phi i64 [ 2, %.preheader.split.us.peel.next ], [ %indvars.iv.next58, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  store double %i.j, ptr %i.t, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %i.f, ptr %i.u, align 8, !tbaa !10
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv5784, 1 ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv.next58, 20
  %i.w = add nsw i64 %i.k, %i.v
  %i.x = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.w) #9 ; 4 uses
  store double %i.h, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -160
  store double %i.i, ptr %i.y, align 8, !tbaa !10
  %.not39.us = icmp eq i64 %indvars.iv.next58, 40
  br i1 %.not39.us, label %.split.us.loopexit, label %bb.b

.preheader.split.split.peel.next:                 ; preds = %.preheader
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 -8
  store double %i.f, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store double %i.f, ptr %i.aa, align 8, !tbaa !10
  %i.ab = add nuw nsw i64 %indvars.iv62, 19
  %i.ac = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.ab) #9 ; 3 uses
  store double %i.h, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -160
  store double %i.i, ptr %i.ad, align 8, !tbaa !10
  br label %bb.d

.preheader.split.split.us.peel.next:              ; preds = %.preheader
  %i.ae = getelementptr inbounds i8, ptr %i.m, i64 -8
  store double %i.f, ptr %i.ae, align 8, !tbaa !10
  %i.af = add nuw nsw i64 %indvars.iv62, 19
  %i.ag = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.af) #9 ; 3 uses
  store double %i.h, ptr %i.ag, align 8, !tbaa !10
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -160
  store double %i.i, ptr %i.ah, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader.split.split.us.peel.next, %bb.c
  %i.ai = phi ptr [ %i.ag, %.preheader.split.split.us.peel.next ], [ %i.an, %bb.c ] ; 2 uses
  %indvars.iv5283 = phi i64 [ 2, %.preheader.split.split.us.peel.next ], [ %indvars.iv.next53, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  store double %i.j, ptr %i.aj, align 8, !tbaa !10
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8
  store double %i.f, ptr %i.ak, align 8, !tbaa !10
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv5283, 1 ; 3 uses
  %i.al = mul nuw nsw i64 %indvars.iv.next53, 20
  %i.am = add nsw i64 %i.k, %i.al
  %i.an = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.am) #9 ; 4 uses
  store double %i.h, ptr %i.an, align 8, !tbaa !10
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -160
  store double %i.i, ptr %i.ao, align 8, !tbaa !10
  %.not39.us46 = icmp eq i64 %indvars.iv.next53, 40
  br i1 %.not39.us46, label %.split.us.loopexit48, label %bb.c

bb.d:                                             ; preds = %.preheader.split.split.peel.next, %bb.d
  %i.ap = phi ptr [ %i.ac, %.preheader.split.split.peel.next ], [ %i.av, %bb.d ] ; 3 uses
  %indvars.iv85 = phi i64 [ 2, %.preheader.split.split.peel.next ], [ %indvars.iv.next, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store double %i.j, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store double %i.f, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store double %i.f, ptr %i.as, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.at = mul nuw nsw i64 %indvars.iv.next, 20
  %i.au = add nsw i64 %i.k, %i.at
  %i.av = tail call ptr @SUNBandMatrix_Column(ptr noundef %3, i64 noundef %i.au) #9 ; 5 uses
  store double %i.h, ptr %i.av, align 8, !tbaa !10
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -160
  store double %i.i, ptr %i.aw, align 8, !tbaa !10
  %.not39 = icmp eq i64 %indvars.iv.next, 40
  br i1 %.not39, label %.split.us.loopexit49, label %bb.d

.split.us.loopexit:                               ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.f, ptr %i.ax, align 8, !tbaa !10
  br label %.split.us

.split.us.loopexit48:                             ; preds = %bb.c
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -8
  store double %i.f, ptr %i.ay, align 8, !tbaa !10
  br label %.split.us

.split.us.loopexit49:                             ; preds = %bb.d
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 -8
  store double %i.f, ptr %i.az, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store double %i.f, ptr %i.ba, align 8, !tbaa !10
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit49, %.split.us.loopexit48, %.split.us.loopexit
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next63, 21
  br i1 %exitcond65.not, label %bb.e, label %.preheader

bb.e:                                             ; preds = %.split.us
  ret i32 0
}

declare i32 @CVodeAdjInit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CVodeF(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeInitB(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @fB(double %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 18 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !13 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !12 ; 6 uses
  %i.i = getelementptr i8, ptr %i.a, i64 8
  %i.j = getelementptr i8, ptr %i.a, i64 160
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %indvars.iv59 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next60, %.split.us ] ; 9 uses
  %i.k = add nsw i64 %indvars.iv59, -1            ; 5 uses
  %i.l = icmp eq i64 %indvars.iv59, 1
  %i.m = add nuw nsw i64 %indvars.iv59, -41       ; 2 uses
  %i.n = add nsw i64 %indvars.iv59, -2            ; 2 uses
  %i.o = icmp eq i64 %indvars.iv59, 20            ; 3 uses
  br i1 %i.l, label %.thread.us.peel.next, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.p = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.k
  %i.q = load double, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  br i1 %i.o, label %.preheader.split.peel.next, label %.thread.peel

.thread.peel:                                     ; preds = %.preheader.split.preheader
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv59
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  br label %.preheader.split.peel.next

.preheader.split.peel.next:                       ; preds = %.thread.peel, %.preheader.split.preheader
  %i.v = phi double [ %i.u, %.thread.peel ], [ 0.000000e+00, %.preheader.split.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv59
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load double, ptr %i.x, align 8, !tbaa !10 ; 2 uses
  %i.z = fmul double %i.q, 2.000000e+00
  %i.aa = fsub double %i.z, %i.y
  %i.ab = fmul double %i.d, %i.aa
  %i.ac = fmul double %i.f, %i.y
  %i.ad = fneg double %i.v
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.q, double 2.000000e+00, double %i.ad)
  %i.af = fsub double %i.ae, %i.s
  %i.ag = fmul double %i.h, %i.af
  %i.ah = fadd double %i.ab, %i.ac
  %i.ai = fadd double %i.ag, %i.ah
  %i.aj = fadd double %i.ai, -1.000000e+00
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.k
  store double %i.aj, ptr %i.ak, align 8, !tbaa !10
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv59 ; 2 uses
  %invariant.gep68 = getelementptr [8 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %invariant.gep70 = getelementptr [8 x i8], ptr %i.a, i64 %i.k
  br label %.preheader.split

.thread.us.peel.next:                             ; preds = %.preheader
  %i.am = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.an = load double, ptr %i.i, align 8, !tbaa !10
  %i.ao = load double, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.ap = fmul double %i.am, 2.000000e+00
  %i.aq = fsub double %i.ap, %i.ao
  %i.ar = fmul double %i.d, %i.aq
  %i.as = fmul double %i.f, %i.ao
  %i.at = fneg double %i.an
  %i.au = tail call double @llvm.fmuladd.f64(double %i.am, double 2.000000e+00, double %i.at)
  %i.av = fmul double %i.h, %i.au
  %i.aw = fadd double %i.ar, %i.as
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = fadd double %i.ax, -1.000000e+00
  store double %i.ay, ptr %i.b, align 8, !tbaa !10
  %invariant.gep72 = getelementptr [8 x i8], ptr %i.a, i64 %i.m ; 2 uses
  br label %.thread46.us

.thread46.us:                                     ; preds = %.thread46.us, %.thread.us.peel.next
  %indvars.iv53 = phi i64 [ 2, %.thread.us.peel.next ], [ %indvars.iv.next54, %.thread46.us ] ; 2 uses
  %i.az = mul nuw nsw i64 %indvars.iv53, 20       ; 3 uses
  %i.ba = add nsw i64 %i.az, -20                  ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %5 = getelementptr [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bd = getelementptr i8, ptr %5, i64 -152
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %i.az
  %i.bf = load double, ptr %gep73, align 8, !tbaa !10 ; 2 uses
  %i.bg = load double, ptr %5, align 8, !tbaa !10 ; 2 uses
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.be, i64 1
  %i.bj = fneg <2 x double> %i.bi
  %i.bk = fsub double %i.bg, %i.bf
  %i.bl = fmul double %i.f, %i.bk
  %i.bm = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> splat (double 2.000000e+00), <2 x double> %i.bj) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 0
  %i.bq = fsub double %i.bp, %i.bg
  %i.br = fmul double %i.d, %i.bq
  %i.bs = extractelement <2 x double> %i.bo, i64 1
  %i.bt = fmul double %i.h, %i.bs
  %i.bu = fadd double %i.br, %i.bl
  %i.bv = fadd double %i.bt, %i.bu
  %i.bw = fadd double %i.bv, -1.000000e+00
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ba
  store double %i.bw, ptr %i.bx, align 8, !tbaa !10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 3 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, 40
  br i1 %exitcond57.not, label %.split.us.loopexit.peel.begin, label %.thread46.us, !llvm.loop !27

.preheader.split:                                 ; preds = %.preheader.split.peel.next, %.thread46
  %indvars.iv = phi i64 [ 2, %.preheader.split.peel.next ], [ %indvars.iv.next, %.thread46 ] ; 2 uses
  %i.by = mul nuw nsw i64 %indvars.iv, 20         ; 3 uses
  %i.bz = add nsw i64 %i.by, -20                  ; 3 uses
  %i.ca = add nuw nsw i64 %i.bz, %i.k             ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  %i.cd = getelementptr [8 x i8], ptr %i.al, i64 %i.bz
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !10
  br i1 %i.o, label %.thread46, label %.thread

.thread:                                          ; preds = %.preheader.split
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bz
  %i.cf = load double, ptr %gep, align 8, !tbaa !10
  br label %.thread46

.thread46:                                        ; preds = %.thread, %.preheader.split
  %i.cg = phi double [ %i.cf, %.thread ], [ 0.000000e+00, %.preheader.split ]
  %gep69 = getelementptr [8 x i8], ptr %invariant.gep68, i64 %i.by
  %i.ch = load double, ptr %gep69, align 8, !tbaa !10 ; 2 uses
  %gep71 = getelementptr [8 x i8], ptr %invariant.gep70, i64 %i.by
  %i.ci = load double, ptr %gep71, align 8, !tbaa !10 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.cg, i64 1
  %i.cl = fneg <2 x double> %i.ck
  %i.cm = fsub double %i.ci, %i.ch
  %i.cn = fmul double %i.f, %i.cm
  %i.co = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> splat (double 2.000000e+00), <2 x double> %i.cl) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = fsub double %i.cr, %i.ci
  %i.ct = fmul double %i.d, %i.cs
  %i.cu = extractelement <2 x double> %i.cq, i64 1
  %i.cv = fsub double %i.cu, %i.ce
  %i.cw = fmul double %i.h, %i.cv
  %i.cx = fadd double %i.ct, %i.cn
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = fadd double %i.cy, -1.000000e+00
  %i.da = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ca
  store double %i.cz, ptr %i.da, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %.preheader.split.peel, label %.preheader.split, !llvm.loop !28

.split.us.loopexit.peel.begin:                    ; preds = %.thread46.us
  %i.db = mul nuw nsw i64 %indvars.iv.next54, 20  ; 3 uses
  %i.dc = add nsw i64 %i.db, -20                  ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !10
  %6 = getelementptr [8 x i8], ptr %i.a, i64 %i.db
  %i.df = getelementptr i8, ptr %6, i64 -152
  %i.dg = load double, ptr %i.df, align 8, !tbaa !10
  %gep73.peel = getelementptr [8 x i8], ptr %invariant.gep72, i64 %i.db
  %i.dh = load double, ptr %gep73.peel, align 8, !tbaa !10 ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dg, i64 1
  %i.dk = fneg <2 x double> %i.dj
  %i.dl = fsub double 0.000000e+00, %i.dh
  %i.dm = fmul double %i.f, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.de, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> splat (double 2.000000e+00), <2 x double> %i.dk) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fmul double %i.d, %i.dq
  %i.ds = extractelement <2 x double> %i.dp, i64 1
  %i.dt = fmul double %i.h, %i.ds
  %i.du = fadd double %i.dr, %i.dm
  %i.dv = fadd double %i.dt, %i.du
  %i.dw = fadd double %i.dv, -1.000000e+00
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dc
  store double %i.dw, ptr %i.dx, align 8, !tbaa !10
  br label %.split.us

.preheader.split.peel:                            ; preds = %.thread46
  %i.dy = mul nuw nsw i64 %indvars.iv.next, 20    ; 2 uses
  %i.dz = add nsw i64 %i.dy, -20                  ; 3 uses
  %i.ea = add nuw nsw i64 %i.dz, %i.k             ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr [8 x i8], ptr %i.al, i64 %i.dz
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !10
  br i1 %i.o, label %.split.us.loopexit75.peel.next, label %.thread.peel76

.thread.peel76:                                   ; preds = %.preheader.split.peel
  %gep.peel = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dz
  %i.ef = load double, ptr %gep.peel, align 8, !tbaa !10
  br label %.split.us.loopexit75.peel.next

.split.us.loopexit75.peel.next:                   ; preds = %.thread.peel76, %.preheader.split.peel
  %i.eg = phi double [ %i.ef, %.thread.peel76 ], [ 0.000000e+00, %.preheader.split.peel ]
  %gep69.peel = getelementptr [8 x i8], ptr %invariant.gep68, i64 %i.dy
  %i.eh = load double, ptr %gep69.peel, align 8, !tbaa !10 ; 2 uses
  %i.ei = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.eg, i64 1
  %i.ek = fneg <2 x double> %i.ej
  %i.el = fsub double 0.000000e+00, %i.eh
  %i.em = fmul double %i.f, %i.el
  %i.en = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ek) ; 2 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0
  %i.er = fmul double %i.d, %i.eq
  %i.es = extractelement <2 x double> %i.ep, i64 1
  %i.et = fsub double %i.es, %i.ee
  %i.eu = fmul double %i.h, %i.et
  %i.ev = fadd double %i.er, %i.em
  %i.ew = fadd double %i.eu, %i.ev
  %i.ex = fadd double %i.ew, -1.000000e+00
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ea
  store double %i.ex, ptr %i.ey, align 8, !tbaa !10
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit75.peel.next, %.split.us.loopexit.peel.begin
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, 21
  br i1 %exitcond63.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.split.us
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetJacFnB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @JacB(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.g = fadd double %i.b, %i.f
  %i.h = fmul double %i.g, 2.000000e+00           ; 7 uses
  %i.i = fsub double %i.d, %i.b                   ; 6 uses
  %i.j = fneg double %i.b
  %i.k = fsub double %i.j, %i.d                   ; 4 uses
  %i.l = fneg double %i.f                         ; 12 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.split.us
  %indvars.iv62 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next63, %.split.us ] ; 7 uses
  %i.m = add nuw nsw i64 %indvars.iv62, -21       ; 3 uses
  %i.n = add nsw i64 %indvars.iv62, -1
  %i.o = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.n) #9 ; 6 uses
  store double %i.h, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  store double %i.k, ptr %i.p, align 8, !tbaa !10
  switch i64 %indvars.iv62, label %.preheader.split.split.peel.next [
    i64 1, label %.preheader.split.us.peel.next
    i64 20, label %.preheader.split.split.us.peel.next
  ]

.preheader.split.us.peel.next:                    ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store double %i.l, ptr %i.q, align 8, !tbaa !10
  %i.r = add nuw nsw i64 %indvars.iv62, 19
  %i.s = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.r) #9 ; 3 uses
  store double %i.h, ptr %i.s, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -160
  store double %i.i, ptr %i.t, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split.us.peel.next, %bb.b
  %i.u = phi ptr [ %i.s, %.preheader.split.us.peel.next ], [ %i.z, %bb.b ] ; 2 uses
  %indvars.iv5784 = phi i64 [ 2, %.preheader.split.us.peel.next ], [ %indvars.iv.next58, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store double %i.k, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.l, ptr %i.w, align 8, !tbaa !10
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv5784, 1 ; 3 uses
  %i.x = mul nuw nsw i64 %indvars.iv.next58, 20
  %i.y = add nsw i64 %i.m, %i.x
  %i.z = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.y) #9 ; 4 uses
  store double %i.h, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -160
  store double %i.i, ptr %i.aa, align 8, !tbaa !10
  %.not39.us = icmp eq i64 %indvars.iv.next58, 40
  br i1 %.not39.us, label %.split.us.loopexit, label %bb.b

.preheader.split.split.peel.next:                 ; preds = %.preheader
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -8
  store double %i.l, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store double %i.l, ptr %i.ac, align 8, !tbaa !10
  %i.ad = add nuw nsw i64 %indvars.iv62, 19
  %i.ae = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.ad) #9 ; 3 uses
  store double %i.h, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -160
  store double %i.i, ptr %i.af, align 8, !tbaa !10
  br label %bb.d

.preheader.split.split.us.peel.next:              ; preds = %.preheader
  %i.ag = getelementptr inbounds i8, ptr %i.o, i64 -8
  store double %i.l, ptr %i.ag, align 8, !tbaa !10
  %i.ah = add nuw nsw i64 %indvars.iv62, 19
  %i.ai = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.ah) #9 ; 3 uses
  store double %i.h, ptr %i.ai, align 8, !tbaa !10
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -160
  store double %i.i, ptr %i.aj, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader.split.split.us.peel.next, %bb.c
  %i.ak = phi ptr [ %i.ai, %.preheader.split.split.us.peel.next ], [ %i.ap, %bb.c ] ; 2 uses
  %indvars.iv5283 = phi i64 [ 2, %.preheader.split.split.us.peel.next ], [ %indvars.iv.next53, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  store double %i.k, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store double %i.l, ptr %i.am, align 8, !tbaa !10
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv5283, 1 ; 3 uses
  %i.an = mul nuw nsw i64 %indvars.iv.next53, 20
  %i.ao = add nsw i64 %i.m, %i.an
  %i.ap = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.ao) #9 ; 4 uses
  store double %i.h, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -160
  store double %i.i, ptr %i.aq, align 8, !tbaa !10
  %.not39.us46 = icmp eq i64 %indvars.iv.next53, 40
  br i1 %.not39.us46, label %.split.us.loopexit48, label %bb.c

bb.d:                                             ; preds = %.preheader.split.split.peel.next, %bb.d
  %i.ar = phi ptr [ %i.ae, %.preheader.split.split.peel.next ], [ %i.ax, %bb.d ] ; 3 uses
  %indvars.iv85 = phi i64 [ 2, %.preheader.split.split.peel.next ], [ %indvars.iv.next, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  store double %i.k, ptr %i.as, align 8, !tbaa !10
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8
  store double %i.l, ptr %i.at, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.l, ptr %i.au, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.av = mul nuw nsw i64 %indvars.iv.next, 20
  %i.aw = add nsw i64 %i.m, %i.av
  %i.ax = tail call ptr @SUNBandMatrix_Column(ptr noundef %4, i64 noundef %i.aw) #9 ; 5 uses
  store double %i.h, ptr %i.ax, align 8, !tbaa !10
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -160
  store double %i.i, ptr %i.ay, align 8, !tbaa !10
  %.not39 = icmp eq i64 %indvars.iv.next, 40
  br i1 %.not39, label %.split.us.loopexit49, label %bb.d

.split.us.loopexit:                               ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store double %i.l, ptr %i.az, align 8, !tbaa !10
  br label %.split.us

.split.us.loopexit48:                             ; preds = %bb.c
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 -8
  store double %i.l, ptr %i.ba, align 8, !tbaa !10
  br label %.split.us
end_hunk_0
