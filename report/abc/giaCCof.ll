Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCCof?download=true
inline.NumInlined: 85
inline.NumDeleted: 39
begin_hunk_0_@Gia_ManCofGetReachable:bb.a
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %Abc_Clock.exit27, %.preheader
  %.021.ph = phi i32 [ %.val, %Abc_Clock.exit27 ], [ 0, %.preheader ]
  %.019.ph = phi i32 [ %i.ax, %Abc_Clock.exit27 ], [ 0, %.preheader ]
  %.018.ph = phi i32 [ %i.ac, %Abc_Clock.exit27 ], [ 0, %.preheader ] ; 2 uses
  %.0.ph = phi i32 [ %i.aa, %Abc_Clock.exit27 ], [ %i.i, %.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %Abc_Clock.exit
  %.0 = phi i32 [ %i.aa, %Abc_Clock.exit ], [ %.0.ph, %.outer ]
  switch i32 %.0, label %.loopexit [
    i32 1, label %bb.c
    i32 0, label %.loopexit.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.p = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #17
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %Abc_Clock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %3, align 8, !tbaa !66
  %.neg28 = mul i64 %i.r, -1000000
  %i.s = load i64, ptr %i.k, align 8, !tbaa !67
  %.neg = sdiv i64 %i.s, -1000
  %.neg29 = add i64 %.neg, %.neg28
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.neg = phi i64 [ %.neg29, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.t = load i32, ptr %i.a, align 4, !tbaa !49
  %i.u = call i32 @Gia_ManCofOneDerive(ptr noundef nonnull %0, i32 noundef %i.t)
  store i32 %i.u, ptr %i.b, align 4, !tbaa !49
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.w = call i32 @sat_solver_addclause(ptr noundef %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l) #17 ; 0 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.y = load i32, ptr %i.f, align 4, !tbaa !15
  %i.z = sext i32 %i.y to i64
  %i.aa = call i32 @sat_solver_solve(ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 0, i64 noundef 0, i64 noundef 0) #17 ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !17
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.b, label %bb.e, !llvm.loop !74

bb.e:                                             ; preds = %Abc_Clock.exit
  %i.ac = add nuw nsw i32 %.018.ph, 1
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %.val25 = load i32, ptr %i.ae, align 8, !tbaa !47
  %i.af = sub nsw i32 %.val25, %.021.ph
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ah = call i32 @sat_solver_nconflicts(ptr noundef %i.ag) #17
  %i.ai = sub nsw i32 %i.ah, %.019.ph
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.018.ph, i32 noundef %i.af, i32 noundef %i.ai) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ak = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #17
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %Abc_Clock.exit27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %2, align 8, !tbaa !66
  %i.an = mul nsw i64 %i.am, 1000000
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !67
  %i.ap = sdiv i64 %i.ao, 1000
  %i.aq = add nsw i64 %i.ap, %i.an
  br label %Abc_Clock.exit27

Abc_Clock.exit27:                                 ; preds = %bb.e, %bb.f
  %.0.i26 = phi i64 [ %i.aq, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ar = add i64 %.0.i26, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1)
  %i.as = sitofp i64 %i.ar to double
  %i.at = fdiv double %i.as, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, double noundef %i.at)
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %.val = load i32, ptr %i.av, align 8, !tbaa !47
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ax = call i32 @sat_solver_nconflicts(ptr noundef %i.aw) #17
  br label %.outer, !llvm.loop !74

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit, %bb.a
  %.023 = phi i32 [ -1, %.loopexit.loopexit ], [ 1, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.023
}

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @sat_solver_nconflicts(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Gia_ManCofTest(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #17
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %8, align 8, !tbaa !66
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.i = sext i32 %3 to i64
  %i.j = mul nsw i64 %i.i, 1000000
  %i.k = add nsw i64 %.0.i, %i.j                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.l = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #17
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %Abc_Clock.exit75, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = load i64, ptr %7, align 8, !tbaa !66
  %.neg80 = mul i64 %i.n, -1000000
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67
  %.neg = sdiv i64 %i.p, -1000
  %.neg81 = add i64 %.neg, %.neg80
  br label %Abc_Clock.exit75

Abc_Clock.exit75:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i74.neg = phi i64 [ %.neg81, %bb.c ], [ 1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.q = call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #16 ; 13 uses
  store ptr %0, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %1, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %2, ptr %i.s, align 4, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %3, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %4, ptr %i.u, align 4, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @Ccf_ManStart.Pars, i64 4), i8 0, i64 16, i1 false)
  store i32 %4, ptr getelementptr inbounds nuw (i8, ptr @Ccf_ManStart.Pars, i64 20), align 4, !tbaa !19
  store i32 %1, ptr @Ccf_ManStart.Pars, align 4, !tbaa !20
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @Ccf_ManStart.Pars, i64 8), align 4, !tbaa !21
  %i.v = call ptr @Gia_ManUnrollStart(ptr noundef %0, ptr noundef nonnull @Ccf_ManStart.Pars) #17
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !25
  store i32 1000, ptr %i.x, align 8, !tbaa !26
  %i.z = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !28
  %i.ac = call ptr @sat_solver_new() #17          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !29
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  store i64 %i.k, ptr %i.ae, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Abc_Clock.exit75
  %i.af = icmp sgt i32 %1, 0
  br i1 %i.af, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %bb.e
  %.not62 = icmp eq i32 %4, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.j, %.critedge
  %.1119 = phi i32 [ %.1, %.critedge ], [ %.088, %bb.j ] ; 2 uses
  %exitcond102.not = icmp eq i32 %i.aj, %1
  br i1 %exitcond102.not, label %._crit_edge, label %bb.g, !llvm.loop !75

bb.g:                                             ; preds = %.lr.ph89, %bb.f
  %.088 = phi i32 [ 0, %.lr.ph89 ], [ %.1119, %bb.f ] ; 4 uses
  %.05787 = phi i32 [ 0, %.lr.ph89 ], [ %i.aj, %bb.f ] ; 5 uses
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.05787) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.aj = add nuw nsw i32 %.05787, 1              ; 3 uses
  %i.ak = call ptr @Gia_ManUnrollAdd(ptr noundef %i.ai, i32 noundef %i.aj) #17
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !30
  call void @Gia_ManCofExtendSolver(ptr noundef nonnull %i.q)
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.am = call i32 @Gia_ManUnrollLastLit(ptr noundef %i.al) #17
  %i.an = call i32 @Gia_ManCofGetReachable(ptr noundef nonnull %i.q, i32 noundef %i.am) ; 2 uses
  %.not63 = icmp eq i32 %i.an, 0
  br i1 %.not63, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !30
  call void @Gia_ManSetPhase(ptr noundef %i.ao) #17
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %.val70 = load i32, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 72
  %.val71 = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 2 uses
  %i.as = getelementptr i8, ptr %.val71, i64 4
  %.val71.val = load i32, ptr %i.as, align 4, !tbaa !25 ; 2 uses
  %i.at = sub nsw i32 %.val71.val, %.val70        ; 4 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.ap, i64 32
  %.val72 = load ptr, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %.not64 = icmp eq ptr %.val72, null
  br i1 %.not64, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aw = getelementptr i8, ptr %.val71, i64 8
  %.val73.val = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ax = sub i32 %.val71.val, %.val70
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val73.val, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !49
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %.val72, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 4
  %.not65 = icmp sgt i64 %i.bc, -1
  br i1 %.not65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.05787) ; 0 uses
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !51
  %.phi.trans.insert104 = getelementptr i8, ptr %.pre, i64 72
  %.val69.pre = load ptr, ptr %.phi.trans.insert104, align 8, !tbaa !64
  %.phi.trans.insert106 = getelementptr i8, ptr %.val69.pre, i64 4
  %.val69.val.pre = load i32, ptr %.phi.trans.insert106, align 4, !tbaa !25
  %.pre108 = sub nsw i32 %.val69.val.pre, %.val.pre
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.k, !llvm.loop !76

.critedge:                                        ; preds = %bb.m, %.lr.ph, %bb.l
  %.pre-phi = phi i32 [ %.pre108, %bb.l ], [ %i.at, %.lr.ph ], [ %i.at, %bb.m ]
  %.05683 = phi i32 [ %i.bd, %bb.l ], [ 0, %.lr.ph ], [ %i.ax, %bb.m ]
  %.1 = phi i32 [ 1, %bb.l ], [ %.088, %.lr.ph ], [ %.088, %bb.m ] ; 2 uses
  %i.bf = icmp slt i32 %.05683, %.pre-phi
  br i1 %i.bf, label %.critedge._crit_edge, label %bb.f, !llvm.loop !75

.critedge._crit_edge:                             ; preds = %.critedge
  br label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.f, %bb.i, %.critedge._crit_edge, %bb.e
  %.057.lcssa = phi i32 [ %.05787, %.critedge._crit_edge ], [ 0, %bb.e ], [ %.05787, %bb.i ], [ %1, %bb.f ] ; 4 uses
  %.155 = phi i32 [ 0, %.critedge._crit_edge ], [ -1, %bb.e ], [ %i.an, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.1, %.critedge._crit_edge ], [ 0, %bb.e ], [ %.088, %bb.i ], [ %.1119, %bb.f ]
  %.not66 = icmp eq i64 %i.k, 0
  br i1 %.not66, label %bb.q, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #17
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %Abc_Clock.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i64, ptr %6, align 8, !tbaa !66
  %i.bj = mul nsw i64 %i.bi, 1000000
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !67
  %i.bm = sdiv i64 %i.bl, 1000
  %i.bn = add nsw i64 %i.bm, %i.bj
  br label %Abc_Clock.exit77

Abc_Clock.exit77:                                 ; preds = %bb.n, %bb.o
  %.0.i76 = phi i64 [ %i.bn, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bo = icmp sgt i64 %.0.i76, %i.k
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %Abc_Clock.exit77
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %3, i32 noundef %.057.lcssa) ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %Abc_Clock.exit77, %._crit_edge
  %i.bq = icmp eq i32 %.057.lcssa, %1
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %1) ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  switch i32 %.155, label %bb.v [
    i32 1, label %bb.t
    i32 -1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %.057.lcssa, -1
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.bs) ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bu = add nsw i32 %.057.lcssa, -1
  %i.bv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bu) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.bw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #17
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %Abc_Clock.exit79, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i64, ptr %5, align 8, !tbaa !66
  %i.bz = mul nsw i64 %i.by, 1000000
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !67
  %i.cc = sdiv i64 %i.cb, 1000
  %i.cd = add nsw i64 %i.cc, %i.bz
  br label %Abc_Clock.exit79

Abc_Clock.exit79:                                 ; preds = %bb.v, %bb.w
  %.0.i78 = phi i64 [ %i.cd, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.ce = add i64 %.0.i78, %.0.i74.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8)
  %i.cf = sitofp i64 %i.ce to double
  %i.cg = fdiv double %i.cf, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, double noundef %i.cg)
  %i.ch = icmp eq i32 %.2, 0
  br i1 %i.ch, label %.sink.split, label %bb.x

.sink.split:                                      ; preds = %Abc_Clock.exit79
  %i.ci = icmp eq i32 %.155, 1
  %str.1.mux = select i1 %i.ci, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.mux) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %Abc_Clock.exit79, %.sink.split
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  call void @Gia_ManHashStop(ptr noundef %i.ck) #17
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !30 ; 2 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !30
  %i.cm = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i, label %Ccf_ManStop.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.co) #17
  br label %Ccf_ManStop.exit

Ccf_ManStop.exit:                                 ; preds = %bb.x, %bb.y
  call void @free(ptr noundef nonnull %i.cm) #17
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !22
  call void @Gia_ManUnrollStop(ptr noundef %i.cp) #17
  %i.cq = load ptr, ptr %i.ad, align 8, !tbaa !29
  call void @sat_solver_delete(ptr noundef %i.cq) #17
  call void @Gia_ManStopP(ptr noundef nonnull %i.cj) #17
  call void @free(ptr noundef nonnull %i.q) #17
  %i.cr = call ptr @Gia_ManCleanup(ptr noundef %i.cl) #17
  call void @Gia_ManStop(ptr noundef %i.cl) #17
  ret ptr %i.cr
}

declare ptr @Gia_ManUnrollAdd(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Gia_ManUnrollLastLit(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #4

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #4

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #11 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !49
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #17 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #17
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #17 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !81
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #21
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #17 ; 0 uses
  call void @free(ptr noundef %i.d) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !81, !noalias !82
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #17, !inline_history !80 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
