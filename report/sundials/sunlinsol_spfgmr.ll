Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunlinsol_spfgmr?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@SUNLinSolSetScalingVectors_SPFGMR:bb.a
  store ptr %1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %2, ptr %i.c, align 8, !tbaa !34
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSolSetZeroGuess_SPFGMR(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %1, ptr %i.b, align 8, !tbaa !63
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolInitialize_SPFGMR(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 18 uses
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
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call ptr @N_VCloneVectorArray(i32 noundef %i.k, ptr noundef %i.m) #15
  store ptr %i.n, ptr %i.g, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 8, !tbaa !22
  %i.s = add nsw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = tail call ptr @N_VCloneVectorArray(i32 noundef %i.s, ptr noundef %i.u) #15
  store ptr %i.v, ptr %i.o, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.z = load i32, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #16 ; 2 uses
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !37
  %.not4142 = icmp slt i32 %i.z, 0
  br i1 %.not4142, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ae = zext nneg i32 %i.z to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #16
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.al = load i32, ptr %i.a, align 8, !tbaa !22
  %i.am = shl nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #16
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
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
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !22
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bm) #16
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -806, 805) i32 @SUNLinSolSetup_SPFGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
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
define range(i32 -811, 808) i32 @SUNLinSolSolve_SPFGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3, double noundef %4) #0 {
switch.edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 22 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 15 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37   ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 19 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26   ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 13 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42 ; 13 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !71
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %.off = add i32 %i.at, -1
  %switch = icmp ult i32 %.off, 3
  %.not = icmp eq ptr %i.y, null                  ; 2 uses
  %.not290 = icmp eq ptr %i.aa, null
  %i.au = load i32, ptr %i.aj, align 8, !tbaa !71
  %.not291 = icmp eq i32 %i.au, 0
  br i1 %.not291, label %bb.b, label %bb.a

bb.a:                                             ; preds = %switch.edge
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.w) #15
  br label %bb.e

bb.b:                                             ; preds = %switch.edge
  %i.av = tail call i32 %i.ag(ptr noundef %i.ac, ptr noundef %2, ptr noundef %i.w) #15 ; 2 uses
  %.not292 = icmp eq i32 %i.av, 0
  br i1 %.not292, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = select i1 %i.aw, i32 -805, i32 803
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %i.w, ptr noundef %i.w) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @N_VProd(ptr noundef nonnull %i.y, ptr noundef %i.w, ptr noundef %i.ay) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.ay) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.ba = tail call double @N_VDotProd(ptr noundef %i.az, ptr noundef %i.az) #15 ; 2 uses
  %i.bb = fcmp ugt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call double @sqrt(double noundef %i.ba) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bd = phi double [ %i.bc, %bb.i ], [ 0.000000e+00, %bb.h ] ; 5 uses
  store double %i.bd, ptr %i.al, align 8, !tbaa !73
  %i.be = fcmp ugt double %i.bd, %4
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  br label %bb.an

bb.l:                                             ; preds = %bb.j
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.r) #15
  %.not293353 = icmp slt i32 %i.d, 0
  br i1 %.not293353, label %._crit_edge358.thread, label %.preheader307.lr.ph

.preheader307.lr.ph:                              ; preds = %bb.l
  %i.bf = icmp slt i32 %i.b, 1
  %i.bg = icmp eq i32 %i.f, 2
  %i.bh = zext i32 %i.b to i64                    ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3                ; 9 uses
  %i.bj = add i32 %i.b, 1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %wide.trip.count = zext i32 %i.bj to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.bk = icmp ult i32 %i.bj, 8
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod484 = icmp ne i64 %xtraiter, 0
  %i.bl = sub i64 %i.ao, %i.u
  %i.bm = add i64 %i.bl, 7
  %diff.check458 = icmp ult i64 %i.bm, 31
  %i.bn = sub i64 %i.ar, %i.l
  %i.bo = add i64 %i.bn, 7
  %diff.check459 = icmp ult i64 %i.bo, 31
  %conflict.rdx460 = or i1 %diff.check458, %diff.check459
  %i.bp = sub i64 %i.u, %i.ao
  %diff.check = icmp ugt i64 %i.bp, -32
  %i.bq = sub i64 %i.i, %i.ar
  %diff.check441 = icmp ugt i64 %i.bq, -32
  %conflict.rdx = or i1 %diff.check, %diff.check441
  br label %.preheader307

.preheader307:                                    ; preds = %._crit_edge352, %.preheader307.lr.ph
  %.0357 = phi i32 [ 0, %.preheader307.lr.ph ], [ %i.ij, %._crit_edge352 ] ; 2 uses
  %.0257356 = phi i32 [ 0, %.preheader307.lr.ph ], [ %.2, %._crit_edge352 ]
  %.0267355 = phi double [ %i.bd, %.preheader307.lr.ph ], [ %.2269, %._crit_edge352 ]
  %.0272354 = phi double [ %i.bd, %.preheader307.lr.ph ], [ %i.ig, %._crit_edge352 ] ; 7 uses
  br i1 %i.bf, label %._crit_edge316.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader307
  br i1 %i.bk, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.preheader ], [ 0, %.preheader.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.preheader ], [ 0, %.preheader.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bs, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.preheader.unr-lcssa, label %.preheader

._crit_edge316.split:                             ; preds = %.preheader307
  %i.co = fdiv double 1.000000e+00, %.0272354
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  tail call void @N_VScale(double noundef %i.co, ptr noundef %i.cp, ptr noundef %i.cp) #15
  br label %._crit_edge322

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.7, %.lr.ph.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod484)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader.epil ], [ %indvars.iv.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cr, i8 0, i64 %i.bi, i1 false), !tbaa !73
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader.epil, !llvm.loop !64

.lr.ph.preheader:                                 ; preds = %.preheader.epil, %.lr.ph.preheader.unr-lcssa
  %i.cs = fdiv double 1.000000e+00, %.0272354
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  tail call void @N_VScale(double noundef %i.cs, ptr noundef %i.ct, ptr noundef %i.ct) #15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv376 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next377, %bb.ab ] ; 7 uses
  %.0273318 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.dw, %bb.ab ]
  %i.cu = load i32, ptr %i.ak, align 4, !tbaa !71
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ak, align 4, !tbaa !71
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 7 uses
  %indvars = trunc i64 %indvars.iv.next377 to i32 ; 4 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv376
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 2 uses
  br i1 %.not290, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  tail call void @N_VDiv(ptr noundef %i.cx, ptr noundef nonnull %i.aa, ptr noundef %i.w) #15
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cx, ptr noundef %i.w) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %switch, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next377 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.cz) #15
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !72
  %i.db = tail call i32 %i.ai(ptr noundef %i.ae, ptr noundef %i.da, ptr noundef %i.w, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not295 = icmp eq i32 %i.db, 0
  br i1 %.not295, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  %i.dc = icmp slt i32 %i.db, 0
  %i.dd = select i1 %i.dc, i32 -808, i32 805
  br label %bb.an

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv376
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.w, ptr noundef %i.df) #15
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next377 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72
  %i.di = tail call i32 %i.ag(ptr noundef %i.ac, ptr noundef %i.w, ptr noundef %i.dh) #15 ; 2 uses
  %.not296 = icmp eq i32 %i.di, 0
  br i1 %.not296, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  %i.dj = icmp slt i32 %i.di, 0
  %i.dk = select i1 %i.dj, i32 -805, i32 803
  br label %bb.an

bb.t:                                             ; preds = %bb.r
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !72 ; 2 uses
  tail call void @N_VProd(ptr noundef nonnull %i.y, ptr noundef %i.dl, ptr noundef %i.dl) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next377
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv376 ; 2 uses
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = tail call i32 @SUNClassicalGS(ptr noundef nonnull %i.h, ptr noundef %i.n, i32 noundef %indvars, i32 noundef %i.b, ptr noundef %i.do, ptr noundef %i.an, ptr noundef %i.aq) #15 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dq = tail call i32 @SUNModifiedGS(ptr noundef nonnull %i.h, ptr noundef %i.n, i32 noundef %indvars, i32 noundef %i.b, ptr noundef %i.do) #15 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dr = trunc nuw nsw i64 %indvars.iv376 to i32
  %i.ds = tail call i32 @SUNQRfact(i32 noundef %indvars, ptr noundef nonnull %i.n, ptr noundef %i.p, i32 noundef %i.dr) #15
  %.not297 = icmp eq i32 %i.ds, 0
  br i1 %.not297, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  br label %bb.an

bb.aa:                                            ; preds = %bb.y
  %.idx = shl nuw nsw i64 %indvars.iv376, 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load double, ptr %i.du, align 8, !tbaa !73
  %i.dw = fmul double %.0273318, %i.dv            ; 2 uses
  %i.dx = fmul double %.0272354, %i.dw
  %i.dy = tail call double @llvm.fabs.f64(double %i.dx) ; 4 uses
  store double %i.dy, ptr %i.al, align 8, !tbaa !73
  %i.dz = fcmp ole double %i.dy, %4               ; 3 uses
  br i1 %i.dz, label %._crit_edge322, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next377
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv376
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !73
  %i.ee = fdiv double 1.000000e+00, %i.ed
  %i.ef = load ptr, ptr %i.dg, align 8, !tbaa !72 ; 2 uses
  tail call void @N_VScale(double noundef %i.ee, ptr noundef %i.ef, ptr noundef %i.ef) #15
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %i.bh
  br i1 %exitcond380.not, label %._crit_edge322, label %.lr.ph

._crit_edge322:                                   ; preds = %bb.ab, %bb.aa, %._crit_edge316.split
  %.not301.lcssa = phi i1 [ false, %._crit_edge316.split ], [ %i.dz, %bb.aa ], [ %i.dz, %bb.ab ]
  %.2269 = phi double [ %.0267355, %._crit_edge316.split ], [ %i.dy, %bb.aa ], [ %i.dy, %bb.ab ] ; 2 uses
  %.2 = phi i32 [ %.0257356, %._crit_edge316.split ], [ %i.b, %bb.ab ], [ %indvars, %bb.aa ] ; 11 uses
  store double %.0272354, ptr %i.t, align 8, !tbaa !73
  %.not298329 = icmp slt i32 %.2, 1
  br i1 %.not298329, label %._crit_edge333, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %._crit_edge322
  %i.eg = zext nneg i32 %.2 to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.eh, i1 false), !tbaa !73
end_hunk_0
begin_hunk_1_@SUNLinSolSolve_SPFGMR:switch.edge
.lr.ph340.preheader:                              ; preds = %.preheader306
  %i.fs = zext nneg i32 %.2 to i64                ; 5 uses
  %xtraiter487 = and i64 %i.fs, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %.lr.ph340.prol.loopexit, label %.lr.ph340.prol

.lr.ph340.prol:                                   ; preds = %.lr.ph340.preheader
  %.idx418.prol = shl nuw nsw i64 %i.fs, 4
  %i.ft = getelementptr i8, ptr %i.p, i64 %.idx418.prol ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -16
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !73
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.fs
  store double %i.fv, ptr %i.fw, align 8, !tbaa !73
  %i.fx = getelementptr i8, ptr %i.ft, i64 -8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !73 ; 2 uses
  %indvars.iv.next394.prol = add nsw i64 %i.fs, -1
  br label %.lr.ph340.prol.loopexit

.lr.ph340.prol.loopexit:                          ; preds = %.lr.ph340.prol, %.lr.ph340.preheader
  %indvars.iv393.unr = phi i64 [ %i.fs, %.lr.ph340.preheader ], [ %indvars.iv.next394.prol, %.lr.ph340.prol ]
  %.0271338.unr = phi double [ 1.000000e+00, %.lr.ph340.preheader ], [ %i.fy, %.lr.ph340.prol ]
  %.lcssa481.unr = phi double [ poison, %.lr.ph340.preheader ], [ %i.fy, %.lr.ph340.prol ]
  %i.fz = icmp eq i32 %.2, 1
  br i1 %i.fz, label %._crit_edge341.thread, label %.lr.ph340

.lr.ph340:                                        ; preds = %.lr.ph340.prol.loopexit, %.lr.ph340
  %indvars.iv393 = phi i64 [ %indvars.iv.next394.1, %.lr.ph340 ], [ %indvars.iv393.unr, %.lr.ph340.prol.loopexit ] ; 5 uses
  %.0271338 = phi double [ %i.gp, %.lr.ph340 ], [ %.0271338.unr, %.lr.ph340.prol.loopexit ] ; 2 uses
  %.idx418 = shl i64 %indvars.iv393, 4
  %i.ga = getelementptr i8, ptr %i.p, i64 %.idx418 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -16
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !73
  %i.gd = fmul double %.0271338, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv393
  store double %i.gd, ptr %i.ge, align 8, !tbaa !73
  %i.gf = getelementptr i8, ptr %i.ga, i64 -8
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !73
  %i.gh = fmul double %.0271338, %i.gg            ; 2 uses
  %indvars.iv.next394 = add nsw i64 %indvars.iv393, -1 ; 2 uses
  %.idx418.1 = shl i64 %indvars.iv.next394, 4
  %i.gi = getelementptr i8, ptr %i.p, i64 %.idx418.1 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 -16
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !73
  %i.gl = fmul double %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next394
  store double %i.gl, ptr %i.gm, align 8, !tbaa !73
  %i.gn = getelementptr i8, ptr %i.gi, i64 -8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !73
  %i.gp = fmul double %i.gh, %i.go                ; 2 uses
  %indvars.iv.next394.1 = add nsw i64 %indvars.iv393, -2
  %i.gq = icmp sgt i64 %indvars.iv393, 2
  br i1 %i.gq, label %.lr.ph340, label %._crit_edge341.thread

._crit_edge341.thread:                            ; preds = %.lr.ph340, %.lr.ph340.prol.loopexit
  %.lcssa481 = phi double [ %.lcssa481.unr, %.lr.ph340.prol.loopexit ], [ %i.gp, %.lr.ph340 ] ; 2 uses
  store double %.lcssa481, ptr %i.t, align 8, !tbaa !73
  %i.gr = fmul double %.0272354, %.lcssa481
  br label %.lr.ph346.preheader

._crit_edge341:                                   ; preds = %.preheader306
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !73
  %.not302343 = icmp slt i32 %.2, 0
  br i1 %.not302343, label %._crit_edge347.thread, label %.lr.ph346.preheader

._crit_edge347.thread:                            ; preds = %._crit_edge341
  %i.gs = tail call double @llvm.fabs.f64(double %.0272354)
  br label %._crit_edge352

.lr.ph346.preheader:                              ; preds = %._crit_edge341.thread, %._crit_edge341
  %i.gt = phi double [ %i.gr, %._crit_edge341.thread ], [ %.0272354, %._crit_edge341 ] ; 3 uses
  %wide.trip.count401 = zext i32 %i.fo to i64     ; 7 uses
  %min.iters.check446 = icmp ult i32 %i.fo, 4
  br i1 %min.iters.check446, label %.lr.ph346.preheader475, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph346.preheader
  %n.vec448 = and i64 %wide.trip.count401, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph447
  %index450 = phi i64 [ 0, %vector.ph447 ], [ %index.next453, %vector.body449 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index450 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load451 = load <2 x double>, ptr %i.gu, align 8, !tbaa !73
  %wide.load452 = load <2 x double>, ptr %i.gv, align 8, !tbaa !73
  %i.gw = fmul <2 x double> %broadcast.splat, %wide.load451
  %i.gx = fmul <2 x double> %broadcast.splat, %wide.load452
  store <2 x double> %i.gw, ptr %i.gu, align 8, !tbaa !73
  store <2 x double> %i.gx, ptr %i.gv, align 8, !tbaa !73
  %index.next453 = add nuw i64 %index450, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next453, %n.vec448
  br i1 %i.gy, label %middle.block454, label %vector.body449, !llvm.loop !67

middle.block454:                                  ; preds = %vector.body449
  %cmp.n455 = icmp eq i64 %n.vec448, %wide.trip.count401
  br i1 %cmp.n455, label %._crit_edge347, label %.lr.ph346.preheader475

.lr.ph346.preheader475:                           ; preds = %.lr.ph346.preheader, %middle.block454
  %indvars.iv397.ph = phi i64 [ 0, %.lr.ph346.preheader ], [ %n.vec448, %middle.block454 ]
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346.preheader475, %.lr.ph346
  %indvars.iv397 = phi i64 [ %indvars.iv.next398, %.lr.ph346 ], [ %indvars.iv397.ph, %.lr.ph346.preheader475 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv397 ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !73
  %i.hb = fmul double %i.gt, %i.ha
  store double %i.hb, ptr %i.gz, align 8, !tbaa !73
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count401
  br i1 %exitcond402.not, label %._crit_edge347, label %.lr.ph346, !llvm.loop !68

._crit_edge347:                                   ; preds = %.lr.ph346, %middle.block454
  %i.hc = tail call double @llvm.fabs.f64(double %i.gt) ; 3 uses
  %wide.trip.count407 = zext i32 %i.fo to i64
  %min.iters.check = icmp ult i32 %i.fo, 4
  %brmerge499 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge499, label %.lr.ph351.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge347
  %n.vec = and i64 %wide.trip.count401, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <2 x double>, ptr %i.hd, align 8, !tbaa !73
  %wide.load442 = load <2 x double>, ptr %i.he, align 8, !tbaa !73
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x double> %wide.load, ptr %i.hf, align 8, !tbaa !73
  store <2 x double> %wide.load442, ptr %i.hg, align 8, !tbaa !73
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load443 = load <2 x ptr>, ptr %i.hh, align 8, !tbaa !72
  %wide.load444 = load <2 x ptr>, ptr %i.hi, align 8, !tbaa !72
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store <2 x ptr> %wide.load443, ptr %i.hj, align 8, !tbaa !72
  store <2 x ptr> %wide.load444, ptr %i.hk, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count401
  br i1 %cmp.n, label %._crit_edge352, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %._crit_edge347, %middle.block
  %indvars.iv403.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %._crit_edge347 ] ; 7 uses
  %xtraiter489 = and i64 %wide.trip.count401, 1
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  br i1 %lcmp.mod490.not, label %.lr.ph351.prol.loopexit, label %.lr.ph351.prol

.lr.ph351.prol:                                   ; preds = %.lr.ph351.preheader
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv403.ph
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !73
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv403.ph
  store double %i.hn, ptr %i.ho, align 8, !tbaa !73
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv403.ph
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !72
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv403.ph
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !72
  %indvars.iv.next404.prol = or disjoint i64 %indvars.iv403.ph, 1
  br label %.lr.ph351.prol.loopexit

.lr.ph351.prol.loopexit:                          ; preds = %.lr.ph351.prol, %.lr.ph351.preheader
  %indvars.iv403.unr = phi i64 [ %indvars.iv403.ph, %.lr.ph351.preheader ], [ %indvars.iv.next404.prol, %.lr.ph351.prol ]
  %i.hs = add nsw i64 %wide.trip.count401, -1
  %i.ht = icmp eq i64 %indvars.iv403.ph, %i.hs
  br i1 %i.ht, label %._crit_edge352, label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351
  %indvars.iv403 = phi i64 [ %indvars.iv.next404.1, %.lr.ph351 ], [ %indvars.iv403.unr, %.lr.ph351.prol.loopexit ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv403
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !73
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv403
  store double %i.hv, ptr %i.hw, align 8, !tbaa !73
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv403
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !72
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv403
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !72
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 4 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next404
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !73
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next404
  store double %i.ib, ptr %i.ic, align 8, !tbaa !73
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next404
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !72
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next404
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !72
  %indvars.iv.next404.1 = add nuw nsw i64 %indvars.iv403, 2 ; 2 uses
  %exitcond408.not.1 = icmp eq i64 %indvars.iv.next404.1, %wide.trip.count407
  br i1 %exitcond408.not.1, label %._crit_edge352, label %.lr.ph351, !llvm.loop !70

._crit_edge352:                                   ; preds = %.lr.ph351.prol.loopexit, %.lr.ph351, %middle.block, %._crit_edge347.thread
  %i.ig = phi double [ %i.gs, %._crit_edge347.thread ], [ %i.hc, %middle.block ], [ %i.hc, %.lr.ph351 ], [ %i.hc, %.lr.ph351.prol.loopexit ]
  %i.ih = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.ii = tail call i32 @N_VLinearCombination(i32 noundef %i.fo, ptr noundef nonnull %i.an, ptr noundef nonnull %i.aq, ptr noundef %i.ih) #15 ; 0 uses
  %i.ij = add nuw nsw i32 %.0357, 1
  br label %.preheader307

._crit_edge358:                                   ; preds = %bb.ai
  %i.ik = fcmp olt double %.2269, %i.bd
  br i1 %i.ik, label %bb.aj, label %._crit_edge358.thread

bb.aj:                                            ; preds = %._crit_edge358
  %i.il = load i32, ptr %i.aj, align 8, !tbaa !71
  %.not304 = icmp eq i32 %i.il, 0
  br i1 %.not304, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.r, ptr noundef %2) #15
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef 1.000000e+00, ptr noundef %i.r, ptr noundef %2) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  br label %bb.an

._crit_edge358.thread:                            ; preds = %bb.l, %._crit_edge358
  store i32 0, ptr %i.aj, align 8, !tbaa !71
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge358.thread, %bb.am, %bb.ah, %bb.ac, %bb.z, %bb.s, %bb.q, %bb.k, %bb.c
  %.sink = phi i32 [ 802, %._crit_edge358.thread ], [ 801, %bb.am ], [ 0, %bb.ah ], [ -811, %bb.ac ], [ 807, %bb.z ], [ %i.dk, %bb.s ], [ %i.dd, %bb.q ], [ 0, %bb.k ], [ %i.ax, %bb.c ] ; 2 uses
  %i.im = load ptr, ptr %0, align 8, !tbaa !13
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  store i32 %.sink, ptr %i.in, align 8, !tbaa !21
  ret i32 %.sink
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SUNLinSolNumIters_SPFGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @SUNLinSolResNorm_SPFGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !78
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @SUNLinSolResid_SPFGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -2147483648, 2147483648) i64 @SUNLinSolLastFlag_SPFGMR(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolSpace_SPFGMR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @N_VSpace(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #15
  %.pre = load i64, ptr %i.b, align 8, !tbaa !85
  %.pre9 = load i64, ptr %i.a, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %.pre9, %bb.b ], [ 0, %bb.a ]
  %i.l = phi i64 [ %.pre, %bb.b ], [ 0, %bb.a ]
  %i.m = shl nsw i32 %i.d, 1
  %i.n = add nsw i32 %i.m, 4
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.l, %i.o
  %i.q = add nsw i32 %i.d, 5
  %i.r = mul nsw i32 %i.q, %i.d
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, 2
  %i.u = add i64 %i.t, %i.p
  store i64 %i.u, ptr %1, align 8, !tbaa !85
  %i.v = mul nsw i64 %i.k, %i.o
  store i64 %i.v, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLinSolFree_SPFGMR(ptr noundef captures(address_is_null) %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not59 = icmp eq ptr %i.d, null
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @N_VDestroy(ptr noundef nonnull %i.d) #15
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr null, ptr %i.f, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.not60 = icmp eq ptr %i.i, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @N_VDestroy(ptr noundef nonnull %i.i) #15
  %i.j = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store ptr null, ptr %i.k, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not61 = icmp eq ptr %i.n, null
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.l, align 8, !tbaa !22
  %i.p = add nsw i32 %i.o, 1
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.n, i32 noundef %i.p) #15
  %i.q = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store ptr null, ptr %i.r, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.l, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.not62 = icmp eq ptr %i.u, null
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.s, align 8, !tbaa !22
  %i.w = add nsw i32 %i.v, 1
  tail call void @N_VDestroyVectorArray(ptr noundef nonnull %i.u, i32 noundef %i.w) #15
  %i.x = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store ptr null, ptr %i.y, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %i.x, %bb.j ], [ %i.s, %bb.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %.not63 = icmp eq ptr %i.ab, null
  br i1 %.not63, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %.not6471 = icmp slt i32 %i.ac, 0
  br i1 %.not6471, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.ad = phi i32 [ %i.an, %bb.m ], [ %i.ac, %.preheader ]
  %i.ae = phi ptr [ %i.ao, %bb.m ], [ %i.z, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %.not70 = icmp eq ptr %i.ai, null
  br i1 %.not70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.ai) #15
  %i.aj = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  store ptr null, ptr %i.am, align 8, !tbaa !38
  %.pre = load i32, ptr %i.aj, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.an = phi i32 [ %i.ad, %.lr.ph ], [ %.pre, %bb.l ] ; 2 uses
  %i.ao = phi ptr [ %i.ae, %.lr.ph ], [ %i.aj, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ap = sext i32 %i.an to i64
  %.not64.not = icmp slt i64 %indvars.iv, %i.ap
  br i1 %.not64.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %.pre75 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aq = phi ptr [ %i.ab, %.preheader ], [ %.pre75, %._crit_edge.loopexit ]
  tail call void @free(ptr noundef %i.aq) #15
  %i.ar = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  store ptr null, ptr %i.as, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.k
  %i.at = phi ptr [ %i.ar, %._crit_edge ], [ %i.z, %bb.k ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 2 uses
  %.not65 = icmp eq ptr %i.av, null
  br i1 %.not65, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.av) #15
  %i.aw = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store ptr null, ptr %i.ax, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = phi ptr [ %i.aw, %bb.o ], [ %i.at, %bb.n ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %.not66 = icmp eq ptr %i.ba, null
  br i1 %.not66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ba) #15
  %i.bb = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  store ptr null, ptr %i.bc, align 8, !tbaa !40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bd = phi ptr [ %i.bb, %bb.q ], [ %i.ay, %bb.p ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 152
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %.not67 = icmp eq ptr %i.bf, null
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.bf) #15
  %i.bg = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store ptr null, ptr %i.bh, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = phi ptr [ %i.bg, %bb.s ], [ %i.bd, %bb.r ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42 ; 2 uses
  %.not68 = icmp eq ptr %i.bk, null
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.bk) #15
  %i.bl = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  store ptr null, ptr %i.bm, align 8, !tbaa !42
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = phi ptr [ %i.bl, %bb.u ], [ %i.bi, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.bn) #15
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !12 ; 2 uses
  %.not69 = icmp eq ptr %i.bp, null
  br i1 %.not69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.bp) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPFGMRSetPrecType(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %1, -1
  %i.b = icmp ult i32 %i.a, 3
  %i.c = select i1 %i.b, i32 2, i32 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.c, ptr %i.e, align 4, !tbaa !23
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPFGMRSetGSType(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNLinSol_SPFGMRSetMaxRestarts(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
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
end_hunk_1
