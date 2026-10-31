Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes_bbdpre?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@SUNBandMatrixStorage

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @N_VNewEmpty_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolInitialize(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNMatSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @cvBBDPrecFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call i32 @SUNLinSolFree(ptr noundef %i.h) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  tail call void @N_VDestroy(ptr noundef %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  tail call void @N_VDestroy(ptr noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  tail call void @N_VDestroy(ptr noundef %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  tail call void @N_VDestroy(ptr noundef %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  tail call void @N_VDestroy(ptr noundef %i.s) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  tail call void @SUNMatDestroy(ptr noundef %i.u) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  tail call void @SUNMatDestroy(ptr noundef %i.w) #9
  tail call void @free(ptr noundef nonnull %i.e) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret i32 0
}

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @cvBBDPrecSetup(double noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, double noundef %5, ptr nofree noundef captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 5 uses
  %.not = icmp eq i32 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !93
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call i32 @SUNMatCopy(ptr noundef %i.d, ptr noundef %i.f) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 504, ptr noundef nonnull @__func__.cvBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.ag, label %bb.aj

bb.e:                                             ; preds = %bb.a
  store i32 1, ptr %4, align 4, !tbaa !93
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.j = tail call i32 @SUNMatZero(ptr noundef %i.i) #9 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 518, ptr noundef nonnull @__func__.cvBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %bb.h, label %bb.aj

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %i.o) #9
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !94
  %i.y = tail call i32 %i.t(i64 noundef %i.v, double noundef %0, ptr noundef %1, ptr noundef %i.x) #9, !inline_history !90 ; 2 uses
  %.not172.i = icmp eq i32 %i.y, 0
  br i1 %.not172.i, label %bb.j, label %cvBBDDQJac.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.af = tail call i32 %i.aa(i64 noundef %i.ac, double noundef %0, ptr noundef %i.o, ptr noundef %i.m, ptr noundef %i.ae) #9, !inline_history !90 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.ai = add nsw i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !47
  %.not173.i = icmp eq i32 %i.af, 0
  br i1 %.not173.i, label %bb.k, label %cvBBDDQJac.exit

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 3 uses
  %i.ak = tail call ptr @N_VGetArrayPointer(ptr noundef %i.m) #9 ; 3 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 448 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !95
  %i.ao = tail call ptr @N_VGetArrayPointer(ptr noundef %i.an) #9 ; 3 uses
  %i.ap = tail call ptr @N_VGetArrayPointer(ptr noundef %i.o) #9 ; 3 uses
  %i.aq = tail call ptr @N_VGetArrayPointer(ptr noundef %i.q) #9 ; 3 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 2536 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %.not174.i = icmp eq ptr %i.at, null
  br i1 %.not174.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = tail call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.at) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi ptr [ %i.au, %bb.l ], [ null, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !95
  %i.aw = tail call double @N_VWrmsNorm(ptr noundef %i.m, ptr noundef %i.av) #9 ; 2 uses
  %i.ax = fcmp une double %i.aw, 0.000000e+00
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 992
  %i.az = load double, ptr %i.ay, align 8, !tbaa !97
  %i.ba = tail call double @llvm.fabs.f64(double %i.az)
  %i.bb = fmul double %i.ba, 1.000000e+03
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !41
  %i.be = fmul double %i.bd, %i.bb
  %i.bf = sitofp i64 %.pre.i to double
  %i.bg = fmul double %i.be, %i.bf
  %i.bh = fmul double %i.aw, %i.bg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = phi double [ %i.bh, %bb.n ], [ 1.000000e+00, %bb.m ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.bl = load i64, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bm = add i64 %i.bk, 1
  %i.bn = add i64 %i.bm, %i.bl                    ; 4 uses
  %..i = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %.pre.i) ; 2 uses
  %.not175191.i = icmp slt i64 %..i, 1
  br i1 %.not175191.i, label %.loopexit, label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.br = xor i64 %i.bk, -1
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = shl i64 %i.bs, 3
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge190.i, %.lr.ph194.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge190.i ], [ 0, %.lr.ph194.i ] ; 2 uses
  %i.bu = phi i64 [ %i.gk, %._crit_edge190.i ], [ %.pre.i, %.lr.ph194.i ] ; 4 uses
  %.0150192.i = phi i64 [ %i.gl, %._crit_edge190.i ], [ 1, %.lr.ph194.i ] ; 5 uses
  %i.bv = mul i64 %indvar, -8                     ; 2 uses
  %i.bw = sub i64 %i.bv, %i.ar
  %i.bx = sub i64 %i.bv, %i.al
  %i.by = add nsw i64 %.0150192.i, -1             ; 3 uses
  %.not197.i = icmp sgt i64 %.0150192.i, %i.bu
  br i1 %.not197.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.bz = load ptr, ptr %i.as, align 8, !tbaa !96
  %.not179.i = icmp eq ptr %i.bz, null
  br i1 %.not179.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.0148182.us.i = phi i64 [ %i.cm, %.lr.ph.split.us.i ], [ %i.by, %.lr.ph.i ] ; 4 uses
  %i.ca = load double, ptr %i.bo, align 8, !tbaa !42
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.0148182.us.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !98
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fmul double %i.ca, %i.cd                ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.0148182.us.i
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !98
  %i.ch = fdiv double %i.bi, %i.cg                ; 2 uses
  %i.ci = fcmp ogt double %i.ce, %i.ch
  %.180.us.i = select i1 %i.ci, double %i.ce, double %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.0148182.us.i ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !98
  %i.cl = fadd double %i.ck, %.180.us.i
  store double %i.cl, ptr %i.cj, align 8, !tbaa !98
  %i.cm = add nsw i64 %.0148182.us.i, %i.bn       ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %i.bu
  br i1 %i.cn, label %.lr.ph.split.us.i, label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.v
  %.0148182.i = phi i64 [ %i.dn, %bb.v ], [ %i.by, %.lr.ph.i ] ; 5 uses
  %i.co = load double, ptr %i.bo, align 8, !tbaa !42
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.0148182.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !98 ; 3 uses
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fmul double %i.co, %i.cr                ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.0148182.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !98
  %i.cv = fdiv double %i.bi, %i.cu                ; 2 uses
  %i.cw = fcmp ogt double %i.cs, %i.cv
  %.180.i = select i1 %i.cw, double %i.cs, double %i.cv ; 7 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.0148182.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !98 ; 3 uses
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy) ; 2 uses
  %i.da = fcmp oeq double %i.cz, 1.000000e+00
  br i1 %i.da, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.i
  %i.db = fadd double %i.cq, %.180.i
  %i.dc = fmul double %i.cy, %i.db
  %i.dd = fcmp olt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.de = fneg double %.180.i
  br label %bb.v

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.df = fcmp oeq double %i.cz, 2.000000e+00
  br i1 %i.df, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dg = fadd double %i.cq, %.180.i
  %i.dh = fmul double %i.cy, %i.dg
  %i.di = fcmp ugt double %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = fneg double %.180.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0151.i = phi double [ %i.de, %bb.r ], [ %.180.i, %bb.q ], [ %i.dj, %bb.u ], [ %.180.i, %bb.t ], [ %.180.i, %bb.s ]
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.0148182.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !98
  %i.dm = fadd double %.0151.i, %i.dl
  store double %i.dm, ptr %i.dk, align 8, !tbaa !98
  %i.dn = add nsw i64 %.0148182.i, %i.bn          ; 2 uses
  %i.do = icmp slt i64 %i.dn, %i.bu
  br i1 %i.do, label %.lr.ph.split.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.v, %.lr.ph.split.us.i, %bb.p
  %i.dp = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.dq = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.dr = tail call i32 %i.dp(i64 noundef %i.bu, double noundef %0, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.dq) #9, !inline_history !90 ; 2 uses
  %i.ds = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.dt = add nsw i64 %i.ds, 1
  store i64 %i.dt, ptr %i.ag, align 8, !tbaa !47
  %.not176.i = icmp eq i32 %i.dr, 0
  br i1 %.not176.i, label %.preheader.i, label %cvBBDDQJac.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.du = load i64, ptr %i.ab, align 8, !tbaa !43 ; 2 uses
  %.not198.i = icmp sgt i64 %.0150192.i, %i.du
  br i1 %.not198.i, label %._crit_edge190.i, label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %.preheader.i, %._crit_edge187.i
  %indvar77 = phi i64 [ %indvar.next78, %._crit_edge187.i ], [ 0, %.preheader.i ] ; 2 uses
  %.1188.i = phi i64 [ %i.gi, %._crit_edge187.i ], [ %i.by, %.preheader.i ] ; 10 uses
  %7 = mul i64 %i.bt, %indvar77                   ; 2 uses
  %8 = add i64 %i.bw, %7
  %9 = add i64 %i.bx, %7
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.1188.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !98 ; 3 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.1188.i
  store double %i.dw, ptr %i.dx, align 8, !tbaa !98
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.dz = tail call ptr @SUNBandMatrix_Column(ptr noundef %i.dy, i64 noundef %.1188.i) #9 ; 3 uses
  %i.ea = ptrtoaddr ptr %i.dz to i64              ; 2 uses
  %i.eb = load double, ptr %i.bo, align 8, !tbaa !42
  %i.ec = load double, ptr %i.dv, align 8, !tbaa !98
  %i.ed = tail call double @llvm.fabs.f64(double %i.ec)
  %i.ee = fmul double %i.eb, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.1188.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !98
  %i.eh = fdiv double %i.bi, %i.eg                ; 2 uses
  %i.ei = fcmp ogt double %i.ee, %i.eh
  %.181.i = select i1 %i.ei, double %i.ee, double %i.eh ; 8 uses
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !96
  %.not177.i = icmp eq ptr %i.ej, null
  br i1 %.not177.i, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %.lr.ph189.i
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.1188.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !98 ; 3 uses
  %i.em = tail call double @llvm.fabs.f64(double %i.el) ; 2 uses
  %i.en = fcmp oeq double %i.em, 1.000000e+00
  br i1 %i.en, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eo = fadd double %i.dw, %.181.i
  %i.ep = fmul double %i.eo, %i.el
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.er = fneg double %.181.i
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.es = fcmp oeq double %i.em, 2.000000e+00
  br i1 %i.es, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.et = fadd double %i.dw, %.181.i
  %i.eu = fmul double %i.et, %i.el
  %i.ev = fcmp ugt double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = fneg double %.181.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph189.i
  %.1152.i = phi double [ %i.er, %bb.y ], [ %.181.i, %bb.x ], [ %i.ew, %bb.ab ], [ %.181.i, %bb.aa ], [ %.181.i, %bb.z ], [ %.181.i, %.lr.ph189.i ]
  %i.ex = fdiv double 1.000000e+00, %.1152.i      ; 2 uses
  %i.ey = load i64, ptr %i.bp, align 8, !tbaa !31
  %i.ez = sub nsw i64 %.1188.i, %i.ey
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.ez, i64 0) ; 6 uses
  %i.fa = load i64, ptr %i.bq, align 8, !tbaa !32
  %i.fb = add nsw i64 %i.fa, %.1188.i
  %i.fc = load i64, ptr %i.ab, align 8, !tbaa !43 ; 3 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = tail call i64 @llvm.smin.i64(i64 %i.fb, i64 %i.fd) ; 3 uses
  %.not178183.i = icmp sgt i64 %spec.select.i, %i.fe
  br i1 %.not178183.i, label %._crit_edge187.i, label %.lr.ph186.i.preheader

.lr.ph186.i.preheader:                            ; preds = %bb.ac
  %i.ff = add i64 %i.fe, 1
  %i.fg = sub i64 %i.ff, %spec.select.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check, label %.lr.ph186.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph186.i.preheader
  %i.fh = add i64 %8, %i.ea
  %i.fi = add i64 %i.fh, -1
  %diff.check = icmp ult i64 %i.fi, 31
  %i.fj = add i64 %9, %i.ea
  %i.fk = add i64 %i.fj, -1
  %diff.check79 = icmp ult i64 %i.fk, 31
  %conflict.rdx = or i1 %diff.check, %diff.check79
  br i1 %conflict.rdx, label %.lr.ph186.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fg, -4                      ; 3 uses
  %i.fl = add i64 %spec.select.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = add nuw i64 %spec.select.i, %index      ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !98
  %wide.load80 = load <2 x double>, ptr %i.fo, align 8, !tbaa !98
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.fm ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load81 = load <2 x double>, ptr %i.fp, align 8, !tbaa !98
  %wide.load82 = load <2 x double>, ptr %i.fq, align 8, !tbaa !98
  %i.fr = fsub <2 x double> %wide.load, %wide.load81
  %i.fs = fsub <2 x double> %wide.load80, %wide.load82
  %i.ft = fmul <2 x double> %broadcast.splat, %i.fr
  %i.fu = fmul <2 x double> %broadcast.splat, %i.fs
  %i.fv = sub nsw i64 %i.fm, %.1188.i
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %i.ft, ptr %i.fw, align 8, !tbaa !98
  store <2 x double> %i.fu, ptr %i.fx, align 8, !tbaa !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %._crit_edge187.i, label %.lr.ph186.i.preheader83

.lr.ph186.i.preheader83:                          ; preds = %vector.memcheck, %.lr.ph186.i.preheader, %middle.block
  %.0149184.i.ph = phi i64 [ %spec.select.i, %vector.memcheck ], [ %spec.select.i, %.lr.ph186.i.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %.lr.ph186.i.preheader83, %.lr.ph186.i
  %.0149184.i = phi i64 [ %i.gh, %.lr.ph186.i ], [ %.0149184.i.ph, %.lr.ph186.i.preheader83 ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.0149184.i
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !98
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0149184.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !98
  %i.gd = fsub double %i.ga, %i.gc
  %i.ge = fmul double %i.ex, %i.gd
  %i.gf = sub nsw i64 %.0149184.i, %.1188.i
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.gf
  store double %i.ge, ptr %i.gg, align 8, !tbaa !98
  %i.gh = add nuw nsw i64 %.0149184.i, 1
  %.not178.not.i = icmp slt i64 %.0149184.i, %i.fe
  br i1 %.not178.not.i, label %.lr.ph186.i, label %._crit_edge187.i, !llvm.loop !92

._crit_edge187.i:                                 ; preds = %.lr.ph186.i, %middle.block, %bb.ac
  %i.gi = add nsw i64 %.1188.i, %i.bn             ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.fc
  %indvar.next78 = add i64 %indvar77, 1
  br i1 %i.gj, label %.lr.ph189.i, label %._crit_edge190.i

._crit_edge190.i:                                 ; preds = %._crit_edge187.i, %.preheader.i
  %i.gk = phi i64 [ %i.du, %.preheader.i ], [ %i.fc, %._crit_edge187.i ]
  %i.gl = add nuw i64 %.0150192.i, 1
  %exitcond.not.i = icmp eq i64 %.0150192.i, %..i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %.loopexit, label %bb.p

cvBBDDQJac.exit:                                  ; preds = %._crit_edge.i, %bb.i, %bb.j
  %.0153.i = phi i32 [ %i.af, %bb.j ], [ %i.y, %bb.i ], [ %i.dr, %._crit_edge.i ]
  %i.gm = icmp slt i32 %.0153.i, 0
  br i1 %i.gm, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %cvBBDDQJac.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 527, ptr noundef nonnull @__func__.cvBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #9
  br label %bb.aj

.loopexit:                                        ; preds = %._crit_edge190.i, %bb.o
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !34
  %i.gq = tail call i32 @SUNMatCopy(ptr noundef %i.gn, ptr noundef %i.gp) #9 ; 2 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 536, ptr noundef nonnull @__func__.cvBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %bb.aj

bb.af:                                            ; preds = %.loopexit
  %.not41 = icmp eq i32 %i.gq, 0
  br i1 %.not41, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af, %bb.d
  %i.gs = fneg double %5
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !34
  %i.gv = tail call i32 @SUNMatScaleAddI(double noundef %i.gs, ptr noundef %i.gu) #9
  %.not43 = icmp eq i32 %i.gv, 0
  br i1 %.not43, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 547, ptr noundef nonnull @__func__.cvBBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !34
  %i.gz = tail call i32 @SUNLinSolSetup_Band(ptr noundef %i.gx, ptr noundef %i.gy) #9
  br label %bb.aj

bb.aj:                                            ; preds = %cvBBDDQJac.exit, %bb.af, %bb.g, %bb.d, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.f, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 1, %bb.af ], [ -1, %bb.ah ], [ %i.gz, %bb.ai ], [ -1, %bb.f ], [ 1, %bb.d ], [ -1, %bb.ad ], [ 1, %bb.g ], [ -1, %bb.ae ], [ 1, %cvBBDDQJac.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cvBBDPrecSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4, double %5, double %6, i32 %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void @N_VSetArrayPointer(ptr noundef %i.a, ptr noundef %i.c) #9
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #9
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @N_VSetArrayPointer(ptr noundef %i.d, ptr noundef %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.m = tail call i32 @SUNLinSolSolve(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, double noundef 0.000000e+00) #9
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void @N_VSetArrayPointer(ptr noundef null, ptr noundef %i.n) #9
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @N_VSetArrayPointer(ptr noundef null, ptr noundef %i.o) #9
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @CVBBDPrecReInit(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -1, i32 noundef 329, ptr noundef nonnull @__func__.CVBBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 338, ptr noundef nonnull @__func__.CVBBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #9
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 347, ptr noundef nonnull @__func__.CVBBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %. = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %i.j)
  store i64 %., ptr %i.f, align 8, !tbaa !29
  %i.l = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.m = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = fcmp ogt double %3, 0.000000e+00
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !41 ; 2 uses
  %i.r = fcmp ugt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
end_hunk_0
