Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunlinsol_sptfqmr?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@SUNLinSolSetOptions_SPTFQMR:bb.a
  %i.k = sext i32 %.04565.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %4, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #17
  %i.o = tail call i32 @strncmp(ptr noundef %i.m, ptr noundef nonnull %i.j, i64 noundef %i.n) #17
  %.not59.i = icmp eq i32 %i.o, 0
  br i1 %.not59.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.04762.i ; 2 uses
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(10) @.str.2) #17
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %.04565.i, 1                 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %4, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.v, ptr noundef null, i32 noundef 10) #15, !inline_history !56
  %i.x = trunc i64 %i.w to i32
  %i.y = load ptr, ptr %0, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.x, ptr %i.z, align 4, !tbaa !21
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.3) #17
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %.04565.i, 1                ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.af, ptr noundef null, i32 noundef 10) #15, !inline_history !56
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 1
  %spec.store.select.i.i = select i1 %i.ai, i32 5, i32 %i.ah
  %i.aj = load ptr, ptr %0, align 8, !tbaa !13
  store i32 %spec.store.select.i.i, ptr %i.aj, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.i
  %.146.i = phi i32 [ %.04565.i, %.lr.ph.i ], [ %i.s, %bb.h ], [ %i.ac, %bb.j ], [ %.04565.i, %bb.i ]
  %i.ak = add nsw i32 %.146.i, 1                  ; 2 uses
  %.not60.i = icmp slt i32 %i.ak, %3
  br i1 %.not60.i, label %.lr.ph.i, label %setFromCommandLine_SPTFQMR.exit

setFromCommandLine_SPTFQMR.exit:                  ; preds = %bb.k, %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #15
  br label %bb.l

bb.l:                                             ; preds = %setFromCommandLine_SPTFQMR.exit, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetPreconditioner_SPTFQMR(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %3, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %1, ptr %i.d, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetScalingVectors_SPTFQMR(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %i.c, align 8, !tbaa !38
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetZeroGuess_SPTFQMR(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !59
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolInitialize_SPTFQMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %i.a, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %.off = add i32 %i.e, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -806, 805) i32 @SUNLinSolSetup_SPTFQMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
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
  %i.i = getelementptr inbounds nuw i8, ptr %.sink17, i64 24
  store i32 %.sink, ptr %i.i, align 8, !tbaa !19
  ret i32 %.sink
}

; Function Attrs: nounwind uwtable
define range(i32 -9998, 806) i32 @SUNLinSolSolve_SPTFQMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, double noundef %4) #0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 22 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 44 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 22 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i32 0, ptr %i.al, align 4, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21 ; 7 uses
  %.not = icmp eq ptr %i.ab, null                 ; 6 uses
  %.not502 = icmp eq ptr %i.z, null               ; 6 uses
  %i.ap = and i32 %i.ao, -2
  %i.aq = icmp eq i32 %i.ap, 2                    ; 6 uses
  %i.ar = load i32, ptr %i.ak, align 8, !tbaa !60
  %.not503 = icmp eq i32 %i.ar, 0                 ; 2 uses
  br i1 %i.aq, label %bb.b, label %5

bb.b:                                             ; preds = %bb.a
  br i1 %.not503, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 -9998, ptr %i.as, align 8, !tbaa !19
  br label %bb.dm

5:                                                ; preds = %bb.a
  br i1 %.not503, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b, %5
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.f) #15
  br label %bb.g

bb.d:                                             ; preds = %5
  %i.at = tail call i32 %i.ah(ptr noundef %i.ad, ptr noundef %2, ptr noundef %i.f) #15 ; 2 uses
  %.not505 = icmp eq i32 %i.at, 0
  br i1 %.not505, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.au = icmp slt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 -805, i32 803      ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !19
  br label %bb.dm

bb.f:                                             ; preds = %bb.d
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %i.f, ptr noundef %i.f) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  switch i32 %i.ao, label %bb.j [
    i32 3, label %bb.h
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ay = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.f, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not506 = icmp eq i32 %i.ay, 0
  br i1 %.not506, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.az = icmp slt i32 %i.ay, 0
  %i.ba = select i1 %i.az, i32 -808, i32 805      ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !19
  br label %bb.dm

bb.j:                                             ; preds = %bb.g
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.t) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  br i1 %.not502, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.f) #15
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.f) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bd = tail call double @N_VDotProd(ptr noundef %i.f, ptr noundef %i.f) #15 ; 3 uses
  %i.be = fcmp ugt double %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call double @sqrt(double noundef %i.bd) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bg = phi double [ %i.bf, %bb.o ], [ 0.000000e+00, %bb.n ] ; 4 uses
  store double %i.bg, ptr %i.am, align 8, !tbaa !61
  %i.bh = fcmp ugt double %i.bg, %4
  br i1 %i.bh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bi = load ptr, ptr %0, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i32 0, ptr %i.bj, align 8, !tbaa !19
  br label %bb.dm

bb.r:                                             ; preds = %bb.p
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @N_VDiv(ptr noundef %i.f, ptr noundef nonnull %i.ab, ptr noundef %i.t) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.t) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.aq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  %i.bk = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not507 = icmp eq i32 %i.bk, 0
  br i1 %.not507, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 -808, i32 805      ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.bm, ptr %i.bo, align 8, !tbaa !19
  br label %bb.dm

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.bp = tail call i32 %i.ah(ptr noundef %i.ad, ptr noundef %i.t, ptr noundef %i.l) #15 ; 2 uses
  %.not508 = icmp eq i32 %i.bp, 0
  br i1 %.not508, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bq = icmp slt i32 %i.bp, 0
  %i.br = select i1 %i.bq, i32 -805, i32 803      ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i32 %i.br, ptr %i.bt, align 8, !tbaa !19
  br label %bb.dm

bb.z:                                             ; preds = %bb.x
  switch i32 %i.ao, label %bb.ac [
    i32 3, label %bb.aa
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.bu = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not509 = icmp eq i32 %i.bu, 0
  br i1 %.not509, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 -808, i32 805      ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.bw, ptr %i.by, align 8, !tbaa !19
  br label %bb.dm

bb.ac:                                            ; preds = %bb.z
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.l, ptr noundef %i.t) #15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  br i1 %.not502, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !62
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.bz) #15
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.r) #15
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.n) #15
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.j) #15
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load i32, ptr %i.ak, align 8, !tbaa !60
  %.not510 = icmp eq i32 %i.ca, 0
  br i1 %.not510, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @N_VProd(ptr noundef nonnull %i.ab, ptr noundef %2, ptr noundef %2) #15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cb = icmp sgt i32 %i.d, 0
  br i1 %i.cb, label %.lr.ph, label %.thread529

.lr.ph:                                           ; preds = %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cg = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.ch = insertelement <2 x ptr> %i.cg, ptr %i.h, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.dc
  %.0435624 = phi i32 [ 0, %.lr.ph ], [ %i.go, %bb.dc ] ; 2 uses
  %.0436623 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.dc ]
  %.0440622 = phi double [ -1.000000e+00, %.lr.ph ], [ %.2442, %bb.dc ]
  %.sroa.0.0621 = phi double [ %i.bd, %.lr.ph ], [ %i.fs, %bb.dc ] ; 2 uses
  %.0450620 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ee, %bb.dc ]
  %.0453619 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ek, %bb.dc ]
  %.0456618 = phi double [ %i.bg, %.lr.ph ], [ %i.ei, %bb.dc ]
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !60
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.al, align 4, !tbaa !60
  %i.ck = call double @N_VDotProd(ptr noundef %i.f, ptr noundef %i.l) #15
  %i.cl = fdiv double %.sroa.0.0621, %i.ck        ; 3 uses
  %i.cm = fneg double %i.cl                       ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef %i.cm, ptr noundef %i.l, ptr noundef %i.h) #15
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !62
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef 1.000000e+00, ptr noundef %i.h, ptr noundef %i.cn) #15
  br i1 %.not, label %bb.am, label %bb.al
end_hunk_0
