Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idas_bbdpre?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@IDABBDPrecInit:bb.a
  %i.dl = call i32 @SUNLinSolSpace(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9 ; 0 uses
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !42
  %i.dn = add nsw i64 %i.dg, %i.dm
  store i64 %i.dn, ptr %i.bx, align 8, !tbaa !43
  %i.do = load i64, ptr %i.d, align 8, !tbaa !42
  %i.dp = add nsw i64 %i.df, %i.do
  store i64 %i.dp, ptr %i.by, align 8, !tbaa !44
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  store i64 0, ptr %i.dq, align 8, !tbaa !45
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 2 uses
  %.not203 = icmp eq ptr %i.ds, null
  br i1 %.not203, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = call i32 %i.ds(ptr noundef nonnull %0) #9 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  store ptr %i.p, ptr %i.du, align 8, !tbaa !47
  store ptr @IDABBDPrecFree, ptr %i.dr, align 8, !tbaa !89
  %i.dv = call i32 @IDASetPreconditioner(ptr noundef nonnull %0, ptr noundef nonnull @IDABBDPrecSetup, ptr noundef nonnull @IDABBDPrecSolve) #9
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -3, %bb.f ], [ -4, %bb.h ], [ -4, %bb.j ], [ -4, %bb.l ], [ -4, %bb.n ], [ -4, %bb.p ], [ -4, %bb.r ], [ -4, %bb.t ], [ -4, %bb.v ], [ -4, %bb.x ], [ -9, %bb.z ], [ %i.dv, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @IDAProcessError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @SUNBandMatrixStorage(i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @N_VNewEmpty_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

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
define internal noundef i32 @IDABBDPrecFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call i32 @SUNLinSolFree(ptr noundef %i.h) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  tail call void @N_VDestroy(ptr noundef %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  tail call void @N_VDestroy(ptr noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  tail call void @N_VDestroy(ptr noundef %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  tail call void @N_VDestroy(ptr noundef %i.q) #9
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  tail call void @N_VDestroy(ptr noundef %i.s) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  tail call void @N_VDestroy(ptr noundef %i.u) #9
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @SUNMatDestroy(ptr noundef %i.w) #9
  tail call void @free(ptr noundef nonnull %i.e) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret i32 0
}

declare i32 @IDASetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @IDABBDPrecSetup(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, double noundef %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = tail call i32 @SUNMatZero(ptr noundef %i.d) #9 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %i.i) #9
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.k) #9
  %i.o = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 2 uses
  %i.p = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 2 uses
  %i.q = tail call ptr @N_VGetArrayPointer(ptr noundef %i.m) #9 ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %i.u = tail call ptr @N_VGetArrayPointer(ptr noundef %i.t) #9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2032 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.w) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.x, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.y = tail call ptr @N_VGetArrayPointer(ptr noundef %i.i) #9 ; 2 uses
  %i.z = tail call ptr @N_VGetArrayPointer(ptr noundef %i.k) #9 ; 2 uses
  %i.aa = tail call ptr @N_VGetArrayPointer(ptr noundef %i.g) #9 ; 3 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not207.i = icmp eq ptr %i.ad, null
  br i1 %.not207.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !95
  %i.ai = tail call i32 %i.ad(i64 noundef %i.af, double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.ah) #9, !inline_history !90 ; 2 uses
  %.not208.i = icmp eq i32 %i.ai, 0
  br i1 %.not208.i, label %bb.e, label %IBBDDQJac.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.ap = tail call i32 %i.ak(i64 noundef %i.am, double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.g, ptr noundef %i.ao) #9, !inline_history !90 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = add nsw i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !45
  %.not209.i = icmp eq i32 %i.ap, 0
  br i1 %.not209.i, label %bb.f, label %IBBDDQJac.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %i.av = load i64, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.aw = add i64 %i.au, 1
  %i.ax = add i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %..i = tail call i64 @llvm.smin.i64(i64 %i.ax, i64 %i.ay) ; 2 uses
  %.not210228.i = icmp slt i64 %..i, 1
  br i1 %.not210228.i, label %.loopexit, label %.lr.ph231.i

.lr.ph231.i:                                      ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 1240 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bd = xor i64 %i.au, -1
  %i.be = sub i64 %i.bd, %i.av
  %i.bf = shl i64 %i.be, 3
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge227.i, %.lr.ph231.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge227.i ], [ 0, %.lr.ph231.i ] ; 2 uses
  %i.bg = phi i64 [ %i.gk, %._crit_edge227.i ], [ %i.ay, %.lr.ph231.i ] ; 3 uses
  %.0180229.i = phi i64 [ %i.gl, %._crit_edge227.i ], [ 1, %.lr.ph231.i ] ; 5 uses
  %i.bh = mul i64 %indvar, -8                     ; 2 uses
  %i.bi = sub i64 %i.bh, %i.r
  %i.bj = sub i64 %i.bh, %i.ab
  %i.bk = add nsw i64 %.0180229.i, -1             ; 2 uses
  %.not234.i = icmp sgt i64 %.0180229.i, %i.bg
  br i1 %.not234.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !94
  %.not214.i = icmp eq ptr %i.bl, null
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %.lr.ph.i
  %.0178219.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %i.cz, %bb.o ] ; 7 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.0178219.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !96 ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.0178219.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !96
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.0178219.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !96
  %i.bs = load double, ptr %i.az, align 8, !tbaa !40
  %i.bt = tail call double @llvm.fabs.f64(double %i.bn) ; 2 uses
  %i.bu = load double, ptr %i.ba, align 8, !tbaa !97
  %i.bv = fmul double %i.bp, %i.bu                ; 2 uses
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv) ; 2 uses
  %i.bx = fdiv double 1.000000e+00, %i.br         ; 2 uses
  %i.by = fcmp ogt double %i.bw, %i.bx
  %.215.i = select i1 %i.by, double %i.bw, double %i.bx ; 2 uses
  %i.bz = fcmp ogt double %i.bt, %.215.i
  %i.ca = select i1 %i.bz, double %i.bt, double %.215.i
  %i.cb = fmul double %i.bs, %i.ca                ; 2 uses
  %i.cc = fcmp olt double %i.bv, 0.000000e+00
  %i.cd = fneg double %i.cb
  %.0181.i = select i1 %i.cc, double %i.cd, double %i.cb
  %i.ce = fadd double %i.bn, %.0181.i
  %i.cf = fsub double %i.ce, %i.bn                ; 8 uses
  br i1 %.not214.i, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.0178219.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !96 ; 3 uses
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch) ; 2 uses
  %i.cj = fcmp oeq double %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = fadd double %i.bn, %i.cf
  %i.cl = fmul double %i.ck, %i.ch
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cn = fneg double %i.cf
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.co = fcmp oeq double %i.ci, 2.000000e+00
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cp = fadd double %i.bn, %i.cf
  %i.cq = fmul double %i.cp, %i.ch
  %i.cr = fcmp ugt double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = fneg double %i.cf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.1182.i = phi double [ %i.cn, %bb.k ], [ %i.cf, %bb.j ], [ %i.cs, %bb.n ], [ %i.cf, %bb.m ], [ %i.cf, %bb.l ], [ %i.cf, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.0178219.i ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !96
  %i.cv = fadd double %.1182.i, %i.cu
  store double %i.cv, ptr %i.ct, align 8, !tbaa !96
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.0178219.i ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !96
  %i.cy = tail call double @llvm.fmuladd.f64(double %4, double %.1182.i, double %i.cx)
  store double %i.cy, ptr %i.cw, align 8, !tbaa !96
  %i.cz = add nsw i64 %.0178219.i, %i.ax          ; 2 uses
  %i.da = icmp slt i64 %i.cz, %i.bg
  br i1 %i.da, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.g
  %i.db = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.dc = load ptr, ptr %i.an, align 8, !tbaa !95
  %i.dd = tail call i32 %i.db(i64 noundef %i.bg, double noundef %0, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.dc) #9, !inline_history !90 ; 2 uses
  %i.de = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.df = add nsw i64 %i.de, 1
  store i64 %i.df, ptr %i.aq, align 8, !tbaa !45
  %.not211.i = icmp eq i32 %i.dd, 0
  br i1 %.not211.i, label %.preheader.i, label %IBBDDQJac.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.dg = load i64, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %.not235.i = icmp sgt i64 %.0180229.i, %i.dg
  br i1 %.not235.i, label %._crit_edge227.i, label %.lr.ph226.i

.lr.ph226.i:                                      ; preds = %.preheader.i, %._crit_edge224.i
  %indvar44 = phi i64 [ %indvar.next45, %._crit_edge224.i ], [ 0, %.preheader.i ] ; 2 uses
  %.1225.i = phi i64 [ %i.gi, %._crit_edge224.i ], [ %i.bk, %.preheader.i ] ; 12 uses
  %i.dh = mul i64 %i.bf, %indvar44                ; 2 uses
  %i.di = add i64 %i.bi, %i.dh
  %i.dj = add i64 %i.bj, %i.dh
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.1225.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !96 ; 6 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.1225.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !96
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.1225.i
  %i.do = load double, ptr %i.dn, align 8, !tbaa !96 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.1225.i
  store double %i.do, ptr %i.dp, align 8, !tbaa !96
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.1225.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !96
  %i.ds = load double, ptr %i.az, align 8, !tbaa !40
  %i.dt = tail call double @llvm.fabs.f64(double %i.dl) ; 2 uses
  %i.du = load double, ptr %i.ba, align 8, !tbaa !97
  %i.dv = fmul double %i.do, %i.du                ; 2 uses
  %i.dw = tail call double @llvm.fabs.f64(double %i.dv) ; 2 uses
  %i.dx = fdiv double 1.000000e+00, %i.dr         ; 2 uses
  %i.dy = fcmp ogt double %i.dw, %i.dx
  %.217.i = select i1 %i.dy, double %i.dw, double %i.dx ; 2 uses
  %i.dz = fcmp ogt double %i.dt, %.217.i
  %i.ea = select i1 %i.dz, double %i.dt, double %.217.i
  %i.eb = fmul double %i.ds, %i.ea                ; 2 uses
  %i.ec = fcmp olt double %i.dv, 0.000000e+00
  %i.ed = fneg double %i.eb
  %.2.i = select i1 %i.ec, double %i.ed, double %i.eb
  %i.ee = fadd double %i.dl, %.2.i
  %i.ef = fsub double %i.ee, %i.dl                ; 8 uses
  %i.eg = load ptr, ptr %i.v, align 8, !tbaa !94
  %.not212.i = icmp eq ptr %i.eg, null
  br i1 %.not212.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.lr.ph226.i
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.1225.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !96 ; 3 uses
  %i.ej = tail call double @llvm.fabs.f64(double %i.ei) ; 2 uses
  %i.ek = fcmp oeq double %i.ej, 1.000000e+00
  br i1 %i.ek, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.el = fadd double %i.dl, %i.ef
  %i.em = fmul double %i.el, %i.ei
  %i.en = fcmp olt double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.eo = fneg double %i.ef
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.ep = fcmp oeq double %i.ej, 2.000000e+00
  br i1 %i.ep, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.eq = fadd double %i.dl, %i.ef
  %i.er = fmul double %i.eq, %i.ei
  %i.es = fcmp ugt double %i.er, 0.000000e+00
  br i1 %i.es, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = fneg double %i.ef
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph226.i
  %.3.i = phi double [ %i.eo, %bb.r ], [ %i.ef, %bb.q ], [ %i.et, %bb.u ], [ %i.ef, %bb.t ], [ %i.ef, %bb.s ], [ %i.ef, %.lr.ph226.i ]
  %i.eu = fdiv double 1.000000e+00, %.3.i         ; 2 uses
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ew = tail call ptr @SUNBandMatrix_Column(ptr noundef %i.ev, i64 noundef %.1225.i) #9 ; 3 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64              ; 2 uses
  %i.ey = load i64, ptr %i.bb, align 8, !tbaa !29
  %i.ez = sub nsw i64 %.1225.i, %i.ey
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.ez, i64 0) ; 6 uses
  %i.fa = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.fb = add nsw i64 %i.fa, %.1225.i
  %i.fc = load i64, ptr %i.al, align 8, !tbaa !41 ; 3 uses
  %i.fd = add nsw i64 %i.fc, -1
  %i.fe = tail call i64 @llvm.smin.i64(i64 %i.fb, i64 %i.fd) ; 3 uses
  %.not213220.i = icmp sgt i64 %spec.select.i, %i.fe
  br i1 %.not213220.i, label %._crit_edge224.i, label %.lr.ph223.i.preheader

.lr.ph223.i.preheader:                            ; preds = %bb.v
  %i.ff = add i64 %i.fe, 1
  %i.fg = sub i64 %i.ff, %spec.select.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check, label %.lr.ph223.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph223.i.preheader
  %i.fh = add i64 %i.di, %i.ex
  %i.fi = add i64 %i.fh, -1
  %diff.check = icmp ult i64 %i.fi, 31
  %i.fj = add i64 %i.dj, %i.ex
  %i.fk = add i64 %i.fj, -1
  %diff.check46 = icmp ult i64 %i.fk, 31
  %conflict.rdx = or i1 %diff.check, %diff.check46
  br i1 %conflict.rdx, label %.lr.ph223.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fg, -4                      ; 3 uses
  %i.fl = add i64 %spec.select.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fm = add nuw i64 %spec.select.i, %index      ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !96
  %wide.load47 = load <2 x double>, ptr %i.fo, align 8, !tbaa !96
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.fm ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load48 = load <2 x double>, ptr %i.fp, align 8, !tbaa !96
  %wide.load49 = load <2 x double>, ptr %i.fq, align 8, !tbaa !96
  %i.fr = fsub <2 x double> %wide.load, %wide.load48
  %i.fs = fsub <2 x double> %wide.load47, %wide.load49
  %i.ft = fmul <2 x double> %broadcast.splat, %i.fr
  %i.fu = fmul <2 x double> %broadcast.splat, %i.fs
  %i.fv = sub nsw i64 %i.fm, %.1225.i
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <2 x double> %i.ft, ptr %i.fw, align 8, !tbaa !96
  store <2 x double> %i.fu, ptr %i.fx, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fg, %n.vec
  br i1 %cmp.n, label %._crit_edge224.i, label %.lr.ph223.i.preheader50

.lr.ph223.i.preheader50:                          ; preds = %vector.memcheck, %.lr.ph223.i.preheader, %middle.block
  %.0179221.i.ph = phi i64 [ %spec.select.i, %vector.memcheck ], [ %spec.select.i, %.lr.ph223.i.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %.lr.ph223.i.preheader50, %.lr.ph223.i
  %.0179221.i = phi i64 [ %i.gh, %.lr.ph223.i ], [ %.0179221.i.ph, %.lr.ph223.i.preheader50 ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0179221.i
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !96
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0179221.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !96
  %i.gd = fsub double %i.ga, %i.gc
  %i.ge = fmul double %i.eu, %i.gd
  %i.gf = sub nsw i64 %.0179221.i, %.1225.i
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.gf
  store double %i.ge, ptr %i.gg, align 8, !tbaa !96
  %i.gh = add nuw nsw i64 %.0179221.i, 1
  %.not213.not.i = icmp slt i64 %.0179221.i, %i.fe
  br i1 %.not213.not.i, label %.lr.ph223.i, label %._crit_edge224.i, !llvm.loop !92

._crit_edge224.i:                                 ; preds = %.lr.ph223.i, %middle.block, %bb.v
  %i.gi = add nsw i64 %.1225.i, %i.ax             ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.fc
  %indvar.next45 = add i64 %indvar44, 1
  br i1 %i.gj, label %.lr.ph226.i, label %._crit_edge227.i

._crit_edge227.i:                                 ; preds = %._crit_edge224.i, %.preheader.i
  %i.gk = phi i64 [ %i.dg, %.preheader.i ], [ %i.fc, %._crit_edge224.i ]
  %i.gl = add nuw i64 %.0180229.i, 1
  %exitcond.not.i = icmp eq i64 %.0180229.i, %..i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g

IBBDDQJac.exit:                                   ; preds = %._crit_edge.i, %bb.d, %bb.e
  %.0183.i = phi i32 [ %i.ap, %bb.e ], [ %i.ai, %bb.d ], [ %i.dd, %._crit_edge.i ]
  %i.gm = icmp slt i32 %.0183.i, 0
  br i1 %i.gm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %IBBDDQJac.exit
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %i.b, i32 noundef -1, i32 noundef 492, ptr noundef nonnull @__func__.IDABBDPrecSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %bb.x

.loopexit:                                        ; preds = %._crit_edge227.i, %bb.f
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !38
  %i.gp = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.gq = tail call i32 @SUNLinSolSetup_Band(ptr noundef %i.go, ptr noundef %i.gp) #9
  br label %bb.x

bb.x:                                             ; preds = %IBBDDQJac.exit, %.loopexit, %bb.w
  %.0 = phi i32 [ -1, %bb.w ], [ %i.gq, %.loopexit ], [ 1, %IBBDDQJac.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @IDABBDPrecSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5, double %6, double %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @N_VSetArrayPointer(ptr noundef %i.a, ptr noundef %i.c) #9
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %5) #9
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @N_VSetArrayPointer(ptr noundef %i.d, ptr noundef %i.f) #9
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.m = tail call i32 @SUNLinSolSolve(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, double noundef 0.000000e+00) #9
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !33
  tail call void @N_VSetArrayPointer(ptr noundef null, ptr noundef %i.n) #9
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !32
  tail call void @N_VSetArrayPointer(ptr noundef null, ptr noundef %i.o) #9
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @IDABBDPrecReInit(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 330, ptr noundef nonnull @__func__.IDABBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 339, ptr noundef nonnull @__func__.IDABBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #9
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 348, ptr noundef nonnull @__func__.IDABBDPrecReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %. = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %i.j)
  store i64 %., ptr %i.f, align 8, !tbaa !27
  %i.l = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.m = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !28
  %i.o = fcmp ogt double %3, 0.000000e+00
  br i1 %i.o, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !39 ; 2 uses
  %i.r = fcmp ugt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = tail call double @sqrt(double noundef %i.q) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.t = phi double [ 0.000000e+00, %bb.h ], [ %i.s, %bb.i ], [ %3, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store double %i.t, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i64 0, ptr %i.v, align 8, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @IDABBDPrecGetWorkSpace(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 377, ptr noundef nonnull @__func__.IDABBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 385, ptr noundef nonnull @__func__.IDABBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #9
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 393, ptr noundef nonnull @__func__.IDABBDPrecGetWorkSpace, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  store i64 %i.i, ptr %1, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !44
  store i64 %i.k, ptr %2, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @IDABBDPrecGetNumGfnEvals(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 414, ptr noundef nonnull @__func__.IDABBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 422, ptr noundef nonnull @__func__.IDABBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #9
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -5, i32 noundef 430, ptr noundef nonnull @__func__.IDABBDPrecGetNumGfnEvals, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  store i64 %i.i, ptr %1, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IDABBDPrecInitB(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, double noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, i32 noundef 750, ptr noundef nonnull @__func__.IDABBDPrecInitB, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !48
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
