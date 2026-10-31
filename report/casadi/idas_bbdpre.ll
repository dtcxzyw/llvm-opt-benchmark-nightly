Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas_bbdpre?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@IDABBDPrecInit:bb.a
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !29
  %i.ab = add nsw i64 %i.y, %i.w
  %i.ac = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %i.q) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ae = tail call ptr @NewBandMat(i64 noundef %1, i64 noundef %i.w, i64 noundef %i.y, i64 noundef %i.ac) #6 ; 4 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !30
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.l) #6
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #6
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.ah = tail call ptr @NewLintArray(i64 noundef %1) #6 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !31
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @DestroyMat(ptr noundef nonnull %i.ae) #6
  tail call void @free(ptr noundef nonnull %i.l) #6
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #6
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.ak = tail call ptr @N_VClone(ptr noundef %i.aj) #6 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @DestroyMat(ptr noundef nonnull %i.ae) #6
  tail call void @DestroyArray(ptr noundef nonnull %i.ah) #6
  tail call void @free(ptr noundef nonnull %i.l) #6
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #6
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !32
  %i.an = fcmp ogt double %6, 0.000000e+00
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load double, ptr %0, align 8, !tbaa !33
  %i.ap = tail call double @SUNRsqrt(double noundef %i.ao) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.aq = phi double [ %i.ap, %bb.p ], [ %6, %bb.o ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store double %i.aq, ptr %i.ar, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 %1, ptr %i.as, align 8, !tbaa !35
  %i.at = add nsw i64 %i.y, 1
  %i.au = add i64 %i.at, %i.ac
  %i.av = mul nsw i64 %i.au, %1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i64 %1, ptr %i.ax, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 0, ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr %i.l, ptr %i.az, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store ptr @IDABBDPrecFree, ptr %i.ba, align 8, !tbaa !71
  %i.bb = tail call i32 @IDASpilsSetPreconditioner(ptr noundef nonnull %0, ptr noundef nonnull @IDABBDPrecSetup, ptr noundef nonnull @IDABBDPrecSolve) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -3, %bb.f ], [ -4, %bb.h ], [ -4, %bb.j ], [ -4, %bb.l ], [ -4, %bb.n ], [ %i.bb, %bb.q ]
  ret i32 %.0
}

declare void @IDAProcessError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @NewBandMat(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @NewLintArray(i64 noundef) local_unnamed_addr #1

declare void @DestroyMat(ptr noundef) local_unnamed_addr #1

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #1

declare void @DestroyArray(ptr noundef) local_unnamed_addr #1

declare double @SUNRsqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @IDABBDPrecFree(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @DestroyMat(ptr noundef %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  tail call void @DestroyArray(ptr noundef %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  tail call void @N_VDestroy(ptr noundef %i.l) #6
  tail call void @free(ptr noundef nonnull %i.e) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare i32 @IDASpilsSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @IDABBDPrecSetup(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, double noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  tail call void @SetToZero(ptr noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %1, ptr noundef %7) #6
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %8) #6
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #6 ; 2 uses
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #6 ; 2 uses
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %i.f) #6 ; 3 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = tail call ptr @N_VGetArrayPointer(ptr noundef %i.m) #6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 640 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.p) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.r = tail call ptr @N_VGetArrayPointer(ptr noundef %7) #6 ; 2 uses
  %i.s = tail call ptr @N_VGetArrayPointer(ptr noundef %8) #6 ; 2 uses
  %i.t = tail call ptr @N_VGetArrayPointer(ptr noundef %6) #6 ; 3 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %.not200.i = icmp eq ptr %i.w, null
  br i1 %.not200.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.ab = tail call i32 %i.w(i64 noundef %i.y, double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.aa) #6, !inline_history !72 ; 2 uses
  %.not201.i = icmp eq i32 %i.ab, 0
  br i1 %.not201.i, label %bb.e, label %IBBDDQJac.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.ai = tail call i32 %i.ad(i64 noundef %i.af, double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef %i.ah) #6, !inline_history !72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.al = add nsw i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !38
  %.not202.i = icmp eq i32 %i.ai, 0
  br i1 %.not202.i, label %bb.f, label %IBBDDQJac.exit

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %i.ao = load i64, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ap = add i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao                    ; 3 uses
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %..i = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.ar) ; 2 uses
  %.not203217.i = icmp slt i64 %..i, 1
  br i1 %.not203217.i, label %.loopexit, label %.lr.ph220.i

.lr.ph220.i:                                      ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 1168 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aw = xor i64 %i.an, -1
  %i.ax = sub i64 %i.aw, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge216.i, %.lr.ph220.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge216.i ], [ 0, %.lr.ph220.i ] ; 2 uses
  %i.ay = phi i64 [ %i.hg, %._crit_edge216.i ], [ %i.ar, %.lr.ph220.i ] ; 2 uses
  %.0181218.i = phi i64 [ %i.hh, %._crit_edge216.i ], [ 1, %.lr.ph220.i ] ; 5 uses
  %i.az = add nsw i64 %.0181218.i, -1             ; 2 uses
  %.not224.i = icmp sgt i64 %.0181218.i, %i.ay
  br i1 %.not224.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.s
  %.0179208.i = phi i64 [ %i.dc, %bb.s ], [ %i.az, %bb.g ] ; 7 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0179208.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !81 ; 6 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0179208.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !81 ; 5 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.0179208.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !81
  %i.bg = load double, ptr %i.as, align 8, !tbaa !34
  %i.bh = tail call double @SUNRabs(double noundef %i.bb) #6
  %i.bi = load double, ptr %i.at, align 8, !tbaa !82
  %i.bj = fmul double %i.bd, %i.bi
  %i.bk = tail call double @SUNRabs(double noundef %i.bj) #6
  %i.bl = fdiv double 1.000000e+00, %i.bf         ; 4 uses
  %i.bm = fcmp ogt double %i.bk, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bn = load double, ptr %i.at, align 8, !tbaa !82
  %i.bo = fmul double %i.bd, %i.bn
  %i.bp = tail call double @SUNRabs(double noundef %i.bo) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bq = phi double [ %i.bp, %bb.h ], [ %i.bl, %.lr.ph.i ]
  %i.br = fcmp ogt double %i.bh, %i.bq
  br i1 %i.br, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load double, ptr %i.at, align 8, !tbaa !82
  %i.bt = fmul double %i.bd, %i.bs
  %i.bu = tail call double @SUNRabs(double noundef %i.bt) #6
  %i.bv = fcmp ogt double %i.bu, %i.bl
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = load double, ptr %i.at, align 8, !tbaa !82
  %i.bx = fmul double %i.bd, %i.bw
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.i
  %.sink.i = phi double [ %i.bx, %bb.k ], [ %i.bb, %bb.i ]
  %i.by = tail call double @SUNRabs(double noundef %.sink.i) #6
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i, %bb.j
  %i.bz = phi double [ %i.bl, %bb.j ], [ %i.by, %.sink.split.i ]
  %i.ca = fmul double %i.bg, %i.bz                ; 2 uses
  %i.cb = load double, ptr %i.at, align 8, !tbaa !82
  %i.cc = fmul double %i.bd, %i.cb
  %i.cd = fcmp olt double %i.cc, 0.000000e+00
  %i.ce = fneg double %i.ca
  %.0182.i = select i1 %i.cd, double %i.ce, double %i.ca
  %i.cf = fadd double %i.bb, %.0182.i
  %i.cg = fsub double %i.cf, %i.bb                ; 8 uses
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !79
  %.not207.i = icmp eq ptr %i.ch, null
  br i1 %.not207.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.0179208.i
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !81 ; 4 uses
  %i.ck = tail call double @SUNRabs(double noundef %i.cj) #6
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00
  br i1 %i.cl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cm = fadd double %i.bb, %i.cg
  %i.cn = fmul double %i.cm, %i.cj
  %i.co = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cp = fneg double %i.cg
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.cq = tail call double @SUNRabs(double noundef %i.cj) #6
  %i.cr = fcmp oeq double %i.cq, 2.000000e+00
  br i1 %i.cr, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cs = fadd double %i.bb, %i.cg
  %i.ct = fmul double %i.cs, %i.cj
  %i.cu = fcmp ugt double %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = fneg double %i.cg
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l
  %.1183.i = phi double [ %i.cp, %bb.o ], [ %i.cg, %bb.n ], [ %i.cv, %bb.r ], [ %i.cg, %bb.q ], [ %i.cg, %bb.p ], [ %i.cg, %bb.l ] ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.0179208.i ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !81
  %i.cy = fadd double %.1183.i, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !81
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.0179208.i ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !81
  %i.db = tail call double @llvm.fmuladd.f64(double %4, double %.1183.i, double %i.da)
  store double %i.db, ptr %i.cz, align 8, !tbaa !81
  %i.dc = add nsw i64 %.0179208.i, %i.aq          ; 2 uses
  %i.dd = load i64, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.de = icmp slt i64 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !73

._crit_edge.i:                                    ; preds = %bb.s, %bb.g
  %.lcssa.i = phi i64 [ %i.ay, %bb.g ], [ %i.dd, %bb.s ]
  %i.df = load ptr, ptr %i.ac, align 8, !tbaa !24
  %i.dg = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.dh = tail call i32 %i.df(i64 noundef %.lcssa.i, double noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %i.f, ptr noundef %i.dg) #6, !inline_history !72 ; 2 uses
  %i.di = load i64, ptr %i.aj, align 8, !tbaa !38
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr %i.aj, align 8, !tbaa !38
  %.not204.i = icmp eq i32 %i.dh, 0
  br i1 %.not204.i, label %.preheader.i, label %IBBDDQJac.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.dk = load i64, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %.not225.i = icmp sgt i64 %.0181218.i, %i.dk
  br i1 %.not225.i, label %._crit_edge216.i, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %.preheader.i, %._crit_edge213.i
  %indvar50 = phi i64 [ %indvar.next51, %._crit_edge213.i ], [ 0, %.preheader.i ] ; 2 uses
  %.1214.i = phi i64 [ %i.he, %._crit_edge213.i ], [ %i.az, %.preheader.i ] ; 12 uses
  %9 = mul i64 %i.ax, %indvar50
  %10 = sub i64 %9, %indvar
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.1214.i
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !81 ; 7 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.1214.i
  store double %i.dm, ptr %i.dn, align 8, !tbaa !81
  %i.do = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.1214.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !81 ; 6 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.1214.i
  store double %i.dp, ptr %i.dq, align 8, !tbaa !81
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.1214.i
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !81
  %i.dt = load double, ptr %i.as, align 8, !tbaa !34
  %i.du = tail call double @SUNRabs(double noundef %i.dm) #6
  %i.dv = load double, ptr %i.at, align 8, !tbaa !82
  %i.dw = fmul double %i.dp, %i.dv
  %i.dx = tail call double @SUNRabs(double noundef %i.dw) #6
  %i.dy = fdiv double 1.000000e+00, %i.ds         ; 4 uses
  %i.dz = fcmp ogt double %i.dx, %i.dy
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph215.i
  %i.ea = load double, ptr %i.at, align 8, !tbaa !82
  %i.eb = fmul double %i.dp, %i.ea
  %i.ec = tail call double @SUNRabs(double noundef %i.eb) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph215.i
  %i.ed = phi double [ %i.ec, %bb.t ], [ %i.dy, %.lr.ph215.i ]
  %i.ee = fcmp ogt double %i.du, %i.ed
  br i1 %i.ee, label %.sink.split245.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = load double, ptr %i.at, align 8, !tbaa !82
  %i.eg = fmul double %i.dp, %i.ef
  %i.eh = tail call double @SUNRabs(double noundef %i.eg) #6
  %i.ei = fcmp ogt double %i.eh, %i.dy
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = load double, ptr %i.at, align 8, !tbaa !82
  %i.ek = fmul double %i.dp, %i.ej
  br label %.sink.split245.i

.sink.split245.i:                                 ; preds = %bb.w, %bb.u
  %.sink246.i = phi double [ %i.ek, %bb.w ], [ %i.dm, %bb.u ]
  %i.el = tail call double @SUNRabs(double noundef %.sink246.i) #6
  br label %bb.x

bb.x:                                             ; preds = %.sink.split245.i, %bb.v
  %i.em = phi double [ %i.dy, %bb.v ], [ %i.el, %.sink.split245.i ]
  %i.en = fmul double %i.dt, %i.em                ; 2 uses
  %i.eo = load double, ptr %i.at, align 8, !tbaa !82
  %i.ep = fmul double %i.dp, %i.eo
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  %i.er = fneg double %i.en
  %.2.i = select i1 %i.eq, double %i.er, double %i.en
  %i.es = fadd double %i.dm, %.2.i
  %i.et = fsub double %i.es, %i.dm                ; 8 uses
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !79
  %.not205.i = icmp eq ptr %i.eu, null
  br i1 %.not205.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.1214.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !81 ; 4 uses
  %i.ex = tail call double @SUNRabs(double noundef %i.ew) #6
  %i.ey = fcmp oeq double %i.ex, 1.000000e+00
  br i1 %i.ey, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ez = fadd double %i.dm, %i.et
  %i.fa = fmul double %i.ez, %i.ew
  %i.fb = fcmp olt double %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.fc = fneg double %i.et
  br label %bb.ae

bb.ab:                                            ; preds = %bb.y
  %i.fd = tail call double @SUNRabs(double noundef %i.ew) #6
  %i.fe = fcmp oeq double %i.fd, 2.000000e+00
  br i1 %i.fe, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ff = fadd double %i.dm, %i.et
  %i.fg = fmul double %i.ff, %i.ew
  %i.fh = fcmp ugt double %i.fg, 0.000000e+00
  br i1 %i.fh, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = fneg double %i.et
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  %.3.i = phi double [ %i.fc, %bb.aa ], [ %i.et, %bb.z ], [ %i.fi, %bb.ad ], [ %i.et, %bb.ac ], [ %i.et, %bb.ab ], [ %i.et, %bb.x ]
  %i.fj = fdiv double 1.000000e+00, %.3.i         ; 2 uses
  %i.fk = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !86
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %.1214.i
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 2 uses
  %i.fp = ptrtoaddr ptr %i.fo to i64              ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !88 ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fr ; 2 uses
  %i.ft = load i64, ptr %i.au, align 8, !tbaa !28
  %i.fu = sub nsw i64 %.1214.i, %i.ft
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.fu, i64 0) ; 6 uses
  %i.fv = load i64, ptr %i.av, align 8, !tbaa !29
  %i.fw = add nsw i64 %i.fv, %.1214.i
  %i.fx = load i64, ptr %i.ae, align 8, !tbaa !35 ; 3 uses
  %i.fy = add nsw i64 %i.fx, -1
  %i.fz = tail call i64 @llvm.smin.i64(i64 %i.fw, i64 %i.fy) ; 3 uses
  %.not206209.i = icmp sgt i64 %spec.select.i, %i.fz
  br i1 %.not206209.i, label %._crit_edge213.i, label %.lr.ph212.i.preheader

.lr.ph212.i.preheader:                            ; preds = %bb.ae
  %i.ga = add i64 %i.fz, 1
  %i.gb = sub i64 %i.ga, %spec.select.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.gb, 6
  br i1 %min.iters.check, label %.lr.ph212.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph212.i.preheader
  %i.gc = sub i64 %i.fp, %i.k
  %i.gd = add i64 %i.fr, %10
  %i.ge = shl i64 %i.gd, 3                        ; 2 uses
  %11 = add i64 %i.gc, %i.ge
  %i.gf = add i64 %11, -1
  %diff.check = icmp ult i64 %i.gf, 31
  %i.gg = sub i64 %i.fp, %i.u
  %12 = add i64 %i.gg, %i.ge
  %13 = add i64 %12, -1
  %diff.check52 = icmp ult i64 %13, 31
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %.lr.ph212.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gb, -4                      ; 3 uses
  %i.gh = add i64 %spec.select.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gi = add nuw i64 %spec.select.i, %index      ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load = load <2 x double>, ptr %i.gj, align 8, !tbaa !81
  %wide.load53 = load <2 x double>, ptr %i.gk, align 8, !tbaa !81
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.gi ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load54 = load <2 x double>, ptr %i.gl, align 8, !tbaa !81
  %wide.load55 = load <2 x double>, ptr %i.gm, align 8, !tbaa !81
  %i.gn = fsub <2 x double> %wide.load, %wide.load54
  %i.go = fsub <2 x double> %wide.load53, %wide.load55
  %i.gp = fmul <2 x double> %broadcast.splat, %i.gn
  %i.gq = fmul <2 x double> %broadcast.splat, %i.go
  %i.gr = sub nsw i64 %i.gi, %.1214.i
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <2 x double> %i.gp, ptr %i.gs, align 8, !tbaa !81
  store <2 x double> %i.gq, ptr %i.gt, align 8, !tbaa !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gb, %n.vec
  br i1 %cmp.n, label %._crit_edge213.i, label %.lr.ph212.i.preheader56

.lr.ph212.i.preheader56:                          ; preds = %vector.memcheck, %.lr.ph212.i.preheader, %middle.block
  %.0180210.i.ph = phi i64 [ %spec.select.i, %vector.memcheck ], [ %spec.select.i, %.lr.ph212.i.preheader ], [ %i.gh, %middle.block ]
  br label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.lr.ph212.i.preheader56, %.lr.ph212.i
  %.0180210.i = phi i64 [ %i.hd, %.lr.ph212.i ], [ %.0180210.i.ph, %.lr.ph212.i.preheader56 ] ; 5 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0180210.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !81
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0180210.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !81
  %i.gz = fsub double %i.gw, %i.gy
  %i.ha = fmul double %i.fj, %i.gz
  %i.hb = sub nsw i64 %.0180210.i, %.1214.i
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.hb
  store double %i.ha, ptr %i.hc, align 8, !tbaa !81
  %i.hd = add nuw nsw i64 %.0180210.i, 1
  %.not206.not.i = icmp slt i64 %.0180210.i, %i.fz
  br i1 %.not206.not.i, label %.lr.ph212.i, label %._crit_edge213.i, !llvm.loop !75

._crit_edge213.i:                                 ; preds = %.lr.ph212.i, %middle.block, %bb.ae
  %i.he = add nsw i64 %.1214.i, %i.aq             ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.fx
  %indvar.next51 = add i64 %indvar50, 1
  br i1 %i.hf, label %.lr.ph215.i, label %._crit_edge216.i, !llvm.loop !76

._crit_edge216.i:                                 ; preds = %._crit_edge213.i, %.preheader.i
  %i.hg = phi i64 [ %i.dk, %.preheader.i ], [ %i.fx, %._crit_edge213.i ]
  %i.hh = add nuw i64 %.0181218.i, 1
  %exitcond.not.i = icmp eq i64 %.0181218.i, %..i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g, !llvm.loop !77

IBBDDQJac.exit:                                   ; preds = %._crit_edge.i, %bb.d, %bb.e
  %.0184.i = phi i32 [ %i.ai, %bb.e ], [ %i.ab, %bb.d ], [ %i.dh, %._crit_edge.i ]
  %i.hi = icmp slt i32 %.0184.i, 0
  br i1 %i.hi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %IBBDDQJac.exit
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #6
  br label %bb.ag

.loopexit:                                        ; preds = %._crit_edge216.i, %bb.f
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !31
  %i.hm = tail call i64 @BandGBTRF(ptr noundef %i.hj, ptr noundef %i.hl) #6
  %i.hn = icmp sgt i64 %i.hm, 0
  %. = zext i1 %i.hn to i32
  br label %bb.ag

bb.ag:                                            ; preds = %IBBDDQJac.exit, %.loopexit, %bb.af
  %.0 = phi i32 [ -1, %bb.af ], [ %., %.loopexit ], [ 1, %IBBDDQJac.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @IDABBDPrecSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5, double %6, double %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %5) #6
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %5) #6
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call void @BandGBTRS(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.a) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @IDABBDPrecReInit(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #6
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #6
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #6
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %i.k = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %. = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %i.j)
  store i64 %., ptr %i.f, align 8, !tbaa !26
  %i.l = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.m = tail call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = fcmp ogt double %3, 0.000000e+00
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load double, ptr %0, align 8, !tbaa !33
  %i.q = tail call double @SUNRsqrt(double noundef %i.p) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = phi double [ %i.q, %bb.h ], [ %3, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store double %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %i.t, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -5, %bb.f ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @IDABBDPrecGetWorkSpace(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #6
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #6
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
end_hunk_0
