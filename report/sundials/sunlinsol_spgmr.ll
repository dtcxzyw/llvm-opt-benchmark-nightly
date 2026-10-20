Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunlinsol_spgmr?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@SUNLinSolSetPreconditioner_SPGMR:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %3, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.d, align 8, !tbaa !32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetScalingVectors_SPGMR(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %2, ptr %i.c, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetZeroGuess_SPGMR(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolInitialize_SPGMR(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !29
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.off = add i32 %i.f, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.a, align 8, !tbaa !22
  %i.k = add nsw i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call ptr @N_VCloneVectorArray(i32 noundef %i.k, ptr noundef %i.m) #15
  store ptr %i.n, ptr %i.g, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #16 ; 2 uses
  store ptr %i.v, ptr %i.o, align 8, !tbaa !36
  %.not3738 = icmp slt i32 %i.r, 0
  br i1 %.not3738, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.w = zext nneg i32 %i.r to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %wide.trip.count = zext i32 %i.s to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #16
  store ptr %i.z, ptr %i.y, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !22
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #16
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.a, align 8, !tbaa !22
  %i.am = add nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #16
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.a, align 8, !tbaa !22
  %i.au = add nsw i32 %i.at, 1
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #16
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !41
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !22
  %i.bc = add nsw i32 %i.bb, 1
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #16
  store ptr %i.bf, ptr %i.ay, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -806, 805) i32 @SUNLinSolSetup_SPGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = tail call i32 %i.c(ptr noundef %i.e) #15 ; 2 uses
  %.not13 = icmp eq i32 %i.f, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.f, 0
  %i.h = select i1 %i.g, i32 -806, i32 804
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink17 = phi ptr [ %.pre, %bb.c ], [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %.sink = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sink17, i64 32
  store i32 %.sink, ptr %i.i, align 8, !tbaa !21
  ret i32 %.sink
}

; Function Attrs: nounwind uwtable
define range(i32 -811, 808) i32 @SUNLinSolSolve_SPGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, double noundef %4) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 21 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 21 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 19 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 13 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 13 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !23 ; 4 uses
  %.not = icmp eq ptr %i.v, null                  ; 2 uses
  %.not360 = icmp eq ptr %i.x, null               ; 3 uses
  %i.ar = load i32, ptr %i.ag, align 8, !tbaa !70
  %.not361 = icmp eq i32 %i.ar, 0
  br i1 %.not361, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.t) #15
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.as = tail call i32 %i.ad(ptr noundef %i.z, ptr noundef %2, ptr noundef %i.t) #15 ; 2 uses
  %.not362 = icmp eq i32 %i.as, 0
  br i1 %.not362, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.at = icmp slt i32 %i.as, 0
  %i.au = select i1 %i.at, i32 -805, i32 803
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %i.t, ptr noundef %i.t) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !71
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.av) #15
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !71  ; 2 uses
  switch i32 %i.aq, label %bb.i [
    i32 3, label %bb.g
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ax = tail call i32 %i.af(ptr noundef %i.ab, ptr noundef %i.aw, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not363 = icmp eq i32 %i.ax, 0
  br i1 %.not363, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.ay = icmp slt i32 %i.ax, 0
  %i.az = select i1 %i.ay, i32 -808, i32 805
  br label %bb.bj

bb.i:                                             ; preds = %bb.f
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.aw, ptr noundef %i.t) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !71  ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @N_VProd(ptr noundef nonnull %i.v, ptr noundef %i.t, ptr noundef %i.ba) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.ba) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !71  ; 2 uses
  %i.bc = tail call double @N_VDotProd(ptr noundef %i.bb, ptr noundef %i.bb) #15 ; 2 uses
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = tail call double @sqrt(double noundef %i.bc) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bf = phi double [ %i.be, %bb.n ], [ 0.000000e+00, %bb.m ] ; 5 uses
  store double %i.bf, ptr %i.ai, align 8, !tbaa !72
  %i.bg = fcmp ugt double %i.bf, %4
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  br label %bb.bj

bb.q:                                             ; preds = %bb.o
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.o) #15
  %.not364430 = icmp slt i32 %i.d, 0
  br i1 %.not364430, label %._crit_edge435.thread, label %.preheader381.lr.ph

.preheader381.lr.ph:                              ; preds = %bb.q
  %i.bh = icmp slt i32 %i.b, 1
  %i.bi = and i32 %i.aq, -2
  %i.bj = icmp eq i32 %i.bi, 2                    ; 2 uses
  %i.bk = icmp eq i32 %i.f, 2
  %i.bl = zext i32 %i.b to i64                    ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3                ; 9 uses
  %i.bn = add i32 %i.b, 1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %wide.trip.count = zext i32 %i.bn to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bo = icmp ult i32 %i.bn, 8
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter, 0
  %i.bp = sub i64 %i.al, %i.r
  %i.bq = add i64 %i.bp, 7
  %diff.check548 = icmp ult i64 %i.bq, 31
  %i.br = sub i64 %i.ao, %i.i
  %i.bs = add i64 %i.br, 7
  %diff.check549 = icmp ult i64 %i.bs, 31
  %conflict.rdx550 = or i1 %diff.check548, %diff.check549
  %i.bt = sub i64 %i.r, %i.al
  %diff.check = icmp ugt i64 %i.bt, -32
  %i.bu = sub i64 %i.i, %i.ao
  %diff.check531 = icmp ugt i64 %i.bu, -32
  %conflict.rdx = or i1 %diff.check, %diff.check531
  br label %.preheader381

.preheader381:                                    ; preds = %._crit_edge429, %.preheader381.lr.ph
  %.0434 = phi i32 [ 0, %.preheader381.lr.ph ], [ %i.is, %._crit_edge429 ] ; 2 uses
  %.0320433 = phi i32 [ 0, %.preheader381.lr.ph ], [ %.2, %._crit_edge429 ]
  %.0330432 = phi double [ %i.bf, %.preheader381.lr.ph ], [ %.2332, %._crit_edge429 ]
  %.0335431 = phi double [ %i.bf, %.preheader381.lr.ph ], [ %i.ip, %._crit_edge429 ] ; 7 uses
  br i1 %i.bh, label %._crit_edge393.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader381
  br i1 %i.bo, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader ], [ 0, %.preheader.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader ], [ 0, %.preheader.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bz, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cc, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cf, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.preheader.unr-lcssa, label %.preheader

._crit_edge393.split:                             ; preds = %.preheader381
  %i.cs = fdiv double 1.000000e+00, %.0335431
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !71  ; 2 uses
  tail call void @N_VScale(double noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.ct) #15
  br label %._crit_edge399

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.7, %.lr.ph.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod576)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader.epil ], [ %indvars.iv.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cv, i8 0, i64 %i.bm, i1 false), !tbaa !72
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader.epil, !llvm.loop !63

.lr.ph.preheader:                                 ; preds = %.preheader.epil, %.lr.ph.preheader.unr-lcssa
  %i.cw = fdiv double 1.000000e+00, %.0335431
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !71  ; 2 uses
  tail call void @N_VScale(double noundef %i.cw, ptr noundef %i.cx, ptr noundef %i.cx) #15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %indvars.iv456 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next457, %bb.al ] ; 6 uses
  %.0336395 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.ec, %bb.al ]
  %i.cy = load i32, ptr %i.ah, align 4, !tbaa !70
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.ah, align 4, !tbaa !70
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 7 uses
  %indvars = trunc i64 %indvars.iv.next457 to i32 ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv456
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !71 ; 2 uses
  br i1 %.not360, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  tail call void @N_VDiv(ptr noundef %i.db, ptr noundef nonnull %i.x, ptr noundef %i.t) #15
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.db, ptr noundef %i.t) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.bj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next457 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !71
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.dd) #15
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !71
  %i.df = tail call i32 %i.af(ptr noundef %i.ab, ptr noundef %i.de, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not366 = icmp eq i32 %i.df, 0
  br i1 %.not366, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.dg = icmp slt i32 %i.df, 0
  %i.dh = select i1 %i.dg, i32 -808, i32 805
  br label %bb.bj

bb.w:                                             ; preds = %bb.t, %bb.u
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next457 ; 4 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !71
  %i.dk = tail call i32 %i.ad(ptr noundef %i.z, ptr noundef %i.t, ptr noundef %i.dj) #15 ; 2 uses
  %.not367 = icmp eq i32 %i.dk, 0
  br i1 %.not367, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.dl = icmp slt i32 %i.dk, 0
  %i.dm = select i1 %i.dl, i32 -805, i32 803
  br label %bb.bj

bb.y:                                             ; preds = %bb.w
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !71 ; 2 uses
  switch i32 %i.aq, label %bb.ab [
    i32 3, label %bb.z
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.do = tail call i32 %i.af(ptr noundef %i.ab, ptr noundef %i.dn, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not368 = icmp eq i32 %i.do, 0
  br i1 %.not368, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = select i1 %i.dp, i32 -808, i32 805
  br label %bb.bj

bb.ab:                                            ; preds = %bb.y
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dn, ptr noundef %i.t) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !71 ; 2 uses
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @N_VProd(ptr noundef nonnull %i.v, ptr noundef %i.t, ptr noundef %i.dr) #15
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.dr) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next457
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv456 ; 2 uses
  br i1 %i.bk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = tail call i32 @SUNClassicalGS(ptr noundef nonnull %i.h, ptr noundef %i.k, i32 noundef %indvars, i32 noundef %i.b, ptr noundef %i.du, ptr noundef %i.ak, ptr noundef %i.an) #15 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dw = tail call i32 @SUNModifiedGS(ptr noundef nonnull %i.h, ptr noundef %i.k, i32 noundef %indvars, i32 noundef %i.b, ptr noundef %i.du) #15 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dx = trunc nuw nsw i64 %indvars.iv456 to i32
  %i.dy = tail call i32 @SUNQRfact(i32 noundef %indvars, ptr noundef nonnull %i.k, ptr noundef %i.m, i32 noundef %i.dx) #15
  %.not369 = icmp eq i32 %i.dy, 0
  br i1 %.not369, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  br label %bb.bj

bb.ak:                                            ; preds = %bb.ai
  %.idx = shl nuw nsw i64 %indvars.iv456, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !72
  %i.ec = fmul double %.0336395, %i.eb            ; 2 uses
  %i.ed = fmul double %.0335431, %i.ec
  %i.ee = tail call double @llvm.fabs.f64(double %i.ed) ; 4 uses
  store double %i.ee, ptr %i.ai, align 8, !tbaa !72
  %i.ef = fcmp ole double %i.ee, %4               ; 3 uses
  br i1 %i.ef, label %._crit_edge399, label %bb.al

end_hunk_0
begin_hunk_1_@SUNLinSolSolve_SPGMR:bb.a
.lr.ph417.preheader:                              ; preds = %.preheader380
  %i.gb = zext nneg i32 %.2 to i64                ; 5 uses
  %xtraiter579 = and i64 %i.gb, 1
  %lcmp.mod580.not = icmp eq i64 %xtraiter579, 0
  br i1 %lcmp.mod580.not, label %.lr.ph417.prol.loopexit, label %.lr.ph417.prol

.lr.ph417.prol:                                   ; preds = %.lr.ph417.preheader
  %.idx504.prol = shl nuw nsw i64 %i.gb, 4
  %i.gc = getelementptr i8, ptr %i.m, i64 %.idx504.prol ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !72
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.gb
  store double %i.ge, ptr %i.gf, align 8, !tbaa !72
  %i.gg = getelementptr i8, ptr %i.gc, i64 -8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !72 ; 2 uses
  %indvars.iv.next474.prol = add nsw i64 %i.gb, -1
  br label %.lr.ph417.prol.loopexit

.lr.ph417.prol.loopexit:                          ; preds = %.lr.ph417.prol, %.lr.ph417.preheader
  %indvars.iv473.unr = phi i64 [ %i.gb, %.lr.ph417.preheader ], [ %indvars.iv.next474.prol, %.lr.ph417.prol ]
  %.0334415.unr = phi double [ 1.000000e+00, %.lr.ph417.preheader ], [ %i.gh, %.lr.ph417.prol ]
  %.lcssa573.unr = phi double [ poison, %.lr.ph417.preheader ], [ %i.gh, %.lr.ph417.prol ]
  %i.gi = icmp eq i32 %.2, 1
  br i1 %i.gi, label %._crit_edge418.thread, label %.lr.ph417

.lr.ph417:                                        ; preds = %.lr.ph417.prol.loopexit, %.lr.ph417
  %indvars.iv473 = phi i64 [ %indvars.iv.next474.1, %.lr.ph417 ], [ %indvars.iv473.unr, %.lr.ph417.prol.loopexit ] ; 5 uses
  %.0334415 = phi double [ %i.gy, %.lr.ph417 ], [ %.0334415.unr, %.lr.ph417.prol.loopexit ] ; 2 uses
  %.idx504 = shl i64 %indvars.iv473, 4
  %i.gj = getelementptr i8, ptr %i.m, i64 %.idx504 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !72
  %i.gm = fmul double %.0334415, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv473
  store double %i.gm, ptr %i.gn, align 8, !tbaa !72
  %i.go = getelementptr i8, ptr %i.gj, i64 -8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !72
  %i.gq = fmul double %.0334415, %i.gp            ; 2 uses
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, -1 ; 2 uses
  %.idx504.1 = shl i64 %indvars.iv.next474, 4
  %i.gr = getelementptr i8, ptr %i.m, i64 %.idx504.1 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 -16
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !72
  %i.gu = fmul double %i.gq, %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next474
  store double %i.gu, ptr %i.gv, align 8, !tbaa !72
  %i.gw = getelementptr i8, ptr %i.gr, i64 -8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !72
  %i.gy = fmul double %i.gq, %i.gx                ; 2 uses
  %indvars.iv.next474.1 = add nsw i64 %indvars.iv473, -2
  %i.gz = icmp sgt i64 %indvars.iv473, 2
  br i1 %i.gz, label %.lr.ph417, label %._crit_edge418.thread

._crit_edge418.thread:                            ; preds = %.lr.ph417, %.lr.ph417.prol.loopexit
  %.lcssa573 = phi double [ %.lcssa573.unr, %.lr.ph417.prol.loopexit ], [ %i.gy, %.lr.ph417 ] ; 2 uses
  store double %.lcssa573, ptr %i.q, align 8, !tbaa !72
  %i.ha = fmul double %.0335431, %.lcssa573
  br label %.lr.ph423.preheader

._crit_edge418:                                   ; preds = %.preheader380
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !72
  %.not374420 = icmp slt i32 %.2, 0
  br i1 %.not374420, label %._crit_edge424.thread, label %.lr.ph423.preheader

._crit_edge424.thread:                            ; preds = %._crit_edge418
  %i.hb = tail call double @llvm.fabs.f64(double %.0335431)
  br label %._crit_edge429

.lr.ph423.preheader:                              ; preds = %._crit_edge418.thread, %._crit_edge418
  %i.hc = phi double [ %i.ha, %._crit_edge418.thread ], [ %.0335431, %._crit_edge418 ] ; 3 uses
  %wide.trip.count481 = zext i32 %i.fu to i64     ; 7 uses
  %min.iters.check536 = icmp ult i32 %i.fu, 4
  br i1 %min.iters.check536, label %.lr.ph423.preheader565, label %vector.ph537

vector.ph537:                                     ; preds = %.lr.ph423.preheader
  %n.vec538 = and i64 %wide.trip.count481, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next543, %vector.body539 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index540 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %wide.load541 = load <2 x double>, ptr %i.hd, align 8, !tbaa !72
  %wide.load542 = load <2 x double>, ptr %i.he, align 8, !tbaa !72
  %i.hf = fmul <2 x double> %broadcast.splat, %wide.load541
  %i.hg = fmul <2 x double> %broadcast.splat, %wide.load542
  store <2 x double> %i.hf, ptr %i.hd, align 8, !tbaa !72
  store <2 x double> %i.hg, ptr %i.he, align 8, !tbaa !72
  %index.next543 = add nuw i64 %index540, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next543, %n.vec538
  br i1 %i.hh, label %middle.block544, label %vector.body539, !llvm.loop !66

middle.block544:                                  ; preds = %vector.body539
  %cmp.n545 = icmp eq i64 %n.vec538, %wide.trip.count481
  br i1 %cmp.n545, label %._crit_edge424, label %.lr.ph423.preheader565

.lr.ph423.preheader565:                           ; preds = %.lr.ph423.preheader, %middle.block544
  %indvars.iv477.ph = phi i64 [ 0, %.lr.ph423.preheader ], [ %n.vec538, %middle.block544 ]
  br label %.lr.ph423

.lr.ph423:                                        ; preds = %.lr.ph423.preheader565, %.lr.ph423
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %.lr.ph423 ], [ %indvars.iv477.ph, %.lr.ph423.preheader565 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv477 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !72
  %i.hk = fmul double %i.hc, %i.hj
  store double %i.hk, ptr %i.hi, align 8, !tbaa !72
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next478, %wide.trip.count481
  br i1 %exitcond482.not, label %._crit_edge424, label %.lr.ph423, !llvm.loop !67

._crit_edge424:                                   ; preds = %.lr.ph423, %middle.block544
  %i.hl = tail call double @llvm.fabs.f64(double %i.hc) ; 3 uses
  %wide.trip.count487 = zext i32 %i.fu to i64
  %min.iters.check = icmp ult i32 %i.fu, 4
  %brmerge593 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge593, label %.lr.ph428.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge424
  %n.vec = and i64 %wide.trip.count481, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load = load <2 x double>, ptr %i.hm, align 8, !tbaa !72
  %wide.load532 = load <2 x double>, ptr %i.hn, align 8, !tbaa !72
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x double> %wide.load, ptr %i.ho, align 8, !tbaa !72
  store <2 x double> %wide.load532, ptr %i.hp, align 8, !tbaa !72
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load533 = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !71
  %wide.load534 = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !71
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <2 x ptr> %wide.load533, ptr %i.hs, align 8, !tbaa !71
  store <2 x ptr> %wide.load534, ptr %i.ht, align 8, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count481
  br i1 %cmp.n, label %._crit_edge429, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %._crit_edge424, %middle.block
  %indvars.iv483.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %._crit_edge424 ] ; 7 uses
  %xtraiter581 = and i64 %wide.trip.count481, 1
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %.lr.ph428.prol.loopexit, label %.lr.ph428.prol

.lr.ph428.prol:                                   ; preds = %.lr.ph428.preheader
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv483.ph
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !72
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv483.ph
  store double %i.hw, ptr %i.hx, align 8, !tbaa !72
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv483.ph
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !71
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv483.ph
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !71
  %indvars.iv.next484.prol = or disjoint i64 %indvars.iv483.ph, 1
  br label %.lr.ph428.prol.loopexit

.lr.ph428.prol.loopexit:                          ; preds = %.lr.ph428.prol, %.lr.ph428.preheader
  %indvars.iv483.unr = phi i64 [ %indvars.iv483.ph, %.lr.ph428.preheader ], [ %indvars.iv.next484.prol, %.lr.ph428.prol ]
  %i.ib = add nsw i64 %wide.trip.count481, -1
  %i.ic = icmp eq i64 %indvars.iv483.ph, %i.ib
  br i1 %i.ic, label %._crit_edge429, label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428
  %indvars.iv483 = phi i64 [ %indvars.iv.next484.1, %.lr.ph428 ], [ %indvars.iv483.unr, %.lr.ph428.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv483
  %i.ie = load double, ptr %i.id, align 8, !tbaa !72
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv483
  store double %i.ie, ptr %i.if, align 8, !tbaa !72
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv483
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !71
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv483
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !71
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 4 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next484
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !72
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next484
  store double %i.ik, ptr %i.il, align 8, !tbaa !72
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next484
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !71
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next484
  store ptr %i.in, ptr %i.io, align 8, !tbaa !71
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %exitcond488.not.1 = icmp eq i64 %indvars.iv.next484.1, %wide.trip.count487
  br i1 %exitcond488.not.1, label %._crit_edge429, label %.lr.ph428, !llvm.loop !69

._crit_edge429:                                   ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428, %middle.block, %._crit_edge424.thread
  %i.ip = phi double [ %i.hb, %._crit_edge424.thread ], [ %i.hl, %middle.block ], [ %i.hl, %.lr.ph428 ], [ %i.hl, %.lr.ph428.prol.loopexit ]
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.ir = tail call i32 @N_VLinearCombination(i32 noundef %i.fu, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.an, ptr noundef %i.iq) #15 ; 0 uses
  %i.is = add nuw nsw i32 %.0434, 1
  br label %.preheader381

._crit_edge435:                                   ; preds = %bb.ay
  %i.it = fcmp olt double %.2332, %i.bf
  br i1 %i.it, label %bb.az, label %._crit_edge435.thread

bb.az:                                            ; preds = %._crit_edge435
  br i1 %.not360, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @N_VDiv(ptr noundef %i.o, ptr noundef nonnull %i.x, ptr noundef %i.o) #15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.iu = and i32 %i.aq, -2
  %i.iv = icmp eq i32 %i.iu, 2
  br i1 %i.iv, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.iw = tail call i32 %i.af(ptr noundef %i.ab, ptr noundef %i.o, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not376 = icmp eq i32 %i.iw, 0
  br i1 %.not376, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  %i.ix = icmp slt i32 %i.iw, 0
  %i.iy = select i1 %i.ix, i32 -808, i32 805
  br label %bb.bj

bb.be:                                            ; preds = %bb.bb
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.o, ptr noundef %i.t) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.be
  %i.iz = load i32, ptr %i.ag, align 8, !tbaa !70
  %.not377 = icmp eq i32 %i.iz, 0
  br i1 %.not377, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %2) #15
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %2) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  br label %bb.bj

._crit_edge435.thread:                            ; preds = %bb.q, %._crit_edge435
  store i32 0, ptr %i.ag, align 8, !tbaa !70
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge435.thread, %bb.bi, %bb.bd, %bb.ax, %bb.as, %bb.am, %bb.aj, %bb.aa, %bb.x, %bb.v, %bb.p, %bb.h, %bb.d
  %.sink = phi i32 [ 802, %._crit_edge435.thread ], [ 801, %bb.bi ], [ %i.iy, %bb.bd ], [ 0, %bb.ax ], [ %i.fy, %bb.as ], [ -811, %bb.am ], [ 807, %bb.aj ], [ %i.dq, %bb.aa ], [ %i.dm, %bb.x ], [ %i.dh, %bb.v ], [ 0, %bb.p ], [ %i.az, %bb.h ], [ %i.au, %bb.d ] ; 2 uses
  %i.ja = load ptr, ptr %0, align 8, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store i32 %.sink, ptr %i.jb, align 8, !tbaa !21
  ret i32 %.sink
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SUNLinSolNumIters_SPGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @SUNLinSolResNorm_SPGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !77
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @SUNLinSolResid_SPGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -2147483648, 2147483648) i64 @SUNLinSolLastFlag_SPGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolSpace_SPGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @N_VSpace(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #15
  %.pre = load i64, ptr %i.b, align 8, !tbaa !84
  %.pre9 = load i64, ptr %i.a, align 8, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %.pre9, %bb.b ], [ 0, %bb.a ]
  %i.l = phi i64 [ %.pre, %bb.b ], [ 0, %bb.a ]
  %i.m = add nsw i32 %i.d, 5                      ; 2 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.l, %i.n
  %i.p = mul nsw i32 %i.m, %i.d
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %i.q, 2
  %i.s = add i64 %i.r, %i.o
  store i64 %i.s, ptr %1, align 8, !tbaa !84
  %i.t = mul nsw i64 %i.k, %i.n
  store i64 %i.t, ptr %2, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolFree_SPGMR(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not50 = icmp eq ptr %i.c, null
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @N_VDestroy(ptr noundef nonnull %i.c) #15
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr null, ptr %i.e, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not51 = icmp eq ptr %i.h, null
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @N_VDestroy(ptr noundef nonnull %i.h) #15
  %i.i = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  store ptr null, ptr %i.j, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.i, %bb.e ], [ %i.f, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not52 = icmp eq ptr %i.m, null
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.k, align 8, !tbaa !22
  %i.o = add nsw i32 %i.n, 1
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.m, i32 noundef %i.o) #15
  %i.p = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store ptr null, ptr %i.q, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.k, %bb.f ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.u = load i32, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %.not5461 = icmp slt i32 %i.u, 0
  br i1 %.not5461, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.v = phi i32 [ %i.af, %bb.j ], [ %i.u, %.preheader ]
  %i.w = phi ptr [ %i.ag, %bb.j ], [ %i.r, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.aa) #15
  %i.ab = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store ptr null, ptr %i.ae, align 8, !tbaa !37
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.af = phi i32 [ %i.v, %.lr.ph ], [ %.pre, %bb.i ] ; 2 uses
  %i.ag = phi ptr [ %i.w, %.lr.ph ], [ %i.ab, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ah = sext i32 %i.af to i64
  %.not54.not = icmp slt i64 %indvars.iv, %i.ah
  br i1 %.not54.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %.pre65 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi ptr [ %i.t, %.preheader ], [ %.pre65, %._crit_edge.loopexit ]
  tail call void @free(ptr noundef %i.ai) #15
  %i.aj = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store ptr null, ptr %i.ak, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %i.al = phi ptr [ %i.aj, %._crit_edge ], [ %i.r, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38 ; 2 uses
  %.not55 = icmp eq ptr %i.an, null
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.an) #15
  %i.ao = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  store ptr null, ptr %i.ap, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %i.al, %bb.k ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %.not56 = icmp eq ptr %i.as, null
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.as) #15
  %i.at = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  store ptr null, ptr %i.au, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = phi ptr [ %i.at, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %.not57 = icmp eq ptr %i.ax, null
  br i1 %.not57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ax) #15
  %i.ay = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  store ptr null, ptr %i.az, align 8, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = phi ptr [ %i.ay, %bb.p ], [ %i.av, %bb.o ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41 ; 2 uses
  %.not58 = icmp eq ptr %i.bc, null
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.bc) #15
  %i.bd = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  store ptr null, ptr %i.be, align 8, !tbaa !41
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bf = phi ptr [ %i.bd, %bb.r ], [ %i.ba, %bb.q ]
  tail call void @free(ptr noundef nonnull %i.bf) #15
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !12 ; 2 uses
  %.not59 = icmp eq ptr %i.bh, null
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.bh) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @free(ptr noundef nonnull %0) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPGMRSetPrecType(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !23
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPGMRSetGSType(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPGMRSetMaxRestarts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %spec.store.select, ptr %i.b, align 4, !tbaa !29
  ret i32 0
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNClassicalGS(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNModifiedGS(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNQRfact(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare i32 @SUNQRsol(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
